# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MarketplaceEntitlement do
  @moduledoc """
  AWS Marketplace Entitlement Service

  This reference provides descriptions of the AWS Marketplace Entitlement Service
  API.

  AWS Marketplace Entitlement Service is used to determine the entitlement of a
  customer to
  a given product. An entitlement represents capacity in a product owned by the
  customer. For
  example, a customer might own some number of users or seats in an SaaS
  application or some
  amount of data capacity in a multi-tenant database.

  ## Getting Entitlement Records

    *

  *GetEntitlements*- Gets the entitlements for a Marketplace
  product.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2017-01-11",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "entitlement.marketplace",
      global?: false,
      protocol: "json",
      service_id: "Marketplace Entitlement Service",
      signature_version: "v4",
      signing_name: "entitlement.marketplace",
      target_prefix: "AWSMPEntitlementService"
    }
  end

  @doc """
  GetEntitlements retrieves entitlement values for a given product.

  The results can be
  filtered based on customer identifier or product dimensions.
  """
  def get_entitlements(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEntitlements", input, options)
  end
end
