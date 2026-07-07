# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Billing do
  @moduledoc """
  You can use the Billing API to programatically list the billing views available
  to you for a given time period.

  A billing view represents a set of billing data.

  The Billing API provides the following endpoint:

  `https://billing.us-east-1.api.aws`
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      get_billing_preferences_request() :: %{
        optional("filters") => list(billing_feature_filter()),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        required("features") => list(list(any())())
      }
      
  """
  @type get_billing_preferences_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      billing_view_health_status() :: %{
        "statusCode" => list(any()),
        "statusReasons" => list(list(any())())
      }
      
  """
  @type billing_view_health_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      amount() :: %{
        "currencyAmount" => String.t() | atom(),
        "currencyCode" => String.t() | atom()
      }
      
  """
  @type amount() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cost_category_values() :: %{
        "key" => String.t() | atom(),
        "values" => list(String.t() | atom())
      }
      
  """
  @type cost_category_values() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_billing_preferences_request() :: %{
        required("billingPreferencesPerKey") => list(billing_preference_for_key()),
        required("feature") => list(any())
      }
      
  """
  @type update_billing_preferences_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_credits_request() :: %{
        optional("endDate") => [non_neg_integer()],
        optional("payerAccountFlag") => [boolean()],
        required("accountId") => [String.t() | atom()],
        required("startDate") => [non_neg_integer()]
      }
      
  """
  @type get_credits_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      billing_period() :: %{
        "month" => integer(),
        "year" => integer()
      }
      
  """
  @type billing_period() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_source_views_response() :: %{
        "arn" => String.t() | atom()
      }
      
  """
  @type associate_source_views_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_source_views_for_billing_view_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("arn") => String.t() | atom()
      }
      
  """
  @type list_source_views_for_billing_view_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      expression() :: %{
        "costCategories" => cost_category_values(),
        "dimensions" => dimension_values(),
        "tags" => tag_values(),
        "timeRange" => time_range()
      }
      
  """
  @type expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_billing_view_response() :: %{
        "billingView" => billing_view_element()
      }
      
  """
  @type get_billing_view_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      credit_data() :: %{
        "accountHasCreditSharingEnabled" => [boolean()],
        "accountId" => String.t() | atom(),
        "applicableProductNames" => list(String.t() | atom()),
        "applicationType" => list(any()),
        "costCategoryArn" => [String.t() | atom()],
        "creditConsoleVisibility" => [String.t() | atom()],
        "creditId" => String.t() | atom(),
        "creditSharingType" => list(any()),
        "creditStatus" => list(any()),
        "creditType" => [String.t() | atom()],
        "description" => [String.t() | atom()],
        "endDate" => [non_neg_integer()],
        "estimatedAmount" => amount(),
        "exhaustDate" => [non_neg_integer()],
        "initialAmount" => amount(),
        "purchaseTypeApplications" => list(String.t() | atom()),
        "remainingAmount" => amount(),
        "ruleName" => [String.t() | atom()],
        "shareableAccounts" => list(String.t() | atom()),
        "startDate" => [non_neg_integer()]
      }
      
  """
  @type credit_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => String.t() | atom(),
        "reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_request() :: %{
        required("resourceArn") => String.t() | atom()
      }
      
  """
  @type get_resource_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_credits_response() :: %{
        "credits" => list(credit_data())
      }
      
  """
  @type get_credits_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      active_time_range() :: %{
        "activeAfterInclusive" => [non_neg_integer()],
        "activeBeforeInclusive" => [non_neg_integer()]
      }
      
  """
  @type active_time_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      billing_view_list_element() :: %{
        "arn" => String.t() | atom(),
        "billingViewType" => list(any()),
        "description" => String.t() | atom(),
        "healthStatus" => billing_view_health_status(),
        "name" => String.t() | atom(),
        "ownerAccountId" => String.t() | atom(),
        "sourceAccountId" => String.t() | atom()
      }
      
  """
  @type billing_view_list_element() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disassociate_source_views_response() :: %{
        "arn" => String.t() | atom()
      }
      
  """
  @type disassociate_source_views_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "resourceType" => String.t() | atom()
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      billing_preference_summary() :: %{
        "accountId" => String.t() | atom(),
        "accountName" => String.t() | atom(),
        "billingPeriod" => billing_period(),
        "feature" => list(any()),
        "key" => String.t() | atom(),
        "value" => list(any())
      }
      
  """
  @type billing_preference_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("resourceTags") => list(resource_tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_billing_view_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("dataFilterExpression") => expression(),
        optional("description") => String.t() | atom(),
        optional("resourceTags") => list(resource_tag()),
        required("name") => String.t() | atom(),
        required("sourceViews") => list(String.t() | atom())
      }
      
  """
  @type create_billing_view_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_tag() :: %{
        "key" => String.t() | atom(),
        "value" => String.t() | atom()
      }
      
  """
  @type resource_tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "resourceType" => String.t() | atom()
      }
      
  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      disassociate_source_views_request() :: %{
        required("arn") => String.t() | atom(),
        required("sourceViews") => list(String.t() | atom())
      }
      
  """
  @type disassociate_source_views_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_response() :: %{
        "policy" => String.t() | atom(),
        "resourceArn" => String.t() | atom()
      }
      
  """
  @type get_resource_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      credit_allocation_history_entry() :: %{
        "accountId" => String.t() | atom(),
        "appliedServiceName" => [String.t() | atom()],
        "billingMonth" => String.t() | atom(),
        "creditAmount" => amount(),
        "creditId" => String.t() | atom(),
        "description" => [String.t() | atom()],
        "isEstimatedBill" => [boolean()]
      }
      
  """
  @type credit_allocation_history_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_billing_view_response() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()]
      }
      
  """
  @type create_billing_view_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "message" => String.t() | atom(),
        "name" => String.t() | atom()
      }
      
  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("resourceTagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associate_source_views_request() :: %{
        required("arn") => String.t() | atom(),
        required("sourceViews") => list(String.t() | atom())
      }
      
  """
  @type associate_source_views_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_billing_preferences_response() :: %{
        "billingPreferences" => list(billing_preference_summary()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type get_billing_preferences_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      billing_feature_filter() :: %{
        "name" => list(any()),
        "value" => list(String.t() | atom())
      }
      
  """
  @type billing_feature_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_billing_view_response() :: %{
        "arn" => String.t() | atom()
      }
      
  """
  @type delete_billing_view_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      redeem_credits_request() :: %{
        required("promoCode") => String.t() | atom()
      }
      
  """
  @type redeem_credits_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_credit_allocation_history_response() :: %{
        "creditAllocationHistoryList" => list(credit_allocation_history_entry()),
        "failedMonths" => list(String.t() | atom()),
        "nextToken" => String.t() | atom(),
        "partialResults" => [boolean()]
      }
      
  """
  @type get_credit_allocation_history_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_billing_view_request() :: %{
        optional("force") => [boolean()],
        required("arn") => String.t() | atom()
      }
      
  """
  @type delete_billing_view_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "resourceTags" => list(resource_tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      redeem_credits_response() :: %{}
      
  """
  @type redeem_credits_response() :: %{}

  @typedoc """

  ## Example:
      
      update_billing_preferences_response() :: %{}
      
  """
  @type update_billing_preferences_response() :: %{}

  @typedoc """

  ## Example:
      
      list_source_views_for_billing_view_response() :: %{
        "nextToken" => String.t() | atom(),
        "sourceViews" => list(String.t() | atom())
      }
      
  """
  @type list_source_views_for_billing_view_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      billing_view_health_status_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type billing_view_health_status_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_billing_views_response() :: %{
        "billingViews" => list(billing_view_list_element()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_billing_views_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      billing_preference_for_key() :: %{
        "key" => String.t() | atom(),
        "value" => list(any())
      }
      
  """
  @type billing_preference_for_key() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_billing_view_request() :: %{
        required("arn") => String.t() | atom()
      }
      
  """
  @type get_billing_view_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_values() :: %{
        "key" => String.t() | atom(),
        "values" => list(String.t() | atom())
      }
      
  """
  @type tag_values() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      string_search() :: %{
        "searchOption" => list(any()),
        "searchValue" => String.t() | atom()
      }
      
  """
  @type string_search() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_credit_allocation_history_request() :: %{
        optional("creditId") => [float()],
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        required("accountId") => String.t() | atom(),
        required("endDate") => [non_neg_integer()],
        required("startDate") => [non_neg_integer()]
      }
      
  """
  @type get_credit_allocation_history_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_billing_view_request() :: %{
        optional("dataFilterExpression") => expression(),
        optional("description") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        required("arn") => String.t() | atom()
      }
      
  """
  @type update_billing_view_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_billing_views_request() :: %{
        optional("activeTimeRange") => active_time_range(),
        optional("arns") => list(String.t() | atom()),
        optional("billingViewTypes") => list(list(any())()),
        optional("maxResults") => integer(),
        optional("names") => list(string_search()),
        optional("nextToken") => String.t() | atom(),
        optional("ownerAccountId") => String.t() | atom(),
        optional("sourceAccountId") => String.t() | atom()
      }
      
  """
  @type list_billing_views_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      time_range() :: %{
        "beginDateInclusive" => [non_neg_integer()],
        "endDateInclusive" => [non_neg_integer()]
      }
      
  """
  @type time_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      billing_view_element() :: %{
        "arn" => String.t() | atom(),
        "billingViewType" => list(any()),
        "createdAt" => [non_neg_integer()],
        "dataFilterExpression" => expression(),
        "derivedViewCount" => [integer()],
        "description" => String.t() | atom(),
        "healthStatus" => billing_view_health_status(),
        "name" => String.t() | atom(),
        "ownerAccountId" => String.t() | atom(),
        "sourceAccountId" => String.t() | atom(),
        "sourceViewCount" => [integer()],
        "updatedAt" => [non_neg_integer()],
        "viewDefinitionLastUpdatedAt" => [non_neg_integer()]
      }
      
  """
  @type billing_view_element() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dimension_values() :: %{
        "key" => list(any()),
        "values" => list(String.t() | atom())
      }
      
  """
  @type dimension_values() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_billing_view_response() :: %{
        "arn" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()]
      }
      
  """
  @type update_billing_view_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => String.t() | atom(),
        "quotaCode" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "resourceType" => String.t() | atom(),
        "serviceCode" => String.t() | atom()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @type associate_source_views_errors() ::
          service_quota_exceeded_exception()
          | billing_view_health_status_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type create_billing_view_errors() ::
          service_quota_exceeded_exception()
          | billing_view_health_status_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type delete_billing_view_errors() ::
          conflict_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type disassociate_source_views_errors() ::
          billing_view_health_status_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_billing_preferences_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_billing_view_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_credit_allocation_history_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_credits_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_resource_policy_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_billing_views_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_source_views_for_billing_view_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_tags_for_resource_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type redeem_credits_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type tag_resource_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type untag_resource_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type update_billing_preferences_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type update_billing_view_errors() ::
          service_quota_exceeded_exception()
          | billing_view_health_status_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  def metadata do
    %{
      api_version: "2023-09-07",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "billing",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Billing",
      signature_version: "v4",
      signing_name: "billing",
      target_prefix: "AWSBilling"
    }
  end

  @doc """
  Associates one or more source billing views with an existing billing view.

  This allows creating aggregate billing views that combine data from multiple
  sources.
  """
  @spec associate_source_views(map(), associate_source_views_request(), list()) ::
          {:ok, associate_source_views_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_source_views_errors()}
  def associate_source_views(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateSourceViews", input, options)
  end

  @doc """
  Creates a billing view with the specified billing view attributes.
  """
  @spec create_billing_view(map(), create_billing_view_request(), list()) ::
          {:ok, create_billing_view_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_billing_view_errors()}
  def create_billing_view(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateBillingView", input, options)
  end

  @doc """
  Deletes the specified billing view.
  """
  @spec delete_billing_view(map(), delete_billing_view_request(), list()) ::
          {:ok, delete_billing_view_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_billing_view_errors()}
  def delete_billing_view(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteBillingView", input, options)
  end

  @doc """
  Removes the association between one or more source billing views and an existing
  billing view.

  This allows modifying the composition of aggregate billing views.
  """
  @spec disassociate_source_views(map(), disassociate_source_views_request(), list()) ::
          {:ok, disassociate_source_views_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_source_views_errors()}
  def disassociate_source_views(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateSourceViews", input, options)
  end

  @doc """
  Retrieves billing preferences for the specified feature.

  Each feature controls a distinct billing capability: which accounts can share
  Reserved Instances or credits, whether billing alerts are enabled, the
  historical record of sharing changes, and per-credit options.
  """
  @spec get_billing_preferences(map(), get_billing_preferences_request(), list()) ::
          {:ok, get_billing_preferences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_billing_preferences_errors()}
  def get_billing_preferences(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetBillingPreferences", input, options)
  end

  @doc """
  Returns the metadata associated to the specified billing view ARN.
  """
  @spec get_billing_view(map(), get_billing_view_request(), list()) ::
          {:ok, get_billing_view_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_billing_view_errors()}
  def get_billing_view(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetBillingView", input, options)
  end

  @doc """
  Returns the per-billing-month allocation history for credits applied to an
  Amazon Web Services account's bills.

  Traverses the consolidated billing family to capture cross-account credit
  applications. Supports pagination and optional filtering to a single credit.
  """
  @spec get_credit_allocation_history(map(), get_credit_allocation_history_request(), list()) ::
          {:ok, get_credit_allocation_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_credit_allocation_history_errors()}
  def get_credit_allocation_history(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCreditAllocationHistory", input, options)
  end

  @doc """
  Returns the list of Amazon Web Services account credits for the specified
  account.

  Each credit includes its identifier, type, monetary amounts, applicable
  products, expiration, sharing configuration, and current enabled status.

  When the caller is the management account of a consolidated billing family and
  `payerAccountFlag` is `true`, the response aggregates credits across the entire
  family. Otherwise, the response includes only credits owned by the account
  specified in `accountId`.
  """
  @spec get_credits(map(), get_credits_request(), list()) ::
          {:ok, get_credits_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_credits_errors()}
  def get_credits(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCredits", input, options)
  end

  @doc """
  Returns the resource-based policy document attached to the resource in `JSON`
  format.
  """
  @spec get_resource_policy(map(), get_resource_policy_request(), list()) ::
          {:ok, get_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_policy_errors()}
  def get_resource_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetResourcePolicy", input, options)
  end

  @doc """
  Lists the billing views available for a given time period.

  Every Amazon Web Services account has a unique `PRIMARY` billing view that
  represents the billing data available by default. Accounts that use Billing
  Conductor also have `BILLING_GROUP` billing views representing pro forma costs
  associated with each created billing group.
  """
  @spec list_billing_views(map(), list_billing_views_request(), list()) ::
          {:ok, list_billing_views_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_billing_views_errors()}
  def list_billing_views(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListBillingViews", input, options)
  end

  @doc """
  Lists the source views (managed Amazon Web Services billing views) associated
  with the billing view.
  """
  @spec list_source_views_for_billing_view(
          map(),
          list_source_views_for_billing_view_request(),
          list()
        ) ::
          {:ok, list_source_views_for_billing_view_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_source_views_for_billing_view_errors()}
  def list_source_views_for_billing_view(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListSourceViewsForBillingView", input, options)
  end

  @doc """
  Lists tags associated with the billing view resource.
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
  Redeems an Amazon Web Services promotional credit code on behalf of the calling
  account.

  On success, a new credit is added to the account's credit ledger with the
  amount, validity period, and applicable products defined by the promotion. The
  credit is then automatically applied to subsequent bills according to the
  standard credit application order.
  """
  @spec redeem_credits(map(), redeem_credits_request(), list()) ::
          {:ok, redeem_credits_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, redeem_credits_errors()}
  def redeem_credits(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RedeemCredits", input, options)
  end

  @doc """
  An API operation for adding one or more tags (key-value pairs) to a resource.
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
  Removes one or more tags from a resource.

  Specify only tag keys in your request. Don't specify the value.
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
  Updates billing preferences for the specified feature.

  Each feature targets a distinct billing capability and has its own set of
  supported keys. The action sets the value for each provided key; keys not
  present in the request are unchanged.

  Sharing keys (`RI_SHARING`, `CREDIT_SHARING`, `CREDIT_LEVEL_SHARING`, and
  sharing keys under `CREDIT_PREFERENCE_OPTIONS`) may only be set by the
  management account of a consolidated billing family. The
  `credit/{creditId}/status` key may be set by member accounts for credits they
  own, or by the management account for any credit in the family.
  """
  @spec update_billing_preferences(map(), update_billing_preferences_request(), list()) ::
          {:ok, update_billing_preferences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_billing_preferences_errors()}
  def update_billing_preferences(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateBillingPreferences", input, options)
  end

  @doc """
  An API to update the attributes of the billing view.
  """
  @spec update_billing_view(map(), update_billing_view_request(), list()) ::
          {:ok, update_billing_view_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_billing_view_errors()}
  def update_billing_view(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateBillingView", input, options)
  end
end
