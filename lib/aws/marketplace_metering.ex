# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.Marketplace.Metering do
  @moduledoc """
  AWS Marketplace Metering Service

  This reference provides descriptions of the low-level AWS Marketplace
  Metering Service API.

  AWS Marketplace sellers can use this API to submit usage data for custom
  usage dimensions.

  **Submitting Metering Records**

  <ul> <li> *MeterUsage*- Submits the metering record for a Marketplace
  product. MeterUsage is called from an EC2 instance.

  </li> <li> *BatchMeterUsage*- Submits the metering record for a set of
  customers. BatchMeterUsage is called from a software-as-a-service (SaaS)
  application.

  </li> </ul> **Accepting New Customers**

  <ul> <li> *ResolveCustomer*- Called by a SaaS application during the
  registration process. When a buyer visits your website during the
  registration process, the buyer submits a Registration Token through the
  browser. The Registration Token is resolved through this API to obtain a
  CustomerIdentifier and Product Code.

  </li> </ul>
  """

  @doc """
  BatchMeterUsage is called from a SaaS application listed on the AWS
  Marketplace to post metering records for a set of customers.

  For identical requests, the API is idempotent; requests can be retried with
  the same records or a subset of the input records.

  Every request to BatchMeterUsage is for one product. If you need to meter
  usage for multiple products, you must make multiple calls to
  BatchMeterUsage.

  BatchMeterUsage can process up to 25 UsageRecords at a time.
  """
  def batch_meter_usage(client, input, options \\ []) do
    request(client, "BatchMeterUsage", input, options)
  end

  @doc """
  API to emit metering records. For identical requests, the API is
  idempotent. It simply returns the metering record ID.

  MeterUsage is authenticated on the buyer's AWS account, generally when
  running from an EC2 instance on the AWS Marketplace.
  """
  def meter_usage(client, input, options \\ []) do
    request(client, "MeterUsage", input, options)
  end

  @doc """
  ResolveCustomer is called by a SaaS application during the registration
  process. When a buyer visits your website during the registration process,
  the buyer submits a registration token through their browser. The
  registration token is resolved through this API to obtain a
  CustomerIdentifier and product code.
  """
  def resolve_customer(client, input, options \\ []) do
    request(client, "ResolveCustomer", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "metering.marketplace"}
    host = get_host("metering.marketplace", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "AWSMPMeteringService.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body)
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

end
