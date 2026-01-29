# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Braket do
  @moduledoc """
  The Amazon Braket API Reference provides information about the operations and
  structures supported by Amazon Braket.

  To learn about the permissions required to call an Amazon Braket API action, see
  [Actions, resources, and condition keys for Amazon Braket](https://docs.aws.amazon.com/service-authorization/latest/reference/list_amazonbraket.html).
  [Amazon Braket Python SDK](https://amazon-braket-sdk-python.readthedocs.io/en/latest/#) and the [AWS Command Line
  Interface](https://docs.aws.amazon.com/cli/latest/reference/braket/) can be used
  to make discovery and creation of API calls easier. For more information about
  Amazon Braket features, see [What is Amazon Braket?](https://docs.aws.amazon.com/braket/latest/developerguide/what-is-braket.html)
  and important [terms and concepts](https://docs.aws.amazon.com/braket/latest/developerguide/braket-terms.html)
  in the *Amazon Braket Developer Guide*.

  ## In this guide:

    *

    *

    * `CommonParameters`

    * `CommonErrors`

  ## Available languages for AWS SDK:

    *
  [.NET](https://docs.aws.amazon.com/sdkfornet/v3/apidocs/items/Braket/NBraket.html)     *
  [C++](https://sdk.amazonaws.com/cpp/api/LATEST/root/html/index.html)

    * [Go API reference](https://docs.aws.amazon.com/sdk-for-go/api/service/braket/)

    *
  [Java](https://docs.aws.amazon.com/AWSJavaSDK/latest/javadoc/com/amazonaws/services/braket/package-summary.html)     *
  [JavaScript](https://docs.aws.amazon.com/AWSJavaScriptSDK/latest/AWS/Braket.html)

    *
  [PHP](https://docs.aws.amazon.com/aws-sdk-php/v3/api/class-Aws.Braket.BraketClient.html)     * [Python
  (Boto)](https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/braket.html)

    *
  [Ruby](https://docs.aws.amazon.com/sdk-for-ruby/v3/api/Aws/Braket.html) 

  ## Code examples from the Amazon Braket Tutorials GitHub repository:

    * [Amazon Braket
  Examples](https://github.com/amazon-braket/amazon-braket-examples)
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      cancel_job_request() :: %{}

  """
  @type cancel_job_request() :: %{}

  @typedoc """

  ## Example:

      search_quantum_tasks_response() :: %{
        optional("nextToken") => [String.t() | atom()],
        required("quantumTasks") => list(quantum_task_summary())
      }

  """
  @type search_quantum_tasks_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      quantum_task_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "deviceArn" => String.t() | atom(),
        "endedAt" => [non_neg_integer()],
        "outputS3Bucket" => [String.t() | atom()],
        "outputS3Directory" => [String.t() | atom()],
        "quantumTaskArn" => String.t() | atom(),
        "shots" => [float()],
        "status" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type quantum_task_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_spending_limits_response() :: %{
        "nextToken" => [String.t() | atom()],
        "spendingLimits" => list(spending_limit_summary())
      }

  """
  @type search_spending_limits_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_quantum_task_request() :: %{
        optional("additionalAttributeNames") => list(String.t() | atom())
      }

  """
  @type get_quantum_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_job_response() :: %{
        required("jobArn") => String.t() | atom()
      }

  """
  @type create_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      device_queue_info() :: %{
        "queue" => String.t() | atom(),
        "queuePriority" => String.t() | atom(),
        "queueSize" => [String.t() | atom()]
      }

  """
  @type device_queue_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      job_checkpoint_config() :: %{
        "localPath" => String.t() | atom(),
        "s3Uri" => String.t() | atom()
      }

  """
  @type job_checkpoint_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_spending_limits_filter() :: %{
        "name" => String.t() | atom(),
        "operator" => String.t() | atom(),
        "values" => list(String.t() | atom())
      }

  """
  @type search_spending_limits_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_spending_limits_request() :: %{
        optional("filters") => list(search_spending_limits_filter()),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type search_spending_limits_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_quantum_task_response() :: %{
        required("cancellationStatus") => String.t() | atom(),
        required("quantumTaskArn") => String.t() | atom()
      }

  """
  @type cancel_quantum_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      spending_limit_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "deviceArn" => String.t() | atom(),
        "queuedSpend" => [String.t() | atom()],
        "spendingLimit" => [String.t() | atom()],
        "spendingLimitArn" => String.t() | atom(),
        "tags" => map(),
        "timePeriod" => time_period(),
        "totalSpend" => [String.t() | atom()],
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type spending_limit_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      device_offline_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type device_offline_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_stopping_condition() :: %{
        "maxRuntimeInSeconds" => [integer()]
      }

  """
  @type job_stopping_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_devices_filter() :: %{
        "name" => [String.t() | atom()],
        "values" => list(String.t() | atom())
      }

  """
  @type search_devices_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      device_retired_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type device_retired_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_job_request() :: %{
        optional("associations") => list(association()),
        optional("checkpointConfig") => job_checkpoint_config(),
        optional("hyperParameters") => map(),
        optional("inputDataConfig") => list(input_file_config()),
        optional("stoppingCondition") => job_stopping_condition(),
        optional("tags") => map(),
        required("algorithmSpecification") => algorithm_specification(),
        required("clientToken") => String.t() | atom(),
        required("deviceConfig") => device_config(),
        required("instanceConfig") => instance_config(),
        required("jobName") => [String.t() | atom()],
        required("outputDataConfig") => job_output_data_config(),
        required("roleArn") => String.t() | atom()
      }

  """
  @type create_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_quantum_task_response() :: %{
        optional("actionMetadata") => action_metadata(),
        optional("associations") => list(association()),
        optional("endedAt") => [non_neg_integer()],
        optional("experimentalCapabilities") => list(),
        optional("failureReason") => [String.t() | atom()],
        optional("jobArn") => String.t() | atom(),
        optional("numSuccessfulShots") => [float()],
        optional("queueInfo") => quantum_task_queue_info(),
        optional("tags") => map(),
        required("createdAt") => [non_neg_integer()],
        required("deviceArn") => String.t() | atom(),
        required("deviceParameters") => String.t() | atom(),
        required("outputS3Bucket") => [String.t() | atom()],
        required("outputS3Directory") => [String.t() | atom()],
        required("quantumTaskArn") => String.t() | atom(),
        required("shots") => [float()],
        required("status") => String.t() | atom()
      }

  """
  @type get_quantum_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_service_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_service_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_quantum_tasks_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()],
        required("filters") => list(search_quantum_tasks_filter())
      }

  """
  @type search_quantum_tasks_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list([String.t() | atom()]())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_quantum_task_request() :: %{
        required("clientToken") => String.t() | atom()
      }

  """
  @type cancel_quantum_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      time_period() :: %{
        "endAt" => [non_neg_integer()],
        "startAt" => [non_neg_integer()]
      }

  """
  @type time_period() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_spending_limit_request() :: %{}

  """
  @type delete_spending_limit_request() :: %{}

  @typedoc """

  ## Example:

      algorithm_specification() :: %{
        "containerImage" => container_image(),
        "scriptModeConfig" => script_mode_config()
      }

  """
  @type algorithm_specification() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_output_data_config() :: %{
        "kmsKeyId" => String.t() | atom(),
        "s3Path" => String.t() | atom()
      }

  """
  @type job_output_data_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      device_config() :: %{
        "device" => String.t() | atom()
      }

  """
  @type device_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "device" => String.t() | atom(),
        "endedAt" => [non_neg_integer()],
        "jobArn" => String.t() | atom(),
        "jobName" => [String.t() | atom()],
        "startedAt" => [non_neg_integer()],
        "status" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type job_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      script_mode_config() :: %{
        "compressionType" => String.t() | atom(),
        "entryPoint" => [String.t() | atom()],
        "s3Uri" => String.t() | atom()
      }

  """
  @type script_mode_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_jobs_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()],
        required("filters") => list(search_jobs_filter())
      }

  """
  @type search_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_spending_limit_request() :: %{
        optional("spendingLimit") => [String.t() | atom()],
        optional("timePeriod") => time_period(),
        required("clientToken") => String.t() | atom()
      }

  """
  @type update_spending_limit_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_spending_limit_response() :: %{}

  """
  @type update_spending_limit_response() :: %{}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      program_set_validation_failure() :: %{
        "errors" => list([String.t() | atom()]()),
        "inputsIndex" => [float()],
        "programIndex" => [float()]
      }

  """
  @type program_set_validation_failure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_spending_limit_response() :: %{
        "spendingLimitArn" => String.t() | atom()
      }

  """
  @type create_spending_limit_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      container_image() :: %{
        "uri" => String.t() | atom()
      }

  """
  @type container_image() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      association() :: %{
        "arn" => String.t() | atom(),
        "type" => String.t() | atom()
      }

  """
  @type association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_jobs_response() :: %{
        optional("nextToken") => [String.t() | atom()],
        required("jobs") => list(job_summary())
      }

  """
  @type search_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_quantum_tasks_filter() :: %{
        "name" => String.t() | atom(),
        "operator" => String.t() | atom(),
        "values" => list(String.t() | atom())
      }

  """
  @type search_quantum_tasks_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_jobs_filter() :: %{
        "name" => String.t() | atom(),
        "operator" => String.t() | atom(),
        "values" => list(String.t() | atom())
      }

  """
  @type search_jobs_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hybrid_job_queue_info() :: %{
        "message" => [String.t() | atom()],
        "position" => [String.t() | atom()],
        "queue" => String.t() | atom()
      }

  """
  @type hybrid_job_queue_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_devices_response() :: %{
        optional("nextToken") => [String.t() | atom()],
        required("devices") => list(device_summary())
      }

  """
  @type search_devices_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_event_details() :: %{
        "eventType" => String.t() | atom(),
        "message" => [String.t() | atom()],
        "timeOfEvent" => [non_neg_integer()]
      }

  """
  @type job_event_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_device_request() :: %{}

  """
  @type get_device_request() :: %{}

  @typedoc """

  ## Example:

      create_quantum_task_response() :: %{
        required("quantumTaskArn") => String.t() | atom()
      }

  """
  @type create_quantum_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      action_metadata() :: %{
        "actionType" => [String.t() | atom()],
        "executableCount" => [float()],
        "programCount" => [float()]
      }

  """
  @type action_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      device_summary() :: %{
        "deviceArn" => String.t() | atom(),
        "deviceName" => [String.t() | atom()],
        "deviceStatus" => String.t() | atom(),
        "deviceType" => String.t() | atom(),
        "providerName" => [String.t() | atom()]
      }

  """
  @type device_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_quantum_task_request() :: %{
        optional("associations") => list(association()),
        optional("deviceParameters") => String.t() | atom(),
        optional("experimentalCapabilities") => list(),
        optional("jobToken") => String.t() | atom(),
        optional("tags") => map(),
        required("action") => String.t() | atom(),
        required("clientToken") => String.t() | atom(),
        required("deviceArn") => String.t() | atom(),
        required("outputS3Bucket") => [String.t() | atom()],
        required("outputS3KeyPrefix") => [String.t() | atom()],
        required("shots") => [float()]
      }

  """
  @type create_quantum_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      quantum_task_queue_info() :: %{
        "message" => [String.t() | atom()],
        "position" => [String.t() | atom()],
        "queue" => String.t() | atom(),
        "queuePriority" => String.t() | atom()
      }

  """
  @type quantum_task_queue_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      get_job_response() :: %{
        optional("associations") => list(association()),
        optional("billableDuration") => [integer()],
        optional("checkpointConfig") => job_checkpoint_config(),
        optional("deviceConfig") => device_config(),
        optional("endedAt") => [non_neg_integer()],
        optional("events") => list(job_event_details()),
        optional("failureReason") => String.t() | atom(),
        optional("hyperParameters") => map(),
        optional("inputDataConfig") => list(input_file_config()),
        optional("queueInfo") => hybrid_job_queue_info(),
        optional("startedAt") => [non_neg_integer()],
        optional("stoppingCondition") => job_stopping_condition(),
        optional("tags") => map(),
        required("algorithmSpecification") => algorithm_specification(),
        required("createdAt") => [non_neg_integer()],
        required("instanceConfig") => instance_config(),
        required("jobArn") => String.t() | atom(),
        required("jobName") => [String.t() | atom()],
        required("outputDataConfig") => job_output_data_config(),
        required("roleArn") => String.t() | atom(),
        required("status") => String.t() | atom()
      }

  """
  @type get_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t() | atom()],
        "programSetValidationFailures" => list(program_set_validation_failure()),
        "reason" => String.t() | atom()
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

      instance_config() :: %{
        "instanceCount" => [integer()],
        "instanceType" => String.t() | atom(),
        "volumeSizeInGb" => [integer()]
      }

  """
  @type instance_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_spending_limit_response() :: %{}

  """
  @type delete_spending_limit_response() :: %{}

  @typedoc """

  ## Example:

      get_job_request() :: %{
        optional("additionalAttributeNames") => list(String.t() | atom())
      }

  """
  @type get_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_source() :: %{
        "s3DataSource" => s3_data_source()
      }

  """
  @type data_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      input_file_config() :: %{
        "channelName" => String.t() | atom(),
        "contentType" => String.t() | atom(),
        "dataSource" => data_source()
      }

  """
  @type input_file_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_job_response() :: %{
        required("cancellationStatus") => String.t() | atom(),
        required("jobArn") => String.t() | atom()
      }

  """
  @type cancel_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_spending_limit_request() :: %{
        optional("tags") => map(),
        optional("timePeriod") => time_period(),
        required("clientToken") => String.t() | atom(),
        required("deviceArn") => String.t() | atom(),
        required("spendingLimit") => [String.t() | atom()]
      }

  """
  @type create_spending_limit_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_devices_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()],
        required("filters") => list(search_devices_filter())
      }

  """
  @type search_devices_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_device_response() :: %{
        optional("deviceQueueInfo") => list(device_queue_info()),
        required("deviceArn") => String.t() | atom(),
        required("deviceCapabilities") => String.t() | atom(),
        required("deviceName") => [String.t() | atom()],
        required("deviceStatus") => String.t() | atom(),
        required("deviceType") => String.t() | atom(),
        required("providerName") => [String.t() | atom()]
      }

  """
  @type get_device_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_data_source() :: %{
        "s3Uri" => String.t() | atom()
      }

  """
  @type s3_data_source() :: %{(String.t() | atom()) => any()}

  @type cancel_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_exception()

  @type cancel_quantum_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_exception()

  @type create_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | internal_service_exception()
          | device_retired_exception()
          | device_offline_exception()

  @type create_quantum_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | internal_service_exception()
          | device_retired_exception()
          | device_offline_exception()

  @type create_spending_limit_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_service_exception()
          | device_retired_exception()

  @type delete_spending_limit_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_device_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_quantum_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | resource_not_found_exception() | internal_service_exception()

  @type search_devices_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_service_exception()

  @type search_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_service_exception()

  @type search_quantum_tasks_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_service_exception()

  @type search_spending_limits_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_service_exception()

  @type tag_resource_errors() ::
          validation_exception() | resource_not_found_exception() | internal_service_exception()

  @type untag_resource_errors() ::
          validation_exception() | resource_not_found_exception() | internal_service_exception()

  @type update_spending_limit_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  def metadata do
    %{
      api_version: "2019-09-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: nil,
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Braket",
      signature_version: "v4",
      signing_name: "braket",
      target_prefix: nil
    }
  end

  @doc """
  Cancels an Amazon Braket hybrid job.
  """
  @spec cancel_job(map(), String.t() | atom(), cancel_job_request(), list()) ::
          {:ok, cancel_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_job_errors()}
  def cancel_job(%Client{} = client, job_arn, input, options \\ []) do
    url_path = "/job/#{AWS.Util.encode_uri(job_arn)}/cancel"
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
  Cancels the specified task.
  """
  @spec cancel_quantum_task(map(), String.t() | atom(), cancel_quantum_task_request(), list()) ::
          {:ok, cancel_quantum_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_quantum_task_errors()}
  def cancel_quantum_task(%Client{} = client, quantum_task_arn, input, options \\ []) do
    url_path = "/quantum-task/#{AWS.Util.encode_uri(quantum_task_arn)}/cancel"
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
  Creates an Amazon Braket hybrid job.
  """
  @spec create_job(map(), create_job_request(), list()) ::
          {:ok, create_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_job_errors()}
  def create_job(%Client{} = client, input, options \\ []) do
    url_path = "/job"
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
  Creates a quantum task.
  """
  @spec create_quantum_task(map(), create_quantum_task_request(), list()) ::
          {:ok, create_quantum_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_quantum_task_errors()}
  def create_quantum_task(%Client{} = client, input, options \\ []) do
    url_path = "/quantum-task"
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
  Creates a spending limit for a specified quantum device.

  Spending limits help you control costs by setting maximum amounts that can be
  spent on quantum computing tasks within a specified time period. Simulators do
  not support spending limits.
  """
  @spec create_spending_limit(map(), create_spending_limit_request(), list()) ::
          {:ok, create_spending_limit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_spending_limit_errors()}
  def create_spending_limit(%Client{} = client, input, options \\ []) do
    url_path = "/spending-limit"
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
  Deletes an existing spending limit.

  This operation permanently removes the spending limit and cannot be undone.
  After deletion, the associated device becomes unrestricted for spending.
  """
  @spec delete_spending_limit(map(), String.t() | atom(), delete_spending_limit_request(), list()) ::
          {:ok, delete_spending_limit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_spending_limit_errors()}
  def delete_spending_limit(%Client{} = client, spending_limit_arn, input, options \\ []) do
    url_path = "/spending-limit/#{AWS.Util.encode_uri(spending_limit_arn)}/delete"
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
  Retrieves the devices available in Amazon Braket.

  For backwards compatibility with older versions of BraketSchemas, OpenQASM
  information is omitted from GetDevice API calls. To get this information the
  user-agent needs to present a recent version of the BraketSchemas (1.8.0 or
  later). The Braket SDK automatically reports this for you. If you do not see
  OpenQASM results in the GetDevice response when using a Braket SDK, you may need
  to set AWS_EXECUTION_ENV environment variable to configure user-agent. See the
  code examples provided below for how to do this for the AWS CLI, Boto3, and the
  Go, Java, and JavaScript/TypeScript SDKs.
  """
  @spec get_device(map(), String.t() | atom(), list()) ::
          {:ok, get_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_device_errors()}
  def get_device(%Client{} = client, device_arn, options \\ []) do
    url_path = "/device/#{AWS.Util.encode_uri(device_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the specified Amazon Braket hybrid job.
  """
  @spec get_job(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, get_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_job_errors()}
  def get_job(%Client{} = client, job_arn, additional_attribute_names \\ nil, options \\ []) do
    url_path = "/job/#{AWS.Util.encode_uri(job_arn)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(additional_attribute_names) do
        [{"additionalAttributeNames", additional_attribute_names} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the specified quantum task.
  """
  @spec get_quantum_task(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, get_quantum_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_quantum_task_errors()}
  def get_quantum_task(
        %Client{} = client,
        quantum_task_arn,
        additional_attribute_names \\ nil,
        options \\ []
      ) do
    url_path = "/quantum-task/#{AWS.Util.encode_uri(quantum_task_arn)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(additional_attribute_names) do
        [{"additionalAttributeNames", additional_attribute_names} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Shows the tags associated with this resource.
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
  Searches for devices using the specified filters.
  """
  @spec search_devices(map(), search_devices_request(), list()) ::
          {:ok, search_devices_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_devices_errors()}
  def search_devices(%Client{} = client, input, options \\ []) do
    url_path = "/devices"
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
  Searches for Amazon Braket hybrid jobs that match the specified filter values.
  """
  @spec search_jobs(map(), search_jobs_request(), list()) ::
          {:ok, search_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_jobs_errors()}
  def search_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/jobs"
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
  Searches for tasks that match the specified filter values.
  """
  @spec search_quantum_tasks(map(), search_quantum_tasks_request(), list()) ::
          {:ok, search_quantum_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_quantum_tasks_errors()}
  def search_quantum_tasks(%Client{} = client, input, options \\ []) do
    url_path = "/quantum-tasks"
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
  Searches and lists spending limits based on specified filters.

  This operation supports pagination and allows filtering by various criteria to
  find specific spending limits. We recommend using pagination to ensure that the
  operation returns quickly and successfully.
  """
  @spec search_spending_limits(map(), search_spending_limits_request(), list()) ::
          {:ok, search_spending_limits_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_spending_limits_errors()}
  def search_spending_limits(%Client{} = client, input, options \\ []) do
    url_path = "/spending-limits"
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
  Add a tag to the specified resource.
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
  Remove tags from a resource.
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
  Updates an existing spending limit.

  You can modify the spending amount or time period. Changes take effect
  immediately.
  """
  @spec update_spending_limit(map(), String.t() | atom(), update_spending_limit_request(), list()) ::
          {:ok, update_spending_limit_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_spending_limit_errors()}
  def update_spending_limit(%Client{} = client, spending_limit_arn, input, options \\ []) do
    url_path = "/spending-limit/#{AWS.Util.encode_uri(spending_limit_arn)}/update"
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
