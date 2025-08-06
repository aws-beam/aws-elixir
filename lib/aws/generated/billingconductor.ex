# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Billingconductor do
  @moduledoc """
  Amazon Web Services Billing Conductor is a fully managed service that you can
  use to
  customize a
  [proforma](https://docs.aws.amazon.com/billingconductor/latest/userguide/understanding-eb.html#eb-other-definitions) version of your billing data each month, to accurately show or chargeback
  your end customers.

  Amazon Web Services Billing Conductor doesn't change the way you're billed
  by Amazon Web Services each month by design. Instead, it provides you with a
  mechanism to
  configure, generate, and display rates to certain customers over a given billing
  period. You
  can also analyze the difference between the rates you apply to your accounting
  groupings
  relative to your actual rates from Amazon Web Services. As a result of your
  Amazon Web Services
  Billing Conductor configuration, the payer account can also see the custom rate
  applied on the
  billing details page of the [Amazon Web Services Billing
  console](https://console.aws.amazon.com/billing), or configure a cost and usage
  report per billing group.

  This documentation shows how you can configure Amazon Web Services Billing
  Conductor using its
  API. For more information about using the [Amazon Web Services Billing Conductor](https://console.aws.amazon.com/billingconductor/) user
  interface, see the [ Amazon Web Services Billing Conductor User Guide](https://docs.aws.amazon.com/billingconductor/latest/userguide/what-is-billingconductor.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      delete_pricing_rule_output() :: %{
        optional("Arn") => String.t() | atom()
      }

  """
  @type delete_pricing_rule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_custom_line_item_percentage_charge_details() :: %{
        "PercentageValue" => float()
      }

  """
  @type list_custom_line_item_percentage_charge_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_pricing_rules_output() :: %{
        optional("BillingPeriod") => String.t() | atom(),
        optional("NextToken") => String.t() | atom(),
        optional("PricingRules") => list(pricing_rule_list_element())
      }

  """
  @type list_pricing_rules_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_resources_associated_to_custom_line_item_input() :: %{
        optional("BillingPeriod") => String.t() | atom(),
        optional("Filters") => list_resources_associated_to_custom_line_item_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("Arn") => String.t() | atom()
      }

  """
  @type list_resources_associated_to_custom_line_item_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        "Tags" => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_pricing_rules_input() :: %{
        optional("BillingPeriod") => String.t() | atom(),
        optional("Filters") => list_pricing_rules_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_pricing_rules_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_custom_line_item_charge_details() :: %{
        "Flat" => update_custom_line_item_flat_charge_details(),
        "LineItemFilters" => list(line_item_filter()),
        "Percentage" => update_custom_line_item_percentage_charge_details()
      }

  """
  @type update_custom_line_item_charge_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_pricing_rules_input() :: %{
        required("Arn") => String.t() | atom(),
        required("PricingRuleArns") => list(String.t() | atom())
      }

  """
  @type disassociate_pricing_rules_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_billing_group_input() :: %{
        optional("AccountGrouping") => update_billing_group_account_grouping(),
        optional("ComputationPreference") => computation_preference(),
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("Status") => String.t() | atom(),
        required("Arn") => String.t() | atom()
      }

  """
  @type update_billing_group_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_pricing_rules_output() :: %{
        optional("Arn") => String.t() | atom()
      }

  """
  @type associate_pricing_rules_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_free_tier_config() :: %{
        "Activated" => boolean()
      }

  """
  @type create_free_tier_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_pricing_plans_output() :: %{
        optional("BillingPeriod") => String.t() | atom(),
        optional("NextToken") => String.t() | atom(),
        optional("PricingPlans") => list(pricing_plan_list_element())
      }

  """
  @type list_pricing_plans_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_pricing_rules_associated_to_pricing_plan_output() :: %{
        optional("BillingPeriod") => String.t() | atom(),
        optional("NextToken") => String.t() | atom(),
        optional("PricingPlanArn") => String.t() | atom(),
        optional("PricingRuleArns") => list(String.t() | atom())
      }

  """
  @type list_pricing_rules_associated_to_pricing_plan_output() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      create_billing_group_input() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("PrimaryAccountId") => String.t() | atom(),
        optional("Tags") => map(),
        required("AccountGrouping") => account_grouping(),
        required("ComputationPreference") => computation_preference(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_billing_group_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      delete_pricing_rule_input() :: %{
        required("Arn") => String.t() | atom()
      }

  """
  @type delete_pricing_rule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_billing_group_cost_report_input() :: %{
        optional("BillingPeriodRange") => billing_period_range(),
        optional("GroupBy") => list(String.t() | atom()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("Arn") => String.t() | atom()
      }

  """
  @type get_billing_group_cost_report_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_custom_line_item_charge_details() :: %{
        "Flat" => list_custom_line_item_flat_charge_details(),
        "LineItemFilters" => list(line_item_filter()),
        "Percentage" => list_custom_line_item_percentage_charge_details(),
        "Type" => String.t() | atom()
      }

  """
  @type list_custom_line_item_charge_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_pricing_plans_associated_with_pricing_rule_input() :: %{
        optional("BillingPeriod") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("PricingRuleArn") => String.t() | atom()
      }

  """
  @type list_pricing_plans_associated_with_pricing_rule_input() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      create_pricing_rule_input() :: %{
        optional("BillingEntity") => String.t() | atom(),
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("ModifierPercentage") => float(),
        optional("Operation") => String.t() | atom(),
        optional("Service") => String.t() | atom(),
        optional("Tags") => map(),
        optional("Tiering") => create_tiering_input(),
        optional("UsageType") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("Scope") => String.t() | atom(),
        required("Type") => String.t() | atom()
      }

  """
  @type create_pricing_rule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_custom_line_item_percentage_charge_details() :: %{
        "PercentageValue" => float()
      }

  """
  @type update_custom_line_item_percentage_charge_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_pricing_plan_output() :: %{
        optional("Arn") => String.t() | atom()
      }

  """
  @type create_pricing_plan_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_billing_group_cost_reports_input() :: %{
        optional("BillingPeriod") => String.t() | atom(),
        optional("Filters") => list_billing_group_cost_reports_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_billing_group_cost_reports_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_pricing_rule_output() :: %{
        optional("Arn") => String.t() | atom()
      }

  """
  @type create_pricing_rule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      free_tier_config() :: %{
        "Activated" => boolean()
      }

  """
  @type free_tier_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_resource_error() :: %{
        "Message" => String.t() | atom(),
        "Reason" => String.t() | atom()
      }

  """
  @type associate_resource_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_billing_group_output() :: %{
        optional("Arn") => String.t() | atom()
      }

  """
  @type create_billing_group_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      custom_line_item_charge_details() :: %{
        "Flat" => custom_line_item_flat_charge_details(),
        "LineItemFilters" => list(line_item_filter()),
        "Percentage" => custom_line_item_percentage_charge_details(),
        "Type" => String.t() | atom()
      }

  """
  @type custom_line_item_charge_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_associate_resources_to_custom_line_item_input() :: %{
        optional("BillingPeriodRange") => custom_line_item_billing_period_range(),
        required("ResourceArns") => list(String.t() | atom()),
        required("TargetArn") => String.t() | atom()
      }

  """
  @type batch_associate_resources_to_custom_line_item_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        "TagKeys" => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_custom_line_items_input() :: %{
        optional("BillingPeriod") => String.t() | atom(),
        optional("Filters") => list_custom_line_items_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_custom_line_items_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_custom_line_item_versions_output() :: %{
        optional("CustomLineItemVersions") => list(custom_line_item_version_list_element()),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_custom_line_item_versions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_pricing_rules_input() :: %{
        required("Arn") => String.t() | atom(),
        required("PricingRuleArns") => list(String.t() | atom())
      }

  """
  @type associate_pricing_rules_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      custom_line_item_billing_period_range() :: %{
        "ExclusiveEndBillingPeriod" => String.t() | atom(),
        "InclusiveStartBillingPeriod" => String.t() | atom()
      }

  """
  @type custom_line_item_billing_period_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_custom_line_items_output() :: %{
        optional("CustomLineItems") => list(custom_line_item_list_element()),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_custom_line_items_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_pricing_plan_output() :: %{
        optional("Arn") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("LastModifiedTime") => float(),
        optional("Name") => String.t() | atom(),
        optional("Size") => float()
      }

  """
  @type update_pricing_plan_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_billing_group_output() :: %{
        optional("AccountGrouping") => update_billing_group_account_grouping(),
        optional("Arn") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("LastModifiedTime") => float(),
        optional("Name") => String.t() | atom(),
        optional("PricingPlanArn") => String.t() | atom(),
        optional("PrimaryAccountId") => String.t() | atom(),
        optional("Size") => float(),
        optional("Status") => String.t() | atom(),
        optional("StatusReason") => String.t() | atom()
      }

  """
  @type update_billing_group_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_disassociate_resources_from_custom_line_item_output() :: %{
        optional("FailedDisassociatedResources") => list(disassociate_resource_response_element()),
        optional("SuccessfullyDisassociatedResources") => list(disassociate_resource_response_element())
      }

  """
  @type batch_disassociate_resources_from_custom_line_item_output() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      computation_preference() :: %{
        "PricingPlanArn" => String.t() | atom()
      }

  """
  @type computation_preference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      pricing_plan_list_element() :: %{
        "Arn" => String.t() | atom(),
        "CreationTime" => float(),
        "Description" => String.t() | atom(),
        "LastModifiedTime" => float(),
        "Name" => String.t() | atom(),
        "Size" => float()
      }

  """
  @type pricing_plan_list_element() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_resources_associated_to_custom_line_item_response_element() :: %{
        "Arn" => String.t() | atom(),
        "EndBillingPeriod" => String.t() | atom(),
        "Relationship" => String.t() | atom()
      }

  """
  @type list_resources_associated_to_custom_line_item_response_element() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      disassociate_pricing_rules_output() :: %{
        optional("Arn") => String.t() | atom()
      }

  """
  @type disassociate_pricing_rules_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_billing_group_output() :: %{
        optional("Arn") => String.t() | atom()
      }

  """
  @type delete_billing_group_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t() | atom(),
        "Reason" => String.t() | atom(),
        "ResourceId" => String.t() | atom(),
        "ResourceType" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t() | atom(),
        "ResourceId" => String.t() | atom(),
        "ResourceType" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      billing_period_range() :: %{
        "ExclusiveEndBillingPeriod" => String.t() | atom(),
        "InclusiveStartBillingPeriod" => String.t() | atom()
      }

  """
  @type billing_period_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_pricing_plans_associated_with_pricing_rule_output() :: %{
        optional("BillingPeriod") => String.t() | atom(),
        optional("NextToken") => String.t() | atom(),
        optional("PricingPlanArns") => list(String.t() | atom()),
        optional("PricingRuleArn") => String.t() | atom()
      }

  """
  @type list_pricing_plans_associated_with_pricing_rule_output() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      update_tiering_input() :: %{
        "FreeTier" => update_free_tier_config()
      }

  """
  @type update_tiering_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_billing_groups_output() :: %{
        optional("BillingGroups") => list(billing_group_list_element()),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_billing_groups_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_custom_line_item_versions_input() :: %{
        optional("Filters") => list_custom_line_item_versions_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("Arn") => String.t() | atom()
      }

  """
  @type list_custom_line_item_versions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_pricing_plan_input() :: %{
        required("Arn") => String.t() | atom()
      }

  """
  @type delete_pricing_plan_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_account_associations_input() :: %{
        optional("BillingPeriod") => String.t() | atom(),
        optional("Filters") => list_account_associations_filter(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_account_associations_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_custom_line_item_versions_filter() :: %{
        "BillingPeriodRange" => list_custom_line_item_versions_billing_period_range_filter()
      }

  """
  @type list_custom_line_item_versions_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      billing_group_cost_report_result_element() :: %{
        "AWSCost" => String.t() | atom(),
        "Arn" => String.t() | atom(),
        "Attributes" => list(attribute()),
        "Currency" => String.t() | atom(),
        "Margin" => String.t() | atom(),
        "MarginPercentage" => String.t() | atom(),
        "ProformaCost" => String.t() | atom()
      }

  """
  @type billing_group_cost_report_result_element() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_pricing_rules_associated_to_pricing_plan_input() :: %{
        optional("BillingPeriod") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("PricingPlanArn") => String.t() | atom()
      }

  """
  @type list_pricing_rules_associated_to_pricing_plan_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_grouping() :: %{
        "AutoAssociate" => [boolean()],
        "LinkedAccountIds" => list(String.t() | atom())
      }

  """
  @type account_grouping() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_custom_line_item_flat_charge_details() :: %{
        "ChargeValue" => float()
      }

  """
  @type update_custom_line_item_flat_charge_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_pricing_plan_input() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("PricingRuleArns") => list(String.t() | atom()),
        optional("Tags") => map(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_pricing_plan_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_pricing_plans_filter() :: %{
        "Arns" => list(String.t() | atom())
      }

  """
  @type list_pricing_plans_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("Tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_custom_line_item_flat_charge_details() :: %{
        "ChargeValue" => float()
      }

  """
  @type list_custom_line_item_flat_charge_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "Message" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_resources_associated_to_custom_line_item_output() :: %{
        optional("Arn") => String.t() | atom(),
        optional("AssociatedResources") => list(list_resources_associated_to_custom_line_item_response_element()),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_resources_associated_to_custom_line_item_output() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      list_account_associations_output() :: %{
        optional("LinkedAccounts") => list(account_associations_list_element()),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_account_associations_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_pricing_plans_input() :: %{
        optional("BillingPeriod") => String.t() | atom(),
        optional("Filters") => list_pricing_plans_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_pricing_plans_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_pricing_plan_input() :: %{
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        required("Arn") => String.t() | atom()
      }

  """
  @type update_pricing_plan_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_account_associations_filter() :: %{
        "AccountId" => String.t() | atom(),
        "AccountIds" => list(String.t() | atom()),
        "Association" => String.t() | atom()
      }

  """
  @type list_account_associations_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_billing_group_cost_reports_filter() :: %{
        "BillingGroupArns" => list(String.t() | atom())
      }

  """
  @type list_billing_group_cost_reports_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_pricing_rules_filter() :: %{
        "Arns" => list(String.t() | atom())
      }

  """
  @type list_pricing_rules_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_resource_response_element() :: %{
        "Arn" => String.t() | atom(),
        "Error" => associate_resource_error()
      }

  """
  @type associate_resource_response_element() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      custom_line_item_flat_charge_details() :: %{
        "ChargeValue" => float()
      }

  """
  @type custom_line_item_flat_charge_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_pricing_rule_output() :: %{
        optional("Arn") => String.t() | atom(),
        optional("AssociatedPricingPlanCount") => float(),
        optional("BillingEntity") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("LastModifiedTime") => float(),
        optional("ModifierPercentage") => float(),
        optional("Name") => String.t() | atom(),
        optional("Operation") => String.t() | atom(),
        optional("Scope") => String.t() | atom(),
        optional("Service") => String.t() | atom(),
        optional("Tiering") => update_tiering_input(),
        optional("Type") => String.t() | atom(),
        optional("UsageType") => String.t() | atom()
      }

  """
  @type update_pricing_rule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_custom_line_item_input() :: %{
        optional("BillingPeriodRange") => custom_line_item_billing_period_range(),
        required("Arn") => String.t() | atom()
      }

  """
  @type delete_custom_line_item_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      line_item_filter() :: %{
        "Attribute" => String.t() | atom(),
        "MatchOption" => String.t() | atom(),
        "Values" => list(String.t() | atom())
      }

  """
  @type line_item_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t() | atom(),
        "RetryAfterSeconds" => integer()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      custom_line_item_percentage_charge_details() :: %{
        "AssociatedValues" => list(String.t() | atom()),
        "PercentageValue" => float()
      }

  """
  @type custom_line_item_percentage_charge_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_billing_groups_filter() :: %{
        "Arns" => list(String.t() | atom()),
        "AutoAssociate" => [boolean()],
        "PricingPlan" => String.t() | atom(),
        "Statuses" => list(String.t() | atom())
      }

  """
  @type list_billing_groups_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_accounts_input() :: %{
        required("AccountIds") => list(String.t() | atom()),
        required("Arn") => String.t() | atom()
      }

  """
  @type disassociate_accounts_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_billing_group_account_grouping() :: %{
        "AutoAssociate" => [boolean()]
      }

  """
  @type list_billing_group_account_grouping() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_billing_group_cost_report_output() :: %{
        "BillingGroupCostReportResults" => list(billing_group_cost_report_result_element()),
        "NextToken" => String.t() | atom()
      }

  """
  @type get_billing_group_cost_report_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_custom_line_items_filter() :: %{
        "AccountIds" => list(String.t() | atom()),
        "Arns" => list(String.t() | atom()),
        "BillingGroups" => list(String.t() | atom()),
        "Names" => list(String.t() | atom())
      }

  """
  @type list_custom_line_items_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_custom_line_item_output() :: %{
        optional("Arn") => String.t() | atom()
      }

  """
  @type create_custom_line_item_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_billing_group_account_grouping() :: %{
        "AutoAssociate" => [boolean()]
      }

  """
  @type update_billing_group_account_grouping() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_resource_response_element() :: %{
        "Arn" => String.t() | atom(),
        "Error" => associate_resource_error()
      }

  """
  @type disassociate_resource_response_element() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Fields" => list(validation_exception_field()),
        "Message" => String.t() | atom(),
        "Reason" => String.t() | atom()
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      batch_disassociate_resources_from_custom_line_item_input() :: %{
        optional("BillingPeriodRange") => custom_line_item_billing_period_range(),
        required("ResourceArns") => list(String.t() | atom()),
        required("TargetArn") => String.t() | atom()
      }

  """
  @type batch_disassociate_resources_from_custom_line_item_input() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      list_custom_line_item_versions_billing_period_range_filter() :: %{
        "EndBillingPeriod" => String.t() | atom(),
        "StartBillingPeriod" => String.t() | atom()
      }

  """
  @type list_custom_line_item_versions_billing_period_range_filter() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      service_limit_exceeded_exception() :: %{
        "LimitCode" => String.t() | atom(),
        "Message" => String.t() | atom(),
        "ResourceId" => String.t() | atom(),
        "ResourceType" => String.t() | atom(),
        "ServiceCode" => String.t() | atom()
      }

  """
  @type service_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      custom_line_item_list_element() :: %{
        "AccountId" => String.t() | atom(),
        "Arn" => String.t() | atom(),
        "AssociationSize" => float(),
        "BillingGroupArn" => String.t() | atom(),
        "ChargeDetails" => list_custom_line_item_charge_details(),
        "CreationTime" => float(),
        "CurrencyCode" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "LastModifiedTime" => float(),
        "Name" => String.t() | atom(),
        "ProductCode" => String.t() | atom()
      }

  """
  @type custom_line_item_list_element() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      custom_line_item_version_list_element() :: %{
        "AccountId" => String.t() | atom(),
        "Arn" => String.t() | atom(),
        "AssociationSize" => float(),
        "BillingGroupArn" => String.t() | atom(),
        "ChargeDetails" => list_custom_line_item_charge_details(),
        "CreationTime" => float(),
        "CurrencyCode" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "EndBillingPeriod" => String.t() | atom(),
        "LastModifiedTime" => float(),
        "Name" => String.t() | atom(),
        "ProductCode" => String.t() | atom(),
        "StartBillingPeriod" => String.t() | atom(),
        "StartTime" => float()
      }

  """
  @type custom_line_item_version_list_element() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t() | atom(),
        "RetryAfterSeconds" => integer()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_custom_line_item_input() :: %{
        optional("BillingPeriodRange") => custom_line_item_billing_period_range(),
        optional("ChargeDetails") => update_custom_line_item_charge_details(),
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        required("Arn") => String.t() | atom()
      }

  """
  @type update_custom_line_item_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      attribute() :: %{
        "Key" => [String.t() | atom()],
        "Value" => [String.t() | atom()]
      }

  """
  @type attribute() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      billing_group_list_element() :: %{
        "AccountGrouping" => list_billing_group_account_grouping(),
        "Arn" => String.t() | atom(),
        "ComputationPreference" => computation_preference(),
        "CreationTime" => float(),
        "Description" => String.t() | atom(),
        "LastModifiedTime" => float(),
        "Name" => String.t() | atom(),
        "PrimaryAccountId" => String.t() | atom(),
        "Size" => float(),
        "Status" => String.t() | atom(),
        "StatusReason" => String.t() | atom()
      }

  """
  @type billing_group_list_element() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_pricing_rule_input() :: %{
        optional("Description") => String.t() | atom(),
        optional("ModifierPercentage") => float(),
        optional("Name") => String.t() | atom(),
        optional("Tiering") => update_tiering_input(),
        optional("Type") => String.t() | atom(),
        required("Arn") => String.t() | atom()
      }

  """
  @type update_pricing_rule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_pricing_plan_output() :: %{
        optional("Arn") => String.t() | atom()
      }

  """
  @type delete_pricing_plan_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tiering() :: %{
        "FreeTier" => free_tier_config()
      }

  """
  @type tiering() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_tiering_input() :: %{
        "FreeTier" => create_free_tier_config()
      }

  """
  @type create_tiering_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_accounts_input() :: %{
        required("AccountIds") => list(String.t() | atom()),
        required("Arn") => String.t() | atom()
      }

  """
  @type associate_accounts_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_resources_associated_to_custom_line_item_filter() :: %{
        "Relationship" => String.t() | atom()
      }

  """
  @type list_resources_associated_to_custom_line_item_filter() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      associate_accounts_output() :: %{
        optional("Arn") => String.t() | atom()
      }

  """
  @type associate_accounts_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      pricing_rule_list_element() :: %{
        "Arn" => String.t() | atom(),
        "AssociatedPricingPlanCount" => float(),
        "BillingEntity" => String.t() | atom(),
        "CreationTime" => float(),
        "Description" => String.t() | atom(),
        "LastModifiedTime" => float(),
        "ModifierPercentage" => float(),
        "Name" => String.t() | atom(),
        "Operation" => String.t() | atom(),
        "Scope" => String.t() | atom(),
        "Service" => String.t() | atom(),
        "Tiering" => tiering(),
        "Type" => String.t() | atom(),
        "UsageType" => String.t() | atom()
      }

  """
  @type pricing_rule_list_element() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_free_tier_config() :: %{
        "Activated" => boolean()
      }

  """
  @type update_free_tier_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_billing_groups_input() :: %{
        optional("BillingPeriod") => String.t() | atom(),
        optional("Filters") => list_billing_groups_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_billing_groups_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_accounts_output() :: %{
        optional("Arn") => String.t() | atom()
      }

  """
  @type disassociate_accounts_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_associations_list_element() :: %{
        "AccountEmail" => String.t() | atom(),
        "AccountId" => String.t() | atom(),
        "AccountName" => String.t() | atom(),
        "BillingGroupArn" => String.t() | atom()
      }

  """
  @type account_associations_list_element() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_billing_group_input() :: %{
        required("Arn") => String.t() | atom()
      }

  """
  @type delete_billing_group_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_billing_group_cost_reports_output() :: %{
        optional("BillingGroupCostReports") => list(billing_group_cost_report_element()),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_billing_group_cost_reports_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_associate_resources_to_custom_line_item_output() :: %{
        optional("FailedAssociatedResources") => list(associate_resource_response_element()),
        optional("SuccessfullyAssociatedResources") => list(associate_resource_response_element())
      }

  """
  @type batch_associate_resources_to_custom_line_item_output() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      delete_custom_line_item_output() :: %{
        optional("Arn") => String.t() | atom()
      }

  """
  @type delete_custom_line_item_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_custom_line_item_input() :: %{
        "AccountId" => String.t() | atom(),
        "BillingGroupArn" => String.t() | atom(),
        "BillingPeriodRange" => custom_line_item_billing_period_range(),
        "ChargeDetails" => custom_line_item_charge_details(),
        "ClientToken" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type create_custom_line_item_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_custom_line_item_output() :: %{
        optional("Arn") => String.t() | atom(),
        optional("AssociationSize") => float(),
        optional("BillingGroupArn") => String.t() | atom(),
        optional("ChargeDetails") => list_custom_line_item_charge_details(),
        optional("Description") => String.t() | atom(),
        optional("LastModifiedTime") => float(),
        optional("Name") => String.t() | atom()
      }

  """
  @type update_custom_line_item_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      billing_group_cost_report_element() :: %{
        "AWSCost" => String.t() | atom(),
        "Arn" => String.t() | atom(),
        "Currency" => String.t() | atom(),
        "Margin" => String.t() | atom(),
        "MarginPercentage" => String.t() | atom(),
        "ProformaCost" => String.t() | atom()
      }

  """
  @type billing_group_cost_report_element() :: %{(String.t() | atom()) => any()}

  @type associate_accounts_errors() ::
          throttling_exception()
          | service_limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type associate_pricing_rules_errors() ::
          throttling_exception()
          | service_limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type batch_associate_resources_to_custom_line_item_errors() ::
          throttling_exception()
          | service_limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type batch_disassociate_resources_from_custom_line_item_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_billing_group_errors() ::
          throttling_exception()
          | service_limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_custom_line_item_errors() ::
          throttling_exception()
          | service_limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_pricing_plan_errors() ::
          throttling_exception()
          | service_limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_pricing_rule_errors() ::
          throttling_exception()
          | service_limit_exceeded_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_billing_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type delete_custom_line_item_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_pricing_plan_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_pricing_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type disassociate_accounts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_pricing_rules_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_billing_group_cost_report_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_account_associations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_billing_group_cost_reports_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_billing_groups_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_custom_line_item_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_custom_line_items_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_pricing_plans_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_pricing_plans_associated_with_pricing_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_pricing_rules_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_pricing_rules_associated_to_pricing_plan_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_resources_associated_to_custom_line_item_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_billing_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_custom_line_item_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_pricing_plan_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_pricing_rule_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2021-07-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: "us-east-1",
      endpoint_prefix: "billingconductor",
      global?: true,
      hostname: "billingconductor.us-east-1.amazonaws.com",
      protocol: "rest-json",
      service_id: "billingconductor",
      signature_version: "v4",
      signing_name: "billingconductor",
      target_prefix: nil
    }
  end

  @doc """
  Connects an array of account IDs in a consolidated billing family to a
  predefined
  billing group.

  The account IDs must be a part of the consolidated billing family during the
  current month, and not already associated with another billing group. The
  maximum number of
  accounts that can be associated in one call is 30.
  """
  @spec associate_accounts(map(), associate_accounts_input(), list()) ::
          {:ok, associate_accounts_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_accounts_errors()}
  def associate_accounts(%Client{} = client, input, options \\ []) do
    url_path = "/associate-accounts"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Connects an array of `PricingRuleArns` to a defined `PricingPlan`.

  The maximum number `PricingRuleArn` that can be associated in one call is 30.
  """
  @spec associate_pricing_rules(map(), associate_pricing_rules_input(), list()) ::
          {:ok, associate_pricing_rules_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_pricing_rules_errors()}
  def associate_pricing_rules(%Client{} = client, input, options \\ []) do
    url_path = "/associate-pricing-rules"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Associates a batch of resources to a percentage custom line item.
  """
  @spec batch_associate_resources_to_custom_line_item(
          map(),
          batch_associate_resources_to_custom_line_item_input(),
          list()
        ) ::
          {:ok, batch_associate_resources_to_custom_line_item_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_associate_resources_to_custom_line_item_errors()}
  def batch_associate_resources_to_custom_line_item(%Client{} = client, input, options \\ []) do
    url_path = "/batch-associate-resources-to-custom-line-item"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Disassociates a batch of resources from a percentage custom line item.
  """
  @spec batch_disassociate_resources_from_custom_line_item(
          map(),
          batch_disassociate_resources_from_custom_line_item_input(),
          list()
        ) ::
          {:ok, batch_disassociate_resources_from_custom_line_item_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_disassociate_resources_from_custom_line_item_errors()}
  def batch_disassociate_resources_from_custom_line_item(%Client{} = client, input, options \\ []) do
    url_path = "/batch-disassociate-resources-from-custom-line-item"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Creates a billing group that resembles a consolidated billing family that Amazon
  Web Services charges, based off of the predefined pricing plan computation.
  """
  @spec create_billing_group(map(), create_billing_group_input(), list()) ::
          {:ok, create_billing_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_billing_group_errors()}
  def create_billing_group(%Client{} = client, input, options \\ []) do
    url_path = "/create-billing-group"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a custom line item that can be used to create a one-time fixed charge
  that can be
  applied to a single billing group for the current or previous billing period.

  The one-time
  fixed charge is either a fee or discount.
  """
  @spec create_custom_line_item(map(), create_custom_line_item_input(), list()) ::
          {:ok, create_custom_line_item_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_custom_line_item_errors()}
  def create_custom_line_item(%Client{} = client, input, options \\ []) do
    url_path = "/create-custom-line-item"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a pricing plan that is used for computing Amazon Web Services charges
  for billing groups.
  """
  @spec create_pricing_plan(map(), create_pricing_plan_input(), list()) ::
          {:ok, create_pricing_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_pricing_plan_errors()}
  def create_pricing_plan(%Client{} = client, input, options \\ []) do
    url_path = "/create-pricing-plan"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Creates a pricing rule can be associated to a pricing plan, or a set of pricing
  plans.
  """
  @spec create_pricing_rule(map(), create_pricing_rule_input(), list()) ::
          {:ok, create_pricing_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_pricing_rule_errors()}
  def create_pricing_rule(%Client{} = client, input, options \\ []) do
    url_path = "/create-pricing-rule"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Deletes a billing group.
  """
  @spec delete_billing_group(map(), delete_billing_group_input(), list()) ::
          {:ok, delete_billing_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_billing_group_errors()}
  def delete_billing_group(%Client{} = client, input, options \\ []) do
    url_path = "/delete-billing-group"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Deletes the custom line item identified by the given ARN in the current, or
  previous billing period.
  """
  @spec delete_custom_line_item(map(), delete_custom_line_item_input(), list()) ::
          {:ok, delete_custom_line_item_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_custom_line_item_errors()}
  def delete_custom_line_item(%Client{} = client, input, options \\ []) do
    url_path = "/delete-custom-line-item"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a pricing plan.

  The pricing plan must not be associated with any billing groups to
  delete successfully.
  """
  @spec delete_pricing_plan(map(), delete_pricing_plan_input(), list()) ::
          {:ok, delete_pricing_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_pricing_plan_errors()}
  def delete_pricing_plan(%Client{} = client, input, options \\ []) do
    url_path = "/delete-pricing-plan"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the pricing rule that's identified by the input Amazon Resource Name
  (ARN).
  """
  @spec delete_pricing_rule(map(), delete_pricing_rule_input(), list()) ::
          {:ok, delete_pricing_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_pricing_rule_errors()}
  def delete_pricing_rule(%Client{} = client, input, options \\ []) do
    url_path = "/delete-pricing-rule"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes the specified list of account IDs from the given billing group.
  """
  @spec disassociate_accounts(map(), disassociate_accounts_input(), list()) ::
          {:ok, disassociate_accounts_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_accounts_errors()}
  def disassociate_accounts(%Client{} = client, input, options \\ []) do
    url_path = "/disassociate-accounts"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Disassociates a list of pricing rules from a pricing plan.
  """
  @spec disassociate_pricing_rules(map(), disassociate_pricing_rules_input(), list()) ::
          {:ok, disassociate_pricing_rules_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_pricing_rules_errors()}
  def disassociate_pricing_rules(%Client{} = client, input, options \\ []) do
    url_path = "/disassociate-pricing-rules"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves the margin summary report, which includes the Amazon Web Services cost
  and charged
  amount (pro forma cost) by Amazon Web Service for a specific billing group.
  """
  @spec get_billing_group_cost_report(map(), get_billing_group_cost_report_input(), list()) ::
          {:ok, get_billing_group_cost_report_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_billing_group_cost_report_errors()}
  def get_billing_group_cost_report(%Client{} = client, input, options \\ []) do
    url_path = "/get-billing-group-cost-report"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  This is a paginated call to list linked accounts that are linked to the payer
  account for
  the specified time period.

  If no information is provided, the current billing period is used.
  The response will optionally include the billing group that's associated with
  the linked
  account.
  """
  @spec list_account_associations(map(), list_account_associations_input(), list()) ::
          {:ok, list_account_associations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_account_associations_errors()}
  def list_account_associations(%Client{} = client, input, options \\ []) do
    url_path = "/list-account-associations"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  A paginated call to retrieve a summary report of actual Amazon Web Services
  charges and the calculated
  Amazon Web Services charges based on the associated pricing plan of a billing
  group.
  """
  @spec list_billing_group_cost_reports(map(), list_billing_group_cost_reports_input(), list()) ::
          {:ok, list_billing_group_cost_reports_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_billing_group_cost_reports_errors()}
  def list_billing_group_cost_reports(%Client{} = client, input, options \\ []) do
    url_path = "/list-billing-group-cost-reports"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
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
  @spec list_billing_groups(map(), list_billing_groups_input(), list()) ::
          {:ok, list_billing_groups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_billing_groups_errors()}
  def list_billing_groups(%Client{} = client, input, options \\ []) do
    url_path = "/list-billing-groups"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  A paginated call to get a list of all custom line item versions.
  """
  @spec list_custom_line_item_versions(map(), list_custom_line_item_versions_input(), list()) ::
          {:ok, list_custom_line_item_versions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_custom_line_item_versions_errors()}
  def list_custom_line_item_versions(%Client{} = client, input, options \\ []) do
    url_path = "/list-custom-line-item-versions"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
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
  @spec list_custom_line_items(map(), list_custom_line_items_input(), list()) ::
          {:ok, list_custom_line_items_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_custom_line_items_errors()}
  def list_custom_line_items(%Client{} = client, input, options \\ []) do
    url_path = "/list-custom-line-items"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  A paginated call to get pricing plans for the given billing period.

  If you don't provide a billing period, the current billing period is used.
  """
  @spec list_pricing_plans(map(), list_pricing_plans_input(), list()) ::
          {:ok, list_pricing_plans_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_pricing_plans_errors()}
  def list_pricing_plans(%Client{} = client, input, options \\ []) do
    url_path = "/list-pricing-plans"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  A list of the pricing plans that are associated with a pricing rule.
  """
  @spec list_pricing_plans_associated_with_pricing_rule(
          map(),
          list_pricing_plans_associated_with_pricing_rule_input(),
          list()
        ) ::
          {:ok, list_pricing_plans_associated_with_pricing_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_pricing_plans_associated_with_pricing_rule_errors()}
  def list_pricing_plans_associated_with_pricing_rule(%Client{} = client, input, options \\ []) do
    url_path = "/list-pricing-plans-associated-with-pricing-rule"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Describes a pricing rule that can be associated to a pricing plan, or set of
  pricing plans.
  """
  @spec list_pricing_rules(map(), list_pricing_rules_input(), list()) ::
          {:ok, list_pricing_rules_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_pricing_rules_errors()}
  def list_pricing_rules(%Client{} = client, input, options \\ []) do
    url_path = "/list-pricing-rules"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Lists the pricing rules that are associated with a pricing plan.
  """
  @spec list_pricing_rules_associated_to_pricing_plan(
          map(),
          list_pricing_rules_associated_to_pricing_plan_input(),
          list()
        ) ::
          {:ok, list_pricing_rules_associated_to_pricing_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_pricing_rules_associated_to_pricing_plan_errors()}
  def list_pricing_rules_associated_to_pricing_plan(%Client{} = client, input, options \\ []) do
    url_path = "/list-pricing-rules-associated-to-pricing-plan"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  List the resources that are associated to a custom line item.
  """
  @spec list_resources_associated_to_custom_line_item(
          map(),
          list_resources_associated_to_custom_line_item_input(),
          list()
        ) ::
          {:ok, list_resources_associated_to_custom_line_item_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resources_associated_to_custom_line_item_errors()}
  def list_resources_associated_to_custom_line_item(%Client{} = client, input, options \\ []) do
    url_path = "/list-resources-associated-to-custom-line-item"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  A list the tags for a resource.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 204)
  end

  @doc """
  Associates the specified tags to a resource with the specified `resourceArn`.

  If existing tags on a resource are not specified in the request parameters, they
  are not
  changed.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """

  Deletes specified tags from a resource.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  This updates an existing billing group.
  """
  @spec update_billing_group(map(), update_billing_group_input(), list()) ::
          {:ok, update_billing_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_billing_group_errors()}
  def update_billing_group(%Client{} = client, input, options \\ []) do
    url_path = "/update-billing-group"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Update an existing custom line item in the current or previous billing period.
  """
  @spec update_custom_line_item(map(), update_custom_line_item_input(), list()) ::
          {:ok, update_custom_line_item_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_custom_line_item_errors()}
  def update_custom_line_item(%Client{} = client, input, options \\ []) do
    url_path = "/update-custom-line-item"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  This updates an existing pricing plan.
  """
  @spec update_pricing_plan(map(), update_pricing_plan_input(), list()) ::
          {:ok, update_pricing_plan_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_pricing_plan_errors()}
  def update_pricing_plan(%Client{} = client, input, options \\ []) do
    url_path = "/update-pricing-plan"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """

  Updates an existing pricing rule.
  """
  @spec update_pricing_rule(map(), update_pricing_rule_input(), list()) ::
          {:ok, update_pricing_rule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_pricing_rule_errors()}
  def update_pricing_rule(%Client{} = client, input, options \\ []) do
    url_path = "/update-pricing-rule"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
