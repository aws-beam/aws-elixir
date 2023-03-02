# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Pricing do
  @moduledoc """
  Amazon Web Services Price List API is a centralized and convenient way to
  programmatically query Amazon Web Services for services, products, and pricing
  information.

  The Amazon Web Services Price List uses standardized product attributes such as
  `Location`, `Storage Class`, and `Operating System`, and provides prices at the
  SKU level. You can use the Amazon Web Services Price List to build cost control
  and scenario planning tools, reconcile billing data, forecast future spend for
  budgeting purposes, and provide cost benefit analysis that compare your internal
  workloads with Amazon Web Services.

  Use `GetServices` without a service code to retrieve the service codes for all
  AWS services, then `GetServices` with a service code to retrieve the attribute
  names for that service. After you have the service code and attribute names, you
  can use `GetAttributeValues` to see what values are available for an attribute.
  With the service code and an attribute name and value, you can use `GetProducts`
  to find specific products that you're interested in, such as an `AmazonEC2`
  instance, with a `Provisioned IOPS` `volumeType`.

  Service Endpoint

  Amazon Web Services Price List service API provides the following two endpoints:

    * https://api.pricing.us-east-1.amazonaws.com

    * https://api.pricing.ap-south-1.amazonaws.com
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: "AWS Pricing",
      api_version: "2017-10-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.pricing",
      global?: false,
      protocol: "json",
      service_id: "Pricing",
      signature_version: "v4",
      signing_name: "pricing",
      target_prefix: "AWSPriceListService"
    }
  end

  @doc """
  Returns the metadata for one service or a list of the metadata for all services.

  Use this without a service code to get the service codes for all services. Use
  it with a service code, such as `AmazonEC2`, to get information specific to that
  service, such as the attribute names available for that service. For example,
  some of the attribute names available for EC2 are `volumeType`, `maxIopsVolume`,
  `operation`, `locationType`, and `instanceCapacity10xlarge`.
  """
  def describe_services(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeServices", input, options)
  end

  @doc """
  Returns a list of attribute values.

  Attributes are similar to the details in a Price List API offer file. For a list
  of available attributes, see [Offer File Definitions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/reading-an-offer.html#pps-defs)
  in the [Billing and Cost Management User Guide](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-what-is.html).
  """
  def get_attribute_values(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAttributeValues", input, options)
  end

  @doc """
  * **This feature is in preview release and is subject to change.

  Your use of Amazon Web Services Price List API is subject to the Beta Service
  Participation terms of the [Amazon Web Services Service Terms](https://aws.amazon.com/service-terms/) (Section 1.10).** *

  This returns the URL that you can retrieve your Price List file from. This URL
  is based on the `PriceListArn` and `FileFormat` that you retrieve from the [
  `ListPriceLists`
  ](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_ListPriceLists.html)
  response.
  """
  def get_price_list_file_url(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPriceListFileUrl", input, options)
  end

  @doc """
  Returns a list of all products that match the filter criteria.
  """
  def get_products(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetProducts", input, options)
  end

  @doc """
  * **This feature is in preview release and is subject to change.

  Your use of Amazon Web Services Price List API is subject to the Beta Service
  Participation terms of the [Amazon Web Services Service Terms](https://aws.amazon.com/service-terms/) (Section 1.10).** *

  This returns a list of Price List references that the requester if authorized to
  view, given a `ServiceCode`, `CurrencyCode`, and an `EffectiveDate`. Use without
  a `RegionCode` filter to list Price List references from all available Amazon
  Web Services Regions. Use with a `RegionCode` filter to get the Price List
  reference that's specific to a specific Amazon Web Services Region. You can use
  the `PriceListArn` from the response to get your preferred Price List files
  through the [ `GetPriceListFileUrl`
  ](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_pricing_GetPriceListFileUrl.html)
  API.
  """
  def list_price_lists(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPriceLists", input, options)
  end
end
