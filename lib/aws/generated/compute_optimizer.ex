# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ComputeOptimizer do
  @moduledoc """
  Compute Optimizer is a service that analyzes the configuration and utilization
  metrics of your Amazon Web Services compute resources, such as Amazon EC2
  instances, Amazon EC2 Auto Scaling groups, Lambda functions, Amazon EBS volumes,
  and Amazon ECS services on Fargate.

  It reports whether your resources are optimal, and generates
  optimization recommendations to reduce the cost and improve the performance of
  your
  workloads. Compute Optimizer also provides recent utilization metric data, in
  addition
  to projected utilization metric data for the recommendations, which you can use
  to
  evaluate which recommendation provides the best price-performance trade-off. The
  analysis of your usage patterns can help you decide when to move or resize your
  running
  resources, and still meet your performance and capacity requirements. For more
  information about Compute Optimizer, including the required permissions to use
  the
  service, see the [Compute Optimizer User Guide](https://docs.aws.amazon.com/compute-optimizer/latest/ug/).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      current_performance_risk_ratings() :: %{
        "high" => float(),
        "low" => float(),
        "medium" => float(),
        "veryLow" => float()
      }
      
  """
  @type current_performance_risk_ratings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_license_recommendations_request() :: %{
        optional("accountIds") => list(String.t()),
        optional("filters") => list(license_recommendation_filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("resourceArns") => list(String.t())
      }
      
  """
  @type get_license_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_ec2_recommendation_projected_metrics_response() :: %{
        "recommendedOptionProjectedMetrics" => list(recommended_option_projected_metric())
      }
      
  """
  @type get_ec2_recommendation_projected_metrics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_recommendation_summaries_request() :: %{
        optional("accountIds") => list(String.t()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type get_recommendation_summaries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_enrollment_status_request() :: %{}
      
  """
  @type get_enrollment_status_request() :: %{}

  @typedoc """

  ## Example:
      
      rds_db_recommendation() :: %{
        "accountId" => String.t(),
        "currentDBInstanceClass" => String.t(),
        "currentInstancePerformanceRisk" => list(any()),
        "currentStorageConfiguration" => db_storage_configuration(),
        "currentStorageEstimatedMonthlyVolumeIOPsCostVariation" => list(any()),
        "dbClusterIdentifier" => String.t(),
        "effectiveRecommendationPreferences" => rds_effective_recommendation_preferences(),
        "engine" => String.t(),
        "engineVersion" => String.t(),
        "idle" => list(any()),
        "instanceFinding" => list(any()),
        "instanceFindingReasonCodes" => list(list(any())()),
        "instanceRecommendationOptions" => list(rds_db_instance_recommendation_option()),
        "lastRefreshTimestamp" => non_neg_integer(),
        "lookbackPeriodInDays" => float(),
        "promotionTier" => integer(),
        "resourceArn" => String.t(),
        "storageFinding" => list(any()),
        "storageFindingReasonCodes" => list(list(any())()),
        "storageRecommendationOptions" => list(rds_db_storage_recommendation_option()),
        "tags" => list(tag()),
        "utilizationMetrics" => list(rds_db_utilization_metric())
      }
      
  """
  @type rds_db_recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      license_configuration() :: %{
        "instanceType" => String.t(),
        "licenseEdition" => list(any()),
        "licenseModel" => list(any()),
        "licenseName" => list(any()),
        "licenseVersion" => String.t(),
        "metricsSource" => list(metric_source()),
        "numberOfCores" => integer(),
        "operatingSystem" => String.t()
      }
      
  """
  @type license_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_estimated_monthly_savings() :: %{
        "currency" => list(any()),
        "value" => float()
      }
      
  """
  @type lambda_estimated_monthly_savings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_function_memory_projected_metric() :: %{
        "name" => list(any()),
        "statistic" => list(any()),
        "value" => float()
      }
      
  """
  @type lambda_function_memory_projected_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      idle_recommendation() :: %{
        "accountId" => String.t(),
        "finding" => list(any()),
        "findingDescription" => String.t(),
        "lastRefreshTimestamp" => non_neg_integer(),
        "lookBackPeriodInDays" => float(),
        "resourceArn" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => list(any()),
        "savingsOpportunity" => idle_savings_opportunity(),
        "savingsOpportunityAfterDiscounts" => idle_savings_opportunity_after_discounts(),
        "tags" => list(tag()),
        "utilizationMetrics" => list(idle_utilization_metric())
      }
      
  """
  @type idle_recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_e_c_s_service_recommendation_projected_metrics_request() :: %{
        required("endTime") => non_neg_integer(),
        required("period") => integer(),
        required("serviceArn") => String.t(),
        required("startTime") => non_neg_integer(),
        required("stat") => list(any())
      }
      
  """
  @type get_e_c_s_service_recommendation_projected_metrics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_recommendation() :: %{
        "containerName" => String.t(),
        "cpu" => integer(),
        "memorySizeConfiguration" => memory_size_configuration()
      }
      
  """
  @type container_recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_group_estimated_monthly_savings() :: %{
        "currency" => list(any()),
        "value" => float()
      }
      
  """
  @type auto_scaling_group_estimated_monthly_savings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_enrollment_status() :: %{
        "accountId" => String.t(),
        "lastUpdatedTimestamp" => non_neg_integer(),
        "status" => list(any()),
        "statusReason" => String.t()
      }
      
  """
  @type account_enrollment_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_recommendation_export_jobs_request() :: %{
        optional("filters") => list(job_filter()),
        optional("jobIds") => list(String.t()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_recommendation_export_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ebs_effective_recommendation_preferences() :: %{
        "savingsEstimationMode" => ebs_savings_estimation_mode()
      }
      
  """
  @type ebs_effective_recommendation_preferences() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_lambda_function_recommendations_request() :: %{
        optional("accountIds") => list(String.t()),
        optional("filters") => list(lambda_function_recommendation_filter()),
        optional("functionArns") => list(String.t()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type get_lambda_function_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_ebs_volume_recommendations_response() :: %{
        "errors" => list(get_recommendation_error()),
        "nextToken" => String.t(),
        "volumeRecommendations" => list(volume_recommendation())
      }
      
  """
  @type get_ebs_volume_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_function_recommendation() :: %{
        "accountId" => String.t(),
        "currentMemorySize" => integer(),
        "currentPerformanceRisk" => list(any()),
        "effectiveRecommendationPreferences" => lambda_effective_recommendation_preferences(),
        "finding" => list(any()),
        "findingReasonCodes" => list(list(any())()),
        "functionArn" => String.t(),
        "functionVersion" => String.t(),
        "lastRefreshTimestamp" => non_neg_integer(),
        "lookbackPeriodInDays" => float(),
        "memorySizeRecommendationOptions" => list(lambda_function_memory_recommendation_option()),
        "numberOfInvocations" => float(),
        "tags" => list(tag()),
        "utilizationMetrics" => list(lambda_function_utilization_metric())
      }
      
  """
  @type lambda_function_recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      idle_utilization_metric() :: %{
        "name" => list(any()),
        "statistic" => list(any()),
        "value" => float()
      }
      
  """
  @type idle_utilization_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      db_storage_configuration() :: %{
        "allocatedStorage" => integer(),
        "iops" => integer(),
        "maxAllocatedStorage" => integer(),
        "storageThroughput" => integer(),
        "storageType" => String.t()
      }
      
  """
  @type db_storage_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      idle_estimated_monthly_savings() :: %{
        "currency" => list(any()),
        "value" => float()
      }
      
  """
  @type idle_estimated_monthly_savings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_enrollment_statuses_for_organization_request() :: %{
        optional("filters") => list(enrollment_filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type get_enrollment_statuses_for_organization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      missing_authentication_token() :: %{
        "message" => String.t()
      }
      
  """
  @type missing_authentication_token() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ebs_utilization_metric() :: %{
        "name" => list(any()),
        "statistic" => list(any()),
        "value" => float()
      }
      
  """
  @type ebs_utilization_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_effective_recommendation_preferences_response() :: %{
        "enhancedInfrastructureMetrics" => list(any()),
        "externalMetricsPreference" => external_metrics_preference(),
        "lookBackPeriod" => list(any()),
        "preferredResources" => list(effective_preferred_resource()),
        "utilizationPreferences" => list(utilization_preference())
      }
      
  """
  @type get_effective_recommendation_preferences_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_recommendation_preferences_response() :: %{
        "nextToken" => String.t(),
        "recommendationPreferencesDetails" => list(recommendation_preferences_detail())
      }
      
  """
  @type get_recommendation_preferences_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      e_c_s_service_recommendation_option() :: %{
        "containerRecommendations" => list(container_recommendation()),
        "cpu" => integer(),
        "memory" => integer(),
        "projectedUtilizationMetrics" => list(e_c_s_service_projected_utilization_metric()),
        "savingsOpportunity" => savings_opportunity(),
        "savingsOpportunityAfterDiscounts" => e_c_s_savings_opportunity_after_discounts()
      }
      
  """
  @type e_c_s_service_recommendation_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_storage_estimated_monthly_savings() :: %{
        "currency" => list(any()),
        "value" => float()
      }
      
  """
  @type rds_storage_estimated_monthly_savings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      customizable_metric_parameters() :: %{
        "headroom" => list(any()),
        "threshold" => list(any())
      }
      
  """
  @type customizable_metric_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ebs_savings_estimation_mode() :: %{
        "source" => list(any())
      }
      
  """
  @type ebs_savings_estimation_mode() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation_preferences_detail() :: %{
        "enhancedInfrastructureMetrics" => list(any()),
        "externalMetricsPreference" => external_metrics_preference(),
        "inferredWorkloadTypes" => list(any()),
        "lookBackPeriod" => list(any()),
        "preferredResources" => list(effective_preferred_resource()),
        "resourceType" => list(any()),
        "savingsEstimationMode" => list(any()),
        "scope" => scope(),
        "utilizationPreferences" => list(utilization_preference())
      }
      
  """
  @type recommendation_preferences_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      e_c_s_estimated_monthly_savings() :: %{
        "currency" => list(any()),
        "value" => float()
      }
      
  """
  @type e_c_s_estimated_monthly_savings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      idle_savings_opportunity_after_discounts() :: %{
        "estimatedMonthlySavings" => idle_estimated_monthly_savings(),
        "savingsOpportunityPercentage" => float()
      }
      
  """
  @type idle_savings_opportunity_after_discounts() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_effective_recommendation_preferences() :: %{
        "cpuVendorArchitectures" => list(list(any())()),
        "enhancedInfrastructureMetrics" => list(any()),
        "lookBackPeriod" => list(any()),
        "savingsEstimationMode" => rds_savings_estimation_mode()
      }
      
  """
  @type rds_effective_recommendation_preferences() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_recommendation_export_jobs_response() :: %{
        "nextToken" => String.t(),
        "recommendationExportJobs" => list(recommendation_export_job())
      }
      
  """
  @type describe_recommendation_export_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      external_metric_status() :: %{
        "statusCode" => list(any()),
        "statusReason" => String.t()
      }
      
  """
  @type external_metric_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_recommendation_summaries_response() :: %{
        "nextToken" => String.t(),
        "recommendationSummaries" => list(recommendation_summary())
      }
      
  """
  @type get_recommendation_summaries_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      order_by() :: %{
        "dimension" => list(any()),
        "order" => list(any())
      }
      
  """
  @type order_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_savings_estimation_mode() :: %{
        "source" => list(any())
      }
      
  """
  @type instance_savings_estimation_mode() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_e_c_s_service_recommendations_response() :: %{
        "ecsServiceRecommendations" => list(e_c_s_service_recommendation()),
        "errors" => list(get_recommendation_error()),
        "nextToken" => String.t()
      }
      
  """
  @type get_e_c_s_service_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_recommendation_preferences_response() :: %{}
      
  """
  @type put_recommendation_preferences_response() :: %{}

  @typedoc """

  ## Example:
      
      update_enrollment_status_request() :: %{
        optional("includeMemberAccounts") => boolean(),
        required("status") => list(any())
      }
      
  """
  @type update_enrollment_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_group_savings_opportunity_after_discounts() :: %{
        "estimatedMonthlySavings" => auto_scaling_group_estimated_monthly_savings(),
        "savingsOpportunityPercentage" => float()
      }
      
  """
  @type auto_scaling_group_savings_opportunity_after_discounts() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_recommendation_preferences_request() :: %{
        optional("scope") => scope(),
        required("recommendationPreferenceNames") => list(list(any())()),
        required("resourceType") => list(any())
      }
      
  """
  @type delete_recommendation_preferences_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_function_memory_recommendation_option() :: %{
        "memorySize" => integer(),
        "projectedUtilizationMetrics" => list(lambda_function_memory_projected_metric()),
        "rank" => integer(),
        "savingsOpportunity" => savings_opportunity(),
        "savingsOpportunityAfterDiscounts" => lambda_savings_opportunity_after_discounts()
      }
      
  """
  @type lambda_function_memory_recommendation_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_enrollment_status_response() :: %{
        "status" => list(any()),
        "statusReason" => String.t()
      }
      
  """
  @type update_enrollment_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job_filter() :: %{
        "name" => list(any()),
        "values" => list(String.t())
      }
      
  """
  @type job_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_database_projected_metric() :: %{
        "name" => list(any()),
        "timestamps" => list(non_neg_integer()),
        "values" => list(float())
      }
      
  """
  @type rds_database_projected_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_lambda_function_recommendations_request() :: %{
        optional("accountIds") => list(String.t()),
        optional("fieldsToExport") => list(list(any())()),
        optional("fileFormat") => list(any()),
        optional("filters") => list(lambda_function_recommendation_filter()),
        optional("includeMemberAccounts") => boolean(),
        required("s3DestinationConfig") => s3_destination_config()
      }
      
  """
  @type export_lambda_function_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_enrollment_statuses_for_organization_response() :: %{
        "accountEnrollmentStatuses" => list(account_enrollment_status()),
        "nextToken" => String.t()
      }
      
  """
  @type get_enrollment_statuses_for_organization_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_savings_estimation_mode() :: %{
        "source" => list(any())
      }
      
  """
  @type rds_savings_estimation_mode() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_effective_recommendation_preferences() :: %{
        "savingsEstimationMode" => lambda_savings_estimation_mode()
      }
      
  """
  @type lambda_effective_recommendation_preferences() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_e_c_s_service_recommendations_request() :: %{
        optional("accountIds") => list(String.t()),
        optional("fieldsToExport") => list(list(any())()),
        optional("fileFormat") => list(any()),
        optional("filters") => list(e_c_s_service_recommendation_filter()),
        optional("includeMemberAccounts") => boolean(),
        required("s3DestinationConfig") => s3_destination_config()
      }
      
  """
  @type export_e_c_s_service_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_instance_estimated_monthly_savings() :: %{
        "currency" => list(any()),
        "value" => float()
      }
      
  """
  @type rds_instance_estimated_monthly_savings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_idle_recommendations_response() :: %{
        "errors" => list(idle_recommendation_error()),
        "idleRecommendations" => list(idle_recommendation()),
        "nextToken" => String.t()
      }
      
  """
  @type get_idle_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_ec2_instance_recommendations_response() :: %{
        "errors" => list(get_recommendation_error()),
        "instanceRecommendations" => list(instance_recommendation()),
        "nextToken" => String.t()
      }
      
  """
  @type get_ec2_instance_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      idle_summary() :: %{
        "name" => list(any()),
        "value" => float()
      }
      
  """
  @type idle_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      opt_in_required_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type opt_in_required_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      idle_recommendation_filter() :: %{
        "name" => list(any()),
        "values" => list(String.t())
      }
      
  """
  @type idle_recommendation_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "key" => String.t(),
        "value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_source() :: %{
        "provider" => list(any()),
        "providerArn" => String.t()
      }
      
  """
  @type metric_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_e_c_s_service_recommendation_projected_metrics_response() :: %{
        "recommendedOptionProjectedMetrics" => list(e_c_s_service_recommended_option_projected_metric())
      }
      
  """
  @type get_e_c_s_service_recommendation_projected_metrics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_savings_opportunity_after_discounts() :: %{
        "estimatedMonthlySavings" => lambda_estimated_monthly_savings(),
        "savingsOpportunityPercentage" => float()
      }
      
  """
  @type lambda_savings_opportunity_after_discounts() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_ebs_volume_recommendations_response() :: %{
        "jobId" => String.t(),
        "s3Destination" => s3_destination()
      }
      
  """
  @type export_ebs_volume_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_db_utilization_metric() :: %{
        "name" => list(any()),
        "statistic" => list(any()),
        "value" => float()
      }
      
  """
  @type rds_db_utilization_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_recommendation_preferences_request() :: %{
        optional("enhancedInfrastructureMetrics") => list(any()),
        optional("externalMetricsPreference") => external_metrics_preference(),
        optional("inferredWorkloadTypes") => list(any()),
        optional("lookBackPeriod") => list(any()),
        optional("preferredResources") => list(preferred_resource()),
        optional("savingsEstimationMode") => list(any()),
        optional("scope") => scope(),
        optional("utilizationPreferences") => list(utilization_preference()),
        required("resourceType") => list(any())
      }
      
  """
  @type put_recommendation_preferences_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_rds_database_recommendations_request() :: %{
        optional("accountIds") => list(String.t()),
        optional("filters") => list(rds_db_recommendation_filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("recommendationPreferences") => recommendation_preferences(),
        optional("resourceArns") => list(String.t())
      }
      
  """
  @type get_rds_database_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_value_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_value_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_idle_recommendations_request() :: %{
        optional("accountIds") => list(String.t()),
        optional("fieldsToExport") => list(list(any())()),
        optional("fileFormat") => list(any()),
        optional("filters") => list(idle_recommendation_filter()),
        optional("includeMemberAccounts") => boolean(),
        required("s3DestinationConfig") => s3_destination_config()
      }
      
  """
  @type export_idle_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      license_recommendation_option() :: %{
        "licenseEdition" => list(any()),
        "licenseModel" => list(any()),
        "operatingSystem" => String.t(),
        "rank" => integer(),
        "savingsOpportunity" => savings_opportunity()
      }
      
  """
  @type license_recommendation_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      idle_savings_opportunity() :: %{
        "estimatedMonthlySavings" => idle_estimated_monthly_savings(),
        "savingsOpportunityPercentage" => float()
      }
      
  """
  @type idle_savings_opportunity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      volume_recommendation() :: %{
        "accountId" => String.t(),
        "currentConfiguration" => volume_configuration(),
        "currentPerformanceRisk" => list(any()),
        "effectiveRecommendationPreferences" => ebs_effective_recommendation_preferences(),
        "finding" => list(any()),
        "lastRefreshTimestamp" => non_neg_integer(),
        "lookBackPeriodInDays" => float(),
        "tags" => list(tag()),
        "utilizationMetrics" => list(ebs_utilization_metric()),
        "volumeArn" => String.t(),
        "volumeRecommendationOptions" => list(volume_recommendation_option())
      }
      
  """
  @type volume_recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_license_recommendations_request() :: %{
        optional("accountIds") => list(String.t()),
        optional("fieldsToExport") => list(list(any())()),
        optional("fileFormat") => list(any()),
        optional("filters") => list(license_recommendation_filter()),
        optional("includeMemberAccounts") => boolean(),
        required("s3DestinationConfig") => s3_destination_config()
      }
      
  """
  @type export_license_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      e_c_s_service_utilization_metric() :: %{
        "name" => list(any()),
        "statistic" => list(any()),
        "value" => float()
      }
      
  """
  @type e_c_s_service_utilization_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_estimated_monthly_savings() :: %{
        "currency" => list(any()),
        "value" => float()
      }
      
  """
  @type instance_estimated_monthly_savings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_recommendation_preferences_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("scope") => scope(),
        required("resourceType") => list(any())
      }
      
  """
  @type get_recommendation_preferences_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      gpu() :: %{
        "gpuCount" => integer(),
        "gpuMemorySizeInMiB" => integer()
      }
      
  """
  @type gpu() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_ebs_volume_recommendations_request() :: %{
        optional("accountIds") => list(String.t()),
        optional("filters") => list(ebs_filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("volumeArns") => list(String.t())
      }
      
  """
  @type get_ebs_volume_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_savings_opportunity_after_discounts() :: %{
        "estimatedMonthlySavings" => instance_estimated_monthly_savings(),
        "savingsOpportunityPercentage" => float()
      }
      
  """
  @type instance_savings_opportunity_after_discounts() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_auto_scaling_group_recommendations_request() :: %{
        optional("accountIds") => list(String.t()),
        optional("fieldsToExport") => list(list(any())()),
        optional("fileFormat") => list(any()),
        optional("filters") => list(filter()),
        optional("includeMemberAccounts") => boolean(),
        optional("recommendationPreferences") => recommendation_preferences(),
        required("s3DestinationConfig") => s3_destination_config()
      }
      
  """
  @type export_auto_scaling_group_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_e_c_s_service_recommendations_request() :: %{
        optional("accountIds") => list(String.t()),
        optional("filters") => list(e_c_s_service_recommendation_filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("serviceArns") => list(String.t())
      }
      
  """
  @type get_e_c_s_service_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      utilization_preference() :: %{
        "metricName" => list(any()),
        "metricParameters" => customizable_metric_parameters()
      }
      
  """
  @type utilization_preference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_lambda_function_recommendations_response() :: %{
        "jobId" => String.t(),
        "s3Destination" => s3_destination()
      }
      
  """
  @type export_lambda_function_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_recommendation() :: %{
        "accountId" => String.t(),
        "currentInstanceGpuInfo" => gpu_info(),
        "currentInstanceType" => String.t(),
        "currentPerformanceRisk" => list(any()),
        "effectiveRecommendationPreferences" => effective_recommendation_preferences(),
        "externalMetricStatus" => external_metric_status(),
        "finding" => list(any()),
        "findingReasonCodes" => list(list(any())()),
        "idle" => list(any()),
        "inferredWorkloadTypes" => list(list(any())()),
        "instanceArn" => String.t(),
        "instanceName" => String.t(),
        "instanceState" => list(any()),
        "lastRefreshTimestamp" => non_neg_integer(),
        "lookBackPeriodInDays" => float(),
        "recommendationOptions" => list(instance_recommendation_option()),
        "recommendationSources" => list(recommendation_source()),
        "tags" => list(tag()),
        "utilizationMetrics" => list(utilization_metric())
      }
      
  """
  @type instance_recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      container_configuration() :: %{
        "containerName" => String.t(),
        "cpu" => integer(),
        "memorySizeConfiguration" => memory_size_configuration()
      }
      
  """
  @type container_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_rds_database_recommendations_response() :: %{
        "jobId" => String.t(),
        "s3Destination" => s3_destination()
      }
      
  """
  @type export_rds_database_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "name" => list(any()),
        "values" => list(String.t())
      }
      
  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_destination() :: %{
        "bucket" => String.t(),
        "key" => String.t(),
        "metadataKey" => String.t()
      }
      
  """
  @type s3_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_recommendation_error() :: %{
        "code" => String.t(),
        "identifier" => String.t(),
        "message" => String.t()
      }
      
  """
  @type get_recommendation_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_recommendation_preferences_response() :: %{}
      
  """
  @type delete_recommendation_preferences_response() :: %{}

  @typedoc """

  ## Example:
      
      savings_opportunity() :: %{
        "estimatedMonthlySavings" => estimated_monthly_savings(),
        "savingsOpportunityPercentage" => float()
      }
      
  """
  @type savings_opportunity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      memory_size_configuration() :: %{
        "memory" => integer(),
        "memoryReservation" => integer()
      }
      
  """
  @type memory_size_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_effective_recommendation_preferences_request() :: %{
        required("resourceArn") => String.t()
      }
      
  """
  @type get_effective_recommendation_preferences_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_group_recommendation() :: %{
        "accountId" => String.t(),
        "autoScalingGroupArn" => String.t(),
        "autoScalingGroupName" => String.t(),
        "currentConfiguration" => auto_scaling_group_configuration(),
        "currentInstanceGpuInfo" => gpu_info(),
        "currentPerformanceRisk" => list(any()),
        "effectiveRecommendationPreferences" => effective_recommendation_preferences(),
        "finding" => list(any()),
        "inferredWorkloadTypes" => list(list(any())()),
        "lastRefreshTimestamp" => non_neg_integer(),
        "lookBackPeriodInDays" => float(),
        "recommendationOptions" => list(auto_scaling_group_recommendation_option()),
        "utilizationMetrics" => list(utilization_metric())
      }
      
  """
  @type auto_scaling_group_recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      license_recommendation() :: %{
        "accountId" => String.t(),
        "currentLicenseConfiguration" => license_configuration(),
        "finding" => list(any()),
        "findingReasonCodes" => list(list(any())()),
        "lastRefreshTimestamp" => non_neg_integer(),
        "licenseRecommendationOptions" => list(license_recommendation_option()),
        "lookbackPeriodInDays" => float(),
        "resourceArn" => String.t(),
        "tags" => list(tag())
      }
      
  """
  @type license_recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      estimated_monthly_savings() :: %{
        "currency" => list(any()),
        "value" => float()
      }
      
  """
  @type estimated_monthly_savings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_ec2_instance_recommendations_request() :: %{
        optional("accountIds") => list(String.t()),
        optional("filters") => list(filter()),
        optional("instanceArns") => list(String.t()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("recommendationPreferences") => recommendation_preferences()
      }
      
  """
  @type get_ec2_instance_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      e_c_s_savings_opportunity_after_discounts() :: %{
        "estimatedMonthlySavings" => e_c_s_estimated_monthly_savings(),
        "savingsOpportunityPercentage" => float()
      }
      
  """
  @type e_c_s_savings_opportunity_after_discounts() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      scope() :: %{
        "name" => list(any()),
        "value" => String.t()
      }
      
  """
  @type scope() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation_source() :: %{
        "recommendationSourceArn" => String.t(),
        "recommendationSourceType" => list(any())
      }
      
  """
  @type recommendation_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_db_storage_recommendation_option() :: %{
        "estimatedMonthlyVolumeIOPsCostVariation" => list(any()),
        "rank" => integer(),
        "savingsOpportunity" => savings_opportunity(),
        "savingsOpportunityAfterDiscounts" => rds_storage_savings_opportunity_after_discounts(),
        "storageConfiguration" => db_storage_configuration()
      }
      
  """
  @type rds_db_storage_recommendation_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_idle_recommendations_request() :: %{
        optional("accountIds") => list(String.t()),
        optional("filters") => list(idle_recommendation_filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("orderBy") => order_by(),
        optional("resourceArns") => list(String.t())
      }
      
  """
  @type get_idle_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_auto_scaling_group_recommendations_request() :: %{
        optional("accountIds") => list(String.t()),
        optional("autoScalingGroupArns") => list(String.t()),
        optional("filters") => list(filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("recommendationPreferences") => recommendation_preferences()
      }
      
  """
  @type get_auto_scaling_group_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      utilization_metric() :: %{
        "name" => list(any()),
        "statistic" => list(any()),
        "value" => float()
      }
      
  """
  @type utilization_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_recommendation_option() :: %{
        "instanceGpuInfo" => gpu_info(),
        "instanceType" => String.t(),
        "migrationEffort" => list(any()),
        "performanceRisk" => float(),
        "platformDifferences" => list(list(any())()),
        "projectedUtilizationMetrics" => list(utilization_metric()),
        "rank" => integer(),
        "savingsOpportunity" => savings_opportunity(),
        "savingsOpportunityAfterDiscounts" => instance_savings_opportunity_after_discounts()
      }
      
  """
  @type instance_recommendation_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      volume_recommendation_option() :: %{
        "configuration" => volume_configuration(),
        "performanceRisk" => float(),
        "rank" => integer(),
        "savingsOpportunity" => savings_opportunity(),
        "savingsOpportunityAfterDiscounts" => ebs_savings_opportunity_after_discounts()
      }
      
  """
  @type volume_recommendation_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      e_c_s_service_projected_metric() :: %{
        "lowerBoundValues" => list(float()),
        "name" => list(any()),
        "timestamps" => list(non_neg_integer()),
        "upperBoundValues" => list(float())
      }
      
  """
  @type e_c_s_service_projected_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enrollment_filter() :: %{
        "name" => list(any()),
        "values" => list(String.t())
      }
      
  """
  @type enrollment_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      e_c_s_service_recommendation_filter() :: %{
        "name" => list(any()),
        "values" => list(String.t())
      }
      
  """
  @type e_c_s_service_recommendation_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_license_recommendations_response() :: %{
        "errors" => list(get_recommendation_error()),
        "licenseRecommendations" => list(license_recommendation()),
        "nextToken" => String.t()
      }
      
  """
  @type get_license_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      license_recommendation_filter() :: %{
        "name" => list(any()),
        "values" => list(String.t())
      }
      
  """
  @type license_recommendation_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      e_c_s_service_recommended_option_projected_metric() :: %{
        "projectedMetrics" => list(e_c_s_service_projected_metric()),
        "recommendedCpuUnits" => integer(),
        "recommendedMemorySize" => integer()
      }
      
  """
  @type e_c_s_service_recommended_option_projected_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_database_recommended_option_projected_metric() :: %{
        "projectedMetrics" => list(rds_database_projected_metric()),
        "rank" => integer(),
        "recommendedDBInstanceClass" => String.t()
      }
      
  """
  @type rds_database_recommended_option_projected_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ebs_estimated_monthly_savings() :: %{
        "currency" => list(any()),
        "value" => float()
      }
      
  """
  @type ebs_estimated_monthly_savings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      external_metrics_preference() :: %{
        "source" => list(any())
      }
      
  """
  @type external_metrics_preference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_ebs_volume_recommendations_request() :: %{
        optional("accountIds") => list(String.t()),
        optional("fieldsToExport") => list(list(any())()),
        optional("fileFormat") => list(any()),
        optional("filters") => list(ebs_filter()),
        optional("includeMemberAccounts") => boolean(),
        required("s3DestinationConfig") => s3_destination_config()
      }
      
  """
  @type export_ebs_volume_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_idle_recommendations_response() :: %{
        "jobId" => String.t(),
        "s3Destination" => s3_destination()
      }
      
  """
  @type export_idle_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_auto_scaling_group_recommendations_response() :: %{
        "autoScalingGroupRecommendations" => list(auto_scaling_group_recommendation()),
        "errors" => list(get_recommendation_error()),
        "nextToken" => String.t()
      }
      
  """
  @type get_auto_scaling_group_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_instance_savings_opportunity_after_discounts() :: %{
        "estimatedMonthlySavings" => rds_instance_estimated_monthly_savings(),
        "savingsOpportunityPercentage" => float()
      }
      
  """
  @type rds_instance_savings_opportunity_after_discounts() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      e_c_s_savings_estimation_mode() :: %{
        "source" => list(any())
      }
      
  """
  @type e_c_s_savings_estimation_mode() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_ec2_recommendation_projected_metrics_request() :: %{
        optional("recommendationPreferences") => recommendation_preferences(),
        required("endTime") => non_neg_integer(),
        required("instanceArn") => String.t(),
        required("period") => integer(),
        required("startTime") => non_neg_integer(),
        required("stat") => list(any())
      }
      
  """
  @type get_ec2_recommendation_projected_metrics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      effective_preferred_resource() :: %{
        "effectiveIncludeList" => list(String.t()),
        "excludeList" => list(String.t()),
        "includeList" => list(String.t()),
        "name" => list(any())
      }
      
  """
  @type effective_preferred_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      e_c_s_effective_recommendation_preferences() :: %{
        "savingsEstimationMode" => e_c_s_savings_estimation_mode()
      }
      
  """
  @type e_c_s_effective_recommendation_preferences() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reason_code_summary() :: %{
        "name" => list(any()),
        "value" => float()
      }
      
  """
  @type reason_code_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_enrollment_status_response() :: %{
        "lastUpdatedTimestamp" => non_neg_integer(),
        "memberAccountsEnrolled" => boolean(),
        "numberOfMemberAccountsOptedIn" => integer(),
        "status" => list(any()),
        "statusReason" => String.t()
      }
      
  """
  @type get_enrollment_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ebs_savings_opportunity_after_discounts() :: %{
        "estimatedMonthlySavings" => ebs_estimated_monthly_savings(),
        "savingsOpportunityPercentage" => float()
      }
      
  """
  @type ebs_savings_opportunity_after_discounts() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_e_c_s_service_recommendations_response() :: %{
        "jobId" => String.t(),
        "s3Destination" => s3_destination()
      }
      
  """
  @type export_e_c_s_service_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      projected_metric() :: %{
        "name" => list(any()),
        "timestamps" => list(non_neg_integer()),
        "values" => list(float())
      }
      
  """
  @type projected_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_storage_savings_opportunity_after_discounts() :: %{
        "estimatedMonthlySavings" => rds_storage_estimated_monthly_savings(),
        "savingsOpportunityPercentage" => float()
      }
      
  """
  @type rds_storage_savings_opportunity_after_discounts() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_license_recommendations_response() :: %{
        "jobId" => String.t(),
        "s3Destination" => s3_destination()
      }
      
  """
  @type export_license_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      e_c_s_service_projected_utilization_metric() :: %{
        "lowerBoundValue" => float(),
        "name" => list(any()),
        "statistic" => list(any()),
        "upperBoundValue" => float()
      }
      
  """
  @type e_c_s_service_projected_utilization_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      effective_recommendation_preferences() :: %{
        "cpuVendorArchitectures" => list(list(any())()),
        "enhancedInfrastructureMetrics" => list(any()),
        "externalMetricsPreference" => external_metrics_preference(),
        "inferredWorkloadTypes" => list(any()),
        "lookBackPeriod" => list(any()),
        "preferredResources" => list(effective_preferred_resource()),
        "savingsEstimationMode" => instance_savings_estimation_mode(),
        "utilizationPreferences" => list(utilization_preference())
      }
      
  """
  @type effective_recommendation_preferences() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      e_c_s_service_recommendation() :: %{
        "accountId" => String.t(),
        "currentPerformanceRisk" => list(any()),
        "currentServiceConfiguration" => service_configuration(),
        "effectiveRecommendationPreferences" => e_c_s_effective_recommendation_preferences(),
        "finding" => list(any()),
        "findingReasonCodes" => list(list(any())()),
        "lastRefreshTimestamp" => non_neg_integer(),
        "launchType" => list(any()),
        "lookbackPeriodInDays" => float(),
        "serviceArn" => String.t(),
        "serviceRecommendationOptions" => list(e_c_s_service_recommendation_option()),
        "tags" => list(tag()),
        "utilizationMetrics" => list(e_c_s_service_utilization_metric())
      }
      
  """
  @type e_c_s_service_recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_lambda_function_recommendations_response() :: %{
        "lambdaFunctionRecommendations" => list(lambda_function_recommendation()),
        "nextToken" => String.t()
      }
      
  """
  @type get_lambda_function_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      volume_configuration() :: %{
        "rootVolume" => boolean(),
        "volumeBaselineIOPS" => integer(),
        "volumeBaselineThroughput" => integer(),
        "volumeBurstIOPS" => integer(),
        "volumeBurstThroughput" => integer(),
        "volumeSize" => integer(),
        "volumeType" => String.t()
      }
      
  """
  @type volume_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation_summary() :: %{
        "accountId" => String.t(),
        "aggregatedSavingsOpportunity" => savings_opportunity(),
        "currentPerformanceRiskRatings" => current_performance_risk_ratings(),
        "idleSavingsOpportunity" => savings_opportunity(),
        "idleSummaries" => list(idle_summary()),
        "inferredWorkloadSavings" => list(inferred_workload_saving()),
        "recommendationResourceType" => list(any()),
        "savingsOpportunity" => savings_opportunity(),
        "summaries" => list(summary())
      }
      
  """
  @type recommendation_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_group_configuration() :: %{
        "allocationStrategy" => list(any()),
        "desiredCapacity" => integer(),
        "estimatedInstanceHourReductionPercentage" => float(),
        "instanceType" => String.t(),
        "maxSize" => integer(),
        "minSize" => integer(),
        "mixedInstanceTypes" => list(String.t()),
        "type" => list(any())
      }
      
  """
  @type auto_scaling_group_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_group_recommendation_option() :: %{
        "configuration" => auto_scaling_group_configuration(),
        "instanceGpuInfo" => gpu_info(),
        "migrationEffort" => list(any()),
        "performanceRisk" => float(),
        "projectedUtilizationMetrics" => list(utilization_metric()),
        "rank" => integer(),
        "savingsOpportunity" => savings_opportunity(),
        "savingsOpportunityAfterDiscounts" => auto_scaling_group_savings_opportunity_after_discounts()
      }
      
  """
  @type auto_scaling_group_recommendation_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_function_recommendation_filter() :: %{
        "name" => list(any()),
        "values" => list(String.t())
      }
      
  """
  @type lambda_function_recommendation_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inferred_workload_saving() :: %{
        "estimatedMonthlySavings" => estimated_monthly_savings(),
        "inferredWorkloadTypes" => list(list(any())())
      }
      
  """
  @type inferred_workload_saving() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_db_instance_recommendation_option() :: %{
        "dbInstanceClass" => String.t(),
        "performanceRisk" => float(),
        "projectedUtilizationMetrics" => list(rds_db_utilization_metric()),
        "rank" => integer(),
        "savingsOpportunity" => savings_opportunity(),
        "savingsOpportunityAfterDiscounts" => rds_instance_savings_opportunity_after_discounts()
      }
      
  """
  @type rds_db_instance_recommendation_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_function_utilization_metric() :: %{
        "name" => list(any()),
        "statistic" => list(any()),
        "value" => float()
      }
      
  """
  @type lambda_function_utilization_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_db_recommendation_filter() :: %{
        "name" => list(any()),
        "values" => list(String.t())
      }
      
  """
  @type rds_db_recommendation_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_rds_database_recommendations_request() :: %{
        optional("accountIds") => list(String.t()),
        optional("fieldsToExport") => list(list(any())()),
        optional("fileFormat") => list(any()),
        optional("filters") => list(rds_db_recommendation_filter()),
        optional("includeMemberAccounts") => boolean(),
        optional("recommendationPreferences") => recommendation_preferences(),
        required("s3DestinationConfig") => s3_destination_config()
      }
      
  """
  @type export_rds_database_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ebs_filter() :: %{
        "name" => list(any()),
        "values" => list(String.t())
      }
      
  """
  @type ebs_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_savings_estimation_mode() :: %{
        "source" => list(any())
      }
      
  """
  @type lambda_savings_estimation_mode() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_auto_scaling_group_recommendations_response() :: %{
        "jobId" => String.t(),
        "s3Destination" => s3_destination()
      }
      
  """
  @type export_auto_scaling_group_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_destination() :: %{
        "s3" => s3_destination()
      }
      
  """
  @type export_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation_preferences() :: %{
        "cpuVendorArchitectures" => list(list(any())())
      }
      
  """
  @type recommendation_preferences() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommended_option_projected_metric() :: %{
        "projectedMetrics" => list(projected_metric()),
        "rank" => integer(),
        "recommendedInstanceType" => String.t()
      }
      
  """
  @type recommended_option_projected_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_ec2_instance_recommendations_response() :: %{
        "jobId" => String.t(),
        "s3Destination" => s3_destination()
      }
      
  """
  @type export_ec2_instance_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation_export_job() :: %{
        "creationTimestamp" => non_neg_integer(),
        "destination" => export_destination(),
        "failureReason" => String.t(),
        "jobId" => String.t(),
        "lastUpdatedTimestamp" => non_neg_integer(),
        "resourceType" => list(any()),
        "status" => list(any())
      }
      
  """
  @type recommendation_export_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_destination_config() :: %{
        "bucket" => String.t(),
        "keyPrefix" => String.t()
      }
      
  """
  @type s3_destination_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      summary() :: %{
        "name" => list(any()),
        "reasonCodeSummaries" => list(reason_code_summary()),
        "value" => float()
      }
      
  """
  @type summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_rds_database_recommendation_projected_metrics_response() :: %{
        "recommendedOptionProjectedMetrics" => list(rds_database_recommended_option_projected_metric())
      }
      
  """
  @type get_rds_database_recommendation_projected_metrics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      export_ec2_instance_recommendations_request() :: %{
        optional("accountIds") => list(String.t()),
        optional("fieldsToExport") => list(list(any())()),
        optional("fileFormat") => list(any()),
        optional("filters") => list(filter()),
        optional("includeMemberAccounts") => boolean(),
        optional("recommendationPreferences") => recommendation_preferences(),
        required("s3DestinationConfig") => s3_destination_config()
      }
      
  """
  @type export_ec2_instance_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_rds_database_recommendation_projected_metrics_request() :: %{
        optional("recommendationPreferences") => recommendation_preferences(),
        required("endTime") => non_neg_integer(),
        required("period") => integer(),
        required("resourceArn") => String.t(),
        required("startTime") => non_neg_integer(),
        required("stat") => list(any())
      }
      
  """
  @type get_rds_database_recommendation_projected_metrics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      idle_recommendation_error() :: %{
        "code" => String.t(),
        "identifier" => String.t(),
        "message" => String.t(),
        "resourceType" => list(any())
      }
      
  """
  @type idle_recommendation_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      preferred_resource() :: %{
        "excludeList" => list(String.t()),
        "includeList" => list(String.t()),
        "name" => list(any())
      }
      
  """
  @type preferred_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_configuration() :: %{
        "autoScalingConfiguration" => list(any()),
        "containerConfigurations" => list(container_configuration()),
        "cpu" => integer(),
        "memory" => integer(),
        "taskDefinitionArn" => String.t()
      }
      
  """
  @type service_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_rds_database_recommendations_response() :: %{
        "errors" => list(get_recommendation_error()),
        "nextToken" => String.t(),
        "rdsDBRecommendations" => list(rds_db_recommendation())
      }
      
  """
  @type get_rds_database_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      gpu_info() :: %{
        "gpus" => list(gpu())
      }
      
  """
  @type gpu_info() :: %{String.t() => any()}

  @type delete_recommendation_preferences_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | missing_authentication_token()

  @type describe_recommendation_export_jobs_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | missing_authentication_token()

  @type export_auto_scaling_group_recommendations_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | missing_authentication_token()

  @type export_e_c_s_service_recommendations_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | missing_authentication_token()

  @type export_ebs_volume_recommendations_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | missing_authentication_token()

  @type export_ec2_instance_recommendations_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | missing_authentication_token()

  @type export_idle_recommendations_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | missing_authentication_token()

  @type export_lambda_function_recommendations_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | missing_authentication_token()

  @type export_license_recommendations_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | missing_authentication_token()

  @type export_rds_database_recommendations_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | missing_authentication_token()

  @type get_auto_scaling_group_recommendations_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | missing_authentication_token()

  @type get_e_c_s_service_recommendation_projected_metrics_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | missing_authentication_token()

  @type get_e_c_s_service_recommendations_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | missing_authentication_token()

  @type get_ebs_volume_recommendations_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | missing_authentication_token()

  @type get_ec2_instance_recommendations_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | missing_authentication_token()

  @type get_ec2_recommendation_projected_metrics_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | missing_authentication_token()

  @type get_effective_recommendation_preferences_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | missing_authentication_token()

  @type get_enrollment_status_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | missing_authentication_token()

  @type get_enrollment_statuses_for_organization_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | missing_authentication_token()

  @type get_idle_recommendations_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | missing_authentication_token()

  @type get_lambda_function_recommendations_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | missing_authentication_token()

  @type get_license_recommendations_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | missing_authentication_token()

  @type get_rds_database_recommendation_projected_metrics_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | missing_authentication_token()

  @type get_rds_database_recommendations_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | missing_authentication_token()

  @type get_recommendation_preferences_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | missing_authentication_token()

  @type get_recommendation_summaries_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | missing_authentication_token()

  @type put_recommendation_preferences_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | opt_in_required_exception()
          | resource_not_found_exception()
          | missing_authentication_token()

  @type update_enrollment_status_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_parameter_value_exception()
          | missing_authentication_token()

  def metadata do
    %{
      api_version: "2019-11-01",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "compute-optimizer",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Compute Optimizer",
      signature_version: "v4",
      signing_name: "compute-optimizer",
      target_prefix: "ComputeOptimizerService"
    }
  end

  @doc """
  Deletes a recommendation preference, such as enhanced infrastructure metrics.

  For more information, see [Activating enhanced infrastructure
  metrics](https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html)
  in the *Compute Optimizer User
  Guide*.
  """
  @spec delete_recommendation_preferences(
          map(),
          delete_recommendation_preferences_request(),
          list()
        ) ::
          {:ok, delete_recommendation_preferences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_recommendation_preferences_errors()}
  def delete_recommendation_preferences(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRecommendationPreferences", input, options)
  end

  @doc """
  Describes recommendation export jobs created in the last seven days.

  Use the `ExportAutoScalingGroupRecommendations` or
  `ExportEC2InstanceRecommendations` actions to request an export of your
  recommendations. Then use the `DescribeRecommendationExportJobs` action
  to view your export jobs.
  """
  @spec describe_recommendation_export_jobs(
          map(),
          describe_recommendation_export_jobs_request(),
          list()
        ) ::
          {:ok, describe_recommendation_export_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_recommendation_export_jobs_errors()}
  def describe_recommendation_export_jobs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeRecommendationExportJobs", input, options)
  end

  @doc """
  Exports optimization recommendations for Auto Scaling groups.

  Recommendations are exported in a comma-separated values (.csv) file, and its
  metadata
  in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon
  Simple Storage Service (Amazon S3) bucket that you specify. For more
  information, see [Exporting Recommendations](https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
  in the *Compute Optimizer User
  Guide*.

  You can have only one Auto Scaling group export job in progress per Amazon Web
  Services Region.
  """
  @spec export_auto_scaling_group_recommendations(
          map(),
          export_auto_scaling_group_recommendations_request(),
          list()
        ) ::
          {:ok, export_auto_scaling_group_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, export_auto_scaling_group_recommendations_errors()}
  def export_auto_scaling_group_recommendations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ExportAutoScalingGroupRecommendations", input, options)
  end

  @doc """

  Exports optimization recommendations for Amazon ECS services on Fargate.

  Recommendations are exported in a CSV file, and its metadata
  in a JSON file, to an existing Amazon Simple Storage Service (Amazon S3) bucket
  that you specify. For more information, see [Exporting Recommendations](https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
  in the *Compute Optimizer User
  Guide*.

  You can only have one Amazon ECS service export job in progress per Amazon Web
  Services Region.
  """
  @spec export_e_c_s_service_recommendations(
          map(),
          export_e_c_s_service_recommendations_request(),
          list()
        ) ::
          {:ok, export_e_c_s_service_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, export_e_c_s_service_recommendations_errors()}
  def export_e_c_s_service_recommendations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ExportECSServiceRecommendations", input, options)
  end

  @doc """
  Exports optimization recommendations for Amazon EBS volumes.

  Recommendations are exported in a comma-separated values (.csv) file, and its
  metadata
  in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon
  Simple Storage Service (Amazon S3) bucket that you specify. For more
  information, see [Exporting Recommendations](https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
  in the *Compute Optimizer User
  Guide*.

  You can have only one Amazon EBS volume export job in progress per Amazon Web
  Services Region.
  """
  @spec export_ebs_volume_recommendations(
          map(),
          export_ebs_volume_recommendations_request(),
          list()
        ) ::
          {:ok, export_ebs_volume_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, export_ebs_volume_recommendations_errors()}
  def export_ebs_volume_recommendations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ExportEBSVolumeRecommendations", input, options)
  end

  @doc """
  Exports optimization recommendations for Amazon EC2 instances.

  Recommendations are exported in a comma-separated values (.csv) file, and its
  metadata
  in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon
  Simple Storage Service (Amazon S3) bucket that you specify. For more
  information, see [Exporting Recommendations](https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
  in the *Compute Optimizer User
  Guide*.

  You can have only one Amazon EC2 instance export job in progress per Amazon Web
  Services Region.
  """
  @spec export_ec2_instance_recommendations(
          map(),
          export_ec2_instance_recommendations_request(),
          list()
        ) ::
          {:ok, export_ec2_instance_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, export_ec2_instance_recommendations_errors()}
  def export_ec2_instance_recommendations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ExportEC2InstanceRecommendations", input, options)
  end

  @doc """

  Export optimization recommendations for your idle resources.

  Recommendations are exported in a comma-separated values (CSV) file, and its
  metadata
  in a JavaScript Object Notation (JSON) file, to an existing Amazon Simple
  Storage Service (Amazon S3) bucket that you specify. For more information, see
  [Exporting Recommendations](https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
  in the *Compute Optimizer User
  Guide*.

  You can have only one idle resource export job in progress per Amazon Web
  Services Region.
  """
  @spec export_idle_recommendations(map(), export_idle_recommendations_request(), list()) ::
          {:ok, export_idle_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, export_idle_recommendations_errors()}
  def export_idle_recommendations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ExportIdleRecommendations", input, options)
  end

  @doc """
  Exports optimization recommendations for Lambda functions.

  Recommendations are exported in a comma-separated values (.csv) file, and its
  metadata
  in a JavaScript Object Notation (JSON) (.json) file, to an existing Amazon
  Simple Storage Service (Amazon S3) bucket that you specify. For more
  information, see [Exporting Recommendations](https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
  in the *Compute Optimizer User
  Guide*.

  You can have only one Lambda function export job in progress per Amazon Web
  Services Region.
  """
  @spec export_lambda_function_recommendations(
          map(),
          export_lambda_function_recommendations_request(),
          list()
        ) ::
          {:ok, export_lambda_function_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, export_lambda_function_recommendations_errors()}
  def export_lambda_function_recommendations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ExportLambdaFunctionRecommendations", input, options)
  end

  @doc """

  Export optimization recommendations for your licenses.

  Recommendations are exported in a comma-separated values (CSV) file, and its
  metadata
  in a JavaScript Object Notation (JSON) file, to an existing Amazon Simple
  Storage Service (Amazon S3) bucket that you specify. For more information, see
  [Exporting Recommendations](https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
  in the *Compute Optimizer User
  Guide*.

  You can have only one license export job in progress per Amazon Web Services
  Region.
  """
  @spec export_license_recommendations(map(), export_license_recommendations_request(), list()) ::
          {:ok, export_license_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, export_license_recommendations_errors()}
  def export_license_recommendations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ExportLicenseRecommendations", input, options)
  end

  @doc """

  Export optimization recommendations for your Amazon Aurora and Amazon Relational
  Database Service (Amazon RDS) databases.

  Recommendations are exported in a comma-separated values (CSV) file, and its
  metadata
  in a JavaScript Object Notation (JSON) file, to an existing Amazon Simple
  Storage Service (Amazon S3) bucket that you specify. For more information, see
  [Exporting Recommendations](https://docs.aws.amazon.com/compute-optimizer/latest/ug/exporting-recommendations.html)
  in the *Compute Optimizer User
  Guide*.

  You can have only one Amazon Aurora or RDS export job in progress per Amazon Web
  Services Region.
  """
  @spec export_rds_database_recommendations(
          map(),
          export_rds_database_recommendations_request(),
          list()
        ) ::
          {:ok, export_rds_database_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, export_rds_database_recommendations_errors()}
  def export_rds_database_recommendations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ExportRDSDatabaseRecommendations", input, options)
  end

  @doc """
  Returns Auto Scaling group recommendations.

  Compute Optimizer generates recommendations for Amazon EC2 Auto Scaling groups
  that
  meet a specific set of requirements. For more information, see the [Supported resources and
  requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
  in the *Compute Optimizer User
  Guide*.
  """
  @spec get_auto_scaling_group_recommendations(
          map(),
          get_auto_scaling_group_recommendations_request(),
          list()
        ) ::
          {:ok, get_auto_scaling_group_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_auto_scaling_group_recommendations_errors()}
  def get_auto_scaling_group_recommendations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAutoScalingGroupRecommendations", input, options)
  end

  @doc """

  Returns the projected metrics of Amazon ECS service recommendations.
  """
  @spec get_e_c_s_service_recommendation_projected_metrics(
          map(),
          get_e_c_s_service_recommendation_projected_metrics_request(),
          list()
        ) ::
          {:ok, get_e_c_s_service_recommendation_projected_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_e_c_s_service_recommendation_projected_metrics_errors()}
  def get_e_c_s_service_recommendation_projected_metrics(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "GetECSServiceRecommendationProjectedMetrics",
      input,
      options
    )
  end

  @doc """

  Returns Amazon ECS service recommendations.

  Compute Optimizer generates recommendations for Amazon ECS services on
  Fargate that meet a specific set of requirements. For more
  information, see the [Supported resources and requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
  in the *Compute Optimizer User
  Guide*.
  """
  @spec get_e_c_s_service_recommendations(
          map(),
          get_e_c_s_service_recommendations_request(),
          list()
        ) ::
          {:ok, get_e_c_s_service_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_e_c_s_service_recommendations_errors()}
  def get_e_c_s_service_recommendations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetECSServiceRecommendations", input, options)
  end

  @doc """
  Returns Amazon Elastic Block Store (Amazon EBS) volume recommendations.

  Compute Optimizer generates recommendations for Amazon EBS volumes that
  meet a specific set of requirements. For more information, see the [Supported resources and
  requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
  in the *Compute Optimizer User
  Guide*.
  """
  @spec get_ebs_volume_recommendations(map(), get_ebs_volume_recommendations_request(), list()) ::
          {:ok, get_ebs_volume_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_ebs_volume_recommendations_errors()}
  def get_ebs_volume_recommendations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetEBSVolumeRecommendations", input, options)
  end

  @doc """
  Returns Amazon EC2 instance recommendations.

  Compute Optimizer generates recommendations for Amazon Elastic Compute Cloud
  (Amazon EC2) instances that meet a specific set of requirements. For more
  information, see the [Supported resources and requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
  in the *Compute Optimizer User
  Guide*.
  """
  @spec get_ec2_instance_recommendations(
          map(),
          get_ec2_instance_recommendations_request(),
          list()
        ) ::
          {:ok, get_ec2_instance_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_ec2_instance_recommendations_errors()}
  def get_ec2_instance_recommendations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetEC2InstanceRecommendations", input, options)
  end

  @doc """
  Returns the projected utilization metrics of Amazon EC2 instance
  recommendations.

  The `Cpu` and `Memory` metrics are the only projected
  utilization metrics returned when you run this action. Additionally, the
  `Memory` metric is returned only for resources that have the unified
  CloudWatch agent installed on them. For more information, see [Enabling Memory Utilization with the CloudWatch
  Agent](https://docs.aws.amazon.com/compute-optimizer/latest/ug/metrics.html#cw-agent).
  """
  @spec get_ec2_recommendation_projected_metrics(
          map(),
          get_ec2_recommendation_projected_metrics_request(),
          list()
        ) ::
          {:ok, get_ec2_recommendation_projected_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_ec2_recommendation_projected_metrics_errors()}
  def get_ec2_recommendation_projected_metrics(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetEC2RecommendationProjectedMetrics", input, options)
  end

  @doc """
  Returns the recommendation preferences that are in effect for a given resource,
  such
  as enhanced infrastructure metrics.

  Considers all applicable preferences that you might
  have set at the resource, account, and organization level.

  When you create a recommendation preference, you can set its status to
  `Active` or `Inactive`. Use this action to view the
  recommendation preferences that are in effect, or `Active`.
  """
  @spec get_effective_recommendation_preferences(
          map(),
          get_effective_recommendation_preferences_request(),
          list()
        ) ::
          {:ok, get_effective_recommendation_preferences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_effective_recommendation_preferences_errors()}
  def get_effective_recommendation_preferences(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetEffectiveRecommendationPreferences", input, options)
  end

  @doc """
  Returns the enrollment (opt in) status of an account to the Compute Optimizer
  service.

  If the account is the management account of an organization, this action also
  confirms
  the enrollment status of member accounts of the organization. Use the
  `GetEnrollmentStatusesForOrganization` action to get detailed information
  about the enrollment status of member accounts of an organization.
  """
  @spec get_enrollment_status(map(), get_enrollment_status_request(), list()) ::
          {:ok, get_enrollment_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_enrollment_status_errors()}
  def get_enrollment_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetEnrollmentStatus", input, options)
  end

  @doc """
  Returns the Compute Optimizer enrollment (opt-in) status of organization member
  accounts, if your account is an organization management account.

  To get the enrollment status of standalone accounts, use the
  `GetEnrollmentStatus` action.
  """
  @spec get_enrollment_statuses_for_organization(
          map(),
          get_enrollment_statuses_for_organization_request(),
          list()
        ) ::
          {:ok, get_enrollment_statuses_for_organization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_enrollment_statuses_for_organization_errors()}
  def get_enrollment_statuses_for_organization(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetEnrollmentStatusesForOrganization", input, options)
  end

  @doc """
  Returns idle resource recommendations.

  Compute Optimizer generates recommendations for
  idle resources that meet a specific set of requirements. For more information,
  see
  [Resource requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
  in the
  *Compute Optimizer User Guide*
  """
  @spec get_idle_recommendations(map(), get_idle_recommendations_request(), list()) ::
          {:ok, get_idle_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_idle_recommendations_errors()}
  def get_idle_recommendations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetIdleRecommendations", input, options)
  end

  @doc """
  Returns Lambda function recommendations.

  Compute Optimizer generates recommendations for functions that meet a specific
  set
  of requirements. For more information, see the [Supported resources and requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
  in the *Compute Optimizer User
  Guide*.
  """
  @spec get_lambda_function_recommendations(
          map(),
          get_lambda_function_recommendations_request(),
          list()
        ) ::
          {:ok, get_lambda_function_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_lambda_function_recommendations_errors()}
  def get_lambda_function_recommendations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetLambdaFunctionRecommendations", input, options)
  end

  @doc """
  Returns license recommendations for Amazon EC2 instances that run on a specific
  license.

  Compute Optimizer generates recommendations for licenses that meet a specific
  set of requirements. For more
  information, see the [Supported resources and requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
  in the *Compute Optimizer User
  Guide*.
  """
  @spec get_license_recommendations(map(), get_license_recommendations_request(), list()) ::
          {:ok, get_license_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_license_recommendations_errors()}
  def get_license_recommendations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetLicenseRecommendations", input, options)
  end

  @doc """

  Returns the projected metrics of Aurora and RDS database recommendations.
  """
  @spec get_rds_database_recommendation_projected_metrics(
          map(),
          get_rds_database_recommendation_projected_metrics_request(),
          list()
        ) ::
          {:ok, get_rds_database_recommendation_projected_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_rds_database_recommendation_projected_metrics_errors()}
  def get_rds_database_recommendation_projected_metrics(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "GetRDSDatabaseRecommendationProjectedMetrics",
      input,
      options
    )
  end

  @doc """

  Returns Amazon Aurora and RDS database recommendations.

  Compute Optimizer generates recommendations for Amazon Aurora and RDS databases
  that
  meet a specific set of requirements. For more
  information, see the [Supported resources and requirements](https://docs.aws.amazon.com/compute-optimizer/latest/ug/requirements.html)
  in the *Compute Optimizer User
  Guide*.
  """
  @spec get_rds_database_recommendations(
          map(),
          get_rds_database_recommendations_request(),
          list()
        ) ::
          {:ok, get_rds_database_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_rds_database_recommendations_errors()}
  def get_rds_database_recommendations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRDSDatabaseRecommendations", input, options)
  end

  @doc """
  Returns existing recommendation preferences, such as enhanced infrastructure
  metrics.

  Use the `scope` parameter to specify which preferences to return. You can
  specify to return preferences for an organization, a specific account ID, or a
  specific
  EC2 instance or Auto Scaling group Amazon Resource Name (ARN).

  For more information, see [Activating enhanced infrastructure
  metrics](https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html)
  in the *Compute Optimizer User
  Guide*.
  """
  @spec get_recommendation_preferences(map(), get_recommendation_preferences_request(), list()) ::
          {:ok, get_recommendation_preferences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_recommendation_preferences_errors()}
  def get_recommendation_preferences(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRecommendationPreferences", input, options)
  end

  @doc """
  Returns the optimization findings for an account.

  It returns the number of:

    *
  Amazon EC2 instances in an account that are
  `Underprovisioned`, `Overprovisioned`, or
  `Optimized`.

    *
  EC2Auto Scaling groups in an account that are `NotOptimized`, or
  `Optimized`.

    *
  Amazon EBS volumes in an account that are `NotOptimized`,
  or `Optimized`.

    *
  Lambda functions in an account that are `NotOptimized`,
  or `Optimized`.

    *
  Amazon ECS services in an account that are `Underprovisioned`,
  `Overprovisioned`, or `Optimized`.

    *
  Commercial software licenses in an account that are `InsufficientMetrics`,
  `NotOptimized` or `Optimized`.

    *
  Amazon Aurora and Amazon RDS databases in an account that are
  `Underprovisioned`,
  `Overprovisioned`, `Optimized`, or `NotOptimized`.
  """
  @spec get_recommendation_summaries(map(), get_recommendation_summaries_request(), list()) ::
          {:ok, get_recommendation_summaries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_recommendation_summaries_errors()}
  def get_recommendation_summaries(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRecommendationSummaries", input, options)
  end

  @doc """
  Creates a new recommendation preference or updates an existing recommendation
  preference, such as enhanced infrastructure metrics.

  For more information, see [Activating enhanced infrastructure
  metrics](https://docs.aws.amazon.com/compute-optimizer/latest/ug/enhanced-infrastructure-metrics.html)
  in the *Compute Optimizer User
  Guide*.
  """
  @spec put_recommendation_preferences(map(), put_recommendation_preferences_request(), list()) ::
          {:ok, put_recommendation_preferences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_recommendation_preferences_errors()}
  def put_recommendation_preferences(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutRecommendationPreferences", input, options)
  end

  @doc """
  Updates the enrollment (opt in and opt out) status of an account to the Compute
  Optimizer service.

  If the account is a management account of an organization, this action can also
  be
  used to enroll member accounts of the organization.

  You must have the appropriate permissions to opt in to Compute Optimizer, to
  view its
  recommendations, and to opt out. For more information, see [Controlling access with Amazon Web Services Identity and Access
  Management](https://docs.aws.amazon.com/compute-optimizer/latest/ug/security-iam.html)
  in the *Compute Optimizer User Guide*.

  When you opt in, Compute Optimizer automatically creates a service-linked role
  in your
  account to access its data. For more information, see [Using Service-Linked Roles for Compute
  Optimizer](https://docs.aws.amazon.com/compute-optimizer/latest/ug/using-service-linked-roles.html)
  in the *Compute Optimizer User Guide*.
  """
  @spec update_enrollment_status(map(), update_enrollment_status_request(), list()) ::
          {:ok, update_enrollment_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_enrollment_status_errors()}
  def update_enrollment_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateEnrollmentStatus", input, options)
  end
end
