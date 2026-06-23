# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LambdaMicrovms do
  @moduledoc """
  Provides APIs to create, manage, and operate AWS Lambda MicroVMs and their
  associated MicroVM Image environments.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_managed_microvm_image_versions_output() :: %{
        "items" => list(managed_microvm_image_version()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_managed_microvm_image_versions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resume_microvm_response() :: %{}

  """
  @type resume_microvm_response() :: %{}

  @typedoc """

  ## Example:

      run_microvm_response() :: %{
        "egressNetworkConnectors" => list(String.t() | atom()),
        "endpoint" => [String.t() | atom()],
        "executionRoleArn" => String.t() | atom(),
        "idlePolicy" => idle_policy(),
        "imageArn" => String.t() | atom(),
        "imageVersion" => String.t() | atom(),
        "ingressNetworkConnectors" => list(String.t() | atom()),
        "maximumDurationInSeconds" => [integer()],
        "microvmId" => String.t() | atom(),
        "startedAt" => [non_neg_integer()],
        "state" => list(any()),
        "stateReason" => String.t() | atom(),
        "terminatedAt" => [non_neg_integer()]
      }

  """
  @type run_microvm_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_microvm_image_request() :: %{
        optional("additionalOsCapabilities") => list(list(any())()),
        optional("baseImageVersion") => String.t() | atom(),
        optional("clientToken") => [String.t() | atom()],
        optional("cpuConfigurations") => list(cpu_configuration()),
        optional("description") => [String.t() | atom()],
        optional("egressNetworkConnectors") => list(String.t() | atom()),
        optional("environmentVariables") => map(),
        optional("hooks") => hooks(),
        optional("logging") => list(),
        optional("resources") => list(resources()),
        required("baseImageArn") => String.t() | atom(),
        required("buildRoleArn") => String.t() | atom(),
        required("codeArtifact") => list()
      }

  """
  @type update_microvm_image_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      microvm_image_version_summary() :: %{
        "additionalOsCapabilities" => list(list(any())()),
        "baseImageArn" => String.t() | atom(),
        "baseImageVersion" => String.t() | atom(),
        "buildRoleArn" => String.t() | atom(),
        "codeArtifact" => list(),
        "cpuConfigurations" => list(cpu_configuration()),
        "createdAt" => [non_neg_integer()],
        "description" => [String.t() | atom()],
        "egressNetworkConnectors" => list(String.t() | atom()),
        "environmentVariables" => map(),
        "hooks" => hooks(),
        "imageArn" => String.t() | atom(),
        "imageVersion" => String.t() | atom(),
        "logging" => list(),
        "resources" => list(resources()),
        "state" => list(any()),
        "stateReason" => [String.t() | atom()],
        "status" => list(any()),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type microvm_image_version_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_microvm_image_response() :: %{
        "additionalOsCapabilities" => list(list(any())()),
        "baseImageArn" => String.t() | atom(),
        "baseImageVersion" => String.t() | atom(),
        "buildRoleArn" => String.t() | atom(),
        "codeArtifact" => list(),
        "cpuConfigurations" => list(cpu_configuration()),
        "createdAt" => [non_neg_integer()],
        "description" => [String.t() | atom()],
        "egressNetworkConnectors" => list(String.t() | atom()),
        "environmentVariables" => map(),
        "hooks" => hooks(),
        "imageArn" => String.t() | atom(),
        "imageVersion" => String.t() | atom(),
        "latestActiveImageVersion" => String.t() | atom(),
        "latestFailedImageVersion" => String.t() | atom(),
        "logging" => list(),
        "name" => String.t() | atom(),
        "resources" => list(resources()),
        "state" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type update_microvm_image_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_microvm_image_version_request() :: %{
        required("status") => list(any())
      }

  """
  @type update_microvm_image_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resume_microvm_request() :: %{}

  """
  @type resume_microvm_request() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()],
        "quotaCode" => [String.t() | atom()],
        "retryAfterSeconds" => [integer()],
        "serviceCode" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_microvms_response() :: %{
        "items" => list(microvm_item()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_microvms_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "Type" => [String.t() | atom()],
        "message" => [String.t() | atom()]
      }

  """
  @type too_many_requests_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_microvm_image_builds_output() :: %{
        "items" => list(microvm_image_build_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_microvm_image_builds_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      microvm_item() :: %{
        "imageArn" => String.t() | atom(),
        "imageVersion" => String.t() | atom(),
        "microvmId" => String.t() | atom(),
        "startedAt" => [non_neg_integer()],
        "state" => list(any())
      }

  """
  @type microvm_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_microvm_image_input() :: %{}

  """
  @type delete_microvm_image_input() :: %{}

  @typedoc """

  ## Example:

      logging_disabled() :: %{}

  """
  @type logging_disabled() :: %{}

  @typedoc """

  ## Example:

      create_microvm_image_response() :: %{
        "additionalOsCapabilities" => list(list(any())()),
        "baseImageArn" => String.t() | atom(),
        "baseImageVersion" => String.t() | atom(),
        "buildRoleArn" => String.t() | atom(),
        "codeArtifact" => list(),
        "cpuConfigurations" => list(cpu_configuration()),
        "createdAt" => [non_neg_integer()],
        "description" => [String.t() | atom()],
        "egressNetworkConnectors" => list(String.t() | atom()),
        "environmentVariables" => map(),
        "hooks" => hooks(),
        "imageArn" => String.t() | atom(),
        "imageVersion" => String.t() | atom(),
        "latestActiveImageVersion" => String.t() | atom(),
        "latestFailedImageVersion" => String.t() | atom(),
        "logging" => list(),
        "name" => String.t() | atom(),
        "resources" => list(resources()),
        "state" => list(any()),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type create_microvm_image_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      terminate_microvm_response() :: %{}

  """
  @type terminate_microvm_response() :: %{}

  @typedoc """

  ## Example:

      list_managed_microvm_images_output() :: %{
        "items" => list(managed_microvm_image_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_managed_microvm_images_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_microvm_auth_token_request() :: %{
        required("allowedPorts") => list(list()),
        required("expirationInMinutes") => integer()
      }

  """
  @type create_microvm_auth_token_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_microvm_image_builds_input() :: %{
        optional("architecture") => list(any()),
        optional("chipset") => list(any()),
        optional("chipsetGeneration") => String.t() | atom(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_microvm_image_builds_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_microvm_image_versions_output() :: %{
        "items" => list(microvm_image_version_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_microvm_image_versions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_microvm_shell_auth_token_response() :: %{
        "authToken" => map()
      }

  """
  @type create_microvm_shell_auth_token_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_parameter_value_exception() :: %{
        "Type" => [String.t() | atom()],
        "message" => [String.t() | atom()]
      }

  """
  @type invalid_parameter_value_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_managed_microvm_image_versions_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_managed_microvm_image_versions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      microvm_image_build_summary() :: %{
        "architecture" => list(any()),
        "buildId" => String.t() | atom(),
        "buildState" => list(any()),
        "chipset" => list(any()),
        "chipsetGeneration" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "imageArn" => String.t() | atom(),
        "imageVersion" => String.t() | atom(),
        "stateReason" => [String.t() | atom()]
      }

  """
  @type microvm_image_build_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_microvm_image_version_input() :: %{}

  """
  @type delete_microvm_image_version_input() :: %{}

  @typedoc """

  ## Example:

      get_microvm_image_version_output() :: %{
        "additionalOsCapabilities" => list(list(any())()),
        "baseImageArn" => String.t() | atom(),
        "baseImageVersion" => String.t() | atom(),
        "buildRoleArn" => String.t() | atom(),
        "codeArtifact" => list(),
        "cpuConfigurations" => list(cpu_configuration()),
        "createdAt" => [non_neg_integer()],
        "description" => [String.t() | atom()],
        "egressNetworkConnectors" => list(String.t() | atom()),
        "environmentVariables" => map(),
        "hooks" => hooks(),
        "imageArn" => String.t() | atom(),
        "imageVersion" => String.t() | atom(),
        "logging" => list(),
        "resources" => list(resources()),
        "state" => list(any()),
        "stateReason" => [String.t() | atom()],
        "status" => list(any()),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_microvm_image_version_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_microvm_images_response() :: %{
        "items" => list(microvm_image_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_microvm_images_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_microvm_images_request() :: %{
        optional("maxResults") => [integer()],
        optional("nameFilter") => String.t() | atom(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_microvm_images_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_microvm_image_request() :: %{
        optional("additionalOsCapabilities") => list(list(any())()),
        optional("baseImageVersion") => String.t() | atom(),
        optional("clientToken") => [String.t() | atom()],
        optional("cpuConfigurations") => list(cpu_configuration()),
        optional("description") => [String.t() | atom()],
        optional("egressNetworkConnectors") => list(String.t() | atom()),
        optional("environmentVariables") => map(),
        optional("hooks") => hooks(),
        optional("logging") => list(),
        optional("resources") => list(resources()),
        optional("tags") => map(),
        required("baseImageArn") => String.t() | atom(),
        required("buildRoleArn") => String.t() | atom(),
        required("codeArtifact") => list(),
        required("name") => String.t() | atom()
      }

  """
  @type create_microvm_image_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_microvm_shell_auth_token_request() :: %{
        required("expirationInMinutes") => integer()
      }

  """
  @type create_microvm_shell_auth_token_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      run_microvm_request() :: %{
        optional("clientToken") => [String.t() | atom()],
        optional("egressNetworkConnectors") => list(String.t() | atom()),
        optional("executionRoleArn") => String.t() | atom(),
        optional("idlePolicy") => idle_policy(),
        optional("imageVersion") => String.t() | atom(),
        optional("ingressNetworkConnectors") => list(String.t() | atom()),
        optional("logging") => list(),
        optional("maximumDurationInSeconds") => [integer()],
        optional("runHookPayload") => [String.t() | atom()],
        required("imageIdentifier") => String.t() | atom()
      }

  """
  @type run_microvm_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      suspend_microvm_response() :: %{}

  """
  @type suspend_microvm_response() :: %{}

  @typedoc """

  ## Example:

      list_managed_microvm_images_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_managed_microvm_images_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resources() :: %{
        "minimumMemoryInMiB" => [integer()]
      }

  """
  @type resources() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_microvms_request() :: %{
        optional("imageIdentifier") => String.t() | atom(),
        optional("imageVersion") => [String.t() | atom()],
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_microvms_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_exception() :: %{
        "Type" => [String.t() | atom()],
        "message" => [String.t() | atom()]
      }

  """
  @type service_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_microvm_image_output() :: %{
        "imageIdentifier" => String.t() | atom(),
        "state" => list(any())
      }

  """
  @type delete_microvm_image_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_microvm_image_versions_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_microvm_image_versions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_microvm_image_version_response() :: %{
        "additionalOsCapabilities" => list(list(any())()),
        "baseImageArn" => String.t() | atom(),
        "baseImageVersion" => String.t() | atom(),
        "buildRoleArn" => String.t() | atom(),
        "codeArtifact" => list(),
        "cpuConfigurations" => list(cpu_configuration()),
        "createdAt" => [non_neg_integer()],
        "description" => [String.t() | atom()],
        "egressNetworkConnectors" => list(String.t() | atom()),
        "environmentVariables" => map(),
        "hooks" => hooks(),
        "imageArn" => String.t() | atom(),
        "imageVersion" => String.t() | atom(),
        "logging" => list(),
        "resources" => list(resources()),
        "state" => list(any()),
        "stateReason" => [String.t() | atom()],
        "status" => list(any()),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type update_microvm_image_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_conflict_exception() :: %{
        "Type" => [String.t() | atom()],
        "message" => [String.t() | atom()]
      }

  """
  @type resource_conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      microvm_image_hooks() :: %{
        "ready" => list(any()),
        "readyTimeoutInSeconds" => [integer()],
        "validate" => list(any()),
        "validateTimeoutInSeconds" => [integer()]
      }

  """
  @type microvm_image_hooks() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cloud_watch_logging() :: %{
        "logGroup" => String.t() | atom(),
        "logStream" => String.t() | atom()
      }

  """
  @type cloud_watch_logging() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      idle_policy() :: %{
        "autoResumeEnabled" => [boolean()],
        "maxIdleDurationSeconds" => [integer()],
        "suspendedDurationSeconds" => [integer()]
      }

  """
  @type idle_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_microvm_image_input() :: %{}

  """
  @type get_microvm_image_input() :: %{}

  @typedoc """

  ## Example:

      get_microvm_request() :: %{}

  """
  @type get_microvm_request() :: %{}

  @typedoc """

  ## Example:

      get_microvm_image_build_input() :: %{}

  """
  @type get_microvm_image_build_input() :: %{}

  @typedoc """

  ## Example:

      managed_microvm_image_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "imageArn" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type managed_microvm_image_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_request() :: %{}

  """
  @type list_tags_request() :: %{}

  @typedoc """

  ## Example:

      microvm_hooks() :: %{
        "resume" => list(any()),
        "resumeTimeoutInSeconds" => [integer()],
        "run" => list(any()),
        "runTimeoutInSeconds" => [integer()],
        "suspend" => list(any()),
        "suspendTimeoutInSeconds" => [integer()],
        "terminate" => list(any()),
        "terminateTimeoutInSeconds" => [integer()]
      }

  """
  @type microvm_hooks() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      suspend_microvm_request() :: %{}

  """
  @type suspend_microvm_request() :: %{}

  @typedoc """

  ## Example:

      get_microvm_image_version_input() :: %{}

  """
  @type get_microvm_image_version_input() :: %{}

  @typedoc """

  ## Example:

      cpu_configuration() :: %{
        "architecture" => list(any())
      }

  """
  @type cpu_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      terminate_microvm_request() :: %{}

  """
  @type terminate_microvm_request() :: %{}

  @typedoc """

  ## Example:

      create_microvm_auth_token_response() :: %{
        "authToken" => map()
      }

  """
  @type create_microvm_auth_token_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_microvm_response() :: %{
        "egressNetworkConnectors" => list(String.t() | atom()),
        "endpoint" => [String.t() | atom()],
        "executionRoleArn" => String.t() | atom(),
        "idlePolicy" => idle_policy(),
        "imageArn" => String.t() | atom(),
        "imageVersion" => String.t() | atom(),
        "ingressNetworkConnectors" => list(String.t() | atom()),
        "maximumDurationInSeconds" => [integer()],
        "microvmId" => String.t() | atom(),
        "startedAt" => [non_neg_integer()],
        "state" => list(any()),
        "stateReason" => String.t() | atom(),
        "terminatedAt" => [non_neg_integer()]
      }

  """
  @type get_microvm_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      microvm_image_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "imageArn" => String.t() | atom(),
        "latestActiveImageVersion" => String.t() | atom(),
        "latestFailedImageVersion" => String.t() | atom(),
        "name" => String.t() | atom(),
        "state" => list(any())
      }

  """
  @type microvm_image_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_microvm_image_build_output() :: %{
        "architecture" => list(any()),
        "buildId" => String.t() | atom(),
        "buildState" => list(any()),
        "chipset" => list(any()),
        "chipsetGeneration" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "imageArn" => String.t() | atom(),
        "imageVersion" => String.t() | atom(),
        "snapshotBuild" => snapshot_build(),
        "stateReason" => [String.t() | atom()]
      }

  """
  @type get_microvm_image_build_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_microvm_image_version_output() :: %{
        "imageIdentifier" => String.t() | atom(),
        "imageVersion" => String.t() | atom(),
        "state" => list(any())
      }

  """
  @type delete_microvm_image_version_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hooks() :: %{
        "microvmHooks" => microvm_hooks(),
        "microvmImageHooks" => microvm_image_hooks(),
        "port" => [integer()]
      }

  """
  @type hooks() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      snapshot_build() :: %{
        "codeInstallSizeInBytes" => [float()],
        "diskSnapshotSizeInBytes" => [float()],
        "memorySnapshotSizeInBytes" => [float()]
      }

  """
  @type snapshot_build() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      managed_microvm_image_version() :: %{
        "createdAt" => [non_neg_integer()],
        "imageArn" => String.t() | atom(),
        "imageVersion" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type managed_microvm_image_version() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      port_range() :: %{
        "endPort" => integer(),
        "startPort" => integer()
      }

  """
  @type port_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()],
        "quotaCode" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()],
        "serviceCode" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_microvm_image_output() :: %{
        "createdAt" => [non_neg_integer()],
        "imageArn" => String.t() | atom(),
        "latestActiveImageVersion" => String.t() | atom(),
        "latestFailedImageVersion" => String.t() | atom(),
        "name" => String.t() | atom(),
        "state" => list(any()),
        "tags" => map(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_microvm_image_output() :: %{(String.t() | atom()) => any()}

  @type create_microvm_auth_token_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type create_microvm_image_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type create_microvm_shell_auth_token_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type delete_microvm_image_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type delete_microvm_image_version_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_microvm_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_microvm_image_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_microvm_image_build_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type get_microvm_image_version_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_managed_microvm_image_versions_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_managed_microvm_images_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_microvm_image_builds_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_microvm_image_versions_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_microvm_images_errors() ::
          internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_microvms_errors() ::
          resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type list_tags_errors() ::
          service_exception()
          | resource_not_found_exception()
          | invalid_parameter_value_exception()
          | too_many_requests_exception()

  @type resume_microvm_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type run_microvm_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type suspend_microvm_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type tag_resource_errors() ::
          resource_conflict_exception()
          | service_exception()
          | resource_not_found_exception()
          | invalid_parameter_value_exception()
          | too_many_requests_exception()

  @type terminate_microvm_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type untag_resource_errors() ::
          resource_conflict_exception()
          | service_exception()
          | resource_not_found_exception()
          | invalid_parameter_value_exception()
          | too_many_requests_exception()

  @type update_microvm_image_errors() ::
          service_quota_exceeded_exception()
          | conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  @type update_microvm_image_version_errors() ::
          conflict_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | validation_exception()
          | access_denied_exception()
          | throttling_exception()

  def metadata do
    %{
      api_version: "2025-09-09",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "lambda",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Lambda Microvms",
      signature_version: "v4",
      signing_name: "lambda",
      target_prefix: nil
    }
  end

  @doc """
  Creates an authentication token for accessing a running MicroVM.

  The token grants access to the specified ports on the MicroVM endpoint.
  """
  @spec create_microvm_auth_token(
          map(),
          String.t() | atom(),
          create_microvm_auth_token_request(),
          list()
        ) ::
          {:ok, create_microvm_auth_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_microvm_auth_token_errors()}
  def create_microvm_auth_token(%Client{} = client, microvm_identifier, input, options \\ []) do
    url_path = "/2025-09-09/microvms/#{AWS.Util.encode_uri(microvm_identifier)}/auth-token"
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
  Creates a MicroVM image from the specified code artifact and base image.

  The build is asynchronous — the image transitions from CREATING to CREATED on
  success, or CREATE_FAILED on failure. Use GetMicrovmImage to poll for
  completion.
  """
  @spec create_microvm_image(map(), create_microvm_image_request(), list()) ::
          {:ok, create_microvm_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_microvm_image_errors()}
  def create_microvm_image(%Client{} = client, input, options \\ []) do
    url_path = "/2025-09-09/microvm-images"
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
      201
    )
  end

  @doc """
  Creates a shell authentication token for interactive shell access to a running
  MicroVM.

  The MicroVM must have been run with the SHELL_INGRESS network connector
  attached.
  """
  @spec create_microvm_shell_auth_token(
          map(),
          String.t() | atom(),
          create_microvm_shell_auth_token_request(),
          list()
        ) ::
          {:ok, create_microvm_shell_auth_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_microvm_shell_auth_token_errors()}
  def create_microvm_shell_auth_token(
        %Client{} = client,
        microvm_identifier,
        input,
        options \\ []
      ) do
    url_path = "/2025-09-09/microvms/#{AWS.Util.encode_uri(microvm_identifier)}/shell-auth-token"
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
  Deletes a MicroVM image.

  This operation is idempotent; deleting an image that has already been deleted
  succeeds without error.
  """
  @spec delete_microvm_image(map(), String.t() | atom(), delete_microvm_image_input(), list()) ::
          {:ok, delete_microvm_image_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_microvm_image_errors()}
  def delete_microvm_image(%Client{} = client, image_identifier, input, options \\ []) do
    url_path = "/2025-09-09/microvm-images/#{AWS.Util.encode_uri(image_identifier)}"
    headers = []
    custom_headers = []
    query_params = []

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
  Deletes a specific version of a MicroVM image.

  This operation is idempotent; deleting a version that has already been deleted
  succeeds without error.
  """
  @spec delete_microvm_image_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_microvm_image_version_input(),
          list()
        ) ::
          {:ok, delete_microvm_image_version_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_microvm_image_version_errors()}
  def delete_microvm_image_version(
        %Client{} = client,
        image_identifier,
        image_version,
        input,
        options \\ []
      ) do
    url_path =
      "/2025-09-09/microvm-images/#{AWS.Util.encode_uri(image_identifier)}/versions/#{AWS.Util.encode_uri(image_version)}"

    headers = []
    custom_headers = []
    query_params = []

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
  Retrieves the details of a specific MicroVM, including its state, endpoint,
  image information, and configuration.

  The state field is eventually consistent — determine readiness by connecting to
  the endpoint.
  """
  @spec get_microvm(map(), String.t() | atom(), list()) ::
          {:ok, get_microvm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_microvm_errors()}
  def get_microvm(%Client{} = client, microvm_identifier, options \\ []) do
    url_path = "/2025-09-09/microvms/#{AWS.Util.encode_uri(microvm_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the details of a MicroVM image, including its state, versions, and
  configuration.
  """
  @spec get_microvm_image(map(), String.t() | atom(), list()) ::
          {:ok, get_microvm_image_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_microvm_image_errors()}
  def get_microvm_image(%Client{} = client, image_identifier, options \\ []) do
    url_path = "/2025-09-09/microvm-images/#{AWS.Util.encode_uri(image_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the details of a specific MicroVM image build, including its state,
  target architecture, and snapshot information.
  """
  @spec get_microvm_image_build(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_microvm_image_build_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_microvm_image_build_errors()}
  def get_microvm_image_build(
        %Client{} = client,
        build_id,
        image_identifier,
        image_version,
        options \\ []
      ) do
    url_path =
      "/2025-09-09/microvm-images/#{AWS.Util.encode_uri(image_identifier)}/versions/#{AWS.Util.encode_uri(image_version)}/builds/#{AWS.Util.encode_uri(build_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the details of a specific version of a MicroVM image, including its
  configuration, state, and build information.
  """
  @spec get_microvm_image_version(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_microvm_image_version_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_microvm_image_version_errors()}
  def get_microvm_image_version(
        %Client{} = client,
        image_identifier,
        image_version,
        options \\ []
      ) do
    url_path =
      "/2025-09-09/microvm-images/#{AWS.Util.encode_uri(image_identifier)}/versions/#{AWS.Util.encode_uri(image_version)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists versions of a managed MicroVM image.

  We recommend using pagination to ensure that the operation returns quickly and
  successfully.
  """
  @spec list_managed_microvm_image_versions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_managed_microvm_image_versions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_managed_microvm_image_versions_errors()}
  def list_managed_microvm_image_versions(
        %Client{} = client,
        image_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/2025-09-09/managed-microvm-images/#{AWS.Util.encode_uri(image_identifier)}/versions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists AWS managed MicroVM images available for use as base images.

  We recommend using pagination to ensure that the operation returns quickly and
  successfully.
  """
  @spec list_managed_microvm_images(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_managed_microvm_images_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_managed_microvm_images_errors()}
  def list_managed_microvm_images(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2025-09-09/managed-microvm-images"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists builds for a MicroVM image version with optional filtering by architecture
  and chipset.

  We recommend using pagination to ensure that the operation returns quickly and
  successfully.
  """
  @spec list_microvm_image_builds(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_microvm_image_builds_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_microvm_image_builds_errors()}
  def list_microvm_image_builds(
        %Client{} = client,
        image_identifier,
        image_version,
        architecture \\ nil,
        chipset \\ nil,
        chipset_generation \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/2025-09-09/microvm-images/#{AWS.Util.encode_uri(image_identifier)}/versions/#{AWS.Util.encode_uri(image_version)}/builds"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(chipset_generation) do
        [{"chipsetGeneration", chipset_generation} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(chipset) do
        [{"chipset", chipset} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(architecture) do
        [{"architecture", architecture} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists versions of a MicroVM image.

  We recommend using pagination to ensure that the operation returns quickly and
  successfully.
  """
  @spec list_microvm_image_versions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_microvm_image_versions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_microvm_image_versions_errors()}
  def list_microvm_image_versions(
        %Client{} = client,
        image_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2025-09-09/microvm-images/#{AWS.Util.encode_uri(image_identifier)}/versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists MicroVM images in the account with optional name filtering.

  We recommend using pagination to ensure that the operation returns quickly and
  successfully.
  """
  @spec list_microvm_images(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_microvm_images_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_microvm_images_errors()}
  def list_microvm_images(
        %Client{} = client,
        max_results \\ nil,
        name_filter \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2025-09-09/microvm-images"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_filter) do
        [{"nameFilter", name_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists MicroVMs in the account with optional filtering by image and version.

  We recommend using pagination to ensure that the operation returns quickly and
  successfully.
  """
  @spec list_microvms(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_microvms_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_microvms_errors()}
  def list_microvms(
        %Client{} = client,
        image_identifier \\ nil,
        image_version \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2025-09-09/microvms"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(image_version) do
        [{"imageVersion", image_version} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(image_identifier) do
        [{"imageIdentifier", image_identifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags associated with a Lambda MicroVM resource.
  """
  @spec list_tags(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_errors()}
  def list_tags(%Client{} = client, resource, options \\ []) do
    url_path = "/2017-03-31/tags/#{AWS.Util.encode_uri(resource)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Resumes a suspended MicroVM, restoring it to RUNNING state with all state
  intact.

  The MicroVM must be in SUSPENDED state.
  """
  @spec resume_microvm(map(), String.t() | atom(), resume_microvm_request(), list()) ::
          {:ok, resume_microvm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, resume_microvm_errors()}
  def resume_microvm(%Client{} = client, microvm_identifier, input, options \\ []) do
    url_path = "/2025-09-09/microvms/#{AWS.Util.encode_uri(microvm_identifier)}/resume"
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
  Runs a new MicroVM from the specified image.

  The MicroVM starts in PENDING state and transitions to RUNNING once provisioning
  completes. To connect, generate an authentication token using
  CreateMicrovmAuthToken.
  """
  @spec run_microvm(map(), run_microvm_request(), list()) ::
          {:ok, run_microvm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, run_microvm_errors()}
  def run_microvm(%Client{} = client, input, options \\ []) do
    url_path = "/2025-09-09/microvms"
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
  Suspends a running MicroVM, preserving its full memory and disk state.

  The MicroVM transitions through SUSPENDING to SUSPENDED. To restore, call
  ResumeMicrovm or send traffic to the endpoint if autoResumeEnabled is true.
  """
  @spec suspend_microvm(map(), String.t() | atom(), suspend_microvm_request(), list()) ::
          {:ok, suspend_microvm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, suspend_microvm_errors()}
  def suspend_microvm(%Client{} = client, microvm_identifier, input, options \\ []) do
    url_path = "/2025-09-09/microvms/#{AWS.Util.encode_uri(microvm_identifier)}/suspend"
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
  Adds tags to a Lambda MicroVM resource.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource, input, options \\ []) do
    url_path = "/2017-03-31/tags/#{AWS.Util.encode_uri(resource)}"
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
      204
    )
  end

  @doc """
  Terminates a MicroVM.

  This operation is idempotent; terminating a MicroVM that has already been
  terminated succeeds without error.
  """
  @spec terminate_microvm(map(), String.t() | atom(), terminate_microvm_request(), list()) ::
          {:ok, terminate_microvm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, terminate_microvm_errors()}
  def terminate_microvm(%Client{} = client, microvm_identifier, input, options \\ []) do
    url_path = "/2025-09-09/microvms/#{AWS.Util.encode_uri(microvm_identifier)}"
    headers = []
    custom_headers = []
    query_params = []

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
  Removes tags from a Lambda MicroVM resource.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource, input, options \\ []) do
    url_path = "/2017-03-31/tags/#{AWS.Util.encode_uri(resource)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
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
      204
    )
  end

  @doc """
  Updates the configuration of a MicroVM image and triggers a new version build.

  This operation uses PUT semantics — all required fields (codeArtifact,
  baseImageArn, buildRoleArn) must be provided with every request.
  """
  @spec update_microvm_image(map(), String.t() | atom(), update_microvm_image_request(), list()) ::
          {:ok, update_microvm_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_microvm_image_errors()}
  def update_microvm_image(%Client{} = client, image_identifier, input, options \\ []) do
    url_path = "/2025-09-09/microvm-images/#{AWS.Util.encode_uri(image_identifier)}"
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
  Updates the status of a specific MicroVM image version.
  """
  @spec update_microvm_image_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_microvm_image_version_request(),
          list()
        ) ::
          {:ok, update_microvm_image_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_microvm_image_version_errors()}
  def update_microvm_image_version(
        %Client{} = client,
        image_identifier,
        image_version,
        input,
        options \\ []
      ) do
    url_path =
      "/2025-09-09/microvm-images/#{AWS.Util.encode_uri(image_identifier)}/versions/#{AWS.Util.encode_uri(image_version)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
