# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.APIPortal do
  @moduledoc """
  API Portal discovers the APIs running in your AWS accounts and organization,
  lets you manage them as Managed APIs, and publishes their documentation to
  developer portals.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      a_cm_managed() :: %{
        "certificateArn" => String.t() | atom(),
        "domainName" => String.t() | atom()
      }

  """
  @type a_cm_managed() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      api_id() :: %{
        "identifierParts" => identifier_parts()
      }

  """
  @type api_id() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      api_inventory_filters() :: %{
        "discoverySource" => list(any()),
        "resourceArn" => String.t() | atom()
      }

  """
  @type api_inventory_filters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      api_inventory_item() :: %{
        "accountId" => String.t() | atom(),
        "classification" => list(any()),
        "discoverySource" => list(any()),
        "firstSeen" => [non_neg_integer()],
        "host" => String.t() | atom(),
        "lastSeen" => [non_neg_integer()],
        "managedBy" => list(any()),
        "method" => list(any()),
        "path" => String.t() | atom(),
        "port" => [integer()],
        "region" => [String.t() | atom()],
        "resourceArn" => String.t() | atom(),
        "visibility" => list(any()),
        "wafStatus" => list(any()),
        "workloads" => list(list(any())())
      }

  """
  @type api_inventory_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      api_inventory_item_detail() :: %{
        "accountId" => String.t() | atom(),
        "classification" => list(any()),
        "discoverySource" => list(any()),
        "host" => String.t() | atom(),
        "managedApiId" => String.t() | atom(),
        "managedBy" => list(any()),
        "method" => list(any()),
        "path" => String.t() | atom(),
        "port" => [integer()],
        "region" => [String.t() | atom()],
        "resourceArn" => String.t() | atom(),
        "visibility" => list(any()),
        "wafStatus" => list(any()),
        "workloads" => list(list(any())())
      }

  """
  @type api_inventory_item_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      api_page_display_content_response() :: %{
        "apiUrl" => String.t() | atom(),
        "body" => String.t() | atom(),
        "operationName" => String.t() | atom()
      }

  """
  @type api_page_display_content_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      api_selection_configuration() :: %{
        "apiSelectionMode" => list(any()),
        "ruleFilters" => list(rule_filter())
      }

  """
  @type api_selection_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      api_signature() :: %{
        "hostname" => [String.t() | atom()],
        "method" => list(any()),
        "path" => [String.t() | atom()],
        "port" => [integer()],
        "resourceArn" => String.t() | atom()
      }

  """
  @type api_signature() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      apiportal_none() :: %{}

  """
  @type apiportal_none() :: %{}

  @typedoc """

  ## Example:

      associate_managed_apis_request() :: %{
        required("managedApiIds") => list(String.t() | atom())
      }

  """
  @type associate_managed_apis_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_managed_apis_response() :: %{
        "failedItems" => list(failed_managed_api_item())
      }

  """
  @type associate_managed_apis_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      authorization() :: %{
        "authorizationConfig" => list(),
        "fineGrainedAccessControl" => list(any())
      }

  """
  @type authorization() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type bad_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cognito_config() :: %{
        "appClientId" => String.t() | atom(),
        "identityPoolId" => String.t() | atom(),
        "userPoolArn" => String.t() | atom(),
        "userPoolDomain" => String.t() | atom()
      }

  """
  @type cognito_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_managed_api_request() :: %{
        optional("tags") => map(),
        required("apiSignature") => api_signature()
      }

  """
  @type create_managed_api_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_managed_api_response() :: %{
        "apiSignature" => api_signature(),
        "createdAt" => [non_neg_integer()],
        "managedApiArn" => String.t() | atom(),
        "managedApiId" => String.t() | atom(),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type create_managed_api_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_portal_preview_request() :: %{}

  """
  @type create_portal_preview_request() :: %{}

  @typedoc """

  ## Example:

      create_portal_request() :: %{
        optional("includedProductArns") => list(String.t() | atom()),
        optional("logoUri") => String.t() | atom(),
        optional("rumAppMonitorName") => String.t() | atom(),
        optional("tags") => map(),
        required("authorization") => authorization(),
        required("endpointConfiguration") => list(),
        required("portalContent") => portal_content()
      }

  """
  @type create_portal_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_portal_response() :: %{
        "authorization" => authorization(),
        "endpointConfiguration" => endpoint_configuration_response(),
        "includedProductArns" => list(String.t() | atom()),
        "portalArn" => String.t() | atom(),
        "portalContent" => portal_content(),
        "portalId" => String.t() | atom(),
        "publishDescription" => String.t() | atom(),
        "publishStatus" => list(any()),
        "publishedAt" => [non_neg_integer()],
        "rumAppMonitorName" => String.t() | atom(),
        "statusException" => portal_status_exception(),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type create_portal_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_product_api_page_request() :: %{
        optional("displayContent") => list(),
        optional("tags") => map(),
        optional("tryItState") => list(any()),
        required("managedApiId") => String.t() | atom()
      }

  """
  @type create_product_api_page_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_product_api_page_response() :: %{
        "apiId" => api_id(),
        "displayContent" => api_page_display_content_response(),
        "productApiPageArn" => String.t() | atom(),
        "productApiPageId" => String.t() | atom(),
        "status" => list(any()),
        "statusException" => product_api_page_status_exception(),
        "tags" => map(),
        "tryItState" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type create_product_api_page_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_product_page_request() :: %{
        optional("tags") => map(),
        required("displayContent") => display_content()
      }

  """
  @type create_product_page_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_product_page_response() :: %{
        "displayContent" => display_content(),
        "productPageArn" => String.t() | atom(),
        "productPageId" => String.t() | atom(),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type create_product_page_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_product_request() :: %{
        optional("apiSelectionConfiguration") => api_selection_configuration(),
        optional("description") => String.t() | atom(),
        optional("tags") => map(),
        required("displayName") => String.t() | atom()
      }

  """
  @type create_product_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_product_response() :: %{
        "apiSelectionConfiguration" => api_selection_configuration(),
        "description" => String.t() | atom(),
        "displayName" => String.t() | atom(),
        "displayOrder" => display_order(),
        "failureReason" => list(any()),
        "productArn" => String.t() | atom(),
        "productId" => String.t() | atom(),
        "status" => list(any()),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type create_product_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      custom_colors() :: %{
        "accentColor" => String.t() | atom(),
        "backgroundColor" => String.t() | atom(),
        "errorValidationColor" => String.t() | atom(),
        "headerColor" => String.t() | atom(),
        "navigationColor" => String.t() | atom(),
        "textColor" => String.t() | atom()
      }

  """
  @type custom_colors() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_discovery_configuration_request() :: %{}

  """
  @type delete_discovery_configuration_request() :: %{}

  @typedoc """

  ## Example:

      delete_managed_api_request() :: %{}

  """
  @type delete_managed_api_request() :: %{}

  @typedoc """

  ## Example:

      delete_managed_api_response() :: %{}

  """
  @type delete_managed_api_response() :: %{}

  @typedoc """

  ## Example:

      delete_organization_discovery_configuration_request() :: %{}

  """
  @type delete_organization_discovery_configuration_request() :: %{}

  @typedoc """

  ## Example:

      delete_portal_request() :: %{}

  """
  @type delete_portal_request() :: %{}

  @typedoc """

  ## Example:

      delete_product_api_page_request() :: %{}

  """
  @type delete_product_api_page_request() :: %{}

  @typedoc """

  ## Example:

      delete_product_page_request() :: %{}

  """
  @type delete_product_page_request() :: %{}

  @typedoc """

  ## Example:

      delete_product_request() :: %{}

  """
  @type delete_product_request() :: %{}

  @typedoc """

  ## Example:

      delete_product_sharing_policy_request() :: %{}

  """
  @type delete_product_sharing_policy_request() :: %{}

  @typedoc """

  ## Example:

      disassociate_managed_apis_request() :: %{
        required("managedApiIds") => list(String.t() | atom())
      }

  """
  @type disassociate_managed_apis_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_managed_apis_response() :: %{
        "failedItems" => list(failed_managed_api_item())
      }

  """
  @type disassociate_managed_apis_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      discovery_configuration_data() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "discoverySources" => list(list(any())()),
        "excludedResources" => list(String.t() | atom()),
        "features" => list(list(any())()),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type discovery_configuration_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      discovery_exclusion_filters() :: %{
        "accountIds" => list(String.t() | atom()),
        "organizationalUnitIds" => list(String.t() | atom()),
        "resourceArns" => list(String.t() | atom())
      }

  """
  @type discovery_exclusion_filters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      discovery_inclusion_filters() :: %{
        "accountIds" => list(String.t() | atom()),
        "organizationalUnitIds" => list(String.t() | atom())
      }

  """
  @type discovery_inclusion_filters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      discovery_status() :: %{
        "accountId" => String.t() | atom(),
        "discoverySource" => list(any()),
        "failureReason" => list(any()),
        "status" => list(any())
      }

  """
  @type discovery_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      display_content() :: %{
        "body" => String.t() | atom(),
        "title" => String.t() | atom()
      }

  """
  @type display_content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      display_content_overrides() :: %{
        "apiUrl" => String.t() | atom(),
        "body" => String.t() | atom(),
        "operationName" => String.t() | atom()
      }

  """
  @type display_content_overrides() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      display_order() :: %{
        "contents" => list(section()),
        "overviewPageArn" => String.t() | atom(),
        "productPageArns" => list(String.t() | atom())
      }

  """
  @type display_order() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      endpoint_configuration_response() :: %{
        "certificateArn" => String.t() | atom(),
        "domainName" => String.t() | atom(),
        "portalDefaultDomainName" => String.t() | atom(),
        "portalDomainHostedZoneId" => String.t() | atom()
      }

  """
  @type endpoint_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      failed_managed_api_item() :: %{
        "errorCode" => list(any()),
        "errorMessage" => [String.t() | atom()],
        "managedApiId" => String.t() | atom()
      }

  """
  @type failed_managed_api_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_api_inventory_item_request() :: %{
        required("host") => String.t() | atom(),
        required("method") => list(any()),
        required("path") => String.t() | atom(),
        required("port") => [integer()],
        required("resourceArn") => String.t() | atom()
      }

  """
  @type get_api_inventory_item_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_api_inventory_item_response() :: %{
        "item" => api_inventory_item_detail()
      }

  """
  @type get_api_inventory_item_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_discovery_configuration_request() :: %{}

  """
  @type get_discovery_configuration_request() :: %{}

  @typedoc """

  ## Example:

      get_discovery_configuration_response() :: %{
        "discoveryConfiguration" => discovery_configuration_data(),
        "tags" => map()
      }

  """
  @type get_discovery_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_managed_api_request() :: %{}

  """
  @type get_managed_api_request() :: %{}

  @typedoc """

  ## Example:

      get_managed_api_response() :: %{
        "apiSignature" => api_signature(),
        "createdAt" => [non_neg_integer()],
        "findings" => list(managed_api_finding()),
        "managedApiArn" => String.t() | atom(),
        "managedApiId" => String.t() | atom(),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_managed_api_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_organization_discovery_configuration_request() :: %{}

  """
  @type get_organization_discovery_configuration_request() :: %{}

  @typedoc """

  ## Example:

      get_organization_discovery_configuration_response() :: %{
        "discoveryConfiguration" => organization_discovery_configuration_data(),
        "tags" => map()
      }

  """
  @type get_organization_discovery_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_portal_request() :: %{}

  """
  @type get_portal_request() :: %{}

  @typedoc """

  ## Example:

      get_portal_response() :: %{
        "authorization" => authorization(),
        "endpointConfiguration" => endpoint_configuration_response(),
        "includedProductArns" => list(String.t() | atom()),
        "portalArn" => String.t() | atom(),
        "portalContent" => portal_content(),
        "portalId" => String.t() | atom(),
        "preview" => preview(),
        "publishDescription" => String.t() | atom(),
        "publishStatus" => list(any()),
        "publishedAt" => [non_neg_integer()],
        "rumAppMonitorName" => String.t() | atom(),
        "statusException" => portal_status_exception(),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_portal_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_product_api_page_request() :: %{
        optional("includeRawDisplayContent") => [boolean()],
        optional("resourceOwnerAccountId") => String.t() | atom()
      }

  """
  @type get_product_api_page_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_product_api_page_response() :: %{
        "apiId" => api_id(),
        "displayContent" => api_page_display_content_response(),
        "productApiPageArn" => String.t() | atom(),
        "productApiPageId" => String.t() | atom(),
        "rawDisplayContent" => [String.t() | atom()],
        "status" => list(any()),
        "statusException" => product_api_page_status_exception(),
        "tags" => map(),
        "tryItState" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_product_api_page_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_product_page_request() :: %{
        optional("resourceOwnerAccountId") => String.t() | atom()
      }

  """
  @type get_product_page_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_product_page_response() :: %{
        "displayContent" => display_content(),
        "productPageArn" => String.t() | atom(),
        "productPageId" => String.t() | atom(),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_product_page_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_product_request() :: %{
        optional("resourceOwnerAccountId") => String.t() | atom()
      }

  """
  @type get_product_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_product_response() :: %{
        "apiSelectionConfiguration" => api_selection_configuration(),
        "description" => String.t() | atom(),
        "displayName" => String.t() | atom(),
        "displayOrder" => display_order(),
        "failureReason" => list(any()),
        "productArn" => String.t() | atom(),
        "productId" => String.t() | atom(),
        "status" => list(any()),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_product_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_product_sharing_policy_request() :: %{}

  """
  @type get_product_sharing_policy_request() :: %{}

  @typedoc """

  ## Example:

      get_product_sharing_policy_response() :: %{
        "policyDocument" => String.t() | atom(),
        "productId" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type get_product_sharing_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      identifier_parts() :: %{
        "method" => String.t() | atom(),
        "path" => String.t() | atom(),
        "resourceArn" => String.t() | atom()
      }

  """
  @type identifier_parts() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_api_inventory_items_request() :: %{
        optional("filters") => api_inventory_filters(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_api_inventory_items_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_api_inventory_items_response() :: %{
        "items" => list(api_inventory_item()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_api_inventory_items_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_discovery_statuses_request() :: %{
        optional("discoverySource") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_discovery_statuses_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_discovery_statuses_response() :: %{
        "items" => list(discovery_status()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_discovery_statuses_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_managed_api_events_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("startedAfter") => [non_neg_integer()],
        optional("startedBefore") => [non_neg_integer()]
      }

  """
  @type list_managed_api_events_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_managed_api_events_response() :: %{
        "items" => list(managed_api_event_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_managed_api_events_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_managed_apis_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("productId") => String.t() | atom()
      }

  """
  @type list_managed_apis_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_managed_apis_response() :: %{
        "items" => list(managed_api_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_managed_apis_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_portals_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_portals_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_portals_response() :: %{
        "items" => list(portal_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_portals_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_product_api_pages_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("resourceOwnerAccountId") => String.t() | atom()
      }

  """
  @type list_product_api_pages_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_product_api_pages_response() :: %{
        "items" => list(product_api_page_summary_no_body()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_product_api_pages_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_product_pages_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("resourceOwnerAccountId") => String.t() | atom()
      }

  """
  @type list_product_pages_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_product_pages_response() :: %{
        "items" => list(product_page_summary_no_body()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_product_pages_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_products_request() :: %{
        optional("managedApiId") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("resourceOwner") => list(any())
      }

  """
  @type list_products_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_products_response() :: %{
        "items" => list(product_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_products_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      managed_api_event_summary() :: %{
        "endedAt" => [non_neg_integer()],
        "eventId" => String.t() | atom(),
        "eventType" => list(any()),
        "startedAt" => [non_neg_integer()],
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()],
        "wafApiSecurityEventDetail" => waf_api_security_event_detail()
      }

  """
  @type managed_api_event_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      managed_api_finding() :: %{
        "postureId" => [String.t() | atom()],
        "postureStatus" => list(any()),
        "reason" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type managed_api_finding() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      managed_api_summary() :: %{
        "apiSignature" => api_signature(),
        "createdAt" => [non_neg_integer()],
        "managedApiArn" => String.t() | atom(),
        "managedApiId" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type managed_api_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      organization_discovery_configuration_data() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "discoveryFilters" => list(),
        "discoverySources" => list(list(any())()),
        "exclusionFilters" => discovery_exclusion_filters(),
        "features" => list(list(any())()),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type organization_discovery_configuration_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      portal_content() :: %{
        "description" => String.t() | atom(),
        "displayName" => String.t() | atom(),
        "theme" => portal_theme()
      }

  """
  @type portal_content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      portal_status_exception() :: %{
        "exception" => list(any()),
        "message" => String.t() | atom()
      }

  """
  @type portal_status_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      portal_summary() :: %{
        "authorization" => authorization(),
        "endpointConfiguration" => endpoint_configuration_response(),
        "includedProductArns" => list(String.t() | atom()),
        "portalArn" => String.t() | atom(),
        "portalContent" => portal_content(),
        "portalId" => String.t() | atom(),
        "preview" => preview(),
        "publishDescription" => String.t() | atom(),
        "publishStatus" => list(any()),
        "publishedAt" => [non_neg_integer()],
        "rumAppMonitorName" => String.t() | atom(),
        "statusException" => portal_status_exception(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type portal_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      portal_theme() :: %{
        "customColors" => custom_colors(),
        "logoUploadedAt" => [non_neg_integer()]
      }

  """
  @type portal_theme() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      preview() :: %{
        "previewStatus" => list(any()),
        "previewUrl" => [String.t() | atom()],
        "statusException" => portal_status_exception()
      }

  """
  @type preview() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      product_api_page_status_exception() :: %{
        "exception" => list(any()),
        "message" => String.t() | atom()
      }

  """
  @type product_api_page_status_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      product_api_page_summary_no_body() :: %{
        "apiId" => api_id(),
        "apiUrl" => String.t() | atom(),
        "operationName" => String.t() | atom(),
        "productApiPageArn" => String.t() | atom(),
        "productApiPageId" => String.t() | atom(),
        "status" => list(any()),
        "statusException" => product_api_page_status_exception(),
        "tryItState" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type product_api_page_summary_no_body() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      product_page_summary_no_body() :: %{
        "pageTitle" => String.t() | atom(),
        "productPageArn" => String.t() | atom(),
        "productPageId" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type product_page_summary_no_body() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      product_summary() :: %{
        "apiSelectionConfiguration" => api_selection_configuration(),
        "description" => String.t() | atom(),
        "displayName" => String.t() | atom(),
        "failureReason" => list(any()),
        "productArn" => String.t() | atom(),
        "productId" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type product_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_discovery_configuration_request() :: %{
        optional("discoverySources") => list(list(any())()),
        optional("excludedResources") => list(String.t() | atom()),
        optional("features") => list(list(any())()),
        optional("tags") => map()
      }

  """
  @type put_discovery_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_discovery_configuration_response() :: %{
        "discoveryConfiguration" => discovery_configuration_data(),
        "tags" => map()
      }

  """
  @type put_discovery_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_organization_discovery_configuration_request() :: %{
        optional("discoveryFilters") => list(),
        optional("discoverySources") => list(list(any())()),
        optional("exclusionFilters") => discovery_exclusion_filters(),
        optional("features") => list(list(any())()),
        optional("tags") => map()
      }

  """
  @type put_organization_discovery_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_organization_discovery_configuration_response() :: %{
        "discoveryConfiguration" => organization_discovery_configuration_data(),
        "tags" => map()
      }

  """
  @type put_organization_discovery_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_product_sharing_policy_request() :: %{
        optional("tags") => map(),
        required("policyDocument") => String.t() | atom()
      }

  """
  @type put_product_sharing_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_filter() :: %{
        "key" => list(any()),
        "values" => list(String.t() | atom())
      }

  """
  @type rule_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      section() :: %{
        "productApiPageArns" => list(String.t() | atom()),
        "sectionName" => [String.t() | atom()]
      }

  """
  @type section() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_discovery_request() :: %{
        required("id") => String.t() | atom()
      }

  """
  @type start_discovery_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_discovery_request() :: %{
        required("id") => String.t() | atom()
      }

  """
  @type stop_discovery_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      update_portal_publish_status_request() :: %{
        optional("description") => String.t() | atom(),
        required("status") => list(any())
      }

  """
  @type update_portal_publish_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_portal_request() :: %{
        optional("authorization") => authorization(),
        optional("endpointConfiguration") => list(),
        optional("includedProductArns") => list(String.t() | atom()),
        optional("logoUri") => String.t() | atom(),
        optional("portalContent") => portal_content(),
        optional("rumAppMonitorName") => String.t() | atom()
      }

  """
  @type update_portal_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_portal_response() :: %{
        "authorization" => authorization(),
        "endpointConfiguration" => endpoint_configuration_response(),
        "includedProductArns" => list(String.t() | atom()),
        "portalArn" => String.t() | atom(),
        "portalContent" => portal_content(),
        "portalId" => String.t() | atom(),
        "preview" => preview(),
        "publishDescription" => String.t() | atom(),
        "publishStatus" => list(any()),
        "publishedAt" => [non_neg_integer()],
        "rumAppMonitorName" => String.t() | atom(),
        "statusException" => portal_status_exception(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type update_portal_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_product_api_page_request() :: %{
        optional("displayContent") => list(),
        optional("tryItState") => list(any())
      }

  """
  @type update_product_api_page_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_product_api_page_response() :: %{
        "apiId" => api_id(),
        "displayContent" => api_page_display_content_response(),
        "productApiPageArn" => String.t() | atom(),
        "productApiPageId" => String.t() | atom(),
        "status" => list(any()),
        "statusException" => product_api_page_status_exception(),
        "tryItState" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type update_product_api_page_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_product_page_request() :: %{
        optional("displayContent") => display_content()
      }

  """
  @type update_product_page_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_product_page_response() :: %{
        "displayContent" => display_content(),
        "productPageArn" => String.t() | atom(),
        "productPageId" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type update_product_page_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_product_request() :: %{
        optional("apiSelectionConfiguration") => api_selection_configuration(),
        optional("description") => String.t() | atom(),
        optional("displayName") => String.t() | atom(),
        optional("displayOrder") => display_order()
      }

  """
  @type update_product_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_product_response() :: %{
        "apiSelectionConfiguration" => api_selection_configuration(),
        "description" => String.t() | atom(),
        "displayName" => String.t() | atom(),
        "displayOrder" => display_order(),
        "failureReason" => list(any()),
        "productArn" => String.t() | atom(),
        "productId" => String.t() | atom(),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type update_product_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      waf_api_security_event_detail() :: %{
        "category" => String.t() | atom(),
        "confidence" => list(any()),
        "label" => String.t() | atom(),
        "webAclArn" => String.t() | atom()
      }

  """
  @type waf_api_security_event_detail() :: %{(String.t() | atom()) => any()}

  @type associate_managed_apis_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type create_managed_api_errors() ::
          limit_exceeded_exception()
          | conflict_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type create_portal_errors() ::
          limit_exceeded_exception() | bad_request_exception() | access_denied_exception()

  @type create_portal_preview_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type create_product_errors() ::
          limit_exceeded_exception() | bad_request_exception() | access_denied_exception()

  @type create_product_api_page_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type create_product_page_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type delete_discovery_configuration_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type delete_managed_api_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type delete_organization_discovery_configuration_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type delete_portal_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type delete_product_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type delete_product_api_page_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type delete_product_page_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type delete_product_sharing_policy_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type disassociate_managed_apis_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type get_api_inventory_item_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type get_discovery_configuration_errors() ::
          resource_not_found_exception() | internal_server_exception() | access_denied_exception()

  @type get_managed_api_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type get_organization_discovery_configuration_errors() ::
          resource_not_found_exception() | internal_server_exception() | access_denied_exception()

  @type get_portal_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type get_product_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type get_product_api_page_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type get_product_page_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type get_product_sharing_policy_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type list_api_inventory_items_errors() ::
          internal_server_exception() | bad_request_exception() | access_denied_exception()

  @type list_discovery_statuses_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type list_managed_api_events_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | internal_server_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type list_managed_apis_errors() ::
          limit_exceeded_exception() | bad_request_exception() | access_denied_exception()

  @type list_portals_errors() ::
          limit_exceeded_exception() | bad_request_exception() | access_denied_exception()

  @type list_product_api_pages_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type list_product_pages_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type list_products_errors() ::
          limit_exceeded_exception() | bad_request_exception() | access_denied_exception()

  @type list_tags_for_resource_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type put_discovery_configuration_errors() ::
          limit_exceeded_exception()
          | internal_server_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type put_organization_discovery_configuration_errors() ::
          limit_exceeded_exception()
          | internal_server_exception()
          | conflict_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type put_product_sharing_policy_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type start_discovery_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type stop_discovery_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type tag_resource_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type untag_resource_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type update_portal_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type update_portal_publish_status_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type update_product_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type update_product_api_page_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | bad_request_exception()
          | access_denied_exception()

  @type update_product_page_errors() ::
          resource_not_found_exception()
          | limit_exceeded_exception()
          | bad_request_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2026-04-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "apiportal",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "APIPortal",
      signature_version: "v4",
      signing_name: "apiportal",
      target_prefix: nil
    }
  end

  @doc """
  Associate one or more Managed APIs with a product.

  Best-effort — IDs that fail are returned in
  {@link AssociateManagedApisResponse#failedItems}; IDs that succeed are omitted.
  Associating an
  already-associated Managed API is a no-op (not reported as failure).
  """
  @spec associate_managed_apis(
          map(),
          String.t() | atom(),
          associate_managed_apis_request(),
          list()
        ) ::
          {:ok, associate_managed_apis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_managed_apis_errors()}
  def associate_managed_apis(%Client{} = client, product_id, input, options \\ []) do
    url_path = "/products/#{AWS.Util.encode_uri(product_id)}/associate"
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
  Promote a discovered API in the API inventory into the managed API list.
  """
  @spec create_managed_api(map(), create_managed_api_request(), list()) ::
          {:ok, create_managed_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_managed_api_errors()}
  def create_managed_api(%Client{} = client, input, options \\ []) do
    url_path = "/managedapis"
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
  Creates a portal that publishes documentation for the products it includes.

  Use UpdatePortalPublishStatus to publish it.
  """
  @spec create_portal(map(), create_portal_request(), list()) ::
          {:ok, create_portal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_portal_errors()}
  def create_portal(%Client{} = client, input, options \\ []) do
    url_path = "/portals"
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
  Starts building a preview of the portal's current content.

  Use GetPortal to check the preview status and get the preview URL.
  """
  @spec create_portal_preview(map(), String.t() | atom(), create_portal_preview_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_portal_preview_errors()}
  def create_portal_preview(%Client{} = client, portal_id, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_uri(portal_id)}/preview"
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
      202
    )
  end

  @doc """
  Creates a product.

  A product groups Managed APIs with their API pages and product pages so a portal
  can publish them together.
  """
  @spec create_product(map(), create_product_request(), list()) ::
          {:ok, create_product_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_product_errors()}
  def create_product(%Client{} = client, input, options \\ []) do
    url_path = "/products"
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
  Creates an API page that documents a Managed API in a product.

  The page content is generated asynchronously. Use `status` to track it.
  """
  @spec create_product_api_page(
          map(),
          String.t() | atom(),
          create_product_api_page_request(),
          list()
        ) ::
          {:ok, create_product_api_page_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_product_api_page_errors()}
  def create_product_api_page(%Client{} = client, product_id, input, options \\ []) do
    url_path = "/products/#{AWS.Util.encode_uri(product_id)}/apipages"
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
  Creates a product page with free-form documentation.

  A product can have up to 40 pages.
  """
  @spec create_product_page(map(), String.t() | atom(), create_product_page_request(), list()) ::
          {:ok, create_product_page_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_product_page_errors()}
  def create_product_page(%Client{} = client, product_id, input, options \\ []) do
    url_path = "/products/#{AWS.Util.encode_uri(product_id)}/productpages"
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
  Deletes the discovery configuration and stops any running discovery.
  """
  @spec delete_discovery_configuration(map(), delete_discovery_configuration_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_discovery_configuration_errors()}
  def delete_discovery_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/discovery-configuration"
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
  Deletes a Managed API.
  """
  @spec delete_managed_api(map(), String.t() | atom(), delete_managed_api_request(), list()) ::
          {:ok, delete_managed_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_managed_api_errors()}
  def delete_managed_api(%Client{} = client, managed_api_id, input, options \\ []) do
    url_path = "/managedapis/#{AWS.Util.encode_uri(managed_api_id)}"
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
  Deletes the organization-wide discovery configuration and stops any running
  discovery across
  the organization.

  Only the organization management account may call this operation.
  """
  @spec delete_organization_discovery_configuration(
          map(),
          delete_organization_discovery_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_organization_discovery_configuration_errors()}
  def delete_organization_discovery_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/org-discovery-configuration"
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
  Deletes a portal.
  """
  @spec delete_portal(map(), String.t() | atom(), delete_portal_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_portal_errors()}
  def delete_portal(%Client{} = client, portal_id, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_uri(portal_id)}"
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
  Deletes a product.
  """
  @spec delete_product(map(), String.t() | atom(), delete_product_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_product_errors()}
  def delete_product(%Client{} = client, product_id, input, options \\ []) do
    url_path = "/products/#{AWS.Util.encode_uri(product_id)}"
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
  Deletes an API page.
  """
  @spec delete_product_api_page(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_product_api_page_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_product_api_page_errors()}
  def delete_product_api_page(
        %Client{} = client,
        product_api_page_id,
        product_id,
        input,
        options \\ []
      ) do
    url_path =
      "/products/#{AWS.Util.encode_uri(product_id)}/apipages/#{AWS.Util.encode_uri(product_api_page_id)}"

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
  Deletes a product page.
  """
  @spec delete_product_page(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_product_page_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_product_page_errors()}
  def delete_product_page(%Client{} = client, product_id, product_page_id, input, options \\ []) do
    url_path =
      "/products/#{AWS.Util.encode_uri(product_id)}/productpages/#{AWS.Util.encode_uri(product_page_id)}"

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
  Deletes the sharing policy of a product.

  The product is no longer shared.
  """
  @spec delete_product_sharing_policy(
          map(),
          String.t() | atom(),
          delete_product_sharing_policy_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_product_sharing_policy_errors()}
  def delete_product_sharing_policy(%Client{} = client, product_id, input, options \\ []) do
    url_path = "/products/#{AWS.Util.encode_uri(product_id)}/sharingpolicy"
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
  Disassociate one or more Managed APIs from a product.

  Best-effort — IDs that fail are returned
  in {@link DisassociateManagedApisResponse#failedItems}; IDs that succeed are
  omitted.
  Disassociating an unmapped Managed API is a no-op (not reported as failure).
  """
  @spec disassociate_managed_apis(
          map(),
          String.t() | atom(),
          disassociate_managed_apis_request(),
          list()
        ) ::
          {:ok, disassociate_managed_apis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_managed_apis_errors()}
  def disassociate_managed_apis(%Client{} = client, product_id, input, options \\ []) do
    url_path = "/products/#{AWS.Util.encode_uri(product_id)}/disassociate"
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
  Gets full details of a single API inventory item.
  """
  @spec get_api_inventory_item(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_api_inventory_item_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_api_inventory_item_errors()}
  def get_api_inventory_item(
        %Client{} = client,
        host,
        method,
        path,
        port,
        resource_arn,
        options \\ []
      ) do
    url_path = "/api-inventory/item"
    headers = []
    query_params = []

    query_params =
      if !is_nil(host) do
        [{"host", host} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(method) do
        [{"method", method} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(path) do
        [{"path", path} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(port) do
        [{"port", port} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the discovery configuration for the account and region.
  """
  @spec get_discovery_configuration(map(), list()) ::
          {:ok, get_discovery_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_discovery_configuration_errors()}
  def get_discovery_configuration(%Client{} = client, options \\ []) do
    url_path = "/discovery-configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a Managed API, including its security posture findings.
  """
  @spec get_managed_api(map(), String.t() | atom(), list()) ::
          {:ok, get_managed_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_managed_api_errors()}
  def get_managed_api(%Client{} = client, managed_api_id, options \\ []) do
    url_path = "/managedapis/#{AWS.Util.encode_uri(managed_api_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the organization-wide discovery configuration.

  Only the organization management
  account and registered delegated administrators may call this operation.
  """
  @spec get_organization_discovery_configuration(map(), list()) ::
          {:ok, get_organization_discovery_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_organization_discovery_configuration_errors()}
  def get_organization_discovery_configuration(%Client{} = client, options \\ []) do
    url_path = "/org-discovery-configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the configuration, publish status, and preview status of a portal.
  """
  @spec get_portal(map(), String.t() | atom(), list()) ::
          {:ok, get_portal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_portal_errors()}
  def get_portal(%Client{} = client, portal_id, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_uri(portal_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a product.

  To read a product shared with you by another account, supply
  `resourceOwnerAccountId`.
  """
  @spec get_product(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, get_product_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_product_errors()}
  def get_product(%Client{} = client, product_id, resource_owner_account_id \\ nil, options \\ []) do
    url_path = "/products/#{AWS.Util.encode_uri(product_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_owner_account_id) do
        [{"resourceOwnerAccountId", resource_owner_account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns an API page, including its body.
  """
  @spec get_product_api_page(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_product_api_page_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_product_api_page_errors()}
  def get_product_api_page(
        %Client{} = client,
        product_api_page_id,
        product_id,
        include_raw_display_content \\ nil,
        resource_owner_account_id \\ nil,
        options \\ []
      ) do
    url_path =
      "/products/#{AWS.Util.encode_uri(product_id)}/apipages/#{AWS.Util.encode_uri(product_api_page_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(include_raw_display_content) do
        [{"includeRawDisplayContent", include_raw_display_content} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resource_owner_account_id) do
        [{"resourceOwnerAccountId", resource_owner_account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a product page, including its body.
  """
  @spec get_product_page(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_product_page_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_product_page_errors()}
  def get_product_page(
        %Client{} = client,
        product_id,
        product_page_id,
        resource_owner_account_id \\ nil,
        options \\ []
      ) do
    url_path =
      "/products/#{AWS.Util.encode_uri(product_id)}/productpages/#{AWS.Util.encode_uri(product_page_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_owner_account_id) do
        [{"resourceOwnerAccountId", resource_owner_account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the sharing policy of a product.
  """
  @spec get_product_sharing_policy(map(), String.t() | atom(), list()) ::
          {:ok, get_product_sharing_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_product_sharing_policy_errors()}
  def get_product_sharing_policy(%Client{} = client, product_id, options \\ []) do
    url_path = "/products/#{AWS.Util.encode_uri(product_id)}/sharingpolicy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists discovered API inventory items with filtering and pagination.
  """
  @spec list_api_inventory_items(map(), list_api_inventory_items_request(), list()) ::
          {:ok, list_api_inventory_items_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_api_inventory_items_errors()}
  def list_api_inventory_items(%Client{} = client, input, options \\ []) do
    url_path = "/api-inventory"
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
  Lists discovery statuses for services.
  """
  @spec list_discovery_statuses(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_discovery_statuses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_discovery_statuses_errors()}
  def list_discovery_statuses(
        %Client{} = client,
        discovery_source \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/discovery/statuses"
    headers = []
    query_params = []

    query_params =
      if !is_nil(discovery_source) do
        [{"discoverySource", discovery_source} | query_params]
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
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists API-security events for a single managed API, most recent first.

  Returns up to 20 of the
  most recent events (not paginated).
  """
  @spec list_managed_api_events(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_managed_api_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_managed_api_events_errors()}
  def list_managed_api_events(
        %Client{} = client,
        managed_api_id,
        max_results \\ nil,
        next_token \\ nil,
        started_after \\ nil,
        started_before \\ nil,
        options \\ []
      ) do
    url_path = "/managedapis/#{AWS.Util.encode_uri(managed_api_id)}/events"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
      if !is_nil(started_after) do
        [{"startedAfter", started_after} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(started_before) do
        [{"startedBefore", started_before} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Managed APIs in your account.
  """
  @spec list_managed_apis(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_managed_apis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_managed_apis_errors()}
  def list_managed_apis(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        product_id \\ nil,
        options \\ []
      ) do
    url_path = "/managedapis"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
      if !is_nil(product_id) do
        [{"productId", product_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the portals in your account.
  """
  @spec list_portals(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_portals_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_portals_errors()}
  def list_portals(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/portals"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the API pages in a product.

  The results do not include page bodies.
  """
  @spec list_product_api_pages(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_product_api_pages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_product_api_pages_errors()}
  def list_product_api_pages(
        %Client{} = client,
        product_id,
        max_results \\ nil,
        next_token \\ nil,
        resource_owner_account_id \\ nil,
        options \\ []
      ) do
    url_path = "/products/#{AWS.Util.encode_uri(product_id)}/apipages"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
      if !is_nil(resource_owner_account_id) do
        [{"resourceOwnerAccountId", resource_owner_account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the product pages in a product.

  The results do not include page bodies.
  """
  @spec list_product_pages(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_product_pages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_product_pages_errors()}
  def list_product_pages(
        %Client{} = client,
        product_id,
        max_results \\ nil,
        next_token \\ nil,
        resource_owner_account_id \\ nil,
        options \\ []
      ) do
    url_path = "/products/#{AWS.Util.encode_uri(product_id)}/productpages"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
      if !is_nil(resource_owner_account_id) do
        [{"resourceOwnerAccountId", resource_owner_account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists products you own, products shared with you, or both.
  """
  @spec list_products(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_products_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_products_errors()}
  def list_products(
        %Client{} = client,
        managed_api_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        resource_owner \\ nil,
        options \\ []
      ) do
    url_path = "/products"
    headers = []
    query_params = []

    query_params =
      if !is_nil(managed_api_id) do
        [{"managedApiId", managed_api_id} | query_params]
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
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resource_owner) do
        [{"resourceOwner", resource_owner} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags for an API Portal resource.

  One of the three basic tagging operations generated
  for Tagris integration (ListTagsForResource / TagResource / UntagResource).
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
  Creates or updates the discovery configuration
  """
  @spec put_discovery_configuration(map(), put_discovery_configuration_request(), list()) ::
          {:ok, put_discovery_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_discovery_configuration_errors()}
  def put_discovery_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/discovery-configuration"
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
  Creates or updates the organization-wide discovery configuration.

  This is a singleton
  per organization. Only the organization management account and registered
  delegated
  administrators may call this operation.
  """
  @spec put_organization_discovery_configuration(
          map(),
          put_organization_discovery_configuration_request(),
          list()
        ) ::
          {:ok, put_organization_discovery_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_organization_discovery_configuration_errors()}
  def put_organization_discovery_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/org-discovery-configuration"
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
  Creates or replaces the sharing policy of a product.

  The policy controls which other accounts can read the product.
  """
  @spec put_product_sharing_policy(
          map(),
          String.t() | atom(),
          put_product_sharing_policy_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_product_sharing_policy_errors()}
  def put_product_sharing_policy(%Client{} = client, product_id, input, options \\ []) do
    url_path = "/products/#{AWS.Util.encode_uri(product_id)}/sharingpolicy"
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
  Starts the API discovery process.
  """
  @spec start_discovery(map(), start_discovery_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_discovery_errors()}
  def start_discovery(%Client{} = client, input, options \\ []) do
    url_path = "/discovery/start"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"id", "id"}
      ]
      |> Request.build_params(input)

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
  Stops the running API discovery process.
  """
  @spec stop_discovery(map(), stop_discovery_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_discovery_errors()}
  def stop_discovery(%Client{} = client, input, options \\ []) do
    url_path = "/discovery/stop"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"id", "id"}
      ]
      |> Request.build_params(input)

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
  Adds or updates tags on an API Portal resource.

  One of the three basic tagging operations
  generated for Tagris integration (ListTagsForResource / TagResource /
  UntagResource).
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
      204
    )
  end

  @doc """
  Removes tags from an API Portal resource.

  One of the three basic tagging operations generated
  for Tagris integration (ListTagsForResource / TagResource / UntagResource).

  tagKeys is a query string parameter: for tag-based access control (TBAC/ABAC) to
  work correctly,
  API Gateway requires the keys to be removed to be passed as a query string
  parameter.
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
      204
    )
  end

  @doc """
  Updates a portal.

  Only the fields supplied in the request are changed.
  """
  @spec update_portal(map(), String.t() | atom(), update_portal_request(), list()) ::
          {:ok, update_portal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_portal_errors()}
  def update_portal(%Client{} = client, portal_id, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_uri(portal_id)}"
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
  Publishes or disables a portal.

  The change runs asynchronously. Use GetPortal to track `publishStatus`.
  """
  @spec update_portal_publish_status(
          map(),
          String.t() | atom(),
          update_portal_publish_status_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_portal_publish_status_errors()}
  def update_portal_publish_status(%Client{} = client, portal_id, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_uri(portal_id)}/publish"
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
      202
    )
  end

  @doc """
  Updates a product.

  Only the fields supplied in the request are changed.
  """
  @spec update_product(map(), String.t() | atom(), update_product_request(), list()) ::
          {:ok, update_product_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_product_errors()}
  def update_product(%Client{} = client, product_id, input, options \\ []) do
    url_path = "/products/#{AWS.Util.encode_uri(product_id)}"
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
  Updates an API page.

  Only the fields supplied in the request are changed.
  """
  @spec update_product_api_page(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_product_api_page_request(),
          list()
        ) ::
          {:ok, update_product_api_page_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_product_api_page_errors()}
  def update_product_api_page(
        %Client{} = client,
        product_api_page_id,
        product_id,
        input,
        options \\ []
      ) do
    url_path =
      "/products/#{AWS.Util.encode_uri(product_id)}/apipages/#{AWS.Util.encode_uri(product_api_page_id)}"

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
  Updates a product page.
  """
  @spec update_product_page(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_product_page_request(),
          list()
        ) ::
          {:ok, update_product_page_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_product_page_errors()}
  def update_product_page(%Client{} = client, product_id, product_page_id, input, options \\ []) do
    url_path =
      "/products/#{AWS.Util.encode_uri(product_id)}/productpages/#{AWS.Util.encode_uri(product_page_id)}"

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
end
