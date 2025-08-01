# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CostExplorer do
  @moduledoc """
  You can use the Cost Explorer API to programmatically query your cost and usage
  data.

  You can query for aggregated data such as total monthly costs or total daily
  usage. You can
  also query for granular data. This might include the number of daily write
  operations for
  Amazon DynamoDB database tables in your production environment.

  Service Endpoint

  The Cost Explorer API provides the following endpoint:

    *

  `https://ce.us-east-1.amazonaws.com`

  For information about the costs that are associated with the Cost Explorer API,
  see
  [Amazon Web Services Cost Management Pricing](http://aws.amazon.com/aws-cost-management/pricing/).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      create_anomaly_monitor_request() :: %{
        optional("ResourceTags") => list(resource_tag()),
        required("AnomalyMonitor") => anomaly_monitor()
      }
      
  """
  @type create_anomaly_monitor_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_details() :: %{
        "EC2InstanceDetails" => ec2_instance_details(),
        "ESInstanceDetails" => e_s_instance_details(),
        "ElastiCacheInstanceDetails" => elasti_cache_instance_details(),
        "MemoryDBInstanceDetails" => memory_db_instance_details(),
        "RDSInstanceDetails" => rds_instance_details(),
        "RedshiftInstanceDetails" => redshift_instance_details()
      }
      
  """
  @type instance_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      savings_plans_amortized_commitment() :: %{
        "AmortizedRecurringCommitment" => String.t() | atom(),
        "AmortizedUpfrontCommitment" => String.t() | atom(),
        "TotalAmortizedCommitment" => String.t() | atom()
      }
      
  """
  @type savings_plans_amortized_commitment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_cost_allocation_tags_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Status") => list(any()),
        optional("TagKeys") => list(String.t() | atom()),
        optional("Type") => list(any())
      }
      
  """
  @type list_cost_allocation_tags_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_cost_category_definitions_request() :: %{
        optional("EffectiveOn") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_cost_category_definitions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reservation_purchase_recommendation_summary() :: %{
        "CurrencyCode" => String.t() | atom(),
        "TotalEstimatedMonthlySavingsAmount" => String.t() | atom(),
        "TotalEstimatedMonthlySavingsPercentage" => String.t() | atom()
      }
      
  """
  @type reservation_purchase_recommendation_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_reservation_purchase_recommendation_request() :: %{
        optional("AccountId") => String.t() | atom(),
        optional("AccountScope") => list(any()),
        optional("Filter") => expression(),
        optional("LookbackPeriodInDays") => list(any()),
        optional("NextPageToken") => String.t() | atom(),
        optional("PageSize") => integer(),
        optional("PaymentOption") => list(any()),
        optional("ServiceSpecification") => service_specification(),
        optional("TermInYears") => list(any()),
        required("Service") => String.t() | atom()
      }
      
  """
  @type get_reservation_purchase_recommendation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t() | atom(),
        required("ResourceTags") => list(resource_tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cost_allocation_tag_status_entry() :: %{
        "Status" => list(any()),
        "TagKey" => String.t() | atom()
      }
      
  """
  @type cost_allocation_tag_status_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_savings_plans_utilization_details_response() :: %{
        "NextToken" => String.t() | atom(),
        "SavingsPlansUtilizationDetails" => list(savings_plans_utilization_detail()),
        "TimePeriod" => date_interval(),
        "Total" => savings_plans_utilization_aggregates()
      }
      
  """
  @type get_savings_plans_utilization_details_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_cost_and_usage_response() :: %{
        "DimensionValueAttributes" => list(dimension_values_with_attributes()),
        "GroupDefinitions" => list(group_definition()),
        "NextPageToken" => String.t() | atom(),
        "ResultsByTime" => list(result_by_time())
      }
      
  """
  @type get_cost_and_usage_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_anomaly_subscriptions_response() :: %{
        "AnomalySubscriptions" => list(anomaly_subscription()),
        "NextPageToken" => String.t() | atom()
      }
      
  """
  @type get_anomaly_subscriptions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      generation_exists_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type generation_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      coverage_by_time() :: %{
        "Groups" => list(reservation_coverage_group()),
        "TimePeriod" => date_interval(),
        "Total" => coverage()
      }
      
  """
  @type coverage_by_time() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_utilization() :: %{
        "EC2ResourceUtilization" => ec2_resource_utilization()
      }
      
  """
  @type resource_utilization() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_tags_request() :: %{
        optional("BillingViewArn") => String.t() | atom(),
        optional("Filter") => expression(),
        optional("MaxResults") => integer(),
        optional("NextPageToken") => String.t() | atom(),
        optional("SearchString") => String.t() | atom(),
        optional("SortBy") => list(sort_definition()),
        optional("TagKey") => String.t() | atom(),
        required("TimePeriod") => date_interval()
      }
      
  """
  @type get_tags_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_cost_and_usage_with_resources_request() :: %{
        optional("BillingViewArn") => String.t() | atom(),
        optional("GroupBy") => list(group_definition()),
        optional("Metrics") => list(String.t() | atom()),
        optional("NextPageToken") => String.t() | atom(),
        required("Filter") => expression(),
        required("Granularity") => list(any()),
        required("TimePeriod") => date_interval()
      }
      
  """
  @type get_cost_and_usage_with_resources_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_anomaly_subscription_request() :: %{
        optional("ResourceTags") => list(resource_tag()),
        required("AnomalySubscription") => anomaly_subscription()
      }
      
  """
  @type create_anomaly_subscription_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      get_savings_plans_purchase_recommendation_request() :: %{
        optional("AccountScope") => list(any()),
        optional("Filter") => expression(),
        optional("NextPageToken") => String.t() | atom(),
        optional("PageSize") => integer(),
        required("LookbackPeriodInDays") => list(any()),
        required("PaymentOption") => list(any()),
        required("SavingsPlansType") => list(any()),
        required("TermInYears") => list(any())
      }
      
  """
  @type get_savings_plans_purchase_recommendation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      anomaly_subscription() :: %{
        "AccountId" => String.t() | atom(),
        "Frequency" => list(any()),
        "MonitorArnList" => list(String.t() | atom()),
        "Subscribers" => list(subscriber()),
        "SubscriptionArn" => String.t() | atom(),
        "SubscriptionName" => String.t() | atom(),
        "Threshold" => float(),
        "ThresholdExpression" => expression()
      }
      
  """
  @type anomaly_subscription() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_anomaly_monitors_response() :: %{
        "AnomalyMonitors" => list(anomaly_monitor()),
        "NextPageToken" => String.t() | atom()
      }
      
  """
  @type get_anomaly_monitors_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      coverage_cost() :: %{
        "OnDemandCost" => String.t() | atom()
      }
      
  """
  @type coverage_cost() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_anomaly_monitor_response() :: %{}
      
  """
  @type delete_anomaly_monitor_response() :: %{}

  @typedoc """

  ## Example:
      
      get_cost_forecast_response() :: %{
        "ForecastResultsByTime" => list(forecast_result()),
        "Total" => metric_value()
      }
      
  """
  @type get_cost_forecast_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rightsizing_recommendation_summary() :: %{
        "EstimatedTotalMonthlySavingsAmount" => String.t() | atom(),
        "SavingsCurrencyCode" => String.t() | atom(),
        "SavingsPercentage" => String.t() | atom(),
        "TotalRecommendationCount" => String.t() | atom()
      }
      
  """
  @type rightsizing_recommendation_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_cost_category_definition_request() :: %{
        optional("DefaultValue") => String.t() | atom(),
        optional("EffectiveStart") => String.t() | atom(),
        optional("ResourceTags") => list(resource_tag()),
        optional("SplitChargeRules") => list(cost_category_split_charge_rule()),
        required("Name") => String.t() | atom(),
        required("RuleVersion") => list(any()),
        required("Rules") => list(cost_category_rule())
      }
      
  """
  @type create_cost_category_definition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_cost_and_usage_with_resources_response() :: %{
        "DimensionValueAttributes" => list(dimension_values_with_attributes()),
        "GroupDefinitions" => list(group_definition()),
        "NextPageToken" => String.t() | atom(),
        "ResultsByTime" => list(result_by_time())
      }
      
  """
  @type get_cost_and_usage_with_resources_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      date_interval() :: %{
        "End" => String.t() | atom(),
        "Start" => String.t() | atom()
      }
      
  """
  @type date_interval() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      savings_plans_purchase_recommendation_summary() :: %{
        "CurrencyCode" => String.t() | atom(),
        "CurrentOnDemandSpend" => String.t() | atom(),
        "DailyCommitmentToPurchase" => String.t() | atom(),
        "EstimatedMonthlySavingsAmount" => String.t() | atom(),
        "EstimatedOnDemandCostWithCurrentCommitment" => String.t() | atom(),
        "EstimatedROI" => String.t() | atom(),
        "EstimatedSavingsAmount" => String.t() | atom(),
        "EstimatedSavingsPercentage" => String.t() | atom(),
        "EstimatedTotalCost" => String.t() | atom(),
        "HourlyCommitmentToPurchase" => String.t() | atom(),
        "TotalRecommendationCount" => String.t() | atom()
      }
      
  """
  @type savings_plans_purchase_recommendation_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_cost_comparison_drivers_response() :: %{
        "CostComparisonDrivers" => list(cost_comparison_driver()),
        "NextPageToken" => String.t() | atom()
      }
      
  """
  @type get_cost_comparison_drivers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_values() :: %{
        "Key" => String.t() | atom(),
        "MatchOptions" => list(list(any())()),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type tag_values() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      recommendation_detail_data() :: %{
        "AccountId" => String.t() | atom(),
        "AccountScope" => list(any()),
        "CurrencyCode" => String.t() | atom(),
        "CurrentAverageCoverage" => String.t() | atom(),
        "CurrentAverageHourlyOnDemandSpend" => String.t() | atom(),
        "CurrentMaximumHourlyOnDemandSpend" => String.t() | atom(),
        "CurrentMinimumHourlyOnDemandSpend" => String.t() | atom(),
        "EstimatedAverageCoverage" => String.t() | atom(),
        "EstimatedAverageUtilization" => String.t() | atom(),
        "EstimatedMonthlySavingsAmount" => String.t() | atom(),
        "EstimatedOnDemandCost" => String.t() | atom(),
        "EstimatedOnDemandCostWithCurrentCommitment" => String.t() | atom(),
        "EstimatedROI" => String.t() | atom(),
        "EstimatedSPCost" => String.t() | atom(),
        "EstimatedSavingsAmount" => String.t() | atom(),
        "EstimatedSavingsPercentage" => String.t() | atom(),
        "ExistingHourlyCommitment" => String.t() | atom(),
        "GenerationTimestamp" => String.t() | atom(),
        "HourlyCommitmentToPurchase" => String.t() | atom(),
        "InstanceFamily" => String.t() | atom(),
        "LatestUsageTimestamp" => String.t() | atom(),
        "LookbackPeriodInDays" => list(any()),
        "MetricsOverLookbackPeriod" => list(recommendation_detail_hourly_metrics()),
        "OfferingId" => String.t() | atom(),
        "PaymentOption" => list(any()),
        "Region" => String.t() | atom(),
        "SavingsPlansType" => list(any()),
        "TermInYears" => list(any()),
        "UpfrontCost" => String.t() | atom()
      }
      
  """
  @type recommendation_detail_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_anomaly_monitor_response() :: %{
        "MonitorArn" => String.t() | atom()
      }
      
  """
  @type update_anomaly_monitor_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cost_and_usage_comparison() :: %{
        "CostAndUsageSelector" => expression(),
        "Metrics" => map()
      }
      
  """
  @type cost_and_usage_comparison() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_savings_plans_utilization_details_request() :: %{
        optional("DataType") => list(list(any())()),
        optional("Filter") => expression(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SortBy") => sort_definition(),
        required("TimePeriod") => date_interval()
      }
      
  """
  @type get_savings_plans_utilization_details_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_cost_category_definition_response() :: %{
        "CostCategoryArn" => String.t() | atom(),
        "EffectiveStart" => String.t() | atom()
      }
      
  """
  @type update_cost_category_definition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      e_s_instance_details() :: %{
        "CurrentGeneration" => boolean(),
        "InstanceClass" => String.t() | atom(),
        "InstanceSize" => String.t() | atom(),
        "Region" => String.t() | atom(),
        "SizeFlexEligible" => boolean()
      }
      
  """
  @type e_s_instance_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      anomaly_date_interval() :: %{
        "EndDate" => String.t() | atom(),
        "StartDate" => String.t() | atom()
      }
      
  """
  @type anomaly_date_interval() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      utilization_by_time() :: %{
        "Groups" => list(reservation_utilization_group()),
        "TimePeriod" => date_interval(),
        "Total" => reservation_aggregates()
      }
      
  """
  @type utilization_by_time() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reservation_utilization_group() :: %{
        "Attributes" => map(),
        "Key" => String.t() | atom(),
        "Utilization" => reservation_aggregates(),
        "Value" => String.t() | atom()
      }
      
  """
  @type reservation_utilization_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      analysis_summary() :: %{
        "AnalysisCompletionTime" => String.t() | atom(),
        "AnalysisId" => String.t() | atom(),
        "AnalysisStartedTime" => String.t() | atom(),
        "AnalysisStatus" => list(any()),
        "CommitmentPurchaseAnalysisConfiguration" => commitment_purchase_analysis_configuration(),
        "ErrorCode" => list(any()),
        "EstimatedCompletionTime" => String.t() | atom()
      }
      
  """
  @type analysis_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_cost_category_definition_response() :: %{
        "CostCategoryArn" => String.t() | atom(),
        "EffectiveStart" => String.t() | atom()
      }
      
  """
  @type create_cost_category_definition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_cost_category_definitions_response() :: %{
        "CostCategoryReferences" => list(cost_category_reference()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_cost_category_definitions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_reservation_coverage_request() :: %{
        optional("Filter") => expression(),
        optional("Granularity") => list(any()),
        optional("GroupBy") => list(group_definition()),
        optional("MaxResults") => integer(),
        optional("Metrics") => list(String.t() | atom()),
        optional("NextPageToken") => String.t() | atom(),
        optional("SortBy") => sort_definition(),
        required("TimePeriod") => date_interval()
      }
      
  """
  @type get_reservation_coverage_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ec2_specification() :: %{
        "OfferingClass" => list(any())
      }
      
  """
  @type ec2_specification() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_cost_allocation_tag_backfill_request() :: %{
        required("BackfillFrom") => String.t() | atom()
      }
      
  """
  @type start_cost_allocation_tag_backfill_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_cost_category_definition_request() :: %{
        optional("EffectiveOn") => String.t() | atom(),
        required("CostCategoryArn") => String.t() | atom()
      }
      
  """
  @type describe_cost_category_definition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cost_category_split_charge_rule_parameter() :: %{
        "Type" => list(any()),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type cost_category_split_charge_rule_parameter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rightsizing_recommendation_metadata() :: %{
        "AdditionalMetadata" => String.t() | atom(),
        "GenerationTimestamp" => String.t() | atom(),
        "LookbackPeriodInDays" => list(any()),
        "RecommendationId" => String.t() | atom()
      }
      
  """
  @type rightsizing_recommendation_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      savings_plans_utilization() :: %{
        "TotalCommitment" => String.t() | atom(),
        "UnusedCommitment" => String.t() | atom(),
        "UsedCommitment" => String.t() | atom(),
        "UtilizationPercentage" => String.t() | atom()
      }
      
  """
  @type savings_plans_utilization() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ec2_instance_details() :: %{
        "AvailabilityZone" => String.t() | atom(),
        "CurrentGeneration" => boolean(),
        "Family" => String.t() | atom(),
        "InstanceType" => String.t() | atom(),
        "Platform" => String.t() | atom(),
        "Region" => String.t() | atom(),
        "SizeFlexEligible" => boolean(),
        "Tenancy" => String.t() | atom()
      }
      
  """
  @type ec2_instance_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rightsizing_recommendation() :: %{
        "AccountId" => String.t() | atom(),
        "CurrentInstance" => current_instance(),
        "FindingReasonCodes" => list(list(any())()),
        "ModifyRecommendationDetail" => modify_recommendation_detail(),
        "RightsizingType" => list(any()),
        "TerminateRecommendationDetail" => terminate_recommendation_detail()
      }
      
  """
  @type rightsizing_recommendation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_approximate_usage_records_response() :: %{
        "LookbackPeriod" => date_interval(),
        "Services" => map(),
        "TotalRecords" => float()
      }
      
  """
  @type get_approximate_usage_records_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceArn") => String.t() | atom(),
        required("ResourceTagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      terminate_recommendation_detail() :: %{
        "CurrencyCode" => String.t() | atom(),
        "EstimatedMonthlySavings" => String.t() | atom()
      }
      
  """
  @type terminate_recommendation_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_cost_forecast_request() :: %{
        optional("BillingViewArn") => String.t() | atom(),
        optional("Filter") => expression(),
        optional("PredictionIntervalLevel") => integer(),
        required("Granularity") => list(any()),
        required("Metric") => list(any()),
        required("TimePeriod") => date_interval()
      }
      
  """
  @type get_cost_forecast_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      savings_plans_purchase_analysis_details() :: %{
        "AdditionalMetadata" => String.t() | atom(),
        "CurrencyCode" => String.t() | atom(),
        "CurrentAverageCoverage" => String.t() | atom(),
        "CurrentAverageHourlyOnDemandSpend" => String.t() | atom(),
        "CurrentMaximumHourlyOnDemandSpend" => String.t() | atom(),
        "CurrentMinimumHourlyOnDemandSpend" => String.t() | atom(),
        "CurrentOnDemandSpend" => String.t() | atom(),
        "EstimatedAverageCoverage" => String.t() | atom(),
        "EstimatedAverageUtilization" => String.t() | atom(),
        "EstimatedCommitmentCost" => String.t() | atom(),
        "EstimatedMonthlySavingsAmount" => String.t() | atom(),
        "EstimatedOnDemandCost" => String.t() | atom(),
        "EstimatedOnDemandCostWithCurrentCommitment" => String.t() | atom(),
        "EstimatedROI" => String.t() | atom(),
        "EstimatedSavingsAmount" => String.t() | atom(),
        "EstimatedSavingsPercentage" => String.t() | atom(),
        "ExistingHourlyCommitment" => String.t() | atom(),
        "HourlyCommitmentToPurchase" => String.t() | atom(),
        "LatestUsageTimestamp" => String.t() | atom(),
        "LookbackPeriodInHours" => String.t() | atom(),
        "MetricsOverLookbackPeriod" => list(recommendation_detail_hourly_metrics()),
        "UpfrontCost" => String.t() | atom()
      }
      
  """
  @type savings_plans_purchase_analysis_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      savings_plans_savings() :: %{
        "NetSavings" => String.t() | atom(),
        "OnDemandCostEquivalent" => String.t() | atom()
      }
      
  """
  @type savings_plans_savings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      generation_summary() :: %{
        "EstimatedCompletionTime" => String.t() | atom(),
        "GenerationCompletionTime" => String.t() | atom(),
        "GenerationStartedTime" => String.t() | atom(),
        "GenerationStatus" => list(any()),
        "RecommendationId" => String.t() | atom()
      }
      
  """
  @type generation_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dimension_values_with_attributes() :: %{
        "Attributes" => map(),
        "Value" => String.t() | atom()
      }
      
  """
  @type dimension_values_with_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      group_definition() :: %{
        "Key" => String.t() | atom(),
        "Type" => list(any())
      }
      
  """
  @type group_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_reservation_utilization_response() :: %{
        "NextPageToken" => String.t() | atom(),
        "Total" => reservation_aggregates(),
        "UtilizationsByTime" => list(utilization_by_time())
      }
      
  """
  @type get_reservation_utilization_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_commitment_purchase_analysis_response() :: %{
        "AnalysisId" => String.t() | atom(),
        "AnalysisStartedTime" => String.t() | atom(),
        "EstimatedCompletionTime" => String.t() | atom()
      }
      
  """
  @type start_commitment_purchase_analysis_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cost_comparison_driver() :: %{
        "CostDrivers" => list(cost_driver()),
        "CostSelector" => expression(),
        "Metrics" => map()
      }
      
  """
  @type cost_comparison_driver() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_rightsizing_recommendation_request() :: %{
        optional("Configuration") => rightsizing_recommendation_configuration(),
        optional("Filter") => expression(),
        optional("NextPageToken") => String.t() | atom(),
        optional("PageSize") => integer(),
        required("Service") => String.t() | atom()
      }
      
  """
  @type get_rightsizing_recommendation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_anomaly_subscription_response() :: %{}
      
  """
  @type delete_anomaly_subscription_response() :: %{}

  @typedoc """

  ## Example:
      
      disk_resource_utilization() :: %{
        "DiskReadBytesPerSecond" => String.t() | atom(),
        "DiskReadOpsPerSecond" => String.t() | atom(),
        "DiskWriteBytesPerSecond" => String.t() | atom(),
        "DiskWriteOpsPerSecond" => String.t() | atom()
      }
      
  """
  @type disk_resource_utilization() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      total_impact_filter() :: %{
        "EndValue" => float(),
        "NumericOperator" => list(any()),
        "StartValue" => float()
      }
      
  """
  @type total_impact_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_anomaly_subscription_request() :: %{
        optional("Frequency") => list(any()),
        optional("MonitorArnList") => list(String.t() | atom()),
        optional("Subscribers") => list(subscriber()),
        optional("SubscriptionName") => String.t() | atom(),
        optional("Threshold") => float(),
        optional("ThresholdExpression") => expression(),
        required("SubscriptionArn") => String.t() | atom()
      }
      
  """
  @type update_anomaly_subscription_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      forecast_result() :: %{
        "MeanValue" => String.t() | atom(),
        "PredictionIntervalLowerBound" => String.t() | atom(),
        "PredictionIntervalUpperBound" => String.t() | atom(),
        "TimePeriod" => date_interval()
      }
      
  """
  @type forecast_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t() | atom(),
        "ResourceName" => String.t() | atom()
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sort_definition() :: %{
        "Key" => String.t() | atom(),
        "SortOrder" => list(any())
      }
      
  """
  @type sort_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_savings_plans_coverage_request() :: %{
        optional("Filter") => expression(),
        optional("Granularity") => list(any()),
        optional("GroupBy") => list(group_definition()),
        optional("MaxResults") => integer(),
        optional("Metrics") => list(String.t() | atom()),
        optional("NextToken") => String.t() | atom(),
        optional("SortBy") => sort_definition(),
        required("TimePeriod") => date_interval()
      }
      
  """
  @type get_savings_plans_coverage_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cost_allocation_tag_backfill_request() :: %{
        "BackfillFrom" => String.t() | atom(),
        "BackfillStatus" => list(any()),
        "CompletedAt" => String.t() | atom(),
        "LastUpdatedAt" => String.t() | atom(),
        "RequestedAt" => String.t() | atom()
      }
      
  """
  @type cost_allocation_tag_backfill_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      request_changed_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type request_changed_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_specification() :: %{
        "EC2Specification" => ec2_specification()
      }
      
  """
  @type service_specification() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dimension_values() :: %{
        "Key" => list(any()),
        "MatchOptions" => list(list(any())()),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type dimension_values() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rightsizing_recommendation_configuration() :: %{
        "BenefitsConsidered" => boolean(),
        "RecommendationTarget" => list(any())
      }
      
  """
  @type rightsizing_recommendation_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ebs_resource_utilization() :: %{
        "EbsReadBytesPerSecond" => String.t() | atom(),
        "EbsReadOpsPerSecond" => String.t() | atom(),
        "EbsWriteBytesPerSecond" => String.t() | atom(),
        "EbsWriteOpsPerSecond" => String.t() | atom()
      }
      
  """
  @type ebs_resource_utilization() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_commitment_purchase_analysis_response() :: %{
        "AnalysisCompletionTime" => String.t() | atom(),
        "AnalysisDetails" => analysis_details(),
        "AnalysisId" => String.t() | atom(),
        "AnalysisStartedTime" => String.t() | atom(),
        "AnalysisStatus" => list(any()),
        "CommitmentPurchaseAnalysisConfiguration" => commitment_purchase_analysis_configuration(),
        "ErrorCode" => list(any()),
        "EstimatedCompletionTime" => String.t() | atom()
      }
      
  """
  @type get_commitment_purchase_analysis_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_reservation_coverage_response() :: %{
        "CoveragesByTime" => list(coverage_by_time()),
        "NextPageToken" => String.t() | atom(),
        "Total" => coverage()
      }
      
  """
  @type get_reservation_coverage_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cost_category_split_charge_rule() :: %{
        "Method" => list(any()),
        "Parameters" => list(cost_category_split_charge_rule_parameter()),
        "Source" => String.t() | atom(),
        "Targets" => list(String.t() | atom())
      }
      
  """
  @type cost_category_split_charge_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_cost_category_definition_request() :: %{
        required("CostCategoryArn") => String.t() | atom()
      }
      
  """
  @type delete_cost_category_definition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_savings_plans_purchase_recommendation_generation_request() :: %{
        optional("GenerationStatus") => list(any()),
        optional("NextPageToken") => String.t() | atom(),
        optional("PageSize") => integer(),
        optional("RecommendationIds") => list(String.t() | atom())
      }
      
  """
  @type list_savings_plans_purchase_recommendation_generation_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      get_cost_and_usage_request() :: %{
        optional("BillingViewArn") => String.t() | atom(),
        optional("Filter") => expression(),
        optional("GroupBy") => list(group_definition()),
        optional("NextPageToken") => String.t() | atom(),
        required("Granularity") => list(any()),
        required("Metrics") => list(String.t() | atom()),
        required("TimePeriod") => date_interval()
      }
      
  """
  @type get_cost_and_usage_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_usage_forecast_response() :: %{
        "ForecastResultsByTime" => list(forecast_result()),
        "Total" => metric_value()
      }
      
  """
  @type get_usage_forecast_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      root_cause() :: %{
        "Impact" => root_cause_impact(),
        "LinkedAccount" => String.t() | atom(),
        "LinkedAccountName" => String.t() | atom(),
        "Region" => String.t() | atom(),
        "Service" => String.t() | atom(),
        "UsageType" => String.t() | atom()
      }
      
  """
  @type root_cause() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      savings_plans_coverage_data() :: %{
        "CoveragePercentage" => String.t() | atom(),
        "OnDemandCost" => String.t() | atom(),
        "SpendCoveredBySavingsPlans" => String.t() | atom(),
        "TotalCost" => String.t() | atom()
      }
      
  """
  @type savings_plans_coverage_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_anomalies_request() :: %{
        optional("Feedback") => list(any()),
        optional("MaxResults") => integer(),
        optional("MonitorArn") => String.t() | atom(),
        optional("NextPageToken") => String.t() | atom(),
        optional("TotalImpact") => total_impact_filter(),
        required("DateInterval") => anomaly_date_interval()
      }
      
  """
  @type get_anomalies_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      savings_plans_utilization_aggregates() :: %{
        "AmortizedCommitment" => savings_plans_amortized_commitment(),
        "Savings" => savings_plans_savings(),
        "Utilization" => savings_plans_utilization()
      }
      
  """
  @type savings_plans_utilization_aggregates() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type invalid_next_token_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      memory_db_instance_details() :: %{
        "CurrentGeneration" => boolean(),
        "Family" => String.t() | atom(),
        "NodeType" => String.t() | atom(),
        "Region" => String.t() | atom(),
        "SizeFlexEligible" => boolean()
      }
      
  """
  @type memory_db_instance_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_cost_category_definition_response() :: %{
        "CostCategoryArn" => String.t() | atom(),
        "EffectiveEnd" => String.t() | atom()
      }
      
  """
  @type delete_cost_category_definition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      coverage_hours() :: %{
        "CoverageHoursPercentage" => String.t() | atom(),
        "OnDemandHours" => String.t() | atom(),
        "ReservedHours" => String.t() | atom(),
        "TotalRunningHours" => String.t() | atom()
      }
      
  """
  @type coverage_hours() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_dimension_values_response() :: %{
        "DimensionValues" => list(dimension_values_with_attributes()),
        "NextPageToken" => String.t() | atom(),
        "ReturnSize" => integer(),
        "TotalSize" => integer()
      }
      
  """
  @type get_dimension_values_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cost_category_reference() :: %{
        "CostCategoryArn" => String.t() | atom(),
        "DefaultValue" => String.t() | atom(),
        "EffectiveEnd" => String.t() | atom(),
        "EffectiveStart" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "NumberOfRules" => integer(),
        "ProcessingStatus" => list(cost_category_processing_status()),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type cost_category_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_anomaly_subscription_response() :: %{
        "SubscriptionArn" => String.t() | atom()
      }
      
  """
  @type update_anomaly_subscription_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unknown_monitor_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type unknown_monitor_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_anomaly_subscriptions_request() :: %{
        optional("MaxResults") => integer(),
        optional("MonitorArn") => String.t() | atom(),
        optional("NextPageToken") => String.t() | atom(),
        optional("SubscriptionArnList") => list(String.t() | atom())
      }
      
  """
  @type get_anomaly_subscriptions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      provide_anomaly_feedback_request() :: %{
        required("AnomalyId") => String.t() | atom(),
        required("Feedback") => list(any())
      }
      
  """
  @type provide_anomaly_feedback_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_tags_response() :: %{
        "NextPageToken" => String.t() | atom(),
        "ReturnSize" => integer(),
        "Tags" => list(String.t() | atom()),
        "TotalSize" => integer()
      }
      
  """
  @type get_tags_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_cost_allocation_tags_status_error() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom(),
        "TagKey" => String.t() | atom()
      }
      
  """
  @type update_cost_allocation_tags_status_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      coverage() :: %{
        "CoverageCost" => coverage_cost(),
        "CoverageHours" => coverage_hours(),
        "CoverageNormalizedUnits" => coverage_normalized_units()
      }
      
  """
  @type coverage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      recommendation_detail_hourly_metrics() :: %{
        "CurrentCoverage" => String.t() | atom(),
        "EstimatedCoverage" => String.t() | atom(),
        "EstimatedNewCommitmentUtilization" => String.t() | atom(),
        "EstimatedOnDemandCost" => String.t() | atom(),
        "StartTime" => String.t() | atom()
      }
      
  """
  @type recommendation_detail_hourly_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      savings_plans_purchase_recommendation_detail() :: %{
        "AccountId" => String.t() | atom(),
        "CurrencyCode" => String.t() | atom(),
        "CurrentAverageHourlyOnDemandSpend" => String.t() | atom(),
        "CurrentMaximumHourlyOnDemandSpend" => String.t() | atom(),
        "CurrentMinimumHourlyOnDemandSpend" => String.t() | atom(),
        "EstimatedAverageUtilization" => String.t() | atom(),
        "EstimatedMonthlySavingsAmount" => String.t() | atom(),
        "EstimatedOnDemandCost" => String.t() | atom(),
        "EstimatedOnDemandCostWithCurrentCommitment" => String.t() | atom(),
        "EstimatedROI" => String.t() | atom(),
        "EstimatedSPCost" => String.t() | atom(),
        "EstimatedSavingsAmount" => String.t() | atom(),
        "EstimatedSavingsPercentage" => String.t() | atom(),
        "HourlyCommitmentToPurchase" => String.t() | atom(),
        "RecommendationDetailId" => String.t() | atom(),
        "SavingsPlansDetails" => savings_plans_details(),
        "UpfrontCost" => String.t() | atom()
      }
      
  """
  @type savings_plans_purchase_recommendation_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_commitment_purchase_analyses_response() :: %{
        "AnalysisSummaryList" => list(analysis_summary()),
        "NextPageToken" => String.t() | atom()
      }
      
  """
  @type list_commitment_purchase_analyses_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "ResourceTags" => list(resource_tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      subscriber() :: %{
        "Address" => String.t() | atom(),
        "Status" => list(any()),
        "Type" => list(any())
      }
      
  """
  @type subscriber() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_savings_plans_utilization_request() :: %{
        optional("Filter") => expression(),
        optional("Granularity") => list(any()),
        optional("SortBy") => sort_definition(),
        required("TimePeriod") => date_interval()
      }
      
  """
  @type get_savings_plans_utilization_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      result_by_time() :: %{
        "Estimated" => boolean(),
        "Groups" => list(group()),
        "TimePeriod" => date_interval(),
        "Total" => map()
      }
      
  """
  @type result_by_time() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ec2_resource_details() :: %{
        "HourlyOnDemandRate" => String.t() | atom(),
        "InstanceType" => String.t() | atom(),
        "Memory" => String.t() | atom(),
        "NetworkPerformance" => String.t() | atom(),
        "Platform" => String.t() | atom(),
        "Region" => String.t() | atom(),
        "Sku" => String.t() | atom(),
        "Storage" => String.t() | atom(),
        "Vcpu" => String.t() | atom()
      }
      
  """
  @type ec2_resource_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_cost_comparison_drivers_request() :: %{
        optional("BillingViewArn") => String.t() | atom(),
        optional("Filter") => expression(),
        optional("GroupBy") => list(group_definition()),
        optional("MaxResults") => integer(),
        optional("NextPageToken") => String.t() | atom(),
        required("BaselineTimePeriod") => date_interval(),
        required("ComparisonTimePeriod") => date_interval(),
        required("MetricForComparison") => String.t() | atom()
      }
      
  """
  @type get_cost_comparison_drivers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_cost_allocation_tags_status_request() :: %{
        required("CostAllocationTagsStatus") => list(cost_allocation_tag_status_entry())
      }
      
  """
  @type update_cost_allocation_tags_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_usage_forecast_request() :: %{
        optional("BillingViewArn") => String.t() | atom(),
        optional("Filter") => expression(),
        optional("PredictionIntervalLevel") => integer(),
        required("Granularity") => list(any()),
        required("Metric") => list(any()),
        required("TimePeriod") => date_interval()
      }
      
  """
  @type get_usage_forecast_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      coverage_normalized_units() :: %{
        "CoverageNormalizedUnitsPercentage" => String.t() | atom(),
        "OnDemandNormalizedUnits" => String.t() | atom(),
        "ReservedNormalizedUnits" => String.t() | atom(),
        "TotalRunningNormalizedUnits" => String.t() | atom()
      }
      
  """
  @type coverage_normalized_units() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      savings_plans_purchase_recommendation_metadata() :: %{
        "AdditionalMetadata" => String.t() | atom(),
        "GenerationTimestamp" => String.t() | atom(),
        "RecommendationId" => String.t() | atom()
      }
      
  """
  @type savings_plans_purchase_recommendation_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      comparison_metric_value() :: %{
        "BaselineTimePeriodAmount" => String.t() | atom(),
        "ComparisonTimePeriodAmount" => String.t() | atom(),
        "Difference" => String.t() | atom(),
        "Unit" => String.t() | atom()
      }
      
  """
  @type comparison_metric_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_cost_category_definition_request() :: %{
        optional("DefaultValue") => String.t() | atom(),
        optional("EffectiveStart") => String.t() | atom(),
        optional("SplitChargeRules") => list(cost_category_split_charge_rule()),
        required("CostCategoryArn") => String.t() | atom(),
        required("RuleVersion") => list(any()),
        required("Rules") => list(cost_category_rule())
      }
      
  """
  @type update_cost_category_definition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cost_category_rule() :: %{
        "InheritedValue" => cost_category_inherited_value_dimension(),
        "Rule" => expression(),
        "Type" => list(any()),
        "Value" => String.t() | atom()
      }
      
  """
  @type cost_category_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      savings_plans_details() :: %{
        "InstanceFamily" => String.t() | atom(),
        "OfferingId" => String.t() | atom(),
        "Region" => String.t() | atom()
      }
      
  """
  @type savings_plans_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_commitment_purchase_analysis_request() :: %{
        required("CommitmentPurchaseAnalysisConfiguration") => commitment_purchase_analysis_configuration()
      }
      
  """
  @type start_commitment_purchase_analysis_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reservation_purchase_recommendation_detail() :: %{
        "AccountId" => String.t() | atom(),
        "AverageNormalizedUnitsUsedPerHour" => String.t() | atom(),
        "AverageNumberOfCapacityUnitsUsedPerHour" => String.t() | atom(),
        "AverageNumberOfInstancesUsedPerHour" => String.t() | atom(),
        "AverageUtilization" => String.t() | atom(),
        "CurrencyCode" => String.t() | atom(),
        "EstimatedBreakEvenInMonths" => String.t() | atom(),
        "EstimatedMonthlyOnDemandCost" => String.t() | atom(),
        "EstimatedMonthlySavingsAmount" => String.t() | atom(),
        "EstimatedMonthlySavingsPercentage" => String.t() | atom(),
        "EstimatedReservationCostForLookbackPeriod" => String.t() | atom(),
        "InstanceDetails" => instance_details(),
        "MaximumNormalizedUnitsUsedPerHour" => String.t() | atom(),
        "MaximumNumberOfCapacityUnitsUsedPerHour" => String.t() | atom(),
        "MaximumNumberOfInstancesUsedPerHour" => String.t() | atom(),
        "MinimumNormalizedUnitsUsedPerHour" => String.t() | atom(),
        "MinimumNumberOfCapacityUnitsUsedPerHour" => String.t() | atom(),
        "MinimumNumberOfInstancesUsedPerHour" => String.t() | atom(),
        "RecommendedNormalizedUnitsToPurchase" => String.t() | atom(),
        "RecommendedNumberOfCapacityUnitsToPurchase" => String.t() | atom(),
        "RecommendedNumberOfInstancesToPurchase" => String.t() | atom(),
        "RecurringStandardMonthlyCost" => String.t() | atom(),
        "ReservedCapacityDetails" => reserved_capacity_details(),
        "UpfrontCost" => String.t() | atom()
      }
      
  """
  @type reservation_purchase_recommendation_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      current_instance() :: %{
        "CurrencyCode" => String.t() | atom(),
        "InstanceName" => String.t() | atom(),
        "MonthlyCost" => String.t() | atom(),
        "OnDemandHoursInLookbackPeriod" => String.t() | atom(),
        "ReservationCoveredHoursInLookbackPeriod" => String.t() | atom(),
        "ResourceDetails" => resource_details(),
        "ResourceId" => String.t() | atom(),
        "ResourceUtilization" => resource_utilization(),
        "SavingsPlansCoveredHoursInLookbackPeriod" => String.t() | atom(),
        "Tags" => list(tag_values()),
        "TotalRunningHoursInLookbackPeriod" => String.t() | atom()
      }
      
  """
  @type current_instance() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_savings_plan_purchase_recommendation_details_request() :: %{
        required("RecommendationDetailId") => String.t() | atom()
      }
      
  """
  @type get_savings_plan_purchase_recommendation_details_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      cost_allocation_tag() :: %{
        "LastUpdatedDate" => String.t() | atom(),
        "LastUsedDate" => String.t() | atom(),
        "Status" => list(any()),
        "TagKey" => String.t() | atom(),
        "Type" => list(any())
      }
      
  """
  @type cost_allocation_tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reservation_coverage_group() :: %{
        "Attributes" => map(),
        "Coverage" => coverage()
      }
      
  """
  @type reservation_coverage_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_anomaly_subscription_request() :: %{
        required("SubscriptionArn") => String.t() | atom()
      }
      
  """
  @type delete_anomaly_subscription_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      impact() :: %{
        "MaxImpact" => float(),
        "TotalActualSpend" => float(),
        "TotalExpectedSpend" => float(),
        "TotalImpact" => float(),
        "TotalImpactPercentage" => float()
      }
      
  """
  @type impact() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      anomaly() :: %{
        "AnomalyEndDate" => String.t() | atom(),
        "AnomalyId" => String.t() | atom(),
        "AnomalyScore" => anomaly_score(),
        "AnomalyStartDate" => String.t() | atom(),
        "DimensionValue" => String.t() | atom(),
        "Feedback" => list(any()),
        "Impact" => impact(),
        "MonitorArn" => String.t() | atom(),
        "RootCauses" => list(root_cause())
      }
      
  """
  @type anomaly() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_anomaly_subscription_response() :: %{
        "SubscriptionArn" => String.t() | atom()
      }
      
  """
  @type create_anomaly_subscription_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type resource_tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      savings_plans_utilization_detail() :: %{
        "AmortizedCommitment" => savings_plans_amortized_commitment(),
        "Attributes" => map(),
        "Savings" => savings_plans_savings(),
        "SavingsPlanArn" => String.t() | atom(),
        "Utilization" => savings_plans_utilization()
      }
      
  """
  @type savings_plans_utilization_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_savings_plans_coverage_response() :: %{
        "NextToken" => String.t() | atom(),
        "SavingsPlansCoverages" => list(savings_plans_coverage())
      }
      
  """
  @type get_savings_plans_coverage_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cost_category_processing_status() :: %{
        "Component" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type cost_category_processing_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cost_category_values() :: %{
        "Key" => String.t() | atom(),
        "MatchOptions" => list(list(any())()),
        "Values" => list(String.t() | atom())
      }
      
  """
  @type cost_category_values() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_unavailable_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type data_unavailable_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      modify_recommendation_detail() :: %{
        "TargetInstances" => list(target_instance())
      }
      
  """
  @type modify_recommendation_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_cost_allocation_tags_status_response() :: %{
        "Errors" => list(update_cost_allocation_tags_status_error())
      }
      
  """
  @type update_cost_allocation_tags_status_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reservation_purchase_recommendation() :: %{
        "AccountScope" => list(any()),
        "LookbackPeriodInDays" => list(any()),
        "PaymentOption" => list(any()),
        "RecommendationDetails" => list(reservation_purchase_recommendation_detail()),
        "RecommendationSummary" => reservation_purchase_recommendation_summary(),
        "ServiceSpecification" => service_specification(),
        "TermInYears" => list(any())
      }
      
  """
  @type reservation_purchase_recommendation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      bill_expiration_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type bill_expiration_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_cost_allocation_tag_backfill_response() :: %{
        "BackfillRequest" => cost_allocation_tag_backfill_request()
      }
      
  """
  @type start_cost_allocation_tag_backfill_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_savings_plans_purchase_recommendation_generation_response() :: %{
        "EstimatedCompletionTime" => String.t() | atom(),
        "GenerationStartedTime" => String.t() | atom(),
        "RecommendationId" => String.t() | atom()
      }
      
  """
  @type start_savings_plans_purchase_recommendation_generation_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      get_approximate_usage_records_request() :: %{
        optional("Services") => list(String.t() | atom()),
        required("ApproximationDimension") => list(any()),
        required("Granularity") => list(any())
      }
      
  """
  @type get_approximate_usage_records_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      update_anomaly_monitor_request() :: %{
        optional("MonitorName") => String.t() | atom(),
        required("MonitorArn") => String.t() | atom()
      }
      
  """
  @type update_anomaly_monitor_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_anomaly_monitors_request() :: %{
        optional("MaxResults") => integer(),
        optional("MonitorArnList") => list(String.t() | atom()),
        optional("NextPageToken") => String.t() | atom()
      }
      
  """
  @type get_anomaly_monitors_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_anomalies_response() :: %{
        "Anomalies" => list(anomaly()),
        "NextPageToken" => String.t() | atom()
      }
      
  """
  @type get_anomalies_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_cost_and_usage_comparisons_response() :: %{
        "CostAndUsageComparisons" => list(cost_and_usage_comparison()),
        "NextPageToken" => String.t() | atom(),
        "TotalCostAndUsage" => map()
      }
      
  """
  @type get_cost_and_usage_comparisons_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_commitment_purchase_analysis_request() :: %{
        required("AnalysisId") => String.t() | atom()
      }
      
  """
  @type get_commitment_purchase_analysis_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      metric_value() :: %{
        "Amount" => String.t() | atom(),
        "Unit" => String.t() | atom()
      }
      
  """
  @type metric_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      redshift_instance_details() :: %{
        "CurrentGeneration" => boolean(),
        "Family" => String.t() | atom(),
        "NodeType" => String.t() | atom(),
        "Region" => String.t() | atom(),
        "SizeFlexEligible" => boolean()
      }
      
  """
  @type redshift_instance_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      root_cause_impact() :: %{
        "Contribution" => float()
      }
      
  """
  @type root_cause_impact() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      network_resource_utilization() :: %{
        "NetworkInBytesPerSecond" => String.t() | atom(),
        "NetworkOutBytesPerSecond" => String.t() | atom(),
        "NetworkPacketsInPerSecond" => String.t() | atom(),
        "NetworkPacketsOutPerSecond" => String.t() | atom()
      }
      
  """
  @type network_resource_utilization() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cost_driver() :: %{
        "Metrics" => map(),
        "Name" => String.t() | atom(),
        "Type" => String.t() | atom()
      }
      
  """
  @type cost_driver() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_savings_plans_purchase_recommendation_response() :: %{
        "Metadata" => savings_plans_purchase_recommendation_metadata(),
        "NextPageToken" => String.t() | atom(),
        "SavingsPlansPurchaseRecommendation" => savings_plans_purchase_recommendation()
      }
      
  """
  @type get_savings_plans_purchase_recommendation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unresolvable_usage_unit_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type unresolvable_usage_unit_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      group() :: %{
        "Keys" => list(String.t() | atom()),
        "Metrics" => map()
      }
      
  """
  @type group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target_instance() :: %{
        "CurrencyCode" => String.t() | atom(),
        "DefaultTargetInstance" => boolean(),
        "EstimatedMonthlyCost" => String.t() | atom(),
        "EstimatedMonthlySavings" => String.t() | atom(),
        "ExpectedResourceUtilization" => resource_utilization(),
        "PlatformDifferences" => list(list(any())()),
        "ResourceDetails" => resource_details()
      }
      
  """
  @type target_instance() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      anomaly_score() :: %{
        "CurrentScore" => float(),
        "MaxScore" => float()
      }
      
  """
  @type anomaly_score() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      expression() :: %{
        "And" => list(expression()),
        "CostCategories" => cost_category_values(),
        "Dimensions" => dimension_values(),
        "Not" => expression(),
        "Or" => list(expression()),
        "Tags" => tag_values()
      }
      
  """
  @type expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      commitment_purchase_analysis_configuration() :: %{
        "SavingsPlansPurchaseAnalysisConfiguration" => savings_plans_purchase_analysis_configuration()
      }
      
  """
  @type commitment_purchase_analysis_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      analysis_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type analysis_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_anomaly_monitor_response() :: %{
        "MonitorArn" => String.t() | atom()
      }
      
  """
  @type create_anomaly_monitor_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_cost_allocation_tags_response() :: %{
        "CostAllocationTags" => list(cost_allocation_tag()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_cost_allocation_tags_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cost_category() :: %{
        "CostCategoryArn" => String.t() | atom(),
        "DefaultValue" => String.t() | atom(),
        "EffectiveEnd" => String.t() | atom(),
        "EffectiveStart" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "ProcessingStatus" => list(cost_category_processing_status()),
        "RuleVersion" => list(any()),
        "Rules" => list(cost_category_rule()),
        "SplitChargeRules" => list(cost_category_split_charge_rule())
      }
      
  """
  @type cost_category() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_cost_allocation_tag_backfill_history_response() :: %{
        "BackfillRequests" => list(cost_allocation_tag_backfill_request()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_cost_allocation_tag_backfill_history_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_cost_allocation_tag_backfill_history_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_cost_allocation_tag_backfill_history_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_savings_plan_purchase_recommendation_details_response() :: %{
        "RecommendationDetailData" => recommendation_detail_data(),
        "RecommendationDetailId" => String.t() | atom()
      }
      
  """
  @type get_savings_plan_purchase_recommendation_details_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      reservation_aggregates() :: %{
        "AmortizedRecurringFee" => String.t() | atom(),
        "AmortizedUpfrontFee" => String.t() | atom(),
        "NetRISavings" => String.t() | atom(),
        "OnDemandCostOfRIHoursUsed" => String.t() | atom(),
        "PurchasedHours" => String.t() | atom(),
        "PurchasedUnits" => String.t() | atom(),
        "RICostForUnusedHours" => String.t() | atom(),
        "RealizedSavings" => String.t() | atom(),
        "TotalActualHours" => String.t() | atom(),
        "TotalActualUnits" => String.t() | atom(),
        "TotalAmortizedFee" => String.t() | atom(),
        "TotalPotentialRISavings" => String.t() | atom(),
        "UnrealizedSavings" => String.t() | atom(),
        "UnusedHours" => String.t() | atom(),
        "UnusedUnits" => String.t() | atom(),
        "UtilizationPercentage" => String.t() | atom(),
        "UtilizationPercentageInUnits" => String.t() | atom()
      }
      
  """
  @type reservation_aggregates() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_commitment_purchase_analyses_request() :: %{
        optional("AnalysisIds") => list(String.t() | atom()),
        optional("AnalysisStatus") => list(any()),
        optional("NextPageToken") => String.t() | atom(),
        optional("PageSize") => integer()
      }
      
  """
  @type list_commitment_purchase_analyses_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      savings_plans_purchase_analysis_configuration() :: %{
        "AccountId" => String.t() | atom(),
        "AccountScope" => list(any()),
        "AnalysisType" => list(any()),
        "LookBackTimePeriod" => date_interval(),
        "SavingsPlansToAdd" => list(savings_plans()),
        "SavingsPlansToExclude" => list(String.t() | atom())
      }
      
  """
  @type savings_plans_purchase_analysis_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_reservation_purchase_recommendation_response() :: %{
        "Metadata" => reservation_purchase_recommendation_metadata(),
        "NextPageToken" => String.t() | atom(),
        "Recommendations" => list(reservation_purchase_recommendation())
      }
      
  """
  @type get_reservation_purchase_recommendation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      savings_plans_utilization_by_time() :: %{
        "AmortizedCommitment" => savings_plans_amortized_commitment(),
        "Savings" => savings_plans_savings(),
        "TimePeriod" => date_interval(),
        "Utilization" => savings_plans_utilization()
      }
      
  """
  @type savings_plans_utilization_by_time() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_reservation_utilization_request() :: %{
        optional("Filter") => expression(),
        optional("Granularity") => list(any()),
        optional("GroupBy") => list(group_definition()),
        optional("MaxResults") => integer(),
        optional("NextPageToken") => String.t() | atom(),
        optional("SortBy") => sort_definition(),
        required("TimePeriod") => date_interval()
      }
      
  """
  @type get_reservation_utilization_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      savings_plans_coverage() :: %{
        "Attributes" => map(),
        "Coverage" => savings_plans_coverage_data(),
        "TimePeriod" => date_interval()
      }
      
  """
  @type savings_plans_coverage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_cost_and_usage_comparisons_request() :: %{
        optional("BillingViewArn") => String.t() | atom(),
        optional("Filter") => expression(),
        optional("GroupBy") => list(group_definition()),
        optional("MaxResults") => integer(),
        optional("NextPageToken") => String.t() | atom(),
        required("BaselineTimePeriod") => date_interval(),
        required("ComparisonTimePeriod") => date_interval(),
        required("MetricForComparison") => String.t() | atom()
      }
      
  """
  @type get_cost_and_usage_comparisons_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_cost_category_definition_response() :: %{
        "CostCategory" => cost_category()
      }
      
  """
  @type describe_cost_category_definition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unknown_subscription_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type unknown_subscription_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ec2_resource_utilization() :: %{
        "DiskResourceUtilization" => disk_resource_utilization(),
        "EBSResourceUtilization" => ebs_resource_utilization(),
        "MaxCpuUtilizationPercentage" => String.t() | atom(),
        "MaxMemoryUtilizationPercentage" => String.t() | atom(),
        "MaxStorageUtilizationPercentage" => String.t() | atom(),
        "NetworkResourceUtilization" => network_resource_utilization()
      }
      
  """
  @type ec2_resource_utilization() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_details() :: %{
        "EC2ResourceDetails" => ec2_resource_details()
      }
      
  """
  @type resource_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      backfill_limit_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type backfill_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_savings_plans_utilization_response() :: %{
        "SavingsPlansUtilizationsByTime" => list(savings_plans_utilization_by_time()),
        "Total" => savings_plans_utilization_aggregates()
      }
      
  """
  @type get_savings_plans_utilization_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      analysis_details() :: %{
        "SavingsPlansPurchaseAnalysisDetails" => savings_plans_purchase_analysis_details()
      }
      
  """
  @type analysis_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_rightsizing_recommendation_response() :: %{
        "Configuration" => rightsizing_recommendation_configuration(),
        "Metadata" => rightsizing_recommendation_metadata(),
        "NextPageToken" => String.t() | atom(),
        "RightsizingRecommendations" => list(rightsizing_recommendation()),
        "Summary" => rightsizing_recommendation_summary()
      }
      
  """
  @type get_rightsizing_recommendation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_dimension_values_request() :: %{
        optional("BillingViewArn") => String.t() | atom(),
        optional("Context") => list(any()),
        optional("Filter") => expression(),
        optional("MaxResults") => integer(),
        optional("NextPageToken") => String.t() | atom(),
        optional("SearchString") => String.t() | atom(),
        optional("SortBy") => list(sort_definition()),
        required("Dimension") => list(any()),
        required("TimePeriod") => date_interval()
      }
      
  """
  @type get_dimension_values_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      savings_plans_purchase_recommendation() :: %{
        "AccountScope" => list(any()),
        "LookbackPeriodInDays" => list(any()),
        "PaymentOption" => list(any()),
        "SavingsPlansPurchaseRecommendationDetails" => list(savings_plans_purchase_recommendation_detail()),
        "SavingsPlansPurchaseRecommendationSummary" => savings_plans_purchase_recommendation_summary(),
        "SavingsPlansType" => list(any()),
        "TermInYears" => list(any())
      }
      
  """
  @type savings_plans_purchase_recommendation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_savings_plans_purchase_recommendation_generation_request() :: %{}
      
  """
  @type start_savings_plans_purchase_recommendation_generation_request() :: %{}

  @typedoc """

  ## Example:
      
      delete_anomaly_monitor_request() :: %{
        required("MonitorArn") => String.t() | atom()
      }
      
  """
  @type delete_anomaly_monitor_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      savings_plans() :: %{
        "InstanceFamily" => String.t() | atom(),
        "OfferingId" => String.t() | atom(),
        "PaymentOption" => list(any()),
        "Region" => String.t() | atom(),
        "SavingsPlansCommitment" => float(),
        "SavingsPlansType" => list(any()),
        "TermInYears" => list(any())
      }
      
  """
  @type savings_plans() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "Message" => String.t() | atom(),
        "ResourceName" => String.t() | atom()
      }
      
  """
  @type too_many_tags_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      provide_anomaly_feedback_response() :: %{
        "AnomalyId" => String.t() | atom()
      }
      
  """
  @type provide_anomaly_feedback_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      elasti_cache_instance_details() :: %{
        "CurrentGeneration" => boolean(),
        "Family" => String.t() | atom(),
        "NodeType" => String.t() | atom(),
        "ProductDescription" => String.t() | atom(),
        "Region" => String.t() | atom(),
        "SizeFlexEligible" => boolean()
      }
      
  """
  @type elasti_cache_instance_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dynamo_db_capacity_details() :: %{
        "CapacityUnits" => String.t() | atom(),
        "Region" => String.t() | atom()
      }
      
  """
  @type dynamo_db_capacity_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_savings_plans_purchase_recommendation_generation_response() :: %{
        "GenerationSummaryList" => list(generation_summary()),
        "NextPageToken" => String.t() | atom()
      }
      
  """
  @type list_savings_plans_purchase_recommendation_generation_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      get_cost_categories_request() :: %{
        optional("BillingViewArn") => String.t() | atom(),
        optional("CostCategoryName") => String.t() | atom(),
        optional("Filter") => expression(),
        optional("MaxResults") => integer(),
        optional("NextPageToken") => String.t() | atom(),
        optional("SearchString") => String.t() | atom(),
        optional("SortBy") => list(sort_definition()),
        required("TimePeriod") => date_interval()
      }
      
  """
  @type get_cost_categories_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reserved_capacity_details() :: %{
        "DynamoDBCapacityDetails" => dynamo_db_capacity_details()
      }
      
  """
  @type reserved_capacity_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      reservation_purchase_recommendation_metadata() :: %{
        "AdditionalMetadata" => String.t() | atom(),
        "GenerationTimestamp" => String.t() | atom(),
        "RecommendationId" => String.t() | atom()
      }
      
  """
  @type reservation_purchase_recommendation_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cost_category_inherited_value_dimension() :: %{
        "DimensionKey" => String.t() | atom(),
        "DimensionName" => list(any())
      }
      
  """
  @type cost_category_inherited_value_dimension() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      anomaly_monitor() :: %{
        "CreationDate" => String.t() | atom(),
        "DimensionalValueCount" => integer(),
        "LastEvaluatedDate" => String.t() | atom(),
        "LastUpdatedDate" => String.t() | atom(),
        "MonitorArn" => String.t() | atom(),
        "MonitorDimension" => list(any()),
        "MonitorName" => String.t() | atom(),
        "MonitorSpecification" => expression(),
        "MonitorType" => list(any())
      }
      
  """
  @type anomaly_monitor() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rds_instance_details() :: %{
        "CurrentGeneration" => boolean(),
        "DatabaseEdition" => String.t() | atom(),
        "DatabaseEngine" => String.t() | atom(),
        "DeploymentOption" => String.t() | atom(),
        "Family" => String.t() | atom(),
        "InstanceType" => String.t() | atom(),
        "LicenseModel" => String.t() | atom(),
        "Region" => String.t() | atom(),
        "SizeFlexEligible" => boolean()
      }
      
  """
  @type rds_instance_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_cost_categories_response() :: %{
        "CostCategoryNames" => list(String.t() | atom()),
        "CostCategoryValues" => list(String.t() | atom()),
        "NextPageToken" => String.t() | atom(),
        "ReturnSize" => integer(),
        "TotalSize" => integer()
      }
      
  """
  @type get_cost_categories_response() :: %{(String.t() | atom()) => any()}

  @type create_anomaly_monitor_errors() :: limit_exceeded_exception()

  @type create_anomaly_subscription_errors() ::
          limit_exceeded_exception() | unknown_monitor_exception()

  @type create_cost_category_definition_errors() ::
          limit_exceeded_exception() | service_quota_exceeded_exception()

  @type delete_anomaly_monitor_errors() ::
          limit_exceeded_exception() | unknown_monitor_exception()

  @type delete_anomaly_subscription_errors() ::
          unknown_subscription_exception() | limit_exceeded_exception()

  @type delete_cost_category_definition_errors() ::
          limit_exceeded_exception() | resource_not_found_exception()

  @type describe_cost_category_definition_errors() ::
          limit_exceeded_exception() | resource_not_found_exception()

  @type get_anomalies_errors() :: limit_exceeded_exception() | invalid_next_token_exception()

  @type get_anomaly_monitors_errors() ::
          limit_exceeded_exception()
          | unknown_monitor_exception()
          | invalid_next_token_exception()

  @type get_anomaly_subscriptions_errors() ::
          unknown_subscription_exception()
          | limit_exceeded_exception()
          | invalid_next_token_exception()

  @type get_approximate_usage_records_errors() ::
          limit_exceeded_exception() | data_unavailable_exception()

  @type get_commitment_purchase_analysis_errors() ::
          limit_exceeded_exception()
          | analysis_not_found_exception()
          | data_unavailable_exception()

  @type get_cost_and_usage_errors() ::
          limit_exceeded_exception()
          | bill_expiration_exception()
          | data_unavailable_exception()
          | invalid_next_token_exception()
          | request_changed_exception()
          | resource_not_found_exception()

  @type get_cost_and_usage_comparisons_errors() ::
          limit_exceeded_exception()
          | data_unavailable_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()

  @type get_cost_and_usage_with_resources_errors() ::
          limit_exceeded_exception()
          | bill_expiration_exception()
          | data_unavailable_exception()
          | invalid_next_token_exception()
          | request_changed_exception()
          | resource_not_found_exception()

  @type get_cost_categories_errors() ::
          limit_exceeded_exception()
          | bill_expiration_exception()
          | data_unavailable_exception()
          | invalid_next_token_exception()
          | request_changed_exception()
          | resource_not_found_exception()

  @type get_cost_comparison_drivers_errors() ::
          limit_exceeded_exception()
          | data_unavailable_exception()
          | invalid_next_token_exception()
          | resource_not_found_exception()

  @type get_cost_forecast_errors() ::
          limit_exceeded_exception()
          | data_unavailable_exception()
          | resource_not_found_exception()

  @type get_dimension_values_errors() ::
          limit_exceeded_exception()
          | bill_expiration_exception()
          | data_unavailable_exception()
          | invalid_next_token_exception()
          | request_changed_exception()
          | resource_not_found_exception()

  @type get_reservation_coverage_errors() ::
          limit_exceeded_exception()
          | data_unavailable_exception()
          | invalid_next_token_exception()

  @type get_reservation_purchase_recommendation_errors() ::
          limit_exceeded_exception()
          | data_unavailable_exception()
          | invalid_next_token_exception()

  @type get_reservation_utilization_errors() ::
          limit_exceeded_exception()
          | data_unavailable_exception()
          | invalid_next_token_exception()

  @type get_rightsizing_recommendation_errors() ::
          limit_exceeded_exception() | invalid_next_token_exception()

  @type get_savings_plan_purchase_recommendation_details_errors() ::
          limit_exceeded_exception() | data_unavailable_exception()

  @type get_savings_plans_coverage_errors() ::
          limit_exceeded_exception()
          | data_unavailable_exception()
          | invalid_next_token_exception()

  @type get_savings_plans_purchase_recommendation_errors() ::
          limit_exceeded_exception() | invalid_next_token_exception()

  @type get_savings_plans_utilization_errors() ::
          limit_exceeded_exception() | data_unavailable_exception()

  @type get_savings_plans_utilization_details_errors() ::
          limit_exceeded_exception()
          | data_unavailable_exception()
          | invalid_next_token_exception()

  @type get_tags_errors() ::
          limit_exceeded_exception()
          | bill_expiration_exception()
          | data_unavailable_exception()
          | invalid_next_token_exception()
          | request_changed_exception()
          | resource_not_found_exception()

  @type get_usage_forecast_errors() ::
          limit_exceeded_exception()
          | unresolvable_usage_unit_exception()
          | data_unavailable_exception()
          | resource_not_found_exception()

  @type list_commitment_purchase_analyses_errors() ::
          limit_exceeded_exception()
          | data_unavailable_exception()
          | invalid_next_token_exception()

  @type list_cost_allocation_tag_backfill_history_errors() ::
          limit_exceeded_exception() | invalid_next_token_exception()

  @type list_cost_allocation_tags_errors() ::
          limit_exceeded_exception() | invalid_next_token_exception()

  @type list_cost_category_definitions_errors() :: limit_exceeded_exception()

  @type list_savings_plans_purchase_recommendation_generation_errors() ::
          limit_exceeded_exception()
          | data_unavailable_exception()
          | invalid_next_token_exception()

  @type list_tags_for_resource_errors() ::
          limit_exceeded_exception() | resource_not_found_exception()

  @type provide_anomaly_feedback_errors() :: limit_exceeded_exception()

  @type start_commitment_purchase_analysis_errors() ::
          limit_exceeded_exception()
          | data_unavailable_exception()
          | service_quota_exceeded_exception()
          | generation_exists_exception()

  @type start_cost_allocation_tag_backfill_errors() ::
          backfill_limit_exceeded_exception() | limit_exceeded_exception()

  @type start_savings_plans_purchase_recommendation_generation_errors() ::
          limit_exceeded_exception()
          | data_unavailable_exception()
          | service_quota_exceeded_exception()
          | generation_exists_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception() | limit_exceeded_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: limit_exceeded_exception() | resource_not_found_exception()

  @type update_anomaly_monitor_errors() ::
          limit_exceeded_exception() | unknown_monitor_exception()

  @type update_anomaly_subscription_errors() ::
          unknown_subscription_exception()
          | limit_exceeded_exception()
          | unknown_monitor_exception()

  @type update_cost_allocation_tags_status_errors() :: limit_exceeded_exception()

  @type update_cost_category_definition_errors() ::
          limit_exceeded_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2017-10-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: "us-east-1",
      endpoint_prefix: "ce",
      global?: true,
      hostname: "ce.us-east-1.amazonaws.com",
      protocol: "json",
      service_id: "Cost Explorer",
      signature_version: "v4",
      signing_name: "ce",
      target_prefix: "AWSInsightsIndexService"
    }
  end

  @doc """
  Creates a new cost anomaly detection monitor with the requested type and monitor
  specification.
  """
  @spec create_anomaly_monitor(map(), create_anomaly_monitor_request(), list()) ::
          {:ok, create_anomaly_monitor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_anomaly_monitor_errors()}
  def create_anomaly_monitor(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAnomalyMonitor", input, options)
  end

  @doc """
  Adds an alert subscription to a cost anomaly detection monitor.

  You can use each
  subscription to define subscribers with email or SNS notifications. Email
  subscribers can set
  an absolute or percentage threshold and a time frequency for receiving
  notifications.
  """
  @spec create_anomaly_subscription(map(), create_anomaly_subscription_request(), list()) ::
          {:ok, create_anomaly_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_anomaly_subscription_errors()}
  def create_anomaly_subscription(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateAnomalySubscription", input, options)
  end

  @doc """
  Creates a new Cost Category with the requested name and rules.
  """
  @spec create_cost_category_definition(map(), create_cost_category_definition_request(), list()) ::
          {:ok, create_cost_category_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cost_category_definition_errors()}
  def create_cost_category_definition(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateCostCategoryDefinition", input, options)
  end

  @doc """
  Deletes a cost anomaly monitor.
  """
  @spec delete_anomaly_monitor(map(), delete_anomaly_monitor_request(), list()) ::
          {:ok, delete_anomaly_monitor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_anomaly_monitor_errors()}
  def delete_anomaly_monitor(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAnomalyMonitor", input, options)
  end

  @doc """
  Deletes a cost anomaly subscription.
  """
  @spec delete_anomaly_subscription(map(), delete_anomaly_subscription_request(), list()) ::
          {:ok, delete_anomaly_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_anomaly_subscription_errors()}
  def delete_anomaly_subscription(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteAnomalySubscription", input, options)
  end

  @doc """
  Deletes a Cost Category.

  Expenses from this month going forward will no longer be
  categorized with this Cost Category.
  """
  @spec delete_cost_category_definition(map(), delete_cost_category_definition_request(), list()) ::
          {:ok, delete_cost_category_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_cost_category_definition_errors()}
  def delete_cost_category_definition(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteCostCategoryDefinition", input, options)
  end

  @doc """
  Returns the name, Amazon Resource Name (ARN), rules, definition, and effective
  dates of a
  Cost Category that's defined in the account.

  You have the option to use `EffectiveOn` to return a Cost Category that's
  active on a specific date. If there's no `EffectiveOn` specified, you see a Cost
  Category that's effective on the current date. If Cost Category is still
  effective,
  `EffectiveEnd` is omitted in the response.
  """
  @spec describe_cost_category_definition(
          map(),
          describe_cost_category_definition_request(),
          list()
        ) ::
          {:ok, describe_cost_category_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_cost_category_definition_errors()}
  def describe_cost_category_definition(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeCostCategoryDefinition", input, options)
  end

  @doc """
  Retrieves all of the cost anomalies detected on your account during the time
  period that's
  specified by the `DateInterval` object.

  Anomalies are available for up to 90
  days.
  """
  @spec get_anomalies(map(), get_anomalies_request(), list()) ::
          {:ok, get_anomalies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_anomalies_errors()}
  def get_anomalies(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAnomalies", input, options)
  end

  @doc """
  Retrieves the cost anomaly monitor definitions for your account.

  You can filter using a
  list of cost anomaly monitor Amazon Resource Names (ARNs).
  """
  @spec get_anomaly_monitors(map(), get_anomaly_monitors_request(), list()) ::
          {:ok, get_anomaly_monitors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_anomaly_monitors_errors()}
  def get_anomaly_monitors(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAnomalyMonitors", input, options)
  end

  @doc """
  Retrieves the cost anomaly subscription objects for your account.

  You can filter using a
  list of cost anomaly monitor Amazon Resource Names (ARNs).
  """
  @spec get_anomaly_subscriptions(map(), get_anomaly_subscriptions_request(), list()) ::
          {:ok, get_anomaly_subscriptions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_anomaly_subscriptions_errors()}
  def get_anomaly_subscriptions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAnomalySubscriptions", input, options)
  end

  @doc """
  Retrieves estimated usage records for hourly granularity or resource-level data
  at daily
  granularity.
  """
  @spec get_approximate_usage_records(map(), get_approximate_usage_records_request(), list()) ::
          {:ok, get_approximate_usage_records_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_approximate_usage_records_errors()}
  def get_approximate_usage_records(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetApproximateUsageRecords", input, options)
  end

  @doc """
  Retrieves a commitment purchase analysis result based on the
  `AnalysisId`.
  """
  @spec get_commitment_purchase_analysis(
          map(),
          get_commitment_purchase_analysis_request(),
          list()
        ) ::
          {:ok, get_commitment_purchase_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_commitment_purchase_analysis_errors()}
  def get_commitment_purchase_analysis(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCommitmentPurchaseAnalysis", input, options)
  end

  @doc """
  Retrieves cost and usage metrics for your account.

  You can specify which cost and
  usage-related metric that you want the request to return. For example, you can
  specify
  `BlendedCosts` or `UsageQuantity`. You can also filter and group your
  data by various dimensions, such as `SERVICE` or `AZ`, in a specific
  time range. For a complete list of valid dimensions, see the
  [GetDimensionValues](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html) operation. Management account in an organization in Organizations have access to
  all member accounts.

  For information about filter limitations, see [Quotas and
  restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-limits.html)
  in the *Billing and Cost Management User Guide*.
  """
  @spec get_cost_and_usage(map(), get_cost_and_usage_request(), list()) ::
          {:ok, get_cost_and_usage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cost_and_usage_errors()}
  def get_cost_and_usage(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCostAndUsage", input, options)
  end

  @doc """
  Retrieves cost and usage comparisons for your account between two periods within
  the last
  13 months.

  If you have enabled multi-year data at monthly granularity, you can go back up
  to
  38 months.
  """
  @spec get_cost_and_usage_comparisons(map(), get_cost_and_usage_comparisons_request(), list()) ::
          {:ok, get_cost_and_usage_comparisons_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cost_and_usage_comparisons_errors()}
  def get_cost_and_usage_comparisons(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCostAndUsageComparisons", input, options)
  end

  @doc """
  Retrieves cost and usage metrics with resources for your account.

  You can specify which
  cost and usage-related metric, such as `BlendedCosts` or
  `UsageQuantity`, that you want the request to return. You can also filter and
  group
  your data by various dimensions, such as `SERVICE` or `AZ`, in a
  specific time range. For a complete list of valid dimensions, see the
  [GetDimensionValues](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_GetDimensionValues.html) operation. Management account in an organization in Organizations have access to
  all member accounts.

  Hourly granularity is only available for EC2-Instances (Elastic Compute Cloud)
  resource-level data. All other resource-level data is available at daily
  granularity.

  This is an opt-in only feature. You can enable this feature from the Cost
  Explorer
  Settings page. For information about how to access the Settings page, see
  [Controlling
  Access for Cost
  Explorer](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-access.html)
  in the *Billing and Cost Management User
  Guide*.
  """
  @spec get_cost_and_usage_with_resources(
          map(),
          get_cost_and_usage_with_resources_request(),
          list()
        ) ::
          {:ok, get_cost_and_usage_with_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cost_and_usage_with_resources_errors()}
  def get_cost_and_usage_with_resources(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCostAndUsageWithResources", input, options)
  end

  @doc """
  Retrieves an array of Cost Category names and values incurred cost.

  If some Cost Category names and values are not associated with any cost, they
  will not
  be returned by this API.
  """
  @spec get_cost_categories(map(), get_cost_categories_request(), list()) ::
          {:ok, get_cost_categories_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cost_categories_errors()}
  def get_cost_categories(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCostCategories", input, options)
  end

  @doc """
  Retrieves key factors driving cost changes between two time periods within the
  last 13
  months, such as usage changes, discount changes, and commitment-based savings.

  If you have
  enabled multi-year data at monthly granularity, you can go back up to 38 months.
  """
  @spec get_cost_comparison_drivers(map(), get_cost_comparison_drivers_request(), list()) ::
          {:ok, get_cost_comparison_drivers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cost_comparison_drivers_errors()}
  def get_cost_comparison_drivers(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCostComparisonDrivers", input, options)
  end

  @doc """
  Retrieves a forecast for how much Amazon Web Services predicts that you will
  spend over
  the forecast time period that you select, based on your past costs.
  """
  @spec get_cost_forecast(map(), get_cost_forecast_request(), list()) ::
          {:ok, get_cost_forecast_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_cost_forecast_errors()}
  def get_cost_forecast(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetCostForecast", input, options)
  end

  @doc """
  Retrieves all available filter values for a specified filter over a period of
  time.

  You
  can search the dimension values for an arbitrary string.
  """
  @spec get_dimension_values(map(), get_dimension_values_request(), list()) ::
          {:ok, get_dimension_values_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_dimension_values_errors()}
  def get_dimension_values(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDimensionValues", input, options)
  end

  @doc """
  Retrieves the reservation coverage for your account, which you can use to see
  how much
  of your Amazon Elastic Compute Cloud, Amazon ElastiCache, Amazon Relational
  Database Service,
  or Amazon Redshift usage is covered by a reservation.

  An organization's management account can
  see the coverage of the associated member accounts. This supports dimensions,
  Cost Categories,
  and nested expressions. For any time period, you can filter data about
  reservation usage by
  the following dimensions:

    *
  AZ

    *
  CACHE_ENGINE

    *
  DATABASE_ENGINE

    *
  DEPLOYMENT_OPTION

    *
  INSTANCE_TYPE

    *
  LINKED_ACCOUNT

    *
  OPERATING_SYSTEM

    *
  PLATFORM

    *
  REGION

    *
  SERVICE

    *
  TAG

    *
  TENANCY

  To determine valid values for a dimension, use the `GetDimensionValues`
  operation.
  """
  @spec get_reservation_coverage(map(), get_reservation_coverage_request(), list()) ::
          {:ok, get_reservation_coverage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_reservation_coverage_errors()}
  def get_reservation_coverage(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetReservationCoverage", input, options)
  end

  @doc """
  Gets recommendations for reservation purchases.

  These recommendations might help you to
  reduce your costs. Reservations provide a discounted hourly rate (up to 75%)
  compared to
  On-Demand pricing.

  Amazon Web Services generates your recommendations by identifying your On-Demand
  usage
  during a specific time period and collecting your usage into categories that are
  eligible for
  a reservation. After Amazon Web Services has these categories, it simulates
  every combination
  of reservations in each category of usage to identify the best number of each
  type of Reserved
  Instance (RI) to purchase to maximize your estimated savings.

  For example, Amazon Web Services automatically aggregates your Amazon EC2 Linux,
  shared
  tenancy, and c4 family usage in the US West (Oregon) Region and recommends that
  you buy
  size-flexible regional reservations to apply to the c4 family usage. Amazon Web
  Services
  recommends the smallest size instance in an instance family. This makes it
  easier to purchase
  a size-flexible Reserved Instance (RI). Amazon Web Services also shows the equal
  number of
  normalized units. This way, you can purchase any instance size that you want.
  For this
  example, your RI recommendation is for `c4.large` because that is the smallest
  size
  instance in the c4 instance family.
  """
  @spec get_reservation_purchase_recommendation(
          map(),
          get_reservation_purchase_recommendation_request(),
          list()
        ) ::
          {:ok, get_reservation_purchase_recommendation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_reservation_purchase_recommendation_errors()}
  def get_reservation_purchase_recommendation(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetReservationPurchaseRecommendation", input, options)
  end

  @doc """
  Retrieves the reservation utilization for your account.

  Management account in an
  organization have access to member accounts. You can filter data by dimensions
  in a time
  period. You can use `GetDimensionValues` to determine the possible dimension
  values. Currently, you can group only by `SUBSCRIPTION_ID`.
  """
  @spec get_reservation_utilization(map(), get_reservation_utilization_request(), list()) ::
          {:ok, get_reservation_utilization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_reservation_utilization_errors()}
  def get_reservation_utilization(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetReservationUtilization", input, options)
  end

  @doc """
  Creates recommendations that help you save cost by identifying idle and
  underutilized
  Amazon EC2 instances.

  Recommendations are generated to either downsize or terminate instances, along
  with
  providing savings detail and metrics. For more information about calculation and
  function, see
  [Optimizing Your Cost with Rightsizing Recommendations](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/ce-rightsizing.html)
  in the *Billing and Cost Management User Guide*.
  """
  @spec get_rightsizing_recommendation(map(), get_rightsizing_recommendation_request(), list()) ::
          {:ok, get_rightsizing_recommendation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_rightsizing_recommendation_errors()}
  def get_rightsizing_recommendation(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRightsizingRecommendation", input, options)
  end

  @doc """
  Retrieves the details for a Savings Plan recommendation.

  These details include the hourly
  data-points that construct the cost, coverage, and utilization charts.
  """
  @spec get_savings_plan_purchase_recommendation_details(
          map(),
          get_savings_plan_purchase_recommendation_details_request(),
          list()
        ) ::
          {:ok, get_savings_plan_purchase_recommendation_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_savings_plan_purchase_recommendation_details_errors()}
  def get_savings_plan_purchase_recommendation_details(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "GetSavingsPlanPurchaseRecommendationDetails",
      input,
      options
    )
  end

  @doc """
  Retrieves the Savings Plans covered for your account.

  This enables you to see how much of
  your cost is covered by a Savings Plan. An organization’s management account can
  see the
  coverage of the associated member accounts. This supports dimensions, Cost
  Categories, and
  nested expressions. For any time period, you can filter data for Savings Plans
  usage with the
  following dimensions:

    *

  `LINKED_ACCOUNT`

    *

  `REGION`

    *

  `SERVICE`

    *

  `INSTANCE_FAMILY`

  To determine valid values for a dimension, use the `GetDimensionValues`
  operation.
  """
  @spec get_savings_plans_coverage(map(), get_savings_plans_coverage_request(), list()) ::
          {:ok, get_savings_plans_coverage_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_savings_plans_coverage_errors()}
  def get_savings_plans_coverage(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSavingsPlansCoverage", input, options)
  end

  @doc """
  Retrieves the Savings Plans recommendations for your account.

  First use
  `StartSavingsPlansPurchaseRecommendationGeneration` to generate a new set of
  recommendations, and then use `GetSavingsPlansPurchaseRecommendation` to
  retrieve
  them.
  """
  @spec get_savings_plans_purchase_recommendation(
          map(),
          get_savings_plans_purchase_recommendation_request(),
          list()
        ) ::
          {:ok, get_savings_plans_purchase_recommendation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_savings_plans_purchase_recommendation_errors()}
  def get_savings_plans_purchase_recommendation(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSavingsPlansPurchaseRecommendation", input, options)
  end

  @doc """
  Retrieves the Savings Plans utilization for your account across date ranges with
  daily or
  monthly granularity.

  Management account in an organization have access to member accounts. You
  can use `GetDimensionValues` in `SAVINGS_PLANS` to determine the
  possible dimension values.

  You can't group by any dimension values for
  `GetSavingsPlansUtilization`.
  """
  @spec get_savings_plans_utilization(map(), get_savings_plans_utilization_request(), list()) ::
          {:ok, get_savings_plans_utilization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_savings_plans_utilization_errors()}
  def get_savings_plans_utilization(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSavingsPlansUtilization", input, options)
  end

  @doc """
  Retrieves attribute data along with aggregate utilization and savings data for a
  given
  time period.

  This doesn't support granular or grouped data (daily/monthly) in response. You
  can't retrieve data by dates in a single response similar to
  `GetSavingsPlanUtilization`, but you have the option to make multiple calls to
  `GetSavingsPlanUtilizationDetails` by providing individual dates. You can use
  `GetDimensionValues` in `SAVINGS_PLANS` to determine the possible
  dimension values.

  `GetSavingsPlanUtilizationDetails` internally groups data by
  `SavingsPlansArn`.
  """
  @spec get_savings_plans_utilization_details(
          map(),
          get_savings_plans_utilization_details_request(),
          list()
        ) ::
          {:ok, get_savings_plans_utilization_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_savings_plans_utilization_details_errors()}
  def get_savings_plans_utilization_details(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSavingsPlansUtilizationDetails", input, options)
  end

  @doc """
  Queries for available tag keys and tag values for a specified period.

  You can search
  the tag values for an arbitrary string.
  """
  @spec get_tags(map(), get_tags_request(), list()) ::
          {:ok, get_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_tags_errors()}
  def get_tags(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetTags", input, options)
  end

  @doc """
  Retrieves a forecast for how much Amazon Web Services predicts that you will use
  over the forecast time period that you select, based on your past usage.
  """
  @spec get_usage_forecast(map(), get_usage_forecast_request(), list()) ::
          {:ok, get_usage_forecast_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_usage_forecast_errors()}
  def get_usage_forecast(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetUsageForecast", input, options)
  end

  @doc """
  Lists the commitment purchase analyses for your account.
  """
  @spec list_commitment_purchase_analyses(
          map(),
          list_commitment_purchase_analyses_request(),
          list()
        ) ::
          {:ok, list_commitment_purchase_analyses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_commitment_purchase_analyses_errors()}
  def list_commitment_purchase_analyses(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListCommitmentPurchaseAnalyses", input, options)
  end

  @doc """

  Retrieves a list of your historical cost allocation tag backfill requests.
  """
  @spec list_cost_allocation_tag_backfill_history(
          map(),
          list_cost_allocation_tag_backfill_history_request(),
          list()
        ) ::
          {:ok, list_cost_allocation_tag_backfill_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_cost_allocation_tag_backfill_history_errors()}
  def list_cost_allocation_tag_backfill_history(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListCostAllocationTagBackfillHistory", input, options)
  end

  @doc """
  Get a list of cost allocation tags.

  All inputs in the API are optional and serve as
  filters. By default, all cost allocation tags are returned.
  """
  @spec list_cost_allocation_tags(map(), list_cost_allocation_tags_request(), list()) ::
          {:ok, list_cost_allocation_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_cost_allocation_tags_errors()}
  def list_cost_allocation_tags(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListCostAllocationTags", input, options)
  end

  @doc """
  Returns the name, Amazon Resource Name (ARN), `NumberOfRules` and effective
  dates of all Cost Categories defined in the account.

  You have the option to use
  `EffectiveOn` to return a list of Cost Categories that were active on a specific
  date. If there is no `EffectiveOn` specified, you’ll see Cost Categories that
  are
  effective on the current date. If Cost Category is still effective,
  `EffectiveEnd`
  is omitted in the response. `ListCostCategoryDefinitions` supports pagination.
  The
  request can have a `MaxResults` range up to 100.
  """
  @spec list_cost_category_definitions(map(), list_cost_category_definitions_request(), list()) ::
          {:ok, list_cost_category_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_cost_category_definitions_errors()}
  def list_cost_category_definitions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListCostCategoryDefinitions", input, options)
  end

  @doc """
  Retrieves a list of your historical recommendation generations within the past
  30
  days.
  """
  @spec list_savings_plans_purchase_recommendation_generation(
          map(),
          list_savings_plans_purchase_recommendation_generation_request(),
          list()
        ) ::
          {:ok, list_savings_plans_purchase_recommendation_generation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_savings_plans_purchase_recommendation_generation_errors()}
  def list_savings_plans_purchase_recommendation_generation(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "ListSavingsPlansPurchaseRecommendationGeneration",
      input,
      options
    )
  end

  @doc """
  Returns a list of resource tags associated with the resource specified by the
  Amazon
  Resource Name (ARN).
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Modifies the feedback property of a given cost anomaly.
  """
  @spec provide_anomaly_feedback(map(), provide_anomaly_feedback_request(), list()) ::
          {:ok, provide_anomaly_feedback_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, provide_anomaly_feedback_errors()}
  def provide_anomaly_feedback(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ProvideAnomalyFeedback", input, options)
  end

  @doc """
  Specifies the parameters of a planned commitment purchase and starts the
  generation of the
  analysis.

  This enables you to estimate the cost, coverage, and utilization impact of your
  planned commitment purchases.
  """
  @spec start_commitment_purchase_analysis(
          map(),
          start_commitment_purchase_analysis_request(),
          list()
        ) ::
          {:ok, start_commitment_purchase_analysis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_commitment_purchase_analysis_errors()}
  def start_commitment_purchase_analysis(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartCommitmentPurchaseAnalysis", input, options)
  end

  @doc """

  Request a cost allocation tag backfill.

  This will backfill the activation status (either `active` or `inactive`) for all
  tag keys from `para:BackfillFrom` up to the time this request is made.

  You can request a backfill once every 24 hours.
  """
  @spec start_cost_allocation_tag_backfill(
          map(),
          start_cost_allocation_tag_backfill_request(),
          list()
        ) ::
          {:ok, start_cost_allocation_tag_backfill_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_cost_allocation_tag_backfill_errors()}
  def start_cost_allocation_tag_backfill(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartCostAllocationTagBackfill", input, options)
  end

  @doc """
  Requests a Savings Plans recommendation generation.

  This enables you to calculate a fresh
  set of Savings Plans recommendations that takes your latest usage data and
  current Savings
  Plans inventory into account. You can refresh Savings Plans recommendations up
  to three times
  daily for a consolidated billing family.

  `StartSavingsPlansPurchaseRecommendationGeneration` has no request syntax
  because no input parameters are needed to support this operation.
  """
  @spec start_savings_plans_purchase_recommendation_generation(
          map(),
          start_savings_plans_purchase_recommendation_generation_request(),
          list()
        ) ::
          {:ok, start_savings_plans_purchase_recommendation_generation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_savings_plans_purchase_recommendation_generation_errors()}
  def start_savings_plans_purchase_recommendation_generation(
        %Client{} = client,
        input,
        options \\ []
      ) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "StartSavingsPlansPurchaseRecommendationGeneration",
      input,
      options
    )
  end

  @doc """
  An API operation for adding one or more tags (key-value pairs) to a resource.

  You can use the `TagResource` operation with a resource that already has tags.
  If you specify a new tag key for the resource, this tag is appended to the list
  of tags
  associated with the resource. If you specify a tag key that is already
  associated with the
  resource, the new tag value you specify replaces the previous value for that
  tag.

  Although the maximum number of array members is 200, user-tag maximum is 50. The
  remaining
  are reserved for Amazon Web Services use.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes one or more tags from a resource.

  Specify only tag keys in your request. Don't
  specify the value.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates an existing cost anomaly monitor.

  The changes made are applied going forward, and
  doesn't change anomalies detected in the past.
  """
  @spec update_anomaly_monitor(map(), update_anomaly_monitor_request(), list()) ::
          {:ok, update_anomaly_monitor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_anomaly_monitor_errors()}
  def update_anomaly_monitor(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateAnomalyMonitor", input, options)
  end

  @doc """
  Updates an existing cost anomaly subscription.

  Specify the fields that you want to update.
  Omitted fields are unchanged.

  The JSON below describes the generic construct for each type. See [Request Parameters](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_UpdateAnomalySubscription.html#API_UpdateAnomalySubscription_RequestParameters)
  for possible values as they apply to
  `AnomalySubscription`.
  """
  @spec update_anomaly_subscription(map(), update_anomaly_subscription_request(), list()) ::
          {:ok, update_anomaly_subscription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_anomaly_subscription_errors()}
  def update_anomaly_subscription(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateAnomalySubscription", input, options)
  end

  @doc """
  Updates status for cost allocation tags in bulk, with maximum batch size of 20.

  If the tag
  status that's updated is the same as the existing tag status, the request
  doesn't fail.
  Instead, it doesn't have any effect on the tag status (for example, activating
  the active
  tag).
  """
  @spec update_cost_allocation_tags_status(
          map(),
          update_cost_allocation_tags_status_request(),
          list()
        ) ::
          {:ok, update_cost_allocation_tags_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_cost_allocation_tags_status_errors()}
  def update_cost_allocation_tags_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateCostAllocationTagsStatus", input, options)
  end

  @doc """
  Updates an existing Cost Category.

  Changes made to the Cost Category rules will be used to
  categorize the current month’s expenses and future expenses. This won’t change
  categorization
  for the previous months.
  """
  @spec update_cost_category_definition(map(), update_cost_category_definition_request(), list()) ::
          {:ok, update_cost_category_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_cost_category_definition_errors()}
  def update_cost_category_definition(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateCostCategoryDefinition", input, options)
  end
end
