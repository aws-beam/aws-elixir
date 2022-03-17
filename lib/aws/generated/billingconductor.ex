# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Billingconductor do
  @moduledoc """
  Amazon Web Services Billing Conductor is a fully managed service that you can
  use to customize a [pro forma](https://docs.aws.amazon.com/enterprisebilling/6b7c01c5-b592-467e-9769-90052eaf359c/userguide/understanding-eb.html#eb-other-definitions)
  version of your billing data each month, to accurately show or chargeback your
  end customers.

  Amazon Web Services Billing Conductor doesn't change the way you're billed by
  Amazon Web Services each month by design. Instead, it provides you with a
  mechanism to configure, generate, and display rates to certain customers over a
  given billing period. You can also analyze the difference between the rates you
  apply to your accounting groupings relative to your actual rates from Amazon Web
  Services. As a result of your Amazon Web Services Billing Conductor
  configuration, the payer account can also see the custom rate applied on the
  billing details page of the [Amazon Web Services Billing console](https://console.aws.amazon.com/billing), or configure a cost and usage
  report per billing group.

  This documentation shows how you can configure Amazon Web Services Billing
  Conductor using its API. For more information about using the [Amazon Web Services Billing Conductor](https://console.aws.amazon.com/enterprisebilling/)
  user interface, see the [ Amazon Web Services Enterprise Billing Console User Guide](https://docs.aws.amazon.com/enterprisebilling/6b7c01c5-b592-467e-9769-90052eaf359c/userguide/what-is-enterprisebilling.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2021-07-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: "us-east-1",
      endpoint_prefix: "billingconductor",
      global?: true,
      protocol: "rest-json",
      service_id: "billingconductor",
      signature_version: "v4",
      signing_name: "billingconductor",
      target_prefix: nil
    }
  end

  @doc """
  Connects an array of account IDs in a consolidated billing family to a
  predefined billing group.

  The account IDs must be a part of the consolidated billing family during the
  current month, and not already associated with another billing group. The
  maximum number of accounts that can be associated in one call is 30.
  """
  def associate_accounts(%Client{} = client, input, options \\ []) do
    url_path = "/associate-accounts"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Connects an array of `PricingRuleArns` to a defined `PricingPlan`.

  The maximum number `PricingRuleArn` that can be associated in one call is 30.
  """
  def associate_pricing_rules(%Client{} = client, input, options \\ []) do
    url_path = "/associate-pricing-rules"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associates a batch of resources to a percentage custom line item.
  """
  def batch_associate_resources_to_custom_line_item(%Client{} = client, input, options \\ []) do
    url_path = "/batch-associate-resources-to-custom-line-item"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disassociates a batch of resources from a percentage custom line item.
  """
  def batch_disassociate_resources_from_custom_line_item(%Client{} = client, input, options \\ []) do
    url_path = "/batch-disassociate-resources-from-custom-line-item"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a billing group that resembles a consolidated billing family that Amazon
  Web Services charges, based off of the predefined pricing plan computation.
  """
  def create_billing_group(%Client{} = client, input, options \\ []) do
    url_path = "/create-billing-group"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a custom line item that can be used to create a one-time fixed charge
  that can be applied to a single billing group for the current or previous
  billing period.

  The one-time fixed charge is either a fee or discount.
  """
  def create_custom_line_item(%Client{} = client, input, options \\ []) do
    url_path = "/create-custom-line-item"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a pricing plan that is used for computing Amazon Web Services charges
  for billing groups.
  """
  def create_pricing_plan(%Client{} = client, input, options \\ []) do
    url_path = "/create-pricing-plan"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a pricing rule can be associated to a pricing plan, or a set of pricing
  plans.
  """
  def create_pricing_rule(%Client{} = client, input, options \\ []) do
    url_path = "/create-pricing-rule"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a billing group.
  """
  def delete_billing_group(%Client{} = client, input, options \\ []) do
    url_path = "/delete-billing-group"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the custom line item identified by the given ARN in the current, or
  previous billing period.
  """
  def delete_custom_line_item(%Client{} = client, input, options \\ []) do
    url_path = "/delete-custom-line-item"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a pricing plan.

  The pricing plan must not be associated with any billing groups to delete
  successfully.
  """
  def delete_pricing_plan(%Client{} = client, input, options \\ []) do
    url_path = "/delete-pricing-plan"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the pricing rule identified by the input Amazon Resource Name (ARN).
  """
  def delete_pricing_rule(%Client{} = client, input, options \\ []) do
    url_path = "/delete-pricing-rule"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes the specified list of account IDs from the given billing group.
  """
  def disassociate_accounts(%Client{} = client, input, options \\ []) do
    url_path = "/disassociate-accounts"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disassociates a list of pricing rules from a pricing plan.
  """
  def disassociate_pricing_rules(%Client{} = client, input, options \\ []) do
    url_path = "/disassociate-pricing-rules"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  * **Amazon Web Services Billing Conductor is in beta release and is subject to
  change.

  Your use of Amazon Web Services Billing Conductor is subject to the Beta Service
  Participation terms of the [Amazon Web Services Service Terms](https://aws.amazon.com/service-terms/) (Section 1.10).** *

  This is a paginated call to list linked accounts that are linked to the payer
  account for the specified time period. If no information is provided, the
  current billing period is used. The response will optionally include the billing
  group associated with the linked account.
  """
  def list_account_associations(%Client{} = client, input, options \\ []) do
    url_path = "/list-account-associations"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  A paginated call to retrieve a summary report of actual Amazon Web Services
  charges and the calculated Amazon Web Services charges based on the associated
  pricing plan of a billing group.
  """
  def list_billing_group_cost_reports(%Client{} = client, input, options \\ []) do
    url_path = "/list-billing-group-cost-reports"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  A paginated call to retrieve a list of billing groups for the given billing
  period.

  If you don't provide a billing group, the current billing period is used.
  """
  def list_billing_groups(%Client{} = client, input, options \\ []) do
    url_path = "/list-billing-groups"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  A paginated call to get a list of all custom line items (FFLIs) for the given
  billing period.

  If you don't provide a billing period, the current billing period is used.
  """
  def list_custom_line_items(%Client{} = client, input, options \\ []) do
    url_path = "/list-custom-line-items"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  A paginated call to get pricing plans for the given billing period.

  If you don't provide a billing period, the current billing period is used.
  """
  def list_pricing_plans(%Client{} = client, input, options \\ []) do
    url_path = "/list-pricing-plans"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  A list of the pricing plans associated with a pricing rule.
  """
  def list_pricing_plans_associated_with_pricing_rule(%Client{} = client, input, options \\ []) do
    url_path = "/list-pricing-plans-associated-with-pricing-rule"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Describes a pricing rule that can be associated to a pricing plan, or set of
  pricing plans.
  """
  def list_pricing_rules(%Client{} = client, input, options \\ []) do
    url_path = "/list-pricing-rules"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists the pricing rules associated with a pricing plan.
  """
  def list_pricing_rules_associated_to_pricing_plan(%Client{} = client, input, options \\ []) do
    url_path = "/list-pricing-rules-associated-to-pricing-plan"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  List the resources associated to a custom line item.
  """
  def list_resources_associated_to_custom_line_item(%Client{} = client, input, options \\ []) do
    url_path = "/list-resources-associated-to-custom-line-item"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  A list the tags for a resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      204
    )
  end

  @doc """
  Associates the specified tags to a resource with the specified `resourceArn`.

  If existing tags on a resource are not specified in the request parameters, they
  are not changed.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes specified tags from a resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  This updates an existing billing group.
  """
  def update_billing_group(%Client{} = client, input, options \\ []) do
    url_path = "/update-billing-group"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update an existing custom line item in the current or previous billing period.
  """
  def update_custom_line_item(%Client{} = client, input, options \\ []) do
    url_path = "/update-custom-line-item"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  This updates an existing pricing plan.
  """
  def update_pricing_plan(%Client{} = client, input, options \\ []) do
    url_path = "/update-pricing-plan"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an existing pricing rule.
  """
  def update_pricing_rule(%Client{} = client, input, options \\ []) do
    url_path = "/update-pricing-rule"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
