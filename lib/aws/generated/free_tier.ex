# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.FreeTier do
  @moduledoc """
  You can use the Amazon Web Services Free Tier API to query programmatically your
  Free Tier usage data.

  Free Tier tracks your monthly usage data for all free tier offers that are
  associated with your Amazon Web Services account. You can use the Free Tier API
  to filter and show only the data that you want.

  Service endpoint

  The Free Tier API provides the following endpoint:

  For more information, see [Using the Amazon Web Services Free Tier](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-free-tier.html)
  in the *Billing User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      activity_summary() :: %{
        "activityId" => String.t() | atom(),
        "reward" => list(),
        "status" => list(any()),
        "title" => String.t() | atom()
      }
      
  """
  @type activity_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dimension_values() :: %{
        "Key" => list(any()),
        "MatchOptions" => list(list(any())()),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type dimension_values() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      expression() :: %{
        "And" => list(expression()),
        "Dimensions" => dimension_values(),
        "Not" => expression(),
        "Or" => list(expression())
      }
      
  """
  @type expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      free_tier_usage() :: %{
        "actualUsageAmount" => float(),
        "description" => String.t() | atom(),
        "forecastedUsageAmount" => float(),
        "freeTierType" => String.t() | atom(),
        "limit" => float(),
        "operation" => String.t() | atom(),
        "region" => String.t() | atom(),
        "service" => String.t() | atom(),
        "unit" => String.t() | atom(),
        "usageType" => String.t() | atom()
      }
      
  """
  @type free_tier_usage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_account_activity_request() :: %{
        optional("languageCode") => list(any()),
        required("activityId") => String.t() | atom()
      }
      
  """
  @type get_account_activity_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_account_activity_response() :: %{
        "activityId" => String.t() | atom(),
        "completedAt" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "estimatedTimeToCompleteInMinutes" => [integer()],
        "expiresAt" => [non_neg_integer()],
        "instructionsUrl" => String.t() | atom(),
        "reward" => list(),
        "startedAt" => [non_neg_integer()],
        "status" => list(any()),
        "title" => String.t() | atom()
      }
      
  """
  @type get_account_activity_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_account_plan_state_request() :: %{}
      
  """
  @type get_account_plan_state_request() :: %{}

  @typedoc """

  ## Example:
      
      get_account_plan_state_response() :: %{
        "accountId" => String.t() | atom(),
        "accountPlanExpirationDate" => [non_neg_integer()],
        "accountPlanRemainingCredits" => monetary_amount(),
        "accountPlanStatus" => list(any()),
        "accountPlanType" => list(any())
      }
      
  """
  @type get_account_plan_state_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_free_tier_usage_request() :: %{
        optional("filter") => expression(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type get_free_tier_usage_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_free_tier_usage_response() :: %{
        "freeTierUsages" => list(free_tier_usage()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type get_free_tier_usage_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_account_activities_request() :: %{
        optional("filterActivityStatuses") => list(list(any())()),
        optional("languageCode") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type list_account_activities_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_account_activities_response() :: %{
        "activities" => list(activity_summary()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_account_activities_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      monetary_amount() :: %{
        "amount" => float(),
        "unit" => list(any())
      }
      
  """
  @type monetary_amount() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      upgrade_account_plan_request() :: %{
        required("accountPlanType") => list(any())
      }
      
  """
  @type upgrade_account_plan_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      upgrade_account_plan_response() :: %{
        "accountId" => String.t() | atom(),
        "accountPlanStatus" => list(any()),
        "accountPlanType" => list(any())
      }
      
  """
  @type upgrade_account_plan_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @type get_account_activity_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()

  @type get_account_plan_state_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_free_tier_usage_errors() ::
          validation_exception() | throttling_exception() | internal_server_exception()

  @type list_account_activities_errors() ::
          validation_exception() | throttling_exception() | internal_server_exception()

  @type upgrade_account_plan_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2023-09-07",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "freetier",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "FreeTier",
      signature_version: "v4",
      signing_name: "freetier",
      target_prefix: "AWSFreeTierService"
    }
  end

  @doc """
  Returns a specific activity record that is available to the customer.
  """
  @spec get_account_activity(map(), get_account_activity_request(), list()) ::
          {:ok, get_account_activity_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_account_activity_errors()}
  def get_account_activity(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAccountActivity", input, options)
  end

  @doc """
  This returns all of the information related to the state of the account plan
  related to Free Tier.
  """
  @spec get_account_plan_state(map(), get_account_plan_state_request(), list()) ::
          {:ok, get_account_plan_state_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_account_plan_state_errors()}
  def get_account_plan_state(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAccountPlanState", input, options)
  end

  @doc """
  Returns a list of all Free Tier usage objects that match your filters.
  """
  @spec get_free_tier_usage(map(), get_free_tier_usage_request(), list()) ::
          {:ok, get_free_tier_usage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_free_tier_usage_errors()}
  def get_free_tier_usage(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetFreeTierUsage", input, options)
  end

  @doc """
  Returns a list of activities that are available.

  This operation supports pagination and filtering by status.
  """
  @spec list_account_activities(map(), list_account_activities_request(), list()) ::
          {:ok, list_account_activities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_account_activities_errors()}
  def list_account_activities(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListAccountActivities", input, options)
  end

  @doc """
  The account plan type for the Amazon Web Services account.
  """
  @spec upgrade_account_plan(map(), upgrade_account_plan_request(), list()) ::
          {:ok, upgrade_account_plan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, upgrade_account_plan_errors()}
  def upgrade_account_plan(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpgradeAccountPlan", input, options)
  end
end
