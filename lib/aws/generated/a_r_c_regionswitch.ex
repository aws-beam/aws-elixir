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
        "crossAccountRole" => String.t(),
        "databaseClusterArns" => list(String.t()),
        "externalId" => [String.t()],
        "globalClusterIdentifier" => String.t(),
        "timeoutMinutes" => [integer()],
        "ungraceful" => global_aurora_ungraceful()
      }
      
  """
  @type global_aurora_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambda_ungraceful() :: %{
        "behavior" => list(any())
      }
      
  """
  @type lambda_ungraceful() :: %{String.t() => any()}

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
      
      arc_routing_control_state() :: %{
        "routingControlArn" => String.t(),
        "state" => list(any())
      }
      
  """
  @type arc_routing_control_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lambdas() :: %{
        "arn" => String.t(),
        "crossAccountRole" => String.t(),
        "externalId" => [String.t()]
      }
      
  """
  @type lambdas() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trigger() :: %{
        "action" => list(any()),
        "conditions" => list(trigger_condition()),
        "description" => [String.t()],
        "minDelayMinutesBetweenExecutions" => [integer()],
        "targetRegion" => String.t()
      }
      
  """
  @type trigger() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      eks_resource_scaling_ungraceful() :: %{
        "minimumSuccessPercentage" => [integer()]
      }
      
  """
  @type eks_resource_scaling_ungraceful() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      illegal_state_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type illegal_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_route53_health_checks_response() :: %{
        "healthChecks" => list(route53_health_check()),
        "nextToken" => String.t()
      }
      
  """
  @type list_route53_health_checks_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_plans_in_region_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_plans_in_region_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_plan_execution_step_request() :: %{
        required("actionToTake") => list(any()),
        required("comment") => String.t(),
        required("executionId") => String.t(),
        required("planArn") => String.t(),
        required("stepName") => [String.t()]
      }
      
  """
  @type update_plan_execution_step_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ecs_ungraceful() :: %{
        "minimumSuccessPercentage" => [integer()]
      }
      
  """
  @type ecs_ungraceful() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      region_switch_plan_configuration() :: %{
        "arn" => String.t(),
        "crossAccountRole" => String.t(),
        "externalId" => [String.t()]
      }
      
  """
  @type region_switch_plan_configuration() :: %{String.t() => any()}

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
  @type eks_resource_scaling_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service() :: %{
        "clusterArn" => String.t(),
        "crossAccountRole" => String.t(),
        "externalId" => [String.t()],
        "serviceArn" => String.t()
      }
      
  """
  @type service() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_plan_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_plan_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_plans_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_plans_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      illegal_argument_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type illegal_argument_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("arn") => String.t(),
        required("resourceTagKeys") => list(String.t())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

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
  @type ec2_ungraceful() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_route53_health_checks_request() :: %{
        optional("hostedZoneId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("recordName") => String.t(),
        required("arn") => String.t()
      }
      
  """
  @type list_route53_health_checks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associated_alarm() :: %{
        "alarmType" => list(any()),
        "crossAccountRole" => String.t(),
        "externalId" => [String.t()],
        "resourceIdentifier" => [String.t()]
      }
      
  """
  @type associated_alarm() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_event() :: %{
        "description" => [String.t()],
        "error" => [String.t()],
        "eventId" => [String.t()],
        "executionBlockType" => list(any()),
        "previousEventId" => [String.t()],
        "resources" => list([String.t()]()),
        "stepName" => String.t(),
        "timestamp" => [non_neg_integer()],
        "type" => list(any())
      }
      
  """
  @type execution_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      route53_resource_record_set() :: %{
        "recordSetIdentifier" => String.t(),
        "region" => String.t()
      }
      
  """
  @type route53_resource_record_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trigger_condition() :: %{
        "associatedAlarmName" => [String.t()],
        "condition" => list(any())
      }
      
  """
  @type trigger_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_plan_execution_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t()],
        required("executionId") => String.t(),
        required("planArn") => String.t()
      }
      
  """
  @type get_plan_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_plan_execution_events_response() :: %{
        "items" => list(execution_event()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_plan_execution_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kubernetes_resource_type() :: %{
        "apiVersion" => [String.t()],
        "kind" => [String.t()]
      }
      
  """
  @type kubernetes_resource_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_approval_configuration() :: %{
        "approvalRole" => String.t(),
        "timeoutMinutes" => [integer()]
      }
      
  """
  @type execution_approval_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      parallel_execution_block_configuration() :: %{
        "steps" => list(step())
      }
      
  """
  @type parallel_execution_block_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_plan_execution_response() :: %{}
      
  """
  @type update_plan_execution_response() :: %{}

  @typedoc """

  ## Example:
      
      kubernetes_scaling_resource() :: %{
        "hpaName" => [String.t()],
        "name" => [String.t()],
        "namespace" => String.t()
      }
      
  """
  @type kubernetes_scaling_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      eks_cluster() :: %{
        "clusterArn" => String.t(),
        "crossAccountRole" => String.t(),
        "externalId" => [String.t()]
      }
      
  """
  @type eks_cluster() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      workflow() :: %{
        "steps" => list(step()),
        "workflowDescription" => [String.t()],
        "workflowTargetAction" => list(any()),
        "workflowTargetRegion" => String.t()
      }
      
  """
  @type workflow() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_plan_evaluation_status_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("planArn") => String.t()
      }
      
  """
  @type get_plan_evaluation_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_plan_execution_request() :: %{
        optional("comment") => String.t(),
        required("executionId") => String.t(),
        required("planArn") => String.t()
      }
      
  """
  @type cancel_plan_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "resourceTags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_plan_response() :: %{
        "plan" => plan()
      }
      
  """
  @type update_plan_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_plan_request() :: %{
        optional("associatedAlarms") => map(),
        optional("description") => [String.t()],
        optional("recoveryTimeObjectiveMinutes") => [integer()],
        optional("triggers") => list(trigger()),
        required("arn") => String.t(),
        required("executionRole") => String.t(),
        required("workflows") => list(workflow())
      }
      
  """
  @type update_plan_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_warning() :: %{
        "resourceArn" => String.t(),
        "stepName" => String.t(),
        "version" => [String.t()],
        "warningMessage" => [String.t()],
        "warningStatus" => list(any()),
        "warningUpdatedTime" => [non_neg_integer()],
        "workflow" => minimal_workflow()
      }
      
  """
  @type resource_warning() :: %{String.t() => any()}

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
  @type ecs_capacity_increase_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_plan_executions_response() :: %{
        "items" => list(abbreviated_execution()),
        "nextToken" => [String.t()]
      }
      
  """
  @type list_plan_executions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      arc_routing_control_configuration() :: %{
        "crossAccountRole" => String.t(),
        "externalId" => [String.t()],
        "regionAndRoutingControls" => map(),
        "timeoutMinutes" => [integer()]
      }
      
  """
  @type arc_routing_control_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_plan_response() :: %{
        "plan" => plan()
      }
      
  """
  @type create_plan_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_plan_execution_response() :: %{
        "actualRecoveryTime" => String.t(),
        "comment" => [String.t()],
        "endTime" => [non_neg_integer()],
        "executionAction" => list(any()),
        "executionId" => String.t(),
        "executionRegion" => [String.t()],
        "executionState" => list(any()),
        "mode" => list(any()),
        "nextToken" => [String.t()],
        "plan" => plan(),
        "planArn" => String.t(),
        "startTime" => [non_neg_integer()],
        "stepStates" => list(step_state()),
        "updatedAt" => [non_neg_integer()],
        "version" => [String.t()]
      }
      
  """
  @type get_plan_execution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_plan_execution_response() :: %{}
      
  """
  @type cancel_plan_execution_response() :: %{}

  @typedoc """

  ## Example:
      
      list_plans_in_region_response() :: %{
        "nextToken" => String.t(),
        "plans" => list(abbreviated_plan())
      }
      
  """
  @type list_plans_in_region_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      asg() :: %{
        "arn" => String.t(),
        "crossAccountRole" => String.t(),
        "externalId" => [String.t()]
      }
      
  """
  @type asg() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_plans_response() :: %{
        "nextToken" => String.t(),
        "plans" => list(abbreviated_plan())
      }
      
  """
  @type list_plans_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_plan_response() :: %{
        "plan" => plan()
      }
      
  """
  @type get_plan_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      route53_health_check() :: %{
        "healthCheckId" => String.t(),
        "hostedZoneId" => String.t(),
        "recordName" => String.t(),
        "region" => String.t()
      }
      
  """
  @type route53_health_check() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_plan_in_region_response() :: %{
        "plan" => plan()
      }
      
  """
  @type get_plan_in_region_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "message" => [String.t()]
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_plan_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_plan_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_plan_response() :: %{}
      
  """
  @type delete_plan_response() :: %{}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      global_aurora_ungraceful() :: %{
        "ungraceful" => list(any())
      }
      
  """
  @type global_aurora_ungraceful() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_plan_in_region_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_plan_in_region_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      step_state() :: %{
        "endTime" => [non_neg_integer()],
        "name" => String.t(),
        "startTime" => [non_neg_integer()],
        "status" => list(any()),
        "stepMode" => list(any())
      }
      
  """
  @type step_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      abbreviated_execution() :: %{
        "actualRecoveryTime" => String.t(),
        "comment" => [String.t()],
        "endTime" => [non_neg_integer()],
        "executionAction" => list(any()),
        "executionId" => String.t(),
        "executionRegion" => [String.t()],
        "executionState" => list(any()),
        "mode" => list(any()),
        "planArn" => String.t(),
        "startTime" => [non_neg_integer()],
        "updatedAt" => [non_neg_integer()],
        "version" => [String.t()]
      }
      
  """
  @type abbreviated_execution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_plan_execution_request() :: %{
        optional("comment") => String.t(),
        optional("latestVersion") => [String.t()],
        optional("mode") => list(any()),
        required("action") => list(any()),
        required("planArn") => String.t(),
        required("targetRegion") => [String.t()]
      }
      
  """
  @type start_plan_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_plan_request() :: %{
        optional("associatedAlarms") => map(),
        optional("description") => [String.t()],
        optional("primaryRegion") => String.t(),
        optional("recoveryTimeObjectiveMinutes") => [integer()],
        optional("tags") => map(),
        optional("triggers") => list(trigger()),
        required("executionRole") => String.t(),
        required("name") => String.t(),
        required("recoveryApproach") => list(any()),
        required("regions") => list(String.t()),
        required("workflows") => list(workflow())
      }
      
  """
  @type create_plan_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      approve_plan_execution_step_request() :: %{
        optional("comment") => String.t(),
        required("approval") => list(any()),
        required("executionId") => String.t(),
        required("planArn") => String.t(),
        required("stepName") => String.t()
      }
      
  """
  @type approve_plan_execution_step_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_plan_execution_response() :: %{
        "activateRegion" => [String.t()],
        "deactivateRegion" => [String.t()],
        "executionId" => String.t(),
        "plan" => String.t(),
        "planVersion" => [String.t()]
      }
      
  """
  @type start_plan_execution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      step() :: %{
        "description" => [String.t()],
        "executionBlockConfiguration" => list(),
        "executionBlockType" => list(any()),
        "name" => String.t()
      }
      
  """
  @type step() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      minimal_workflow() :: %{
        "action" => list(any()),
        "name" => [String.t()]
      }
      
  """
  @type minimal_workflow() :: %{String.t() => any()}

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
  @type ec2_asg_capacity_increase_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_plan_evaluation_status_response() :: %{
        "evaluationState" => list(any()),
        "lastEvaluatedVersion" => [String.t()],
        "lastEvaluationTime" => [non_neg_integer()],
        "nextToken" => String.t(),
        "planArn" => String.t(),
        "region" => String.t(),
        "warnings" => list(resource_warning())
      }
      
  """
  @type get_plan_evaluation_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      route53_health_check_configuration() :: %{
        "crossAccountRole" => String.t(),
        "externalId" => [String.t()],
        "hostedZoneId" => String.t(),
        "recordName" => String.t(),
        "recordSets" => list(route53_resource_record_set()),
        "timeoutMinutes" => [integer()]
      }
      
  """
  @type route53_health_check_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_plan_executions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => [String.t()],
        optional("state") => list(any()),
        required("planArn") => String.t()
      }
      
  """
  @type list_plan_executions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_plan_execution_events_request() :: %{
        optional("maxResults") => integer(),
        optional("name") => String.t(),
        optional("nextToken") => [String.t()],
        required("executionId") => String.t(),
        required("planArn") => String.t()
      }
      
  """
  @type list_plan_execution_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_plan_execution_request() :: %{
        optional("comment") => String.t(),
        required("action") => list(any()),
        required("executionId") => String.t(),
        required("planArn") => String.t()
      }
      
  """
  @type update_plan_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      abbreviated_plan() :: %{
        "activePlanExecution" => String.t(),
        "arn" => String.t(),
        "description" => [String.t()],
        "executionRole" => [String.t()],
        "name" => String.t(),
        "owner" => String.t(),
        "primaryRegion" => String.t(),
        "recoveryApproach" => list(any()),
        "recoveryTimeObjectiveMinutes" => [integer()],
        "regions" => list(String.t()),
        "updatedAt" => [non_neg_integer()],
        "version" => [String.t()]
      }
      
  """
  @type abbreviated_plan() :: %{String.t() => any()}

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
  @type custom_action_lambda_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      plan() :: %{
        "arn" => String.t(),
        "associatedAlarms" => map(),
        "description" => [String.t()],
        "executionRole" => String.t(),
        "name" => String.t(),
        "owner" => String.t(),
        "primaryRegion" => String.t(),
        "recoveryApproach" => list(any()),
        "recoveryTimeObjectiveMinutes" => [integer()],
        "regions" => list(String.t()),
        "triggers" => list(trigger()),
        "updatedAt" => [non_neg_integer()],
        "version" => [String.t()],
        "workflows" => list(workflow())
      }
      
  """
  @type plan() :: %{String.t() => any()}

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
    meta = metadata()

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
    meta = metadata()

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
    meta = metadata()

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
    meta = metadata()

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
    meta = metadata()

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
    meta = metadata()

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
    meta = metadata()

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
    meta = metadata()

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
    meta = metadata()

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
    meta = metadata()

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
    meta = metadata()

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
    meta = metadata()

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
    meta = metadata()

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
    meta = metadata()

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
    meta = metadata()

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
    meta = metadata()

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
    meta = metadata()

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
    meta = metadata()

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
    meta = metadata()

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
    meta = metadata()

    Request.request_post(client, meta, "UpdatePlanExecutionStep", input, options)
  end
end
