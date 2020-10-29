# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Savingsplans do
  @moduledoc """
  Savings Plans are a pricing model that offer significant savings on AWS
  usage (for example, on Amazon EC2 instances). You commit to a consistent
  amount of usage, in USD per hour, for a term of 1 or 3 years, and receive a
  lower price for that usage. For more information, see the [AWS Savings
  Plans User
  Guide](https://docs.aws.amazon.com/savingsplans/latest/userguide/).
  """

  @doc """
  Creates a Savings Plan.
  """
  def create_savings_plan(client, input, options \\ []) do
    path_ = "/CreateSavingsPlan"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the queued purchase for the specified Savings Plan.
  """
  def delete_queued_savings_plan(client, input, options \\ []) do
    path_ = "/DeleteQueuedSavingsPlan"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Describes the specified Savings Plans rates.
  """
  def describe_savings_plan_rates(client, input, options \\ []) do
    path_ = "/DescribeSavingsPlanRates"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Describes the specified Savings Plans.
  """
  def describe_savings_plans(client, input, options \\ []) do
    path_ = "/DescribeSavingsPlans"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Describes the specified Savings Plans offering rates.
  """
  def describe_savings_plans_offering_rates(client, input, options \\ []) do
    path_ = "/DescribeSavingsPlansOfferingRates"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Describes the specified Savings Plans offerings.
  """
  def describe_savings_plans_offerings(client, input, options \\ []) do
    path_ = "/DescribeSavingsPlansOfferings"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Lists the tags for the specified resource.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    path_ = "/ListTagsForResource"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Adds the specified tags to the specified resource.
  """
  def tag_resource(client, input, options \\ []) do
    path_ = "/TagResource"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes the specified tags from the specified resource.
  """
  def untag_resource(client, input, options \\ []) do
    path_ = "/UntagResource"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "savingsplans",
                        region:  "us-east-1"}
    host = build_host("savingsplans", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when is_nil(success_status_code) and status_code in [200, 202, 204]
      when status_code == success_status_code ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

      error = {:error, _reason} -> error
    end
  end


  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{endpoint: endpoint}) do
    "#{endpoint_prefix}.#{endpoint}"
  end

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, [], _client) do
    url
  end
  defp add_query(url, query, client) do
    querystring = encode!(client, query, :query)
    "#{url}?#{querystring}"
  end

  defp encode!(client, payload, format \\ :json) do
    AWS.Client.encode!(client, payload, format)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
