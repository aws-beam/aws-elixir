# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Entitlement.Marketplace do
  @moduledoc """
  AWS Marketplace Entitlement Service

  This reference provides descriptions of the AWS Marketplace Entitlement
  Service API.

  AWS Marketplace Entitlement Service is used to determine the entitlement of
  a customer to a given product. An entitlement represents capacity in a
  product owned by the customer. For example, a customer might own some
  number of users or seats in an SaaS application or some amount of data
  capacity in a multi-tenant database.

  **Getting Entitlement Records**

  <ul> <li> *GetEntitlements*- Gets the entitlements for a Marketplace
  product.

  </li> </ul>
  """

  @doc """
  GetEntitlements retrieves entitlement values for a given product. The
  results can be filtered based on customer identifier or product dimensions.
  """
  def get_entitlements(client, input, options \\ []) do
    request(client, "GetEntitlements", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "aws-marketplace"}
    host = build_host("entitlement.marketplace", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSMPEntitlementService.#{action}"}
    ]

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case AWS.Client.request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
        {:ok, body, response}

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

      error = {:error, _reason} -> error
    end
  end

  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

  defp encode!(client, payload) do
    AWS.Client.encode!(client, payload, :json)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
