# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.FreeTier do
  @moduledoc """
  You can use the Amazon Web Services Free Tier API to query programmatically your
  Free Tier usage data.

  Free Tier tracks your monthly usage data for all free tier offers that are
  associated with your
  Amazon Web Services account. You can use the Free Tier API to filter and show
  only the data that you want.

  Service endpoint

  The Free Tier API provides the following endpoint:

    *
  https://freetier.us-east-1.api.aws

  For more information, see [Using the Amazon Web Services Free Tier](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-free-tier.html)
  in the *Billing User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2023-09-07",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "freetier",
      global?: false,
      protocol: "json",
      service_id: "FreeTier",
      signature_version: "v4",
      signing_name: "freetier",
      target_prefix: "AWSFreeTierService"
    }
  end

  @doc """
  Returns a list of all Free Tier usage objects that match your filters.
  """
  def get_free_tier_usage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetFreeTierUsage", input, options)
  end
end
