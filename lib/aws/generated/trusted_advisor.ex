# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.TrustedAdvisor do
  @moduledoc """
  TrustedAdvisor Public API
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      recommendation_resource_exclusion() :: %{
        "arn" => String.t() | atom(),
        "isExcluded" => [boolean()]
      }

  """
  @type recommendation_resource_exclusion() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      recommendation_pillar_specific_aggregates() :: %{
        "costOptimizing" => recommendation_cost_optimizing_aggregates()
      }

  """
  @type recommendation_pillar_specific_aggregates() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_organization_recommendation_accounts_response() :: %{
        "accountRecommendationLifecycleSummaries" => list(account_recommendation_lifecycle_summary()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_organization_recommendation_accounts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_checks_response() :: %{
        "checkSummaries" => list(check_summary()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_checks_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_recommendation_request() :: %{}

  """
  @type get_recommendation_request() :: %{}

  @typedoc """

  ## Example:

      organization_recommendation_summary() :: %{
        "arn" => String.t() | atom(),
        "awsServices" => list(String.t() | atom()),
        "checkArn" => [String.t() | atom()],
        "createdAt" => [non_neg_integer()],
        "id" => [String.t() | atom()],
        "lastUpdatedAt" => [non_neg_integer()],
        "lifecycleStage" => list(any()),
        "name" => [String.t() | atom()],
        "pillarSpecificAggregates" => recommendation_pillar_specific_aggregates(),
        "pillars" => list(list(any())()),
        "resourcesAggregates" => recommendation_resources_aggregates(),
        "source" => list(any()),
        "status" => list(any()),
        "type" => list(any())
      }

  """
  @type organization_recommendation_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_recommendation_lifecycle_request() :: %{
        optional("updateReason") => String.t() | atom(),
        optional("updateReasonCode") => list(any()),
        required("lifecycleStage") => list(any())
      }

  """
  @type update_recommendation_lifecycle_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_update_recommendation_resource_exclusion_request() :: %{
        required("recommendationResourceExclusions") => list(recommendation_resource_exclusion())
      }

  """
  @type batch_update_recommendation_resource_exclusion_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      recommendation_resources_aggregates() :: %{
        "errorCount" => [float()],
        "okCount" => [float()],
        "warningCount" => [float()]
      }

  """
  @type recommendation_resources_aggregates() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_recommendation_resources_response() :: %{
        "nextToken" => [String.t() | atom()],
        "recommendationResourceSummaries" => list(recommendation_resource_summary())
      }

  """
  @type list_recommendation_resources_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      recommendation() :: %{
        "arn" => String.t() | atom(),
        "awsServices" => list(String.t() | atom()),
        "checkArn" => [String.t() | atom()],
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t() | atom()],
        "description" => [String.t() | atom()],
        "id" => [String.t() | atom()],
        "lastUpdatedAt" => [non_neg_integer()],
        "lifecycleStage" => list(any()),
        "name" => [String.t() | atom()],
        "pillarSpecificAggregates" => recommendation_pillar_specific_aggregates(),
        "pillars" => list(list(any())()),
        "resolvedAt" => [non_neg_integer()],
        "resourcesAggregates" => recommendation_resources_aggregates(),
        "source" => list(any()),
        "status" => list(any()),
        "type" => list(any()),
        "updateReason" => String.t() | atom(),
        "updateReasonCode" => list(any()),
        "updatedOnBehalfOf" => [String.t() | atom()],
        "updatedOnBehalfOfJobTitle" => [String.t() | atom()]
      }

  """
  @type recommendation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_checks_request() :: %{
        optional("awsService") => String.t() | atom(),
        optional("language") => list(any()),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()],
        optional("pillar") => list(any()),
        optional("source") => list(any())
      }

  """
  @type list_checks_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_recommendation_lifecycle_summary() :: %{
        "accountId" => String.t() | atom(),
        "accountRecommendationArn" => String.t() | atom(),
        "lastUpdatedAt" => [non_neg_integer()],
        "lifecycleStage" => list(any()),
        "updateReason" => String.t() | atom(),
        "updateReasonCode" => list(any()),
        "updatedOnBehalfOf" => [String.t() | atom()],
        "updatedOnBehalfOfJobTitle" => [String.t() | atom()]
      }

  """
  @type account_recommendation_lifecycle_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_organization_recommendation_request() :: %{}

  """
  @type get_organization_recommendation_request() :: %{}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_organization_recommendations_response() :: %{
        "nextToken" => [String.t() | atom()],
        "organizationRecommendationSummaries" => list(organization_recommendation_summary())
      }

  """
  @type list_organization_recommendations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_organization_recommendation_accounts_request() :: %{
        optional("affectedAccountId") => String.t() | atom(),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_organization_recommendation_accounts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_update_recommendation_resource_exclusion_response() :: %{
        "batchUpdateRecommendationResourceExclusionErrors" => list(update_recommendation_resource_exclusion_error())
      }

  """
  @type batch_update_recommendation_resource_exclusion_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_recommendation_resources_request() :: %{
        optional("exclusionStatus") => list(any()),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()],
        optional("regionCode") => [String.t() | atom()],
        optional("status") => list(any())
      }

  """
  @type list_recommendation_resources_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_organization_recommendation_resources_response() :: %{
        "nextToken" => [String.t() | atom()],
        "organizationRecommendationResourceSummaries" => list(organization_recommendation_resource_summary())
      }

  """
  @type list_organization_recommendation_resources_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_organization_recommendation_lifecycle_request() :: %{
        optional("updateReason") => String.t() | atom(),
        optional("updateReasonCode") => list(any()),
        required("lifecycleStage") => list(any())
      }

  """
  @type update_organization_recommendation_lifecycle_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      get_organization_recommendation_response() :: %{
        "organizationRecommendation" => organization_recommendation()
      }

  """
  @type get_organization_recommendation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_organization_recommendation_resources_request() :: %{
        optional("affectedAccountId") => String.t() | atom(),
        optional("exclusionStatus") => list(any()),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()],
        optional("regionCode") => [String.t() | atom()],
        optional("status") => list(any())
      }

  """
  @type list_organization_recommendation_resources_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_organization_recommendations_request() :: %{
        optional("afterLastUpdatedAt") => [non_neg_integer()],
        optional("awsService") => String.t() | atom(),
        optional("beforeLastUpdatedAt") => [non_neg_integer()],
        optional("checkIdentifier") => String.t() | atom(),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()],
        optional("pillar") => list(any()),
        optional("source") => list(any()),
        optional("status") => list(any()),
        optional("type") => list(any())
      }

  """
  @type list_organization_recommendations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      check_summary() :: %{
        "arn" => String.t() | atom(),
        "awsServices" => list(String.t() | atom()),
        "description" => [String.t() | atom()],
        "id" => [String.t() | atom()],
        "metadata" => map(),
        "name" => [String.t() | atom()],
        "pillars" => list(list(any())()),
        "source" => list(any())
      }

  """
  @type check_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      recommendation_summary() :: %{
        "arn" => String.t() | atom(),
        "awsServices" => list(String.t() | atom()),
        "checkArn" => [String.t() | atom()],
        "createdAt" => [non_neg_integer()],
        "id" => [String.t() | atom()],
        "lastUpdatedAt" => [non_neg_integer()],
        "lifecycleStage" => list(any()),
        "name" => [String.t() | atom()],
        "pillarSpecificAggregates" => recommendation_pillar_specific_aggregates(),
        "pillars" => list(list(any())()),
        "resourcesAggregates" => recommendation_resources_aggregates(),
        "source" => list(any()),
        "status" => list(any()),
        "type" => list(any())
      }

  """
  @type recommendation_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_recommendation_resource_exclusion_error() :: %{
        "arn" => String.t() | atom(),
        "errorCode" => [String.t() | atom()],
        "errorMessage" => [String.t() | atom()]
      }

  """
  @type update_recommendation_resource_exclusion_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      organization_recommendation_resource_summary() :: %{
        "accountId" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "awsResourceId" => [String.t() | atom()],
        "exclusionStatus" => list(any()),
        "id" => [String.t() | atom()],
        "lastUpdatedAt" => [non_neg_integer()],
        "metadata" => map(),
        "recommendationArn" => String.t() | atom(),
        "regionCode" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type organization_recommendation_resource_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_recommendations_response() :: %{
        "nextToken" => [String.t() | atom()],
        "recommendationSummaries" => list(recommendation_summary())
      }

  """
  @type list_recommendations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      recommendation_cost_optimizing_aggregates() :: %{
        "estimatedMonthlySavings" => [float()],
        "estimatedPercentMonthlySavings" => [float()]
      }

  """
  @type recommendation_cost_optimizing_aggregates() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_recommendation_response() :: %{
        "recommendation" => recommendation()
      }

  """
  @type get_recommendation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      organization_recommendation() :: %{
        "arn" => String.t() | atom(),
        "awsServices" => list(String.t() | atom()),
        "checkArn" => [String.t() | atom()],
        "createdAt" => [non_neg_integer()],
        "createdBy" => [String.t() | atom()],
        "description" => [String.t() | atom()],
        "id" => [String.t() | atom()],
        "lastUpdatedAt" => [non_neg_integer()],
        "lifecycleStage" => list(any()),
        "name" => [String.t() | atom()],
        "pillarSpecificAggregates" => recommendation_pillar_specific_aggregates(),
        "pillars" => list(list(any())()),
        "resolvedAt" => [non_neg_integer()],
        "resourcesAggregates" => recommendation_resources_aggregates(),
        "source" => list(any()),
        "status" => list(any()),
        "type" => list(any()),
        "updateReason" => String.t() | atom(),
        "updateReasonCode" => list(any()),
        "updatedOnBehalfOf" => [String.t() | atom()],
        "updatedOnBehalfOfJobTitle" => [String.t() | atom()]
      }

  """
  @type organization_recommendation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      recommendation_resource_summary() :: %{
        "arn" => String.t() | atom(),
        "awsResourceId" => [String.t() | atom()],
        "exclusionStatus" => list(any()),
        "id" => [String.t() | atom()],
        "lastUpdatedAt" => [non_neg_integer()],
        "metadata" => map(),
        "recommendationArn" => String.t() | atom(),
        "regionCode" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type recommendation_resource_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_recommendations_request() :: %{
        optional("afterLastUpdatedAt") => [non_neg_integer()],
        optional("awsService") => String.t() | atom(),
        optional("beforeLastUpdatedAt") => [non_neg_integer()],
        optional("checkIdentifier") => String.t() | atom(),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()],
        optional("pillar") => list(any()),
        optional("source") => list(any()),
        optional("status") => list(any()),
        optional("type") => list(any())
      }

  """
  @type list_recommendations_request() :: %{(String.t() | atom()) => any()}

  @type batch_update_recommendation_resource_exclusion_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type get_organization_recommendation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_recommendation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_checks_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_organization_recommendation_accounts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_organization_recommendation_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_organization_recommendations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_recommendation_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_recommendations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type update_organization_recommendation_lifecycle_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_recommendation_lifecycle_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2022-09-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "trustedadvisor",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "TrustedAdvisor",
      signature_version: "v4",
      signing_name: "trustedadvisor",
      target_prefix: nil
    }
  end

  @doc """
  Update one or more exclusion status for a list of recommendation resources
  """
  @spec batch_update_recommendation_resource_exclusion(
          map(),
          batch_update_recommendation_resource_exclusion_request(),
          list()
        ) ::
          {:ok, batch_update_recommendation_resource_exclusion_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_update_recommendation_resource_exclusion_errors()}
  def batch_update_recommendation_resource_exclusion(%Client{} = client, input, options \\ []) do
    url_path = "/v1/batch-update-recommendation-resource-exclusion"
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
  Get a specific recommendation within an AWS Organizations organization.

  This API supports only prioritized
  recommendations.
  """
  @spec get_organization_recommendation(map(), String.t() | atom(), list()) ::
          {:ok, get_organization_recommendation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_organization_recommendation_errors()}
  def get_organization_recommendation(
        %Client{} = client,
        organization_recommendation_identifier,
        options \\ []
      ) do
    url_path =
      "/v1/organization-recommendations/#{AWS.Util.encode_uri(organization_recommendation_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a specific Recommendation
  """
  @spec get_recommendation(map(), String.t() | atom(), list()) ::
          {:ok, get_recommendation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_recommendation_errors()}
  def get_recommendation(%Client{} = client, recommendation_identifier, options \\ []) do
    url_path = "/v1/recommendations/#{AWS.Util.encode_uri(recommendation_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List a filterable set of Checks
  """
  @spec list_checks(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_checks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_checks_errors()}
  def list_checks(
        %Client{} = client,
        aws_service \\ nil,
        language \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        pillar \\ nil,
        source \\ nil,
        options \\ []
      ) do
    url_path = "/v1/checks"
    headers = []
    query_params = []

    query_params =
      if !is_nil(source) do
        [{"source", source} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(pillar) do
        [{"pillar", pillar} | query_params]
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
      if !is_nil(language) do
        [{"language", language} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(aws_service) do
        [{"awsService", aws_service} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the accounts that own the resources for an organization aggregate
  recommendation.

  This API only
  supports prioritized recommendations.
  """
  @spec list_organization_recommendation_accounts(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_organization_recommendation_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_organization_recommendation_accounts_errors()}
  def list_organization_recommendation_accounts(
        %Client{} = client,
        organization_recommendation_identifier,
        affected_account_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/organization-recommendations/#{AWS.Util.encode_uri(organization_recommendation_identifier)}/accounts"

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

    query_params =
      if !is_nil(affected_account_id) do
        [{"affectedAccountId", affected_account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List Resources of a Recommendation within an Organization.

  This API only supports prioritized
  recommendations.
  """
  @spec list_organization_recommendation_resources(
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
          {:ok, list_organization_recommendation_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_organization_recommendation_resources_errors()}
  def list_organization_recommendation_resources(
        %Client{} = client,
        organization_recommendation_identifier,
        affected_account_id \\ nil,
        exclusion_status \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        region_code \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/organization-recommendations/#{AWS.Util.encode_uri(organization_recommendation_identifier)}/resources"

    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(region_code) do
        [{"regionCode", region_code} | query_params]
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
      if !is_nil(exclusion_status) do
        [{"exclusionStatus", exclusion_status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(affected_account_id) do
        [{"affectedAccountId", affected_account_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List a filterable set of Recommendations within an Organization.

  This API only supports prioritized
  recommendations.
  """
  @spec list_organization_recommendations(
          map(),
          String.t() | atom() | nil,
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
          {:ok, list_organization_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_organization_recommendations_errors()}
  def list_organization_recommendations(
        %Client{} = client,
        after_last_updated_at \\ nil,
        aws_service \\ nil,
        before_last_updated_at \\ nil,
        check_identifier \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        pillar \\ nil,
        source \\ nil,
        status \\ nil,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/v1/organization-recommendations"
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
      if !is_nil(source) do
        [{"source", source} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(pillar) do
        [{"pillar", pillar} | query_params]
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
      if !is_nil(check_identifier) do
        [{"checkIdentifier", check_identifier} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(before_last_updated_at) do
        [{"beforeLastUpdatedAt", before_last_updated_at} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(aws_service) do
        [{"awsService", aws_service} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(after_last_updated_at) do
        [{"afterLastUpdatedAt", after_last_updated_at} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List Resources of a Recommendation
  """
  @spec list_recommendation_resources(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_recommendation_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_recommendation_resources_errors()}
  def list_recommendation_resources(
        %Client{} = client,
        recommendation_identifier,
        exclusion_status \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        region_code \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/v1/recommendations/#{AWS.Util.encode_uri(recommendation_identifier)}/resources"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(region_code) do
        [{"regionCode", region_code} | query_params]
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
      if !is_nil(exclusion_status) do
        [{"exclusionStatus", exclusion_status} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List a filterable set of Recommendations
  """
  @spec list_recommendations(
          map(),
          String.t() | atom() | nil,
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
          {:ok, list_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_recommendations_errors()}
  def list_recommendations(
        %Client{} = client,
        after_last_updated_at \\ nil,
        aws_service \\ nil,
        before_last_updated_at \\ nil,
        check_identifier \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        pillar \\ nil,
        source \\ nil,
        status \\ nil,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/v1/recommendations"
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
      if !is_nil(source) do
        [{"source", source} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(pillar) do
        [{"pillar", pillar} | query_params]
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
      if !is_nil(check_identifier) do
        [{"checkIdentifier", check_identifier} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(before_last_updated_at) do
        [{"beforeLastUpdatedAt", before_last_updated_at} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(aws_service) do
        [{"awsService", aws_service} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(after_last_updated_at) do
        [{"afterLastUpdatedAt", after_last_updated_at} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Update the lifecycle of a Recommendation within an Organization.

  This API only supports prioritized
  recommendations.
  """
  @spec update_organization_recommendation_lifecycle(
          map(),
          String.t() | atom(),
          update_organization_recommendation_lifecycle_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_organization_recommendation_lifecycle_errors()}
  def update_organization_recommendation_lifecycle(
        %Client{} = client,
        organization_recommendation_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/organization-recommendations/#{AWS.Util.encode_uri(organization_recommendation_identifier)}/lifecycle"

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
  Update the lifecyle of a Recommendation.

  This API only supports prioritized recommendations.
  """
  @spec update_recommendation_lifecycle(
          map(),
          String.t() | atom(),
          update_recommendation_lifecycle_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_recommendation_lifecycle_errors()}
  def update_recommendation_lifecycle(
        %Client{} = client,
        recommendation_identifier,
        input,
        options \\ []
      ) do
    url_path = "/v1/recommendations/#{AWS.Util.encode_uri(recommendation_identifier)}/lifecycle"
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
