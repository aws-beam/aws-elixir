# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.TrustedAdvisor do
  @moduledoc """
  TrustedAdvisor Public API
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2022-09-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "trustedadvisor",
      global?: false,
      protocol: "rest-json",
      service_id: "TrustedAdvisor",
      signature_version: "v4",
      signing_name: "trustedadvisor",
      target_prefix: nil
    }
  end

  @doc """
  Get a specific recommendation within an AWS Organizations organization.

  This API supports only prioritized recommendations.
  """
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

  This API only supports prioritized recommendations.
  """
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

  This API only supports prioritized recommendations.
  """
  def list_organization_recommendation_resources(
        %Client{} = client,
        organization_recommendation_identifier,
        affected_account_id \\ nil,
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

  This API only supports prioritized recommendations.
  """
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
  def list_recommendation_resources(
        %Client{} = client,
        recommendation_identifier,
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List a filterable set of Recommendations
  """
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
  Update the lifecyle of a Recommendation within an Organization.

  This API only supports prioritized recommendations.
  """
  def update_organization_recommendation_lifecycle(
        %Client{} = client,
        organization_recommendation_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/organization-recommendations/#{AWS.Util.encode_uri(organization_recommendation_identifier)}/lifecycle"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Update the lifecyle of a Recommendation.

  This API only supports prioritized recommendations.
  """
  def update_recommendation_lifecycle(
        %Client{} = client,
        recommendation_identifier,
        input,
        options \\ []
      ) do
    url_path = "/v1/recommendations/#{AWS.Util.encode_uri(recommendation_identifier)}/lifecycle"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
