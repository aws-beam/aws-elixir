# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.API.Pricing do
  @moduledoc """
  AWS Price List Service API (AWS Price List Service) is a centralized and
  convenient way to programmatically query Amazon Web Services for services,
  products, and pricing information.

  The AWS Price List Service uses standardized product attributes such as
  `Location`, `Storage Class`, and `Operating System`, and provides prices at the
  SKU level. You can use the AWS Price List Service to build cost control and
  scenario planning tools, reconcile billing data, forecast future spend for
  budgeting purposes, and provide cost benefit analysis that compare your internal
  workloads with AWS.

  Use `GetServices` without a service code to retrieve the service codes for all
  AWS services, then `GetServices` with a service code to retreive the attribute
  names for that service. After you have the service code and attribute names, you
  can use `GetAttributeValues` to see what values are available for an attribute.
  With the service code and an attribute name and value, you can use `GetProducts`
  to find specific products that you're interested in, such as an `AmazonEC2`
  instance, with a `Provisioned IOPS` `volumeType`.

  Service Endpoint

  AWS Price List Service API provides the following two endpoints:

    * https://api.pricing.us-east-1.amazonaws.com

    * https://api.pricing.ap-south-1.amazonaws.com
  """

  @doc """
  Returns the metadata for one service or a list of the metadata for all services.

  Use this without a service code to get the service codes for all services. Use
  it with a service code, such as `AmazonEC2`, to get information specific to that
  service, such as the attribute names available for that service. For example,
  some of the attribute names available for EC2 are `volumeType`, `maxIopsVolume`,
  `operation`, `locationType`, and `instanceCapacity10xlarge`.
  """
  def describe_services(client, input, options \\ []) do
    request(client, "DescribeServices", input, options)
  end

  @doc """
  Returns a list of attribute values.

  Attibutes are similar to the details in a Price List API offer file. For a list
  of available attributes, see [Offer File Definitions](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/reading-an-offer.html#pps-defs)
  in the [AWS Billing and Cost Management User Guide](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-what-is.html).
  """
  def get_attribute_values(client, input, options \\ []) do
    request(client, "GetAttributeValues", input, options)
  end

  @doc """
  Returns a list of all products that match the filter criteria.
  """
  def get_products(client, input, options \\ []) do
    request(client, "GetProducts", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "pricing"}
    host = build_host("api.pricing", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSPriceListService.#{action}"}
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
