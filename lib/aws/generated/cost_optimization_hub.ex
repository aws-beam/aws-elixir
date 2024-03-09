# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CostOptimizationHub do
  @moduledoc """
  You can use the Cost Optimization Hub API to programmatically identify, filter,
  aggregate,
  and quantify savings for your cost optimization recommendations across multiple
  Amazon Web Services Regions and Amazon Web Services accounts in your
  organization.

  The Cost Optimization Hub API provides the following endpoint:

    *
  https://cost-optimization-hub.us-east-1.amazonaws.com
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2022-07-26",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "cost-optimization-hub",
      global?: false,
      protocol: "json",
      service_id: "Cost Optimization Hub",
      signature_version: "v4",
      signing_name: "cost-optimization-hub",
      target_prefix: "CostOptimizationHubService"
    }
  end

  @doc """
  Returns a set of preferences for an account in order to add account-specific
  preferences
  into the service.

  These preferences impact how the savings associated with recommendations are
  presented—estimated savings after discounts or estimated savings before
  discounts, for
  example.
  """
  def get_preferences(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPreferences", input, options)
  end

  @doc """
  Returns both the current and recommended resource configuration and the
  estimated cost
  impact for a recommendation.

  The `recommendationId` is only valid for up to a maximum of 24 hours as
  recommendations are refreshed daily. To retrieve the `recommendationId`, use the
  `ListRecommendations` API.
  """
  def get_recommendation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRecommendation", input, options)
  end

  @doc """
  Retrieves the enrollment status for an account.

  It can also return the list of accounts
  that are enrolled under the organization.
  """
  def list_enrollment_statuses(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEnrollmentStatuses", input, options)
  end

  @doc """
  Returns a concise representation of savings estimates for resources.

  Also returns de-duped
  savings across different types of recommendations.

  The following filters are not supported for this API: `recommendationIds`,
  `resourceArns`, and `resourceIds`.
  """
  def list_recommendation_summaries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRecommendationSummaries", input, options)
  end

  @doc """
  Returns a list of recommendations.
  """
  def list_recommendations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRecommendations", input, options)
  end

  @doc """
  Updates the enrollment (opt in and opt out) status of an account to the Cost
  Optimization
  Hub service.

  If the account is a management account of an organization, this action can also
  be used to
  enroll member accounts of the organization.

  You must have the appropriate permissions to opt in to Cost Optimization Hub and
  to view
  its recommendations. When you opt in, Cost Optimization Hub automatically
  creates a
  service-linked role in your account to access its data.
  """
  def update_enrollment_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateEnrollmentStatus", input, options)
  end

  @doc """
  Updates a set of preferences for an account in order to add account-specific
  preferences
  into the service.

  These preferences impact how the savings associated with recommendations are
  presented.
  """
  def update_preferences(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePreferences", input, options)
  end
end
