# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MarketplaceMetering do
  @moduledoc """
  AWS Marketplace Metering Service

  This reference provides descriptions of the low-level AWS Marketplace Metering
  Service
  API.

  AWS Marketplace sellers can use this API to submit usage data for custom usage
  dimensions.

  For information on the permissions you need to use this API, see [AWS Marketplace metering and entitlement API
  permissions](https://docs.aws.amazon.com/marketplace/latest/userguide/iam-user-policy-for-aws-marketplace-actions.html)
  in the
  *AWS Marketplace Seller Guide.*

  ## Submitting Metering Records

    *

  *MeterUsage* - Submits the metering record for an AWS
  Marketplace product. `MeterUsage` is called from an EC2 instance or a
  container running on EKS or ECS.

    *

  *BatchMeterUsage* - Submits the metering record for a set of
  customers. `BatchMeterUsage` is called from a software-as-a-service
  (SaaS) application.

  ## Accepting New Customers

    *

  *ResolveCustomer* - Called by a SaaS application during the
  registration process. When a buyer visits your website during the registration
  process, the buyer submits a Registration Token through the browser. The
  Registration Token is resolved through this API to obtain a
  `CustomerIdentifier`

  along with the `CustomerAWSAccountId` and
  `ProductCode`.

  ## Entitlement and Metering for Paid Container Products

    *
  Paid container software products sold through AWS Marketplace must integrate
  with the AWS Marketplace Metering Service and call the
  `RegisterUsage` operation for software entitlement and metering.
  Free and BYOL products for Amazon ECS or Amazon EKS aren't required to call
  `RegisterUsage`, but you can do so if you want to receive usage
  data in your seller reports. For more information on using the
  `RegisterUsage` operation, see [Container-Based Products](https://docs.aws.amazon.com/marketplace/latest/userguide/container-based-products.html).

  `BatchMeterUsage` API calls are captured by AWS CloudTrail. You can use
  Cloudtrail to verify that the SaaS metering records that you sent are accurate
  by
  searching for records with the `eventName` of `BatchMeterUsage`.
  You can also use CloudTrail to audit records over time. For more information,
  see the
  *
  [AWS CloudTrail User Guide](http://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html).*
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      batch_meter_usage_request() :: %{
        required("ProductCode") => String.t(),
        required("UsageRecords") => list(usage_record()())
      }
      
  """
  @type batch_meter_usage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_meter_usage_result() :: %{
        "Results" => list(usage_record_result()()),
        "UnprocessedRecords" => list(usage_record()())
      }
      
  """
  @type batch_meter_usage_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      customer_not_entitled_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type customer_not_entitled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disabled_api_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type disabled_api_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicate_request_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type duplicate_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expired_token_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type expired_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_service_error_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_service_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_customer_identifier_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_customer_identifier_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_endpoint_region_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_endpoint_region_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_product_code_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_product_code_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_public_key_version_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_public_key_version_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_region_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_region_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_tag_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_tag_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_token_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_usage_allocations_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_usage_allocations_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_usage_dimension_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_usage_dimension_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      meter_usage_request() :: %{
        optional("DryRun") => boolean(),
        optional("UsageAllocations") => list(usage_allocation()()),
        optional("UsageQuantity") => integer(),
        required("ProductCode") => String.t(),
        required("Timestamp") => non_neg_integer(),
        required("UsageDimension") => String.t()
      }
      
  """
  @type meter_usage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      meter_usage_result() :: %{
        "MeteringRecordId" => String.t()
      }
      
  """
  @type meter_usage_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      platform_not_supported_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type platform_not_supported_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_usage_request() :: %{
        optional("Nonce") => String.t(),
        required("ProductCode") => String.t(),
        required("PublicKeyVersion") => integer()
      }
      
  """
  @type register_usage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_usage_result() :: %{
        "PublicKeyRotationTimestamp" => non_neg_integer(),
        "Signature" => String.t()
      }
      
  """
  @type register_usage_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resolve_customer_request() :: %{
        required("RegistrationToken") => String.t()
      }
      
  """
  @type resolve_customer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resolve_customer_result() :: %{
        "CustomerAWSAccountId" => String.t(),
        "CustomerIdentifier" => String.t(),
        "ProductCode" => String.t()
      }
      
  """
  @type resolve_customer_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      timestamp_out_of_bounds_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type timestamp_out_of_bounds_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      usage_allocation() :: %{
        "AllocatedUsageQuantity" => integer(),
        "Tags" => list(tag()())
      }
      
  """
  @type usage_allocation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      usage_record() :: %{
        "CustomerIdentifier" => String.t(),
        "Dimension" => String.t(),
        "Quantity" => integer(),
        "Timestamp" => non_neg_integer(),
        "UsageAllocations" => list(usage_allocation()())
      }
      
  """
  @type usage_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      usage_record_result() :: %{
        "MeteringRecordId" => String.t(),
        "Status" => list(any()),
        "UsageRecord" => usage_record()
      }
      
  """
  @type usage_record_result() :: %{String.t() => any()}

  @type batch_meter_usage_errors() ::
          timestamp_out_of_bounds_exception()
          | throttling_exception()
          | invalid_usage_dimension_exception()
          | invalid_usage_allocations_exception()
          | invalid_tag_exception()
          | invalid_product_code_exception()
          | invalid_customer_identifier_exception()
          | internal_service_error_exception()
          | disabled_api_exception()

  @type meter_usage_errors() ::
          timestamp_out_of_bounds_exception()
          | throttling_exception()
          | invalid_usage_dimension_exception()
          | invalid_usage_allocations_exception()
          | invalid_tag_exception()
          | invalid_product_code_exception()
          | invalid_endpoint_region_exception()
          | internal_service_error_exception()
          | duplicate_request_exception()
          | customer_not_entitled_exception()

  @type register_usage_errors() ::
          throttling_exception()
          | platform_not_supported_exception()
          | invalid_region_exception()
          | invalid_public_key_version_exception()
          | invalid_product_code_exception()
          | internal_service_error_exception()
          | disabled_api_exception()
          | customer_not_entitled_exception()

  @type resolve_customer_errors() ::
          throttling_exception()
          | invalid_token_exception()
          | internal_service_error_exception()
          | expired_token_exception()
          | disabled_api_exception()

  def metadata do
    %{
      api_version: "2016-01-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "metering.marketplace",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Marketplace Metering",
      signature_version: "v4",
      signing_name: "aws-marketplace",
      target_prefix: "AWSMPMeteringService"
    }
  end

  @doc """

  `BatchMeterUsage` is called from a SaaS application listed on AWS
  Marketplace to post metering records for a set of customers.

  For identical requests, the API is idempotent; requests can be retried with the
  same
  records or a subset of the input records.

  Every request to `BatchMeterUsage` is for one product. If you need to meter
  usage for multiple products, you must make multiple calls to
  `BatchMeterUsage`.

  Usage records are expected to be submitted as quickly as possible after the
  event that
  is being recorded, and are not accepted more than 6 hours after the event.

  `BatchMeterUsage` can process up to 25 `UsageRecords` at a
  time.

  A `UsageRecord` can optionally include multiple usage allocations, to
  provide customers with usage data split into buckets by tags that you define (or
  allow
  the customer to define).

  `BatchMeterUsage` returns a list of `UsageRecordResult` objects,
  showing the result for each `UsageRecord`, as well as a list of
  `UnprocessedRecords`, indicating errors in the service side that you
  should retry.

  `BatchMeterUsage` requests must be less than 1MB in size.

  For an example of using `BatchMeterUsage`, see [ BatchMeterUsage code example](https://docs.aws.amazon.com/marketplace/latest/userguide/saas-code-examples.html#saas-batchmeterusage-example)
  in the *AWS Marketplace Seller
  Guide*.
  """
  @spec batch_meter_usage(map(), batch_meter_usage_request(), list()) ::
          {:ok, batch_meter_usage_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_meter_usage_errors()}
  def batch_meter_usage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchMeterUsage", input, options)
  end

  @doc """
  API to emit metering records.

  For identical requests, the API is idempotent. It simply
  returns the metering record ID.

  `MeterUsage` is authenticated on the buyer's AWS account using credentials
  from the EC2 instance, ECS task, or EKS pod.

  `MeterUsage` can optionally include multiple usage allocations, to provide
  customers with usage data split into buckets by tags that you define (or allow
  the
  customer to define).

  Usage records are expected to be submitted as quickly as possible after the
  event that
  is being recorded, and are not accepted more than 6 hours after the event.
  """
  @spec meter_usage(map(), meter_usage_request(), list()) ::
          {:ok, meter_usage_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, meter_usage_errors()}
  def meter_usage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "MeterUsage", input, options)
  end

  @doc """
  Paid container software products sold through AWS Marketplace must integrate
  with the
  AWS Marketplace Metering Service and call the `RegisterUsage` operation for
  software entitlement and metering.

  Free and BYOL products for Amazon ECS or Amazon EKS
  aren't required to call `RegisterUsage`, but you may choose to do so if you
  would like to receive usage data in your seller reports. The sections below
  explain the
  behavior of `RegisterUsage`. `RegisterUsage` performs two primary
  functions: metering and entitlement.

    *

  *Entitlement*: `RegisterUsage` allows you to
  verify that the customer running your paid software is subscribed to your
  product on AWS Marketplace, enabling you to guard against unauthorized use. Your
  container image that integrates with `RegisterUsage` is only required
  to guard against unauthorized use at container startup, as such a
  `CustomerNotSubscribedException` or
  `PlatformNotSupportedException` will only be thrown on the
  initial call to `RegisterUsage`. Subsequent calls from the same
  Amazon ECS task instance (e.g. task-id) or Amazon EKS pod will not throw a
  `CustomerNotSubscribedException`, even if the customer
  unsubscribes while the Amazon ECS task or Amazon EKS pod is still
  running.

    *

  *Metering*: `RegisterUsage` meters software use
  per ECS task, per hour, or per pod for Amazon EKS with usage prorated to the
  second. A minimum of 1 minute of usage applies to tasks that are short lived.
  For example, if a customer has a 10 node Amazon ECS or Amazon EKS cluster and a
  service configured as a Daemon Set, then Amazon ECS or Amazon EKS will launch a
  task on all 10 cluster nodes and the customer will be charged: (10 *
  hourly_rate). Metering for software use is automatically handled by the AWS
  Marketplace Metering Control Plane -- your software is not required to perform
  any metering specific actions, other than call `RegisterUsage` once
  for metering of software use to commence. The AWS Marketplace Metering Control
  Plane will also continue to bill customers for running ECS tasks and Amazon EKS
  pods, regardless of the customers subscription state, removing the need for your
  software to perform entitlement checks at runtime.
  """
  @spec register_usage(map(), register_usage_request(), list()) ::
          {:ok, register_usage_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_usage_errors()}
  def register_usage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterUsage", input, options)
  end

  @doc """

  `ResolveCustomer` is called by a SaaS application during the registration
  process.

  When a buyer visits your website during the registration process, the buyer
  submits a registration token through their browser. The registration token is
  resolved
  through this API to obtain a `CustomerIdentifier`
  along with the
  `CustomerAWSAccountId` and
  `ProductCode`.

  The API needs to called from the seller account id used to publish the SaaS
  application to successfully resolve the token.

  For an example of using `ResolveCustomer`, see [ ResolveCustomer code example](https://docs.aws.amazon.com/marketplace/latest/userguide/saas-code-examples.html#saas-resolvecustomer-example)
  in the *AWS Marketplace Seller
  Guide*.
  """
  @spec resolve_customer(map(), resolve_customer_request(), list()) ::
          {:ok, resolve_customer_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resolve_customer_errors()}
  def resolve_customer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResolveCustomer", input, options)
  end
end
