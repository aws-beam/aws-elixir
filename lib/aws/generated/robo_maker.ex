# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RoboMaker do
  @moduledoc """
  This section provides documentation for the AWS RoboMaker API operations.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_deployment_jobs_response() :: %{
        "deploymentJobs" => list(deployment_job()()),
        "nextToken" => String.t()
      }

  """
  @type list_deployment_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_deployment_job_request() :: %{
        required("job") => String.t()
      }

  """
  @type describe_deployment_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deployment_application_config() :: %{
        "application" => String.t(),
        "applicationVersion" => String.t(),
        "launchConfig" => deployment_launch_config()
      }

  """
  @type deployment_application_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_deployment_job_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "deploymentApplicationConfigs" => list(deployment_application_config()()),
        "deploymentConfig" => deployment_config(),
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "fleet" => String.t(),
        "robotDeploymentSummary" => list(robot_deployment()()),
        "status" => list(any()),
        "tags" => map()
      }

  """
  @type describe_deployment_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_simulation_applications_response() :: %{
        "nextToken" => String.t(),
        "simulationApplicationSummaries" => list(simulation_application_summary()())
      }

  """
  @type list_simulation_applications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_world_export_jobs_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_world_export_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_world_generation_job_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("tags") => map(),
        optional("worldTags") => map(),
        required("template") => String.t(),
        required("worldCount") => world_count()
      }

  """
  @type create_world_generation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      robot_software_suite() :: %{
        "name" => list(any()),
        "version" => list(any())
      }

  """
  @type robot_software_suite() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_simulation_job_batch_request() :: %{
        required("batch") => String.t()
      }

  """
  @type describe_simulation_job_batch_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_fleet_request() :: %{
        required("fleet") => String.t()
      }

  """
  @type delete_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_simulation_application_response() :: %{
        "arn" => String.t(),
        "environment" => environment(),
        "imageDigest" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "renderingEngine" => rendering_engine(),
        "revisionId" => String.t(),
        "robotSoftwareSuite" => robot_software_suite(),
        "simulationSoftwareSuite" => simulation_software_suite(),
        "sources" => list(source()()),
        "tags" => map(),
        "version" => String.t()
      }

  """
  @type describe_simulation_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_simulation_job_batch_response() :: %{
        "arn" => String.t(),
        "batchPolicy" => batch_policy(),
        "clientRequestToken" => String.t(),
        "createdAt" => non_neg_integer(),
        "createdRequests" => list(simulation_job_summary()()),
        "failedRequests" => list(failed_create_simulation_job_request()()),
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "pendingRequests" => list(simulation_job_request()()),
        "status" => list(any()),
        "tags" => map()
      }

  """
  @type start_simulation_job_batch_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      create_simulation_application_request() :: %{
        optional("environment") => environment(),
        optional("renderingEngine") => rendering_engine(),
        optional("sources") => list(source_config()()),
        optional("tags") => map(),
        required("name") => String.t(),
        required("robotSoftwareSuite") => robot_software_suite(),
        required("simulationSoftwareSuite") => simulation_software_suite()
      }

  """
  @type create_simulation_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_robot_response() :: %{}

  """
  @type delete_robot_response() :: %{}

  @typedoc """

  ## Example:

      robot() :: %{
        "architecture" => list(any()),
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "fleetArn" => String.t(),
        "greenGrassGroupId" => String.t(),
        "lastDeploymentJob" => String.t(),
        "lastDeploymentTime" => non_neg_integer(),
        "name" => String.t(),
        "status" => list(any())
      }

  """
  @type robot() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_deployment_job_response() :: %{}

  """
  @type cancel_deployment_job_response() :: %{}

  @typedoc """

  ## Example:

      world_generation_job_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "failedWorldCount" => integer(),
        "status" => list(any()),
        "succeededWorldCount" => integer(),
        "template" => String.t(),
        "worldCount" => world_count()
      }

  """
  @type world_generation_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_fleet_request() :: %{
        optional("tags") => map(),
        required("name") => String.t()
      }

  """
  @type create_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      compute_response() :: %{
        "computeType" => list(any()),
        "gpuUnitLimit" => integer(),
        "simulationUnitLimit" => integer()
      }

  """
  @type compute_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_world_request() :: %{
        required("world") => String.t()
      }

  """
  @type describe_world_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_deployment_job_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "deploymentApplicationConfigs" => list(deployment_application_config()()),
        "deploymentConfig" => deployment_config(),
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "fleet" => String.t(),
        "status" => list(any()),
        "tags" => map()
      }

  """
  @type create_deployment_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_world_template_request() :: %{
        optional("name") => String.t(),
        optional("templateBody") => String.t(),
        optional("templateLocation") => template_location(),
        required("template") => String.t()
      }

  """
  @type update_world_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deployment_config() :: %{
        "concurrentDeploymentPercentage" => integer(),
        "downloadConditionFile" => s3_object(),
        "failureThresholdPercentage" => integer(),
        "robotDeploymentTimeoutInSeconds" => float()
      }

  """
  @type deployment_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      compute() :: %{
        "computeType" => list(any()),
        "gpuUnitLimit" => integer(),
        "simulationUnitLimit" => integer()
      }

  """
  @type compute() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_fleet_response() :: %{}

  """
  @type delete_fleet_response() :: %{}

  @typedoc """

  ## Example:

      network_interface() :: %{
        "networkInterfaceId" => String.t(),
        "privateIpAddress" => String.t(),
        "publicIpAddress" => String.t()
      }

  """
  @type network_interface() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_robot_application_request() :: %{
        optional("currentRevisionId") => String.t(),
        optional("environment") => environment(),
        optional("sources") => list(source_config()()),
        required("application") => String.t(),
        required("robotSoftwareSuite") => robot_software_suite()
      }

  """
  @type update_robot_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      simulation_job_request() :: %{
        "compute" => compute(),
        "dataSources" => list(data_source_config()()),
        "failureBehavior" => list(any()),
        "iamRole" => String.t(),
        "loggingConfig" => logging_config(),
        "maxJobDurationInSeconds" => float(),
        "outputLocation" => output_location(),
        "robotApplications" => list(robot_application_config()()),
        "simulationApplications" => list(simulation_application_config()()),
        "tags" => map(),
        "useDefaultApplications" => boolean(),
        "vpcConfig" => vpc_config()
      }

  """
  @type simulation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_fleets_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_fleets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_robot_response() :: %{
        "architecture" => list(any()),
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "greengrassGroupId" => String.t(),
        "name" => String.t(),
        "tags" => map()
      }

  """
  @type create_robot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_object() :: %{
        "bucket" => String.t(),
        "etag" => String.t(),
        "key" => String.t()
      }

  """
  @type s3_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      restart_simulation_job_response() :: %{}

  """
  @type restart_simulation_job_response() :: %{}

  @typedoc """

  ## Example:

      batch_policy() :: %{
        "maxConcurrency" => integer(),
        "timeoutInSeconds" => float()
      }

  """
  @type batch_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deregister_robot_response() :: %{
        "fleet" => String.t(),
        "robot" => String.t()
      }

  """
  @type deregister_robot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      simulation_job_summary() :: %{
        "arn" => String.t(),
        "computeType" => list(any()),
        "dataSourceNames" => list(String.t()()),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "robotApplicationNames" => list(String.t()()),
        "simulationApplicationNames" => list(String.t()()),
        "status" => list(any())
      }

  """
  @type simulation_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_fleets_response() :: %{
        "fleetDetails" => list(fleet()()),
        "nextToken" => String.t()
      }

  """
  @type list_fleets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logging_config() :: %{
        "recordAllRosTopics" => boolean()
      }

  """
  @type logging_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_robot_application_response() :: %{
        "arn" => String.t(),
        "environment" => environment(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "revisionId" => String.t(),
        "robotSoftwareSuite" => robot_software_suite(),
        "sources" => list(source()()),
        "version" => String.t()
      }

  """
  @type update_robot_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_simulation_application_request() :: %{
        optional("currentRevisionId") => String.t(),
        optional("environment") => environment(),
        optional("renderingEngine") => rendering_engine(),
        optional("sources") => list(source_config()()),
        required("application") => String.t(),
        required("robotSoftwareSuite") => robot_software_suite(),
        required("simulationSoftwareSuite") => simulation_software_suite()
      }

  """
  @type update_simulation_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_robot_application_version_request() :: %{
        optional("currentRevisionId") => String.t(),
        optional("imageDigest") => String.t(),
        optional("s3Etags") => list(String.t()()),
        required("application") => String.t()
      }

  """
  @type create_robot_application_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_world_generation_job_request() :: %{
        required("job") => String.t()
      }

  """
  @type cancel_world_generation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_robot_request() :: %{
        optional("tags") => map(),
        required("architecture") => list(any()),
        required("greengrassGroupId") => String.t(),
        required("name") => String.t()
      }

  """
  @type create_robot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      simulation_job_batch_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "createdRequestCount" => integer(),
        "failedRequestCount" => integer(),
        "lastUpdatedAt" => non_neg_integer(),
        "pendingRequestCount" => integer(),
        "status" => list(any())
      }

  """
  @type simulation_job_batch_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      simulation_application_summary() :: %{
        "arn" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "robotSoftwareSuite" => robot_software_suite(),
        "simulationSoftwareSuite" => simulation_software_suite(),
        "version" => String.t()
      }

  """
  @type simulation_application_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_robot_application_version_response() :: %{
        "arn" => String.t(),
        "environment" => environment(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "revisionId" => String.t(),
        "robotSoftwareSuite" => robot_software_suite(),
        "sources" => list(source()()),
        "version" => String.t()
      }

  """
  @type create_robot_application_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      world_config() :: %{
        "world" => String.t()
      }

  """
  @type world_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_deployment_job_request() :: %{
        optional("deploymentConfig") => deployment_config(),
        optional("tags") => map(),
        required("clientRequestToken") => String.t(),
        required("deploymentApplicationConfigs") => list(deployment_application_config()()),
        required("fleet") => String.t()
      }

  """
  @type create_deployment_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_world_template_response() :: %{
        "arn" => String.t(),
        "clientRequestToken" => String.t(),
        "createdAt" => non_neg_integer(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "tags" => map(),
        "version" => String.t()
      }

  """
  @type describe_world_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_robot_response() :: %{
        "fleet" => String.t(),
        "robot" => String.t()
      }

  """
  @type register_robot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      world_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "generationJob" => String.t(),
        "template" => String.t()
      }

  """
  @type world_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_world_export_job_response() :: %{
        "arn" => String.t(),
        "clientRequestToken" => String.t(),
        "createdAt" => non_neg_integer(),
        "failureCode" => list(any()),
        "iamRole" => String.t(),
        "outputLocation" => output_location(),
        "status" => list(any()),
        "tags" => map()
      }

  """
  @type create_world_export_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_world_generation_jobs_response() :: %{
        "nextToken" => String.t(),
        "worldGenerationJobSummaries" => list(world_generation_job_summary()())
      }

  """
  @type list_world_generation_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_fleet_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "lastDeploymentJob" => String.t(),
        "lastDeploymentStatus" => list(any()),
        "lastDeploymentTime" => non_neg_integer(),
        "name" => String.t(),
        "robots" => list(robot()()),
        "tags" => map()
      }

  """
  @type describe_fleet_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_simulation_application_version_request() :: %{
        optional("currentRevisionId") => String.t(),
        optional("imageDigest") => String.t(),
        optional("s3Etags") => list(String.t()()),
        required("application") => String.t()
      }

  """
  @type create_simulation_application_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      progress_detail() :: %{
        "currentProgress" => list(any()),
        "estimatedTimeRemainingSeconds" => integer(),
        "percentDone" => float(),
        "targetResource" => String.t()
      }

  """
  @type progress_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      concurrent_deployment_exception() :: %{
        "message" => String.t()
      }

  """
  @type concurrent_deployment_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_deployment_job_request() :: %{
        required("job") => String.t()
      }

  """
  @type cancel_deployment_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_key_output() :: %{
        "etag" => String.t(),
        "s3Key" => String.t()
      }

  """
  @type s3_key_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_simulation_job_response() :: %{
        "arn" => String.t(),
        "clientRequestToken" => String.t(),
        "compute" => compute_response(),
        "dataSources" => list(data_source()()),
        "failureBehavior" => list(any()),
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "iamRole" => String.t(),
        "lastStartedAt" => non_neg_integer(),
        "lastUpdatedAt" => non_neg_integer(),
        "loggingConfig" => logging_config(),
        "maxJobDurationInSeconds" => float(),
        "name" => String.t(),
        "networkInterface" => network_interface(),
        "outputLocation" => output_location(),
        "robotApplications" => list(robot_application_config()()),
        "simulationApplications" => list(simulation_application_config()()),
        "simulationTimeMillis" => float(),
        "status" => list(any()),
        "tags" => map(),
        "vpcConfig" => vpc_config_response()
      }

  """
  @type describe_simulation_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_world_template_response() :: %{
        "arn" => String.t(),
        "clientRequestToken" => String.t(),
        "createdAt" => non_neg_integer(),
        "name" => String.t(),
        "tags" => map()
      }

  """
  @type create_world_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_world_template_request() :: %{
        required("template") => String.t()
      }

  """
  @type delete_world_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      upload_configuration() :: %{
        "name" => String.t(),
        "path" => String.t(),
        "uploadBehavior" => list(any())
      }

  """
  @type upload_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_world_templates_response() :: %{
        "nextToken" => String.t(),
        "templateSummaries" => list(template_summary()())
      }

  """
  @type list_world_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment() :: %{
        "uri" => String.t()
      }

  """
  @type environment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_simulation_application_version_response() :: %{
        "arn" => String.t(),
        "environment" => environment(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "renderingEngine" => rendering_engine(),
        "revisionId" => String.t(),
        "robotSoftwareSuite" => robot_software_suite(),
        "simulationSoftwareSuite" => simulation_software_suite(),
        "sources" => list(source()()),
        "version" => String.t()
      }

  """
  @type create_simulation_application_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      simulation_software_suite() :: %{
        "name" => list(any()),
        "version" => String.t()
      }

  """
  @type simulation_software_suite() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sync_deployment_job_request() :: %{
        required("clientRequestToken") => String.t(),
        required("fleet") => String.t()
      }

  """
  @type sync_deployment_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      launch_config() :: %{
        "command" => list(String.t()()),
        "environmentVariables" => map(),
        "launchFile" => String.t(),
        "packageName" => String.t(),
        "portForwardingConfig" => port_forwarding_config(),
        "streamUI" => boolean()
      }

  """
  @type launch_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_world_generation_job_response() :: %{
        "arn" => String.t(),
        "clientRequestToken" => String.t(),
        "createdAt" => non_neg_integer(),
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "finishedWorldsSummary" => finished_worlds_summary(),
        "status" => list(any()),
        "tags" => map(),
        "template" => String.t(),
        "worldCount" => world_count(),
        "worldTags" => map()
      }

  """
  @type describe_world_generation_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_simulation_job_response() :: %{
        "arn" => String.t(),
        "clientRequestToken" => String.t(),
        "compute" => compute_response(),
        "dataSources" => list(data_source()()),
        "failureBehavior" => list(any()),
        "failureCode" => list(any()),
        "iamRole" => String.t(),
        "lastStartedAt" => non_neg_integer(),
        "lastUpdatedAt" => non_neg_integer(),
        "loggingConfig" => logging_config(),
        "maxJobDurationInSeconds" => float(),
        "outputLocation" => output_location(),
        "robotApplications" => list(robot_application_config()()),
        "simulationApplications" => list(simulation_application_config()()),
        "simulationTimeMillis" => float(),
        "status" => list(any()),
        "tags" => map(),
        "vpcConfig" => vpc_config_response()
      }

  """
  @type create_simulation_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      port_forwarding_config() :: %{
        "portMappings" => list(port_mapping()())
      }

  """
  @type port_forwarding_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_world_export_job_request() :: %{
        required("job") => String.t()
      }

  """
  @type describe_world_export_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_world_template_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("name") => String.t(),
        optional("tags") => map(),
        optional("templateBody") => String.t(),
        optional("templateLocation") => template_location()
      }

  """
  @type create_world_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_source_config() :: %{
        "destination" => String.t(),
        "name" => String.t(),
        "s3Bucket" => String.t(),
        "s3Keys" => list(String.t()()),
        "type" => list(any())
      }

  """
  @type data_source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      idempotent_parameter_mismatch_exception() :: %{
        "message" => String.t()
      }

  """
  @type idempotent_parameter_mismatch_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      template_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "version" => String.t()
      }

  """
  @type template_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_world_generation_job_response() :: %{
        "arn" => String.t(),
        "clientRequestToken" => String.t(),
        "createdAt" => non_neg_integer(),
        "failureCode" => list(any()),
        "status" => list(any()),
        "tags" => map(),
        "template" => String.t(),
        "worldCount" => world_count(),
        "worldTags" => map()
      }

  """
  @type create_world_generation_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_simulation_job_response() :: %{}

  """
  @type cancel_simulation_job_response() :: %{}

  @typedoc """

  ## Example:

      delete_robot_application_response() :: %{}

  """
  @type delete_robot_application_response() :: %{}

  @typedoc """

  ## Example:

      vpc_config() :: %{
        "assignPublicIp" => boolean(),
        "securityGroups" => list(String.t()()),
        "subnets" => list(String.t()())
      }

  """
  @type vpc_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_world_templates_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_world_templates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      world_export_job_summary() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "outputLocation" => output_location(),
        "status" => list(any()),
        "worlds" => list(String.t()())
      }

  """
  @type world_export_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      simulation_job() :: %{
        "arn" => String.t(),
        "clientRequestToken" => String.t(),
        "compute" => compute_response(),
        "dataSources" => list(data_source()()),
        "failureBehavior" => list(any()),
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "iamRole" => String.t(),
        "lastStartedAt" => non_neg_integer(),
        "lastUpdatedAt" => non_neg_integer(),
        "loggingConfig" => logging_config(),
        "maxJobDurationInSeconds" => float(),
        "name" => String.t(),
        "networkInterface" => network_interface(),
        "outputLocation" => output_location(),
        "robotApplications" => list(robot_application_config()()),
        "simulationApplications" => list(simulation_application_config()()),
        "simulationTimeMillis" => float(),
        "status" => list(any()),
        "tags" => map(),
        "vpcConfig" => vpc_config_response()
      }

  """
  @type simulation_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_describe_simulation_job_response() :: %{
        "jobs" => list(simulation_job()()),
        "unprocessedJobs" => list(String.t()())
      }

  """
  @type batch_describe_simulation_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_world_export_jobs_response() :: %{
        "nextToken" => String.t(),
        "worldExportJobSummaries" => list(world_export_job_summary()())
      }

  """
  @type list_world_export_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_robot_response() :: %{
        "architecture" => list(any()),
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "fleetArn" => String.t(),
        "greengrassGroupId" => String.t(),
        "lastDeploymentJob" => String.t(),
        "lastDeploymentTime" => non_neg_integer(),
        "name" => String.t(),
        "status" => list(any()),
        "tags" => map()
      }

  """
  @type describe_robot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      robot_deployment() :: %{
        "arn" => String.t(),
        "deploymentFinishTime" => non_neg_integer(),
        "deploymentStartTime" => non_neg_integer(),
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "progressDetail" => progress_detail(),
        "status" => list(any())
      }

  """
  @type robot_deployment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output_location() :: %{
        "s3Bucket" => String.t(),
        "s3Prefix" => String.t()
      }

  """
  @type output_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deployment_launch_config() :: %{
        "environmentVariables" => map(),
        "launchFile" => String.t(),
        "packageName" => String.t(),
        "postLaunchFile" => String.t(),
        "preLaunchFile" => String.t()
      }

  """
  @type deployment_launch_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_world_template_response() :: %{}

  """
  @type delete_world_template_response() :: %{}

  @typedoc """

  ## Example:

      describe_simulation_job_request() :: %{
        required("job") => String.t()
      }

  """
  @type describe_simulation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_worlds_request() :: %{
        required("worlds") => list(String.t()())
      }

  """
  @type batch_delete_worlds_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_robot_applications_response() :: %{
        "nextToken" => String.t(),
        "robotApplicationSummaries" => list(robot_application_summary()())
      }

  """
  @type list_robot_applications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_world_template_body_response() :: %{
        "templateBody" => String.t()
      }

  """
  @type get_world_template_body_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter() :: %{
        "name" => String.t(),
        "values" => list(String.t()())
      }

  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_world_generation_job_request() :: %{
        required("job") => String.t()
      }

  """
  @type describe_world_generation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_world_generation_jobs_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_world_generation_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_simulation_job_batches_response() :: %{
        "nextToken" => String.t(),
        "simulationJobBatchSummaries" => list(simulation_job_batch_summary()())
      }

  """
  @type list_simulation_job_batches_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_simulation_application_response() :: %{
        "arn" => String.t(),
        "environment" => environment(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "renderingEngine" => rendering_engine(),
        "revisionId" => String.t(),
        "robotSoftwareSuite" => robot_software_suite(),
        "simulationSoftwareSuite" => simulation_software_suite(),
        "sources" => list(source()()),
        "version" => String.t()
      }

  """
  @type update_simulation_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_robots_response() :: %{
        "nextToken" => String.t(),
        "robots" => list(robot()())
      }

  """
  @type list_robots_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      source() :: %{
        "architecture" => list(any()),
        "etag" => String.t(),
        "s3Bucket" => String.t(),
        "s3Key" => String.t()
      }

  """
  @type source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_simulation_job_batch_request() :: %{
        optional("batchPolicy") => batch_policy(),
        optional("clientRequestToken") => String.t(),
        optional("tags") => map(),
        required("createSimulationJobRequests") => list(simulation_job_request()())
      }

  """
  @type start_simulation_job_batch_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      failure_summary() :: %{
        "failures" => list(world_failure()()),
        "totalFailureCount" => integer()
      }

  """
  @type failure_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_simulation_jobs_response() :: %{
        "nextToken" => String.t(),
        "simulationJobSummaries" => list(simulation_job_summary()())
      }

  """
  @type list_simulation_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_simulation_application_response() :: %{}

  """
  @type delete_simulation_application_response() :: %{}

  @typedoc """

  ## Example:

      template_location() :: %{
        "s3Bucket" => String.t(),
        "s3Key" => String.t()
      }

  """
  @type template_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_worlds_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_worlds_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_simulation_job_request() :: %{
        required("job") => String.t()
      }

  """
  @type cancel_simulation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rendering_engine() :: %{
        "name" => list(any()),
        "version" => String.t()
      }

  """
  @type rendering_engine() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_parameter_exception() :: %{
        "message" => String.t()
      }

  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_robot_application_response() :: %{
        "arn" => String.t(),
        "environment" => environment(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "revisionId" => String.t(),
        "robotSoftwareSuite" => robot_software_suite(),
        "sources" => list(source()()),
        "tags" => map(),
        "version" => String.t()
      }

  """
  @type create_robot_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_world_template_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t()
      }

  """
  @type update_world_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_world_export_job_response() :: %{
        "arn" => String.t(),
        "clientRequestToken" => String.t(),
        "createdAt" => non_neg_integer(),
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "iamRole" => String.t(),
        "outputLocation" => output_location(),
        "status" => list(any()),
        "tags" => map(),
        "worlds" => list(String.t()())
      }

  """
  @type describe_world_export_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      delete_simulation_application_request() :: %{
        optional("applicationVersion") => String.t(),
        required("application") => String.t()
      }

  """
  @type delete_simulation_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      port_mapping() :: %{
        "applicationPort" => integer(),
        "enableOnPublicIp" => boolean(),
        "jobPort" => integer()
      }

  """
  @type port_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_robot_request() :: %{
        required("robot") => String.t()
      }

  """
  @type describe_robot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_simulation_job_batch_response() :: %{}

  """
  @type cancel_simulation_job_batch_response() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      list_simulation_jobs_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_simulation_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_robot_application_request() :: %{
        optional("environment") => environment(),
        optional("sources") => list(source_config()()),
        optional("tags") => map(),
        required("name") => String.t(),
        required("robotSoftwareSuite") => robot_software_suite()
      }

  """
  @type create_robot_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_simulation_job_batch_response() :: %{
        "arn" => String.t(),
        "batchPolicy" => batch_policy(),
        "clientRequestToken" => String.t(),
        "createdAt" => non_neg_integer(),
        "createdRequests" => list(simulation_job_summary()()),
        "failedRequests" => list(failed_create_simulation_job_request()()),
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "pendingRequests" => list(simulation_job_request()()),
        "status" => list(any()),
        "tags" => map()
      }

  """
  @type describe_simulation_job_batch_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_worlds_response() :: %{
        "unprocessedWorlds" => list(String.t()())
      }

  """
  @type batch_delete_worlds_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_robot_applications_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("versionQualifier") => String.t()
      }

  """
  @type list_robot_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      failed_create_simulation_job_request() :: %{
        "failedAt" => non_neg_integer(),
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "request" => simulation_job_request()
      }

  """
  @type failed_create_simulation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_world_template_request() :: %{
        required("template") => String.t()
      }

  """
  @type describe_world_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_robot_application_request() :: %{
        optional("applicationVersion") => String.t(),
        required("application") => String.t()
      }

  """
  @type describe_robot_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      register_robot_request() :: %{
        required("fleet") => String.t(),
        required("robot") => String.t()
      }

  """
  @type register_robot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_robot_application_request() :: %{
        optional("applicationVersion") => String.t(),
        required("application") => String.t()
      }

  """
  @type delete_robot_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_describe_simulation_job_request() :: %{
        required("jobs") => list(String.t()())
      }

  """
  @type batch_describe_simulation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_world_generation_job_response() :: %{}

  """
  @type cancel_world_generation_job_response() :: %{}

  @typedoc """

  ## Example:

      finished_worlds_summary() :: %{
        "failureSummary" => failure_summary(),
        "finishedCount" => integer(),
        "succeededWorlds" => list(String.t()())
      }

  """
  @type finished_worlds_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_simulation_job_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("compute") => compute(),
        optional("dataSources") => list(data_source_config()()),
        optional("failureBehavior") => list(any()),
        optional("loggingConfig") => logging_config(),
        optional("outputLocation") => output_location(),
        optional("robotApplications") => list(robot_application_config()()),
        optional("simulationApplications") => list(simulation_application_config()()),
        optional("tags") => map(),
        optional("vpcConfig") => vpc_config(),
        required("iamRole") => String.t(),
        required("maxJobDurationInSeconds") => float()
      }

  """
  @type create_simulation_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      world_failure() :: %{
        "failureCode" => list(any()),
        "failureCount" => integer(),
        "sampleFailureReason" => String.t()
      }

  """
  @type world_failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      source_config() :: %{
        "architecture" => list(any()),
        "s3Bucket" => String.t(),
        "s3Key" => String.t()
      }

  """
  @type source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_fleet_request() :: %{
        required("fleet") => String.t()
      }

  """
  @type describe_fleet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_config_response() :: %{
        "assignPublicIp" => boolean(),
        "securityGroups" => list(String.t()()),
        "subnets" => list(String.t()()),
        "vpcId" => String.t()
      }

  """
  @type vpc_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      simulation_application_config() :: %{
        "application" => String.t(),
        "applicationVersion" => String.t(),
        "launchConfig" => launch_config(),
        "tools" => list(tool()()),
        "uploadConfigurations" => list(upload_configuration()()),
        "useDefaultTools" => boolean(),
        "useDefaultUploadConfigurations" => boolean(),
        "worldConfigs" => list(world_config()())
      }

  """
  @type simulation_application_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      robot_application_summary() :: %{
        "arn" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "robotSoftwareSuite" => robot_software_suite(),
        "version" => String.t()
      }

  """
  @type robot_application_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sync_deployment_job_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "deploymentApplicationConfigs" => list(deployment_application_config()()),
        "deploymentConfig" => deployment_config(),
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "fleet" => String.t(),
        "status" => list(any())
      }

  """
  @type sync_deployment_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_world_export_job_request() :: %{
        required("job") => String.t()
      }

  """
  @type cancel_world_export_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_robot_request() :: %{
        required("robot") => String.t()
      }

  """
  @type delete_robot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_simulation_application_response() :: %{
        "arn" => String.t(),
        "environment" => environment(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "renderingEngine" => rendering_engine(),
        "revisionId" => String.t(),
        "robotSoftwareSuite" => robot_software_suite(),
        "simulationSoftwareSuite" => simulation_software_suite(),
        "sources" => list(source()()),
        "tags" => map(),
        "version" => String.t()
      }

  """
  @type create_simulation_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_world_template_body_request() :: %{
        optional("generationJob") => String.t(),
        optional("template") => String.t()
      }

  """
  @type get_world_template_body_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_already_exists_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_source() :: %{
        "destination" => String.t(),
        "name" => String.t(),
        "s3Bucket" => String.t(),
        "s3Keys" => list(s3_key_output()()),
        "type" => list(any())
      }

  """
  @type data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_robots_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_robots_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_simulation_application_request() :: %{
        optional("applicationVersion") => String.t(),
        required("application") => String.t()
      }

  """
  @type describe_simulation_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_robot_application_response() :: %{
        "arn" => String.t(),
        "environment" => environment(),
        "imageDigest" => String.t(),
        "lastUpdatedAt" => non_neg_integer(),
        "name" => String.t(),
        "revisionId" => String.t(),
        "robotSoftwareSuite" => robot_software_suite(),
        "sources" => list(source()()),
        "tags" => map(),
        "version" => String.t()
      }

  """
  @type describe_robot_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_simulation_job_batches_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_simulation_job_batches_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_worlds_response() :: %{
        "nextToken" => String.t(),
        "worldSummaries" => list(world_summary()())
      }

  """
  @type list_worlds_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_fleet_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "name" => String.t(),
        "tags" => map()
      }

  """
  @type create_fleet_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deregister_robot_request() :: %{
        required("fleet") => String.t(),
        required("robot") => String.t()
      }

  """
  @type deregister_robot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_world_export_job_request() :: %{
        optional("clientRequestToken") => String.t(),
        optional("tags") => map(),
        required("iamRole") => String.t(),
        required("outputLocation") => output_location(),
        required("worlds") => list(String.t()())
      }

  """
  @type create_world_export_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tool() :: %{
        "command" => String.t(),
        "exitBehavior" => list(any()),
        "name" => String.t(),
        "streamOutputToCloudWatch" => boolean(),
        "streamUI" => boolean()
      }

  """
  @type tool() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_simulation_job_batch_request() :: %{
        required("batch") => String.t()
      }

  """
  @type cancel_simulation_job_batch_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_simulation_applications_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("versionQualifier") => String.t()
      }

  """
  @type list_simulation_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_world_export_job_response() :: %{}

  """
  @type cancel_world_export_job_response() :: %{}

  @typedoc """

  ## Example:

      world_count() :: %{
        "floorplanCount" => integer(),
        "interiorCountPerFloorplan" => integer()
      }

  """
  @type world_count() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fleet() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "lastDeploymentJob" => String.t(),
        "lastDeploymentStatus" => list(any()),
        "lastDeploymentTime" => non_neg_integer(),
        "name" => String.t()
      }

  """
  @type fleet() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deployment_job() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "deploymentApplicationConfigs" => list(deployment_application_config()()),
        "deploymentConfig" => deployment_config(),
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "fleet" => String.t(),
        "status" => list(any())
      }

  """
  @type deployment_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      robot_application_config() :: %{
        "application" => String.t(),
        "applicationVersion" => String.t(),
        "launchConfig" => launch_config(),
        "tools" => list(tool()()),
        "uploadConfigurations" => list(upload_configuration()()),
        "useDefaultTools" => boolean(),
        "useDefaultUploadConfigurations" => boolean()
      }

  """
  @type robot_application_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_deployment_jobs_request() :: %{
        optional("filters") => list(filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_deployment_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_world_response() :: %{
        "arn" => String.t(),
        "createdAt" => non_neg_integer(),
        "generationJob" => String.t(),
        "tags" => map(),
        "template" => String.t(),
        "worldDescriptionBody" => String.t()
      }

  """
  @type describe_world_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      restart_simulation_job_request() :: %{
        required("job") => String.t()
      }

  """
  @type restart_simulation_job_request() :: %{String.t() => any()}

  @type batch_delete_worlds_errors() ::
          throttling_exception() | invalid_parameter_exception() | internal_server_exception()

  @type batch_describe_simulation_job_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type cancel_deployment_job_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type cancel_simulation_job_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type cancel_simulation_job_batch_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type cancel_world_export_job_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type cancel_world_generation_job_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_deployment_job_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | idempotent_parameter_mismatch_exception()
          | resource_not_found_exception()
          | concurrent_deployment_exception()

  @type create_fleet_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()

  @type create_robot_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()

  @type create_robot_application_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | idempotent_parameter_mismatch_exception()

  @type create_robot_application_version_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | idempotent_parameter_mismatch_exception()

  @type create_simulation_application_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | idempotent_parameter_mismatch_exception()

  @type create_simulation_application_version_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | idempotent_parameter_mismatch_exception()

  @type create_simulation_job_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | idempotent_parameter_mismatch_exception()
          | resource_not_found_exception()

  @type create_world_export_job_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | idempotent_parameter_mismatch_exception()
          | resource_not_found_exception()

  @type create_world_generation_job_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | idempotent_parameter_mismatch_exception()
          | resource_not_found_exception()

  @type create_world_template_errors() ::
          resource_already_exists_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_fleet_errors() ::
          throttling_exception() | invalid_parameter_exception() | internal_server_exception()

  @type delete_robot_errors() ::
          throttling_exception() | invalid_parameter_exception() | internal_server_exception()

  @type delete_robot_application_errors() ::
          throttling_exception() | invalid_parameter_exception() | internal_server_exception()

  @type delete_simulation_application_errors() ::
          throttling_exception() | invalid_parameter_exception() | internal_server_exception()

  @type delete_world_template_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type deregister_robot_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_deployment_job_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_fleet_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_robot_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_robot_application_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_simulation_application_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_simulation_job_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_simulation_job_batch_errors() ::
          invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_world_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_world_export_job_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_world_generation_job_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_world_template_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_world_template_body_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_deployment_jobs_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_fleets_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_robot_applications_errors() ::
          throttling_exception() | invalid_parameter_exception() | internal_server_exception()

  @type list_robots_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_simulation_applications_errors() ::
          throttling_exception() | invalid_parameter_exception() | internal_server_exception()

  @type list_simulation_job_batches_errors() ::
          invalid_parameter_exception() | internal_server_exception()

  @type list_simulation_jobs_errors() ::
          throttling_exception() | invalid_parameter_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_world_export_jobs_errors() ::
          throttling_exception() | invalid_parameter_exception() | internal_server_exception()

  @type list_world_generation_jobs_errors() ::
          throttling_exception() | invalid_parameter_exception() | internal_server_exception()

  @type list_world_templates_errors() ::
          throttling_exception() | invalid_parameter_exception() | internal_server_exception()

  @type list_worlds_errors() ::
          throttling_exception() | invalid_parameter_exception() | internal_server_exception()

  @type register_robot_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type restart_simulation_job_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_simulation_job_batch_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | idempotent_parameter_mismatch_exception()

  @type sync_deployment_job_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | idempotent_parameter_mismatch_exception()
          | resource_not_found_exception()
          | concurrent_deployment_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_robot_application_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_simulation_application_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_world_template_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2018-06-29",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "robomaker",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "RoboMaker",
      signature_version: "v4",
      signing_name: "robomaker",
      target_prefix: nil
    }
  end

  @doc """

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Deletes one or more worlds in a batch operation.
  """
  @spec batch_delete_worlds(map(), batch_delete_worlds_request(), list()) ::
          {:ok, batch_delete_worlds_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_delete_worlds_errors()}
  def batch_delete_worlds(%Client{} = client, input, options \\ []) do
    url_path = "/batchDeleteWorlds"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Describes one or more simulation jobs.
  """
  @spec batch_describe_simulation_job(map(), batch_describe_simulation_job_request(), list()) ::
          {:ok, batch_describe_simulation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_describe_simulation_job_errors()}
  def batch_describe_simulation_job(%Client{} = client, input, options \\ []) do
    url_path = "/batchDescribeSimulationJob"
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

  This API is no longer supported.

  For more information, see the May 2, 2022 update in the [Support policy](https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022)
  page.

  Cancels the specified deployment job.
  """
  @spec cancel_deployment_job(map(), cancel_deployment_job_request(), list()) ::
          {:ok, cancel_deployment_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_deployment_job_errors()}
  def cancel_deployment_job(%Client{} = client, input, options \\ []) do
    url_path = "/cancelDeploymentJob"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Cancels the specified simulation job.
  """
  @spec cancel_simulation_job(map(), cancel_simulation_job_request(), list()) ::
          {:ok, cancel_simulation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_simulation_job_errors()}
  def cancel_simulation_job(%Client{} = client, input, options \\ []) do
    url_path = "/cancelSimulationJob"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Cancels a simulation job batch. When you cancel a simulation job batch, you are
  also
  cancelling all of the active simulation jobs created as part of the batch.
  """
  @spec cancel_simulation_job_batch(map(), cancel_simulation_job_batch_request(), list()) ::
          {:ok, cancel_simulation_job_batch_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_simulation_job_batch_errors()}
  def cancel_simulation_job_batch(%Client{} = client, input, options \\ []) do
    url_path = "/cancelSimulationJobBatch"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Cancels the specified export job.
  """
  @spec cancel_world_export_job(map(), cancel_world_export_job_request(), list()) ::
          {:ok, cancel_world_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_world_export_job_errors()}
  def cancel_world_export_job(%Client{} = client, input, options \\ []) do
    url_path = "/cancelWorldExportJob"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Cancels the specified world generator job.
  """
  @spec cancel_world_generation_job(map(), cancel_world_generation_job_request(), list()) ::
          {:ok, cancel_world_generation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, cancel_world_generation_job_errors()}
  def cancel_world_generation_job(%Client{} = client, input, options \\ []) do
    url_path = "/cancelWorldGenerationJob"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/). 

  This API is no longer supported and will throw an error if used. For more
  information, see the January 31, 2022 update in the [Support
  policy](https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-january2022)
  page.

  Deploys a specific version of a robot application to robots in a fleet.

  The robot application must have a numbered `applicationVersion` for
  consistency reasons. To create a new version, use
  `CreateRobotApplicationVersion` or see
  [Creating a Robot Application Version](https://docs.aws.amazon.com/robomaker/latest/dg/create-robot-application-version.html).

  After 90 days, deployment jobs expire and will be deleted. They will no longer
  be
  accessible.
  """
  @spec create_deployment_job(map(), create_deployment_job_request(), list()) ::
          {:ok, create_deployment_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_deployment_job_errors()}
  def create_deployment_job(%Client{} = client, input, options \\ []) do
    url_path = "/createDeploymentJob"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/). 

  This API is no longer supported and will throw an error if used. For more
  information, see the January 31, 2022 update in the [Support
  policy](https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-january2022)
  page.

  Creates a fleet, a logical group of robots running the same robot application.
  """
  @spec create_fleet(map(), create_fleet_request(), list()) ::
          {:ok, create_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_fleet_errors()}
  def create_fleet(%Client{} = client, input, options \\ []) do
    url_path = "/createFleet"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/). 

  This API is no longer supported and will throw an error if used. For more
  information, see the January 31, 2022 update in the [Support
  policy](https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-january2022)
  page.

  Creates a robot.
  """
  @spec create_robot(map(), create_robot_request(), list()) ::
          {:ok, create_robot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_robot_errors()}
  def create_robot(%Client{} = client, input, options \\ []) do
    url_path = "/createRobot"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Creates a robot application.
  """
  @spec create_robot_application(map(), create_robot_application_request(), list()) ::
          {:ok, create_robot_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_robot_application_errors()}
  def create_robot_application(%Client{} = client, input, options \\ []) do
    url_path = "/createRobotApplication"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Creates a version of a robot application.
  """
  @spec create_robot_application_version(
          map(),
          create_robot_application_version_request(),
          list()
        ) ::
          {:ok, create_robot_application_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_robot_application_version_errors()}
  def create_robot_application_version(%Client{} = client, input, options \\ []) do
    url_path = "/createRobotApplicationVersion"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Creates a simulation application.
  """
  @spec create_simulation_application(map(), create_simulation_application_request(), list()) ::
          {:ok, create_simulation_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_simulation_application_errors()}
  def create_simulation_application(%Client{} = client, input, options \\ []) do
    url_path = "/createSimulationApplication"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Creates a simulation application with a specific revision id.
  """
  @spec create_simulation_application_version(
          map(),
          create_simulation_application_version_request(),
          list()
        ) ::
          {:ok, create_simulation_application_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_simulation_application_version_errors()}
  def create_simulation_application_version(%Client{} = client, input, options \\ []) do
    url_path = "/createSimulationApplicationVersion"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Creates a simulation job.

  After 90 days, simulation jobs expire and will be deleted. They will no longer
  be
  accessible.
  """
  @spec create_simulation_job(map(), create_simulation_job_request(), list()) ::
          {:ok, create_simulation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_simulation_job_errors()}
  def create_simulation_job(%Client{} = client, input, options \\ []) do
    url_path = "/createSimulationJob"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Creates a world export job.
  """
  @spec create_world_export_job(map(), create_world_export_job_request(), list()) ::
          {:ok, create_world_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_world_export_job_errors()}
  def create_world_export_job(%Client{} = client, input, options \\ []) do
    url_path = "/createWorldExportJob"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Creates worlds using the specified template.
  """
  @spec create_world_generation_job(map(), create_world_generation_job_request(), list()) ::
          {:ok, create_world_generation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_world_generation_job_errors()}
  def create_world_generation_job(%Client{} = client, input, options \\ []) do
    url_path = "/createWorldGenerationJob"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Creates a world template.
  """
  @spec create_world_template(map(), create_world_template_request(), list()) ::
          {:ok, create_world_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_world_template_errors()}
  def create_world_template(%Client{} = client, input, options \\ []) do
    url_path = "/createWorldTemplate"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/). 

  This API is no longer supported. For more information, see the May 2, 2022
  update in the [Support
  policy](https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022)
  page.

  Deletes a fleet.
  """
  @spec delete_fleet(map(), delete_fleet_request(), list()) ::
          {:ok, delete_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_fleet_errors()}
  def delete_fleet(%Client{} = client, input, options \\ []) do
    url_path = "/deleteFleet"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/). 

  This API is no longer supported. For more information, see the May 2, 2022
  update in the [Support
  policy](https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022)
  page.

  Deletes a robot.
  """
  @spec delete_robot(map(), delete_robot_request(), list()) ::
          {:ok, delete_robot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_robot_errors()}
  def delete_robot(%Client{} = client, input, options \\ []) do
    url_path = "/deleteRobot"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Deletes a robot application.
  """
  @spec delete_robot_application(map(), delete_robot_application_request(), list()) ::
          {:ok, delete_robot_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_robot_application_errors()}
  def delete_robot_application(%Client{} = client, input, options \\ []) do
    url_path = "/deleteRobotApplication"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Deletes a simulation application.
  """
  @spec delete_simulation_application(map(), delete_simulation_application_request(), list()) ::
          {:ok, delete_simulation_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_simulation_application_errors()}
  def delete_simulation_application(%Client{} = client, input, options \\ []) do
    url_path = "/deleteSimulationApplication"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Deletes a world template.
  """
  @spec delete_world_template(map(), delete_world_template_request(), list()) ::
          {:ok, delete_world_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_world_template_errors()}
  def delete_world_template(%Client{} = client, input, options \\ []) do
    url_path = "/deleteWorldTemplate"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/). 

  This API is no longer supported. For more information, see the May 2, 2022
  update in the [Support
  policy](https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022)
  page.

  Deregisters a robot.
  """
  @spec deregister_robot(map(), deregister_robot_request(), list()) ::
          {:ok, deregister_robot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, deregister_robot_errors()}
  def deregister_robot(%Client{} = client, input, options \\ []) do
    url_path = "/deregisterRobot"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/). 

  This API is no longer supported. For more information, see the May 2, 2022
  update in the [Support
  policy](https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022)
  page.

  Describes a deployment job.
  """
  @spec describe_deployment_job(map(), describe_deployment_job_request(), list()) ::
          {:ok, describe_deployment_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_deployment_job_errors()}
  def describe_deployment_job(%Client{} = client, input, options \\ []) do
    url_path = "/describeDeploymentJob"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/). 

  This API is no longer supported. For more information, see the May 2, 2022
  update in the [Support
  policy](https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022)
  page.

  Describes a fleet.
  """
  @spec describe_fleet(map(), describe_fleet_request(), list()) ::
          {:ok, describe_fleet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_fleet_errors()}
  def describe_fleet(%Client{} = client, input, options \\ []) do
    url_path = "/describeFleet"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/). 

  This API is no longer supported. For more information, see the May 2, 2022
  update in the [Support
  policy](https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022)
  page.

  Describes a robot.
  """
  @spec describe_robot(map(), describe_robot_request(), list()) ::
          {:ok, describe_robot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_robot_errors()}
  def describe_robot(%Client{} = client, input, options \\ []) do
    url_path = "/describeRobot"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Describes a robot application.
  """
  @spec describe_robot_application(map(), describe_robot_application_request(), list()) ::
          {:ok, describe_robot_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_robot_application_errors()}
  def describe_robot_application(%Client{} = client, input, options \\ []) do
    url_path = "/describeRobotApplication"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Describes a simulation application.
  """
  @spec describe_simulation_application(map(), describe_simulation_application_request(), list()) ::
          {:ok, describe_simulation_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_simulation_application_errors()}
  def describe_simulation_application(%Client{} = client, input, options \\ []) do
    url_path = "/describeSimulationApplication"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Describes a simulation job.
  """
  @spec describe_simulation_job(map(), describe_simulation_job_request(), list()) ::
          {:ok, describe_simulation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_simulation_job_errors()}
  def describe_simulation_job(%Client{} = client, input, options \\ []) do
    url_path = "/describeSimulationJob"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Describes a simulation job batch.
  """
  @spec describe_simulation_job_batch(map(), describe_simulation_job_batch_request(), list()) ::
          {:ok, describe_simulation_job_batch_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_simulation_job_batch_errors()}
  def describe_simulation_job_batch(%Client{} = client, input, options \\ []) do
    url_path = "/describeSimulationJobBatch"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Describes a world.
  """
  @spec describe_world(map(), describe_world_request(), list()) ::
          {:ok, describe_world_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_world_errors()}
  def describe_world(%Client{} = client, input, options \\ []) do
    url_path = "/describeWorld"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Describes a world export job.
  """
  @spec describe_world_export_job(map(), describe_world_export_job_request(), list()) ::
          {:ok, describe_world_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_world_export_job_errors()}
  def describe_world_export_job(%Client{} = client, input, options \\ []) do
    url_path = "/describeWorldExportJob"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Describes a world generation job.
  """
  @spec describe_world_generation_job(map(), describe_world_generation_job_request(), list()) ::
          {:ok, describe_world_generation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_world_generation_job_errors()}
  def describe_world_generation_job(%Client{} = client, input, options \\ []) do
    url_path = "/describeWorldGenerationJob"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Describes a world template.
  """
  @spec describe_world_template(map(), describe_world_template_request(), list()) ::
          {:ok, describe_world_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_world_template_errors()}
  def describe_world_template(%Client{} = client, input, options \\ []) do
    url_path = "/describeWorldTemplate"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Gets the world template body.
  """
  @spec get_world_template_body(map(), get_world_template_body_request(), list()) ::
          {:ok, get_world_template_body_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_world_template_body_errors()}
  def get_world_template_body(%Client{} = client, input, options \\ []) do
    url_path = "/getWorldTemplateBody"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/). 

  This API is no longer supported. For more information, see the May 2, 2022
  update in the [Support
  policy](https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022)
  page.

  Returns a list of deployment jobs for a fleet. You can optionally provide
  filters to retrieve specific deployment jobs.
  """
  @spec list_deployment_jobs(map(), list_deployment_jobs_request(), list()) ::
          {:ok, list_deployment_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_deployment_jobs_errors()}
  def list_deployment_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/listDeploymentJobs"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/). 

  This API is no longer supported. For more information, see the May 2, 2022
  update in the [Support
  policy](https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022)
  page.

  Returns a list of fleets. You can optionally provide filters to retrieve
  specific fleets.
  """
  @spec list_fleets(map(), list_fleets_request(), list()) ::
          {:ok, list_fleets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_fleets_errors()}
  def list_fleets(%Client{} = client, input, options \\ []) do
    url_path = "/listFleets"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Returns a list of robot application. You can optionally provide filters to
  retrieve
  specific robot applications.
  """
  @spec list_robot_applications(map(), list_robot_applications_request(), list()) ::
          {:ok, list_robot_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_robot_applications_errors()}
  def list_robot_applications(%Client{} = client, input, options \\ []) do
    url_path = "/listRobotApplications"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/). 

  This API is no longer supported. For more information, see the May 2, 2022
  update in the [Support
  policy](https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022)
  page.

  Returns a list of robots. You can optionally provide filters to retrieve
  specific robots.
  """
  @spec list_robots(map(), list_robots_request(), list()) ::
          {:ok, list_robots_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_robots_errors()}
  def list_robots(%Client{} = client, input, options \\ []) do
    url_path = "/listRobots"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Returns a list of simulation applications. You can optionally provide filters to
  retrieve specific simulation applications.
  """
  @spec list_simulation_applications(map(), list_simulation_applications_request(), list()) ::
          {:ok, list_simulation_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_simulation_applications_errors()}
  def list_simulation_applications(%Client{} = client, input, options \\ []) do
    url_path = "/listSimulationApplications"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Returns a list simulation job batches. You can optionally provide filters to
  retrieve
  specific simulation batch jobs.
  """
  @spec list_simulation_job_batches(map(), list_simulation_job_batches_request(), list()) ::
          {:ok, list_simulation_job_batches_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_simulation_job_batches_errors()}
  def list_simulation_job_batches(%Client{} = client, input, options \\ []) do
    url_path = "/listSimulationJobBatches"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Returns a list of simulation jobs. You can optionally provide filters to
  retrieve
  specific simulation jobs.
  """
  @spec list_simulation_jobs(map(), list_simulation_jobs_request(), list()) ::
          {:ok, list_simulation_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_simulation_jobs_errors()}
  def list_simulation_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/listSimulationJobs"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Lists all tags on a AWS RoboMaker resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Lists world export jobs.
  """
  @spec list_world_export_jobs(map(), list_world_export_jobs_request(), list()) ::
          {:ok, list_world_export_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_world_export_jobs_errors()}
  def list_world_export_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/listWorldExportJobs"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Lists world generator jobs.
  """
  @spec list_world_generation_jobs(map(), list_world_generation_jobs_request(), list()) ::
          {:ok, list_world_generation_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_world_generation_jobs_errors()}
  def list_world_generation_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/listWorldGenerationJobs"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Lists world templates.
  """
  @spec list_world_templates(map(), list_world_templates_request(), list()) ::
          {:ok, list_world_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_world_templates_errors()}
  def list_world_templates(%Client{} = client, input, options \\ []) do
    url_path = "/listWorldTemplates"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Lists worlds.
  """
  @spec list_worlds(map(), list_worlds_request(), list()) ::
          {:ok, list_worlds_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_worlds_errors()}
  def list_worlds(%Client{} = client, input, options \\ []) do
    url_path = "/listWorlds"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/). 

  Registers a robot with a fleet.

  This API is no longer supported and will throw an error if used. For more
  information, see the January 31, 2022 update in the [Support
  policy](https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-january2022)
  page.
  """
  @spec register_robot(map(), register_robot_request(), list()) ::
          {:ok, register_robot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_robot_errors()}
  def register_robot(%Client{} = client, input, options \\ []) do
    url_path = "/registerRobot"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Restarts a running simulation job.
  """
  @spec restart_simulation_job(map(), restart_simulation_job_request(), list()) ::
          {:ok, restart_simulation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restart_simulation_job_errors()}
  def restart_simulation_job(%Client{} = client, input, options \\ []) do
    url_path = "/restartSimulationJob"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Starts a new simulation job batch. The batch is defined using one or more
  `SimulationJobRequest` objects.
  """
  @spec start_simulation_job_batch(map(), start_simulation_job_batch_request(), list()) ::
          {:ok, start_simulation_job_batch_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_simulation_job_batch_errors()}
  def start_simulation_job_batch(%Client{} = client, input, options \\ []) do
    url_path = "/startSimulationJobBatch"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/). 

  This API is no longer supported. For more information, see the May 2, 2022
  update in the [Support
  policy](https://docs.aws.amazon.com/robomaker/latest/dg/chapter-support-policy.html#software-support-policy-may2022)
  page.

  Syncrhonizes robots in a fleet to the latest deployment. This is helpful if
  robots were added after a deployment.
  """
  @spec sync_deployment_job(map(), sync_deployment_job_request(), list()) ::
          {:ok, sync_deployment_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, sync_deployment_job_errors()}
  def sync_deployment_job(%Client{} = client, input, options \\ []) do
    url_path = "/syncDeploymentJob"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/). 

  Adds or edits tags for a AWS RoboMaker resource.

  Each tag consists of a tag key and a tag value. Tag keys and tag values are both
  required, but tag values can be empty strings.

  For information about the rules that apply to tag keys and tag values, see
  [User-Defined Tag
  Restrictions](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/allocation-tag-restrictions.html)
  in the *AWS Billing and Cost Management
  User Guide*.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
      200
    )
  end

  @doc """

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/). 

  Removes the specified tags from the specified AWS RoboMaker resource.

  To remove a tag, specify the tag key. To change the tag value of an existing tag
  key,
  use [
  `TagResource`
  ](https://docs.aws.amazon.com/robomaker/latest/dg/API_TagResource.html).
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
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
      200
    )
  end

  @doc """

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Updates a robot application.
  """
  @spec update_robot_application(map(), update_robot_application_request(), list()) ::
          {:ok, update_robot_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_robot_application_errors()}
  def update_robot_application(%Client{} = client, input, options \\ []) do
    url_path = "/updateRobotApplication"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Updates a simulation application.
  """
  @spec update_simulation_application(map(), update_simulation_application_request(), list()) ::
          {:ok, update_simulation_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_simulation_application_errors()}
  def update_simulation_application(%Client{} = client, input, options \\ []) do
    url_path = "/updateSimulationApplication"
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

  End of support notice: On September 10, 2025, Amazon Web Services
  will discontinue support for Amazon Web Services RoboMaker.

  After September 10, 2025, you will
  no longer be able to access the Amazon Web Services RoboMaker console or Amazon
  Web Services RoboMaker resources.
  For more information on transitioning to Batch to help run containerized
  simulations, visit
  [https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/](https://aws.amazon.com/blogs/hpc/run-simulations-using-multiple-containers-in-a-single-aws-batch-job/).

  Updates a world template.
  """
  @spec update_world_template(map(), update_world_template_request(), list()) ::
          {:ok, update_world_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_world_template_errors()}
  def update_world_template(%Client{} = client, input, options \\ []) do
    url_path = "/updateWorldTemplate"
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
end
