# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CostOptimizationHub do
  @moduledoc """
  You can use the Cost Optimization Hub API to programmatically identify, filter,
  aggregate, and quantify savings for your cost optimization recommendations
  across multiple Amazon Web Services Regions and Amazon Web Services accounts in
  your organization.

  The Cost Optimization Hub API provides the following endpoint:

    * https://cost-optimization-hub.us-east-1.amazonaws.com
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      ebs_volume_configuration() :: %{
        "attachmentState" => [String.t()],
        "performance" => block_storage_performance_configuration(),
        "storage" => storage_configuration()
      }
      
  """
  @type ebs_volume_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      summary_metrics_result() :: %{
        "savingsPercentage" => [String.t()]
      }
      
  """
  @type summary_metrics_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_instance_savings_plans() :: %{
        "configuration" => ec2_instance_savings_plans_configuration(),
        "costCalculation" => savings_plans_cost_calculation()
      }
      
  """
  @type ec2_instance_savings_plans() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ecs_service_configuration() :: %{
        "compute" => compute_configuration()
      }
      
  """
  @type ecs_service_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_enrollment_status() :: %{
        "accountId" => String.t(),
        "createdTimestamp" => [non_neg_integer()],
        "lastUpdatedTimestamp" => [non_neg_integer()],
        "status" => list(any())
      }
      
  """
  @type account_enrollment_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_cost_calculation() :: %{
        "pricing" => resource_pricing(),
        "usages" => list(usage()())
      }
      
  """
  @type resource_cost_calculation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_db_instance_storage_configuration() :: %{
        "allocatedStorageInGb" => [float()],
        "iops" => [float()],
        "storageThroughput" => [float()],
        "storageType" => [String.t()]
      }
      
  """
  @type rds_db_instance_storage_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_reserved_instances_configuration() :: %{
        "accountScope" => [String.t()],
        "currentGeneration" => [String.t()],
        "databaseEdition" => [String.t()],
        "databaseEngine" => [String.t()],
        "deploymentOption" => [String.t()],
        "instanceFamily" => [String.t()],
        "instanceType" => [String.t()],
        "licenseModel" => [String.t()],
        "monthlyRecurringCost" => [String.t()],
        "normalizedUnitsToPurchase" => [String.t()],
        "numberOfInstancesToPurchase" => [String.t()],
        "paymentOption" => [String.t()],
        "reservedInstancesRegion" => [String.t()],
        "service" => [String.t()],
        "sizeFlexEligible" => [boolean()],
        "term" => [String.t()],
        "upfrontCost" => [String.t()]
      }
      
  """
  @type rds_reserved_instances_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_auto_scaling_group() :: %{
        "configuration" => ec2_auto_scaling_group_configuration(),
        "costCalculation" => resource_cost_calculation()
      }
      
  """
  @type ec2_auto_scaling_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      memory_db_reserved_instances() :: %{
        "configuration" => memory_db_reserved_instances_configuration(),
        "costCalculation" => reserved_instances_cost_calculation()
      }
      
  """
  @type memory_db_reserved_instances() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_enrollment_statuses_response() :: %{
        "includeMemberAccounts" => [boolean()],
        "items" => list(account_enrollment_status()()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_enrollment_statuses_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_preferences_request() :: %{}
      
  """
  @type get_preferences_request() :: %{}

  @typedoc """

  ## Example:
      
      savings_plans_pricing() :: %{
        "estimatedMonthlyCommitment" => [float()],
        "estimatedOnDemandCost" => [float()],
        "monthlySavingsPlansEligibleCost" => [float()],
        "savingsPercentage" => [float()]
      }
      
  """
  @type savings_plans_pricing() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ecs_service() :: %{
        "configuration" => ecs_service_configuration(),
        "costCalculation" => resource_cost_calculation()
      }
      
  """
  @type ecs_service() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_instances_pricing() :: %{
        "estimatedMonthlyAmortizedReservationCost" => [float()],
        "estimatedOnDemandCost" => [float()],
        "monthlyReservationEligibleCost" => [float()],
        "savingsPercentage" => [float()]
      }
      
  """
  @type reserved_instances_pricing() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_function() :: %{
        "configuration" => lambda_function_configuration(),
        "costCalculation" => resource_cost_calculation()
      }
      
  """
  @type lambda_function() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_enrollment_statuses_request() :: %{
        optional("accountId") => String.t(),
        optional("includeOrganizationInfo") => [boolean()],
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t()]
      }
      
  """
  @type list_enrollment_statuses_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_function_configuration() :: %{
        "compute" => compute_configuration()
      }
      
  """
  @type lambda_function_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_recommendation_request() :: %{
        required("recommendationId") => [String.t()]
      }
      
  """
  @type get_recommendation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      preferred_commitment() :: %{
        "paymentOption" => list(any()),
        "term" => list(any())
      }
      
  """
  @type preferred_commitment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_reserved_instances() :: %{
        "configuration" => redshift_reserved_instances_configuration(),
        "costCalculation" => reserved_instances_cost_calculation()
      }
      
  """
  @type redshift_reserved_instances() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      order_by() :: %{
        "dimension" => [String.t()],
        "order" => list(any())
      }
      
  """
  @type order_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_enrollment_status_request() :: %{
        optional("includeMemberAccounts") => [boolean()],
        required("status") => list(any())
      }
      
  """
  @type update_enrollment_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_reserved_instances() :: %{
        "configuration" => rds_reserved_instances_configuration(),
        "costCalculation" => reserved_instances_cost_calculation()
      }
      
  """
  @type rds_reserved_instances() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      usage() :: %{
        "operation" => [String.t()],
        "productCode" => [String.t()],
        "unit" => [String.t()],
        "usageAmount" => [float()],
        "usageType" => [String.t()]
      }
      
  """
  @type usage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_pricing() :: %{
        "estimatedCostAfterDiscounts" => [float()],
        "estimatedCostBeforeDiscounts" => [float()],
        "estimatedDiscounts" => estimated_discounts(),
        "estimatedNetUnusedAmortizedCommitments" => [float()]
      }
      
  """
  @type resource_pricing() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      open_search_reserved_instances() :: %{
        "configuration" => open_search_reserved_instances_configuration(),
        "costCalculation" => reserved_instances_cost_calculation()
      }
      
  """
  @type open_search_reserved_instances() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_enrollment_status_response() :: %{
        "status" => [String.t()]
      }
      
  """
  @type update_enrollment_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dynamo_db_reserved_capacity_configuration() :: %{
        "accountScope" => [String.t()],
        "capacityUnits" => [String.t()],
        "monthlyRecurringCost" => [String.t()],
        "numberOfCapacityUnitsToPurchase" => [String.t()],
        "paymentOption" => [String.t()],
        "reservedInstancesRegion" => [String.t()],
        "service" => [String.t()],
        "term" => [String.t()],
        "upfrontCost" => [String.t()]
      }
      
  """
  @type dynamo_db_reserved_capacity_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_preferences_response() :: %{
        "memberAccountDiscountVisibility" => list(any()),
        "preferredCommitment" => preferred_commitment(),
        "savingsEstimationMode" => list(any())
      }
      
  """
  @type get_preferences_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      elasti_cache_reserved_instances() :: %{
        "configuration" => elasti_cache_reserved_instances_configuration(),
        "costCalculation" => reserved_instances_cost_calculation()
      }
      
  """
  @type elasti_cache_reserved_instances() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      redshift_reserved_instances_configuration() :: %{
        "accountScope" => [String.t()],
        "currentGeneration" => [String.t()],
        "instanceFamily" => [String.t()],
        "instanceType" => [String.t()],
        "monthlyRecurringCost" => [String.t()],
        "normalizedUnitsToPurchase" => [String.t()],
        "numberOfInstancesToPurchase" => [String.t()],
        "paymentOption" => [String.t()],
        "reservedInstancesRegion" => [String.t()],
        "service" => [String.t()],
        "sizeFlexEligible" => [boolean()],
        "term" => [String.t()],
        "upfrontCost" => [String.t()]
      }
      
  """
  @type redshift_reserved_instances_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_recommendation_summaries_response() :: %{
        "currencyCode" => [String.t()],
        "estimatedTotalDedupedSavings" => [float()],
        "groupBy" => [String.t()],
        "items" => list(recommendation_summary()()),
        "metrics" => summary_metrics_result(),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_recommendation_summaries_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "resourceId" => [String.t()]
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "key" => [String.t()],
        "value" => [String.t()]
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ebs_volume() :: %{
        "configuration" => ebs_volume_configuration(),
        "costCalculation" => resource_cost_calculation()
      }
      
  """
  @type ebs_volume() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_reserved_instances() :: %{
        "configuration" => ec2_reserved_instances_configuration(),
        "costCalculation" => reserved_instances_cost_calculation()
      }
      
  """
  @type ec2_reserved_instances() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_reserved_instances_configuration() :: %{
        "accountScope" => [String.t()],
        "currentGeneration" => [String.t()],
        "instanceFamily" => [String.t()],
        "instanceType" => [String.t()],
        "monthlyRecurringCost" => [String.t()],
        "normalizedUnitsToPurchase" => [String.t()],
        "numberOfInstancesToPurchase" => [String.t()],
        "offeringClass" => [String.t()],
        "paymentOption" => [String.t()],
        "platform" => [String.t()],
        "reservedInstancesRegion" => [String.t()],
        "service" => [String.t()],
        "sizeFlexEligible" => [boolean()],
        "tenancy" => [String.t()],
        "term" => [String.t()],
        "upfrontCost" => [String.t()]
      }
      
  """
  @type ec2_reserved_instances_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation() :: %{
        "accountId" => [String.t()],
        "actionType" => [String.t()],
        "currencyCode" => [String.t()],
        "currentResourceSummary" => [String.t()],
        "currentResourceType" => [String.t()],
        "estimatedMonthlyCost" => [float()],
        "estimatedMonthlySavings" => [float()],
        "estimatedSavingsPercentage" => [float()],
        "implementationEffort" => [String.t()],
        "lastRefreshTimestamp" => non_neg_integer(),
        "recommendationId" => [String.t()],
        "recommendationLookbackPeriodInDays" => [integer()],
        "recommendedResourceSummary" => [String.t()],
        "recommendedResourceType" => [String.t()],
        "region" => [String.t()],
        "resourceArn" => [String.t()],
        "resourceId" => [String.t()],
        "restartNeeded" => [boolean()],
        "rollbackPossible" => [boolean()],
        "source" => list(any()),
        "tags" => list(tag()())
      }
      
  """
  @type recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compute_savings_plans_configuration() :: %{
        "accountScope" => [String.t()],
        "hourlyCommitment" => [String.t()],
        "paymentOption" => [String.t()],
        "term" => [String.t()]
      }
      
  """
  @type compute_savings_plans_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_preferences_request() :: %{
        optional("memberAccountDiscountVisibility") => list(any()),
        optional("preferredCommitment") => preferred_commitment(),
        optional("savingsEstimationMode") => list(any())
      }
      
  """
  @type update_preferences_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_preferences_response() :: %{
        "memberAccountDiscountVisibility" => list(any()),
        "preferredCommitment" => preferred_commitment(),
        "savingsEstimationMode" => list(any())
      }
      
  """
  @type update_preferences_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      storage_configuration() :: %{
        "sizeInGb" => [float()],
        "type" => [String.t()]
      }
      
  """
  @type storage_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      memory_db_reserved_instances_configuration() :: %{
        "accountScope" => [String.t()],
        "currentGeneration" => [String.t()],
        "instanceFamily" => [String.t()],
        "instanceType" => [String.t()],
        "monthlyRecurringCost" => [String.t()],
        "normalizedUnitsToPurchase" => [String.t()],
        "numberOfInstancesToPurchase" => [String.t()],
        "paymentOption" => [String.t()],
        "reservedInstancesRegion" => [String.t()],
        "service" => [String.t()],
        "sizeFlexEligible" => [boolean()],
        "term" => [String.t()],
        "upfrontCost" => [String.t()]
      }
      
  """
  @type memory_db_reserved_instances_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      block_storage_performance_configuration() :: %{
        "iops" => [float()],
        "throughput" => [float()]
      }
      
  """
  @type block_storage_performance_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reserved_instances_cost_calculation() :: %{
        "pricing" => reserved_instances_pricing()
      }
      
  """
  @type reserved_instances_cost_calculation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      mixed_instance_configuration() :: %{
        "type" => [String.t()]
      }
      
  """
  @type mixed_instance_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      elasti_cache_reserved_instances_configuration() :: %{
        "accountScope" => [String.t()],
        "currentGeneration" => [String.t()],
        "instanceFamily" => [String.t()],
        "instanceType" => [String.t()],
        "monthlyRecurringCost" => [String.t()],
        "normalizedUnitsToPurchase" => [String.t()],
        "numberOfInstancesToPurchase" => [String.t()],
        "paymentOption" => [String.t()],
        "reservedInstancesRegion" => [String.t()],
        "service" => [String.t()],
        "sizeFlexEligible" => [boolean()],
        "term" => [String.t()],
        "upfrontCost" => [String.t()]
      }
      
  """
  @type elasti_cache_reserved_instances_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_instance() :: %{
        "configuration" => ec2_instance_configuration(),
        "costCalculation" => resource_cost_calculation()
      }
      
  """
  @type ec2_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      savings_plans_cost_calculation() :: %{
        "pricing" => savings_plans_pricing()
      }
      
  """
  @type savings_plans_cost_calculation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "accountIds" => list(String.t()()),
        "actionTypes" => list(list(any())()),
        "implementationEfforts" => list(list(any())()),
        "recommendationIds" => list([String.t()]()),
        "regions" => list([String.t()]()),
        "resourceArns" => list([String.t()]()),
        "resourceIds" => list([String.t()]()),
        "resourceTypes" => list(list(any())()),
        "restartNeeded" => [boolean()],
        "rollbackPossible" => [boolean()],
        "tags" => list(tag()())
      }
      
  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception_detail() :: %{
        "fieldName" => [String.t()],
        "message" => [String.t()]
      }
      
  """
  @type validation_exception_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_auto_scaling_group_configuration() :: %{
        "allocationStrategy" => list(any()),
        "instance" => instance_configuration(),
        "mixedInstances" => list(mixed_instance_configuration()()),
        "type" => list(any())
      }
      
  """
  @type ec2_auto_scaling_group_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_db_instance_configuration() :: %{
        "instance" => db_instance_configuration()
      }
      
  """
  @type rds_db_instance_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sage_maker_savings_plans() :: %{
        "configuration" => sage_maker_savings_plans_configuration(),
        "costCalculation" => savings_plans_cost_calculation()
      }
      
  """
  @type sage_maker_savings_plans() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_instance_configuration() :: %{
        "instance" => instance_configuration()
      }
      
  """
  @type ec2_instance_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_instance_configuration() :: %{
        "dbInstanceClass" => [String.t()]
      }
      
  """
  @type db_instance_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compute_savings_plans() :: %{
        "configuration" => compute_savings_plans_configuration(),
        "costCalculation" => savings_plans_cost_calculation()
      }
      
  """
  @type compute_savings_plans() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      estimated_discounts() :: %{
        "otherDiscount" => [float()],
        "reservedInstancesDiscount" => [float()],
        "savingsPlansDiscount" => [float()]
      }
      
  """
  @type estimated_discounts() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sage_maker_savings_plans_configuration() :: %{
        "accountScope" => [String.t()],
        "hourlyCommitment" => [String.t()],
        "paymentOption" => [String.t()],
        "term" => [String.t()]
      }
      
  """
  @type sage_maker_savings_plans_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_configuration() :: %{
        "type" => [String.t()]
      }
      
  """
  @type instance_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "fields" => list(validation_exception_detail()()),
        "message" => [String.t()],
        "reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ec2_instance_savings_plans_configuration() :: %{
        "accountScope" => [String.t()],
        "hourlyCommitment" => [String.t()],
        "instanceFamily" => [String.t()],
        "paymentOption" => [String.t()],
        "savingsPlansRegion" => [String.t()],
        "term" => [String.t()]
      }
      
  """
  @type ec2_instance_savings_plans_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_db_instance() :: %{
        "configuration" => rds_db_instance_configuration(),
        "costCalculation" => resource_cost_calculation()
      }
      
  """
  @type rds_db_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_recommendation_summaries_request() :: %{
        optional("filter") => filter(),
        optional("maxResults") => integer(),
        optional("metrics") => list(list(any())()),
        optional("nextToken") => [String.t()],
        required("groupBy") => [String.t()]
      }
      
  """
  @type list_recommendation_summaries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      open_search_reserved_instances_configuration() :: %{
        "accountScope" => [String.t()],
        "currentGeneration" => [String.t()],
        "instanceType" => [String.t()],
        "monthlyRecurringCost" => [String.t()],
        "normalizedUnitsToPurchase" => [String.t()],
        "numberOfInstancesToPurchase" => [String.t()],
        "paymentOption" => [String.t()],
        "reservedInstancesRegion" => [String.t()],
        "service" => [String.t()],
        "sizeFlexEligible" => [boolean()],
        "term" => [String.t()],
        "upfrontCost" => [String.t()]
      }
      
  """
  @type open_search_reserved_instances_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation_summary() :: %{
        "estimatedMonthlySavings" => [float()],
        "group" => [String.t()],
        "recommendationCount" => [integer()]
      }
      
  """
  @type recommendation_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_recommendations_response() :: %{
        "items" => list(recommendation()()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_recommendation_response() :: %{
        "accountId" => [String.t()],
        "actionType" => list(any()),
        "costCalculationLookbackPeriodInDays" => [integer()],
        "currencyCode" => [String.t()],
        "currentResourceDetails" => list(),
        "currentResourceType" => list(any()),
        "estimatedMonthlyCost" => [float()],
        "estimatedMonthlySavings" => [float()],
        "estimatedSavingsOverCostCalculationLookbackPeriod" => [float()],
        "estimatedSavingsPercentage" => [float()],
        "implementationEffort" => list(any()),
        "lastRefreshTimestamp" => non_neg_integer(),
        "recommendationId" => [String.t()],
        "recommendationLookbackPeriodInDays" => [integer()],
        "recommendedResourceDetails" => list(),
        "recommendedResourceType" => list(any()),
        "region" => [String.t()],
        "resourceArn" => [String.t()],
        "resourceId" => [String.t()],
        "restartNeeded" => [boolean()],
        "rollbackPossible" => [boolean()],
        "source" => list(any()),
        "tags" => list(tag()())
      }
      
  """
  @type get_recommendation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dynamo_db_reserved_capacity() :: %{
        "configuration" => dynamo_db_reserved_capacity_configuration(),
        "costCalculation" => reserved_instances_cost_calculation()
      }
      
  """
  @type dynamo_db_reserved_capacity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_db_instance_storage() :: %{
        "configuration" => rds_db_instance_storage_configuration(),
        "costCalculation" => resource_cost_calculation()
      }
      
  """
  @type rds_db_instance_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_recommendations_request() :: %{
        optional("filter") => filter(),
        optional("includeAllRecommendations") => [boolean()],
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t()],
        optional("orderBy") => order_by()
      }
      
  """
  @type list_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      compute_configuration() :: %{
        "architecture" => [String.t()],
        "memorySizeInMB" => [integer()],
        "platform" => [String.t()],
        "vCpu" => [float()]
      }
      
  """
  @type compute_configuration() :: %{String.t() => any()}

  @type get_preferences_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_recommendation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_enrollment_statuses_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_recommendation_summaries_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_recommendations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type update_enrollment_status_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type update_preferences_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  def metadata do
    %{
      api_version: "2022-07-26",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "cost-optimization-hub",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Cost Optimization Hub",
      signature_version: "v4",
      signing_name: "cost-optimization-hub",
      target_prefix: "CostOptimizationHubService"
    }
  end

  @doc """
  Returns a set of preferences for an account in order to add account-specific
  preferences into the service.

  These preferences impact how the savings associated with recommendations are
  presented—estimated savings after discounts or estimated savings before
  discounts, for example.
  """
  @spec get_preferences(map(), get_preferences_request(), list()) ::
          {:ok, get_preferences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_preferences_errors()}
  def get_preferences(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPreferences", input, options)
  end

  @doc """
  Returns both the current and recommended resource configuration and the
  estimated cost impact for a recommendation.

  The `recommendationId` is only valid for up to a maximum of 24 hours as
  recommendations are refreshed daily. To retrieve the `recommendationId`, use the
  `ListRecommendations` API.
  """
  @spec get_recommendation(map(), get_recommendation_request(), list()) ::
          {:ok, get_recommendation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_recommendation_errors()}
  def get_recommendation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRecommendation", input, options)
  end

  @doc """
  Retrieves the enrollment status for an account.

  It can also return the list of accounts that are enrolled under the
  organization.
  """
  @spec list_enrollment_statuses(map(), list_enrollment_statuses_request(), list()) ::
          {:ok, list_enrollment_statuses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_enrollment_statuses_errors()}
  def list_enrollment_statuses(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEnrollmentStatuses", input, options)
  end

  @doc """
  Returns a concise representation of savings estimates for resources.

  Also returns de-duped savings across different types of recommendations.

  The following filters are not supported for this API: `recommendationIds`,
  `resourceArns`, and `resourceIds`.
  """
  @spec list_recommendation_summaries(map(), list_recommendation_summaries_request(), list()) ::
          {:ok, list_recommendation_summaries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_recommendation_summaries_errors()}
  def list_recommendation_summaries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRecommendationSummaries", input, options)
  end

  @doc """
  Returns a list of recommendations.
  """
  @spec list_recommendations(map(), list_recommendations_request(), list()) ::
          {:ok, list_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_recommendations_errors()}
  def list_recommendations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRecommendations", input, options)
  end

  @doc """
  Updates the enrollment (opt in and opt out) status of an account to the Cost
  Optimization Hub service.

  If the account is a management account or delegated administrator of an
  organization, this action can also be used to enroll member accounts of the
  organization.

  You must have the appropriate permissions to opt in to Cost Optimization Hub and
  to view its recommendations. When you opt in, Cost Optimization Hub
  automatically creates a service-linked role in your account to access its data.
  """
  @spec update_enrollment_status(map(), update_enrollment_status_request(), list()) ::
          {:ok, update_enrollment_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_enrollment_status_errors()}
  def update_enrollment_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateEnrollmentStatus", input, options)
  end

  @doc """
  Updates a set of preferences for an account in order to add account-specific
  preferences into the service.

  These preferences impact how the savings associated with recommendations are
  presented.
  """
  @spec update_preferences(map(), update_preferences_request(), list()) ::
          {:ok, update_preferences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_preferences_errors()}
  def update_preferences(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePreferences", input, options)
  end
end
