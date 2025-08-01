# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Imagebuilder do
  @moduledoc """
  EC2 Image Builder is a fully managed Amazon Web Services service that makes it
  easier to automate the
  creation, management, and deployment of customized, secure, and up-to-date
  "golden" server images that are pre-installed and pre-configured with software
  and settings to meet specific IT standards.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_workflow_executions_response() :: %{
        "imageBuildVersionArn" => String.t() | atom(),
        "message" => String.t() | atom(),
        "nextToken" => String.t() | atom(),
        "requestId" => String.t() | atom(),
        "workflowExecutions" => list(workflow_execution_metadata())
      }

  """
  @type list_workflow_executions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_lifecycle_execution_response() :: %{
        "lifecycleExecutionId" => String.t() | atom()
      }

  """
  @type cancel_lifecycle_execution_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_workflow_build_versions_response() :: %{
        "nextToken" => String.t() | atom(),
        "workflowSummaryList" => list(workflow_summary())
      }

  """
  @type list_workflow_build_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_distribution_configurations_request() :: %{
        optional("filters") => list(filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_distribution_configurations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_workflow_request() :: %{
        optional("changeDescription") => String.t() | atom(),
        optional("data") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("kmsKeyId") => String.t() | atom(),
        optional("tags") => map(),
        optional("uri") => String.t() | atom(),
        required("clientToken") => String.t() | atom(),
        required("name") => String.t() | atom(),
        required("semanticVersion") => String.t() | atom(),
        required("type") => list(any())
      }

  """
  @type create_workflow_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_image_policy_request() :: %{
        required("imageArn") => String.t() | atom()
      }

  """
  @type get_image_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_resource_state_update_request() :: %{
        optional("exclusionRules") => resource_state_update_exclusion_rules(),
        optional("executionRole") => String.t() | atom(),
        optional("includeResources") => resource_state_update_include_resources(),
        optional("updateAt") => non_neg_integer(),
        required("clientToken") => String.t() | atom(),
        required("resourceArn") => String.t() | atom(),
        required("state") => resource_state()
      }

  """
  @type start_resource_state_update_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_image_pipeline_images_request() :: %{
        optional("filters") => list(filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("imagePipelineArn") => String.t() | atom()
      }

  """
  @type list_image_pipeline_images_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_container_recipe_policy_response() :: %{
        "containerRecipeArn" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type put_container_recipe_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lifecycle_policy_detail_exclusion_rules() :: %{
        "amis" => lifecycle_policy_detail_exclusion_rules_amis(),
        "tagMap" => map()
      }

  """
  @type lifecycle_policy_detail_exclusion_rules() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_vm_image_request() :: %{
        optional("description") => String.t() | atom(),
        optional("osVersion") => String.t() | atom(),
        optional("tags") => map(),
        required("clientToken") => String.t() | atom(),
        required("name") => String.t() | atom(),
        required("platform") => list(any()),
        required("semanticVersion") => String.t() | atom(),
        required("vmImportTaskId") => String.t() | atom()
      }

  """
  @type import_vm_image_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      component_parameter_detail() :: %{
        "defaultValue" => list(String.t() | atom()),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "type" => String.t() | atom()
      }

  """
  @type component_parameter_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image_scan_state() :: %{
        "reason" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type image_scan_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lifecycle_policy_detail_action_include_resources() :: %{
        "amis" => boolean(),
        "containers" => boolean(),
        "snapshots" => boolean()
      }

  """
  @type lifecycle_policy_detail_action_include_resources() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_workflow_step_executions_response() :: %{
        "imageBuildVersionArn" => String.t() | atom(),
        "message" => String.t() | atom(),
        "nextToken" => String.t() | atom(),
        "requestId" => String.t() | atom(),
        "steps" => list(workflow_step_metadata()),
        "workflowBuildVersionArn" => String.t() | atom(),
        "workflowExecutionId" => String.t() | atom()
      }

  """
  @type list_workflow_step_executions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_image_packages_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("imageBuildVersionArn") => String.t() | atom()
      }

  """
  @type list_image_packages_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      container() :: %{
        "imageUris" => list(String.t() | atom()),
        "region" => String.t() | atom()
      }

  """
  @type container() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_distribution_configuration_response() :: %{
        "clientToken" => String.t() | atom(),
        "distributionConfigurationArn" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type update_distribution_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      infrastructure_configuration_summary() :: %{
        "arn" => String.t() | atom(),
        "dateCreated" => String.t() | atom(),
        "dateUpdated" => String.t() | atom(),
        "description" => String.t() | atom(),
        "instanceProfileName" => String.t() | atom(),
        "instanceTypes" => list(String.t() | atom()),
        "name" => String.t() | atom(),
        "placement" => placement(),
        "resourceTags" => map(),
        "tags" => map()
      }

  """
  @type infrastructure_configuration_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_image_recipes_request() :: %{
        optional("filters") => list(filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("owner") => list(any())
      }

  """
  @type list_image_recipes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workflow_version() :: %{
        "arn" => String.t() | atom(),
        "dateCreated" => String.t() | atom(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "owner" => String.t() | atom(),
        "type" => list(any()),
        "version" => String.t() | atom()
      }

  """
  @type workflow_version() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_image_pipelines_response() :: %{
        "imagePipelineList" => list(image_pipeline()),
        "nextToken" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type list_image_pipelines_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_image_response() :: %{
        "clientToken" => String.t() | atom(),
        "imageBuildVersionArn" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type create_image_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_container_recipe_policy_request() :: %{
        required("containerRecipeArn") => String.t() | atom(),
        required("policy") => String.t() | atom()
      }

  """
  @type put_container_recipe_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_waiting_workflow_steps_response() :: %{
        "nextToken" => String.t() | atom(),
        "steps" => list(workflow_step_execution())
      }

  """
  @type list_waiting_workflow_steps_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_lifecycle_policy_request() :: %{
        optional("description") => String.t() | atom(),
        optional("status") => list(any()),
        required("clientToken") => String.t() | atom(),
        required("executionRole") => String.t() | atom(),
        required("lifecyclePolicyArn") => String.t() | atom(),
        required("policyDetails") => list(lifecycle_policy_detail()),
        required("resourceSelection") => lifecycle_policy_resource_selection(),
        required("resourceType") => list(any())
      }

  """
  @type update_lifecycle_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remediation() :: %{
        "recommendation" => remediation_recommendation()
      }

  """
  @type remediation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image_scanning_configuration() :: %{
        "ecrConfiguration" => ecr_configuration(),
        "imageScanningEnabled" => boolean()
      }

  """
  @type image_scanning_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_image_pipeline_execution_response() :: %{
        "clientToken" => String.t() | atom(),
        "imageBuildVersionArn" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type start_image_pipeline_execution_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_image_recipe_policy_response() :: %{
        "imageRecipeArn" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type put_image_recipe_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workflow_step_execution_response() :: %{
        "action" => String.t() | atom(),
        "description" => String.t() | atom(),
        "endTime" => String.t() | atom(),
        "imageBuildVersionArn" => String.t() | atom(),
        "inputs" => String.t() | atom(),
        "message" => String.t() | atom(),
        "name" => String.t() | atom(),
        "onFailure" => String.t() | atom(),
        "outputs" => String.t() | atom(),
        "requestId" => String.t() | atom(),
        "rollbackStatus" => list(any()),
        "startTime" => String.t() | atom(),
        "status" => list(any()),
        "stepExecutionId" => String.t() | atom(),
        "timeoutSeconds" => integer(),
        "workflowBuildVersionArn" => String.t() | atom(),
        "workflowExecutionId" => String.t() | atom()
      }

  """
  @type get_workflow_step_execution_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      invalid_version_number_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type invalid_version_number_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_lifecycle_execution_resources_response() :: %{
        "lifecycleExecutionId" => String.t() | atom(),
        "lifecycleExecutionState" => lifecycle_execution_state(),
        "nextToken" => String.t() | atom(),
        "resources" => list(lifecycle_execution_resource())
      }

  """
  @type list_lifecycle_execution_resources_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_workflow_request() :: %{
        required("workflowBuildVersionArn") => String.t() | atom()
      }

  """
  @type delete_workflow_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_image_scan_finding_aggregations_request() :: %{
        optional("filter") => filter(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_image_scan_finding_aggregations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image_pipeline() :: %{
        "arn" => String.t() | atom(),
        "containerRecipeArn" => String.t() | atom(),
        "dateCreated" => String.t() | atom(),
        "dateLastRun" => String.t() | atom(),
        "dateNextRun" => String.t() | atom(),
        "dateUpdated" => String.t() | atom(),
        "description" => String.t() | atom(),
        "distributionConfigurationArn" => String.t() | atom(),
        "enhancedImageMetadataEnabled" => boolean(),
        "executionRole" => String.t() | atom(),
        "imageRecipeArn" => String.t() | atom(),
        "imageScanningConfiguration" => image_scanning_configuration(),
        "imageTestsConfiguration" => image_tests_configuration(),
        "infrastructureConfigurationArn" => String.t() | atom(),
        "name" => String.t() | atom(),
        "platform" => list(any()),
        "schedule" => schedule(),
        "status" => list(any()),
        "tags" => map(),
        "workflows" => list(workflow_configuration())
      }

  """
  @type image_pipeline() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_in_use_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type resource_in_use_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workflow_parameter_detail() :: %{
        "defaultValue" => list(String.t() | atom()),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "type" => String.t() | atom()
      }

  """
  @type workflow_parameter_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type forbidden_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      instance_block_device_mapping() :: %{
        "deviceName" => String.t() | atom(),
        "ebs" => ebs_instance_block_device_specification(),
        "noDevice" => String.t() | atom(),
        "virtualName" => String.t() | atom()
      }

  """
  @type instance_block_device_mapping() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_lifecycle_policy_response() :: %{
        "lifecyclePolicyArn" => String.t() | atom()
      }

  """
  @type update_lifecycle_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ebs_instance_block_device_specification() :: %{
        "deleteOnTermination" => boolean(),
        "encrypted" => boolean(),
        "iops" => integer(),
        "kmsKeyId" => String.t() | atom(),
        "snapshotId" => String.t() | atom(),
        "throughput" => integer(),
        "volumeSize" => integer(),
        "volumeType" => list(any())
      }

  """
  @type ebs_instance_block_device_specification() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_container_recipe_response() :: %{
        "containerRecipe" => container_recipe(),
        "requestId" => String.t() | atom()
      }

  """
  @type get_container_recipe_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_lifecycle_execution_request() :: %{
        required("lifecycleExecutionId") => String.t() | atom()
      }

  """
  @type get_lifecycle_execution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vulnerability_id_aggregation() :: %{
        "severityCounts" => severity_counts(),
        "vulnerabilityId" => String.t() | atom()
      }

  """
  @type vulnerability_id_aggregation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ami() :: %{
        "accountId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "image" => String.t() | atom(),
        "name" => String.t() | atom(),
        "region" => String.t() | atom(),
        "state" => image_state()
      }

  """
  @type ami() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_state() :: %{
        "status" => list(any())
      }

  """
  @type resource_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_image_response() :: %{
        "image" => image(),
        "requestId" => String.t() | atom()
      }

  """
  @type get_image_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_image_recipe_policy_response() :: %{
        "policy" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type get_image_recipe_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_lifecycle_policies_request() :: %{
        optional("filters") => list(filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_lifecycle_policies_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lifecycle_execution_resource_action() :: %{
        "name" => list(any()),
        "reason" => String.t() | atom()
      }

  """
  @type lifecycle_execution_resource_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_image_pipeline_response() :: %{
        "clientToken" => String.t() | atom(),
        "imagePipelineArn" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type create_image_pipeline_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_infrastructure_configuration_request() :: %{
        optional("description") => String.t() | atom(),
        optional("instanceMetadataOptions") => instance_metadata_options(),
        optional("instanceTypes") => list(String.t() | atom()),
        optional("keyPair") => String.t() | atom(),
        optional("logging") => logging(),
        optional("placement") => placement(),
        optional("resourceTags") => map(),
        optional("securityGroupIds") => list(String.t() | atom()),
        optional("snsTopicArn") => String.t() | atom(),
        optional("subnetId") => String.t() | atom(),
        optional("tags") => map(),
        optional("terminateInstanceOnFailure") => boolean(),
        required("clientToken") => String.t() | atom(),
        required("instanceProfileName") => String.t() | atom(),
        required("name") => String.t() | atom()
      }

  """
  @type create_infrastructure_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_component_request() :: %{
        required("componentBuildVersionArn") => String.t() | atom()
      }

  """
  @type delete_component_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_workflow_step_action_request() :: %{
        optional("reason") => String.t() | atom(),
        required("action") => list(any()),
        required("clientToken") => String.t() | atom(),
        required("imageBuildVersionArn") => String.t() | atom(),
        required("stepExecutionId") => String.t() | atom()
      }

  """
  @type send_workflow_step_action_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ecr_configuration() :: %{
        "containerTags" => list(String.t() | atom()),
        "repositoryName" => String.t() | atom()
      }

  """
  @type ecr_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_lifecycle_execution_response() :: %{
        "lifecycleExecution" => lifecycle_execution()
      }

  """
  @type get_lifecycle_execution_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_component_response() :: %{
        "component" => component(),
        "requestId" => String.t() | atom()
      }

  """
  @type get_component_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image_scan_findings_filter() :: %{
        "name" => String.t() | atom(),
        "values" => list(String.t() | atom())
      }

  """
  @type image_scan_findings_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_image_recipe_request() :: %{
        optional("additionalInstanceConfiguration") => additional_instance_configuration(),
        optional("blockDeviceMappings") => list(instance_block_device_mapping()),
        optional("description") => String.t() | atom(),
        optional("tags") => map(),
        optional("workingDirectory") => String.t() | atom(),
        required("clientToken") => String.t() | atom(),
        required("components") => list(component_configuration()),
        required("name") => String.t() | atom(),
        required("parentImage") => String.t() | atom(),
        required("semanticVersion") => String.t() | atom()
      }

  """
  @type create_image_recipe_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_container_recipe_policy_request() :: %{
        required("containerRecipeArn") => String.t() | atom()
      }

  """
  @type get_container_recipe_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_container_recipes_response() :: %{
        "containerRecipeSummaryList" => list(container_recipe_summary()),
        "nextToken" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type list_container_recipes_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_infrastructure_configuration_response() :: %{
        "infrastructureConfiguration" => infrastructure_configuration(),
        "requestId" => String.t() | atom()
      }

  """
  @type get_infrastructure_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_image_creation_request() :: %{
        required("clientToken") => String.t() | atom(),
        required("imageBuildVersionArn") => String.t() | atom()
      }

  """
  @type cancel_image_creation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_component_build_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("componentVersionArn") => String.t() | atom()
      }

  """
  @type list_component_build_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_component_request() :: %{
        optional("changeDescription") => String.t() | atom(),
        optional("data") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("kmsKeyId") => String.t() | atom(),
        optional("tags") => map(),
        optional("uri") => String.t() | atom(),
        required("clientToken") => String.t() | atom(),
        required("format") => list(any()),
        required("name") => String.t() | atom(),
        required("platform") => list(any()),
        required("semanticVersion") => String.t() | atom(),
        required("type") => list(any())
      }

  """
  @type import_component_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      call_rate_limit_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type call_rate_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      component_summary() :: %{
        "arn" => String.t() | atom(),
        "changeDescription" => String.t() | atom(),
        "dateCreated" => String.t() | atom(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "obfuscate" => boolean(),
        "owner" => String.t() | atom(),
        "platform" => list(any()),
        "publisher" => String.t() | atom(),
        "state" => component_state(),
        "supportedOsVersions" => list(String.t() | atom()),
        "tags" => map(),
        "type" => list(any()),
        "version" => String.t() | atom()
      }

  """
  @type component_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      target_container_repository() :: %{
        "repositoryName" => String.t() | atom(),
        "service" => list(any())
      }

  """
  @type target_container_repository() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_distribution_configuration_request() :: %{
        optional("description") => String.t() | atom(),
        optional("tags") => map(),
        required("clientToken") => String.t() | atom(),
        required("distributions") => list(distribution()),
        required("name") => String.t() | atom()
      }

  """
  @type create_distribution_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_container_recipe_response() :: %{
        "containerRecipeArn" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type delete_container_recipe_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workflow_execution_metadata() :: %{
        "endTime" => String.t() | atom(),
        "message" => String.t() | atom(),
        "parallelGroup" => String.t() | atom(),
        "startTime" => String.t() | atom(),
        "status" => list(any()),
        "totalStepCount" => integer(),
        "totalStepsFailed" => integer(),
        "totalStepsSkipped" => integer(),
        "totalStepsSucceeded" => integer(),
        "type" => list(any()),
        "workflowBuildVersionArn" => String.t() | atom(),
        "workflowExecutionId" => String.t() | atom()
      }

  """
  @type workflow_execution_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      component_state() :: %{
        "reason" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type component_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workflow_request() :: %{
        required("workflowBuildVersionArn") => String.t() | atom()
      }

  """
  @type get_workflow_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      severity_counts() :: %{
        "all" => float(),
        "critical" => float(),
        "high" => float(),
        "medium" => float()
      }

  """
  @type severity_counts() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_parameter_combination_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type invalid_parameter_combination_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_container_recipe_request() :: %{
        required("containerRecipeArn") => String.t() | atom()
      }

  """
  @type delete_container_recipe_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image_scan_finding_aggregation() :: %{
        "accountAggregation" => account_aggregation(),
        "imageAggregation" => image_aggregation(),
        "imagePipelineAggregation" => image_pipeline_aggregation(),
        "vulnerabilityIdAggregation" => vulnerability_id_aggregation()
      }

  """
  @type image_scan_finding_aggregation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image_version() :: %{
        "arn" => String.t() | atom(),
        "buildType" => list(any()),
        "dateCreated" => String.t() | atom(),
        "imageSource" => list(any()),
        "name" => String.t() | atom(),
        "osVersion" => String.t() | atom(),
        "owner" => String.t() | atom(),
        "platform" => list(any()),
        "type" => list(any()),
        "version" => String.t() | atom()
      }

  """
  @type image_version() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workflow_step_execution_request() :: %{
        required("stepExecutionId") => String.t() | atom()
      }

  """
  @type get_workflow_step_execution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_resource_state_update_response() :: %{
        "lifecycleExecutionId" => String.t() | atom(),
        "resourceArn" => String.t() | atom()
      }

  """
  @type start_resource_state_update_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_image_pipeline_request() :: %{
        required("imagePipelineArn") => String.t() | atom()
      }

  """
  @type delete_image_pipeline_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workflow_parameter() :: %{
        "name" => String.t() | atom(),
        "value" => list(String.t() | atom())
      }

  """
  @type workflow_parameter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_image_request() :: %{
        required("imageBuildVersionArn") => String.t() | atom()
      }

  """
  @type get_image_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workflow_step_execution() :: %{
        "action" => String.t() | atom(),
        "imageBuildVersionArn" => String.t() | atom(),
        "name" => String.t() | atom(),
        "startTime" => String.t() | atom(),
        "stepExecutionId" => String.t() | atom(),
        "workflowBuildVersionArn" => String.t() | atom(),
        "workflowExecutionId" => String.t() | atom()
      }

  """
  @type workflow_step_execution() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_distribution_configurations_response() :: %{
        "distributionConfigurationSummaryList" => list(distribution_configuration_summary()),
        "nextToken" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type list_distribution_configurations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_image_policy_response() :: %{
        "policy" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type get_image_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_component_response() :: %{
        "clientToken" => String.t() | atom(),
        "componentBuildVersionArn" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type create_component_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_workflow_response() :: %{
        "workflowBuildVersionArn" => String.t() | atom()
      }

  """
  @type delete_workflow_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_lifecycle_policy_response() :: %{
        "lifecyclePolicyArn" => String.t() | atom()
      }

  """
  @type delete_lifecycle_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lifecycle_execution_resource() :: %{
        "accountId" => String.t() | atom(),
        "action" => lifecycle_execution_resource_action(),
        "endTime" => non_neg_integer(),
        "imageUris" => list(String.t() | atom()),
        "region" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "snapshots" => list(lifecycle_execution_snapshot_resource()),
        "startTime" => non_neg_integer(),
        "state" => lifecycle_execution_resource_state()
      }

  """
  @type lifecycle_execution_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_distribution_configuration_request() :: %{
        required("distributionConfigurationArn") => String.t() | atom()
      }

  """
  @type delete_distribution_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_image_recipe_request() :: %{
        required("imageRecipeArn") => String.t() | atom()
      }

  """
  @type get_image_recipe_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      systems_manager_agent() :: %{
        "uninstallAfterBuild" => boolean()
      }

  """
  @type systems_manager_agent() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_image_recipe_response() :: %{
        "clientToken" => String.t() | atom(),
        "imageRecipeArn" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type create_image_recipe_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lifecycle_policy_detail() :: %{
        "action" => lifecycle_policy_detail_action(),
        "exclusionRules" => lifecycle_policy_detail_exclusion_rules(),
        "filter" => lifecycle_policy_detail_filter()
      }

  """
  @type lifecycle_policy_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_image_recipe_request() :: %{
        required("imageRecipeArn") => String.t() | atom()
      }

  """
  @type delete_image_recipe_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_export_configuration() :: %{
        "diskImageFormat" => list(any()),
        "roleName" => String.t() | atom(),
        "s3Bucket" => String.t() | atom(),
        "s3Prefix" => String.t() | atom()
      }

  """
  @type s3_export_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      client_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type client_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_infrastructure_configuration_request() :: %{
        optional("description") => String.t() | atom(),
        optional("instanceMetadataOptions") => instance_metadata_options(),
        optional("instanceTypes") => list(String.t() | atom()),
        optional("keyPair") => String.t() | atom(),
        optional("logging") => logging(),
        optional("placement") => placement(),
        optional("resourceTags") => map(),
        optional("securityGroupIds") => list(String.t() | atom()),
        optional("snsTopicArn") => String.t() | atom(),
        optional("subnetId") => String.t() | atom(),
        optional("terminateInstanceOnFailure") => boolean(),
        required("clientToken") => String.t() | atom(),
        required("infrastructureConfigurationArn") => String.t() | atom(),
        required("instanceProfileName") => String.t() | atom()
      }

  """
  @type update_infrastructure_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_components_request() :: %{
        optional("byName") => boolean(),
        optional("filters") => list(filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("owner") => list(any())
      }

  """
  @type list_components_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_workflow_executions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("imageBuildVersionArn") => String.t() | atom()
      }

  """
  @type list_workflow_executions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lifecycle_policy_summary() :: %{
        "arn" => String.t() | atom(),
        "dateCreated" => non_neg_integer(),
        "dateLastRun" => non_neg_integer(),
        "dateUpdated" => non_neg_integer(),
        "description" => String.t() | atom(),
        "executionRole" => String.t() | atom(),
        "name" => String.t() | atom(),
        "resourceType" => list(any()),
        "status" => list(any()),
        "tags" => map()
      }

  """
  @type lifecycle_policy_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_logs() :: %{
        "s3BucketName" => String.t() | atom(),
        "s3KeyPrefix" => String.t() | atom()
      }

  """
  @type s3_logs() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_container_recipe_request() :: %{
        optional("description") => String.t() | atom(),
        optional("dockerfileTemplateData") => String.t() | atom(),
        optional("dockerfileTemplateUri") => String.t() | atom(),
        optional("imageOsVersionOverride") => String.t() | atom(),
        optional("instanceConfiguration") => instance_configuration(),
        optional("kmsKeyId") => String.t() | atom(),
        optional("platformOverride") => list(any()),
        optional("tags") => map(),
        optional("workingDirectory") => String.t() | atom(),
        required("clientToken") => String.t() | atom(),
        required("components") => list(component_configuration()),
        required("containerType") => list(any()),
        required("name") => String.t() | atom(),
        required("parentImage") => String.t() | atom(),
        required("semanticVersion") => String.t() | atom(),
        required("targetRepository") => target_container_repository()
      }

  """
  @type create_container_recipe_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_component_policy_request() :: %{
        required("componentArn") => String.t() | atom(),
        required("policy") => String.t() | atom()
      }

  """
  @type put_component_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type invalid_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_disk_image_response() :: %{
        "clientToken" => String.t() | atom(),
        "imageBuildVersionArn" => String.t() | atom()
      }

  """
  @type import_disk_image_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_image_request() :: %{
        optional("containerRecipeArn") => String.t() | atom(),
        optional("distributionConfigurationArn") => String.t() | atom(),
        optional("enhancedImageMetadataEnabled") => boolean(),
        optional("executionRole") => String.t() | atom(),
        optional("imageRecipeArn") => String.t() | atom(),
        optional("imageScanningConfiguration") => image_scanning_configuration(),
        optional("imageTestsConfiguration") => image_tests_configuration(),
        optional("tags") => map(),
        optional("workflows") => list(workflow_configuration()),
        required("clientToken") => String.t() | atom(),
        required("infrastructureConfigurationArn") => String.t() | atom()
      }

  """
  @type create_image_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_image_pipeline_response() :: %{
        "imagePipeline" => image_pipeline(),
        "requestId" => String.t() | atom()
      }

  """
  @type get_image_pipeline_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_lifecycle_policies_response() :: %{
        "lifecyclePolicySummaryList" => list(lifecycle_policy_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_lifecycle_policies_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_images_request() :: %{
        optional("byName") => boolean(),
        optional("filters") => list(filter()),
        optional("includeDeprecated") => boolean(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("owner") => list(any())
      }

  """
  @type list_images_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      component() :: %{
        "arn" => String.t() | atom(),
        "changeDescription" => String.t() | atom(),
        "data" => String.t() | atom(),
        "dateCreated" => String.t() | atom(),
        "description" => String.t() | atom(),
        "encrypted" => boolean(),
        "kmsKeyId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "obfuscate" => boolean(),
        "owner" => String.t() | atom(),
        "parameters" => list(component_parameter_detail()),
        "platform" => list(any()),
        "productCodes" => list(product_code_list_item()),
        "publisher" => String.t() | atom(),
        "state" => component_state(),
        "supportedOsVersions" => list(String.t() | atom()),
        "tags" => map(),
        "type" => list(any()),
        "version" => String.t() | atom()
      }

  """
  @type component() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_state_update_include_resources() :: %{
        "amis" => boolean(),
        "containers" => boolean(),
        "snapshots" => boolean()
      }

  """
  @type resource_state_update_include_resources() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_workflow_step_action_response() :: %{
        "clientToken" => String.t() | atom(),
        "imageBuildVersionArn" => String.t() | atom(),
        "stepExecutionId" => String.t() | atom()
      }

  """
  @type send_workflow_step_action_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      idempotent_parameter_mismatch_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type idempotent_parameter_mismatch_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_parameter_value_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type invalid_parameter_value_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_image_recipe_policy_request() :: %{
        required("imageRecipeArn") => String.t() | atom(),
        required("policy") => String.t() | atom()
      }

  """
  @type put_image_recipe_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_component_policy_response() :: %{
        "policy" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type get_component_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_workflows_request() :: %{
        optional("byName") => boolean(),
        optional("filters") => list(filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("owner") => list(any())
      }

  """
  @type list_workflows_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_container_recipe_request() :: %{
        required("containerRecipeArn") => String.t() | atom()
      }

  """
  @type get_container_recipe_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      distribution_configuration() :: %{
        "arn" => String.t() | atom(),
        "dateCreated" => String.t() | atom(),
        "dateUpdated" => String.t() | atom(),
        "description" => String.t() | atom(),
        "distributions" => list(distribution()),
        "name" => String.t() | atom(),
        "tags" => map(),
        "timeoutMinutes" => integer()
      }

  """
  @type distribution_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lifecycle_execution_resource_state() :: %{
        "reason" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type lifecycle_execution_resource_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_marketplace_resource_response() :: %{
        "data" => String.t() | atom(),
        "resourceArn" => String.t() | atom(),
        "url" => String.t() | atom()
      }

  """
  @type get_marketplace_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workflow() :: %{
        "arn" => String.t() | atom(),
        "changeDescription" => String.t() | atom(),
        "data" => String.t() | atom(),
        "dateCreated" => String.t() | atom(),
        "description" => String.t() | atom(),
        "kmsKeyId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "owner" => String.t() | atom(),
        "parameters" => list(workflow_parameter_detail()),
        "state" => workflow_state(),
        "tags" => map(),
        "type" => list(any()),
        "version" => String.t() | atom()
      }

  """
  @type workflow() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cvss_score_details() :: %{
        "adjustments" => list(cvss_score_adjustment()),
        "cvssSource" => String.t() | atom(),
        "score" => float(),
        "scoreSource" => String.t() | atom(),
        "scoringVector" => String.t() | atom(),
        "version" => String.t() | atom()
      }

  """
  @type cvss_score_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_image_pipelines_request() :: %{
        optional("filters") => list(filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_image_pipelines_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      distribution() :: %{
        "amiDistributionConfiguration" => ami_distribution_configuration(),
        "containerDistributionConfiguration" => container_distribution_configuration(),
        "fastLaunchConfigurations" => list(fast_launch_configuration()),
        "launchTemplateConfigurations" => list(launch_template_configuration()),
        "licenseConfigurationArns" => list(String.t() | atom()),
        "region" => String.t() | atom(),
        "s3ExportConfiguration" => s3_export_configuration(),
        "ssmParameterConfigurations" => list(ssm_parameter_configuration())
      }

  """
  @type distribution() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_image_scan_findings_response() :: %{
        "findings" => list(image_scan_finding()),
        "nextToken" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type list_image_scan_findings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_image_recipe_response() :: %{
        "imageRecipeArn" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type delete_image_recipe_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remediation_recommendation() :: %{
        "text" => String.t() | atom(),
        "url" => String.t() | atom()
      }

  """
  @type remediation_recommendation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type service_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      inspector_score_details() :: %{
        "adjustedCvss" => cvss_score_details()
      }

  """
  @type inspector_score_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_component_request() :: %{
        optional("changeDescription") => String.t() | atom(),
        optional("data") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("kmsKeyId") => String.t() | atom(),
        optional("supportedOsVersions") => list(String.t() | atom()),
        optional("tags") => map(),
        optional("uri") => String.t() | atom(),
        required("clientToken") => String.t() | atom(),
        required("name") => String.t() | atom(),
        required("platform") => list(any()),
        required("semanticVersion") => String.t() | atom()
      }

  """
  @type create_component_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vulnerable_package() :: %{
        "arch" => String.t() | atom(),
        "epoch" => integer(),
        "filePath" => String.t() | atom(),
        "fixedInVersion" => String.t() | atom(),
        "name" => String.t() | atom(),
        "packageManager" => String.t() | atom(),
        "release" => String.t() | atom(),
        "remediation" => String.t() | atom(),
        "sourceLayerHash" => String.t() | atom(),
        "version" => String.t() | atom()
      }

  """
  @type vulnerable_package() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_distribution_configuration_request() :: %{
        optional("description") => String.t() | atom(),
        required("clientToken") => String.t() | atom(),
        required("distributionConfigurationArn") => String.t() | atom(),
        required("distributions") => list(distribution())
      }

  """
  @type update_distribution_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_state_update_exclusion_rules() :: %{
        "amis" => lifecycle_policy_detail_exclusion_rules_amis()
      }

  """
  @type resource_state_update_exclusion_rules() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cvss_score_adjustment() :: %{
        "metric" => String.t() | atom(),
        "reason" => String.t() | atom()
      }

  """
  @type cvss_score_adjustment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lifecycle_execution_snapshot_resource() :: %{
        "snapshotId" => String.t() | atom(),
        "state" => lifecycle_execution_resource_state()
      }

  """
  @type lifecycle_execution_snapshot_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_infrastructure_configurations_response() :: %{
        "infrastructureConfigurationSummaryList" => list(infrastructure_configuration_summary()),
        "nextToken" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type list_infrastructure_configurations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      container_recipe_summary() :: %{
        "arn" => String.t() | atom(),
        "containerType" => list(any()),
        "dateCreated" => String.t() | atom(),
        "name" => String.t() | atom(),
        "owner" => String.t() | atom(),
        "parentImage" => String.t() | atom(),
        "platform" => list(any()),
        "tags" => map()
      }

  """
  @type container_recipe_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workflow_execution_request() :: %{
        required("workflowExecutionId") => String.t() | atom()
      }

  """
  @type get_workflow_execution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_lifecycle_executions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("resourceArn") => String.t() | atom()
      }

  """
  @type list_lifecycle_executions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type service_unavailable_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      component_version() :: %{
        "arn" => String.t() | atom(),
        "dateCreated" => String.t() | atom(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "owner" => String.t() | atom(),
        "platform" => list(any()),
        "productCodes" => list(product_code_list_item()),
        "status" => list(any()),
        "supportedOsVersions" => list(String.t() | atom()),
        "type" => list(any()),
        "version" => String.t() | atom()
      }

  """
  @type component_version() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_lifecycle_policy_response() :: %{
        "clientToken" => String.t() | atom(),
        "lifecyclePolicyArn" => String.t() | atom()
      }

  """
  @type create_lifecycle_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_image_policy_request() :: %{
        required("imageArn") => String.t() | atom(),
        required("policy") => String.t() | atom()
      }

  """
  @type put_image_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_distribution_configuration_request() :: %{
        required("distributionConfigurationArn") => String.t() | atom()
      }

  """
  @type get_distribution_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_component_response() :: %{
        "clientToken" => String.t() | atom(),
        "componentBuildVersionArn" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type import_component_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_image_pipeline_request() :: %{
        optional("containerRecipeArn") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("distributionConfigurationArn") => String.t() | atom(),
        optional("enhancedImageMetadataEnabled") => boolean(),
        optional("executionRole") => String.t() | atom(),
        optional("imageRecipeArn") => String.t() | atom(),
        optional("imageScanningConfiguration") => image_scanning_configuration(),
        optional("imageTestsConfiguration") => image_tests_configuration(),
        optional("schedule") => schedule(),
        optional("status") => list(any()),
        optional("tags") => map(),
        optional("workflows") => list(workflow_configuration()),
        required("clientToken") => String.t() | atom(),
        required("infrastructureConfigurationArn") => String.t() | atom(),
        required("name") => String.t() | atom()
      }

  """
  @type create_image_pipeline_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lifecycle_policy_detail_filter() :: %{
        "retainAtLeast" => integer(),
        "type" => list(any()),
        "unit" => list(any()),
        "value" => integer()
      }

  """
  @type lifecycle_policy_detail_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter() :: %{
        "name" => String.t() | atom(),
        "values" => list(String.t() | atom())
      }

  """
  @type filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      placement() :: %{
        "availabilityZone" => String.t() | atom(),
        "hostId" => String.t() | atom(),
        "hostResourceGroupArn" => String.t() | atom(),
        "tenancy" => list(any())
      }

  """
  @type placement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_distribution_configuration_response() :: %{
        "clientToken" => String.t() | atom(),
        "distributionConfigurationArn" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type create_distribution_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_distribution_configuration_response() :: %{
        "distributionConfigurationArn" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type delete_distribution_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_images_response() :: %{
        "imageVersionList" => list(image_version()),
        "nextToken" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type list_images_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_lifecycle_executions_response() :: %{
        "lifecycleExecutions" => list(lifecycle_execution()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_lifecycle_executions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_component_build_versions_response() :: %{
        "componentSummaryList" => list(component_summary()),
        "nextToken" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type list_component_build_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_image_packages_response() :: %{
        "imagePackageList" => list(image_package()),
        "nextToken" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type list_image_packages_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workflow_summary() :: %{
        "arn" => String.t() | atom(),
        "changeDescription" => String.t() | atom(),
        "dateCreated" => String.t() | atom(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "owner" => String.t() | atom(),
        "state" => workflow_state(),
        "tags" => map(),
        "type" => list(any()),
        "version" => String.t() | atom()
      }

  """
  @type workflow_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image_tests_configuration() :: %{
        "imageTestsEnabled" => boolean(),
        "timeoutMinutes" => integer()
      }

  """
  @type image_tests_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_container_recipes_request() :: %{
        optional("filters") => list(filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("owner") => list(any())
      }

  """
  @type list_container_recipes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_image_build_versions_request() :: %{
        optional("filters") => list(filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("imageVersionArn") => String.t() | atom()
      }

  """
  @type list_image_build_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_component_response() :: %{
        "componentBuildVersionArn" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type delete_component_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      additional_instance_configuration() :: %{
        "systemsManagerAgent" => systems_manager_agent(),
        "userDataOverride" => String.t() | atom()
      }

  """
  @type additional_instance_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_infrastructure_configuration_request() :: %{
        required("infrastructureConfigurationArn") => String.t() | atom()
      }

  """
  @type get_infrastructure_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_image_request() :: %{
        required("imageBuildVersionArn") => String.t() | atom()
      }

  """
  @type delete_image_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lifecycle_execution_resources_impacted_summary() :: %{
        "hasImpactedResources" => boolean()
      }

  """
  @type lifecycle_execution_resources_impacted_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image_recipe() :: %{
        "additionalInstanceConfiguration" => additional_instance_configuration(),
        "arn" => String.t() | atom(),
        "blockDeviceMappings" => list(instance_block_device_mapping()),
        "components" => list(component_configuration()),
        "dateCreated" => String.t() | atom(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "owner" => String.t() | atom(),
        "parentImage" => String.t() | atom(),
        "platform" => list(any()),
        "tags" => map(),
        "type" => list(any()),
        "version" => String.t() | atom(),
        "workingDirectory" => String.t() | atom()
      }

  """
  @type image_recipe() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      fast_launch_snapshot_configuration() :: %{
        "targetResourceCount" => integer()
      }

  """
  @type fast_launch_snapshot_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lifecycle_policy() :: %{
        "arn" => String.t() | atom(),
        "dateCreated" => non_neg_integer(),
        "dateLastRun" => non_neg_integer(),
        "dateUpdated" => non_neg_integer(),
        "description" => String.t() | atom(),
        "executionRole" => String.t() | atom(),
        "name" => String.t() | atom(),
        "policyDetails" => list(lifecycle_policy_detail()),
        "resourceSelection" => lifecycle_policy_resource_selection(),
        "resourceType" => list(any()),
        "status" => list(any()),
        "tags" => map()
      }

  """
  @type lifecycle_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_component_policy_response() :: %{
        "componentArn" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type put_component_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workflow_execution_response() :: %{
        "endTime" => String.t() | atom(),
        "imageBuildVersionArn" => String.t() | atom(),
        "message" => String.t() | atom(),
        "parallelGroup" => String.t() | atom(),
        "requestId" => String.t() | atom(),
        "startTime" => String.t() | atom(),
        "status" => list(any()),
        "totalStepCount" => integer(),
        "totalStepsFailed" => integer(),
        "totalStepsSkipped" => integer(),
        "totalStepsSucceeded" => integer(),
        "type" => list(any()),
        "workflowBuildVersionArn" => String.t() | atom(),
        "workflowExecutionId" => String.t() | atom()
      }

  """
  @type get_workflow_execution_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      schedule() :: %{
        "pipelineExecutionStartCondition" => list(any()),
        "scheduleExpression" => String.t() | atom(),
        "timezone" => String.t() | atom()
      }

  """
  @type schedule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_image_scan_findings_request() :: %{
        optional("filters") => list(image_scan_findings_filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_image_scan_findings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lifecycle_policy_resource_selection() :: %{
        "recipes" => list(lifecycle_policy_resource_selection_recipe()),
        "tagMap" => map()
      }

  """
  @type lifecycle_policy_resource_selection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_lifecycle_policy_request() :: %{
        required("lifecyclePolicyArn") => String.t() | atom()
      }

  """
  @type delete_lifecycle_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image_scan_finding() :: %{
        "awsAccountId" => String.t() | atom(),
        "description" => String.t() | atom(),
        "firstObservedAt" => non_neg_integer(),
        "fixAvailable" => String.t() | atom(),
        "imageBuildVersionArn" => String.t() | atom(),
        "imagePipelineArn" => String.t() | atom(),
        "inspectorScore" => float(),
        "inspectorScoreDetails" => inspector_score_details(),
        "packageVulnerabilityDetails" => package_vulnerability_details(),
        "remediation" => remediation(),
        "severity" => String.t() | atom(),
        "title" => String.t() | atom(),
        "type" => String.t() | atom(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type image_scan_finding() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_marketplace_resource_request() :: %{
        optional("resourceLocation") => String.t() | atom(),
        required("resourceArn") => String.t() | atom(),
        required("resourceType") => list(any())
      }

  """
  @type get_marketplace_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_workflow_step_executions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("workflowExecutionId") => String.t() | atom()
      }

  """
  @type list_workflow_step_executions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_image_recipe_policy_request() :: %{
        required("imageRecipeArn") => String.t() | atom()
      }

  """
  @type get_image_recipe_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_aggregation() :: %{
        "accountId" => String.t() | atom(),
        "severityCounts" => severity_counts()
      }

  """
  @type account_aggregation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      output_resources() :: %{
        "amis" => list(ami()),
        "containers" => list(container())
      }

  """
  @type output_resources() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_image_creation_response() :: %{
        "clientToken" => String.t() | atom(),
        "imageBuildVersionArn" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type cancel_image_creation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image() :: %{
        "arn" => String.t() | atom(),
        "buildType" => list(any()),
        "containerRecipe" => container_recipe(),
        "dateCreated" => String.t() | atom(),
        "deprecationTime" => non_neg_integer(),
        "distributionConfiguration" => distribution_configuration(),
        "enhancedImageMetadataEnabled" => boolean(),
        "executionRole" => String.t() | atom(),
        "imageRecipe" => image_recipe(),
        "imageScanningConfiguration" => image_scanning_configuration(),
        "imageSource" => list(any()),
        "imageTestsConfiguration" => image_tests_configuration(),
        "infrastructureConfiguration" => infrastructure_configuration(),
        "lifecycleExecutionId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "osVersion" => String.t() | atom(),
        "outputResources" => output_resources(),
        "platform" => list(any()),
        "scanState" => image_scan_state(),
        "sourcePipelineArn" => String.t() | atom(),
        "sourcePipelineName" => String.t() | atom(),
        "state" => image_state(),
        "tags" => map(),
        "type" => list(any()),
        "version" => String.t() | atom(),
        "workflows" => list(workflow_configuration())
      }

  """
  @type image() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_image_pipeline_response() :: %{
        "imagePipelineArn" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type delete_image_pipeline_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_image_pipeline_request() :: %{
        required("imagePipelineArn") => String.t() | atom()
      }

  """
  @type get_image_pipeline_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      product_code_list_item() :: %{
        "productCodeId" => String.t() | atom(),
        "productCodeType" => list(any())
      }

  """
  @type product_code_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_workflow_response() :: %{
        "clientToken" => String.t() | atom(),
        "workflowBuildVersionArn" => String.t() | atom()
      }

  """
  @type create_workflow_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_image_policy_response() :: %{
        "imageArn" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type put_image_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      package_vulnerability_details() :: %{
        "cvss" => list(cvss_score()),
        "referenceUrls" => list(String.t() | atom()),
        "relatedVulnerabilities" => list(String.t() | atom()),
        "source" => String.t() | atom(),
        "sourceUrl" => String.t() | atom(),
        "vendorCreatedAt" => non_neg_integer(),
        "vendorSeverity" => String.t() | atom(),
        "vendorUpdatedAt" => non_neg_integer(),
        "vulnerabilityId" => String.t() | atom(),
        "vulnerablePackages" => list(vulnerable_package())
      }

  """
  @type package_vulnerability_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cvss_score() :: %{
        "baseScore" => float(),
        "scoringVector" => String.t() | atom(),
        "source" => String.t() | atom(),
        "version" => String.t() | atom()
      }

  """
  @type cvss_score() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      instance_metadata_options() :: %{
        "httpPutResponseHopLimit" => integer(),
        "httpTokens" => String.t() | atom()
      }

  """
  @type instance_metadata_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_infrastructure_configuration_response() :: %{
        "clientToken" => String.t() | atom(),
        "infrastructureConfigurationArn" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type update_infrastructure_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_parameter_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type invalid_parameter_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      fast_launch_launch_template_specification() :: %{
        "launchTemplateId" => String.t() | atom(),
        "launchTemplateName" => String.t() | atom(),
        "launchTemplateVersion" => String.t() | atom()
      }

  """
  @type fast_launch_launch_template_specification() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_workflow_build_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        required("workflowVersionArn") => String.t() | atom()
      }

  """
  @type list_workflow_build_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_vm_image_response() :: %{
        "clientToken" => String.t() | atom(),
        "imageArn" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type import_vm_image_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_infrastructure_configuration_request() :: %{
        required("infrastructureConfigurationArn") => String.t() | atom()
      }

  """
  @type delete_infrastructure_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ssm_parameter_configuration() :: %{
        "amiAccountId" => String.t() | atom(),
        "dataType" => list(any()),
        "parameterName" => String.t() | atom()
      }

  """
  @type ssm_parameter_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_image_scan_finding_aggregations_response() :: %{
        "aggregationType" => String.t() | atom(),
        "nextToken" => String.t() | atom(),
        "requestId" => String.t() | atom(),
        "responses" => list(image_scan_finding_aggregation())
      }

  """
  @type list_image_scan_finding_aggregations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      image_recipe_summary() :: %{
        "arn" => String.t() | atom(),
        "dateCreated" => String.t() | atom(),
        "name" => String.t() | atom(),
        "owner" => String.t() | atom(),
        "parentImage" => String.t() | atom(),
        "platform" => list(any()),
        "tags" => map()
      }

  """
  @type image_recipe_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      fast_launch_configuration() :: %{
        "accountId" => String.t() | atom(),
        "enabled" => boolean(),
        "launchTemplate" => fast_launch_launch_template_specification(),
        "maxParallelLaunches" => integer(),
        "snapshotConfiguration" => fast_launch_snapshot_configuration()
      }

  """
  @type fast_launch_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ami_distribution_configuration() :: %{
        "amiTags" => map(),
        "description" => String.t() | atom(),
        "kmsKeyId" => String.t() | atom(),
        "launchPermission" => launch_permission_configuration(),
        "name" => String.t() | atom(),
        "targetAccountIds" => list(String.t() | atom())
      }

  """
  @type ami_distribution_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      component_configuration() :: %{
        "componentArn" => String.t() | atom(),
        "parameters" => list(component_parameter())
      }

  """
  @type component_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      instance_configuration() :: %{
        "blockDeviceMappings" => list(instance_block_device_mapping()),
        "image" => String.t() | atom()
      }

  """
  @type instance_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_infrastructure_configuration_response() :: %{
        "clientToken" => String.t() | atom(),
        "infrastructureConfigurationArn" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type create_infrastructure_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      container_distribution_configuration() :: %{
        "containerTags" => list(String.t() | atom()),
        "description" => String.t() | atom(),
        "targetRepository" => target_container_repository()
      }

  """
  @type container_distribution_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_lifecycle_policy_request() :: %{
        required("lifecyclePolicyArn") => String.t() | atom()
      }

  """
  @type get_lifecycle_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image_aggregation() :: %{
        "imageBuildVersionArn" => String.t() | atom(),
        "severityCounts" => severity_counts()
      }

  """
  @type image_aggregation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      get_container_recipe_policy_response() :: %{
        "policy" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type get_container_recipe_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_container_recipe_response() :: %{
        "clientToken" => String.t() | atom(),
        "containerRecipeArn" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type create_container_recipe_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      container_recipe() :: %{
        "arn" => String.t() | atom(),
        "components" => list(component_configuration()),
        "containerType" => list(any()),
        "dateCreated" => String.t() | atom(),
        "description" => String.t() | atom(),
        "dockerfileTemplateData" => String.t() | atom(),
        "encrypted" => boolean(),
        "instanceConfiguration" => instance_configuration(),
        "kmsKeyId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "owner" => String.t() | atom(),
        "parentImage" => String.t() | atom(),
        "platform" => list(any()),
        "tags" => map(),
        "targetRepository" => target_container_repository(),
        "version" => String.t() | atom(),
        "workingDirectory" => String.t() | atom()
      }

  """
  @type container_recipe() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_lifecycle_policy_request() :: %{
        optional("description") => String.t() | atom(),
        optional("status") => list(any()),
        optional("tags") => map(),
        required("clientToken") => String.t() | atom(),
        required("executionRole") => String.t() | atom(),
        required("name") => String.t() | atom(),
        required("policyDetails") => list(lifecycle_policy_detail()),
        required("resourceSelection") => lifecycle_policy_resource_selection(),
        required("resourceType") => list(any())
      }

  """
  @type create_lifecycle_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_dependency_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type resource_dependency_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lifecycle_execution_state() :: %{
        "reason" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type lifecycle_execution_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image_package() :: %{
        "packageName" => String.t() | atom(),
        "packageVersion" => String.t() | atom()
      }

  """
  @type image_package() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_image_response() :: %{
        "imageBuildVersionArn" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type delete_image_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lifecycle_execution() :: %{
        "endTime" => non_neg_integer(),
        "lifecycleExecutionId" => String.t() | atom(),
        "lifecyclePolicyArn" => String.t() | atom(),
        "resourcesImpactedSummary" => lifecycle_execution_resources_impacted_summary(),
        "startTime" => non_neg_integer(),
        "state" => lifecycle_execution_state()
      }

  """
  @type lifecycle_execution() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_components_response() :: %{
        "componentVersionList" => list(component_version()),
        "nextToken" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type list_components_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lifecycle_policy_resource_selection_recipe() :: %{
        "name" => String.t() | atom(),
        "semanticVersion" => String.t() | atom()
      }

  """
  @type lifecycle_policy_resource_selection_recipe() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workflow_step_metadata() :: %{
        "action" => String.t() | atom(),
        "description" => String.t() | atom(),
        "endTime" => String.t() | atom(),
        "inputs" => String.t() | atom(),
        "message" => String.t() | atom(),
        "name" => String.t() | atom(),
        "outputs" => String.t() | atom(),
        "rollbackStatus" => list(any()),
        "startTime" => String.t() | atom(),
        "status" => list(any()),
        "stepExecutionId" => String.t() | atom()
      }

  """
  @type workflow_step_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_image_build_versions_response() :: %{
        "imageSummaryList" => list(image_summary()),
        "nextToken" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type list_image_build_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_image_pipeline_request() :: %{
        optional("containerRecipeArn") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("distributionConfigurationArn") => String.t() | atom(),
        optional("enhancedImageMetadataEnabled") => boolean(),
        optional("executionRole") => String.t() | atom(),
        optional("imageRecipeArn") => String.t() | atom(),
        optional("imageScanningConfiguration") => image_scanning_configuration(),
        optional("imageTestsConfiguration") => image_tests_configuration(),
        optional("schedule") => schedule(),
        optional("status") => list(any()),
        optional("workflows") => list(workflow_configuration()),
        required("clientToken") => String.t() | atom(),
        required("imagePipelineArn") => String.t() | atom(),
        required("infrastructureConfigurationArn") => String.t() | atom()
      }

  """
  @type update_image_pipeline_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_lifecycle_execution_resources_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("parentResourceId") => String.t() | atom(),
        required("lifecycleExecutionId") => String.t() | atom()
      }

  """
  @type list_lifecycle_execution_resources_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image_state() :: %{
        "reason" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type image_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_lifecycle_execution_request() :: %{
        required("clientToken") => String.t() | atom(),
        required("lifecycleExecutionId") => String.t() | atom()
      }

  """
  @type cancel_lifecycle_execution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workflow_configuration() :: %{
        "onFailure" => list(any()),
        "parallelGroup" => String.t() | atom(),
        "parameters" => list(workflow_parameter()),
        "workflowArn" => String.t() | atom()
      }

  """
  @type workflow_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_disk_image_request() :: %{
        optional("description") => String.t() | atom(),
        optional("executionRole") => String.t() | atom(),
        optional("tags") => map(),
        required("clientToken") => String.t() | atom(),
        required("infrastructureConfigurationArn") => String.t() | atom(),
        required("name") => String.t() | atom(),
        required("osVersion") => String.t() | atom(),
        required("platform") => String.t() | atom(),
        required("semanticVersion") => String.t() | atom(),
        required("uri") => String.t() | atom()
      }

  """
  @type import_disk_image_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workflow_state() :: %{
        "reason" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type workflow_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_infrastructure_configurations_request() :: %{
        optional("filters") => list(filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_infrastructure_configurations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image_summary() :: %{
        "arn" => String.t() | atom(),
        "buildType" => list(any()),
        "dateCreated" => String.t() | atom(),
        "deprecationTime" => non_neg_integer(),
        "imageSource" => list(any()),
        "lifecycleExecutionId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "osVersion" => String.t() | atom(),
        "outputResources" => output_resources(),
        "owner" => String.t() | atom(),
        "platform" => list(any()),
        "state" => image_state(),
        "tags" => map(),
        "type" => list(any()),
        "version" => String.t() | atom()
      }

  """
  @type image_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lifecycle_policy_detail_action() :: %{
        "includeResources" => lifecycle_policy_detail_action_include_resources(),
        "type" => list(any())
      }

  """
  @type lifecycle_policy_detail_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_image_recipes_response() :: %{
        "imageRecipeSummaryList" => list(image_recipe_summary()),
        "nextToken" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type list_image_recipes_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_already_exists_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type resource_already_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_waiting_workflow_steps_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_waiting_workflow_steps_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lifecycle_policy_detail_exclusion_rules_amis() :: %{
        "isPublic" => boolean(),
        "lastLaunched" => lifecycle_policy_detail_exclusion_rules_amis_last_launched(),
        "regions" => list(String.t() | atom()),
        "sharedAccounts" => list(String.t() | atom()),
        "tagMap" => map()
      }

  """
  @type lifecycle_policy_detail_exclusion_rules_amis() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      launch_template_configuration() :: %{
        "accountId" => String.t() | atom(),
        "launchTemplateId" => String.t() | atom(),
        "setDefaultVersion" => boolean()
      }

  """
  @type launch_template_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      infrastructure_configuration() :: %{
        "arn" => String.t() | atom(),
        "dateCreated" => String.t() | atom(),
        "dateUpdated" => String.t() | atom(),
        "description" => String.t() | atom(),
        "instanceMetadataOptions" => instance_metadata_options(),
        "instanceProfileName" => String.t() | atom(),
        "instanceTypes" => list(String.t() | atom()),
        "keyPair" => String.t() | atom(),
        "logging" => logging(),
        "name" => String.t() | atom(),
        "placement" => placement(),
        "resourceTags" => map(),
        "securityGroupIds" => list(String.t() | atom()),
        "snsTopicArn" => String.t() | atom(),
        "subnetId" => String.t() | atom(),
        "tags" => map(),
        "terminateInstanceOnFailure" => boolean()
      }

  """
  @type infrastructure_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_component_policy_request() :: %{
        required("componentArn") => String.t() | atom()
      }

  """
  @type get_component_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_workflows_response() :: %{
        "nextToken" => String.t() | atom(),
        "workflowVersionList" => list(workflow_version())
      }

  """
  @type list_workflows_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_image_pipeline_execution_request() :: %{
        required("clientToken") => String.t() | atom(),
        required("imagePipelineArn") => String.t() | atom()
      }

  """
  @type start_image_pipeline_execution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lifecycle_policy_detail_exclusion_rules_amis_last_launched() :: %{
        "unit" => list(any()),
        "value" => integer()
      }

  """
  @type lifecycle_policy_detail_exclusion_rules_amis_last_launched() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      image_pipeline_aggregation() :: %{
        "imagePipelineArn" => String.t() | atom(),
        "severityCounts" => severity_counts()
      }

  """
  @type image_pipeline_aggregation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_infrastructure_configuration_response() :: %{
        "infrastructureConfigurationArn" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type delete_infrastructure_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      component_parameter() :: %{
        "name" => String.t() | atom(),
        "value" => list(String.t() | atom())
      }

  """
  @type component_parameter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_image_recipe_response() :: %{
        "imageRecipe" => image_recipe(),
        "requestId" => String.t() | atom()
      }

  """
  @type get_image_recipe_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_distribution_configuration_response() :: %{
        "distributionConfiguration" => distribution_configuration(),
        "requestId" => String.t() | atom()
      }

  """
  @type get_distribution_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      distribution_configuration_summary() :: %{
        "arn" => String.t() | atom(),
        "dateCreated" => String.t() | atom(),
        "dateUpdated" => String.t() | atom(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "regions" => list(String.t() | atom()),
        "tags" => map()
      }

  """
  @type distribution_configuration_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      launch_permission_configuration() :: %{
        "organizationArns" => list(String.t() | atom()),
        "organizationalUnitArns" => list(String.t() | atom()),
        "userGroups" => list(String.t() | atom()),
        "userIds" => list(String.t() | atom())
      }

  """
  @type launch_permission_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      logging() :: %{
        "s3Logs" => s3_logs()
      }

  """
  @type logging() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_image_pipeline_images_response() :: %{
        "imageSummaryList" => list(image_summary()),
        "nextToken" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type list_image_pipeline_images_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_component_request() :: %{
        required("componentBuildVersionArn") => String.t() | atom()
      }

  """
  @type get_component_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_lifecycle_policy_response() :: %{
        "lifecyclePolicy" => lifecycle_policy()
      }

  """
  @type get_lifecycle_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_pagination_token_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type invalid_pagination_token_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_image_pipeline_response() :: %{
        "clientToken" => String.t() | atom(),
        "imagePipelineArn" => String.t() | atom(),
        "requestId" => String.t() | atom()
      }

  """
  @type update_image_pipeline_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workflow_response() :: %{
        "workflow" => workflow()
      }

  """
  @type get_workflow_response() :: %{(String.t() | atom()) => any()}

  @type cancel_image_creation_errors() ::
          service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type cancel_lifecycle_execution_errors() ::
          service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type create_component_errors() ::
          service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | client_exception()
          | invalid_parameter_combination_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()
          | invalid_version_number_exception()

  @type create_container_recipe_errors() ::
          resource_already_exists_exception()
          | service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()
          | invalid_version_number_exception()

  @type create_distribution_configuration_errors() ::
          resource_already_exists_exception()
          | service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | client_exception()
          | invalid_parameter_combination_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type create_image_errors() ::
          service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type create_image_pipeline_errors() ::
          resource_already_exists_exception()
          | service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type create_image_recipe_errors() ::
          resource_already_exists_exception()
          | service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()
          | invalid_version_number_exception()

  @type create_infrastructure_configuration_errors() ::
          resource_already_exists_exception()
          | service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type create_lifecycle_policy_errors() ::
          resource_already_exists_exception()
          | service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type create_workflow_errors() ::
          service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | client_exception()
          | invalid_parameter_combination_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()
          | invalid_version_number_exception()

  @type delete_component_errors() ::
          resource_dependency_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type delete_container_recipe_errors() ::
          resource_dependency_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type delete_distribution_configuration_errors() ::
          resource_dependency_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type delete_image_errors() ::
          resource_dependency_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type delete_image_pipeline_errors() ::
          resource_dependency_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type delete_image_recipe_errors() ::
          resource_dependency_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type delete_infrastructure_configuration_errors() ::
          resource_dependency_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type delete_lifecycle_policy_errors() ::
          resource_dependency_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type delete_workflow_errors() ::
          resource_dependency_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_component_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_component_policy_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_container_recipe_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_container_recipe_policy_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_distribution_configuration_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_image_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_image_pipeline_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_image_policy_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_image_recipe_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_image_recipe_policy_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_infrastructure_configuration_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_lifecycle_execution_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_lifecycle_policy_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_marketplace_resource_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_workflow_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_workflow_execution_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type get_workflow_step_execution_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type import_component_errors() ::
          service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | invalid_request_exception()
          | client_exception()
          | invalid_parameter_combination_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()
          | invalid_version_number_exception()

  @type import_disk_image_errors() ::
          service_unavailable_exception() | service_exception() | client_exception()

  @type import_vm_image_errors() ::
          service_unavailable_exception() | service_exception() | client_exception()

  @type list_component_build_versions_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_components_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_container_recipes_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_distribution_configurations_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_image_build_versions_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_image_packages_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_image_pipeline_images_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_image_pipelines_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_image_recipes_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_image_scan_finding_aggregations_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_image_scan_findings_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_images_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_infrastructure_configurations_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_lifecycle_execution_resources_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_lifecycle_executions_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_lifecycle_policies_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_tags_for_resource_errors() ::
          invalid_parameter_exception() | service_exception() | resource_not_found_exception()

  @type list_waiting_workflow_steps_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_workflow_build_versions_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_workflow_executions_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_workflow_step_executions_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type list_workflows_errors() ::
          invalid_pagination_token_exception()
          | service_unavailable_exception()
          | service_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type put_component_policy_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type put_container_recipe_policy_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type put_image_policy_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type put_image_recipe_policy_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()

  @type send_workflow_step_action_errors() ::
          service_unavailable_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | idempotent_parameter_mismatch_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type start_image_pipeline_execution_errors() ::
          service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type start_resource_state_update_errors() ::
          service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type tag_resource_errors() ::
          invalid_parameter_exception() | service_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          invalid_parameter_exception() | service_exception() | resource_not_found_exception()

  @type update_distribution_configuration_errors() ::
          service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | invalid_request_exception()
          | client_exception()
          | invalid_parameter_combination_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type update_image_pipeline_errors() ::
          service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type update_infrastructure_configuration_errors() ::
          service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | invalid_request_exception()
          | client_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type update_lifecycle_policy_errors() ::
          service_unavailable_exception()
          | service_exception()
          | idempotent_parameter_mismatch_exception()
          | invalid_request_exception()
          | client_exception()
          | invalid_parameter_combination_exception()
          | call_rate_limit_exceeded_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  def metadata do
    %{
      api_version: "2019-12-02",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "imagebuilder",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "imagebuilder",
      signature_version: "v4",
      signing_name: "imagebuilder",
      target_prefix: nil
    }
  end

  @doc """
  CancelImageCreation cancels the creation of Image.

  This operation can only be used on
  images in a non-terminal state.
  """
  @spec cancel_image_creation(map(), cancel_image_creation_request(), list()) ::
          {:ok, cancel_image_creation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_image_creation_errors()}
  def cancel_image_creation(%Client{} = client, input, options \\ []) do
    url_path = "/CancelImageCreation"
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
  Cancel a specific image lifecycle policy runtime instance.
  """
  @spec cancel_lifecycle_execution(map(), cancel_lifecycle_execution_request(), list()) ::
          {:ok, cancel_lifecycle_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_lifecycle_execution_errors()}
  def cancel_lifecycle_execution(%Client{} = client, input, options \\ []) do
    url_path = "/CancelLifecycleExecution"
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
  Creates a new component that can be used to build, validate, test, and assess
  your
  image.

  The component is based on a YAML document that you specify using exactly one of
  the following methods:

    *
  Inline, using the `data` property in the request body.

    *
  A URL that points to a YAML document file stored in Amazon S3, using the
  `uri` property in the request body.
  """
  @spec create_component(map(), create_component_request(), list()) ::
          {:ok, create_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_component_errors()}
  def create_component(%Client{} = client, input, options \\ []) do
    url_path = "/CreateComponent"
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
  Creates a new container recipe.

  Container recipes define how images are configured,
  tested, and assessed.
  """
  @spec create_container_recipe(map(), create_container_recipe_request(), list()) ::
          {:ok, create_container_recipe_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_container_recipe_errors()}
  def create_container_recipe(%Client{} = client, input, options \\ []) do
    url_path = "/CreateContainerRecipe"
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
  Creates a new distribution configuration.

  Distribution configurations define and
  configure the outputs of your pipeline.
  """
  @spec create_distribution_configuration(
          map(),
          create_distribution_configuration_request(),
          list()
        ) ::
          {:ok, create_distribution_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_distribution_configuration_errors()}
  def create_distribution_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/CreateDistributionConfiguration"
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
  Creates a new image.

  This request will create a new image along with all of the
  configured output resources defined in the distribution configuration. You must
  specify
  exactly one recipe for your image, using either a ContainerRecipeArn or an
  ImageRecipeArn.
  """
  @spec create_image(map(), create_image_request(), list()) ::
          {:ok, create_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_image_errors()}
  def create_image(%Client{} = client, input, options \\ []) do
    url_path = "/CreateImage"
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
  Creates a new image pipeline.

  Image pipelines enable you to automate the creation and
  distribution of images.
  """
  @spec create_image_pipeline(map(), create_image_pipeline_request(), list()) ::
          {:ok, create_image_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_image_pipeline_errors()}
  def create_image_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/CreateImagePipeline"
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
  Creates a new image recipe.

  Image recipes define how images are configured, tested,
  and assessed.
  """
  @spec create_image_recipe(map(), create_image_recipe_request(), list()) ::
          {:ok, create_image_recipe_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_image_recipe_errors()}
  def create_image_recipe(%Client{} = client, input, options \\ []) do
    url_path = "/CreateImageRecipe"
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
  Creates a new infrastructure configuration.

  An infrastructure configuration defines
  the environment in which your image will be built and tested.
  """
  @spec create_infrastructure_configuration(
          map(),
          create_infrastructure_configuration_request(),
          list()
        ) ::
          {:ok, create_infrastructure_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_infrastructure_configuration_errors()}
  def create_infrastructure_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/CreateInfrastructureConfiguration"
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
  Create a lifecycle policy resource.
  """
  @spec create_lifecycle_policy(map(), create_lifecycle_policy_request(), list()) ::
          {:ok, create_lifecycle_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_lifecycle_policy_errors()}
  def create_lifecycle_policy(%Client{} = client, input, options \\ []) do
    url_path = "/CreateLifecyclePolicy"
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
  Create a new workflow or a new version of an existing workflow.
  """
  @spec create_workflow(map(), create_workflow_request(), list()) ::
          {:ok, create_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_workflow_errors()}
  def create_workflow(%Client{} = client, input, options \\ []) do
    url_path = "/CreateWorkflow"
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
  Deletes a component build version.
  """
  @spec delete_component(map(), delete_component_request(), list()) ::
          {:ok, delete_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_component_errors()}
  def delete_component(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteComponent"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"componentBuildVersionArn", "componentBuildVersionArn"}
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
  Deletes a container recipe.
  """
  @spec delete_container_recipe(map(), delete_container_recipe_request(), list()) ::
          {:ok, delete_container_recipe_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_container_recipe_errors()}
  def delete_container_recipe(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteContainerRecipe"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"containerRecipeArn", "containerRecipeArn"}
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
  Deletes a distribution configuration.
  """
  @spec delete_distribution_configuration(
          map(),
          delete_distribution_configuration_request(),
          list()
        ) ::
          {:ok, delete_distribution_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_distribution_configuration_errors()}
  def delete_distribution_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteDistributionConfiguration"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"distributionConfigurationArn", "distributionConfigurationArn"}
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
  Deletes an Image Builder image resource.

  This does not delete any EC2 AMIs or ECR container
  images that are created during the image build process. You must clean those up
  separately, using the appropriate Amazon EC2 or Amazon ECR console actions, or
  API or CLI
  commands.

    *
  To deregister an EC2 Linux AMI, see [Deregister your Linux
  AMI](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/deregister-ami.html) in
  the *
  *Amazon EC2 User Guide*
  *.

    *
  To deregister an EC2 Windows AMI, see [Deregister your Windows
  AMI](https://docs.aws.amazon.com/AWSEC2/latest/WindowsGuide/deregister-ami.html)
  in the *
  *Amazon EC2 Windows Guide*
  *.

    *
  To delete a container image from Amazon ECR, see [Deleting an
  image](https://docs.aws.amazon.com/AmazonECR/latest/userguide/delete_image.html)
  in the *Amazon ECR User Guide*.
  """
  @spec delete_image(map(), delete_image_request(), list()) ::
          {:ok, delete_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_image_errors()}
  def delete_image(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteImage"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"imageBuildVersionArn", "imageBuildVersionArn"}
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
  Deletes an image pipeline.
  """
  @spec delete_image_pipeline(map(), delete_image_pipeline_request(), list()) ::
          {:ok, delete_image_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_image_pipeline_errors()}
  def delete_image_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteImagePipeline"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"imagePipelineArn", "imagePipelineArn"}
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
  Deletes an image recipe.
  """
  @spec delete_image_recipe(map(), delete_image_recipe_request(), list()) ::
          {:ok, delete_image_recipe_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_image_recipe_errors()}
  def delete_image_recipe(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteImageRecipe"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"imageRecipeArn", "imageRecipeArn"}
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
  Deletes an infrastructure configuration.
  """
  @spec delete_infrastructure_configuration(
          map(),
          delete_infrastructure_configuration_request(),
          list()
        ) ::
          {:ok, delete_infrastructure_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_infrastructure_configuration_errors()}
  def delete_infrastructure_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteInfrastructureConfiguration"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"infrastructureConfigurationArn", "infrastructureConfigurationArn"}
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
  Delete the specified lifecycle policy resource.
  """
  @spec delete_lifecycle_policy(map(), delete_lifecycle_policy_request(), list()) ::
          {:ok, delete_lifecycle_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_lifecycle_policy_errors()}
  def delete_lifecycle_policy(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteLifecyclePolicy"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"lifecyclePolicyArn", "lifecyclePolicyArn"}
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
  Deletes a specific workflow resource.
  """
  @spec delete_workflow(map(), delete_workflow_request(), list()) ::
          {:ok, delete_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_workflow_errors()}
  def delete_workflow(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteWorkflow"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"workflowBuildVersionArn", "workflowBuildVersionArn"}
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
  Gets a component object.
  """
  @spec get_component(map(), String.t() | atom(), list()) ::
          {:ok, get_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_component_errors()}
  def get_component(%Client{} = client, component_build_version_arn, options \\ []) do
    url_path = "/GetComponent"
    headers = []
    query_params = []

    query_params =
      if !is_nil(component_build_version_arn) do
        [{"componentBuildVersionArn", component_build_version_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a component policy.
  """
  @spec get_component_policy(map(), String.t() | atom(), list()) ::
          {:ok, get_component_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_component_policy_errors()}
  def get_component_policy(%Client{} = client, component_arn, options \\ []) do
    url_path = "/GetComponentPolicy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(component_arn) do
        [{"componentArn", component_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a container recipe.
  """
  @spec get_container_recipe(map(), String.t() | atom(), list()) ::
          {:ok, get_container_recipe_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_container_recipe_errors()}
  def get_container_recipe(%Client{} = client, container_recipe_arn, options \\ []) do
    url_path = "/GetContainerRecipe"
    headers = []
    query_params = []

    query_params =
      if !is_nil(container_recipe_arn) do
        [{"containerRecipeArn", container_recipe_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the policy for a container recipe.
  """
  @spec get_container_recipe_policy(map(), String.t() | atom(), list()) ::
          {:ok, get_container_recipe_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_container_recipe_policy_errors()}
  def get_container_recipe_policy(%Client{} = client, container_recipe_arn, options \\ []) do
    url_path = "/GetContainerRecipePolicy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(container_recipe_arn) do
        [{"containerRecipeArn", container_recipe_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a distribution configuration.
  """
  @spec get_distribution_configuration(map(), String.t() | atom(), list()) ::
          {:ok, get_distribution_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_distribution_configuration_errors()}
  def get_distribution_configuration(
        %Client{} = client,
        distribution_configuration_arn,
        options \\ []
      ) do
    url_path = "/GetDistributionConfiguration"
    headers = []
    query_params = []

    query_params =
      if !is_nil(distribution_configuration_arn) do
        [{"distributionConfigurationArn", distribution_configuration_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an image.
  """
  @spec get_image(map(), String.t() | atom(), list()) ::
          {:ok, get_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_image_errors()}
  def get_image(%Client{} = client, image_build_version_arn, options \\ []) do
    url_path = "/GetImage"
    headers = []
    query_params = []

    query_params =
      if !is_nil(image_build_version_arn) do
        [{"imageBuildVersionArn", image_build_version_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an image pipeline.
  """
  @spec get_image_pipeline(map(), String.t() | atom(), list()) ::
          {:ok, get_image_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_image_pipeline_errors()}
  def get_image_pipeline(%Client{} = client, image_pipeline_arn, options \\ []) do
    url_path = "/GetImagePipeline"
    headers = []
    query_params = []

    query_params =
      if !is_nil(image_pipeline_arn) do
        [{"imagePipelineArn", image_pipeline_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an image policy.
  """
  @spec get_image_policy(map(), String.t() | atom(), list()) ::
          {:ok, get_image_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_image_policy_errors()}
  def get_image_policy(%Client{} = client, image_arn, options \\ []) do
    url_path = "/GetImagePolicy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(image_arn) do
        [{"imageArn", image_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an image recipe.
  """
  @spec get_image_recipe(map(), String.t() | atom(), list()) ::
          {:ok, get_image_recipe_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_image_recipe_errors()}
  def get_image_recipe(%Client{} = client, image_recipe_arn, options \\ []) do
    url_path = "/GetImageRecipe"
    headers = []
    query_params = []

    query_params =
      if !is_nil(image_recipe_arn) do
        [{"imageRecipeArn", image_recipe_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an image recipe policy.
  """
  @spec get_image_recipe_policy(map(), String.t() | atom(), list()) ::
          {:ok, get_image_recipe_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_image_recipe_policy_errors()}
  def get_image_recipe_policy(%Client{} = client, image_recipe_arn, options \\ []) do
    url_path = "/GetImageRecipePolicy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(image_recipe_arn) do
        [{"imageRecipeArn", image_recipe_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an infrastructure configuration.
  """
  @spec get_infrastructure_configuration(map(), String.t() | atom(), list()) ::
          {:ok, get_infrastructure_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_infrastructure_configuration_errors()}
  def get_infrastructure_configuration(
        %Client{} = client,
        infrastructure_configuration_arn,
        options \\ []
      ) do
    url_path = "/GetInfrastructureConfiguration"
    headers = []
    query_params = []

    query_params =
      if !is_nil(infrastructure_configuration_arn) do
        [{"infrastructureConfigurationArn", infrastructure_configuration_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the runtime information that was logged for a specific runtime instance of
  the lifecycle policy.
  """
  @spec get_lifecycle_execution(map(), String.t() | atom(), list()) ::
          {:ok, get_lifecycle_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_lifecycle_execution_errors()}
  def get_lifecycle_execution(%Client{} = client, lifecycle_execution_id, options \\ []) do
    url_path = "/GetLifecycleExecution"
    headers = []
    query_params = []

    query_params =
      if !is_nil(lifecycle_execution_id) do
        [{"lifecycleExecutionId", lifecycle_execution_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get details for the specified image lifecycle policy.
  """
  @spec get_lifecycle_policy(map(), String.t() | atom(), list()) ::
          {:ok, get_lifecycle_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_lifecycle_policy_errors()}
  def get_lifecycle_policy(%Client{} = client, lifecycle_policy_arn, options \\ []) do
    url_path = "/GetLifecyclePolicy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(lifecycle_policy_arn) do
        [{"lifecyclePolicyArn", lifecycle_policy_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Verify the subscription and perform resource dependency checks on the requested
  Amazon Web Services Marketplace resource.

  For Amazon Web Services Marketplace components, the response contains fields to
  download the
  components and their artifacts.
  """
  @spec get_marketplace_resource(map(), get_marketplace_resource_request(), list()) ::
          {:ok, get_marketplace_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_marketplace_resource_errors()}
  def get_marketplace_resource(%Client{} = client, input, options \\ []) do
    url_path = "/GetMarketplaceResource"
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
  Get a workflow resource object.
  """
  @spec get_workflow(map(), String.t() | atom(), list()) ::
          {:ok, get_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_workflow_errors()}
  def get_workflow(%Client{} = client, workflow_build_version_arn, options \\ []) do
    url_path = "/GetWorkflow"
    headers = []
    query_params = []

    query_params =
      if !is_nil(workflow_build_version_arn) do
        [{"workflowBuildVersionArn", workflow_build_version_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the runtime information that was logged for a specific runtime instance
  of the workflow.
  """
  @spec get_workflow_execution(map(), String.t() | atom(), list()) ::
          {:ok, get_workflow_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_workflow_execution_errors()}
  def get_workflow_execution(%Client{} = client, workflow_execution_id, options \\ []) do
    url_path = "/GetWorkflowExecution"
    headers = []
    query_params = []

    query_params =
      if !is_nil(workflow_execution_id) do
        [{"workflowExecutionId", workflow_execution_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the runtime information that was logged for a specific runtime instance of
  the workflow step.
  """
  @spec get_workflow_step_execution(map(), String.t() | atom(), list()) ::
          {:ok, get_workflow_step_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_workflow_step_execution_errors()}
  def get_workflow_step_execution(%Client{} = client, step_execution_id, options \\ []) do
    url_path = "/GetWorkflowStepExecution"
    headers = []
    query_params = []

    query_params =
      if !is_nil(step_execution_id) do
        [{"stepExecutionId", step_execution_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Imports a component and transforms its data into a component document.
  """
  @spec import_component(map(), import_component_request(), list()) ::
          {:ok, import_component_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_component_errors()}
  def import_component(%Client{} = client, input, options \\ []) do
    url_path = "/ImportComponent"
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
  Import a Windows operating system image from a verified Microsoft ISO disk
  file.

  The following disk images are supported:

    *
  Windows 11 Enterprise
  """
  @spec import_disk_image(map(), import_disk_image_request(), list()) ::
          {:ok, import_disk_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_disk_image_errors()}
  def import_disk_image(%Client{} = client, input, options \\ []) do
    url_path = "/ImportDiskImage"
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
  When you export your virtual machine (VM) from its virtualization environment,
  that
  process creates a set of one or more disk container files that act as snapshots
  of your
  VM’s environment, settings, and data.

  The Amazon EC2 API
  [ImportImage](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ImportImage.html) action uses those files to import your VM and create an AMI. To import using the
  CLI
  command, see
  [import-image](https://docs.aws.amazon.com/cli/latest/reference/ec2/import-image.html)

  You can reference the task ID from the VM import to pull in the AMI that the
  import
  created as the base image for your Image Builder recipe.
  """
  @spec import_vm_image(map(), import_vm_image_request(), list()) ::
          {:ok, import_vm_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_vm_image_errors()}
  def import_vm_image(%Client{} = client, input, options \\ []) do
    url_path = "/ImportVmImage"
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
  Returns the list of component build versions for the specified component
  version Amazon Resource Name (ARN).
  """
  @spec list_component_build_versions(map(), list_component_build_versions_request(), list()) ::
          {:ok, list_component_build_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_component_build_versions_errors()}
  def list_component_build_versions(%Client{} = client, input, options \\ []) do
    url_path = "/ListComponentBuildVersions"
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
  Returns the list of components that can be filtered by name, or by using the
  listed
  `filters` to streamline results.

  Newly created components can take up to
  two minutes to appear in the ListComponents API Results.

  The semantic version has four nodes: ../.
  You can assign values for the first three, and can filter on all of them.

  **Filtering:** With semantic versioning, you have the flexibility to use
  wildcards (x)
  to specify the most recent versions or nodes when selecting the base image or
  components for your
  recipe. When you use a wildcard in any node, all nodes to the right of the first
  wildcard must also be
  wildcards.
  """
  @spec list_components(map(), list_components_request(), list()) ::
          {:ok, list_components_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_components_errors()}
  def list_components(%Client{} = client, input, options \\ []) do
    url_path = "/ListComponents"
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
  Returns a list of container recipes.
  """
  @spec list_container_recipes(map(), list_container_recipes_request(), list()) ::
          {:ok, list_container_recipes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_container_recipes_errors()}
  def list_container_recipes(%Client{} = client, input, options \\ []) do
    url_path = "/ListContainerRecipes"
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
  Returns a list of distribution configurations.
  """
  @spec list_distribution_configurations(
          map(),
          list_distribution_configurations_request(),
          list()
        ) ::
          {:ok, list_distribution_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_distribution_configurations_errors()}
  def list_distribution_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/ListDistributionConfigurations"
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
  Returns a list of image build versions.
  """
  @spec list_image_build_versions(map(), list_image_build_versions_request(), list()) ::
          {:ok, list_image_build_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_image_build_versions_errors()}
  def list_image_build_versions(%Client{} = client, input, options \\ []) do
    url_path = "/ListImageBuildVersions"
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
  List the Packages that are associated with an Image Build Version, as determined
  by
  Amazon Web Services Systems Manager Inventory at build time.
  """
  @spec list_image_packages(map(), list_image_packages_request(), list()) ::
          {:ok, list_image_packages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_image_packages_errors()}
  def list_image_packages(%Client{} = client, input, options \\ []) do
    url_path = "/ListImagePackages"
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
  Returns a list of images created by the specified pipeline.
  """
  @spec list_image_pipeline_images(map(), list_image_pipeline_images_request(), list()) ::
          {:ok, list_image_pipeline_images_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_image_pipeline_images_errors()}
  def list_image_pipeline_images(%Client{} = client, input, options \\ []) do
    url_path = "/ListImagePipelineImages"
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
  Returns a list of image pipelines.
  """
  @spec list_image_pipelines(map(), list_image_pipelines_request(), list()) ::
          {:ok, list_image_pipelines_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_image_pipelines_errors()}
  def list_image_pipelines(%Client{} = client, input, options \\ []) do
    url_path = "/ListImagePipelines"
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
  Returns a list of image recipes.
  """
  @spec list_image_recipes(map(), list_image_recipes_request(), list()) ::
          {:ok, list_image_recipes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_image_recipes_errors()}
  def list_image_recipes(%Client{} = client, input, options \\ []) do
    url_path = "/ListImageRecipes"
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
  Returns a list of image scan aggregations for your account.

  You can filter by the type
  of key that Image Builder uses to group results. For example, if you want to get
  a list of
  findings by severity level for one of your pipelines, you might specify your
  pipeline
  with the `imagePipelineArn` filter. If you don't specify a filter, Image Builder
  returns an aggregation for your account.

  To streamline results, you can use the following filters in your request:

    *

  `accountId`

    *

  `imageBuildVersionArn`

    *

  `imagePipelineArn`

    *

  `vulnerabilityId`
  """
  @spec list_image_scan_finding_aggregations(
          map(),
          list_image_scan_finding_aggregations_request(),
          list()
        ) ::
          {:ok, list_image_scan_finding_aggregations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_image_scan_finding_aggregations_errors()}
  def list_image_scan_finding_aggregations(%Client{} = client, input, options \\ []) do
    url_path = "/ListImageScanFindingAggregations"
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
  Returns a list of image scan findings for your account.
  """
  @spec list_image_scan_findings(map(), list_image_scan_findings_request(), list()) ::
          {:ok, list_image_scan_findings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_image_scan_findings_errors()}
  def list_image_scan_findings(%Client{} = client, input, options \\ []) do
    url_path = "/ListImageScanFindings"
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
  Returns the list of images that you have access to.

  Newly created images can take up
  to two minutes to appear in the ListImages API Results.
  """
  @spec list_images(map(), list_images_request(), list()) ::
          {:ok, list_images_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_images_errors()}
  def list_images(%Client{} = client, input, options \\ []) do
    url_path = "/ListImages"
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
  Returns a list of infrastructure configurations.
  """
  @spec list_infrastructure_configurations(
          map(),
          list_infrastructure_configurations_request(),
          list()
        ) ::
          {:ok, list_infrastructure_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_infrastructure_configurations_errors()}
  def list_infrastructure_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/ListInfrastructureConfigurations"
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
  List resources that the runtime instance of the image lifecycle identified for
  lifecycle actions.
  """
  @spec list_lifecycle_execution_resources(
          map(),
          list_lifecycle_execution_resources_request(),
          list()
        ) ::
          {:ok, list_lifecycle_execution_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_lifecycle_execution_resources_errors()}
  def list_lifecycle_execution_resources(%Client{} = client, input, options \\ []) do
    url_path = "/ListLifecycleExecutionResources"
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
  Get the lifecycle runtime history for the specified resource.
  """
  @spec list_lifecycle_executions(map(), list_lifecycle_executions_request(), list()) ::
          {:ok, list_lifecycle_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_lifecycle_executions_errors()}
  def list_lifecycle_executions(%Client{} = client, input, options \\ []) do
    url_path = "/ListLifecycleExecutions"
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
  Get a list of lifecycle policies in your Amazon Web Services account.
  """
  @spec list_lifecycle_policies(map(), list_lifecycle_policies_request(), list()) ::
          {:ok, list_lifecycle_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_lifecycle_policies_errors()}
  def list_lifecycle_policies(%Client{} = client, input, options \\ []) do
    url_path = "/ListLifecyclePolicies"
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
  Returns the list of tags for the specified resource.
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a list of workflow steps that are waiting for action for workflows
  in your Amazon Web Services account.
  """
  @spec list_waiting_workflow_steps(map(), list_waiting_workflow_steps_request(), list()) ::
          {:ok, list_waiting_workflow_steps_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_waiting_workflow_steps_errors()}
  def list_waiting_workflow_steps(%Client{} = client, input, options \\ []) do
    url_path = "/ListWaitingWorkflowSteps"
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
  Returns a list of build versions for a specific workflow resource.
  """
  @spec list_workflow_build_versions(map(), list_workflow_build_versions_request(), list()) ::
          {:ok, list_workflow_build_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_workflow_build_versions_errors()}
  def list_workflow_build_versions(%Client{} = client, input, options \\ []) do
    url_path = "/ListWorkflowBuildVersions"
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
  Returns a list of workflow runtime instance metadata objects for a specific
  image build
  version.
  """
  @spec list_workflow_executions(map(), list_workflow_executions_request(), list()) ::
          {:ok, list_workflow_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_workflow_executions_errors()}
  def list_workflow_executions(%Client{} = client, input, options \\ []) do
    url_path = "/ListWorkflowExecutions"
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
  Returns runtime data for each step in a runtime instance of the workflow
  that you specify in the request.
  """
  @spec list_workflow_step_executions(map(), list_workflow_step_executions_request(), list()) ::
          {:ok, list_workflow_step_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_workflow_step_executions_errors()}
  def list_workflow_step_executions(%Client{} = client, input, options \\ []) do
    url_path = "/ListWorkflowStepExecutions"
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
  Lists workflow build versions based on filtering parameters.
  """
  @spec list_workflows(map(), list_workflows_request(), list()) ::
          {:ok, list_workflows_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_workflows_errors()}
  def list_workflows(%Client{} = client, input, options \\ []) do
    url_path = "/ListWorkflows"
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
  Applies a policy to a component.

  We recommend that you call the RAM API
  [CreateResourceShare](https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html) to share resources. If you call the Image Builder API
  `PutComponentPolicy`, you must also call the RAM API
  [PromoteResourceShareCreatedFromPolicy](https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html)
  in order for the resource to be
  visible to all principals with whom the resource is shared.
  """
  @spec put_component_policy(map(), put_component_policy_request(), list()) ::
          {:ok, put_component_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_component_policy_errors()}
  def put_component_policy(%Client{} = client, input, options \\ []) do
    url_path = "/PutComponentPolicy"
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
  Applies a policy to a container image.

  We recommend that you call the RAM API
  CreateResourceShare
  (https://docs.aws.amazon.com//ram/latest/APIReference/API_CreateResourceShare.html)
  to share
  resources. If you call the Image Builder API `PutContainerImagePolicy`, you must
  also
  call the RAM API PromoteResourceShareCreatedFromPolicy
  (https://docs.aws.amazon.com//ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html)

  in order for the resource to be visible to all principals with whom the resource
  is
  shared.
  """
  @spec put_container_recipe_policy(map(), put_container_recipe_policy_request(), list()) ::
          {:ok, put_container_recipe_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_container_recipe_policy_errors()}
  def put_container_recipe_policy(%Client{} = client, input, options \\ []) do
    url_path = "/PutContainerRecipePolicy"
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
  Applies a policy to an image.

  We recommend that you call the RAM API
  [CreateResourceShare](https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html) to share resources. If you call the Image Builder API
  `PutImagePolicy`, you must also call the RAM API
  [PromoteResourceShareCreatedFromPolicy](https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html)
  in order for the resource to be
  visible to all principals with whom the resource is shared.
  """
  @spec put_image_policy(map(), put_image_policy_request(), list()) ::
          {:ok, put_image_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_image_policy_errors()}
  def put_image_policy(%Client{} = client, input, options \\ []) do
    url_path = "/PutImagePolicy"
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
  Applies a policy to an image recipe.

  We recommend that you call the RAM API
  [CreateResourceShare](https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html) to share resources. If you call the Image Builder API
  `PutImageRecipePolicy`, you must also call the RAM API
  [PromoteResourceShareCreatedFromPolicy](https://docs.aws.amazon.com/ram/latest/APIReference/API_PromoteResourceShareCreatedFromPolicy.html)
  in order for the resource to be
  visible to all principals with whom the resource is shared.
  """
  @spec put_image_recipe_policy(map(), put_image_recipe_policy_request(), list()) ::
          {:ok, put_image_recipe_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_image_recipe_policy_errors()}
  def put_image_recipe_policy(%Client{} = client, input, options \\ []) do
    url_path = "/PutImageRecipePolicy"
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
  Pauses or resumes image creation when the associated workflow runs a
  `WaitForAction` step.
  """
  @spec send_workflow_step_action(map(), send_workflow_step_action_request(), list()) ::
          {:ok, send_workflow_step_action_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_workflow_step_action_errors()}
  def send_workflow_step_action(%Client{} = client, input, options \\ []) do
    url_path = "/SendWorkflowStepAction"
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
  Manually triggers a pipeline to create an image.
  """
  @spec start_image_pipeline_execution(map(), start_image_pipeline_execution_request(), list()) ::
          {:ok, start_image_pipeline_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_image_pipeline_execution_errors()}
  def start_image_pipeline_execution(%Client{} = client, input, options \\ []) do
    url_path = "/StartImagePipelineExecution"
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
  Begin asynchronous resource state update for lifecycle changes to the
  specified image resources.
  """
  @spec start_resource_state_update(map(), start_resource_state_update_request(), list()) ::
          {:ok, start_resource_state_update_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_resource_state_update_errors()}
  def start_resource_state_update(%Client{} = client, input, options \\ []) do
    url_path = "/StartResourceStateUpdate"
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
  Adds a tag to a resource.
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
      200
    )
  end

  @doc """
  Removes a tag from a resource.
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
  Updates a new distribution configuration.

  Distribution configurations define and
  configure the outputs of your pipeline.
  """
  @spec update_distribution_configuration(
          map(),
          update_distribution_configuration_request(),
          list()
        ) ::
          {:ok, update_distribution_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_distribution_configuration_errors()}
  def update_distribution_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateDistributionConfiguration"
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
  Updates an image pipeline.

  Image pipelines enable you to automate the creation and
  distribution of images. You must specify exactly one recipe for your image,
  using either
  a `containerRecipeArn` or an `imageRecipeArn`.

  UpdateImagePipeline does not support selective updates for the pipeline. You
  must
  specify all of the required properties in the update request, not just the
  properties that have changed.
  """
  @spec update_image_pipeline(map(), update_image_pipeline_request(), list()) ::
          {:ok, update_image_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_image_pipeline_errors()}
  def update_image_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateImagePipeline"
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
  Updates a new infrastructure configuration.

  An infrastructure configuration defines
  the environment in which your image will be built and tested.
  """
  @spec update_infrastructure_configuration(
          map(),
          update_infrastructure_configuration_request(),
          list()
        ) ::
          {:ok, update_infrastructure_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_infrastructure_configuration_errors()}
  def update_infrastructure_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateInfrastructureConfiguration"
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
  Update the specified lifecycle policy.
  """
  @spec update_lifecycle_policy(map(), update_lifecycle_policy_request(), list()) ::
          {:ok, update_lifecycle_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_lifecycle_policy_errors()}
  def update_lifecycle_policy(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateLifecyclePolicy"
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
