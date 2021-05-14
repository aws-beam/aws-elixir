# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Savingsplans do
  @moduledoc """
  Savings Plans are a pricing model that offer significant savings on AWS usage
  (for example, on Amazon EC2 instances).

  You commit to a consistent amount of usage, in USD per hour, for a term of 1 or
  3 years, and receive a lower price for that usage. For more information, see the
  [AWS Savings Plans User Guide](https://docs.aws.amazon.com/savingsplans/latest/userguide/).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2019-06-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: "us-east-1",
      endpoint_prefix: "savingsplans",
      global?: true,
      protocol: "rest-json",
      service_id: "savingsplans",
      signature_version: "v4",
      signing_name: "savingsplans",
      target_prefix: nil
    }
  end

  @doc """
  Creates a Savings Plan.
  """
  def create_savings_plan(%Client{} = client, input, options \\ []) do
    url_path = "/CreateSavingsPlan"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes the queued purchase for the specified Savings Plan.
  """
  def delete_queued_savings_plan(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteQueuedSavingsPlan"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Describes the specified Savings Plans rates.
  """
  def describe_savings_plan_rates(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeSavingsPlanRates"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Describes the specified Savings Plans.
  """
  def describe_savings_plans(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeSavingsPlans"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Describes the specified Savings Plans offering rates.
  """
  def describe_savings_plans_offering_rates(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeSavingsPlansOfferingRates"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Describes the specified Savings Plans offerings.
  """
  def describe_savings_plans_offerings(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeSavingsPlansOfferings"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Lists the tags for the specified resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    url_path = "/ListTagsForResource"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Adds the specified tags to the specified resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/TagResource"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Removes the specified tags from the specified resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/UntagResource"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
