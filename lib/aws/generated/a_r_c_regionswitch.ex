# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ARCRegionswitch do
  @moduledoc """
  Amazon Application Recovery Controller (ARC) Region switch helps you to quickly
  and reliably shift traffic away from an impaired Amazon Web Services Region to a
  healthy Region.

  With Region switch, you can create plans that define the steps to shift traffic
  for your application from one Amazon Web Services Region to another. You can
  test your plans in practice mode before using them in a real recovery scenario.

  Region switch provides a structured approach to multi-Region failover, helping
  you to meet your recovery time objectives (RTOs) and maintain business
  continuity during regional disruptions.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      global_aurora_configuration() :: %{
        "behavior" => list(any()),
        "crossAccountRole" => String.t() | atom(),
        "databaseClusterArns" => list(String.t() | atom()),
        "externalId" => [String.t() | atom()],
        "globalClusterIdentifier" => String.t() | atom(),
        "timeoutMinutes" => [integer()],
        "ungraceful" => global_aurora_ungraceful()
      }
      
  """
  @type global_aurora_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      lambda_ungraceful() :: %{
        "behavior" => list(any())
      }
      
  """
  @type lambda_ungraceful() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("arn") => String.t() | atom(),
        required("tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      arc_routing_control_state() :: %{
        "routingControlArn" => String.t() | atom(),
        "state" => list(any())
      }
      
  """
  @type arc_routing_control_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      lambdas() :: %{
        "arn" => String.t() | atom(),
        "crossAccountRole" => String.t() | atom(),
        "externalId" => [String.t() | atom()]
      }
      
  """
  @type lambdas() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      trigger() :: %{
        "action" => list(any()),
        "conditions" => list(trigger_condition()),
        "description" => [String.t() | atom()],
        "minDelayMinutesBetweenExecutions" => [integer()],
        "targetRegion" => String.t() | atom()
      }
      
  """
  @type trigger() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      eks_resource_scaling_ungraceful() :: %{
        "minimumSuccessPercentage" => [integer()]
      }
      
  """
  @type eks_resource_scaling_ungraceful() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      illegal_state_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type illegal_state_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_route53_health_checks_response() :: %{
        "healthChecks" => list(route53_health_check()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_route53_health_checks_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_plans_in_region_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type list_plans_in_region_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_plan_execution_step_request() :: %{
        required("actionToTake") => list(any()),
        required("comment") => String.t() | atom(),
        required("executionId") => String.t() | atom(),
        required("planArn") => String.t() | atom(),
        required("stepName") => [String.t() | atom()]
      }
      
  """
  @type update_plan_execution_step_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ecs_ungraceful() :: %{
        "minimumSuccessPercentage" => [integer()]
      }
      
  """
  @type ecs_ungraceful() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      region_switch_plan_configuration() :: %{
        "arn" => String.t() | atom(),
        "crossAccountRole" => String.t() | atom(),
        "externalId" => [String.t() | atom()]
      }
      
  """
  @type region_switch_plan_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      eks_resource_scaling_configuration() :: %{
        "capacityMonitoringApproach" => list(any()),
        "eksClusters" => list(eks_cluster()),
        "kubernetesResourceType" => kubernetes_resource_type(),
        "scalingResources" => list(map()),
        "targetPercent" => [integer()],
        "timeoutMinutes" => [integer()],
        "ungraceful" => eks_resource_scaling_ungraceful()
      }
      
  """
  @type eks_resource_scaling_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service() :: %{
        "clusterArn" => String.t() | atom(),
        "crossAccountRole" => String.t() | atom(),
        "externalId" => [String.t() | atom()],
        "serviceArn" => String.t() | atom()
      }
      
  """
  @type service() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_plan_request() :: %{
        required("arn") => String.t() | atom()
      }
      
  """
  @type get_plan_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_plans_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type list_plans_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      illegal_argument_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type illegal_argument_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("arn") => String.t() | atom(),
        required("resourceTagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_plan_execution_step_response() :: %{}
      
  """
  @type update_plan_execution_step_response() :: %{}

  @typedoc """

  ## Example:
      
      ec2_ungraceful() :: %{
        "minimumSuccessPercentage" => [integer()]
      }
      
  """
  @type ec2_ungraceful() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_route53_health_checks_request() :: %{
        optional("hostedZoneId") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("recordName") => String.t() | atom(),
        required("arn") => String.t() | atom()
      }
      
  """
  @type list_route53_health_checks_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      associated_alarm() :: %{
        "alarmType" => list(any()),
        "crossAccountRole" => String.t() | atom(),
        "externalId" => [String.t() | atom()],
        "resourceIdentifier" => [String.t() | atom()]
      }
      
  """
  @type associated_alarm() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      execution_event() :: %{
        "description" => [String.t() | atom()],
        "error" => [String.t() | atom()],
        "eventId" => [String.t() | atom()],
        "executionBlockType" => list(any()),
        "previousEventId" => [String.t() | atom()],
        "resources" => list([String.t() | atom()]()),
        "stepName" => String.t() | atom(),
        "timestamp" => [non_neg_integer()],
        "type" => list(any())
      }
      
  """
  @type execution_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      route53_resource_record_set() :: %{
        "recordSetIdentifier" => String.t() | atom(),
        "region" => String.t() | atom()
      }
      
  """
  @type route53_resource_record_set() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      trigger_condition() :: %{
        "associatedAlarmName" => [String.t() | atom()],
        "condition" => list(any())
      }
      
  """
  @type trigger_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_plan_execution_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t() | atom()],
        required("executionId") => String.t() | atom(),
        required("planArn") => String.t() | atom()
      }
      
  """
  @type get_plan_execution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_plan_execution_events_response() :: %{
        "items" => list(execution_event()),
        "nextToken" => [String.t() | atom()]
      }
      
  """
  @type list_plan_execution_events_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      kubernetes_resource_type() :: %{
        "apiVersion" => [String.t() | atom()],
        "kind" => [String.t() | atom()]
      }
      
  """
  @type kubernetes_resource_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      execution_approval_configuration() :: %{
        "approvalRole" => String.t() | atom(),
        "timeoutMinutes" => [integer()]
      }
      
  """
  @type execution_approval_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      parallel_execution_block_configuration() :: %{
        "steps" => list(step())
      }
      
  """
  @type parallel_execution_block_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_plan_execution_response() :: %{}
      
  """
  @type update_plan_execution_response() :: %{}

  @typedoc """

  ## Example:
      
      kubernetes_scaling_resource() :: %{
        "hpaName" => [String.t() | atom()],
        "name" => [String.t() | atom()],
        "namespace" => String.t() | atom()
      }
      
  """
  @type kubernetes_scaling_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      eks_cluster() :: %{
        "clusterArn" => String.t() | atom(),
        "crossAccountRole" => String.t() | atom(),
        "externalId" => [String.t() | atom()]
      }
      
  """
  @type eks_cluster() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      workflow() :: %{
        "steps" => list(step()),
        "workflowDescription" => [String.t() | atom()],
        "workflowTargetAction" => list(any()),
        "workflowTargetRegion" => String.t() | atom()
      }
      
  """
  @type workflow() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_plan_evaluation_status_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("planArn") => String.t() | atom()
      }
      
  """
  @type get_plan_evaluation_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_plan_execution_request() :: %{
        optional("comment") => String.t() | atom(),
        required("executionId") => String.t() | atom(),
        required("planArn") => String.t() | atom()
      }
      
  """
  @type cancel_plan_execution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "resourceTags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_plan_response() :: %{
        "plan" => plan()
      }
      
  """
  @type update_plan_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_plan_request() :: %{
        optional("associatedAlarms") => map(),
        optional("description") => [String.t() | atom()],
        optional("recoveryTimeObjectiveMinutes") => [integer()],
        optional("triggers") => list(trigger()),
        required("arn") => String.t() | atom(),
        required("executionRole") => String.t() | atom(),
        required("workflows") => list(workflow())
      }
      
  """
  @type update_plan_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_warning() :: %{
        "resourceArn" => String.t() | atom(),
        "stepName" => String.t() | atom(),
        "version" => [String.t() | atom()],
        "warningMessage" => [String.t() | atom()],
        "warningStatus" => list(any()),
        "warningUpdatedTime" => [non_neg_integer()],
        "workflow" => minimal_workflow()
      }
      
  """
  @type resource_warning() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ecs_capacity_increase_configuration() :: %{
        "capacityMonitoringApproach" => list(any()),
        "services" => list(service()),
        "targetPercent" => [integer()],
        "timeoutMinutes" => [integer()],
        "ungraceful" => ecs_ungraceful()
      }
      
  """
  @type ecs_capacity_increase_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_plan_executions_response() :: %{
        "items" => list(abbreviated_execution()),
        "nextToken" => [String.t() | atom()]
      }
      
  """
  @type list_plan_executions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      arc_routing_control_configuration() :: %{
        "crossAccountRole" => String.t() | atom(),
        "externalId" => [String.t() | atom()],
        "regionAndRoutingControls" => map(),
        "timeoutMinutes" => [integer()]
      }
      
  """
  @type arc_routing_control_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_plan_response() :: %{
        "plan" => plan()
      }
      
  """
  @type create_plan_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_plan_execution_response() :: %{
        "actualRecoveryTime" => String.t() | atom(),
        "comment" => [String.t() | atom()],
        "endTime" => [non_neg_integer()],
        "executionAction" => list(any()),
        "executionId" => String.t() | atom(),
        "executionRegion" => [String.t() | atom()],
        "executionState" => list(any()),
        "mode" => list(any()),
        "nextToken" => [String.t() | atom()],
        "plan" => plan(),
        "planArn" => String.t() | atom(),
        "startTime" => [non_neg_integer()],
        "stepStates" => list(step_state()),
        "updatedAt" => [non_neg_integer()],
        "version" => [String.t() | atom()]
      }
      
  """
  @type get_plan_execution_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cancel_plan_execution_response() :: %{}
      
  """
  @type cancel_plan_execution_response() :: %{}

  @typedoc """

  ## Example:
      
      list_plans_in_region_response() :: %{
        "nextToken" => String.t() | atom(),
        "plans" => list(abbreviated_plan())
      }
      
  """
  @type list_plans_in_region_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      asg() :: %{
        "arn" => String.t() | atom(),
        "crossAccountRole" => String.t() | atom(),
        "externalId" => [String.t() | atom()]
      }
      
  """
  @type asg() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_plans_response() :: %{
        "nextToken" => String.t() | atom(),
        "plans" => list(abbreviated_plan())
      }
      
  """
  @type list_plans_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_plan_response() :: %{
        "plan" => plan()
      }
      
  """
  @type get_plan_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      route53_health_check() :: %{
        "healthCheckId" => String.t() | atom(),
        "hostedZoneId" => String.t() | atom(),
        "recordName" => String.t() | atom(),
        "region" => String.t() | atom()
      }
      
  """
  @type route53_health_check() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_plan_in_region_response() :: %{
        "plan" => plan()
      }
      
  """
  @type get_plan_in_region_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_plan_request() :: %{
        required("arn") => String.t() | atom()
      }
      
  """
  @type delete_plan_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_plan_response() :: %{}
      
  """
  @type delete_plan_response() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("arn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      global_aurora_ungraceful() :: %{
        "ungraceful" => list(any())
      }
      
  """
  @type global_aurora_ungraceful() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_plan_in_region_request() :: %{
        required("arn") => String.t() | atom()
      }
      
  """
  @type get_plan_in_region_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      step_state() :: %{
        "endTime" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "startTime" => [non_neg_integer()],
        "status" => list(any()),
        "stepMode" => list(any())
      }
      
  """
  @type step_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      abbreviated_execution() :: %{
        "actualRecoveryTime" => String.t() | atom(),
        "comment" => [String.t() | atom()],
        "endTime" => [non_neg_integer()],
        "executionAction" => list(any()),
        "executionId" => String.t() | atom(),
        "executionRegion" => [String.t() | atom()],
        "executionState" => list(any()),
        "mode" => list(any()),
        "planArn" => String.t() | atom(),
        "startTime" => [non_neg_integer()],
        "updatedAt" => [non_neg_integer()],
        "version" => [String.t() | atom()]
      }
      
  """
  @type abbreviated_execution() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_plan_execution_request() :: %{
        optional("comment") => String.t() | atom(),
        optional("latestVersion") => [String.t() | atom()],
        optional("mode") => list(any()),
        required("action") => list(any()),
        required("planArn") => String.t() | atom(),
        required("targetRegion") => [String.t() | atom()]
      }
      
  """
  @type start_plan_execution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_plan_request() :: %{
        optional("associatedAlarms") => map(),
        optional("description") => [String.t() | atom()],
        optional("primaryRegion") => String.t() | atom(),
        optional("recoveryTimeObjectiveMinutes") => [integer()],
        optional("tags") => map(),
        optional("triggers") => list(trigger()),
        required("executionRole") => String.t() | atom(),
        required("name") => String.t() | atom(),
        required("recoveryApproach") => list(any()),
        required("regions") => list(String.t() | atom()),
        required("workflows") => list(workflow())
      }
      
  """
  @type create_plan_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      approve_plan_execution_step_request() :: %{
        optional("comment") => String.t() | atom(),
        required("approval") => list(any()),
        required("executionId") => String.t() | atom(),
        required("planArn") => String.t() | atom(),
        required("stepName") => String.t() | atom()
      }
      
  """
  @type approve_plan_execution_step_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_plan_execution_response() :: %{
        "activateRegion" => [String.t() | atom()],
        "deactivateRegion" => [String.t() | atom()],
        "executionId" => String.t() | atom(),
        "plan" => String.t() | atom(),
        "planVersion" => [String.t() | atom()]
      }
      
  """
  @type start_plan_execution_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      step() :: %{
        "description" => [String.t() | atom()],
        "executionBlockConfiguration" => list(),
        "executionBlockType" => list(any()),
        "name" => String.t() | atom()
      }
      
  """
  @type step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      minimal_workflow() :: %{
        "action" => list(any()),
        "name" => [String.t() | atom()]
      }
      
  """
  @type minimal_workflow() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ec2_asg_capacity_increase_configuration() :: %{
        "asgs" => list(asg()),
        "capacityMonitoringApproach" => list(any()),
        "targetPercent" => [integer()],
        "timeoutMinutes" => [integer()],
        "ungraceful" => ec2_ungraceful()
      }
      
  """
  @type ec2_asg_capacity_increase_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_plan_evaluation_status_response() :: %{
        "evaluationState" => list(any()),
        "lastEvaluatedVersion" => [String.t() | atom()],
        "lastEvaluationTime" => [non_neg_integer()],
        "nextToken" => String.t() | atom(),
        "planArn" => String.t() | atom(),
        "region" => String.t() | atom(),
        "warnings" => list(resource_warning())
      }
      
  """
  @type get_plan_evaluation_status_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      route53_health_check_configuration() :: %{
        "crossAccountRole" => String.t() | atom(),
        "externalId" => [String.t() | atom()],
        "hostedZoneId" => String.t() | atom(),
        "recordName" => String.t() | atom(),
        "recordSets" => list(route53_resource_record_set()),
        "timeoutMinutes" => [integer()]
      }
      
  """
  @type route53_health_check_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_plan_executions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t() | atom()],
        optional("state") => list(any()),
        required("planArn") => String.t() | atom()
      }
      
  """
  @type list_plan_executions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_plan_execution_events_request() :: %{
        optional("maxResults") => integer(),
        optional("name") => String.t() | atom(),
        optional("nextToken") => [String.t() | atom()],
        required("executionId") => String.t() | atom(),
        required("planArn") => String.t() | atom()
      }
      
  """
  @type list_plan_execution_events_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_plan_execution_request() :: %{
        optional("comment") => String.t() | atom(),
        required("action") => list(any()),
        required("executionId") => String.t() | atom(),
        required("planArn") => String.t() | atom()
      }
      
  """
  @type update_plan_execution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      abbreviated_plan() :: %{
        "activePlanExecution" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "description" => [String.t() | atom()],
        "executionRole" => [String.t() | atom()],
        "name" => String.t() | atom(),
        "owner" => String.t() | atom(),
        "primaryRegion" => String.t() | atom(),
        "recoveryApproach" => list(any()),
        "recoveryTimeObjectiveMinutes" => [integer()],
        "regions" => list(String.t() | atom()),
        "updatedAt" => [non_neg_integer()],
        "version" => [String.t() | atom()]
      }
      
  """
  @type abbreviated_plan() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      approve_plan_execution_step_response() :: %{}
      
  """
  @type approve_plan_execution_step_response() :: %{}

  @typedoc """

  ## Example:
      
      custom_action_lambda_configuration() :: %{
        "lambdas" => list(lambdas()),
        "regionToRun" => list(any()),
        "retryIntervalMinutes" => [float()],
        "timeoutMinutes" => [integer()],
        "ungraceful" => lambda_ungraceful()
      }
      
  """
  @type custom_action_lambda_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      plan() :: %{
        "arn" => String.t() | atom(),
        "associatedAlarms" => map(),
        "description" => [String.t() | atom()],
        "executionRole" => String.t() | atom(),
        "name" => String.t() | atom(),
        "owner" => String.t() | atom(),
        "primaryRegion" => String.t() | atom(),
        "recoveryApproach" => list(any()),
        "recoveryTimeObjectiveMinutes" => [integer()],
        "regions" => list(String.t() | atom()),
        "triggers" => list(trigger()),
        "updatedAt" => [non_neg_integer()],
        "version" => [String.t() | atom()],
        "workflows" => list(workflow())
      }
      
  """
  @type plan() :: %{(String.t() | atom()) => any()}

  @type approve_plan_execution_step_errors() ::
          access_denied_exception() | resource_not_found_exception()

  @type cancel_plan_execution_errors() ::
          access_denied_exception() | resource_not_found_exception()

  @type delete_plan_errors() :: resource_not_found_exception() | illegal_state_exception()

  @type get_plan_errors() :: resource_not_found_exception()

  @type get_plan_evaluation_status_errors() ::
          access_denied_exception() | resource_not_found_exception()

  @type get_plan_execution_errors() :: access_denied_exception() | resource_not_found_exception()

  @type get_plan_in_region_errors() :: access_denied_exception() | resource_not_found_exception()

  @type list_plan_execution_events_errors() ::
          access_denied_exception() | resource_not_found_exception()

  @type list_plan_executions_errors() ::
          access_denied_exception() | resource_not_found_exception()

  @type list_plans_in_region_errors() :: access_denied_exception()

  @type list_route53_health_checks_errors() ::
          access_denied_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          internal_server_exception() | resource_not_found_exception()

  @type start_plan_execution_errors() ::
          access_denied_exception()
          | resource_not_found_exception()
          | illegal_argument_exception()
          | illegal_state_exception()

  @type tag_resource_errors() :: internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: internal_server_exception() | resource_not_found_exception()

  @type update_plan_errors() :: resource_not_found_exception()

  @type update_plan_execution_errors() ::
          access_denied_exception() | resource_not_found_exception() | illegal_state_exception()

  @type update_plan_execution_step_errors() ::
          access_denied_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2022-07-26",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "arc-region-switch",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "ARC Region switch",
      signature_version: "v4",
      signing_name: "arc-region-switch",
      target_prefix: "ArcRegionSwitch"
    }
  end

  @doc """
  Approves a step in a plan execution that requires manual approval.

  When you create a plan, you can include approval steps that require manual
  intervention before the execution can proceed. This operation allows you to
  provide that approval.

  You must specify the plan ARN, execution ID, step name, and approval status. You
  can also provide an optional comment explaining the approval decision.
  """
  @spec approve_plan_execution_step(map(), approve_plan_execution_step_request(), list()) ::
          {:ok, approve_plan_execution_step_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, approve_plan_execution_step_errors()}
  def approve_plan_execution_step(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ApprovePlanExecutionStep", input, options)
  end

  @doc """
  Cancels an in-progress plan execution.

  This operation stops the execution of the plan and prevents any further steps
  from being processed.

  You must specify the plan ARN and execution ID. You can also provide an optional
  comment explaining why the execution was canceled.
  """
  @spec cancel_plan_execution(map(), cancel_plan_execution_request(), list()) ::
          {:ok, cancel_plan_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_plan_execution_errors()}
  def cancel_plan_execution(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CancelPlanExecution", input, options)
  end

  @doc """
  Creates a new Region switch plan.

  A plan defines the steps required to shift traffic from one Amazon Web Services
  Region to another.

  You must specify a name for the plan, the primary Region, and at least one
  additional Region. You can also provide a description, execution role, recovery
  time objective, associated alarms, triggers, and workflows that define the steps
  to execute during a Region switch.
  """
  @spec create_plan(map(), create_plan_request(), list()) ::
          {:ok, create_plan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def create_plan(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreatePlan", input, options)
  end

  @doc """
  Deletes a Region switch plan.

  You must specify the ARN of the plan to delete.

  You cannot delete a plan that has an active execution in progress.
  """
  @spec delete_plan(map(), delete_plan_request(), list()) ::
          {:ok, delete_plan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_plan_errors()}
  def delete_plan(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeletePlan", input, options)
  end

  @doc """
  Retrieves detailed information about a Region switch plan.

  You must specify the ARN of the plan.
  """
  @spec get_plan(map(), get_plan_request(), list()) ::
          {:ok, get_plan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_plan_errors()}
  def get_plan(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetPlan", input, options)
  end

  @doc """
  Retrieves the evaluation status of a Region switch plan.

  The evaluation status provides information about the last time the plan was
  evaluated and any warnings or issues detected.
  """
  @spec get_plan_evaluation_status(map(), get_plan_evaluation_status_request(), list()) ::
          {:ok, get_plan_evaluation_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_plan_evaluation_status_errors()}
  def get_plan_evaluation_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetPlanEvaluationStatus", input, options)
  end

  @doc """
  Retrieves detailed information about a specific plan execution.

  You must specify the plan ARN and execution ID.
  """
  @spec get_plan_execution(map(), get_plan_execution_request(), list()) ::
          {:ok, get_plan_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_plan_execution_errors()}
  def get_plan_execution(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetPlanExecution", input, options)
  end

  @doc """
  Retrieves information about a Region switch plan in a specific Amazon Web
  Services Region.

  This operation is useful for getting Region-specific information about a plan.
  """
  @spec get_plan_in_region(map(), get_plan_in_region_request(), list()) ::
          {:ok, get_plan_in_region_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_plan_in_region_errors()}
  def get_plan_in_region(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetPlanInRegion", input, options)
  end

  @doc """
  Lists the events that occurred during a plan execution.

  These events provide a detailed timeline of the execution process.
  """
  @spec list_plan_execution_events(map(), list_plan_execution_events_request(), list()) ::
          {:ok, list_plan_execution_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_plan_execution_events_errors()}
  def list_plan_execution_events(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPlanExecutionEvents", input, options)
  end

  @doc """
  Lists the executions of a Region switch plan.

  This operation returns information about both current and historical executions.
  """
  @spec list_plan_executions(map(), list_plan_executions_request(), list()) ::
          {:ok, list_plan_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_plan_executions_errors()}
  def list_plan_executions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPlanExecutions", input, options)
  end

  @doc """
  Lists all Region switch plans in your Amazon Web Services account.
  """
  @spec list_plans(map(), list_plans_request(), list()) ::
          {:ok, list_plans_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_plans(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPlans", input, options)
  end

  @doc """
  Lists all Region switch plans in your Amazon Web Services account that are
  available in the current Amazon Web Services Region.
  """
  @spec list_plans_in_region(map(), list_plans_in_region_request(), list()) ::
          {:ok, list_plans_in_region_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_plans_in_region_errors()}
  def list_plans_in_region(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListPlansInRegion", input, options)
  end

  @doc """
  List the Amazon Route 53 health checks.
  """
  @spec list_route53_health_checks(map(), list_route53_health_checks_request(), list()) ::
          {:ok, list_route53_health_checks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_route53_health_checks_errors()}
  def list_route53_health_checks(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListRoute53HealthChecks", input, options)
  end

  @doc """
  Lists the tags attached to a Region switch resource.
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
  Starts the execution of a Region switch plan.

  You can execute a plan in either PRACTICE or RECOVERY mode.

  In PRACTICE mode, the execution simulates the steps without making actual
  changes to your application's traffic routing. In RECOVERY mode, the execution
  performs actual changes to shift traffic between Regions.
  """
  @spec start_plan_execution(map(), start_plan_execution_request(), list()) ::
          {:ok, start_plan_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_plan_execution_errors()}
  def start_plan_execution(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartPlanExecution", input, options)
  end

  @doc """
  Adds or updates tags for a Region switch resource.

  You can assign metadata to your resources in the form of tags, which are
  key-value pairs.
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
  Removes tags from a Region switch resource.
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
  Updates an existing Region switch plan.

  You can modify the plan's description, workflows, execution role, recovery time
  objective, associated alarms, and triggers.
  """
  @spec update_plan(map(), update_plan_request(), list()) ::
          {:ok, update_plan_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_plan_errors()}
  def update_plan(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdatePlan", input, options)
  end

  @doc """
  Updates an in-progress plan execution.

  This operation allows you to modify certain aspects of the execution, such as
  adding a comment or changing the action.
  """
  @spec update_plan_execution(map(), update_plan_execution_request(), list()) ::
          {:ok, update_plan_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_plan_execution_errors()}
  def update_plan_execution(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdatePlanExecution", input, options)
  end

  @doc """
  Updates a specific step in an in-progress plan execution.

  This operation allows you to modify the step's comment or action.
  """
  @spec update_plan_execution_step(map(), update_plan_execution_step_request(), list()) ::
          {:ok, update_plan_execution_step_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_plan_execution_step_errors()}
  def update_plan_execution_step(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdatePlanExecutionStep", input, options)
  end
end
