# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CodeDeploy do
  @moduledoc """
  CodeDeploy is a deployment service that automates application deployments
  to Amazon EC2 instances, on-premises instances running in your own facility,
  serverless Lambda functions, or applications in an Amazon ECS
  service.

  You can deploy a nearly unlimited variety of application content, such as an
  updated
  Lambda function, updated applications in an Amazon ECS service,
  code, web and configuration files, executables, packages, scripts, multimedia
  files, and
  so on. CodeDeploy can deploy application content stored in Amazon S3
  buckets, GitHub repositories, or Bitbucket repositories. You do not need to make
  changes
  to your existing code before you can use CodeDeploy.

  CodeDeploy makes it easier for you to rapidly release new features, helps
  you avoid downtime during application deployment, and handles the complexity of
  updating
  your applications, without many of the risks associated with error-prone manual
  deployments.

  ## CodeDeploy Components

  Use the information in this guide to help you work with the following CodeDeploy
  components:

    *

  **Application**: A name that uniquely identifies
  the application you want to deploy. CodeDeploy uses this name, which
  functions as a container, to ensure the correct combination of revision,
  deployment configuration, and deployment group are referenced during a
  deployment.

    *

  **Deployment group**: A set of individual
  instances, CodeDeploy
  Lambda deployment configuration settings, or an Amazon ECS
  service and network details. A Lambda deployment group specifies how
  to route traffic to a new version of a Lambda function. An Amazon ECS deployment
  group specifies the service created in Amazon ECS to deploy, a load balancer,
  and a listener to reroute production
  traffic to an updated containerized application. An Amazon EC2/On-premises
  deployment group contains individually tagged instances, Amazon EC2 instances in
  Amazon EC2 Auto Scaling groups, or both. All
  deployment groups can specify optional trigger, alarm, and rollback
  settings.

    *

  **Deployment configuration**: A set of deployment
  rules and deployment success and failure conditions used by CodeDeploy during a
  deployment.

    *

  **Deployment**: The process and the components used
  when updating a Lambda function, a containerized application in an
  Amazon ECS service, or of installing content on one or more
  instances.

    *

  **Application revisions**: For an Lambda deployment, this is an AppSpec file
  that specifies the
  Lambda function to be updated and one or more functions to
  validate deployment lifecycle events. For an Amazon ECS deployment, this
  is an AppSpec file that specifies the Amazon ECS task definition,
  container, and port where production traffic is rerouted. For an EC2/On-premises
  deployment, this is an archive file that contains source content—source code,
  webpages, executable files, and deployment scripts—along with an AppSpec file.
  Revisions are stored in Amazon S3 buckets or GitHub repositories. For
  Amazon S3, a revision is uniquely identified by its Amazon S3 object key and its
  ETag, version, or both. For GitHub, a revision is uniquely
  identified by its commit ID.

  This guide also contains information to help you get details about the instances
  in
  your deployments, to make on-premises instances available for CodeDeploy
  deployments, to get details about a Lambda function deployment, and to get
  details about Amazon ECS service deployments.

  ## CodeDeploy Information Resources

    *

  [CodeDeploy User Guide](https://docs.aws.amazon.com/codedeploy/latest/userguide) 

    *

  [CodeDeploy API Reference
  Guide](https://docs.aws.amazon.com/codedeploy/latest/APIReference/)

    *

  [CLI Reference for CodeDeploy](https://docs.aws.amazon.com/cli/latest/reference/deploy/index.html)

    *

  [CodeDeploy Developer Forum](https://forums.aws.amazon.com/forum.jspa?forumID=179)
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      batch_limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type batch_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      traffic_route() :: %{
        "listenerArns" => list(String.t() | atom())
      }
      
  """
  @type traffic_route() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_deployment_config_input() :: %{
        required("deploymentConfigName") => String.t() | atom()
      }
      
  """
  @type get_deployment_config_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_load_balancer_info_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_load_balancer_info_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      minimum_healthy_hosts_per_zone() :: %{
        "type" => list(any()),
        "value" => integer()
      }
      
  """
  @type minimum_healthy_hosts_per_zone() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      auto_rollback_configuration() :: %{
        "enabled" => boolean(),
        "events" => list(list(any())())
      }
      
  """
  @type auto_rollback_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_target_id_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type deployment_target_id_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_config_limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type deployment_config_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      lifecycle_event_already_completed_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type lifecycle_event_already_completed_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_deployments_input() :: %{
        required("deploymentIds") => list(String.t() | atom())
      }
      
  """
  @type batch_get_deployments_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_does_not_exist_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type application_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_deployment_group_output() :: %{
        "hooksNotCleanedUp" => list(auto_scaling_group())
      }
      
  """
  @type delete_deployment_group_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type instance_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unsupported_action_for_deployment_type_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type unsupported_action_for_deployment_type_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      skip_wait_time_for_instance_termination_input() :: %{
        optional("deploymentId") => String.t() | atom()
      }
      
  """
  @type skip_wait_time_for_instance_termination_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_is_not_in_ready_state_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type deployment_is_not_in_ready_state_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      revision_location() :: %{
        "appSpecContent" => app_spec_content(),
        "gitHubLocation" => git_hub_location(),
        "revisionType" => list(any()),
        "s3Location" => s3_location(),
        "string" => raw_string()
      }
      
  """
  @type revision_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_deployment_instances_output() :: %{
        "instancesList" => list(String.t() | atom()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_deployment_instances_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_application_revisions_input() :: %{
        required("applicationName") => String.t() | atom(),
        required("revisions") => list(revision_location())
      }
      
  """
  @type batch_get_application_revisions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_trigger_config_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_trigger_config_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_deployment_instances_input() :: %{
        optional("instanceStatusFilter") => list(list(any())()),
        optional("instanceTypeFilter") => list(list(any())()),
        optional("nextToken") => String.t() | atom(),
        required("deploymentId") => String.t() | atom()
      }
      
  """
  @type list_deployment_instances_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_deployment_target_input() :: %{
        required("deploymentId") => String.t() | atom(),
        required("targetId") => String.t() | atom()
      }
      
  """
  @type get_deployment_target_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_deployment_instance_input() :: %{
        required("deploymentId") => String.t() | atom(),
        required("instanceId") => String.t() | atom()
      }
      
  """
  @type get_deployment_instance_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_deployment_output() :: %{
        "deploymentInfo" => deployment_info()
      }
      
  """
  @type get_deployment_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type application_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_on_premises_instances_input() :: %{
        required("instanceNames") => list(String.t() | atom())
      }
      
  """
  @type batch_get_on_premises_instances_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ec2_tag_filter() :: %{
        "Key" => String.t() | atom(),
        "Type" => list(any()),
        "Value" => String.t() | atom()
      }
      
  """
  @type ec2_tag_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_deployment_input() :: %{
        optional("autoRollbackConfiguration") => auto_rollback_configuration(),
        optional("deploymentConfigName") => String.t() | atom(),
        optional("deploymentGroupName") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("fileExistsBehavior") => list(any()),
        optional("ignoreApplicationStopFailures") => boolean(),
        optional("overrideAlarmConfiguration") => alarm_configuration(),
        optional("revision") => revision_location(),
        optional("targetInstances") => target_instances(),
        optional("updateOutdatedInstancesOnly") => boolean(),
        required("applicationName") => String.t() | atom()
      }
      
  """
  @type create_deployment_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      alarm() :: %{
        "name" => String.t() | atom()
      }
      
  """
  @type alarm() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      revision_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type revision_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_sort_order_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_sort_order_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      e_c_s_task_set() :: %{
        "desiredCount" => float(),
        "identifer" => String.t() | atom(),
        "pendingCount" => float(),
        "runningCount" => float(),
        "status" => String.t() | atom(),
        "targetGroup" => target_group_info(),
        "taskSetLabel" => list(any()),
        "trafficWeight" => float()
      }
      
  """
  @type e_c_s_task_set() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_instance_status_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_instance_status_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_deployment_groups_output() :: %{
        "deploymentGroupsInfo" => list(deployment_group_info()),
        "errorMessage" => String.t() | atom()
      }
      
  """
  @type batch_get_deployment_groups_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      e_c_s_target() :: %{
        "deploymentId" => String.t() | atom(),
        "lastUpdatedAt" => non_neg_integer(),
        "lifecycleEvents" => list(lifecycle_event()),
        "status" => list(any()),
        "targetArn" => String.t() | atom(),
        "targetId" => String.t() | atom(),
        "taskSetsInfo" => list(e_c_s_task_set())
      }
      
  """
  @type e_c_s_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_deployment_targets_output() :: %{
        "deploymentTargets" => list(deployment_target())
      }
      
  """
  @type batch_get_deployment_targets_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_deployment_instances_input() :: %{
        required("deploymentId") => String.t() | atom(),
        required("instanceIds") => list(String.t() | atom())
      }
      
  """
  @type batch_get_deployment_instances_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type tag_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_deployment_group_output() :: %{
        "hooksNotCleanedUp" => list(auto_scaling_group())
      }
      
  """
  @type update_deployment_group_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_application_revisions_output() :: %{
        "nextToken" => String.t() | atom(),
        "revisions" => list(revision_location())
      }
      
  """
  @type list_application_revisions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      git_hub_account_token_does_not_exist_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type git_hub_account_token_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_deployment_input() :: %{
        required("deploymentId") => String.t() | atom()
      }
      
  """
  @type get_deployment_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_deployment_status_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_deployment_status_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_target() :: %{
        "cloudFormationTarget" => cloud_formation_target(),
        "deploymentTargetType" => list(any()),
        "ecsTarget" => e_c_s_target(),
        "instanceTarget" => instance_target(),
        "lambdaTarget" => lambda_target()
      }
      
  """
  @type deployment_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_style() :: %{
        "deploymentOption" => list(any()),
        "deploymentType" => list(any())
      }
      
  """
  @type deployment_style() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_name_already_registered_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type instance_name_already_registered_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_deployment_style_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_deployment_style_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_operation_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_operation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_application_output() :: %{
        "applicationId" => String.t() | atom()
      }
      
  """
  @type create_application_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_config_name_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type deployment_config_name_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_minimum_healthy_host_value_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_minimum_healthy_host_value_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_deployment_target_id_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_deployment_target_id_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_resources_by_external_id_output() :: %{}
      
  """
  @type delete_resources_by_external_id_output() :: %{}

  @typedoc """

  ## Example:
      
      deployment_config_already_exists_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type deployment_config_already_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_git_hub_account_token_name_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_git_hub_account_token_name_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_tags_to_add_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_tags_to_add_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_registration_status_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_registration_status_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_update_outdated_instances_only_value_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_update_outdated_instances_only_value_exception() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      list_deployment_targets_input() :: %{
        optional("nextToken") => String.t() | atom(),
        optional("targetFilters") => map(),
        required("deploymentId") => String.t() | atom()
      }
      
  """
  @type list_deployment_targets_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_does_not_exist_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type instance_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      app_spec_content() :: %{
        "content" => String.t() | atom(),
        "sha256" => String.t() | atom()
      }
      
  """
  @type app_spec_content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_deployment_targets_input() :: %{
        required("deploymentId") => String.t() | atom(),
        required("targetIds") => list(String.t() | atom())
      }
      
  """
  @type batch_get_deployment_targets_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_bucket_name_filter_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_bucket_name_filter_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_output() :: %{
        "NextToken" => String.t() | atom(),
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_deployment_group_input() :: %{
        required("applicationName") => String.t() | atom(),
        required("deploymentGroupName") => String.t() | atom()
      }
      
  """
  @type get_deployment_group_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_iam_session_arn_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_iam_session_arn_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_deployment_group_output() :: %{
        "deploymentGroupId" => String.t() | atom()
      }
      
  """
  @type create_deployment_group_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      zonal_config() :: %{
        "firstZoneMonitorDurationInSeconds" => float(),
        "minimumHealthyHostsPerZone" => minimum_healthy_hosts_per_zone(),
        "monitorDurationInSeconds" => float()
      }
      
  """
  @type zonal_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_deployment_configs_output() :: %{
        "deploymentConfigsList" => list(String.t() | atom()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_deployment_configs_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_info() :: %{
        "additionalDeploymentStatusInfo" => String.t() | atom(),
        "applicationName" => String.t() | atom(),
        "autoRollbackConfiguration" => auto_rollback_configuration(),
        "blueGreenDeploymentConfiguration" => blue_green_deployment_configuration(),
        "completeTime" => non_neg_integer(),
        "computePlatform" => list(any()),
        "createTime" => non_neg_integer(),
        "creator" => list(any()),
        "deploymentConfigName" => String.t() | atom(),
        "deploymentGroupName" => String.t() | atom(),
        "deploymentId" => String.t() | atom(),
        "deploymentOverview" => deployment_overview(),
        "deploymentStatusMessages" => list(String.t() | atom()),
        "deploymentStyle" => deployment_style(),
        "description" => String.t() | atom(),
        "errorInformation" => error_information(),
        "externalId" => String.t() | atom(),
        "fileExistsBehavior" => list(any()),
        "ignoreApplicationStopFailures" => boolean(),
        "instanceTerminationWaitTimeStarted" => boolean(),
        "loadBalancerInfo" => load_balancer_info(),
        "overrideAlarmConfiguration" => alarm_configuration(),
        "previousRevision" => revision_location(),
        "relatedDeployments" => related_deployments(),
        "revision" => revision_location(),
        "rollbackInfo" => rollback_info(),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "targetInstances" => target_instances(),
        "updateOutdatedInstancesOnly" => boolean()
      }
      
  """
  @type deployment_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_arn_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_arn_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_id_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type deployment_id_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      time_based_linear() :: %{
        "linearInterval" => integer(),
        "linearPercentage" => integer()
      }
      
  """
  @type time_based_linear() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target_group_pair_info() :: %{
        "prodTrafficRoute" => traffic_route(),
        "targetGroups" => list(target_group_info()),
        "testTrafficRoute" => traffic_route()
      }
      
  """
  @type target_group_pair_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_on_premises_instances_output() :: %{
        "instanceNames" => list(String.t() | atom()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_on_premises_instances_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      iam_user_arn_already_registered_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type iam_user_arn_already_registered_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_deployments_output() :: %{
        "deploymentsInfo" => list(deployment_info())
      }
      
  """
  @type batch_get_deployments_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_name_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type application_name_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      register_application_revision_input() :: %{
        optional("description") => String.t() | atom(),
        required("applicationName") => String.t() | atom(),
        required("revision") => revision_location()
      }
      
  """
  @type register_application_revision_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_git_hub_account_token_names_input() :: %{
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type list_git_hub_account_token_names_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_file_exists_behavior_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_file_exists_behavior_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_revision_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_revision_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_deployment_instance_output() :: %{
        "instanceSummary" => instance_summary()
      }
      
  """
  @type get_deployment_instance_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      description_too_long_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type description_too_long_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_on_premises_instance_output() :: %{
        "instanceInfo" => instance_info()
      }
      
  """
  @type get_on_premises_instance_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_applications_output() :: %{
        "applications" => list(String.t() | atom()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_applications_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      git_hub_location() :: %{
        "commitId" => String.t() | atom(),
        "repository" => String.t() | atom()
      }
      
  """
  @type git_hub_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_e_c_s_service_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_e_c_s_service_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_applications_input() :: %{
        required("applicationNames") => list(String.t() | atom())
      }
      
  """
  @type batch_get_applications_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_alarm_config_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_alarm_config_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_deployment_groups_output() :: %{
        "applicationName" => String.t() | atom(),
        "deploymentGroups" => list(String.t() | atom()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_deployment_groups_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_info() :: %{
        "applicationId" => String.t() | atom(),
        "applicationName" => String.t() | atom(),
        "computePlatform" => list(any()),
        "createTime" => non_neg_integer(),
        "gitHubAccountName" => String.t() | atom(),
        "linkedToGitHub" => boolean()
      }
      
  """
  @type application_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      arn_not_supported_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type arn_not_supported_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_id_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type instance_id_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_applications_input() :: %{
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type list_applications_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_not_started_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type deployment_not_started_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_auto_scaling_group_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_auto_scaling_group_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      e_c_s_service() :: %{
        "clusterName" => String.t() | atom(),
        "serviceName" => String.t() | atom()
      }
      
  """
  @type e_c_s_service() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_time_range_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_time_range_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_group_info() :: %{
        "alarmConfiguration" => alarm_configuration(),
        "applicationName" => String.t() | atom(),
        "autoRollbackConfiguration" => auto_rollback_configuration(),
        "autoScalingGroups" => list(auto_scaling_group()),
        "blueGreenDeploymentConfiguration" => blue_green_deployment_configuration(),
        "computePlatform" => list(any()),
        "deploymentConfigName" => String.t() | atom(),
        "deploymentGroupId" => String.t() | atom(),
        "deploymentGroupName" => String.t() | atom(),
        "deploymentStyle" => deployment_style(),
        "ec2TagFilters" => list(ec2_tag_filter()),
        "ec2TagSet" => ec2_tag_set(),
        "ecsServices" => list(e_c_s_service()),
        "lastAttemptedDeployment" => last_deployment_info(),
        "lastSuccessfulDeployment" => last_deployment_info(),
        "loadBalancerInfo" => load_balancer_info(),
        "onPremisesInstanceTagFilters" => list(tag_filter()),
        "onPremisesTagSet" => on_premises_tag_set(),
        "outdatedInstancesStrategy" => list(any()),
        "serviceRoleArn" => String.t() | atom(),
        "targetRevision" => revision_location(),
        "terminationHookEnabled" => boolean(),
        "triggerConfigurations" => list(trigger_config())
      }
      
  """
  @type deployment_group_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_on_premises_tag_combination_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_on_premises_tag_combination_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      on_premises_tag_set() :: %{
        "onPremisesTagSetList" => list(list(tag_filter())())
      }
      
  """
  @type on_premises_tag_set() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_application_revision_input() :: %{
        required("applicationName") => String.t() | atom(),
        required("revision") => revision_location()
      }
      
  """
  @type get_application_revision_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_lifecycle_event_hook_execution_status_output() :: %{
        "lifecycleEventHookExecutionId" => String.t() | atom()
      }
      
  """
  @type put_lifecycle_event_hook_execution_status_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_git_hub_account_token_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_git_hub_account_token_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_target_list_size_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type deployment_target_list_size_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_does_not_exist_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type deployment_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_application_input() :: %{
        optional("computePlatform") => list(any()),
        optional("tags") => list(tag()),
        required("applicationName") => String.t() | atom()
      }
      
  """
  @type create_application_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_next_token_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      last_deployment_info() :: %{
        "createTime" => non_neg_integer(),
        "deploymentId" => String.t() | atom(),
        "endTime" => non_neg_integer(),
        "status" => list(any())
      }
      
  """
  @type last_deployment_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      e_lb_info() :: %{
        "name" => String.t() | atom()
      }
      
  """
  @type e_lb_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_deployment_group_input() :: %{
        optional("alarmConfiguration") => alarm_configuration(),
        optional("autoRollbackConfiguration") => auto_rollback_configuration(),
        optional("autoScalingGroups") => list(String.t() | atom()),
        optional("blueGreenDeploymentConfiguration") => blue_green_deployment_configuration(),
        optional("deploymentConfigName") => String.t() | atom(),
        optional("deploymentStyle") => deployment_style(),
        optional("ec2TagFilters") => list(ec2_tag_filter()),
        optional("ec2TagSet") => ec2_tag_set(),
        optional("ecsServices") => list(e_c_s_service()),
        optional("loadBalancerInfo") => load_balancer_info(),
        optional("newDeploymentGroupName") => String.t() | atom(),
        optional("onPremisesInstanceTagFilters") => list(tag_filter()),
        optional("onPremisesTagSet") => on_premises_tag_set(),
        optional("outdatedInstancesStrategy") => list(any()),
        optional("serviceRoleArn") => String.t() | atom(),
        optional("terminationHookEnabled") => boolean(),
        optional("triggerConfigurations") => list(trigger_config()),
        required("applicationName") => String.t() | atom(),
        required("currentDeploymentGroupName") => String.t() | atom()
      }
      
  """
  @type update_deployment_group_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type tag_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_external_id_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_external_id_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_git_hub_account_token_input() :: %{
        optional("tokenName") => String.t() | atom()
      }
      
  """
  @type delete_git_hub_account_token_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_target_does_not_exist_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type deployment_target_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_deployment_config_output() :: %{
        "deploymentConfigId" => String.t() | atom()
      }
      
  """
  @type create_deployment_config_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      lambda_function_info() :: %{
        "currentVersion" => String.t() | atom(),
        "functionAlias" => String.t() | atom(),
        "functionName" => String.t() | atom(),
        "targetVersion" => String.t() | atom(),
        "targetVersionWeight" => float()
      }
      
  """
  @type lambda_function_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_deployment_targets_output() :: %{
        "nextToken" => String.t() | atom(),
        "targetIds" => list(String.t() | atom())
      }
      
  """
  @type list_deployment_targets_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      green_fleet_provisioning_option() :: %{
        "action" => list(any())
      }
      
  """
  @type green_fleet_provisioning_option() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_input_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_input_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_deployment_group_input() :: %{
        required("applicationName") => String.t() | atom(),
        required("deploymentGroupName") => String.t() | atom()
      }
      
  """
  @type delete_deployment_group_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_on_premises_instances_input() :: %{
        optional("nextToken") => String.t() | atom(),
        optional("registrationStatus") => list(any()),
        optional("tagFilters") => list(tag_filter())
      }
      
  """
  @type list_on_premises_instances_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      iam_session_arn_already_registered_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type iam_session_arn_already_registered_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      raw_string() :: %{
        "content" => String.t() | atom(),
        "sha256" => String.t() | atom()
      }
      
  """
  @type raw_string() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_target() :: %{
        "deploymentId" => String.t() | atom(),
        "instanceLabel" => list(any()),
        "lastUpdatedAt" => non_neg_integer(),
        "lifecycleEvents" => list(lifecycle_event()),
        "status" => list(any()),
        "targetArn" => String.t() | atom(),
        "targetId" => String.t() | atom()
      }
      
  """
  @type instance_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_deployment_group_name_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_deployment_group_name_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_config_in_use_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type deployment_config_in_use_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_key_prefix_filter_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_key_prefix_filter_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target_instances() :: %{
        "autoScalingGroups" => list(String.t() | atom()),
        "ec2TagSet" => ec2_tag_set(),
        "tagFilters" => list(ec2_tag_filter())
      }
      
  """
  @type target_instances() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_location() :: %{
        "bucket" => String.t() | atom(),
        "bundleType" => list(any()),
        "eTag" => String.t() | atom(),
        "key" => String.t() | atom(),
        "version" => String.t() | atom()
      }
      
  """
  @type s3_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      blue_green_deployment_configuration() :: %{
        "deploymentReadyOption" => deployment_ready_option(),
        "greenFleetProvisioningOption" => green_fleet_provisioning_option(),
        "terminateBlueInstancesOnDeploymentSuccess" => blue_instance_termination_option()
      }
      
  """
  @type blue_green_deployment_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_input() :: %{
        required("ResourceArn") => String.t() | atom(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      minimum_healthy_hosts() :: %{
        "type" => list(any()),
        "value" => integer()
      }
      
  """
  @type minimum_healthy_hosts() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_deployment_groups_input() :: %{
        required("applicationName") => String.t() | atom(),
        required("deploymentGroupNames") => list(String.t() | atom())
      }
      
  """
  @type batch_get_deployment_groups_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_application_revisions_input() :: %{
        optional("deployed") => list(any()),
        optional("nextToken") => String.t() | atom(),
        optional("s3Bucket") => String.t() | atom(),
        optional("s3KeyPrefix") => String.t() | atom(),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        required("applicationName") => String.t() | atom()
      }
      
  """
  @type list_application_revisions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_deployment_wait_type_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_deployment_wait_type_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_group_already_exists_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type deployment_group_already_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_role_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_role_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_zonal_deployment_configuration_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_zonal_deployment_configuration_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_on_premises_instance_input() :: %{
        required("instanceName") => String.t() | atom()
      }
      
  """
  @type get_on_premises_instance_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      continue_deployment_input() :: %{
        optional("deploymentId") => String.t() | atom(),
        optional("deploymentWaitType") => list(any())
      }
      
  """
  @type continue_deployment_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_application_output() :: %{
        "application" => application_info()
      }
      
  """
  @type get_application_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      application_already_exists_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type application_already_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_output() :: %{}
      
  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      deployment_overview() :: %{
        "Failed" => float(),
        "InProgress" => float(),
        "Pending" => float(),
        "Ready" => float(),
        "Skipped" => float(),
        "Succeeded" => float()
      }
      
  """
  @type deployment_overview() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_on_premises_instances_output() :: %{
        "instanceInfos" => list(instance_info())
      }
      
  """
  @type batch_get_on_premises_instances_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_instance_name_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_instance_name_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      iam_arn_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type iam_arn_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_deployment_config_input() :: %{
        optional("computePlatform") => list(any()),
        optional("minimumHealthyHosts") => minimum_healthy_hosts(),
        optional("trafficRoutingConfig") => traffic_routing_config(),
        optional("zonalConfig") => zonal_config(),
        required("deploymentConfigName") => String.t() | atom()
      }
      
  """
  @type create_deployment_config_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      cloud_formation_target() :: %{
        "deploymentId" => String.t() | atom(),
        "lastUpdatedAt" => non_neg_integer(),
        "lifecycleEvents" => list(lifecycle_event()),
        "resourceType" => String.t() | atom(),
        "status" => list(any()),
        "targetId" => String.t() | atom(),
        "targetVersionWeight" => float()
      }
      
  """
  @type cloud_formation_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      trigger_targets_limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type trigger_targets_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      git_hub_account_token_name_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type git_hub_account_token_name_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_arn_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type resource_arn_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_deployment_config_output() :: %{
        "deploymentConfigInfo" => deployment_config_info()
      }
      
  """
  @type get_deployment_config_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_traffic_routing_configuration_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_traffic_routing_configuration_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_deployment_group_input() :: %{
        optional("alarmConfiguration") => alarm_configuration(),
        optional("autoRollbackConfiguration") => auto_rollback_configuration(),
        optional("autoScalingGroups") => list(String.t() | atom()),
        optional("blueGreenDeploymentConfiguration") => blue_green_deployment_configuration(),
        optional("deploymentConfigName") => String.t() | atom(),
        optional("deploymentStyle") => deployment_style(),
        optional("ec2TagFilters") => list(ec2_tag_filter()),
        optional("ec2TagSet") => ec2_tag_set(),
        optional("ecsServices") => list(e_c_s_service()),
        optional("loadBalancerInfo") => load_balancer_info(),
        optional("onPremisesInstanceTagFilters") => list(tag_filter()),
        optional("onPremisesTagSet") => on_premises_tag_set(),
        optional("outdatedInstancesStrategy") => list(any()),
        optional("tags") => list(tag()),
        optional("terminationHookEnabled") => boolean(),
        optional("triggerConfigurations") => list(trigger_config()),
        required("applicationName") => String.t() | atom(),
        required("deploymentGroupName") => String.t() | atom(),
        required("serviceRoleArn") => String.t() | atom()
      }
      
  """
  @type create_deployment_group_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      blue_instance_termination_option() :: %{
        "action" => list(any()),
        "terminationWaitTimeInMinutes" => integer()
      }
      
  """
  @type blue_instance_termination_option() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      related_deployments() :: %{
        "autoUpdateOutdatedInstancesDeploymentIds" => list(String.t() | atom()),
        "autoUpdateOutdatedInstancesRootDeploymentId" => String.t() | atom()
      }
      
  """
  @type related_deployments() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_group_does_not_exist_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type deployment_group_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      time_range() :: %{
        "end" => non_neg_integer(),
        "start" => non_neg_integer()
      }
      
  """
  @type time_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      iam_user_arn_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type iam_user_arn_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      diagnostics() :: %{
        "errorCode" => list(any()),
        "logTail" => String.t() | atom(),
        "message" => String.t() | atom(),
        "scriptName" => String.t() | atom()
      }
      
  """
  @type diagnostics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      register_on_premises_instance_input() :: %{
        optional("iamSessionArn") => String.t() | atom(),
        optional("iamUserArn") => String.t() | atom(),
        required("instanceName") => String.t() | atom()
      }
      
  """
  @type register_on_premises_instance_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      ec2_tag_set() :: %{
        "ec2TagSetList" => list(list(ec2_tag_filter())())
      }
      
  """
  @type ec2_tag_set() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      revision_info() :: %{
        "genericRevisionInfo" => generic_revision_info(),
        "revisionLocation" => revision_location()
      }
      
  """
  @type revision_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_application_input() :: %{
        required("applicationName") => String.t() | atom()
      }
      
  """
  @type delete_application_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      lifecycle_hook_limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type lifecycle_hook_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_input() :: %{
        required("ResourceArn") => String.t() | atom(),
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_deployment_config_name_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_deployment_config_name_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_application_revisions_output() :: %{
        "applicationName" => String.t() | atom(),
        "errorMessage" => String.t() | atom(),
        "revisions" => list(revision_info())
      }
      
  """
  @type batch_get_application_revisions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_sort_by_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_sort_by_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_deployment_groups_input() :: %{
        optional("nextToken") => String.t() | atom(),
        required("applicationName") => String.t() | atom()
      }
      
  """
  @type list_deployment_groups_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_applications_output() :: %{
        "applicationsInfo" => list(application_info())
      }
      
  """
  @type batch_get_applications_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_deployment_input() :: %{
        optional("autoRollbackEnabled") => boolean(),
        required("deploymentId") => String.t() | atom()
      }
      
  """
  @type stop_deployment_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      traffic_routing_config() :: %{
        "timeBasedCanary" => time_based_canary(),
        "timeBasedLinear" => time_based_linear(),
        "type" => list(any())
      }
      
  """
  @type traffic_routing_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      role_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type role_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      generic_revision_info() :: %{
        "deploymentGroups" => list(String.t() | atom()),
        "description" => String.t() | atom(),
        "firstUsedTime" => non_neg_integer(),
        "lastUsedTime" => non_neg_integer(),
        "registerTime" => non_neg_integer()
      }
      
  """
  @type generic_revision_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_deployment_instances_output() :: %{
        "errorMessage" => String.t() | atom(),
        "instancesSummary" => list(instance_summary())
      }
      
  """
  @type batch_get_deployment_instances_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_group() :: %{
        "hook" => String.t() | atom(),
        "name" => String.t() | atom(),
        "terminationHook" => String.t() | atom()
      }
      
  """
  @type auto_scaling_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_input() :: %{
        optional("NextToken") => String.t() | atom(),
        required("ResourceArn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      add_tags_to_on_premises_instances_input() :: %{
        required("instanceNames") => list(String.t() | atom()),
        required("tags") => list(tag())
      }
      
  """
  @type add_tags_to_on_premises_instances_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_validation_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type resource_validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_deployed_state_filter_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_deployed_state_filter_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_deployment_group_output() :: %{
        "deploymentGroupInfo" => deployment_group_info()
      }
      
  """
  @type get_deployment_group_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_output() :: %{}
      
  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:
      
      revision_does_not_exist_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type revision_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      load_balancer_info() :: %{
        "elbInfoList" => list(e_lb_info()),
        "targetGroupInfoList" => list(target_group_info()),
        "targetGroupPairInfoList" => list(target_group_pair_info())
      }
      
  """
  @type load_balancer_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      e_c_s_service_mapping_limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type e_c_s_service_mapping_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_iam_user_arn_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_iam_user_arn_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deregister_on_premises_instance_input() :: %{
        required("instanceName") => String.t() | atom()
      }
      
  """
  @type deregister_on_premises_instance_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_summary() :: %{
        "deploymentId" => String.t() | atom(),
        "instanceId" => String.t() | atom(),
        "instanceType" => list(any()),
        "lastUpdatedAt" => non_neg_integer(),
        "lifecycleEvents" => list(lifecycle_event()),
        "status" => list(any())
      }
      
  """
  @type instance_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_application_name_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_application_name_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      bucket_name_filter_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type bucket_name_filter_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_already_completed_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type deployment_already_completed_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_instance_type_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_instance_type_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rollback_info() :: %{
        "rollbackDeploymentId" => String.t() | atom(),
        "rollbackMessage" => String.t() | atom(),
        "rollbackTriggeringDeploymentId" => String.t() | atom()
      }
      
  """
  @type rollback_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_application_input() :: %{
        optional("applicationName") => String.t() | atom(),
        optional("newApplicationName") => String.t() | atom()
      }
      
  """
  @type update_application_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type deployment_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      lifecycle_event() :: %{
        "diagnostics" => diagnostics(),
        "endTime" => non_neg_integer(),
        "lifecycleEventName" => String.t() | atom(),
        "startTime" => non_neg_integer(),
        "status" => list(any())
      }
      
  """
  @type lifecycle_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_config_info() :: %{
        "computePlatform" => list(any()),
        "createTime" => non_neg_integer(),
        "deploymentConfigId" => String.t() | atom(),
        "deploymentConfigName" => String.t() | atom(),
        "minimumHealthyHosts" => minimum_healthy_hosts(),
        "trafficRoutingConfig" => traffic_routing_config(),
        "zonalConfig" => zonal_config()
      }
      
  """
  @type deployment_config_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_blue_green_deployment_configuration_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_blue_green_deployment_configuration_exception() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      delete_deployment_config_input() :: %{
        required("deploymentConfigName") => String.t() | atom()
      }
      
  """
  @type delete_deployment_config_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_target_filter_name_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_target_filter_name_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_deployments_output() :: %{
        "deployments" => list(String.t() | atom()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_deployments_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      error_information() :: %{
        "code" => list(any()),
        "message" => String.t() | atom()
      }
      
  """
  @type error_information() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_set_list_limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type tag_set_list_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_deployment_output() :: %{
        "deploymentId" => String.t() | atom()
      }
      
  """
  @type create_deployment_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_ready_option() :: %{
        "actionOnTimeout" => list(any()),
        "waitTimeInMinutes" => integer()
      }
      
  """
  @type deployment_ready_option() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_deployments_input() :: %{
        optional("applicationName") => String.t() | atom(),
        optional("createTimeRange") => time_range(),
        optional("deploymentGroupName") => String.t() | atom(),
        optional("externalId") => String.t() | atom(),
        optional("includeOnlyStatuses") => list(list(any())()),
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type list_deployments_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_deployment_configs_input() :: %{
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type list_deployment_configs_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_application_revision_output() :: %{
        "applicationName" => String.t() | atom(),
        "revision" => revision_location(),
        "revisionInfo" => generic_revision_info()
      }
      
  """
  @type get_application_revision_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_info() :: %{
        "deregisterTime" => non_neg_integer(),
        "iamSessionArn" => String.t() | atom(),
        "iamUserArn" => String.t() | atom(),
        "instanceArn" => String.t() | atom(),
        "instanceName" => String.t() | atom(),
        "registerTime" => non_neg_integer(),
        "tags" => list(tag())
      }
      
  """
  @type instance_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_group_limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type deployment_group_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      lambda_target() :: %{
        "deploymentId" => String.t() | atom(),
        "lambdaFunctionInfo" => lambda_function_info(),
        "lastUpdatedAt" => non_neg_integer(),
        "lifecycleEvents" => list(lifecycle_event()),
        "status" => list(any()),
        "targetArn" => String.t() | atom(),
        "targetId" => String.t() | atom()
      }
      
  """
  @type lambda_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_filter() :: %{
        "Key" => String.t() | atom(),
        "Type" => list(any()),
        "Value" => String.t() | atom()
      }
      
  """
  @type tag_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_application_input() :: %{
        required("applicationName") => String.t() | atom()
      }
      
  """
  @type get_application_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_deployment_instance_type_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_deployment_instance_type_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      operation_not_supported_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type operation_not_supported_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_deployment_target_output() :: %{
        "deploymentTarget" => deployment_target()
      }
      
  """
  @type get_deployment_target_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      multiple_iam_arns_provided_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type multiple_iam_arns_provided_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      time_based_canary() :: %{
        "canaryInterval" => integer(),
        "canaryPercentage" => integer()
      }
      
  """
  @type time_based_canary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_deployment_output() :: %{
        "status" => list(any()),
        "statusMessage" => String.t() | atom()
      }
      
  """
  @type stop_deployment_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_git_hub_account_token_output() :: %{
        "tokenName" => String.t() | atom()
      }
      
  """
  @type delete_git_hub_account_token_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      remove_tags_from_on_premises_instances_input() :: %{
        required("instanceNames") => list(String.t() | atom()),
        required("tags") => list(tag())
      }
      
  """
  @type remove_tags_from_on_premises_instances_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_target_instances_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_target_instances_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_compute_platform_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_compute_platform_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_config_does_not_exist_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type deployment_config_does_not_exist_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_ignore_application_stop_failures_value_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_ignore_application_stop_failures_value_exception() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      invalid_tag_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_tag_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_tag_filter_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_tag_filter_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_target_group_pair_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_target_group_pair_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      alarms_limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type alarms_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_git_hub_account_token_names_output() :: %{
        "nextToken" => String.t() | atom(),
        "tokenNameList" => list(String.t() | atom())
      }
      
  """
  @type list_git_hub_account_token_names_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_lifecycle_event_hook_execution_status_input() :: %{
        optional("deploymentId") => String.t() | atom(),
        optional("lifecycleEventHookExecutionId") => String.t() | atom(),
        optional("status") => list(any())
      }
      
  """
  @type put_lifecycle_event_hook_execution_status_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_name_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type instance_name_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      trigger_config() :: %{
        "triggerEvents" => list(list(any())()),
        "triggerName" => String.t() | atom(),
        "triggerTargetArn" => String.t() | atom()
      }
      
  """
  @type trigger_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_deployment_id_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_deployment_id_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      instance_not_registered_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type instance_not_registered_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      alarm_configuration() :: %{
        "alarms" => list(alarm()),
        "enabled" => boolean(),
        "ignorePollAlarmFailure" => boolean()
      }
      
  """
  @type alarm_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_ec2_tag_combination_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_ec2_tag_combination_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_ec2_tag_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_ec2_tag_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_auto_rollback_config_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_auto_rollback_config_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_lifecycle_event_hook_execution_id_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_lifecycle_event_hook_execution_id_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deployment_group_name_required_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type deployment_group_name_required_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      invalid_lifecycle_event_hook_execution_status_exception() :: %{
        "message" => String.t() | atom()
      }
      
  """
  @type invalid_lifecycle_event_hook_execution_status_exception() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:
      
      delete_resources_by_external_id_input() :: %{
        optional("externalId") => String.t() | atom()
      }
      
  """
  @type delete_resources_by_external_id_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target_group_info() :: %{
        "name" => String.t() | atom()
      }
      
  """
  @type target_group_info() :: %{(String.t() | atom()) => any()}

  @type add_tags_to_on_premises_instances_errors() ::
          instance_not_registered_exception()
          | instance_name_required_exception()
          | invalid_tag_exception()
          | invalid_instance_name_exception()
          | tag_limit_exceeded_exception()
          | tag_required_exception()
          | instance_limit_exceeded_exception()

  @type batch_get_application_revisions_errors() ::
          invalid_application_name_exception()
          | invalid_revision_exception()
          | application_name_required_exception()
          | revision_required_exception()
          | application_does_not_exist_exception()
          | batch_limit_exceeded_exception()

  @type batch_get_applications_errors() ::
          invalid_application_name_exception()
          | application_name_required_exception()
          | application_does_not_exist_exception()
          | batch_limit_exceeded_exception()

  @type batch_get_deployment_groups_errors() ::
          deployment_group_name_required_exception()
          | deployment_config_does_not_exist_exception()
          | invalid_application_name_exception()
          | invalid_deployment_group_name_exception()
          | application_name_required_exception()
          | application_does_not_exist_exception()
          | batch_limit_exceeded_exception()

  @type batch_get_deployment_instances_errors() ::
          invalid_deployment_id_exception()
          | invalid_compute_platform_exception()
          | invalid_instance_name_exception()
          | deployment_does_not_exist_exception()
          | instance_id_required_exception()
          | deployment_id_required_exception()
          | batch_limit_exceeded_exception()

  @type batch_get_deployment_targets_errors() ::
          invalid_deployment_id_exception()
          | deployment_target_does_not_exist_exception()
          | deployment_does_not_exist_exception()
          | deployment_target_list_size_exceeded_exception()
          | deployment_not_started_exception()
          | deployment_id_required_exception()
          | instance_does_not_exist_exception()
          | invalid_deployment_target_id_exception()
          | deployment_target_id_required_exception()

  @type batch_get_deployments_errors() ::
          invalid_deployment_id_exception()
          | deployment_id_required_exception()
          | batch_limit_exceeded_exception()

  @type batch_get_on_premises_instances_errors() ::
          instance_name_required_exception()
          | invalid_instance_name_exception()
          | batch_limit_exceeded_exception()

  @type continue_deployment_errors() ::
          invalid_deployment_id_exception()
          | deployment_already_completed_exception()
          | invalid_deployment_wait_type_exception()
          | deployment_does_not_exist_exception()
          | deployment_id_required_exception()
          | invalid_deployment_status_exception()
          | deployment_is_not_in_ready_state_exception()
          | unsupported_action_for_deployment_type_exception()

  @type create_application_errors() ::
          invalid_compute_platform_exception()
          | invalid_application_name_exception()
          | application_already_exists_exception()
          | application_name_required_exception()
          | invalid_tags_to_add_exception()
          | application_limit_exceeded_exception()

  @type create_deployment_errors() ::
          deployment_group_name_required_exception()
          | invalid_auto_rollback_config_exception()
          | alarms_limit_exceeded_exception()
          | invalid_ignore_application_stop_failures_value_exception()
          | deployment_config_does_not_exist_exception()
          | invalid_target_instances_exception()
          | deployment_limit_exceeded_exception()
          | invalid_application_name_exception()
          | throttling_exception()
          | revision_does_not_exist_exception()
          | invalid_deployment_config_name_exception()
          | deployment_group_does_not_exist_exception()
          | invalid_traffic_routing_configuration_exception()
          | invalid_role_exception()
          | invalid_deployment_group_name_exception()
          | invalid_git_hub_account_token_exception()
          | invalid_auto_scaling_group_exception()
          | invalid_alarm_config_exception()
          | description_too_long_exception()
          | invalid_revision_exception()
          | invalid_file_exists_behavior_exception()
          | application_name_required_exception()
          | invalid_update_outdated_instances_only_value_exception()
          | revision_required_exception()
          | application_does_not_exist_exception()
          | invalid_load_balancer_info_exception()

  @type create_deployment_config_errors() ::
          invalid_compute_platform_exception()
          | invalid_deployment_config_name_exception()
          | invalid_traffic_routing_configuration_exception()
          | invalid_zonal_deployment_configuration_exception()
          | deployment_config_already_exists_exception()
          | invalid_minimum_healthy_host_value_exception()
          | deployment_config_name_required_exception()
          | deployment_config_limit_exceeded_exception()

  @type create_deployment_group_errors() ::
          deployment_group_name_required_exception()
          | invalid_auto_rollback_config_exception()
          | invalid_ec2_tag_exception()
          | invalid_ec2_tag_combination_exception()
          | alarms_limit_exceeded_exception()
          | invalid_target_group_pair_exception()
          | invalid_tag_exception()
          | deployment_config_does_not_exist_exception()
          | deployment_group_limit_exceeded_exception()
          | tag_set_list_limit_exceeded_exception()
          | invalid_blue_green_deployment_configuration_exception()
          | invalid_application_name_exception()
          | throttling_exception()
          | e_c_s_service_mapping_limit_exceeded_exception()
          | role_required_exception()
          | invalid_deployment_config_name_exception()
          | lifecycle_hook_limit_exceeded_exception()
          | invalid_traffic_routing_configuration_exception()
          | trigger_targets_limit_exceeded_exception()
          | invalid_role_exception()
          | deployment_group_already_exists_exception()
          | invalid_deployment_group_name_exception()
          | invalid_input_exception()
          | invalid_on_premises_tag_combination_exception()
          | invalid_auto_scaling_group_exception()
          | invalid_alarm_config_exception()
          | invalid_e_c_s_service_exception()
          | application_name_required_exception()
          | invalid_tags_to_add_exception()
          | invalid_deployment_style_exception()
          | invalid_trigger_config_exception()
          | application_does_not_exist_exception()
          | invalid_load_balancer_info_exception()

  @type delete_application_errors() ::
          invalid_application_name_exception()
          | invalid_role_exception()
          | application_name_required_exception()

  @type delete_deployment_config_errors() ::
          invalid_deployment_config_name_exception()
          | deployment_config_in_use_exception()
          | deployment_config_name_required_exception()
          | invalid_operation_exception()

  @type delete_deployment_group_errors() ::
          deployment_group_name_required_exception()
          | invalid_application_name_exception()
          | invalid_role_exception()
          | invalid_deployment_group_name_exception()
          | application_name_required_exception()

  @type delete_git_hub_account_token_errors() ::
          operation_not_supported_exception()
          | resource_validation_exception()
          | git_hub_account_token_name_required_exception()
          | invalid_git_hub_account_token_name_exception()
          | git_hub_account_token_does_not_exist_exception()

  @type deregister_on_premises_instance_errors() ::
          instance_name_required_exception() | invalid_instance_name_exception()

  @type get_application_errors() ::
          invalid_application_name_exception()
          | application_name_required_exception()
          | application_does_not_exist_exception()

  @type get_application_revision_errors() ::
          invalid_application_name_exception()
          | revision_does_not_exist_exception()
          | invalid_revision_exception()
          | application_name_required_exception()
          | revision_required_exception()
          | application_does_not_exist_exception()

  @type get_deployment_errors() ::
          invalid_deployment_id_exception()
          | deployment_does_not_exist_exception()
          | deployment_id_required_exception()

  @type get_deployment_config_errors() ::
          deployment_config_does_not_exist_exception()
          | invalid_compute_platform_exception()
          | invalid_deployment_config_name_exception()
          | deployment_config_name_required_exception()

  @type get_deployment_group_errors() ::
          deployment_group_name_required_exception()
          | deployment_config_does_not_exist_exception()
          | invalid_application_name_exception()
          | deployment_group_does_not_exist_exception()
          | invalid_deployment_group_name_exception()
          | application_name_required_exception()
          | application_does_not_exist_exception()

  @type get_deployment_instance_errors() ::
          invalid_deployment_id_exception()
          | invalid_compute_platform_exception()
          | invalid_instance_name_exception()
          | deployment_does_not_exist_exception()
          | instance_id_required_exception()
          | deployment_id_required_exception()
          | instance_does_not_exist_exception()

  @type get_deployment_target_errors() ::
          invalid_deployment_id_exception()
          | invalid_instance_name_exception()
          | deployment_target_does_not_exist_exception()
          | deployment_does_not_exist_exception()
          | deployment_not_started_exception()
          | deployment_id_required_exception()
          | invalid_deployment_target_id_exception()
          | deployment_target_id_required_exception()

  @type get_on_premises_instance_errors() ::
          instance_not_registered_exception()
          | instance_name_required_exception()
          | invalid_instance_name_exception()

  @type list_application_revisions_errors() ::
          bucket_name_filter_required_exception()
          | invalid_application_name_exception()
          | invalid_deployed_state_filter_exception()
          | invalid_sort_by_exception()
          | invalid_key_prefix_filter_exception()
          | invalid_next_token_exception()
          | application_name_required_exception()
          | invalid_bucket_name_filter_exception()
          | invalid_sort_order_exception()
          | application_does_not_exist_exception()

  @type list_applications_errors() :: invalid_next_token_exception()

  @type list_deployment_configs_errors() :: invalid_next_token_exception()

  @type list_deployment_groups_errors() ::
          invalid_application_name_exception()
          | invalid_next_token_exception()
          | application_name_required_exception()
          | application_does_not_exist_exception()

  @type list_deployment_instances_errors() ::
          invalid_deployment_id_exception()
          | invalid_compute_platform_exception()
          | invalid_deployment_instance_type_exception()
          | invalid_target_filter_name_exception()
          | invalid_instance_type_exception()
          | invalid_next_token_exception()
          | deployment_does_not_exist_exception()
          | deployment_not_started_exception()
          | deployment_id_required_exception()
          | invalid_instance_status_exception()

  @type list_deployment_targets_errors() ::
          invalid_deployment_id_exception()
          | invalid_deployment_instance_type_exception()
          | invalid_target_filter_name_exception()
          | invalid_instance_type_exception()
          | invalid_next_token_exception()
          | deployment_does_not_exist_exception()
          | deployment_not_started_exception()
          | deployment_id_required_exception()
          | invalid_instance_status_exception()

  @type list_deployments_errors() ::
          deployment_group_name_required_exception()
          | invalid_application_name_exception()
          | deployment_group_does_not_exist_exception()
          | invalid_deployment_group_name_exception()
          | invalid_input_exception()
          | invalid_external_id_exception()
          | invalid_next_token_exception()
          | invalid_time_range_exception()
          | application_name_required_exception()
          | invalid_deployment_status_exception()
          | application_does_not_exist_exception()

  @type list_git_hub_account_token_names_errors() ::
          operation_not_supported_exception()
          | resource_validation_exception()
          | invalid_next_token_exception()

  @type list_on_premises_instances_errors() ::
          invalid_tag_filter_exception()
          | invalid_next_token_exception()
          | invalid_registration_status_exception()

  @type list_tags_for_resource_errors() ::
          resource_arn_required_exception()
          | arn_not_supported_exception()
          | invalid_arn_exception()

  @type put_lifecycle_event_hook_execution_status_errors() ::
          invalid_lifecycle_event_hook_execution_status_exception()
          | invalid_lifecycle_event_hook_execution_id_exception()
          | invalid_deployment_id_exception()
          | deployment_does_not_exist_exception()
          | deployment_id_required_exception()
          | unsupported_action_for_deployment_type_exception()
          | lifecycle_event_already_completed_exception()

  @type register_application_revision_errors() ::
          invalid_application_name_exception()
          | description_too_long_exception()
          | invalid_revision_exception()
          | application_name_required_exception()
          | revision_required_exception()
          | application_does_not_exist_exception()

  @type register_on_premises_instance_errors() ::
          instance_name_required_exception()
          | multiple_iam_arns_provided_exception()
          | invalid_iam_user_arn_exception()
          | iam_user_arn_required_exception()
          | iam_arn_required_exception()
          | invalid_instance_name_exception()
          | iam_session_arn_already_registered_exception()
          | iam_user_arn_already_registered_exception()
          | invalid_iam_session_arn_exception()
          | instance_name_already_registered_exception()

  @type remove_tags_from_on_premises_instances_errors() ::
          instance_not_registered_exception()
          | instance_name_required_exception()
          | invalid_tag_exception()
          | invalid_instance_name_exception()
          | tag_limit_exceeded_exception()
          | tag_required_exception()
          | instance_limit_exceeded_exception()

  @type skip_wait_time_for_instance_termination_errors() ::
          invalid_deployment_id_exception()
          | deployment_already_completed_exception()
          | deployment_does_not_exist_exception()
          | deployment_not_started_exception()
          | deployment_id_required_exception()
          | unsupported_action_for_deployment_type_exception()

  @type stop_deployment_errors() ::
          invalid_deployment_id_exception()
          | deployment_already_completed_exception()
          | deployment_group_does_not_exist_exception()
          | deployment_does_not_exist_exception()
          | deployment_id_required_exception()
          | unsupported_action_for_deployment_type_exception()

  @type tag_resource_errors() ::
          deployment_config_does_not_exist_exception()
          | deployment_group_does_not_exist_exception()
          | resource_arn_required_exception()
          | arn_not_supported_exception()
          | invalid_arn_exception()
          | invalid_tags_to_add_exception()
          | tag_required_exception()
          | application_does_not_exist_exception()

  @type untag_resource_errors() ::
          deployment_config_does_not_exist_exception()
          | deployment_group_does_not_exist_exception()
          | resource_arn_required_exception()
          | arn_not_supported_exception()
          | invalid_arn_exception()
          | invalid_tags_to_add_exception()
          | tag_required_exception()
          | application_does_not_exist_exception()

  @type update_application_errors() ::
          invalid_application_name_exception()
          | application_already_exists_exception()
          | application_name_required_exception()
          | application_does_not_exist_exception()

  @type update_deployment_group_errors() ::
          deployment_group_name_required_exception()
          | invalid_auto_rollback_config_exception()
          | invalid_ec2_tag_exception()
          | invalid_ec2_tag_combination_exception()
          | alarms_limit_exceeded_exception()
          | invalid_target_group_pair_exception()
          | invalid_tag_exception()
          | deployment_config_does_not_exist_exception()
          | tag_set_list_limit_exceeded_exception()
          | invalid_blue_green_deployment_configuration_exception()
          | invalid_application_name_exception()
          | throttling_exception()
          | e_c_s_service_mapping_limit_exceeded_exception()
          | invalid_deployment_config_name_exception()
          | lifecycle_hook_limit_exceeded_exception()
          | deployment_group_does_not_exist_exception()
          | invalid_traffic_routing_configuration_exception()
          | trigger_targets_limit_exceeded_exception()
          | invalid_role_exception()
          | deployment_group_already_exists_exception()
          | invalid_deployment_group_name_exception()
          | invalid_input_exception()
          | invalid_on_premises_tag_combination_exception()
          | invalid_auto_scaling_group_exception()
          | invalid_alarm_config_exception()
          | invalid_e_c_s_service_exception()
          | application_name_required_exception()
          | invalid_deployment_style_exception()
          | invalid_trigger_config_exception()
          | application_does_not_exist_exception()
          | invalid_load_balancer_info_exception()

  def metadata do
    %{
      api_version: "2014-10-06",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "codedeploy",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "CodeDeploy",
      signature_version: "v4",
      signing_name: "codedeploy",
      target_prefix: "CodeDeploy_20141006"
    }
  end

  @doc """
  Adds tags to on-premises instances.
  """
  @spec add_tags_to_on_premises_instances(
          map(),
          add_tags_to_on_premises_instances_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_tags_to_on_premises_instances_errors()}
  def add_tags_to_on_premises_instances(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AddTagsToOnPremisesInstances", input, options)
  end

  @doc """
  Gets information about one or more application revisions.

  The maximum number of
  application revisions that can be returned is 25.
  """
  @spec batch_get_application_revisions(map(), batch_get_application_revisions_input(), list()) ::
          {:ok, batch_get_application_revisions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_application_revisions_errors()}
  def batch_get_application_revisions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchGetApplicationRevisions", input, options)
  end

  @doc """
  Gets information about one or more applications.

  The maximum number of applications
  that can be returned is 100.
  """
  @spec batch_get_applications(map(), batch_get_applications_input(), list()) ::
          {:ok, batch_get_applications_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_applications_errors()}
  def batch_get_applications(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchGetApplications", input, options)
  end

  @doc """
  Gets information about one or more deployment groups.
  """
  @spec batch_get_deployment_groups(map(), batch_get_deployment_groups_input(), list()) ::
          {:ok, batch_get_deployment_groups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_deployment_groups_errors()}
  def batch_get_deployment_groups(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchGetDeploymentGroups", input, options)
  end

  @doc """

  This method works, but is deprecated.

  Use `BatchGetDeploymentTargets`
  instead.

  Returns an array of one or more instances associated with a deployment. This
  method
  works with EC2/On-premises and Lambda compute platforms. The newer
  `BatchGetDeploymentTargets` works with all compute platforms. The maximum
  number of instances that can be returned is 25.
  """
  @spec batch_get_deployment_instances(map(), batch_get_deployment_instances_input(), list()) ::
          {:ok, batch_get_deployment_instances_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_deployment_instances_errors()}
  def batch_get_deployment_instances(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchGetDeploymentInstances", input, options)
  end

  @doc """
  Returns an array of one or more targets associated with a deployment.

  This method
  works with all compute types and should be used instead of the deprecated
  `BatchGetDeploymentInstances`. The maximum number of targets that can be
  returned is 25.

  The type of targets returned depends on the deployment's compute platform or
  deployment method:

    *

  **EC2/On-premises**: Information about Amazon EC2 instance targets.

    *

  **Lambda**: Information about
  Lambda functions targets.

    *

  **Amazon ECS**: Information about Amazon ECS service targets.

    *

  **CloudFormation**: Information about
  targets of blue/green deployments initiated by a CloudFormation stack
  update.
  """
  @spec batch_get_deployment_targets(map(), batch_get_deployment_targets_input(), list()) ::
          {:ok, batch_get_deployment_targets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_deployment_targets_errors()}
  def batch_get_deployment_targets(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchGetDeploymentTargets", input, options)
  end

  @doc """
  Gets information about one or more deployments.

  The maximum number of deployments that
  can be returned is 25.
  """
  @spec batch_get_deployments(map(), batch_get_deployments_input(), list()) ::
          {:ok, batch_get_deployments_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_deployments_errors()}
  def batch_get_deployments(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchGetDeployments", input, options)
  end

  @doc """
  Gets information about one or more on-premises instances.

  The maximum number of
  on-premises instances that can be returned is 25.
  """
  @spec batch_get_on_premises_instances(map(), batch_get_on_premises_instances_input(), list()) ::
          {:ok, batch_get_on_premises_instances_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_on_premises_instances_errors()}
  def batch_get_on_premises_instances(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchGetOnPremisesInstances", input, options)
  end

  @doc """
  For a blue/green deployment, starts the process of rerouting traffic from
  instances in
  the original environment to instances in the replacement environment without
  waiting for
  a specified wait time to elapse.

  (Traffic rerouting, which is achieved by registering
  instances in the replacement environment with the load balancer, can start as
  soon as
  all instances have a status of Ready.)
  """
  @spec continue_deployment(map(), continue_deployment_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, continue_deployment_errors()}
  def continue_deployment(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ContinueDeployment", input, options)
  end

  @doc """
  Creates an application.
  """
  @spec create_application(map(), create_application_input(), list()) ::
          {:ok, create_application_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_application_errors()}
  def create_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateApplication", input, options)
  end

  @doc """
  Deploys an application revision through the specified deployment group.
  """
  @spec create_deployment(map(), create_deployment_input(), list()) ::
          {:ok, create_deployment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_deployment_errors()}
  def create_deployment(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDeployment", input, options)
  end

  @doc """
  Creates a deployment configuration.
  """
  @spec create_deployment_config(map(), create_deployment_config_input(), list()) ::
          {:ok, create_deployment_config_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_deployment_config_errors()}
  def create_deployment_config(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDeploymentConfig", input, options)
  end

  @doc """
  Creates a deployment group to which application revisions are deployed.
  """
  @spec create_deployment_group(map(), create_deployment_group_input(), list()) ::
          {:ok, create_deployment_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_deployment_group_errors()}
  def create_deployment_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDeploymentGroup", input, options)
  end

  @doc """
  Deletes an application.
  """
  @spec delete_application(map(), delete_application_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_application_errors()}
  def delete_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteApplication", input, options)
  end

  @doc """
  Deletes a deployment configuration.

  A deployment configuration cannot be deleted if it is currently in use.
  Predefined
  configurations cannot be deleted.
  """
  @spec delete_deployment_config(map(), delete_deployment_config_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_deployment_config_errors()}
  def delete_deployment_config(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDeploymentConfig", input, options)
  end

  @doc """
  Deletes a deployment group.
  """
  @spec delete_deployment_group(map(), delete_deployment_group_input(), list()) ::
          {:ok, delete_deployment_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_deployment_group_errors()}
  def delete_deployment_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDeploymentGroup", input, options)
  end

  @doc """
  Deletes a GitHub account connection.
  """
  @spec delete_git_hub_account_token(map(), delete_git_hub_account_token_input(), list()) ::
          {:ok, delete_git_hub_account_token_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_git_hub_account_token_errors()}
  def delete_git_hub_account_token(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteGitHubAccountToken", input, options)
  end

  @doc """
  Deletes resources linked to an external ID.

  This action only applies if you have
  configured blue/green deployments through CloudFormation.

  It is not necessary to call this action directly. CloudFormation calls it
  on your behalf when it needs to delete stack resources. This action is offered
  publicly in case you need to delete resources to comply with General Data
  Protection
  Regulation (GDPR) requirements.
  """
  @spec delete_resources_by_external_id(map(), delete_resources_by_external_id_input(), list()) ::
          {:ok, delete_resources_by_external_id_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def delete_resources_by_external_id(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteResourcesByExternalId", input, options)
  end

  @doc """
  Deregisters an on-premises instance.
  """
  @spec deregister_on_premises_instance(map(), deregister_on_premises_instance_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_on_premises_instance_errors()}
  def deregister_on_premises_instance(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeregisterOnPremisesInstance", input, options)
  end

  @doc """
  Gets information about an application.
  """
  @spec get_application(map(), get_application_input(), list()) ::
          {:ok, get_application_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_application_errors()}
  def get_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetApplication", input, options)
  end

  @doc """
  Gets information about an application revision.
  """
  @spec get_application_revision(map(), get_application_revision_input(), list()) ::
          {:ok, get_application_revision_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_application_revision_errors()}
  def get_application_revision(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetApplicationRevision", input, options)
  end

  @doc """
  Gets information about a deployment.

  The `content` property of the `appSpecContent` object in
  the returned revision is always null. Use `GetApplicationRevision` and
  the `sha256` property of the returned `appSpecContent` object
  to get the content of the deployment’s AppSpec file.
  """
  @spec get_deployment(map(), get_deployment_input(), list()) ::
          {:ok, get_deployment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_deployment_errors()}
  def get_deployment(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDeployment", input, options)
  end

  @doc """
  Gets information about a deployment configuration.
  """
  @spec get_deployment_config(map(), get_deployment_config_input(), list()) ::
          {:ok, get_deployment_config_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_deployment_config_errors()}
  def get_deployment_config(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDeploymentConfig", input, options)
  end

  @doc """
  Gets information about a deployment group.
  """
  @spec get_deployment_group(map(), get_deployment_group_input(), list()) ::
          {:ok, get_deployment_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_deployment_group_errors()}
  def get_deployment_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDeploymentGroup", input, options)
  end

  @doc """
  Gets information about an instance as part of a deployment.
  """
  @spec get_deployment_instance(map(), get_deployment_instance_input(), list()) ::
          {:ok, get_deployment_instance_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_deployment_instance_errors()}
  def get_deployment_instance(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDeploymentInstance", input, options)
  end

  @doc """
  Returns information about a deployment target.
  """
  @spec get_deployment_target(map(), get_deployment_target_input(), list()) ::
          {:ok, get_deployment_target_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_deployment_target_errors()}
  def get_deployment_target(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetDeploymentTarget", input, options)
  end

  @doc """
  Gets information about an on-premises instance.
  """
  @spec get_on_premises_instance(map(), get_on_premises_instance_input(), list()) ::
          {:ok, get_on_premises_instance_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_on_premises_instance_errors()}
  def get_on_premises_instance(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetOnPremisesInstance", input, options)
  end

  @doc """
  Lists information about revisions for an application.
  """
  @spec list_application_revisions(map(), list_application_revisions_input(), list()) ::
          {:ok, list_application_revisions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_application_revisions_errors()}
  def list_application_revisions(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListApplicationRevisions", input, options)
  end

  @doc """
  Lists the applications registered with the user or Amazon Web Services account.
  """
  @spec list_applications(map(), list_applications_input(), list()) ::
          {:ok, list_applications_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_applications_errors()}
  def list_applications(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListApplications", input, options)
  end

  @doc """
  Lists the deployment configurations with the user or Amazon Web Services
  account.
  """
  @spec list_deployment_configs(map(), list_deployment_configs_input(), list()) ::
          {:ok, list_deployment_configs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_deployment_configs_errors()}
  def list_deployment_configs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDeploymentConfigs", input, options)
  end

  @doc """
  Lists the deployment groups for an application registered with the Amazon Web
  Services
  user or Amazon Web Services account.
  """
  @spec list_deployment_groups(map(), list_deployment_groups_input(), list()) ::
          {:ok, list_deployment_groups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_deployment_groups_errors()}
  def list_deployment_groups(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDeploymentGroups", input, options)
  end

  @doc """

  The newer `BatchGetDeploymentTargets` should be used instead because
  it works with all compute types.

  `ListDeploymentInstances` throws an
  exception if it is used with a compute platform other than EC2/On-premises or
  Lambda.

  Lists the instance for a deployment associated with the user or Amazon Web
  Services account.
  """
  @spec list_deployment_instances(map(), list_deployment_instances_input(), list()) ::
          {:ok, list_deployment_instances_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_deployment_instances_errors()}
  def list_deployment_instances(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDeploymentInstances", input, options)
  end

  @doc """
  Returns an array of target IDs that are associated a deployment.
  """
  @spec list_deployment_targets(map(), list_deployment_targets_input(), list()) ::
          {:ok, list_deployment_targets_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_deployment_targets_errors()}
  def list_deployment_targets(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDeploymentTargets", input, options)
  end

  @doc """
  Lists the deployments in a deployment group for an application registered with
  the
  user or Amazon Web Services account.
  """
  @spec list_deployments(map(), list_deployments_input(), list()) ::
          {:ok, list_deployments_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_deployments_errors()}
  def list_deployments(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDeployments", input, options)
  end

  @doc """
  Lists the names of stored connections to GitHub accounts.
  """
  @spec list_git_hub_account_token_names(map(), list_git_hub_account_token_names_input(), list()) ::
          {:ok, list_git_hub_account_token_names_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_git_hub_account_token_names_errors()}
  def list_git_hub_account_token_names(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListGitHubAccountTokenNames", input, options)
  end

  @doc """
  Gets a list of names for one or more on-premises instances.

  Unless otherwise specified, both registered and deregistered on-premises
  instance
  names are listed. To list only registered or deregistered on-premises instance
  names,
  use the registration status parameter.
  """
  @spec list_on_premises_instances(map(), list_on_premises_instances_input(), list()) ::
          {:ok, list_on_premises_instances_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_on_premises_instances_errors()}
  def list_on_premises_instances(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListOnPremisesInstances", input, options)
  end

  @doc """
  Returns a list of tags for the resource identified by a specified Amazon
  Resource
  Name (ARN).

  Tags are used to organize and categorize your CodeDeploy resources.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_input(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Sets the result of a Lambda validation function.

  The function validates
  lifecycle hooks during a deployment that uses the Lambda or Amazon ECS compute
  platform. For Lambda deployments, the available
  lifecycle hooks are `BeforeAllowTraffic` and `AfterAllowTraffic`.
  For Amazon ECS deployments, the available lifecycle hooks are
  `BeforeInstall`, `AfterInstall`,
  `AfterAllowTestTraffic`, `BeforeAllowTraffic`, and
  `AfterAllowTraffic`. Lambda validation functions return
  `Succeeded` or `Failed`. For more information, see [AppSpec 'hooks' Section for an Lambda Deployment
  ](https://docs.aws.amazon.com/codedeploy/latest/userguide/reference-appspec-file-structure-hooks.html#appspec-hooks-lambda)
  and
  [AppSpec 'hooks' Section for an Amazon ECS Deployment](https://docs.aws.amazon.com/codedeploy/latest/userguide/reference-appspec-file-structure-hooks.html#appspec-hooks-ecs).
  """
  @spec put_lifecycle_event_hook_execution_status(
          map(),
          put_lifecycle_event_hook_execution_status_input(),
          list()
        ) ::
          {:ok, put_lifecycle_event_hook_execution_status_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_lifecycle_event_hook_execution_status_errors()}
  def put_lifecycle_event_hook_execution_status(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutLifecycleEventHookExecutionStatus", input, options)
  end

  @doc """
  Registers with CodeDeploy a revision for the specified application.
  """
  @spec register_application_revision(map(), register_application_revision_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_application_revision_errors()}
  def register_application_revision(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RegisterApplicationRevision", input, options)
  end

  @doc """
  Registers an on-premises instance.

  Only one IAM ARN (an IAM session ARN or IAM user ARN) is supported in the
  request. You cannot use both.
  """
  @spec register_on_premises_instance(map(), register_on_premises_instance_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_on_premises_instance_errors()}
  def register_on_premises_instance(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RegisterOnPremisesInstance", input, options)
  end

  @doc """
  Removes one or more tags from one or more on-premises instances.
  """
  @spec remove_tags_from_on_premises_instances(
          map(),
          remove_tags_from_on_premises_instances_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_tags_from_on_premises_instances_errors()}
  def remove_tags_from_on_premises_instances(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "RemoveTagsFromOnPremisesInstances", input, options)
  end

  @doc """
  In a blue/green deployment, overrides any specified wait time and starts
  terminating
  instances immediately after the traffic routing is complete.
  """
  @spec skip_wait_time_for_instance_termination(
          map(),
          skip_wait_time_for_instance_termination_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, skip_wait_time_for_instance_termination_errors()}
  def skip_wait_time_for_instance_termination(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SkipWaitTimeForInstanceTermination", input, options)
  end

  @doc """
  Attempts to stop an ongoing deployment.
  """
  @spec stop_deployment(map(), stop_deployment_input(), list()) ::
          {:ok, stop_deployment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_deployment_errors()}
  def stop_deployment(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StopDeployment", input, options)
  end

  @doc """
  Associates the list of tags in the input `Tags` parameter with the
  resource identified by the `ResourceArn` input parameter.
  """
  @spec tag_resource(map(), tag_resource_input(), list()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Disassociates a resource from a list of tags.

  The resource is identified by the
  `ResourceArn` input parameter. The tags are identified by the list of
  keys in the `TagKeys` input parameter.
  """
  @spec untag_resource(map(), untag_resource_input(), list()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Changes the name of an application.
  """
  @spec update_application(map(), update_application_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_application_errors()}
  def update_application(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateApplication", input, options)
  end

  @doc """
  Changes information about a deployment group.
  """
  @spec update_deployment_group(map(), update_deployment_group_input(), list()) ::
          {:ok, update_deployment_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_deployment_group_errors()}
  def update_deployment_group(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDeploymentGroup", input, options)
  end
end
