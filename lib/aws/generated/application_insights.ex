# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ApplicationInsights do
  @moduledoc """
  Amazon CloudWatch Application Insights

  Amazon CloudWatch Application Insights is a service that helps you detect common
  problems with your applications.

  It enables you to pinpoint the source of issues in your
  applications (built with technologies such as Microsoft IIS, .NET, and Microsoft
  SQL
  Server), by providing key insights into detected problems.

  After you onboard your application, CloudWatch Application Insights identifies,
  recommends, and sets up metrics and logs. It continuously analyzes and
  correlates your
  metrics and logs for unusual behavior to surface actionable problems with your
  application.
  For example, if your application is slow and unresponsive and leading to HTTP
  500 errors in
  your Application Load Balancer (ALB), Application Insights informs you that a
  memory
  pressure problem with your SQL Server database is occurring. It bases this
  analysis on
  impactful metrics and log errors.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      update_problem_request() :: %{
        optional("UpdateStatus") => list(any()),
        optional("Visibility") => list(any()),
        required("ProblemId") => String.t() | Atom.t()
      }
      
  """
  @type update_problem_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_log_patterns_request() :: %{
        optional("AccountId") => String.t() | Atom.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("PatternSetName") => String.t() | Atom.t(),
        required("ResourceGroupName") => String.t() | Atom.t()
      }
      
  """
  @type list_log_patterns_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      add_workload_response() :: %{
        "WorkloadConfiguration" => workload_configuration(),
        "WorkloadId" => String.t() | Atom.t()
      }
      
  """
  @type add_workload_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t() | Atom.t(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_workloads_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "WorkloadList" => list(workload())
      }
      
  """
  @type list_workloads_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_log_pattern_request() :: %{
        optional("AccountId") => String.t() | Atom.t(),
        required("PatternName") => String.t() | Atom.t(),
        required("PatternSetName") => String.t() | Atom.t(),
        required("ResourceGroupName") => String.t() | Atom.t()
      }
      
  """
  @type describe_log_pattern_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_workloads_request() :: %{
        optional("AccountId") => String.t() | Atom.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        required("ComponentName") => String.t() | Atom.t(),
        required("ResourceGroupName") => String.t() | Atom.t()
      }
      
  """
  @type list_workloads_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_problem_observations_request() :: %{
        optional("AccountId") => String.t() | Atom.t(),
        required("ProblemId") => String.t() | Atom.t()
      }
      
  """
  @type describe_problem_observations_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_problems_response() :: %{
        "AccountId" => String.t() | Atom.t(),
        "NextToken" => String.t() | Atom.t(),
        "ProblemList" => list(problem()),
        "ResourceGroupName" => String.t() | Atom.t()
      }
      
  """
  @type list_problems_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_observation_response() :: %{
        "Observation" => observation()
      }
      
  """
  @type describe_observation_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_component_configuration_recommendation_request() :: %{
        optional("RecommendationType") => list(any()),
        optional("WorkloadName") => String.t() | Atom.t(),
        required("ComponentName") => String.t() | Atom.t(),
        required("ResourceGroupName") => String.t() | Atom.t(),
        required("Tier") => list(any())
      }
      
  """
  @type describe_component_configuration_recommendation_request() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:
      
      log_pattern() :: %{
        "Pattern" => String.t() | Atom.t(),
        "PatternName" => String.t() | Atom.t(),
        "PatternSetName" => String.t() | Atom.t(),
        "Rank" => integer()
      }
      
  """
  @type log_pattern() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_component_request() :: %{
        required("ComponentName") => String.t() | Atom.t(),
        required("ResourceGroupName") => String.t() | Atom.t()
      }
      
  """
  @type delete_component_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_configuration_history_response() :: %{
        "EventList" => list(configuration_event()),
        "NextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_configuration_history_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t() | Atom.t(),
        required("TagKeys") => list(String.t() | Atom.t())
      }
      
  """
  @type untag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_component_configuration_response() :: %{
        "ComponentConfiguration" => String.t() | Atom.t(),
        "Monitor" => boolean(),
        "Tier" => list(any())
      }
      
  """
  @type describe_component_configuration_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_component_response() :: %{}
      
  """
  @type update_component_response() :: %{}

  @typedoc """

  ## Example:
      
      update_log_pattern_response() :: %{
        "LogPattern" => log_pattern(),
        "ResourceGroupName" => String.t() | Atom.t()
      }
      
  """
  @type update_log_pattern_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_problem_observations_response() :: %{
        "RelatedObservations" => related_observations()
      }
      
  """
  @type describe_problem_observations_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      observation() :: %{
        "XRayRequestCount" => integer(),
        "Value" => float(),
        "SourceType" => String.t() | Atom.t(),
        "Unit" => String.t() | Atom.t(),
        "StatesInput" => String.t() | Atom.t(),
        "EbsCause" => String.t() | Atom.t(),
        "EbsResult" => String.t() | Atom.t(),
        "XRayNodeType" => String.t() | Atom.t(),
        "HealthEventArn" => String.t() | Atom.t(),
        "LineTime" => non_neg_integer(),
        "HealthEventDescription" => String.t() | Atom.t(),
        "CloudWatchEventSource" => list(any()),
        "RdsEventCategories" => String.t() | Atom.t(),
        "StartTime" => non_neg_integer(),
        "XRayErrorPercent" => integer(),
        "XRayFaultPercent" => integer(),
        "StatesStatus" => String.t() | Atom.t(),
        "MetricNamespace" => String.t() | Atom.t(),
        "Id" => String.t() | Atom.t(),
        "MetricName" => String.t() | Atom.t(),
        "XRayRequestAverageLatency" => float(),
        "HealthEventTypeCode" => String.t() | Atom.t(),
        "CodeDeployApplication" => String.t() | Atom.t(),
        "LogGroup" => String.t() | Atom.t(),
        "LogFilter" => list(any()),
        "Ec2State" => String.t() | Atom.t(),
        "CodeDeployInstanceGroupId" => String.t() | Atom.t(),
        "CodeDeployDeploymentGroup" => String.t() | Atom.t(),
        "CloudWatchEventId" => String.t() | Atom.t(),
        "LogText" => String.t() | Atom.t(),
        "HealthEventTypeCategory" => String.t() | Atom.t(),
        "CodeDeployDeploymentId" => String.t() | Atom.t(),
        "SourceARN" => String.t() | Atom.t(),
        "HealthService" => String.t() | Atom.t(),
        "StatesArn" => String.t() | Atom.t(),
        "EbsEvent" => String.t() | Atom.t(),
        "XRayThrottlePercent" => integer(),
        "XRayNodeName" => String.t() | Atom.t(),
        "RdsEventMessage" => String.t() | Atom.t(),
        "StatesExecutionArn" => String.t() | Atom.t(),
        "EndTime" => non_neg_integer(),
        "EbsRequestId" => String.t() | Atom.t(),
        "CodeDeployState" => String.t() | Atom.t(),
        "S3EventName" => String.t() | Atom.t(),
        "CloudWatchEventDetailType" => String.t() | Atom.t()
      }
      
  """
  @type observation() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_component_response() :: %{}
      
  """
  @type create_component_response() :: %{}

  @typedoc """

  ## Example:
      
      update_component_configuration_response() :: %{}
      
  """
  @type update_component_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_problem_response() :: %{
        "Problem" => problem(),
        "SNSNotificationArn" => String.t() | Atom.t()
      }
      
  """
  @type describe_problem_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      application_info() :: %{
        "AccountId" => String.t() | Atom.t(),
        "AttachMissingPermission" => boolean(),
        "AutoConfigEnabled" => boolean(),
        "CWEMonitorEnabled" => boolean(),
        "DiscoveryType" => list(any()),
        "LifeCycle" => String.t() | Atom.t(),
        "OpsCenterEnabled" => boolean(),
        "OpsItemSNSTopicArn" => String.t() | Atom.t(),
        "Remarks" => String.t() | Atom.t(),
        "ResourceGroupName" => String.t() | Atom.t(),
        "SNSNotificationArn" => String.t() | Atom.t()
      }
      
  """
  @type application_info() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_component_request() :: %{
        optional("NewComponentName") => String.t() | Atom.t(),
        optional("ResourceList") => list(String.t() | Atom.t()),
        required("ComponentName") => String.t() | Atom.t(),
        required("ResourceGroupName") => String.t() | Atom.t()
      }
      
  """
  @type update_component_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      workload() :: %{
        "ComponentName" => String.t() | Atom.t(),
        "MissingWorkloadConfig" => boolean(),
        "Tier" => list(any()),
        "WorkloadId" => String.t() | Atom.t(),
        "WorkloadName" => String.t() | Atom.t(),
        "WorkloadRemarks" => String.t() | Atom.t()
      }
      
  """
  @type workload() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_components_request() :: %{
        optional("AccountId") => String.t() | Atom.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        required("ResourceGroupName") => String.t() | Atom.t()
      }
      
  """
  @type list_components_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }
      
  """
  @type tag() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_log_pattern_sets_response() :: %{
        "AccountId" => String.t() | Atom.t(),
        "LogPatternSets" => list(String.t() | Atom.t()),
        "NextToken" => String.t() | Atom.t(),
        "ResourceGroupName" => String.t() | Atom.t()
      }
      
  """
  @type list_log_pattern_sets_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_log_pattern_response() :: %{}
      
  """
  @type delete_log_pattern_response() :: %{}

  @typedoc """

  ## Example:
      
      workload_configuration() :: %{
        "Configuration" => String.t() | Atom.t(),
        "Tier" => list(any()),
        "WorkloadName" => String.t() | Atom.t()
      }
      
  """
  @type workload_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workload_response() :: %{
        "WorkloadConfiguration" => workload_configuration(),
        "WorkloadId" => String.t() | Atom.t(),
        "WorkloadRemarks" => String.t() | Atom.t()
      }
      
  """
  @type describe_workload_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_component_request() :: %{
        required("ComponentName") => String.t() | Atom.t(),
        required("ResourceGroupName") => String.t() | Atom.t(),
        required("ResourceList") => list(String.t() | Atom.t())
      }
      
  """
  @type create_component_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_log_pattern_request() :: %{
        required("Pattern") => String.t() | Atom.t(),
        required("PatternName") => String.t() | Atom.t(),
        required("PatternSetName") => String.t() | Atom.t(),
        required("Rank") => integer(),
        required("ResourceGroupName") => String.t() | Atom.t()
      }
      
  """
  @type create_log_pattern_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      remove_workload_response() :: %{}
      
  """
  @type remove_workload_response() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_application_request() :: %{
        optional("AttachMissingPermission") => boolean(),
        optional("AutoConfigEnabled") => boolean(),
        optional("AutoCreate") => boolean(),
        optional("CWEMonitorEnabled") => boolean(),
        optional("GroupingType") => list(any()),
        optional("OpsCenterEnabled") => boolean(),
        optional("OpsItemSNSTopicArn") => String.t() | Atom.t(),
        optional("ResourceGroupName") => String.t() | Atom.t(),
        optional("SNSNotificationArn") => String.t() | Atom.t(),
        optional("Tags") => list(tag())
      }
      
  """
  @type create_application_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_log_patterns_response() :: %{
        "AccountId" => String.t() | Atom.t(),
        "LogPatterns" => list(log_pattern()),
        "NextToken" => String.t() | Atom.t(),
        "ResourceGroupName" => String.t() | Atom.t()
      }
      
  """
  @type list_log_patterns_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_application_response() :: %{
        "ApplicationInfo" => application_info()
      }
      
  """
  @type create_application_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_log_pattern_request() :: %{
        optional("Pattern") => String.t() | Atom.t(),
        optional("Rank") => integer(),
        required("PatternName") => String.t() | Atom.t(),
        required("PatternSetName") => String.t() | Atom.t(),
        required("ResourceGroupName") => String.t() | Atom.t()
      }
      
  """
  @type update_log_pattern_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_workload_response() :: %{
        "WorkloadConfiguration" => workload_configuration(),
        "WorkloadId" => String.t() | Atom.t()
      }
      
  """
  @type update_workload_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_application_response() :: %{}
      
  """
  @type delete_application_response() :: %{}

  @typedoc """

  ## Example:
      
      create_log_pattern_response() :: %{
        "LogPattern" => log_pattern(),
        "ResourceGroupName" => String.t() | Atom.t()
      }
      
  """
  @type create_log_pattern_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_component_response() :: %{}
      
  """
  @type delete_component_response() :: %{}

  @typedoc """

  ## Example:
      
      update_application_request() :: %{
        optional("AttachMissingPermission") => boolean(),
        optional("AutoConfigEnabled") => boolean(),
        optional("CWEMonitorEnabled") => boolean(),
        optional("OpsCenterEnabled") => boolean(),
        optional("OpsItemSNSTopicArn") => String.t() | Atom.t(),
        optional("RemoveSNSTopic") => boolean(),
        optional("SNSNotificationArn") => String.t() | Atom.t(),
        required("ResourceGroupName") => String.t() | Atom.t()
      }
      
  """
  @type update_application_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_application_response() :: %{
        "ApplicationInfo" => application_info()
      }
      
  """
  @type update_application_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      remove_workload_request() :: %{
        required("ComponentName") => String.t() | Atom.t(),
        required("ResourceGroupName") => String.t() | Atom.t(),
        required("WorkloadId") => String.t() | Atom.t()
      }
      
  """
  @type remove_workload_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_configuration_history_request() :: %{
        optional("AccountId") => String.t() | Atom.t(),
        optional("EndTime") => non_neg_integer(),
        optional("EventStatus") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("ResourceGroupName") => String.t() | Atom.t(),
        optional("StartTime") => non_neg_integer()
      }
      
  """
  @type list_configuration_history_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_application_request() :: %{
        optional("AccountId") => String.t() | Atom.t(),
        required("ResourceGroupName") => String.t() | Atom.t()
      }
      
  """
  @type describe_application_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_problem_response() :: %{}
      
  """
  @type update_problem_response() :: %{}

  @typedoc """

  ## Example:
      
      list_applications_request() :: %{
        optional("AccountId") => String.t() | Atom.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }
      
  """
  @type list_applications_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      problem() :: %{
        "AccountId" => String.t() | Atom.t(),
        "AffectedResource" => String.t() | Atom.t(),
        "EndTime" => non_neg_integer(),
        "Feedback" => map(),
        "Id" => String.t() | Atom.t(),
        "Insights" => String.t() | Atom.t(),
        "LastRecurrenceTime" => non_neg_integer(),
        "RecurringCount" => float(),
        "ResolutionMethod" => list(any()),
        "ResourceGroupName" => String.t() | Atom.t(),
        "SeverityLevel" => list(any()),
        "ShortName" => String.t() | Atom.t(),
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "Title" => String.t() | Atom.t(),
        "Visibility" => list(any())
      }
      
  """
  @type problem() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_observation_request() :: %{
        optional("AccountId") => String.t() | Atom.t(),
        required("ObservationId") => String.t() | Atom.t()
      }
      
  """
  @type describe_observation_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      configuration_event() :: %{
        "AccountId" => String.t() | Atom.t(),
        "EventDetail" => String.t() | Atom.t(),
        "EventResourceName" => String.t() | Atom.t(),
        "EventResourceType" => list(any()),
        "EventStatus" => list(any()),
        "EventTime" => non_neg_integer(),
        "MonitoredResourceARN" => String.t() | Atom.t(),
        "ResourceGroupName" => String.t() | Atom.t()
      }
      
  """
  @type configuration_event() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_log_pattern_request() :: %{
        required("PatternName") => String.t() | Atom.t(),
        required("PatternSetName") => String.t() | Atom.t(),
        required("ResourceGroupName") => String.t() | Atom.t()
      }
      
  """
  @type delete_log_pattern_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      tags_already_exist_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type tags_already_exist_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type validation_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t() | Atom.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_component_configuration_recommendation_response() :: %{
        "ComponentConfiguration" => String.t() | Atom.t()
      }
      
  """
  @type describe_component_configuration_recommendation_response() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:
      
      describe_log_pattern_response() :: %{
        "AccountId" => String.t() | Atom.t(),
        "LogPattern" => log_pattern(),
        "ResourceGroupName" => String.t() | Atom.t()
      }
      
  """
  @type describe_log_pattern_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_component_response() :: %{
        "ApplicationComponent" => application_component(),
        "ResourceList" => list(String.t() | Atom.t())
      }
      
  """
  @type describe_component_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_problems_request() :: %{
        optional("AccountId") => String.t() | Atom.t(),
        optional("ComponentName") => String.t() | Atom.t(),
        optional("EndTime") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("ResourceGroupName") => String.t() | Atom.t(),
        optional("StartTime") => non_neg_integer(),
        optional("Visibility") => list(any())
      }
      
  """
  @type list_problems_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      related_observations() :: %{
        "ObservationList" => list(observation())
      }
      
  """
  @type related_observations() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_components_response() :: %{
        "ApplicationComponentList" => list(application_component()),
        "NextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_components_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_applications_response() :: %{
        "ApplicationInfoList" => list(application_info()),
        "NextToken" => String.t() | Atom.t()
      }
      
  """
  @type list_applications_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      bad_request_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type bad_request_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      add_workload_request() :: %{
        required("ComponentName") => String.t() | Atom.t(),
        required("ResourceGroupName") => String.t() | Atom.t(),
        required("WorkloadConfiguration") => workload_configuration()
      }
      
  """
  @type add_workload_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_component_configuration_request() :: %{
        optional("AccountId") => String.t() | Atom.t(),
        required("ComponentName") => String.t() | Atom.t(),
        required("ResourceGroupName") => String.t() | Atom.t()
      }
      
  """
  @type describe_component_configuration_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_component_request() :: %{
        optional("AccountId") => String.t() | Atom.t(),
        required("ComponentName") => String.t() | Atom.t(),
        required("ResourceGroupName") => String.t() | Atom.t()
      }
      
  """
  @type describe_component_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      application_component() :: %{
        "ComponentName" => String.t() | Atom.t(),
        "ComponentRemarks" => String.t() | Atom.t(),
        "DetectedWorkload" => map(),
        "Monitor" => boolean(),
        "OsType" => list(any()),
        "ResourceType" => String.t() | Atom.t(),
        "Tier" => list(any())
      }
      
  """
  @type application_component() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_workload_request() :: %{
        optional("AccountId") => String.t() | Atom.t(),
        required("ComponentName") => String.t() | Atom.t(),
        required("ResourceGroupName") => String.t() | Atom.t(),
        required("WorkloadId") => String.t() | Atom.t()
      }
      
  """
  @type describe_workload_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_log_pattern_sets_request() :: %{
        optional("AccountId") => String.t() | Atom.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        required("ResourceGroupName") => String.t() | Atom.t()
      }
      
  """
  @type list_log_pattern_sets_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_problem_request() :: %{
        optional("AccountId") => String.t() | Atom.t(),
        required("ProblemId") => String.t() | Atom.t()
      }
      
  """
  @type describe_problem_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_workload_request() :: %{
        optional("WorkloadId") => String.t() | Atom.t(),
        required("ComponentName") => String.t() | Atom.t(),
        required("ResourceGroupName") => String.t() | Atom.t(),
        required("WorkloadConfiguration") => workload_configuration()
      }
      
  """
  @type update_workload_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_application_response() :: %{
        "ApplicationInfo" => application_info()
      }
      
  """
  @type describe_application_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "Message" => String.t() | Atom.t(),
        "ResourceName" => String.t() | Atom.t()
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_component_configuration_request() :: %{
        optional("AutoConfigEnabled") => boolean(),
        optional("ComponentConfiguration") => String.t() | Atom.t(),
        optional("Monitor") => boolean(),
        optional("Tier") => list(any()),
        required("ComponentName") => String.t() | Atom.t(),
        required("ResourceGroupName") => String.t() | Atom.t()
      }
      
  """
  @type update_component_configuration_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_application_request() :: %{
        required("ResourceGroupName") => String.t() | Atom.t()
      }
      
  """
  @type delete_application_request() :: %{String.t() | Atom.t() => any()}

  @type add_workload_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_application_errors() ::
          validation_exception()
          | tags_already_exist_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_component_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type create_log_pattern_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type delete_application_errors() ::
          bad_request_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_component_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type delete_log_pattern_errors() ::
          bad_request_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_application_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type describe_component_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type describe_component_configuration_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type describe_component_configuration_recommendation_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type describe_log_pattern_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type describe_observation_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type describe_problem_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type describe_problem_observations_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type describe_workload_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_applications_errors() :: validation_exception() | internal_server_exception()

  @type list_components_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_configuration_history_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_log_pattern_sets_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_log_patterns_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_problems_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_tags_for_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type list_workloads_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type remove_workload_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception() | validation_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type update_application_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_component_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type update_component_configuration_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type update_log_pattern_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | resource_in_use_exception()

  @type update_problem_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_workload_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2018-11-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "applicationinsights",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Application Insights",
      signature_version: "v4",
      signing_name: "applicationinsights",
      target_prefix: "EC2WindowsBarleyService"
    }
  end

  @doc """
  Adds a workload to a component.

  Each component can have at most five workloads.
  """
  @spec add_workload(map(), add_workload_request(), list()) ::
          {:ok, add_workload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_workload_errors()}
  def add_workload(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddWorkload", input, options)
  end

  @doc """
  Adds an application that is created from a resource group.
  """
  @spec create_application(map(), create_application_request(), list()) ::
          {:ok, create_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_application_errors()}
  def create_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateApplication", input, options)
  end

  @doc """
  Creates a custom component by grouping similar standalone instances to monitor.
  """
  @spec create_component(map(), create_component_request(), list()) ::
          {:ok, create_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_component_errors()}
  def create_component(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateComponent", input, options)
  end

  @doc """
  Adds an log pattern to a `LogPatternSet`.
  """
  @spec create_log_pattern(map(), create_log_pattern_request(), list()) ::
          {:ok, create_log_pattern_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_log_pattern_errors()}
  def create_log_pattern(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateLogPattern", input, options)
  end

  @doc """
  Removes the specified application from monitoring.

  Does not delete the
  application.
  """
  @spec delete_application(map(), delete_application_request(), list()) ::
          {:ok, delete_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_application_errors()}
  def delete_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteApplication", input, options)
  end

  @doc """
  Ungroups a custom component.

  When you ungroup custom components, all applicable monitors
  that are set up for the component are removed and the instances revert to their
  standalone
  status.
  """
  @spec delete_component(map(), delete_component_request(), list()) ::
          {:ok, delete_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_component_errors()}
  def delete_component(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteComponent", input, options)
  end

  @doc """
  Removes the specified log pattern from a `LogPatternSet`.
  """
  @spec delete_log_pattern(map(), delete_log_pattern_request(), list()) ::
          {:ok, delete_log_pattern_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_log_pattern_errors()}
  def delete_log_pattern(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteLogPattern", input, options)
  end

  @doc """
  Describes the application.
  """
  @spec describe_application(map(), describe_application_request(), list()) ::
          {:ok, describe_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_application_errors()}
  def describe_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeApplication", input, options)
  end

  @doc """
  Describes a component and lists the resources that are grouped together in a
  component.
  """
  @spec describe_component(map(), describe_component_request(), list()) ::
          {:ok, describe_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_component_errors()}
  def describe_component(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeComponent", input, options)
  end

  @doc """
  Describes the monitoring configuration of the component.
  """
  @spec describe_component_configuration(
          map(),
          describe_component_configuration_request(),
          list()
        ) ::
          {:ok, describe_component_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_component_configuration_errors()}
  def describe_component_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeComponentConfiguration", input, options)
  end

  @doc """
  Describes the recommended monitoring configuration of the component.
  """
  @spec describe_component_configuration_recommendation(
          map(),
          describe_component_configuration_recommendation_request(),
          list()
        ) ::
          {:ok, describe_component_configuration_recommendation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_component_configuration_recommendation_errors()}
  def describe_component_configuration_recommendation(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(
      client,
      meta,
      "DescribeComponentConfigurationRecommendation",
      input,
      options
    )
  end

  @doc """
  Describe a specific log pattern from a `LogPatternSet`.
  """
  @spec describe_log_pattern(map(), describe_log_pattern_request(), list()) ::
          {:ok, describe_log_pattern_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_log_pattern_errors()}
  def describe_log_pattern(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeLogPattern", input, options)
  end

  @doc """
  Describes an anomaly or error with the application.
  """
  @spec describe_observation(map(), describe_observation_request(), list()) ::
          {:ok, describe_observation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_observation_errors()}
  def describe_observation(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeObservation", input, options)
  end

  @doc """
  Describes an application problem.
  """
  @spec describe_problem(map(), describe_problem_request(), list()) ::
          {:ok, describe_problem_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_problem_errors()}
  def describe_problem(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeProblem", input, options)
  end

  @doc """
  Describes the anomalies or errors associated with the problem.
  """
  @spec describe_problem_observations(map(), describe_problem_observations_request(), list()) ::
          {:ok, describe_problem_observations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_problem_observations_errors()}
  def describe_problem_observations(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeProblemObservations", input, options)
  end

  @doc """
  Describes a workload and its configuration.
  """
  @spec describe_workload(map(), describe_workload_request(), list()) ::
          {:ok, describe_workload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_workload_errors()}
  def describe_workload(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeWorkload", input, options)
  end

  @doc """
  Lists the IDs of the applications that you are monitoring.
  """
  @spec list_applications(map(), list_applications_request(), list()) ::
          {:ok, list_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_applications_errors()}
  def list_applications(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListApplications", input, options)
  end

  @doc """
  Lists the auto-grouped, standalone, and custom components of the application.
  """
  @spec list_components(map(), list_components_request(), list()) ::
          {:ok, list_components_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_components_errors()}
  def list_components(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListComponents", input, options)
  end

  @doc """
  Lists the INFO, WARN, and ERROR events for periodic configuration updates
  performed by
  Application Insights.

  Examples of events represented are:

    *
  INFO: creating a new alarm or updating an alarm threshold.

    *
  WARN: alarm not created due to insufficient data points used to predict
  thresholds.

    *
  ERROR: alarm not created due to permission errors or exceeding quotas.
  """
  @spec list_configuration_history(map(), list_configuration_history_request(), list()) ::
          {:ok, list_configuration_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_configuration_history_errors()}
  def list_configuration_history(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListConfigurationHistory", input, options)
  end

  @doc """
  Lists the log pattern sets in the specific application.
  """
  @spec list_log_pattern_sets(map(), list_log_pattern_sets_request(), list()) ::
          {:ok, list_log_pattern_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_log_pattern_sets_errors()}
  def list_log_pattern_sets(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListLogPatternSets", input, options)
  end

  @doc """
  Lists the log patterns in the specific log `LogPatternSet`.
  """
  @spec list_log_patterns(map(), list_log_patterns_request(), list()) ::
          {:ok, list_log_patterns_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_log_patterns_errors()}
  def list_log_patterns(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListLogPatterns", input, options)
  end

  @doc """
  Lists the problems with your application.
  """
  @spec list_problems(map(), list_problems_request(), list()) ::
          {:ok, list_problems_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_problems_errors()}
  def list_problems(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListProblems", input, options)
  end

  @doc """
  Retrieve a list of the tags (keys and values) that are associated with a
  specified
  application.

  A *tag* is a label that you optionally define and associate
  with an application. Each tag consists of a required *tag key* and an
  optional associated *tag value*. A tag key is a general label that acts
  as a category for more specific tag values. A tag value acts as a descriptor
  within a tag
  key.
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
  Lists the workloads that are configured on a given component.
  """
  @spec list_workloads(map(), list_workloads_request(), list()) ::
          {:ok, list_workloads_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_workloads_errors()}
  def list_workloads(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListWorkloads", input, options)
  end

  @doc """
  Remove workload from a component.
  """
  @spec remove_workload(map(), remove_workload_request(), list()) ::
          {:ok, remove_workload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_workload_errors()}
  def remove_workload(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RemoveWorkload", input, options)
  end

  @doc """
  Add one or more tags (keys and values) to a specified application.

  A
  *tag* is a label that you optionally define and associate with an
  application. Tags can help you categorize and manage application in different
  ways, such as
  by purpose, owner, environment, or other criteria.

  Each tag consists of a required *tag key* and an associated
  *tag value*, both of which you define. A tag key is a general label
  that acts as a category for more specific tag values. A tag value acts as a
  descriptor
  within a tag key.
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
  Remove one or more tags (keys and values) from a specified application.
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
  Updates the application.
  """
  @spec update_application(map(), update_application_request(), list()) ::
          {:ok, update_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_application_errors()}
  def update_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateApplication", input, options)
  end

  @doc """
  Updates the custom component name and/or the list of resources that make up the
  component.
  """
  @spec update_component(map(), update_component_request(), list()) ::
          {:ok, update_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_component_errors()}
  def update_component(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateComponent", input, options)
  end

  @doc """
  Updates the monitoring configurations for the component.

  The configuration input
  parameter is an escaped JSON of the configuration and should match the schema of
  what is
  returned by `DescribeComponentConfigurationRecommendation`.
  """
  @spec update_component_configuration(map(), update_component_configuration_request(), list()) ::
          {:ok, update_component_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_component_configuration_errors()}
  def update_component_configuration(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateComponentConfiguration", input, options)
  end

  @doc """
  Adds a log pattern to a `LogPatternSet`.
  """
  @spec update_log_pattern(map(), update_log_pattern_request(), list()) ::
          {:ok, update_log_pattern_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_log_pattern_errors()}
  def update_log_pattern(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateLogPattern", input, options)
  end

  @doc """
  Updates the visibility of the problem or specifies the problem as
  `RESOLVED`.
  """
  @spec update_problem(map(), update_problem_request(), list()) ::
          {:ok, update_problem_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_problem_errors()}
  def update_problem(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateProblem", input, options)
  end

  @doc """
  Adds a workload to a component.

  Each component can have at most five workloads.
  """
  @spec update_workload(map(), update_workload_request(), list()) ::
          {:ok, update_workload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_workload_errors()}
  def update_workload(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateWorkload", input, options)
  end
end
