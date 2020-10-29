# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MarketplaceMetering do
  @moduledoc """
  AWS Marketplace Metering Service

  This reference provides descriptions of the low-level AWS Marketplace
  Metering Service API.

  AWS Marketplace sellers can use this API to submit usage data for custom
  usage dimensions.

  For information on the permissions you need to use this API, see [AWS
  Marketing metering and entitlement API
  permissions](https://docs.aws.amazon.com/marketplace/latest/userguide/iam-user-policy-for-aws-marketplace-actions.html)
  in the *AWS Marketplace Seller Guide.*

  **Submitting Metering Records**

  <ul> <li> *MeterUsage*- Submits the metering record for a Marketplace
  product. MeterUsage is called from an EC2 instance or a container running
  on EKS or ECS.

  </li> <li> *BatchMeterUsage*- Submits the metering record for a set of
  customers. BatchMeterUsage is called from a software-as-a-service (SaaS)
  application.

  </li> </ul> **Accepting New Customers**

  <ul> <li> *ResolveCustomer*- Called by a SaaS application during the
  registration process. When a buyer visits your website during the
  registration process, the buyer submits a Registration Token through the
  browser. The Registration Token is resolved through this API to obtain a
  CustomerIdentifier and Product Code.

  </li> </ul> **Entitlement and Metering for Paid Container Products**

  <ul> <li> Paid container software products sold through AWS Marketplace
  must integrate with the AWS Marketplace Metering Service and call the
  RegisterUsage operation for software entitlement and metering. Free and
  BYOL products for Amazon ECS or Amazon EKS aren't required to call
  RegisterUsage, but you can do so if you want to receive usage data in your
  seller reports. For more information on using the RegisterUsage operation,
  see [Container-Based
  Products](https://docs.aws.amazon.com/marketplace/latest/userguide/container-based-products.html).

  </li> </ul> BatchMeterUsage API calls are captured by AWS CloudTrail. You
  can use Cloudtrail to verify that the SaaS metering records that you sent
  are accurate by searching for records with the eventName of
  BatchMeterUsage. You can also use CloudTrail to audit records over time.
  For more information, see the * [AWS CloudTrail User
  Guide](http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html)
  *.
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

  MeterUsage is authenticated on the buyer's AWS account using credentials
  from the EC2 instance, ECS task, or EKS pod.
  """
  def meter_usage(client, input, options \\ []) do
    request(client, "MeterUsage", input, options)
  end

  @doc """
  Paid container software products sold through AWS Marketplace must
  integrate with the AWS Marketplace Metering Service and call the
  RegisterUsage operation for software entitlement and metering. Free and
  BYOL products for Amazon ECS or Amazon EKS aren't required to call
  RegisterUsage, but you may choose to do so if you would like to receive
  usage data in your seller reports. The sections below explain the behavior
  of RegisterUsage. RegisterUsage performs two primary functions: metering
  and entitlement.

  <ul> <li> *Entitlement*: RegisterUsage allows you to verify that the
  customer running your paid software is subscribed to your product on AWS
  Marketplace, enabling you to guard against unauthorized use. Your container
  image that integrates with RegisterUsage is only required to guard against
  unauthorized use at container startup, as such a
  CustomerNotSubscribedException/PlatformNotSupportedException will only be
  thrown on the initial call to RegisterUsage. Subsequent calls from the same
  Amazon ECS task instance (e.g. task-id) or Amazon EKS pod will not throw a
  CustomerNotSubscribedException, even if the customer unsubscribes while the
  Amazon ECS task or Amazon EKS pod is still running.

  </li> <li> *Metering*: RegisterUsage meters software use per ECS task, per
  hour, or per pod for Amazon EKS with usage prorated to the second. A
  minimum of 1 minute of usage applies to tasks that are short lived. For
  example, if a customer has a 10 node Amazon ECS or Amazon EKS cluster and a
  service configured as a Daemon Set, then Amazon ECS or Amazon EKS will
  launch a task on all 10 cluster nodes and the customer will be charged: (10
  * hourly_rate). Metering for software use is automatically handled by the
  AWS Marketplace Metering Control Plane -- your software is not required to
  perform any metering specific actions, other than call RegisterUsage once
  for metering of software use to commence. The AWS Marketplace Metering
  Control Plane will also continue to bill customers for running ECS tasks
  and Amazon EKS pods, regardless of the customers subscription state,
  removing the need for your software to perform entitlement checks at
  runtime.

  </li> </ul>
  """
  def register_usage(client, input, options \\ []) do
    request(client, "RegisterUsage", input, options)
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

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "aws-marketplace"}
    host = build_host("metering.marketplace", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSMPMeteringService.#{action}"}
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
