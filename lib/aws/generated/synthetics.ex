# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Synthetics do
  @moduledoc """
  Amazon CloudWatch Synthetics

  You can use Amazon CloudWatch Synthetics to continually monitor your services.

  You can
  create and manage *canaries*, which are modular, lightweight scripts
  that monitor your endpoints and APIs
  from the outside-in. You can set up your canaries to run
  24 hours a day, once per minute. The canaries help you check the availability
  and latency
  of your web services and troubleshoot anomalies by investigating load time data,
  screenshots of the UI, logs, and metrics. The canaries seamlessly integrate with
  CloudWatch
  ServiceLens to help you trace the causes of impacted nodes in your applications.
  For more
  information, see [Using ServiceLens to Monitor the Health of Your
  Applications](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/ServiceLens.html)
  in the *Amazon CloudWatch User
  Guide*.

  Before you create and manage canaries, be aware of the security considerations.
  For more
  information, see [Security Considerations for Synthetics
  Canaries](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      get_canary_runs_request() :: %{
        optional("DryRunId") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("RunType") => list(any())
      }

  """
  @type get_canary_runs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_failure_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type internal_failure_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_canary_request() :: %{}

  """
  @type stop_canary_request() :: %{}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      dependency() :: %{
        "Reference" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type dependency() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_canaries_response() :: %{
        "Canaries" => list(canary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type describe_canaries_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_canaries_request() :: %{
        optional("MaxResults") => integer(),
        optional("Names") => list(String.t() | atom()),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type describe_canaries_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      canary_dry_run_config_output() :: %{
        "DryRunId" => String.t() | atom()
      }

  """
  @type canary_dry_run_config_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_canary_response() :: %{}

  """
  @type delete_canary_response() :: %{}

  @typedoc """

  ## Example:

      create_canary_request() :: %{
        optional("ArtifactConfig") => artifact_config_input(),
        optional("BrowserConfigs") => list(browser_config()),
        optional("FailureRetentionPeriodInDays") => integer(),
        optional("ProvisionedResourceCleanup") => list(any()),
        optional("ResourcesToReplicateTags") => list(list(any())()),
        optional("RunConfig") => canary_run_config_input(),
        optional("SuccessRetentionPeriodInDays") => integer(),
        optional("Tags") => map(),
        optional("VpcConfig") => vpc_config_input(),
        required("ArtifactS3Location") => String.t() | atom(),
        required("Code") => canary_code_input(),
        required("ExecutionRoleArn") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("RuntimeVersion") => String.t() | atom(),
        required("Schedule") => canary_schedule_input()
      }

  """
  @type create_canary_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      visual_reference_output() :: %{
        "BaseCanaryRunId" => String.t() | atom(),
        "BaseScreenshots" => list(base_screenshot()),
        "BrowserType" => list(any())
      }

  """
  @type visual_reference_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_canary_dry_run_request() :: %{
        optional("ArtifactConfig") => artifact_config_input(),
        optional("ArtifactS3Location") => String.t() | atom(),
        optional("BrowserConfigs") => list(browser_config()),
        optional("Code") => canary_code_input(),
        optional("ExecutionRoleArn") => String.t() | atom(),
        optional("FailureRetentionPeriodInDays") => integer(),
        optional("ProvisionedResourceCleanup") => list(any()),
        optional("RunConfig") => canary_run_config_input(),
        optional("RuntimeVersion") => String.t() | atom(),
        optional("SuccessRetentionPeriodInDays") => integer(),
        optional("VisualReference") => visual_reference_input(),
        optional("VisualReferences") => list(visual_reference_input()),
        optional("VpcConfig") => vpc_config_input()
      }

  """
  @type start_canary_dry_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      canary_status() :: %{
        "State" => list(any()),
        "StateReason" => String.t() | atom(),
        "StateReasonCode" => list(any())
      }

  """
  @type canary_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_runtime_versions_response() :: %{
        "NextToken" => String.t() | atom(),
        "RuntimeVersions" => list(runtime_version())
      }

  """
  @type describe_runtime_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      canary_run_config_output() :: %{
        "ActiveTracing" => boolean(),
        "EphemeralStorage" => integer(),
        "MemoryInMB" => integer(),
        "TimeoutInSeconds" => integer()
      }

  """
  @type canary_run_config_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_canaries_last_run_response() :: %{
        "CanariesLastRun" => list(canary_last_run()),
        "NextToken" => String.t() | atom()
      }

  """
  @type describe_canaries_last_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_canary_response() :: %{}

  """
  @type stop_canary_response() :: %{}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type too_many_requests_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_group_resources_response() :: %{
        "NextToken" => String.t() | atom(),
        "Resources" => list(String.t() | atom())
      }

  """
  @type list_group_resources_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_encryption_config() :: %{
        "EncryptionMode" => list(any()),
        "KmsKeyArn" => String.t() | atom()
      }

  """
  @type s3_encryption_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_canary_response() :: %{}

  """
  @type start_canary_response() :: %{}

  @typedoc """

  ## Example:

      canary_run() :: %{
        "ArtifactS3Location" => String.t() | atom(),
        "BrowserType" => list(any()),
        "DryRunConfig" => canary_dry_run_config_output(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "RetryAttempt" => integer(),
        "ScheduledRunId" => String.t() | atom(),
        "Status" => canary_run_status(),
        "Timeline" => canary_run_timeline()
      }

  """
  @type canary_run() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      canary_schedule_input() :: %{
        "DurationInSeconds" => float(),
        "Expression" => String.t() | atom(),
        "RetryConfig" => retry_config_input()
      }

  """
  @type canary_schedule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_resource_response() :: %{}

  """
  @type associate_resource_response() :: %{}

  @typedoc """

  ## Example:

      get_canary_response() :: %{
        "Canary" => canary()
      }

  """
  @type get_canary_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      canary_run_config_input() :: %{
        "ActiveTracing" => boolean(),
        "EnvironmentVariables" => map(),
        "EphemeralStorage" => integer(),
        "MemoryInMB" => integer(),
        "TimeoutInSeconds" => integer()
      }

  """
  @type canary_run_config_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_canary_request() :: %{
        optional("ArtifactConfig") => artifact_config_input(),
        optional("ArtifactS3Location") => String.t() | atom(),
        optional("BrowserConfigs") => list(browser_config()),
        optional("Code") => canary_code_input(),
        optional("DryRunId") => String.t() | atom(),
        optional("ExecutionRoleArn") => String.t() | atom(),
        optional("FailureRetentionPeriodInDays") => integer(),
        optional("ProvisionedResourceCleanup") => list(any()),
        optional("RunConfig") => canary_run_config_input(),
        optional("RuntimeVersion") => String.t() | atom(),
        optional("Schedule") => canary_schedule_input(),
        optional("SuccessRetentionPeriodInDays") => integer(),
        optional("VisualReference") => visual_reference_input(),
        optional("VisualReferences") => list(visual_reference_input()),
        optional("VpcConfig") => vpc_config_input()
      }

  """
  @type update_canary_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      canary_run_timeline() :: %{
        "Completed" => non_neg_integer(),
        "MetricTimestampForRunAndRetries" => non_neg_integer(),
        "Started" => non_neg_integer()
      }

  """
  @type canary_run_timeline() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_canary_response() :: %{}

  """
  @type update_canary_response() :: %{}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      canary_run_status() :: %{
        "State" => list(any()),
        "StateReason" => String.t() | atom(),
        "StateReasonCode" => list(any()),
        "TestResult" => list(any())
      }

  """
  @type canary_run_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      canary_last_run() :: %{
        "CanaryName" => String.t() | atom(),
        "LastRun" => canary_run()
      }

  """
  @type canary_last_run() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      artifact_config_output() :: %{
        "S3Encryption" => s3_encryption_config()
      }

  """
  @type artifact_config_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      base_screenshot() :: %{
        "IgnoreCoordinates" => list(String.t() | atom()),
        "ScreenshotName" => String.t() | atom()
      }

  """
  @type base_screenshot() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vpc_config_output() :: %{
        "Ipv6AllowedForDualStack" => boolean(),
        "SecurityGroupIds" => list(String.t() | atom()),
        "SubnetIds" => list(String.t() | atom()),
        "VpcId" => String.t() | atom()
      }

  """
  @type vpc_config_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_group_request() :: %{
        optional("Tags") => map(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_resource_response() :: %{}

  """
  @type disassociate_resource_response() :: %{}

  @typedoc """

  ## Example:

      canary_timeline() :: %{
        "Created" => non_neg_integer(),
        "LastModified" => non_neg_integer(),
        "LastStarted" => non_neg_integer(),
        "LastStopped" => non_neg_integer()
      }

  """
  @type canary_timeline() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_resource_request() :: %{
        required("ResourceArn") => String.t() | atom()
      }

  """
  @type associate_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_canary_runs_response() :: %{
        "CanaryRuns" => list(canary_run()),
        "NextToken" => String.t() | atom()
      }

  """
  @type get_canary_runs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      canary_code_output() :: %{
        "Dependencies" => list(dependency()),
        "Handler" => String.t() | atom(),
        "SourceLocationArn" => String.t() | atom()
      }

  """
  @type canary_code_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_canaries_last_run_request() :: %{
        optional("BrowserType") => list(any()),
        optional("MaxResults") => integer(),
        optional("Names") => list(String.t() | atom()),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type describe_canaries_last_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_resource_request() :: %{
        required("ResourceArn") => String.t() | atom()
      }

  """
  @type disassociate_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_runtime_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type describe_runtime_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dry_run_config_output() :: %{
        "DryRunId" => String.t() | atom(),
        "LastDryRunExecutionStatus" => String.t() | atom()
      }

  """
  @type dry_run_config_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      visual_reference_input() :: %{
        "BaseCanaryRunId" => String.t() | atom(),
        "BaseScreenshots" => list(base_screenshot()),
        "BrowserType" => list(any())
      }

  """
  @type visual_reference_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      request_entity_too_large_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type request_entity_too_large_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_canary_request() :: %{}

  """
  @type start_canary_request() :: %{}

  @typedoc """

  ## Example:

      delete_group_response() :: %{}

  """
  @type delete_group_response() :: %{}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      engine_config() :: %{
        "BrowserType" => list(any()),
        "EngineArn" => String.t() | atom()
      }

  """
  @type engine_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      runtime_version() :: %{
        "DeprecationDate" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "ReleaseDate" => non_neg_integer(),
        "VersionName" => String.t() | atom()
      }

  """
  @type runtime_version() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      canary() :: %{
        "ArtifactConfig" => artifact_config_output(),
        "ArtifactS3Location" => String.t() | atom(),
        "BrowserConfigs" => list(browser_config()),
        "Code" => canary_code_output(),
        "DryRunConfig" => dry_run_config_output(),
        "EngineArn" => String.t() | atom(),
        "EngineConfigs" => list(engine_config()),
        "ExecutionRoleArn" => String.t() | atom(),
        "FailureRetentionPeriodInDays" => integer(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "ProvisionedResourceCleanup" => list(any()),
        "RunConfig" => canary_run_config_output(),
        "RuntimeVersion" => String.t() | atom(),
        "Schedule" => canary_schedule_output(),
        "Status" => canary_status(),
        "SuccessRetentionPeriodInDays" => integer(),
        "Tags" => map(),
        "Timeline" => canary_timeline(),
        "VisualReference" => visual_reference_output(),
        "VisualReferences" => list(visual_reference_output()),
        "VpcConfig" => vpc_config_output()
      }

  """
  @type canary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vpc_config_input() :: %{
        "Ipv6AllowedForDualStack" => boolean(),
        "SecurityGroupIds" => list(String.t() | atom()),
        "SubnetIds" => list(String.t() | atom())
      }

  """
  @type vpc_config_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_canary_request() :: %{
        optional("DeleteLambda") => boolean()
      }

  """
  @type delete_canary_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_canary_dry_run_response() :: %{
        "DryRunConfig" => dry_run_config_output()
      }

  """
  @type start_canary_dry_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_associated_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_associated_groups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      list_group_resources_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_group_resources_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      group() :: %{
        "Arn" => String.t() | atom(),
        "CreatedTime" => non_neg_integer(),
        "Id" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_group_response() :: %{
        "Group" => group()
      }

  """
  @type get_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_group_request() :: %{}

  """
  @type delete_group_request() :: %{}

  @typedoc """

  ## Example:

      get_canary_request() :: %{
        optional("DryRunId") => String.t() | atom()
      }

  """
  @type get_canary_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type bad_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      group_summary() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type group_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_associated_groups_response() :: %{
        "Groups" => list(group_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_associated_groups_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      browser_config() :: %{
        "BrowserType" => list(any())
      }

  """
  @type browser_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_groups_response() :: %{
        "Groups" => list(group_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_groups_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_group_request() :: %{}

  """
  @type get_group_request() :: %{}

  @typedoc """

  ## Example:

      canary_schedule_output() :: %{
        "DurationInSeconds" => float(),
        "Expression" => String.t() | atom(),
        "RetryConfig" => retry_config_output()
      }

  """
  @type canary_schedule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_groups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      retry_config_input() :: %{
        "MaxRetries" => integer()
      }

  """
  @type retry_config_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_canary_response() :: %{
        "Canary" => canary()
      }

  """
  @type create_canary_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      canary_code_input() :: %{
        "Dependencies" => list(dependency()),
        "Handler" => String.t() | atom(),
        "S3Bucket" => String.t() | atom(),
        "S3Key" => String.t() | atom(),
        "S3Version" => String.t() | atom(),
        "ZipFile" => binary()
      }

  """
  @type canary_code_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      artifact_config_input() :: %{
        "S3Encryption" => s3_encryption_config()
      }

  """
  @type artifact_config_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_group_response() :: %{
        "Group" => group()
      }

  """
  @type create_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      retry_config_output() :: %{
        "MaxRetries" => integer()
      }

  """
  @type retry_config_output() :: %{(String.t() | atom()) => any()}

  @type associate_resource_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_canary_errors() ::
          validation_exception()
          | request_entity_too_large_exception()
          | internal_server_exception()

  @type create_group_errors() ::
          validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_canary_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_group_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_canaries_errors() :: validation_exception() | internal_server_exception()

  @type describe_canaries_last_run_errors() ::
          validation_exception() | internal_server_exception()

  @type describe_runtime_versions_errors() :: validation_exception() | internal_server_exception()

  @type disassociate_resource_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_canary_errors() :: validation_exception() | internal_server_exception()

  @type get_canary_runs_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_group_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_associated_groups_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_group_resources_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_groups_errors() :: validation_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | internal_failure_exception()

  @type start_canary_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_canary_dry_run_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_canary_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | internal_failure_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | internal_failure_exception()

  @type update_canary_errors() ::
          validation_exception()
          | access_denied_exception()
          | request_entity_too_large_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2017-10-11",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "synthetics",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "synthetics",
      signature_version: "v4",
      signing_name: "synthetics",
      target_prefix: nil
    }
  end

  @doc """
  Associates a canary with a group.

  Using groups can help you with
  managing and automating your canaries, and you can also view aggregated run
  results and statistics
  for all canaries in a group.

  You must run this operation in the Region where the canary exists.
  """
  @spec associate_resource(map(), String.t() | atom(), associate_resource_request(), list()) ::
          {:ok, associate_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_resource_errors()}
  def associate_resource(%Client{} = client, group_identifier, input, options \\ []) do
    url_path = "/group/#{AWS.Util.encode_uri(group_identifier)}/associate"
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

  @doc """
  Creates a canary.

  Canaries are scripts that monitor your endpoints and APIs from the
  outside-in. Canaries help you check the availability and latency of your web
  services and
  troubleshoot anomalies by investigating load time data, screenshots of the UI,
  logs, and
  metrics. You can set up a canary to run continuously or just once.

  Do not use `CreateCanary` to modify an existing canary. Use
  [UpdateCanary](https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_UpdateCanary.html) instead.

  To create canaries, you must have the `CloudWatchSyntheticsFullAccess` policy.
  If you are creating a new IAM role for the canary, you also need the
  `iam:CreateRole`, `iam:CreatePolicy` and
  `iam:AttachRolePolicy` permissions. For more information, see [Necessary
  Roles and
  Permissions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Roles).

  Do not include secrets or proprietary information in your canary names. The
  canary name
  makes up part of the Amazon Resource Name (ARN) for the canary, and the ARN is
  included in
  outbound calls over the internet. For more information, see [Security Considerations for Synthetics
  Canaries](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/servicelens_canaries_security.html).
  """
  @spec create_canary(map(), create_canary_request(), list()) ::
          {:ok, create_canary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_canary_errors()}
  def create_canary(%Client{} = client, input, options \\ []) do
    url_path = "/canary"
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
  Creates a group which you can use to associate canaries with each other,
  including cross-Region
  canaries.

  Using groups can help you with
  managing and automating your canaries, and you can also view aggregated run
  results and statistics
  for all canaries in a group.

  Groups are global resources. When you create a group, it is replicated across
  Amazon Web Services Regions, and
  you can view it and add canaries to it from any Region.
  Although the group ARN format reflects the Region name where it was created, a
  group is not constrained to any Region.
  This means that you can put canaries from multiple Regions into the same group,
  and then use
  that group to view and manage all of those canaries in a single view.

  Groups are supported in all Regions except the Regions that are disabled by
  default. For more information
  about these Regions, see [Enabling a Region](https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-enable).

  Each group can contain as many as 10 canaries. You can have as many as 20 groups
  in your account. Any single canary
  can be a member of up to 10 groups.
  """
  @spec create_group(map(), create_group_request(), list()) ::
          {:ok, create_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_group_errors()}
  def create_group(%Client{} = client, input, options \\ []) do
    url_path = "/group"
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
  Permanently deletes the specified canary.

  If the canary's `ProvisionedResourceCleanup` field is set to `AUTOMATIC`
  or you specify `DeleteLambda` in this operation as `true`, CloudWatch Synthetics
  also deletes
  the Lambda functions and layers that are used by the canary.

  Other resources used and created by the canary are not automatically deleted.
  After you delete a canary, you
  should also delete the following:

    *
  The CloudWatch alarms created for this canary. These alarms have a name of

  ```
  Synthetics-Alarm-*first-198-characters-of-canary-name*-*canaryId*-*alarm number*

  ```

    *
  Amazon S3 objects and buckets, such as the canary's artifact location.

    *
  IAM roles created for the canary. If they were created in the console, these
  roles
  have the name

  ```

  role/service-role/CloudWatchSyntheticsRole-*First-21-Characters-of-CanaryName*

  ```

    *
  CloudWatch Logs log groups created for the canary. These logs groups have the
  name

  ```
  /aws/lambda/cwsyn-*First-21-Characters-of-CanaryName*

  ```

  Before you delete a canary, you might want to use `GetCanary` to display
  the information about this canary. Make
  note of the information returned by this operation so that you can delete these
  resources
  after you delete the canary.
  """
  @spec delete_canary(map(), String.t() | atom(), delete_canary_request(), list()) ::
          {:ok, delete_canary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_canary_errors()}
  def delete_canary(%Client{} = client, name, input, options \\ []) do
    url_path = "/canary/#{AWS.Util.encode_uri(name)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"DeleteLambda", "deleteLambda"}
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
  Deletes a group.

  The group doesn't need to be empty to be deleted. If there are canaries in the
  group,
  they are not deleted when you delete the group.

  Groups are a global resource that appear in all Regions, but the request to
  delete a group
  must be made from its home Region. You can find the home Region of a group
  within its ARN.
  """
  @spec delete_group(map(), String.t() | atom(), delete_group_request(), list()) ::
          {:ok, delete_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_group_errors()}
  def delete_group(%Client{} = client, group_identifier, input, options \\ []) do
    url_path = "/group/#{AWS.Util.encode_uri(group_identifier)}"
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
  This operation returns a list of the canaries in your account, along with full
  details
  about each canary.

  This operation supports resource-level authorization using an IAM policy and
  the `Names` parameter. If you specify the `Names` parameter, the operation is
  successful only if you have authorization to view
  all the canaries that you specify in your request. If you do not have permission
  to view any of
  the canaries, the request fails with a 403 response.

  You are required to use the `Names` parameter if you are logged on to a user or
  role that has an
  IAM policy that restricts which canaries that you are allowed to view. For more
  information,
  see [
  Limiting a user to viewing specific
  canaries](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html).
  """
  @spec describe_canaries(map(), describe_canaries_request(), list()) ::
          {:ok, describe_canaries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_canaries_errors()}
  def describe_canaries(%Client{} = client, input, options \\ []) do
    url_path = "/canaries"
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
  Use this operation to see information from the most recent run of each canary
  that you have created.

  This operation supports resource-level authorization using an IAM policy and
  the `Names` parameter. If you specify the `Names` parameter, the operation is
  successful only if you have authorization to view
  all the canaries that you specify in your request. If you do not have permission
  to view any of
  the canaries, the request fails with a 403 response.

  You are required to use the `Names` parameter if you are logged on to a user or
  role that has an
  IAM policy that restricts which canaries that you are allowed to view. For more
  information,
  see [
  Limiting a user to viewing specific
  canaries](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Restricted.html).
  """
  @spec describe_canaries_last_run(map(), describe_canaries_last_run_request(), list()) ::
          {:ok, describe_canaries_last_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_canaries_last_run_errors()}
  def describe_canaries_last_run(%Client{} = client, input, options \\ []) do
    url_path = "/canaries/last-run"
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
  Returns a list of Synthetics canary runtime versions.

  For more information,
  see [
  Canary Runtime
  Versions](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Synthetics_Canaries_Library.html).
  """
  @spec describe_runtime_versions(map(), describe_runtime_versions_request(), list()) ::
          {:ok, describe_runtime_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_runtime_versions_errors()}
  def describe_runtime_versions(%Client{} = client, input, options \\ []) do
    url_path = "/runtime-versions"
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
  Removes a canary from a group.

  You must run this operation in the Region where the canary exists.
  """
  @spec disassociate_resource(map(), String.t() | atom(), disassociate_resource_request(), list()) ::
          {:ok, disassociate_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_resource_errors()}
  def disassociate_resource(%Client{} = client, group_identifier, input, options \\ []) do
    url_path = "/group/#{AWS.Util.encode_uri(group_identifier)}/disassociate"
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

  @doc """
  Retrieves complete information about one canary.

  You must specify
  the name of the canary that you want. To get a list of canaries
  and their names, use
  [DescribeCanaries](https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_DescribeCanaries.html).
  """
  @spec get_canary(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, get_canary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_canary_errors()}
  def get_canary(%Client{} = client, name, dry_run_id \\ nil, options \\ []) do
    url_path = "/canary/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(dry_run_id) do
        [{"dryRunId", dry_run_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of runs for a specified canary.
  """
  @spec get_canary_runs(map(), String.t() | atom(), get_canary_runs_request(), list()) ::
          {:ok, get_canary_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_canary_runs_errors()}
  def get_canary_runs(%Client{} = client, name, input, options \\ []) do
    url_path = "/canary/#{AWS.Util.encode_uri(name)}/runs"
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
  Returns information about one group.

  Groups are a global resource, so you can use this operation from
  any Region.
  """
  @spec get_group(map(), String.t() | atom(), list()) ::
          {:ok, get_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_group_errors()}
  def get_group(%Client{} = client, group_identifier, options \\ []) do
    url_path = "/group/#{AWS.Util.encode_uri(group_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of the groups that the specified canary is associated with.

  The canary
  that you specify must be in the current Region.
  """
  @spec list_associated_groups(
          map(),
          String.t() | atom(),
          list_associated_groups_request(),
          list()
        ) ::
          {:ok, list_associated_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_associated_groups_errors()}
  def list_associated_groups(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/resource/#{AWS.Util.encode_uri(resource_arn)}/groups"
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
  This operation returns a list of the ARNs of the canaries that are associated
  with the specified group.
  """
  @spec list_group_resources(map(), String.t() | atom(), list_group_resources_request(), list()) ::
          {:ok, list_group_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_group_resources_errors()}
  def list_group_resources(%Client{} = client, group_identifier, input, options \\ []) do
    url_path = "/group/#{AWS.Util.encode_uri(group_identifier)}/resources"
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
  Returns a list of all groups in the account, displaying their names, unique IDs,
  and ARNs.

  The groups
  from all Regions are returned.
  """
  @spec list_groups(map(), list_groups_request(), list()) ::
          {:ok, list_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_groups_errors()}
  def list_groups(%Client{} = client, input, options \\ []) do
    url_path = "/groups"
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
  Displays the tags associated with a canary or group.
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
  Use this operation to run a canary that has already been created.

  The frequency of the canary runs is determined by the value of the canary's
  `Schedule`. To see a canary's schedule,
  use
  [GetCanary](https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_GetCanary.html).
  """
  @spec start_canary(map(), String.t() | atom(), start_canary_request(), list()) ::
          {:ok, start_canary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_canary_errors()}
  def start_canary(%Client{} = client, name, input, options \\ []) do
    url_path = "/canary/#{AWS.Util.encode_uri(name)}/start"
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
  Use this operation to start a dry run for a canary that has already been created
  """
  @spec start_canary_dry_run(map(), String.t() | atom(), start_canary_dry_run_request(), list()) ::
          {:ok, start_canary_dry_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_canary_dry_run_errors()}
  def start_canary_dry_run(%Client{} = client, name, input, options \\ []) do
    url_path = "/canary/#{AWS.Util.encode_uri(name)}/dry-run/start"
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
  Stops the canary to prevent all future runs.

  If the canary is currently running,the
  run that is in progress completes on its own, publishes metrics, and uploads
  artifacts, but
  it is not recorded in Synthetics as a completed run.

  You can use `StartCanary` to start it running again
  with the canary’s current schedule at any point in the future.
  """
  @spec stop_canary(map(), String.t() | atom(), stop_canary_request(), list()) ::
          {:ok, stop_canary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_canary_errors()}
  def stop_canary(%Client{} = client, name, input, options \\ []) do
    url_path = "/canary/#{AWS.Util.encode_uri(name)}/stop"
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
  Assigns one or more tags (key-value pairs) to the specified canary or group.

  Tags can help you organize and categorize your
  resources. You can also use them to scope user permissions, by granting a user
  permission to access or change only resources with
  certain tag values.

  Tags don't have any semantic meaning to Amazon Web Services and are interpreted
  strictly as strings of characters.

  You can use the `TagResource` action with a resource that already has tags. If
  you specify a new
  tag key for the resource,
  this tag is appended to the list of tags associated
  with the resource. If you specify a tag key that is already associated with the
  resource, the new tag
  value that you specify replaces
  the previous value for that tag.

  You can associate as many as 50 tags with a canary or group.
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
  Removes one or more tags from the specified resource.
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
      200
    )
  end

  @doc """
  Updates the configuration of a canary that has already been created.

  For multibrowser canaries, you can add or remove browsers by updating the
  browserConfig list in the update call. For example:

    *
  To add Firefox to a canary that currently uses Chrome, specify browserConfigs as
  [CHROME, FIREFOX] 

    *
  To remove Firefox and keep only Chrome, specify browserConfigs as [CHROME]

  You can't use this operation to update the tags of an existing canary. To change
  the tags of an existing canary, use
  [TagResource](https://docs.aws.amazon.com/AmazonSynthetics/latest/APIReference/API_TagResource.html).

  When you use the `dryRunId` field when updating a canary, the only other field
  you can provide is the `Schedule`. Adding any other field will thrown an
  exception.
  """
  @spec update_canary(map(), String.t() | atom(), update_canary_request(), list()) ::
          {:ok, update_canary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_canary_errors()}
  def update_canary(%Client{} = client, name, input, options \\ []) do
    url_path = "/canary/#{AWS.Util.encode_uri(name)}"
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
