# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.BCMPricingCalculator do
  @moduledoc """

  You can use the Pricing Calculator API to programmatically create estimates for
  your planned cloud use.

  You can model usage and commitments such as Savings Plans and
  Reserved Instances, and generate estimated costs using your discounts and
  benefit sharing preferences.

  The Pricing Calculator API provides the following endpoint:

    *

  `https://bcm-pricing-calculator.us-east-1.api.aws`
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      usage_amount() :: %{
        "amount" => [float()],
        "startHour" => [non_neg_integer()]
      }
      
  """
  @type usage_amount() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_update_workload_estimate_usage_error() :: %{
        "errorCode" => list(any()),
        "errorMessage" => [String.t()],
        "id" => String.t()
      }
      
  """
  @type batch_update_workload_estimate_usage_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_reserved_instance_action() :: %{
        "instanceCount" => integer(),
        "reservedInstancesOfferingId" => String.t()
      }
      
  """
  @type add_reserved_instance_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_workload_estimate_request() :: %{
        required("identifier") => String.t()
      }
      
  """
  @type get_workload_estimate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("arn") => String.t(),
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_update_bill_scenario_commitment_modification_response() :: %{
        "errors" => list(batch_update_bill_scenario_commitment_modification_error()()),
        "items" => list(bill_scenario_commitment_modification_item()())
      }
      
  """
  @type batch_update_bill_scenario_commitment_modification_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bill_estimates_filter() :: %{
        "matchOption" => list(any()),
        "name" => list(any()),
        "values" => list([String.t()]())
      }
      
  """
  @type list_bill_estimates_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workload_estimate_usage_response() :: %{
        "items" => list(workload_estimate_usage_item()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_workload_estimate_usage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bill_scenarios_request() :: %{
        optional("createdAtFilter") => filter_timestamp(),
        optional("expiresAtFilter") => filter_timestamp(),
        optional("filters") => list(list_bill_scenarios_filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_bill_scenarios_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bill_estimate_input_usage_modifications_request() :: %{
        optional("filters") => list(list_usage_filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("billEstimateId") => String.t()
      }
      
  """
  @type list_bill_estimate_input_usage_modifications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter_timestamp() :: %{
        "afterTimestamp" => [non_neg_integer()],
        "beforeTimestamp" => [non_neg_integer()]
      }
      
  """
  @type filter_timestamp() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_bill_estimate_response() :: %{
        "billInterval" => bill_interval(),
        "costSummary" => bill_estimate_cost_summary(),
        "createdAt" => [non_neg_integer()],
        "expiresAt" => [non_neg_integer()],
        "failureMessage" => [String.t()],
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any())
      }
      
  """
  @type create_bill_estimate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_update_bill_scenario_usage_modification_response() :: %{
        "errors" => list(batch_update_bill_scenario_usage_modification_error()()),
        "items" => list(bill_scenario_usage_modification_item()())
      }
      
  """
  @type batch_update_bill_scenario_usage_modification_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cost_difference() :: %{
        "estimatedCost" => cost_amount(),
        "historicalCost" => cost_amount()
      }
      
  """
  @type cost_difference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bill_estimate_request() :: %{
        required("identifier") => String.t()
      }
      
  """
  @type get_bill_estimate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_preferences_request() :: %{}
      
  """
  @type get_preferences_request() :: %{}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      update_bill_estimate_response() :: %{
        "billInterval" => bill_interval(),
        "costSummary" => bill_estimate_cost_summary(),
        "createdAt" => [non_neg_integer()],
        "expiresAt" => [non_neg_integer()],
        "failureMessage" => [String.t()],
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any())
      }
      
  """
  @type update_bill_estimate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_workload_estimate_response() :: %{}
      
  """
  @type delete_workload_estimate_response() :: %{}

  @typedoc """

  ## Example:
      
      update_bill_estimate_request() :: %{
        optional("expiresAt") => [non_neg_integer()],
        optional("name") => String.t(),
        required("identifier") => String.t()
      }
      
  """
  @type update_bill_estimate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bill_scenario_commitment_modification_item() :: %{
        "commitmentAction" => list(),
        "group" => String.t(),
        "id" => String.t(),
        "usageAccountId" => String.t()
      }
      
  """
  @type bill_scenario_commitment_modification_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bill_estimate_line_items_request() :: %{
        optional("filters") => list(list_bill_estimate_line_items_filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("billEstimateId") => String.t()
      }
      
  """
  @type list_bill_estimate_line_items_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_create_bill_scenario_usage_modification_error() :: %{
        "errorCode" => list(any()),
        "errorMessage" => [String.t()],
        "key" => String.t()
      }
      
  """
  @type batch_create_bill_scenario_usage_modification_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_create_workload_estimate_usage_request() :: %{
        optional("clientToken") => String.t(),
        required("usage") => list(batch_create_workload_estimate_usage_entry()()),
        required("workloadEstimateId") => String.t()
      }
      
  """
  @type batch_create_workload_estimate_usage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bill_estimate_summary() :: %{
        "billInterval" => bill_interval(),
        "createdAt" => [non_neg_integer()],
        "expiresAt" => [non_neg_integer()],
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any())
      }
      
  """
  @type bill_estimate_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_create_workload_estimate_usage_response() :: %{
        "errors" => list(batch_create_workload_estimate_usage_error()()),
        "items" => list(batch_create_workload_estimate_usage_item()())
      }
      
  """
  @type batch_create_workload_estimate_usage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expression_filter() :: %{
        "key" => [String.t()],
        "matchOptions" => list([String.t()]()),
        "values" => list([String.t()]())
      }
      
  """
  @type expression_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workload_estimates_response() :: %{
        "items" => list(workload_estimate_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_workload_estimates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_create_workload_estimate_usage_error() :: %{
        "errorCode" => list(any()),
        "errorMessage" => [String.t()],
        "key" => String.t()
      }
      
  """
  @type batch_create_workload_estimate_usage_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bill_estimates_request() :: %{
        optional("createdAtFilter") => filter_timestamp(),
        optional("expiresAtFilter") => filter_timestamp(),
        optional("filters") => list(list_bill_estimates_filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_bill_estimates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bill_estimate_response() :: %{
        "billInterval" => bill_interval(),
        "costSummary" => bill_estimate_cost_summary(),
        "createdAt" => [non_neg_integer()],
        "expiresAt" => [non_neg_integer()],
        "failureMessage" => [String.t()],
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any())
      }
      
  """
  @type get_bill_estimate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bill_scenario_commitment_modifications_response() :: %{
        "items" => list(bill_scenario_commitment_modification_item()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_bill_scenario_commitment_modifications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_workload_estimate_response() :: %{
        "costCurrency" => list(any()),
        "createdAt" => [non_neg_integer()],
        "expiresAt" => [non_neg_integer()],
        "failureMessage" => [String.t()],
        "id" => String.t(),
        "name" => String.t(),
        "rateTimestamp" => [non_neg_integer()],
        "rateType" => list(any()),
        "status" => list(any()),
        "totalCost" => [float()]
      }
      
  """
  @type update_workload_estimate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bill_estimate_cost_summary() :: %{
        "serviceCostDifferences" => map(),
        "totalCostDifference" => cost_difference()
      }
      
  """
  @type bill_estimate_cost_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_update_bill_scenario_commitment_modification_error() :: %{
        "errorCode" => list(any()),
        "errorMessage" => [String.t()],
        "id" => String.t()
      }
      
  """
  @type batch_update_bill_scenario_commitment_modification_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bill_estimate_line_item_summary() :: %{
        "availabilityZone" => String.t(),
        "estimatedCost" => cost_amount(),
        "estimatedUsageQuantity" => usage_quantity_result(),
        "historicalCost" => cost_amount(),
        "historicalUsageQuantity" => usage_quantity_result(),
        "id" => String.t(),
        "lineItemId" => [String.t()],
        "lineItemType" => [String.t()],
        "location" => [String.t()],
        "operation" => String.t(),
        "payerAccountId" => String.t(),
        "savingsPlanArns" => list([String.t()]()),
        "serviceCode" => String.t(),
        "usageAccountId" => String.t(),
        "usageType" => String.t()
      }
      
  """
  @type bill_estimate_line_item_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bill_scenarios_response() :: %{
        "items" => list(bill_scenario_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_bill_scenarios_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_update_workload_estimate_usage_entry() :: %{
        "amount" => [float()],
        "group" => String.t(),
        "id" => String.t()
      }
      
  """
  @type batch_update_workload_estimate_usage_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("arn") => String.t(),
        required("tagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bill_estimate_input_usage_modification_summary() :: %{
        "availabilityZone" => String.t(),
        "group" => String.t(),
        "historicalUsage" => historical_usage_entity(),
        "id" => String.t(),
        "location" => [String.t()],
        "operation" => String.t(),
        "quantities" => list(usage_quantity()()),
        "serviceCode" => String.t(),
        "usageAccountId" => String.t(),
        "usageType" => String.t()
      }
      
  """
  @type bill_estimate_input_usage_modification_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bill_estimate_line_items_filter() :: %{
        "matchOption" => list(any()),
        "name" => list(any()),
        "values" => list([String.t()]())
      }
      
  """
  @type list_bill_estimate_line_items_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bill_scenario_usage_modification_item() :: %{
        "availabilityZone" => String.t(),
        "group" => String.t(),
        "historicalUsage" => historical_usage_entity(),
        "id" => String.t(),
        "location" => [String.t()],
        "operation" => String.t(),
        "quantities" => list(usage_quantity()()),
        "serviceCode" => String.t(),
        "usageAccountId" => String.t(),
        "usageType" => String.t()
      }
      
  """
  @type bill_scenario_usage_modification_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_workload_estimate_response() :: %{
        "costCurrency" => list(any()),
        "createdAt" => [non_neg_integer()],
        "expiresAt" => [non_neg_integer()],
        "failureMessage" => [String.t()],
        "id" => String.t(),
        "name" => String.t(),
        "rateTimestamp" => [non_neg_integer()],
        "rateType" => list(any()),
        "status" => list(any()),
        "totalCost" => [float()]
      }
      
  """
  @type get_workload_estimate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bill_estimate_input_commitment_modification_summary() :: %{
        "commitmentAction" => list(),
        "group" => String.t(),
        "id" => String.t(),
        "usageAccountId" => String.t()
      }
      
  """
  @type bill_estimate_input_commitment_modification_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_update_workload_estimate_usage_response() :: %{
        "errors" => list(batch_update_workload_estimate_usage_error()()),
        "items" => list(workload_estimate_usage_item()())
      }
      
  """
  @type batch_update_workload_estimate_usage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_create_bill_scenario_commitment_modification_error() :: %{
        "errorCode" => list(any()),
        "errorMessage" => [String.t()],
        "key" => String.t()
      }
      
  """
  @type batch_create_bill_scenario_commitment_modification_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      negate_savings_plan_action() :: %{
        "savingsPlanId" => String.t()
      }
      
  """
  @type negate_savings_plan_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bill_estimate_commitment_summary() :: %{
        "id" => String.t(),
        "monthlyPayment" => cost_amount(),
        "offeringId" => String.t(),
        "paymentOption" => [String.t()],
        "purchaseAgreementType" => list(any()),
        "region" => [String.t()],
        "termLength" => [String.t()],
        "upfrontPayment" => cost_amount(),
        "usageAccountId" => String.t()
      }
      
  """
  @type bill_estimate_commitment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_preferences_response() :: %{
        "managementAccountRateTypeSelections" => list(list(any())()),
        "memberAccountRateTypeSelections" => list(list(any())())
      }
      
  """
  @type get_preferences_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_create_bill_scenario_commitment_modification_item() :: %{
        "commitmentAction" => list(),
        "group" => String.t(),
        "id" => String.t(),
        "key" => String.t(),
        "usageAccountId" => String.t()
      }
      
  """
  @type batch_create_bill_scenario_commitment_modification_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bill_estimate_line_items_response() :: %{
        "items" => list(bill_estimate_line_item_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_bill_estimate_line_items_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      historical_usage_entity() :: %{
        "billInterval" => bill_interval(),
        "filterExpression" => expression(),
        "location" => [String.t()],
        "operation" => String.t(),
        "serviceCode" => String.t(),
        "usageAccountId" => String.t(),
        "usageType" => String.t()
      }
      
  """
  @type historical_usage_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workload_estimate_usage_request() :: %{
        optional("filters") => list(list_usage_filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("workloadEstimateId") => String.t()
      }
      
  """
  @type list_workload_estimate_usage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()]
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      usage_quantity_result() :: %{
        "amount" => [float()],
        "unit" => [String.t()]
      }
      
  """
  @type usage_quantity_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bill_scenario_response() :: %{
        "billInterval" => bill_interval(),
        "createdAt" => [non_neg_integer()],
        "expiresAt" => [non_neg_integer()],
        "failureMessage" => [String.t()],
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any())
      }
      
  """
  @type get_bill_scenario_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_bill_scenario_response() :: %{
        "billInterval" => bill_interval(),
        "createdAt" => [non_neg_integer()],
        "expiresAt" => [non_neg_integer()],
        "failureMessage" => [String.t()],
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any())
      }
      
  """
  @type update_bill_scenario_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bill_estimate_commitments_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("billEstimateId") => String.t()
      }
      
  """
  @type list_bill_estimate_commitments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workload_estimate_usage_item() :: %{
        "cost" => [float()],
        "currency" => list(any()),
        "group" => String.t(),
        "historicalUsage" => historical_usage_entity(),
        "id" => String.t(),
        "location" => [String.t()],
        "operation" => String.t(),
        "quantity" => workload_estimate_usage_quantity(),
        "serviceCode" => String.t(),
        "status" => list(any()),
        "usageAccountId" => String.t(),
        "usageType" => String.t()
      }
      
  """
  @type workload_estimate_usage_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bill_estimate_input_commitment_modifications_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("billEstimateId") => String.t()
      }
      
  """
  @type list_bill_estimate_input_commitment_modifications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "resourceId" => [String.t()],
        "resourceType" => [String.t()],
        "serviceCode" => [String.t()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_savings_plan_action() :: %{
        "commitment" => float(),
        "savingsPlanOfferingId" => String.t()
      }
      
  """
  @type add_savings_plan_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_preferences_request() :: %{
        optional("managementAccountRateTypeSelections") => list(list(any())()),
        optional("memberAccountRateTypeSelections") => list(list(any())())
      }
      
  """
  @type update_preferences_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bill_estimate_input_usage_modifications_response() :: %{
        "items" => list(bill_estimate_input_usage_modification_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_bill_estimate_input_usage_modifications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_create_bill_scenario_usage_modification_item() :: %{
        "availabilityZone" => String.t(),
        "group" => String.t(),
        "historicalUsage" => historical_usage_entity(),
        "id" => String.t(),
        "key" => String.t(),
        "location" => [String.t()],
        "operation" => String.t(),
        "quantities" => list(usage_quantity()()),
        "serviceCode" => String.t(),
        "usageAccountId" => String.t(),
        "usageType" => String.t()
      }
      
  """
  @type batch_create_bill_scenario_usage_modification_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_preferences_response() :: %{
        "managementAccountRateTypeSelections" => list(list(any())()),
        "memberAccountRateTypeSelections" => list(list(any())())
      }
      
  """
  @type update_preferences_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_bill_scenario_response() :: %{}
      
  """
  @type delete_bill_scenario_response() :: %{}

  @typedoc """

  ## Example:
      
      list_bill_scenarios_filter() :: %{
        "matchOption" => list(any()),
        "name" => list(any()),
        "values" => list([String.t()]())
      }
      
  """
  @type list_bill_scenarios_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_bill_scenario_usage_modification_response() :: %{
        "errors" => list(batch_delete_bill_scenario_usage_modification_error()())
      }
      
  """
  @type batch_delete_bill_scenario_usage_modification_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bill_interval() :: %{
        "end" => [non_neg_integer()],
        "start" => [non_neg_integer()]
      }
      
  """
  @type bill_interval() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_create_bill_scenario_usage_modification_entry() :: %{
        "amounts" => list(usage_amount()()),
        "availabilityZone" => String.t(),
        "group" => String.t(),
        "historicalUsage" => historical_usage_entity(),
        "key" => String.t(),
        "operation" => String.t(),
        "serviceCode" => String.t(),
        "usageAccountId" => String.t(),
        "usageType" => String.t()
      }
      
  """
  @type batch_create_bill_scenario_usage_modification_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_workload_estimate_usage_error() :: %{
        "errorCode" => list(any()),
        "errorMessage" => [String.t()],
        "id" => String.t()
      }
      
  """
  @type batch_delete_workload_estimate_usage_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_update_bill_scenario_usage_modification_entry() :: %{
        "amounts" => list(usage_amount()()),
        "group" => String.t(),
        "id" => String.t()
      }
      
  """
  @type batch_update_bill_scenario_usage_modification_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "message" => [String.t()],
        "name" => [String.t()]
      }
      
  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workload_estimates_request() :: %{
        optional("createdAtFilter") => filter_timestamp(),
        optional("expiresAtFilter") => filter_timestamp(),
        optional("filters") => list(list_workload_estimates_filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_workload_estimates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_bill_scenario_usage_modification_request() :: %{
        required("billScenarioId") => String.t(),
        required("ids") => list(String.t()())
      }
      
  """
  @type batch_delete_bill_scenario_usage_modification_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_workload_estimate_request() :: %{
        required("identifier") => String.t()
      }
      
  """
  @type delete_workload_estimate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_update_bill_scenario_commitment_modification_request() :: %{
        required("billScenarioId") => String.t(),
        required("commitmentModifications") => list(batch_update_bill_scenario_commitment_modification_entry()())
      }
      
  """
  @type batch_update_bill_scenario_commitment_modification_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      bill_scenario_summary() :: %{
        "billInterval" => bill_interval(),
        "createdAt" => [non_neg_integer()],
        "expiresAt" => [non_neg_integer()],
        "failureMessage" => [String.t()],
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any())
      }
      
  """
  @type bill_scenario_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_bill_scenario_request() :: %{
        optional("expiresAt") => [non_neg_integer()],
        optional("name") => String.t(),
        required("identifier") => String.t()
      }
      
  """
  @type update_bill_scenario_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bill_scenario_commitment_modifications_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("billScenarioId") => String.t()
      }
      
  """
  @type list_bill_scenario_commitment_modifications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_update_workload_estimate_usage_request() :: %{
        required("usage") => list(batch_update_workload_estimate_usage_entry()()),
        required("workloadEstimateId") => String.t()
      }
      
  """
  @type batch_update_workload_estimate_usage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t()],
        "retryAfterSeconds" => [integer()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_bill_scenario_commitment_modification_error() :: %{
        "errorCode" => list(any()),
        "errorMessage" => [String.t()],
        "id" => String.t()
      }
      
  """
  @type batch_delete_bill_scenario_commitment_modification_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_workload_estimates_filter() :: %{
        "matchOption" => list(any()),
        "name" => list(any()),
        "values" => list([String.t()]())
      }
      
  """
  @type list_workload_estimates_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bill_scenario_usage_modifications_response() :: %{
        "items" => list(bill_scenario_usage_modification_item()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_bill_scenario_usage_modifications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bill_estimates_response() :: %{
        "items" => list(bill_estimate_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_bill_estimates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_update_bill_scenario_usage_modification_request() :: %{
        required("billScenarioId") => String.t(),
        required("usageModifications") => list(batch_update_bill_scenario_usage_modification_entry()())
      }
      
  """
  @type batch_update_bill_scenario_usage_modification_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_bill_estimate_request() :: %{
        required("identifier") => String.t()
      }
      
  """
  @type delete_bill_estimate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_unavailable_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type data_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bill_scenario_usage_modifications_request() :: %{
        optional("filters") => list(list_usage_filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("billScenarioId") => String.t()
      }
      
  """
  @type list_bill_scenario_usage_modifications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bill_estimate_input_commitment_modifications_response() :: %{
        "items" => list(bill_estimate_input_commitment_modification_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_bill_estimate_input_commitment_modifications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      negate_reserved_instance_action() :: %{
        "reservedInstancesId" => String.t()
      }
      
  """
  @type negate_reserved_instance_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workload_estimate_request() :: %{
        optional("clientToken") => String.t(),
        optional("rateType") => list(any()),
        optional("tags") => map(),
        required("name") => String.t()
      }
      
  """
  @type create_workload_estimate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_create_bill_scenario_usage_modification_response() :: %{
        "errors" => list(batch_create_bill_scenario_usage_modification_error()()),
        "items" => list(batch_create_bill_scenario_usage_modification_item()())
      }
      
  """
  @type batch_create_bill_scenario_usage_modification_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_create_bill_scenario_usage_modification_request() :: %{
        optional("clientToken") => String.t(),
        required("billScenarioId") => String.t(),
        required("usageModifications") => list(batch_create_bill_scenario_usage_modification_entry()())
      }
      
  """
  @type batch_create_bill_scenario_usage_modification_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      batch_create_workload_estimate_usage_entry() :: %{
        "amount" => [float()],
        "group" => String.t(),
        "historicalUsage" => historical_usage_entity(),
        "key" => String.t(),
        "operation" => String.t(),
        "serviceCode" => String.t(),
        "usageAccountId" => String.t(),
        "usageType" => String.t()
      }
      
  """
  @type batch_create_workload_estimate_usage_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_workload_estimate_usage_request() :: %{
        required("ids") => list(String.t()()),
        required("workloadEstimateId") => String.t()
      }
      
  """
  @type batch_delete_workload_estimate_usage_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => [String.t()],
        "reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_create_workload_estimate_usage_item() :: %{
        "cost" => [float()],
        "currency" => list(any()),
        "group" => String.t(),
        "historicalUsage" => historical_usage_entity(),
        "id" => String.t(),
        "key" => String.t(),
        "location" => [String.t()],
        "operation" => String.t(),
        "quantity" => workload_estimate_usage_quantity(),
        "serviceCode" => String.t(),
        "status" => list(any()),
        "usageAccountId" => String.t(),
        "usageType" => String.t()
      }
      
  """
  @type batch_create_workload_estimate_usage_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t()],
        "quotaCode" => [String.t()],
        "retryAfterSeconds" => [integer()],
        "serviceCode" => [String.t()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cost_amount() :: %{
        "amount" => [float()],
        "currency" => list(any())
      }
      
  """
  @type cost_amount() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      expression() :: %{
        "and" => list(expression()()),
        "costCategories" => expression_filter(),
        "dimensions" => expression_filter(),
        "not" => expression(),
        "or" => list(expression()()),
        "tags" => expression_filter()
      }
      
  """
  @type expression() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_workload_estimate_usage_response() :: %{
        "errors" => list(batch_delete_workload_estimate_usage_error()())
      }
      
  """
  @type batch_delete_workload_estimate_usage_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_create_bill_scenario_commitment_modification_request() :: %{
        optional("clientToken") => String.t(),
        required("billScenarioId") => String.t(),
        required("commitmentModifications") => list(batch_create_bill_scenario_commitment_modification_entry()())
      }
      
  """
  @type batch_create_bill_scenario_commitment_modification_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_bill_estimate_request() :: %{
        optional("clientToken") => String.t(),
        optional("tags") => map(),
        required("billScenarioId") => String.t(),
        required("name") => String.t()
      }
      
  """
  @type create_bill_estimate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_update_bill_scenario_commitment_modification_entry() :: %{
        "group" => String.t(),
        "id" => String.t()
      }
      
  """
  @type batch_update_bill_scenario_commitment_modification_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      usage_quantity() :: %{
        "amount" => [float()],
        "startHour" => [non_neg_integer()],
        "unit" => [String.t()]
      }
      
  """
  @type usage_quantity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_update_bill_scenario_usage_modification_error() :: %{
        "errorCode" => list(any()),
        "errorMessage" => [String.t()],
        "id" => String.t()
      }
      
  """
  @type batch_update_bill_scenario_usage_modification_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_bill_scenario_request() :: %{
        required("identifier") => String.t()
      }
      
  """
  @type get_bill_scenario_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_bill_estimate_response() :: %{}
      
  """
  @type delete_bill_estimate_response() :: %{}

  @typedoc """

  ## Example:
      
      batch_delete_bill_scenario_usage_modification_error() :: %{
        "errorCode" => list(any()),
        "errorMessage" => [String.t()],
        "id" => String.t()
      }
      
  """
  @type batch_delete_bill_scenario_usage_modification_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_create_bill_scenario_commitment_modification_response() :: %{
        "errors" => list(batch_create_bill_scenario_commitment_modification_error()()),
        "items" => list(batch_create_bill_scenario_commitment_modification_item()())
      }
      
  """
  @type batch_create_bill_scenario_commitment_modification_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_bill_scenario_request() :: %{
        optional("clientToken") => String.t(),
        optional("tags") => map(),
        required("name") => String.t()
      }
      
  """
  @type create_bill_scenario_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workload_estimate_summary() :: %{
        "costCurrency" => list(any()),
        "createdAt" => [non_neg_integer()],
        "expiresAt" => [non_neg_integer()],
        "failureMessage" => [String.t()],
        "id" => String.t(),
        "name" => String.t(),
        "rateTimestamp" => [non_neg_integer()],
        "rateType" => list(any()),
        "status" => list(any()),
        "totalCost" => [float()]
      }
      
  """
  @type workload_estimate_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_create_bill_scenario_commitment_modification_entry() :: %{
        "commitmentAction" => list(),
        "group" => String.t(),
        "key" => String.t(),
        "usageAccountId" => String.t()
      }
      
  """
  @type batch_create_bill_scenario_commitment_modification_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_bill_scenario_commitment_modification_request() :: %{
        required("billScenarioId") => String.t(),
        required("ids") => list(String.t()())
      }
      
  """
  @type batch_delete_bill_scenario_commitment_modification_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_workload_estimate_response() :: %{
        "costCurrency" => list(any()),
        "createdAt" => [non_neg_integer()],
        "expiresAt" => [non_neg_integer()],
        "failureMessage" => [String.t()],
        "id" => String.t(),
        "name" => String.t(),
        "rateTimestamp" => [non_neg_integer()],
        "rateType" => list(any()),
        "status" => list(any()),
        "totalCost" => [float()]
      }
      
  """
  @type create_workload_estimate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_usage_filter() :: %{
        "matchOption" => list(any()),
        "name" => list(any()),
        "values" => list([String.t()]())
      }
      
  """
  @type list_usage_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_workload_estimate_request() :: %{
        optional("expiresAt") => [non_neg_integer()],
        optional("name") => String.t(),
        required("identifier") => String.t()
      }
      
  """
  @type update_workload_estimate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_bill_scenario_request() :: %{
        required("identifier") => String.t()
      }
      
  """
  @type delete_bill_scenario_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workload_estimate_usage_quantity() :: %{
        "amount" => [float()],
        "unit" => [String.t()]
      }
      
  """
  @type workload_estimate_usage_quantity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_bill_scenario_response() :: %{
        "billInterval" => bill_interval(),
        "createdAt" => [non_neg_integer()],
        "expiresAt" => [non_neg_integer()],
        "failureMessage" => [String.t()],
        "id" => String.t(),
        "name" => String.t(),
        "status" => list(any())
      }
      
  """
  @type create_bill_scenario_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_bill_scenario_commitment_modification_response() :: %{
        "errors" => list(batch_delete_bill_scenario_commitment_modification_error()())
      }
      
  """
  @type batch_delete_bill_scenario_commitment_modification_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_bill_estimate_commitments_response() :: %{
        "items" => list(bill_estimate_commitment_summary()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_bill_estimate_commitments_response() :: %{String.t() => any()}

  @type batch_create_bill_scenario_commitment_modification_errors() ::
          data_unavailable_exception() | resource_not_found_exception() | conflict_exception()

  @type batch_create_bill_scenario_usage_modification_errors() ::
          data_unavailable_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type batch_create_workload_estimate_usage_errors() ::
          data_unavailable_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type batch_delete_bill_scenario_commitment_modification_errors() ::
          data_unavailable_exception() | resource_not_found_exception()

  @type batch_delete_bill_scenario_usage_modification_errors() ::
          data_unavailable_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type batch_delete_workload_estimate_usage_errors() ::
          data_unavailable_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type batch_update_bill_scenario_commitment_modification_errors() ::
          data_unavailable_exception() | resource_not_found_exception()

  @type batch_update_bill_scenario_usage_modification_errors() ::
          data_unavailable_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type batch_update_workload_estimate_usage_errors() ::
          data_unavailable_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_bill_estimate_errors() ::
          data_unavailable_exception() | resource_not_found_exception() | conflict_exception()

  @type create_bill_scenario_errors() ::
          data_unavailable_exception() | service_quota_exceeded_exception() | conflict_exception()

  @type create_workload_estimate_errors() ::
          data_unavailable_exception() | service_quota_exceeded_exception() | conflict_exception()

  @type delete_bill_estimate_errors() :: data_unavailable_exception()

  @type delete_bill_scenario_errors() :: data_unavailable_exception()

  @type delete_workload_estimate_errors() :: data_unavailable_exception()

  @type get_bill_estimate_errors() ::
          data_unavailable_exception() | resource_not_found_exception()

  @type get_bill_scenario_errors() ::
          data_unavailable_exception() | resource_not_found_exception()

  @type get_preferences_errors() :: data_unavailable_exception()

  @type get_workload_estimate_errors() ::
          data_unavailable_exception() | resource_not_found_exception()

  @type list_bill_estimate_commitments_errors() ::
          data_unavailable_exception() | resource_not_found_exception()

  @type list_bill_estimate_input_commitment_modifications_errors() ::
          data_unavailable_exception() | resource_not_found_exception()

  @type list_bill_estimate_input_usage_modifications_errors() ::
          data_unavailable_exception() | resource_not_found_exception()

  @type list_bill_estimate_line_items_errors() ::
          data_unavailable_exception() | resource_not_found_exception()

  @type list_bill_estimates_errors() :: data_unavailable_exception()

  @type list_bill_scenario_commitment_modifications_errors() ::
          data_unavailable_exception() | resource_not_found_exception()

  @type list_bill_scenario_usage_modifications_errors() ::
          data_unavailable_exception() | resource_not_found_exception()

  @type list_bill_scenarios_errors() :: data_unavailable_exception()

  @type list_tags_for_resource_errors() :: resource_not_found_exception()

  @type list_workload_estimate_usage_errors() ::
          data_unavailable_exception() | resource_not_found_exception()

  @type list_workload_estimates_errors() :: data_unavailable_exception()

  @type tag_resource_errors() ::
          service_quota_exceeded_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: resource_not_found_exception()

  @type update_bill_estimate_errors() ::
          data_unavailable_exception() | resource_not_found_exception() | conflict_exception()

  @type update_bill_scenario_errors() ::
          data_unavailable_exception() | resource_not_found_exception() | conflict_exception()

  @type update_preferences_errors() ::
          data_unavailable_exception() | service_quota_exceeded_exception()

  @type update_workload_estimate_errors() ::
          data_unavailable_exception() | resource_not_found_exception() | conflict_exception()

  def metadata do
    %{
      api_version: "2024-06-19",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "bcm-pricing-calculator",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "BCM Pricing Calculator",
      signature_version: "v4",
      signing_name: "bcm-pricing-calculator",
      target_prefix: "AWSBCMPricingCalculator"
    }
  end

  @doc """

  Create Compute Savings Plans, EC2 Instance Savings Plans, or EC2 Reserved
  Instances commitments that you want to model in a Bill Scenario.
  """
  @spec batch_create_bill_scenario_commitment_modification(
          map(),
          batch_create_bill_scenario_commitment_modification_request(),
          list()
        ) ::
          {:ok, batch_create_bill_scenario_commitment_modification_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_create_bill_scenario_commitment_modification_errors()}
  def batch_create_bill_scenario_commitment_modification(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "BatchCreateBillScenarioCommitmentModification",
      input,
      options
    )
  end

  @doc """

  Create Amazon Web Services service usage that you want to model in a Bill
  Scenario.
  """
  @spec batch_create_bill_scenario_usage_modification(
          map(),
          batch_create_bill_scenario_usage_modification_request(),
          list()
        ) ::
          {:ok, batch_create_bill_scenario_usage_modification_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_create_bill_scenario_usage_modification_errors()}
  def batch_create_bill_scenario_usage_modification(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchCreateBillScenarioUsageModification", input, options)
  end

  @doc """

  Create Amazon Web Services service usage that you want to model in a Workload
  Estimate.
  """
  @spec batch_create_workload_estimate_usage(
          map(),
          batch_create_workload_estimate_usage_request(),
          list()
        ) ::
          {:ok, batch_create_workload_estimate_usage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_create_workload_estimate_usage_errors()}
  def batch_create_workload_estimate_usage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchCreateWorkloadEstimateUsage", input, options)
  end

  @doc """

  Delete commitment that you have created in a Bill Scenario.

  You can only delete a commitment that you had
  added and cannot model deletion (or removal) of a existing commitment. If you
  want model deletion of an existing
  commitment, see the negate [
  BillScenarioCommitmentModificationAction](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AWSBCMPricingCalculator_BillScenarioCommitmentModificationAction.html)
  of
  [
  BatchCreateBillScenarioCommitmentModification](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AWSBCMPricingCalculator_BatchCreateBillScenarioUsageModification.html)
  operation.
  """
  @spec batch_delete_bill_scenario_commitment_modification(
          map(),
          batch_delete_bill_scenario_commitment_modification_request(),
          list()
        ) ::
          {:ok, batch_delete_bill_scenario_commitment_modification_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_delete_bill_scenario_commitment_modification_errors()}
  def batch_delete_bill_scenario_commitment_modification(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "BatchDeleteBillScenarioCommitmentModification",
      input,
      options
    )
  end

  @doc """

  Delete usage that you have created in a Bill Scenario.

  You can only delete usage that you had added and cannot model
  deletion (or removal) of a existing usage. If you want model removal of an
  existing usage, see
  [
  BatchUpdateBillScenarioUsageModification](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AWSBCMPricingCalculator_BatchUpdateBillScenarioUsageModification.html).
  """
  @spec batch_delete_bill_scenario_usage_modification(
          map(),
          batch_delete_bill_scenario_usage_modification_request(),
          list()
        ) ::
          {:ok, batch_delete_bill_scenario_usage_modification_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_delete_bill_scenario_usage_modification_errors()}
  def batch_delete_bill_scenario_usage_modification(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDeleteBillScenarioUsageModification", input, options)
  end

  @doc """

  Delete usage that you have created in a Workload estimate.

  You can only delete usage that you had added and cannot model deletion
  (or removal) of a existing usage. If you want model removal of an existing
  usage, see
  [
  BatchUpdateWorkloadEstimateUsage](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_AWSBCMPricingCalculator_BatchUpdateWorkloadEstimateUsage.html).
  """
  @spec batch_delete_workload_estimate_usage(
          map(),
          batch_delete_workload_estimate_usage_request(),
          list()
        ) ::
          {:ok, batch_delete_workload_estimate_usage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_delete_workload_estimate_usage_errors()}
  def batch_delete_workload_estimate_usage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDeleteWorkloadEstimateUsage", input, options)
  end

  @doc """

  Update a newly added or existing commitment.

  You can update the commitment group based on a commitment ID and a Bill scenario
  ID.
  """
  @spec batch_update_bill_scenario_commitment_modification(
          map(),
          batch_update_bill_scenario_commitment_modification_request(),
          list()
        ) ::
          {:ok, batch_update_bill_scenario_commitment_modification_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_update_bill_scenario_commitment_modification_errors()}
  def batch_update_bill_scenario_commitment_modification(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "BatchUpdateBillScenarioCommitmentModification",
      input,
      options
    )
  end

  @doc """

  Update a newly added or existing usage lines.

  You can update the usage amounts, usage hour, and usage group based on a usage
  ID and a Bill scenario ID.
  """
  @spec batch_update_bill_scenario_usage_modification(
          map(),
          batch_update_bill_scenario_usage_modification_request(),
          list()
        ) ::
          {:ok, batch_update_bill_scenario_usage_modification_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_update_bill_scenario_usage_modification_errors()}
  def batch_update_bill_scenario_usage_modification(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchUpdateBillScenarioUsageModification", input, options)
  end

  @doc """

  Update a newly added or existing usage lines.

  You can update the usage amounts and usage group based on a usage ID and a
  Workload estimate ID.
  """
  @spec batch_update_workload_estimate_usage(
          map(),
          batch_update_workload_estimate_usage_request(),
          list()
        ) ::
          {:ok, batch_update_workload_estimate_usage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_update_workload_estimate_usage_errors()}
  def batch_update_workload_estimate_usage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchUpdateWorkloadEstimateUsage", input, options)
  end

  @doc """

  Create a Bill estimate from a Bill scenario.

  In the Bill scenario you can model usage addition, usage changes, and usage
  removal. You can also model commitment addition and commitment removal. After
  all changes in a Bill scenario is made satisfactorily, you can call this API
  with a Bill scenario ID to generate the Bill estimate. Bill estimate calculates
  the pre-tax cost for your consolidated billing family, incorporating all modeled
  usage and commitments alongside existing usage and commitments from your most
  recent completed anniversary bill, with any applicable discounts applied.
  """
  @spec create_bill_estimate(map(), create_bill_estimate_request(), list()) ::
          {:ok, create_bill_estimate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_bill_estimate_errors()}
  def create_bill_estimate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateBillEstimate", input, options)
  end

  @doc """

  Creates a new bill scenario to model potential changes to Amazon Web Services
  usage and costs.
  """
  @spec create_bill_scenario(map(), create_bill_scenario_request(), list()) ::
          {:ok, create_bill_scenario_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_bill_scenario_errors()}
  def create_bill_scenario(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateBillScenario", input, options)
  end

  @doc """

  Creates a new workload estimate to model costs for a specific workload.
  """
  @spec create_workload_estimate(map(), create_workload_estimate_request(), list()) ::
          {:ok, create_workload_estimate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_workload_estimate_errors()}
  def create_workload_estimate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateWorkloadEstimate", input, options)
  end

  @doc """

  Deletes an existing bill estimate.
  """
  @spec delete_bill_estimate(map(), delete_bill_estimate_request(), list()) ::
          {:ok, delete_bill_estimate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_bill_estimate_errors()}
  def delete_bill_estimate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteBillEstimate", input, options)
  end

  @doc """

  Deletes an existing bill scenario.
  """
  @spec delete_bill_scenario(map(), delete_bill_scenario_request(), list()) ::
          {:ok, delete_bill_scenario_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_bill_scenario_errors()}
  def delete_bill_scenario(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteBillScenario", input, options)
  end

  @doc """

  Deletes an existing workload estimate.
  """
  @spec delete_workload_estimate(map(), delete_workload_estimate_request(), list()) ::
          {:ok, delete_workload_estimate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_workload_estimate_errors()}
  def delete_workload_estimate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteWorkloadEstimate", input, options)
  end

  @doc """

  Retrieves details of a specific bill estimate.
  """
  @spec get_bill_estimate(map(), get_bill_estimate_request(), list()) ::
          {:ok, get_bill_estimate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_bill_estimate_errors()}
  def get_bill_estimate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetBillEstimate", input, options)
  end

  @doc """

  Retrieves details of a specific bill scenario.
  """
  @spec get_bill_scenario(map(), get_bill_scenario_request(), list()) ::
          {:ok, get_bill_scenario_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_bill_scenario_errors()}
  def get_bill_scenario(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetBillScenario", input, options)
  end

  @doc """

  Retrieves the current preferences for the Amazon Web Services Cost Explorer
  service.
  """
  @spec get_preferences(map(), get_preferences_request(), list()) ::
          {:ok, get_preferences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_preferences_errors()}
  def get_preferences(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPreferences", input, options)
  end

  @doc """

  Retrieves details of a specific workload estimate.
  """
  @spec get_workload_estimate(map(), get_workload_estimate_request(), list()) ::
          {:ok, get_workload_estimate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_workload_estimate_errors()}
  def get_workload_estimate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetWorkloadEstimate", input, options)
  end

  @doc """

  Lists the commitments associated with a bill estimate.
  """
  @spec list_bill_estimate_commitments(map(), list_bill_estimate_commitments_request(), list()) ::
          {:ok, list_bill_estimate_commitments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_bill_estimate_commitments_errors()}
  def list_bill_estimate_commitments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBillEstimateCommitments", input, options)
  end

  @doc """

  Lists the input commitment modifications associated with a bill estimate.
  """
  @spec list_bill_estimate_input_commitment_modifications(
          map(),
          list_bill_estimate_input_commitment_modifications_request(),
          list()
        ) ::
          {:ok, list_bill_estimate_input_commitment_modifications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_bill_estimate_input_commitment_modifications_errors()}
  def list_bill_estimate_input_commitment_modifications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "ListBillEstimateInputCommitmentModifications",
      input,
      options
    )
  end

  @doc """

  Lists the input usage modifications associated with a bill estimate.
  """
  @spec list_bill_estimate_input_usage_modifications(
          map(),
          list_bill_estimate_input_usage_modifications_request(),
          list()
        ) ::
          {:ok, list_bill_estimate_input_usage_modifications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_bill_estimate_input_usage_modifications_errors()}
  def list_bill_estimate_input_usage_modifications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBillEstimateInputUsageModifications", input, options)
  end

  @doc """

  Lists the line items associated with a bill estimate.
  """
  @spec list_bill_estimate_line_items(map(), list_bill_estimate_line_items_request(), list()) ::
          {:ok, list_bill_estimate_line_items_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_bill_estimate_line_items_errors()}
  def list_bill_estimate_line_items(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBillEstimateLineItems", input, options)
  end

  @doc """

  Lists all bill estimates for the account.
  """
  @spec list_bill_estimates(map(), list_bill_estimates_request(), list()) ::
          {:ok, list_bill_estimates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_bill_estimates_errors()}
  def list_bill_estimates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBillEstimates", input, options)
  end

  @doc """

  Lists the commitment modifications associated with a bill scenario.
  """
  @spec list_bill_scenario_commitment_modifications(
          map(),
          list_bill_scenario_commitment_modifications_request(),
          list()
        ) ::
          {:ok, list_bill_scenario_commitment_modifications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_bill_scenario_commitment_modifications_errors()}
  def list_bill_scenario_commitment_modifications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBillScenarioCommitmentModifications", input, options)
  end

  @doc """

  Lists the usage modifications associated with a bill scenario.
  """
  @spec list_bill_scenario_usage_modifications(
          map(),
          list_bill_scenario_usage_modifications_request(),
          list()
        ) ::
          {:ok, list_bill_scenario_usage_modifications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_bill_scenario_usage_modifications_errors()}
  def list_bill_scenario_usage_modifications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBillScenarioUsageModifications", input, options)
  end

  @doc """

  Lists all bill scenarios for the account.
  """
  @spec list_bill_scenarios(map(), list_bill_scenarios_request(), list()) ::
          {:ok, list_bill_scenarios_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_bill_scenarios_errors()}
  def list_bill_scenarios(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBillScenarios", input, options)
  end

  @doc """

  Lists all tags associated with a specified resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """

  Lists the usage associated with a workload estimate.
  """
  @spec list_workload_estimate_usage(map(), list_workload_estimate_usage_request(), list()) ::
          {:ok, list_workload_estimate_usage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_workload_estimate_usage_errors()}
  def list_workload_estimate_usage(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListWorkloadEstimateUsage", input, options)
  end

  @doc """

  Lists all workload estimates for the account.
  """
  @spec list_workload_estimates(map(), list_workload_estimates_request(), list()) ::
          {:ok, list_workload_estimates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_workload_estimates_errors()}
  def list_workload_estimates(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListWorkloadEstimates", input, options)
  end

  @doc """

  Adds one or more tags to a specified resource.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """

  Removes one or more tags from a specified resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """

  Updates an existing bill estimate.
  """
  @spec update_bill_estimate(map(), update_bill_estimate_request(), list()) ::
          {:ok, update_bill_estimate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_bill_estimate_errors()}
  def update_bill_estimate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateBillEstimate", input, options)
  end

  @doc """

  Updates an existing bill scenario.
  """
  @spec update_bill_scenario(map(), update_bill_scenario_request(), list()) ::
          {:ok, update_bill_scenario_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_bill_scenario_errors()}
  def update_bill_scenario(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateBillScenario", input, options)
  end

  @doc """

  Updates the preferences for the Amazon Web Services Cost Explorer service.
  """
  @spec update_preferences(map(), update_preferences_request(), list()) ::
          {:ok, update_preferences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_preferences_errors()}
  def update_preferences(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePreferences", input, options)
  end

  @doc """

  Updates an existing workload estimate.
  """
  @spec update_workload_estimate(map(), update_workload_estimate_request(), list()) ::
          {:ok, update_workload_estimate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_workload_estimate_errors()}
  def update_workload_estimate(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateWorkloadEstimate", input, options)
  end
end
