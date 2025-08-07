# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MarketplaceMetering do
  @moduledoc """
  Amazon Web Services Marketplace Metering Service

  This reference provides descriptions of the low-level Marketplace Metering
  Service API.

  Amazon Web Services Marketplace sellers can use this API to submit usage data
  for custom usage
  dimensions.

  For information about the permissions that you need to use this API, see [Amazon Web Services Marketplace metering and entitlement API
  permissions](https://docs.aws.amazon.com/marketplace/latest/userguide/iam-user-policy-for-aws-marketplace-actions.html)
  in the *Amazon Web Services Marketplace
  Seller Guide.*

  ## Submitting metering records

  *MeterUsage*

    *
  Submits the metering record for an Amazon Web Services Marketplace product.

    *
  Called from: Amazon Elastic Compute Cloud (Amazon EC2) instance or a container
  running on either
  Amazon Elastic Kubernetes Service (Amazon EKS) or Amazon Elastic Container
  Service (Amazon ECS)

    *
  Supported product types: Amazon Machine Images (AMIs) and containers

    *
  Vendor-metered tagging: Supported allocation tagging

  *BatchMeterUsage*

    *
  Submits the metering record for a set of customers.
  `BatchMeterUsage` API calls are captured by CloudTrail. You can use
  CloudTrail to verify that the software as a subscription (SaaS) metering records
  that
  you sent are accurate by searching for records with the `eventName`
  of `BatchMeterUsage`. You can also use CloudTrail to audit records over
  time. For more information, see the [CloudTrail User Guide](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html).

    *
  Called from: SaaS applications

    *
  Supported product type: SaaS

    *
  Vendor-metered tagging: Supports allocation tagging

  ## Accepting new customers

  *ResolveCustomer*

    *
  Resolves the registration token that the buyer submits through the browser
  during the registration process. Obtains a `CustomerIdentifier` along
  with the `CustomerAWSAccountId` and `ProductCode`.

    *
  Called from: SaaS application during the registration process

    *
  Supported product type: SaaS

    *
  Vendor-metered tagging: Not applicable

  ## Entitlement and metering for paid container
  products

  *RegisteredUsage*

    *
  Provides software entitlement and metering. Paid container software products
  sold through Amazon Web Services Marketplace must integrate with the Marketplace
  Metering Service and call the
  `RegisterUsage` operation. Free and Bring Your Own License model
  (BYOL) products for Amazon ECS or Amazon EKS aren't required to call
  `RegisterUsage`. However, you can do so if you want to receive
  usage data in your seller reports. For more information about using the
  `RegisterUsage` operation, see [Container-based products](https://docs.aws.amazon.com/marketplace/latest/userguide/container-based-products.html).

    *
  Called from: Paid container software products

    *
  Supported product type: Containers

    *
  Vendor-metered tagging: Not applicable

  ## Entitlement custom metering for container
  products

    *
  MeterUsage API is available in GovCloud Regions but only supports AMI
  FCP products in GovCloud Regions. Flexible Consumption Pricing (FCP) Container
  products aren’t supported in GovCloud Regions: us-gov-west-1 and us-gov-east-1.
  For more information, see [Container-based products](https://docs.aws.amazon.com/marketplace/latest/userguide/container-based-products.html).

    *
  Custom metering for container products are called using the
  MeterUsage API. The API is used for FCP AMI and FCP Container product
  metering.

  ## Custom metering for Amazon EKS is available in 17
  Amazon Web Services Regions

    *
  The metering service supports Amazon ECS and EKS for Flexible Consumption
  Pricing
  (FCP) products using MeterUsage API. Amazon ECS is supported in all
  Amazon Web Services Regions that MeterUsage API is available except for
  GovCloud.

    *
  Amazon EKS is supported in the following: us-east-1, us-east-2, us-west-1,
  us-west-2, eu-west-1, eu-central-1, eu-west-2, eu-west-3, eu-north-1, ap-east-1,
  ap-southeast-1, ap-northeast-1, ap-southeast-2, ap-northeast-2, ap-south-1,
  ca-central-1, sa-east-1.

  For questions about adding Amazon Web Services Regions for metering, contact
  [Amazon Web Services Marketplace Seller
  Operations](mailto://aws.amazon.com/marketplace/management/contact-us/).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      batch_meter_usage_request() :: %{
        required("ProductCode") => String.t() | atom(),
        required("UsageRecords") => list(usage_record())
      }
      
  """
  @type batch_meter_usage_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_meter_usage_result() :: %{
        "Results" => list(usage_record_result()),
        "UnprocessedRecords" => list(usage_record())
      }
      
  """
  @type batch_meter_usage_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      customer_not_entitled_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type customer_not_entitled_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      disabled_api_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type disabled_api_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      duplicate_request_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type duplicate_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      expired_token_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type expired_token_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_service_error_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type internal_service_error_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_customer_identifier_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_customer_identifier_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_endpoint_region_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_endpoint_region_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_product_code_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_product_code_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_public_key_version_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_public_key_version_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_region_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_region_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_tag_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_tag_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_token_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_token_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_usage_allocations_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_usage_allocations_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_usage_dimension_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_usage_dimension_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      meter_usage_request() :: %{
        optional("DryRun") => boolean(),
        optional("UsageAllocations") => list(usage_allocation()),
        optional("UsageQuantity") => integer(),
        required("ProductCode") => String.t() | atom(),
        required("Timestamp") => non_neg_integer(),
        required("UsageDimension") => String.t() | atom()
      }
      
  """
  @type meter_usage_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      meter_usage_result() :: %{
        "MeteringRecordId" => String.t() | atom()
      }
      
  """
  @type meter_usage_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      platform_not_supported_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type platform_not_supported_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      register_usage_request() :: %{
        optional("Nonce") => String.t() | atom(),
        required("ProductCode") => String.t() | atom(),
        required("PublicKeyVersion") => integer()
      }
      
  """
  @type register_usage_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      register_usage_result() :: %{
        "PublicKeyRotationTimestamp" => non_neg_integer(),
        "Signature" => String.t() | atom()
      }
      
  """
  @type register_usage_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resolve_customer_request() :: %{
        required("RegistrationToken") => String.t() | atom()
      }
      
  """
  @type resolve_customer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resolve_customer_result() :: %{
        "CustomerAWSAccountId" => String.t() | atom(),
        "CustomerIdentifier" => String.t() | atom(),
        "ProductCode" => String.t() | atom()
      }
      
  """
  @type resolve_customer_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      timestamp_out_of_bounds_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type timestamp_out_of_bounds_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      usage_allocation() :: %{
        "AllocatedUsageQuantity" => integer(),
        "Tags" => list(tag())
      }
      
  """
  @type usage_allocation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      usage_record() :: %{
        "CustomerAWSAccountId" => String.t() | atom(),
        "CustomerIdentifier" => String.t() | atom(),
        "Dimension" => String.t() | atom(),
        "Quantity" => integer(),
        "Timestamp" => non_neg_integer(),
        "UsageAllocations" => list(usage_allocation())
      }
      
  """
  @type usage_record() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      usage_record_result() :: %{
        "MeteringRecordId" => String.t() | atom(),
        "Status" => list(any()),
        "UsageRecord" => usage_record()
      }
      
  """
  @type usage_record_result() :: %{(String.t() | atom()) => any()}

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


  The `CustomerIdentifier` parameter is scheduled for deprecation.

  Use `CustomerAWSAccountID` instead.

  These parameters are mutually exclusive. You can't specify both
  `CustomerIdentifier` and `CustomerAWSAccountID` in the same request.

  To post metering records for customers, SaaS applications call
  `BatchMeterUsage`, which is used for metering SaaS flexible
  consumption pricing (FCP). Identical requests are idempotent and can be
  retried with the same records or a subset of records. Each
  `BatchMeterUsage` request is for only one product. If you
  want to meter usage for multiple products, you must make multiple
  `BatchMeterUsage` calls.

  Usage records should be submitted in quick succession following a
  recorded event. Usage records aren't accepted 6 hours or more after an
  event.

  `BatchMeterUsage` can process up to 25
  `UsageRecords` at a time, and each request must be less than
  1 MB in size. Optionally, you can have multiple usage allocations for
  usage data that's split into buckets according to predefined tags.

  `BatchMeterUsage` returns a list of
  `UsageRecordResult` objects, which have each
  `UsageRecord`. It also returns a list of
  `UnprocessedRecords`, which indicate errors on the service
  side that should be retried.

  For Amazon Web Services Regions that support `BatchMeterUsage`, see
  [BatchMeterUsage Region support](https://docs.aws.amazon.com/marketplace/latest/APIReference/metering-regions.html#batchmeterusage-region-support).

  For an example of `BatchMeterUsage`, see [ BatchMeterUsage code example](https://docs.aws.amazon.com/marketplace/latest/userguide/saas-code-examples.html#saas-batchmeterusage-example)
  in the *Amazon Web Services Marketplace Seller
  Guide*.
  """
  @spec batch_meter_usage(map(), batch_meter_usage_request(), list()) ::
          {:ok, batch_meter_usage_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_meter_usage_errors()}
  def batch_meter_usage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchMeterUsage", input, options)
  end

  @doc """
  API to emit metering records.

  For identical requests, the API is
  idempotent and returns the metering record ID. This is used for metering
  flexible consumption pricing (FCP) Amazon Machine Images (AMI) and
  container products.

  `MeterUsage` is authenticated on the buyer's Amazon Web Services account using
  credentials from the Amazon EC2 instance, Amazon ECS task, or Amazon EKS pod.

  `MeterUsage` can optionally include multiple usage allocations, to provide
  customers with usage data split into buckets by tags that you define (or allow
  the
  customer to define).

  Usage records are expected to be submitted as quickly as possible after the
  event that
  is being recorded, and are not accepted more than 6 hours after the event.

  For Amazon Web Services Regions that support `MeterUsage`, see [MeterUsage Region support for Amazon
  EC2](https://docs.aws.amazon.com/marketplace/latest/APIReference/metering-regions.html#meterusage-region-support-ec2)
  and [MeterUsage Region support for Amazon ECS and Amazon EKS](https://docs.aws.amazon.com/marketplace/latest/APIReference/metering-regions.html#meterusage-region-support-ecs-eks).
  """
  @spec meter_usage(map(), meter_usage_request(), list()) ::
          {:ok, meter_usage_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, meter_usage_errors()}
  def meter_usage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "MeterUsage", input, options)
  end

  @doc """
  Paid container software products sold through Amazon Web Services Marketplace
  must integrate with the Amazon Web Services Marketplace
  Metering Service and call the `RegisterUsage` operation for software
  entitlement and metering.

  Free and BYOL products for Amazon ECS or Amazon EKS aren't required to call
  `RegisterUsage`, but you may choose to
  do so if you would like to receive usage data in your seller reports. The
  sections below
  explain the behavior of `RegisterUsage`. `RegisterUsage` performs
  two primary functions: metering and entitlement.

    *

  *Entitlement*: `RegisterUsage` allows you to
  verify that the customer running your paid software is subscribed to your
  product on Amazon Web Services Marketplace, enabling you to guard against
  unauthorized use. Your container
  image that integrates with `RegisterUsage` is only required to guard
  against unauthorized use at container startup, as such a
  `CustomerNotSubscribedException` or
  `PlatformNotSupportedException` will only be thrown on the
  initial call to `RegisterUsage`. Subsequent calls from the same
  Amazon ECS task instance (e.g. task-id) or Amazon EKS pod
  will not throw a `CustomerNotSubscribedException`, even if the
  customer unsubscribes while the Amazon ECS task or Amazon EKS
  pod is still running.

    *

  *Metering*: `RegisterUsage` meters software use
  per ECS task, per hour, or per pod for Amazon EKS with usage prorated to
  the second. A minimum of 1 minute of usage applies to tasks that are short
  lived. For example, if a customer has a 10 node Amazon ECS or Amazon EKS cluster
  and a service configured as a Daemon Set, then Amazon ECS or Amazon EKS will
  launch a task on all 10 cluster nodes
  and the customer will be charged for 10 tasks. Software metering
  is handled by the Amazon Web Services Marketplace metering control plane—your
  software is
  not required to perform metering-specific actions other than to call
  `RegisterUsage` to commence metering.
  The Amazon Web Services Marketplace metering control plane will also bill
  customers for
  running ECS tasks and Amazon EKS pods, regardless of the customer's
  subscription state, which removes the need for your software to run entitlement
  checks at runtime. For containers, `RegisterUsage` should be called
  immediately at launch. If you don’t register the container within the first 6
  hours
  of the launch, Amazon Web Services Marketplace Metering Service doesn’t provide
  any metering
  guarantees for previous months. Metering will continue, however, for the
  current month forward until the container ends. `RegisterUsage` is
  for metering paid hourly container products.

  For Amazon Web Services Regions that support `RegisterUsage`, see [RegisterUsage Region
  support](https://docs.aws.amazon.com/marketplace/latest/APIReference/metering-regions.html#registerusage-region-support).
  """
  @spec register_usage(map(), register_usage_request(), list()) ::
          {:ok, register_usage_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  through this API to obtain a `CustomerIdentifier` along with the
  `CustomerAWSAccountId` and `ProductCode`.

  To successfully resolve the token, the API must be called from the account that
  was used to publish the SaaS
  application. For an example of using `ResolveCustomer`, see [ ResolveCustomer code
  example](https://docs.aws.amazon.com/marketplace/latest/userguide/saas-code-examples.html#saas-resolvecustomer-example)
  in the *Amazon Web Services Marketplace Seller
  Guide*.

  Permission is required for this operation. Your IAM role or user performing this
  operation requires a policy to allow the `aws-marketplace:ResolveCustomer`
  action. For more information, see [Actions, resources, and condition keys for Amazon Web Services Marketplace Metering
  Service](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsmarketplacemeteringservice.html)
  in
  the *Service Authorization Reference*.

  For Amazon Web Services Regions that support `ResolveCustomer`, see
  [ResolveCustomer Region support](https://docs.aws.amazon.com/marketplace/latest/APIReference/metering-regions.html#resolvecustomer-region-support).
  """
  @spec resolve_customer(map(), resolve_customer_request(), list()) ::
          {:ok, resolve_customer_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, resolve_customer_errors()}
  def resolve_customer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResolveCustomer", input, options)
  end
end
