# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Lambda do
  @moduledoc """
  Lambda

  ## Overview

  Lambda is a compute service that lets you run code without provisioning or
  managing servers.

  Lambda runs your code on a high-availability compute infrastructure and performs
  all of the administration of the compute resources, including server and
  operating system maintenance, capacity provisioning and automatic scaling, code
  monitoring and logging. With Lambda, you can run code for virtually any type of
  application or backend service. For more information about the Lambda service,
  see [What is Lambda](https://docs.aws.amazon.com/lambda/latest/dg/welcome.html) in the **Lambda Developer Guide**.

  The *Lambda API Reference* provides information about each of the API methods,
  including details about the parameters in each API request and response.

  You can use Software Development Kits (SDKs), Integrated Development Environment
  (IDE) Toolkits, and command line tools to access the API. For installation
  instructions, see [Tools for Amazon Web Services](http://aws.amazon.com/tools/).

  For a list of Region-specific endpoints that Lambda supports, see [Lambda endpoints and quotas
  ](https://docs.aws.amazon.com/general/latest/gr/lambda-service.html) in the
  *Amazon Web Services General Reference.*.

  When making the API calls, you will need to authenticate your request by
  providing a signature. Lambda supports signature version 4. For more
  information, see [Signature Version 4 signing process](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html)
  in the *Amazon Web Services General Reference.*.

  ## CA certificates

  Because Amazon Web Services SDKs use the CA certificates from your computer,
  changes to the certificates on the Amazon Web Services servers can cause
  connection failures when you attempt to use an SDK. You can prevent these
  failures by keeping your computer's CA certificates and operating system
  up-to-date. If you encounter this issue in a corporate environment and do not
  manage your own computer, you might need to ask an administrator to assist with
  the update process. The following list shows minimum operating system and Java
  versions:

    * Microsoft Windows versions that have updates from January 2005 or
  later installed contain at least one of the required CAs in their trust list.

    * Mac OS X 10.4 with Java for Mac OS X 10.4 Release 5 (February
  2007), Mac OS X 10.5 (October 2007), and later versions contain at least one of
  the required CAs in their trust list.

    * Red Hat Enterprise Linux 5 (March 2007), 6, and 7 and CentOS 5, 6,
  and 7 all contain at least one of the required CAs in their default trusted CA
  list.

    * Java 1.4.2_12 (May 2006), 5 Update 2 (March 2005), and all later
  versions, including Java 6 (December 2006), 7, and 8, contain at least one of
  the required CAs in their default trusted CA list.

  When accessing the Lambda management console or Lambda API endpoints, whether
  through browsers or programmatically, you will need to ensure your client
  machines support any of the following CAs:

    * Amazon Root CA 1

    * Starfield Services Root Certificate Authority - G2

    * Starfield Class 2 Certification Authority

  Root certificates from the first two authorities are available from [Amazon trust services](https://www.amazontrust.com/repository/), but keeping your
  computer up-to-date is the more straightforward solution. To learn more about
  ACM-provided certificates, see [Amazon Web Services Certificate Manager FAQs.](http://aws.amazon.com/certificate-manager/faqs/#certificates)
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_functions_by_code_signing_config_response() :: %{
        "FunctionArns" => list(String.t() | atom()),
        "NextMarker" => String.t() | atom()
      }

  """
  @type list_functions_by_code_signing_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_usage() :: %{
        "FunctionCount" => float(),
        "TotalCodeSize" => float()
      }

  """
  @type account_usage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      function_event_invoke_config() :: %{
        optional("DestinationConfig") => destination_config(),
        optional("FunctionArn") => String.t() | atom(),
        optional("LastModified") => non_neg_integer(),
        optional("MaximumEventAgeInSeconds") => integer(),
        optional("MaximumRetryAttempts") => integer()
      }

  """
  @type function_event_invoke_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_aliases_response() :: %{
        "Aliases" => list(alias_configuration()),
        "NextMarker" => String.t() | atom()
      }

  """
  @type list_aliases_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unsupported_media_type_exception() :: %{
        "Type" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type unsupported_media_type_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      operation() :: %{
        "CallbackDetails" => callback_details(),
        "ChainedInvokeDetails" => chained_invoke_details(),
        "ContextDetails" => context_details(),
        "EndTimestamp" => non_neg_integer(),
        "ExecutionDetails" => execution_details(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "ParentId" => String.t() | atom(),
        "StartTimestamp" => non_neg_integer(),
        "Status" => list(any()),
        "StepDetails" => step_details(),
        "SubType" => String.t() | atom(),
        "Type" => list(any()),
        "WaitDetails" => wait_details()
      }

  """
  @type operation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      chained_invoke_stopped_details() :: %{
        "Error" => event_error()
      }

  """
  @type chained_invoke_stopped_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kms_disabled_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type kms_disabled_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_aliases_request() :: %{
        optional("FunctionVersion") => String.t() | atom(),
        optional("Marker") => String.t() | atom(),
        optional("MaxItems") => integer()
      }

  """
  @type list_aliases_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      function_code() :: %{
        "ImageUri" => String.t() | atom(),
        "S3Bucket" => String.t() | atom(),
        "S3Key" => String.t() | atom(),
        "S3ObjectVersion" => String.t() | atom(),
        "SourceKMSKeyArn" => String.t() | atom(),
        "ZipFile" => binary()
      }

  """
  @type function_code() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_security_group_id_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type invalid_security_group_id_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_event_source_mapping_request() :: %{
        optional("AmazonManagedKafkaEventSourceConfig") => amazon_managed_kafka_event_source_config(),
        optional("BatchSize") => integer(),
        optional("BisectBatchOnFunctionError") => boolean(),
        optional("DestinationConfig") => destination_config(),
        optional("DocumentDBEventSourceConfig") => document_db_event_source_config(),
        optional("Enabled") => boolean(),
        optional("FilterCriteria") => filter_criteria(),
        optional("FunctionName") => String.t() | atom(),
        optional("FunctionResponseTypes") => list(list(any())()),
        optional("KMSKeyArn") => String.t() | atom(),
        optional("LoggingConfig") => event_source_mapping_logging_config(),
        optional("MaximumBatchingWindowInSeconds") => integer(),
        optional("MaximumRecordAgeInSeconds") => integer(),
        optional("MaximumRetryAttempts") => integer(),
        optional("MetricsConfig") => event_source_mapping_metrics_config(),
        optional("ParallelizationFactor") => integer(),
        optional("ProvisionedPollerConfig") => provisioned_poller_config(),
        optional("ScalingConfig") => scaling_config(),
        optional("SelfManagedKafkaEventSourceConfig") => self_managed_kafka_event_source_config(),
        optional("SourceAccessConfigurations") => list(source_access_configuration()),
        optional("TumblingWindowInSeconds") => integer()
      }

  """
  @type update_event_source_mapping_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_capacity_provider_response() :: %{
        "CapacityProvider" => capacity_provider()
      }

  """
  @type delete_capacity_provider_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      runtime_version_config() :: %{
        "Error" => runtime_version_error(),
        "RuntimeVersionArn" => String.t() | atom()
      }

  """
  @type runtime_version_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_function_versions_by_capacity_provider_request() :: %{
        optional("Marker") => String.t() | atom(),
        optional("MaxItems") => integer()
      }

  """
  @type list_function_versions_by_capacity_provider_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_capacity_provider_request() :: %{}

  """
  @type delete_capacity_provider_request() :: %{}

  @typedoc """

  ## Example:

      wait_succeeded_details() :: %{
        "Duration" => integer()
      }

  """
  @type wait_succeeded_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      snap_start() :: %{
        "ApplyOn" => list(any())
      }

  """
  @type snap_start() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lambda_managed_instances_capacity_provider_config() :: %{
        "CapacityProviderArn" => String.t() | atom(),
        "ExecutionEnvironmentMemoryGiBPerVCpu" => float(),
        "PerExecutionEnvironmentMaxConcurrency" => integer()
      }

  """
  @type lambda_managed_instances_capacity_provider_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_function_scaling_config_response() :: %{
        "AppliedFunctionScalingConfig" => function_scaling_config(),
        "FunctionArn" => String.t() | atom(),
        "RequestedFunctionScalingConfig" => function_scaling_config()
      }

  """
  @type get_function_scaling_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_code_signing_config_request() :: %{}

  """
  @type get_code_signing_config_request() :: %{}

  @typedoc """

  ## Example:

      get_function_scaling_config_request() :: %{
        required("Qualifier") => String.t() | atom()
      }

  """
  @type get_function_scaling_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remove_layer_version_permission_request() :: %{
        optional("RevisionId") => String.t() | atom()
      }

  """
  @type remove_layer_version_permission_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_function_code_signing_config_request() :: %{}

  """
  @type delete_function_code_signing_config_request() :: %{}

  @typedoc """

  ## Example:

      event_result() :: %{
        "Payload" => String.t() | atom(),
        "Truncated" => boolean()
      }

  """
  @type event_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kafka_schema_validation_config() :: %{
        "Attribute" => list(any())
      }

  """
  @type kafka_schema_validation_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      environment_response() :: %{
        "Error" => environment_error(),
        "Variables" => map()
      }

  """
  @type environment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      provisioned_concurrency_config_list_item() :: %{
        "AllocatedProvisionedConcurrentExecutions" => integer(),
        "AvailableProvisionedConcurrentExecutions" => integer(),
        "FunctionArn" => String.t() | atom(),
        "LastModified" => String.t() | atom(),
        "RequestedProvisionedConcurrentExecutions" => integer(),
        "Status" => list(any()),
        "StatusReason" => String.t() | atom()
      }

  """
  @type provisioned_concurrency_config_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      error_object() :: %{
        "ErrorData" => String.t() | atom(),
        "ErrorMessage" => String.t() | atom(),
        "ErrorType" => String.t() | atom(),
        "StackTrace" => list(String.t() | atom())
      }

  """
  @type error_object() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_alias_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("FunctionVersion") => String.t() | atom(),
        optional("RevisionId") => String.t() | atom(),
        optional("RoutingConfig") => alias_routing_configuration()
      }

  """
  @type update_alias_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_functions_response() :: %{
        "Functions" => list(function_configuration()),
        "NextMarker" => String.t() | atom()
      }

  """
  @type list_functions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_function_concurrency_request() :: %{
        required("ReservedConcurrentExecutions") => integer()
      }

  """
  @type put_function_concurrency_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      policy_length_exceeded_exception() :: %{
        "Type" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type policy_length_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      callback_timed_out_details() :: %{
        "Error" => event_error()
      }

  """
  @type callback_timed_out_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_provisioned_concurrency_configs_response() :: %{
        "NextMarker" => String.t() | atom(),
        "ProvisionedConcurrencyConfigs" => list(provisioned_concurrency_config_list_item())
      }

  """
  @type list_provisioned_concurrency_configs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      context_succeeded_details() :: %{
        "Result" => event_result()
      }

  """
  @type context_succeeded_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_code_signing_configs_response() :: %{
        "CodeSigningConfigs" => list(code_signing_config()),
        "NextMarker" => String.t() | atom()
      }

  """
  @type list_code_signing_configs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      amazon_managed_kafka_event_source_config() :: %{
        "ConsumerGroupId" => String.t() | atom(),
        "SchemaRegistryConfig" => kafka_schema_registry_config()
      }

  """
  @type amazon_managed_kafka_event_source_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_with_response_stream_response() :: %{
        "EventStream" => list(),
        "ExecutedVersion" => String.t() | atom(),
        "ResponseStreamContentType" => String.t() | atom(),
        "StatusCode" => integer()
      }

  """
  @type invoke_with_response_stream_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      execution_details() :: %{
        "InputPayload" => String.t() | atom()
      }

  """
  @type execution_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter_criteria() :: %{
        "Filters" => list(filter())
      }

  """
  @type filter_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      function_code_location() :: %{
        "ImageUri" => String.t() | atom(),
        "Location" => String.t() | atom(),
        "RepositoryType" => String.t() | atom(),
        "ResolvedImageUri" => String.t() | atom(),
        "SourceKMSKeyArn" => String.t() | atom()
      }

  """
  @type function_code_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_account_settings_request() :: %{}

  """
  @type get_account_settings_request() :: %{}

  @typedoc """

  ## Example:

      send_durable_execution_callback_failure_response() :: %{}

  """
  @type send_durable_execution_callback_failure_response() :: %{}

  @typedoc """

  ## Example:

      create_alias_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("RoutingConfig") => alias_routing_configuration(),
        required("FunctionVersion") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_alias_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      callback_failed_details() :: %{
        "Error" => event_error()
      }

  """
  @type callback_failed_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      step_started_details() :: %{}

  """
  @type step_started_details() :: %{}

  @typedoc """

  ## Example:

      resource_in_use_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type resource_in_use_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_layer_version_policy_response() :: %{
        "Policy" => String.t() | atom(),
        "RevisionId" => String.t() | atom()
      }

  """
  @type get_layer_version_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_account_settings_response() :: %{
        "AccountLimit" => account_limit(),
        "AccountUsage" => account_usage()
      }

  """
  @type get_account_settings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_policy_request() :: %{
        optional("Qualifier") => String.t() | atom()
      }

  """
  @type get_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_layer_version_response() :: %{
        optional("CompatibleArchitectures") => list(list(any())()),
        optional("CompatibleRuntimes") => list(list(any())()),
        optional("Content") => layer_version_content_output(),
        optional("CreatedDate") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("LayerArn") => String.t() | atom(),
        optional("LayerVersionArn") => String.t() | atom(),
        optional("LicenseInfo") => String.t() | atom(),
        optional("Version") => float()
      }

  """
  @type get_layer_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_capacity_provider_request() :: %{
        optional("CapacityProviderScalingConfig") => capacity_provider_scaling_config()
      }

  """
  @type update_capacity_provider_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      execution_timed_out_details() :: %{
        "Error" => event_error()
      }

  """
  @type execution_timed_out_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      context_options() :: %{
        "ReplayChildren" => boolean()
      }

  """
  @type context_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_function_recursion_config_response() :: %{
        "RecursiveLoop" => list(any())
      }

  """
  @type put_function_recursion_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_durable_execution_request() :: %{}

  """
  @type get_durable_execution_request() :: %{}

  @typedoc """

  ## Example:

      put_function_event_invoke_config_request() :: %{
        optional("DestinationConfig") => destination_config(),
        optional("MaximumEventAgeInSeconds") => integer(),
        optional("MaximumRetryAttempts") => integer(),
        optional("Qualifier") => String.t() | atom()
      }

  """
  @type put_function_event_invoke_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_async_request() :: %{
        required("InvokeArgs") => binary()
      }

  """
  @type invoke_async_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_layers_response() :: %{
        "Layers" => list(layers_list_item()),
        "NextMarker" => String.t() | atom()
      }

  """
  @type list_layers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      chained_invoke_started_details() :: %{
        "DurableExecutionArn" => String.t() | atom(),
        "ExecutedVersion" => String.t() | atom(),
        "FunctionName" => String.t() | atom(),
        "Input" => event_input(),
        "TenantId" => String.t() | atom()
      }

  """
  @type chained_invoke_started_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      execution() :: %{
        "DurableExecutionArn" => String.t() | atom(),
        "DurableExecutionName" => String.t() | atom(),
        "EndTimestamp" => non_neg_integer(),
        "FunctionArn" => String.t() | atom(),
        "StartTimestamp" => non_neg_integer(),
        "Status" => list(any())
      }

  """
  @type execution() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      source_access_configuration() :: %{
        "Type" => list(any()),
        "URI" => String.t() | atom()
      }

  """
  @type source_access_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_layer_version_policy_request() :: %{}

  """
  @type get_layer_version_policy_request() :: %{}

  @typedoc """

  ## Example:

      list_code_signing_configs_request() :: %{
        optional("Marker") => String.t() | atom(),
        optional("MaxItems") => integer()
      }

  """
  @type list_code_signing_configs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      layer_version_content_output() :: %{
        "CodeSha256" => String.t() | atom(),
        "CodeSize" => float(),
        "Location" => String.t() | atom(),
        "SigningJobArn" => String.t() | atom(),
        "SigningProfileVersionArn" => String.t() | atom()
      }

  """
  @type layer_version_content_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invocation_response() :: %{
        "DurableExecutionArn" => String.t() | atom(),
        "ExecutedVersion" => String.t() | atom(),
        "FunctionError" => String.t() | atom(),
        "LogResult" => String.t() | atom(),
        "Payload" => binary(),
        "StatusCode" => integer()
      }

  """
  @type invocation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_function_url_config_request() :: %{
        optional("Qualifier") => String.t() | atom()
      }

  """
  @type delete_function_url_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_function_recursion_config_request() :: %{}

  """
  @type get_function_recursion_config_request() :: %{}

  @typedoc """

  ## Example:

      ec2_access_denied_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type ec2_access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_durable_execution_history_request() :: %{
        optional("IncludeExecutionData") => boolean(),
        optional("Marker") => String.t() | atom(),
        optional("MaxItems") => integer(),
        optional("ReverseOrder") => boolean()
      }

  """
  @type get_durable_execution_history_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      chained_invoke_timed_out_details() :: %{
        "Error" => event_error()
      }

  """
  @type chained_invoke_timed_out_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      capacity_provider_scaling_config() :: %{
        "MaxVCpuCount" => integer(),
        "ScalingMode" => list(any()),
        "ScalingPolicies" => list(target_tracking_scaling_policy())
      }

  """
  @type capacity_provider_scaling_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      function_scaling_config() :: %{
        "MaxExecutionEnvironments" => integer(),
        "MinExecutionEnvironments" => integer()
      }

  """
  @type function_scaling_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_function_url_config_request() :: %{
        optional("AuthType") => list(any()),
        optional("Cors") => cors(),
        optional("InvokeMode") => list(any()),
        optional("Qualifier") => String.t() | atom()
      }

  """
  @type update_function_url_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      chained_invoke_succeeded_details() :: %{
        "Result" => event_result()
      }

  """
  @type chained_invoke_succeeded_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_function_versions_by_capacity_provider_response() :: %{
        "CapacityProviderArn" => String.t() | atom(),
        "FunctionVersions" => list(function_versions_by_capacity_provider_list_item()),
        "NextMarker" => String.t() | atom()
      }

  """
  @type list_function_versions_by_capacity_provider_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      self_managed_kafka_event_source_config() :: %{
        "ConsumerGroupId" => String.t() | atom(),
        "SchemaRegistryConfig" => kafka_schema_registry_config()
      }

  """
  @type self_managed_kafka_event_source_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      target_tracking_scaling_policy() :: %{
        "PredefinedMetricType" => list(any()),
        "TargetValue" => float()
      }

  """
  @type target_tracking_scaling_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      snap_start_not_ready_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type snap_start_not_ready_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_function_configuration_request() :: %{
        optional("Qualifier") => String.t() | atom()
      }

  """
  @type get_function_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      capacity_provider_vpc_config() :: %{
        "SecurityGroupIds" => list(String.t() | atom()),
        "SubnetIds" => list(String.t() | atom())
      }

  """
  @type capacity_provider_vpc_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_function_response() :: %{
        "Code" => function_code_location(),
        "Concurrency" => concurrency(),
        "Configuration" => function_configuration(),
        "Tags" => map(),
        "TagsError" => tags_error()
      }

  """
  @type get_function_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      context_started_details() :: %{}

  """
  @type context_started_details() :: %{}

  @typedoc """

  ## Example:

      logging_config() :: %{
        "ApplicationLogLevel" => list(any()),
        "LogFormat" => list(any()),
        "LogGroup" => String.t() | atom(),
        "SystemLogLevel" => list(any())
      }

  """
  @type logging_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_function_concurrency_request() :: %{}

  """
  @type delete_function_concurrency_request() :: %{}

  @typedoc """

  ## Example:

      image_config() :: %{
        "Command" => list(String.t() | atom()),
        "EntryPoint" => list(String.t() | atom()),
        "WorkingDirectory" => String.t() | atom()
      }

  """
  @type image_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_function_url_config_response() :: %{
        "AuthType" => list(any()),
        "Cors" => cors(),
        "CreationTime" => String.t() | atom(),
        "FunctionArn" => String.t() | atom(),
        "FunctionUrl" => String.t() | atom(),
        "InvokeMode" => list(any()),
        "LastModifiedTime" => String.t() | atom()
      }

  """
  @type update_function_url_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "Reason" => list(any()),
        "Type" => String.t() | atom(),
        "message" => String.t() | atom(),
        "retryAfterSeconds" => String.t() | atom()
      }

  """
  @type too_many_requests_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_function_code_signing_config_request() :: %{}

  """
  @type get_function_code_signing_config_request() :: %{}

  @typedoc """

  ## Example:

      put_function_recursion_config_request() :: %{
        required("RecursiveLoop") => list(any())
      }

  """
  @type put_function_recursion_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      destination_config() :: %{
        "OnFailure" => on_failure(),
        "OnSuccess" => on_success()
      }

  """
  @type destination_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      snap_start_timeout_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type snap_start_timeout_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      callback_timeout_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type callback_timeout_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_durable_executions_by_function_request() :: %{
        optional("DurableExecutionName") => String.t() | atom(),
        optional("Marker") => String.t() | atom(),
        optional("MaxItems") => integer(),
        optional("Qualifier") => String.t() | atom(),
        optional("ReverseOrder") => boolean(),
        optional("StartedAfter") => non_neg_integer(),
        optional("StartedBefore") => non_neg_integer(),
        optional("Statuses") => list(list(any())())
      }

  """
  @type list_durable_executions_by_function_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_provisioned_concurrency_config_request() :: %{
        required("ProvisionedConcurrentExecutions") => integer(),
        required("Qualifier") => String.t() | atom()
      }

  """
  @type put_provisioned_concurrency_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      serialized_request_entity_too_large_exception() :: %{
        "Type" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type serialized_request_entity_too_large_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_layer_version_request() :: %{}

  """
  @type delete_layer_version_request() :: %{}

  @typedoc """

  ## Example:

      operation_update() :: %{
        "Action" => list(any()),
        "CallbackOptions" => callback_options(),
        "ChainedInvokeOptions" => chained_invoke_options(),
        "ContextOptions" => context_options(),
        "Error" => error_object(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "ParentId" => String.t() | atom(),
        "Payload" => String.t() | atom(),
        "StepOptions" => step_options(),
        "SubType" => String.t() | atom(),
        "Type" => list(any()),
        "WaitOptions" => wait_options()
      }

  """
  @type operation_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      checkpoint_updated_execution_state() :: %{
        "NextMarker" => String.t() | atom(),
        "Operations" => list(operation())
      }

  """
  @type checkpoint_updated_execution_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_code_signing_config_response() :: %{
        "CodeSigningConfig" => code_signing_config()
      }

  """
  @type create_code_signing_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_response_stream_update() :: %{
        "Payload" => binary()
      }

  """
  @type invoke_response_stream_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_function_event_invoke_configs_response() :: %{
        "FunctionEventInvokeConfigs" => list(function_event_invoke_config()),
        "NextMarker" => String.t() | atom()
      }

  """
  @type list_function_event_invoke_configs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_function_concurrency_response() :: %{
        "ReservedConcurrentExecutions" => integer()
      }

  """
  @type get_function_concurrency_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      execution_started_details() :: %{
        "ExecutionTimeout" => integer(),
        "Input" => event_input()
      }

  """
  @type execution_started_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_event_source_mapping_request() :: %{}

  """
  @type delete_event_source_mapping_request() :: %{}

  @typedoc """

  ## Example:

      send_durable_execution_callback_heartbeat_request() :: %{}

  """
  @type send_durable_execution_callback_heartbeat_request() :: %{}

  @typedoc """

  ## Example:

      recursive_invocation_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type recursive_invocation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      chained_invoke_failed_details() :: %{
        "Error" => event_error()
      }

  """
  @type chained_invoke_failed_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_durable_execution_state_response() :: %{
        "NextMarker" => String.t() | atom(),
        "Operations" => list(operation())
      }

  """
  @type get_durable_execution_state_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      event_input() :: %{
        "Payload" => String.t() | atom(),
        "Truncated" => boolean()
      }

  """
  @type event_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_runtime_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type invalid_runtime_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_function_concurrency_request() :: %{}

  """
  @type get_function_concurrency_request() :: %{}

  @typedoc """

  ## Example:

      get_alias_request() :: %{}

  """
  @type get_alias_request() :: %{}

  @typedoc """

  ## Example:

      wait_options() :: %{
        "WaitSeconds" => integer()
      }

  """
  @type wait_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_capacity_providers_request() :: %{
        optional("Marker") => String.t() | atom(),
        optional("MaxItems") => integer(),
        optional("State") => list(any())
      }

  """
  @type list_capacity_providers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      retry_details() :: %{
        "CurrentAttempt" => integer(),
        "NextAttemptDelaySeconds" => integer()
      }

  """
  @type retry_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      on_failure() :: %{
        "Destination" => String.t() | atom()
      }

  """
  @type on_failure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_event_source_mappings_response() :: %{
        "EventSourceMappings" => list(event_source_mapping_configuration()),
        "NextMarker" => String.t() | atom()
      }

  """
  @type list_event_source_mappings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_runtime_management_config_request() :: %{
        optional("Qualifier") => String.t() | atom()
      }

  """
  @type get_runtime_management_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_request_content_exception() :: %{
        "Type" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type invalid_request_content_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_runtime_management_config_request() :: %{
        optional("Qualifier") => String.t() | atom(),
        optional("RuntimeVersionArn") => String.t() | atom(),
        required("UpdateRuntimeOn") => list(any())
      }

  """
  @type put_runtime_management_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_function_request() :: %{
        optional("Qualifier") => String.t() | atom()
      }

  """
  @type get_function_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      durable_config() :: %{
        "ExecutionTimeout" => integer(),
        "RetentionPeriodInDays" => integer()
      }

  """
  @type durable_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      publish_layer_version_response() :: %{
        "CompatibleArchitectures" => list(list(any())()),
        "CompatibleRuntimes" => list(list(any())()),
        "Content" => layer_version_content_output(),
        "CreatedDate" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "LayerArn" => String.t() | atom(),
        "LayerVersionArn" => String.t() | atom(),
        "LicenseInfo" => String.t() | atom(),
        "Version" => float()
      }

  """
  @type publish_layer_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      document_db_event_source_config() :: %{
        "CollectionName" => String.t() | atom(),
        "DatabaseName" => String.t() | atom(),
        "FullDocument" => list(any())
      }

  """
  @type document_db_event_source_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      durable_execution_already_started_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type durable_execution_already_started_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_code_signing_config_request() :: %{}

  """
  @type delete_code_signing_config_request() :: %{}

  @typedoc """

  ## Example:

      create_function_url_config_response() :: %{
        "AuthType" => list(any()),
        "Cors" => cors(),
        "CreationTime" => String.t() | atom(),
        "FunctionArn" => String.t() | atom(),
        "FunctionUrl" => String.t() | atom(),
        "InvokeMode" => list(any())
      }

  """
  @type create_function_url_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_signing_config_not_found_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type code_signing_config_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      environment() :: %{
        "Variables" => map()
      }

  """
  @type environment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_function_request() :: %{
        optional("Qualifier") => String.t() | atom()
      }

  """
  @type delete_function_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      publish_version_request() :: %{
        optional("CodeSha256") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("PublishTo") => list(any()),
        optional("RevisionId") => String.t() | atom()
      }

  """
  @type publish_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invocation_completed_details() :: %{
        "EndTimestamp" => non_neg_integer(),
        "Error" => event_error(),
        "RequestId" => String.t() | atom(),
        "StartTimestamp" => non_neg_integer()
      }

  """
  @type invocation_completed_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_function_code_signing_config_response() :: %{
        "CodeSigningConfigArn" => String.t() | atom(),
        "FunctionName" => String.t() | atom()
      }

  """
  @type put_function_code_signing_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_capacity_providers_response() :: %{
        "CapacityProviders" => list(capacity_provider()),
        "NextMarker" => String.t() | atom()
      }

  """
  @type list_capacity_providers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      step_failed_details() :: %{
        "Error" => event_error(),
        "RetryDetails" => retry_details()
      }

  """
  @type step_failed_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      alias_configuration() :: %{
        "AliasArn" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "FunctionVersion" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "RevisionId" => String.t() | atom(),
        "RoutingConfig" => alias_routing_configuration()
      }

  """
  @type alias_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      event_error() :: %{
        "Payload" => error_object(),
        "Truncated" => boolean()
      }

  """
  @type event_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_function_code_request() :: %{
        optional("Architectures") => list(list(any())()),
        optional("DryRun") => boolean(),
        optional("ImageUri") => String.t() | atom(),
        optional("Publish") => boolean(),
        optional("PublishTo") => list(any()),
        optional("RevisionId") => String.t() | atom(),
        optional("S3Bucket") => String.t() | atom(),
        optional("S3Key") => String.t() | atom(),
        optional("S3ObjectVersion") => String.t() | atom(),
        optional("SourceKMSKeyArn") => String.t() | atom(),
        optional("ZipFile") => binary()
      }

  """
  @type update_function_code_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_code_signing_config_request() :: %{
        optional("CodeSigningPolicies") => code_signing_policies(),
        optional("Description") => String.t() | atom(),
        optional("Tags") => map(),
        required("AllowedPublishers") => allowed_publishers()
      }

  """
  @type create_code_signing_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_parameter_value_exception() :: %{
        "Type" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type invalid_parameter_value_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      event_source_mapping_configuration() :: %{
        "LastProcessingResult" => String.t() | atom(),
        "ScalingConfig" => scaling_config(),
        "ParallelizationFactor" => integer(),
        "UUID" => String.t() | atom(),
        "StartingPosition" => list(any()),
        "SelfManagedEventSource" => self_managed_event_source(),
        "DestinationConfig" => destination_config(),
        "StateTransitionReason" => String.t() | atom(),
        "KMSKeyArn" => String.t() | atom(),
        "AmazonManagedKafkaEventSourceConfig" => amazon_managed_kafka_event_source_config(),
        "MetricsConfig" => event_source_mapping_metrics_config(),
        "BatchSize" => integer(),
        "MaximumBatchingWindowInSeconds" => integer(),
        "MaximumRetryAttempts" => integer(),
        "SelfManagedKafkaEventSourceConfig" => self_managed_kafka_event_source_config(),
        "ProvisionedPollerConfig" => provisioned_poller_config(),
        "State" => String.t() | atom(),
        "Queues" => list(String.t() | atom()),
        "DocumentDBEventSourceConfig" => document_db_event_source_config(),
        "SourceAccessConfigurations" => list(source_access_configuration()),
        "EventSourceMappingArn" => String.t() | atom(),
        "FilterCriteria" => filter_criteria(),
        "LastModified" => non_neg_integer(),
        "FunctionResponseTypes" => list(list(any())()),
        "TumblingWindowInSeconds" => integer(),
        "FunctionArn" => String.t() | atom(),
        "BisectBatchOnFunctionError" => boolean(),
        "Topics" => list(String.t() | atom()),
        "LoggingConfig" => event_source_mapping_logging_config(),
        "FilterCriteriaError" => filter_criteria_error(),
        "MaximumRecordAgeInSeconds" => integer(),
        "EventSourceArn" => String.t() | atom(),
        "StartingPositionTimestamp" => non_neg_integer()
      }

  """
  @type event_source_mapping_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      provisioned_poller_config() :: %{
        "MaximumPollers" => integer(),
        "MinimumPollers" => integer(),
        "PollerGroupName" => String.t() | atom()
      }

  """
  @type provisioned_poller_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_event_source_mapping_request() :: %{
        optional("AmazonManagedKafkaEventSourceConfig") => amazon_managed_kafka_event_source_config(),
        optional("BatchSize") => integer(),
        optional("BisectBatchOnFunctionError") => boolean(),
        optional("DestinationConfig") => destination_config(),
        optional("DocumentDBEventSourceConfig") => document_db_event_source_config(),
        optional("Enabled") => boolean(),
        optional("EventSourceArn") => String.t() | atom(),
        optional("FilterCriteria") => filter_criteria(),
        optional("FunctionResponseTypes") => list(list(any())()),
        optional("KMSKeyArn") => String.t() | atom(),
        optional("LoggingConfig") => event_source_mapping_logging_config(),
        optional("MaximumBatchingWindowInSeconds") => integer(),
        optional("MaximumRecordAgeInSeconds") => integer(),
        optional("MaximumRetryAttempts") => integer(),
        optional("MetricsConfig") => event_source_mapping_metrics_config(),
        optional("ParallelizationFactor") => integer(),
        optional("ProvisionedPollerConfig") => provisioned_poller_config(),
        optional("Queues") => list(String.t() | atom()),
        optional("ScalingConfig") => scaling_config(),
        optional("SelfManagedEventSource") => self_managed_event_source(),
        optional("SelfManagedKafkaEventSourceConfig") => self_managed_kafka_event_source_config(),
        optional("SourceAccessConfigurations") => list(source_access_configuration()),
        optional("StartingPosition") => list(any()),
        optional("StartingPositionTimestamp") => non_neg_integer(),
        optional("Tags") => map(),
        optional("Topics") => list(String.t() | atom()),
        optional("TumblingWindowInSeconds") => integer(),
        required("FunctionName") => String.t() | atom()
      }

  """
  @type create_event_source_mapping_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_capacity_provider_request() :: %{}

  """
  @type get_capacity_provider_request() :: %{}

  @typedoc """

  ## Example:

      checkpoint_durable_execution_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Updates") => list(operation_update()),
        required("CheckpointToken") => String.t() | atom()
      }

  """
  @type checkpoint_durable_execution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_function_url_config_request() :: %{
        optional("Cors") => cors(),
        optional("InvokeMode") => list(any()),
        optional("Qualifier") => String.t() | atom(),
        required("AuthType") => list(any())
      }

  """
  @type create_function_url_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      layer() :: %{
        "Arn" => String.t() | atom(),
        "CodeSize" => float(),
        "SigningJobArn" => String.t() | atom(),
        "SigningProfileVersionArn" => String.t() | atom()
      }

  """
  @type layer() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_durable_execution_state_request() :: %{
        optional("Marker") => String.t() | atom(),
        optional("MaxItems") => integer(),
        required("CheckpointToken") => String.t() | atom()
      }

  """
  @type get_durable_execution_state_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_provisioned_concurrency_config_response() :: %{
        "AllocatedProvisionedConcurrentExecutions" => integer(),
        "AvailableProvisionedConcurrentExecutions" => integer(),
        "LastModified" => String.t() | atom(),
        "RequestedProvisionedConcurrentExecutions" => integer(),
        "Status" => list(any()),
        "StatusReason" => String.t() | atom()
      }

  """
  @type get_provisioned_concurrency_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_function_response() :: %{
        "StatusCode" => integer()
      }

  """
  @type delete_function_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vpc_config() :: %{
        "Ipv6AllowedForDualStack" => boolean(),
        "SecurityGroupIds" => list(String.t() | atom()),
        "SubnetIds" => list(String.t() | atom())
      }

  """
  @type vpc_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type service_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      publish_layer_version_request() :: %{
        optional("CompatibleArchitectures") => list(list(any())()),
        optional("CompatibleRuntimes") => list(list(any())()),
        optional("Description") => String.t() | atom(),
        optional("LicenseInfo") => String.t() | atom(),
        required("Content") => layer_version_content_input()
      }

  """
  @type publish_layer_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      subnet_ip_address_limit_reached_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type subnet_ip_address_limit_reached_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remove_permission_request() :: %{
        optional("Qualifier") => String.t() | atom(),
        optional("RevisionId") => String.t() | atom()
      }

  """
  @type remove_permission_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      execution_failed_details() :: %{
        "Error" => event_error()
      }

  """
  @type execution_failed_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_limit() :: %{
        "CodeSizeUnzipped" => float(),
        "CodeSizeZipped" => float(),
        "ConcurrentExecutions" => integer(),
        "TotalCodeSize" => float(),
        "UnreservedConcurrentExecutions" => integer()
      }

  """
  @type account_limit() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_function_event_invoke_config_request() :: %{
        optional("DestinationConfig") => destination_config(),
        optional("MaximumEventAgeInSeconds") => integer(),
        optional("MaximumRetryAttempts") => integer(),
        optional("Qualifier") => String.t() | atom()
      }

  """
  @type update_function_event_invoke_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_code_signing_config_response() :: %{}

  """
  @type delete_code_signing_config_response() :: %{}

  @typedoc """

  ## Example:

      file_system_config() :: %{
        "Arn" => String.t() | atom(),
        "LocalMountPath" => String.t() | atom()
      }

  """
  @type file_system_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      wait_cancelled_details() :: %{
        "Error" => event_error()
      }

  """
  @type wait_cancelled_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tracing_config() :: %{
        "Mode" => list(any())
      }

  """
  @type tracing_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_layer_version_by_arn_request() :: %{
        required("Arn") => String.t() | atom()
      }

  """
  @type get_layer_version_by_arn_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_verification_failed_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type code_verification_failed_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ephemeral_storage() :: %{
        "Size" => integer()
      }

  """
  @type ephemeral_storage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_provisioned_concurrency_config_response() :: %{
        "AllocatedProvisionedConcurrentExecutions" => integer(),
        "AvailableProvisionedConcurrentExecutions" => integer(),
        "LastModified" => String.t() | atom(),
        "RequestedProvisionedConcurrentExecutions" => integer(),
        "Status" => list(any()),
        "StatusReason" => String.t() | atom()
      }

  """
  @type put_provisioned_concurrency_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_durable_execution_response() :: %{
        "DurableExecutionArn" => String.t() | atom(),
        "DurableExecutionName" => String.t() | atom(),
        "EndTimestamp" => non_neg_integer(),
        "Error" => error_object(),
        "FunctionArn" => String.t() | atom(),
        "InputPayload" => String.t() | atom(),
        "Result" => String.t() | atom(),
        "StartTimestamp" => non_neg_integer(),
        "Status" => list(any()),
        "TraceHeader" => trace_header(),
        "Version" => String.t() | atom()
      }

  """
  @type get_durable_execution_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      event_source_mapping_logging_config() :: %{
        "SystemLogLevel" => list(any())
      }

  """
  @type event_source_mapping_logging_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter() :: %{
        "Pattern" => String.t() | atom()
      }

  """
  @type filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      layer_versions_list_item() :: %{
        "CompatibleArchitectures" => list(list(any())()),
        "CompatibleRuntimes" => list(list(any())()),
        "CreatedDate" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "LayerVersionArn" => String.t() | atom(),
        "LicenseInfo" => String.t() | atom(),
        "Version" => float()
      }

  """
  @type layer_versions_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_layer_versions_response() :: %{
        "LayerVersions" => list(layer_versions_list_item()),
        "NextMarker" => String.t() | atom()
      }

  """
  @type list_layer_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_async_response() :: %{
        "Status" => integer()
      }

  """
  @type invoke_async_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_versions_by_function_request() :: %{
        optional("Marker") => String.t() | atom(),
        optional("MaxItems") => integer()
      }

  """
  @type list_versions_by_function_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_capacity_provider_response() :: %{
        "CapacityProvider" => capacity_provider()
      }

  """
  @type create_capacity_provider_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      request_too_large_exception() :: %{
        "Type" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type request_too_large_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scaling_config() :: %{
        "MaximumConcurrency" => integer()
      }

  """
  @type scaling_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_policy_response() :: %{
        "Policy" => String.t() | atom(),
        "RevisionId" => String.t() | atom()
      }

  """
  @type get_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_provisioned_concurrency_config_request() :: %{
        required("Qualifier") => String.t() | atom()
      }

  """
  @type get_provisioned_concurrency_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      callback_started_details() :: %{
        "CallbackId" => String.t() | atom(),
        "HeartbeatTimeout" => integer(),
        "Timeout" => integer()
      }

  """
  @type callback_started_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      checkpoint_durable_execution_response() :: %{
        "CheckpointToken" => String.t() | atom(),
        "NewExecutionState" => checkpoint_updated_execution_state()
      }

  """
  @type checkpoint_durable_execution_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_capacity_provider_response() :: %{
        "CapacityProvider" => capacity_provider()
      }

  """
  @type update_capacity_provider_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      chained_invoke_details() :: %{
        "Error" => error_object(),
        "Result" => String.t() | atom()
      }

  """
  @type chained_invoke_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      execution_stopped_details() :: %{
        "Error" => event_error()
      }

  """
  @type execution_stopped_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      capacity_provider_permissions_config() :: %{
        "CapacityProviderOperatorRoleArn" => String.t() | atom()
      }

  """
  @type capacity_provider_permissions_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_functions_request() :: %{
        optional("FunctionVersion") => list(any()),
        optional("Marker") => String.t() | atom(),
        optional("MasterRegion") => String.t() | atom(),
        optional("MaxItems") => integer()
      }

  """
  @type list_functions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      add_layer_version_permission_request() :: %{
        optional("OrganizationId") => String.t() | atom(),
        optional("RevisionId") => String.t() | atom(),
        required("Action") => String.t() | atom(),
        required("Principal") => String.t() | atom(),
        required("StatementId") => String.t() | atom()
      }

  """
  @type add_layer_version_permission_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_functions_by_code_signing_config_request() :: %{
        optional("Marker") => String.t() | atom(),
        optional("MaxItems") => integer()
      }

  """
  @type list_functions_by_code_signing_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_event_source_mappings_request() :: %{
        optional("EventSourceArn") => String.t() | atom(),
        optional("FunctionName") => String.t() | atom(),
        optional("Marker") => String.t() | atom(),
        optional("MaxItems") => integer()
      }

  """
  @type list_event_source_mappings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kms_access_denied_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type kms_access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_code_signing_config_request() :: %{
        optional("AllowedPublishers") => allowed_publishers(),
        optional("CodeSigningPolicies") => code_signing_policies(),
        optional("Description") => String.t() | atom()
      }

  """
  @type update_code_signing_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_function_code_signing_config_request() :: %{
        required("CodeSigningConfigArn") => String.t() | atom()
      }

  """
  @type put_function_code_signing_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_durable_execution_callback_success_response() :: %{}

  """
  @type send_durable_execution_callback_success_response() :: %{}

  @typedoc """

  ## Example:

      send_durable_execution_callback_success_request() :: %{
        optional("Result") => binary()
      }

  """
  @type send_durable_execution_callback_success_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      add_layer_version_permission_response() :: %{
        "RevisionId" => String.t() | atom(),
        "Statement" => String.t() | atom()
      }

  """
  @type add_layer_version_permission_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      event() :: %{
        "CallbackFailedDetails" => callback_failed_details(),
        "CallbackStartedDetails" => callback_started_details(),
        "CallbackSucceededDetails" => callback_succeeded_details(),
        "CallbackTimedOutDetails" => callback_timed_out_details(),
        "ChainedInvokeFailedDetails" => chained_invoke_failed_details(),
        "ChainedInvokeStartedDetails" => chained_invoke_started_details(),
        "ChainedInvokeStoppedDetails" => chained_invoke_stopped_details(),
        "ChainedInvokeSucceededDetails" => chained_invoke_succeeded_details(),
        "ChainedInvokeTimedOutDetails" => chained_invoke_timed_out_details(),
        "ContextFailedDetails" => context_failed_details(),
        "ContextStartedDetails" => context_started_details(),
        "ContextSucceededDetails" => context_succeeded_details(),
        "EventId" => integer(),
        "EventTimestamp" => non_neg_integer(),
        "EventType" => list(any()),
        "ExecutionFailedDetails" => execution_failed_details(),
        "ExecutionStartedDetails" => execution_started_details(),
        "ExecutionStoppedDetails" => execution_stopped_details(),
        "ExecutionSucceededDetails" => execution_succeeded_details(),
        "ExecutionTimedOutDetails" => execution_timed_out_details(),
        "Id" => String.t() | atom(),
        "InvocationCompletedDetails" => invocation_completed_details(),
        "Name" => String.t() | atom(),
        "ParentId" => String.t() | atom(),
        "StepFailedDetails" => step_failed_details(),
        "StepStartedDetails" => step_started_details(),
        "StepSucceededDetails" => step_succeeded_details(),
        "SubType" => String.t() | atom(),
        "WaitCancelledDetails" => wait_cancelled_details(),
        "WaitStartedDetails" => wait_started_details(),
        "WaitSucceededDetails" => wait_succeeded_details()
      }

  """
  @type event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_event_source_mapping_request() :: %{}

  """
  @type get_event_source_mapping_request() :: %{}

  @typedoc """

  ## Example:

      kafka_schema_registry_access_config() :: %{
        "Type" => list(any()),
        "URI" => String.t() | atom()
      }

  """
  @type kafka_schema_registry_access_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invocation_request() :: %{
        optional("ClientContext") => String.t() | atom(),
        optional("DurableExecutionName") => String.t() | atom(),
        optional("InvocationType") => list(any()),
        optional("LogType") => list(any()),
        optional("Payload") => binary(),
        optional("Qualifier") => String.t() | atom(),
        optional("TenantId") => String.t() | atom()
      }

  """
  @type invocation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_zip_file_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type invalid_zip_file_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      event_source_mapping_metrics_config() :: %{
        "Metrics" => list(list(any())())
      }

  """
  @type event_source_mapping_metrics_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_with_response_stream_complete_event() :: %{
        "ErrorCode" => String.t() | atom(),
        "ErrorDetails" => String.t() | atom(),
        "LogResult" => String.t() | atom()
      }

  """
  @type invoke_with_response_stream_complete_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kms_not_found_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type kms_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      callback_succeeded_details() :: %{
        "Result" => event_result()
      }

  """
  @type callback_succeeded_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invoke_with_response_stream_request() :: %{
        optional("ClientContext") => String.t() | atom(),
        optional("InvocationType") => list(any()),
        optional("LogType") => list(any()),
        optional("Payload") => binary(),
        optional("Qualifier") => String.t() | atom(),
        optional("TenantId") => String.t() | atom()
      }

  """
  @type invoke_with_response_stream_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_durable_execution_callback_failure_request() :: %{
        optional("Error") => error_object()
      }

  """
  @type send_durable_execution_callback_failure_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      wait_started_details() :: %{
        "Duration" => integer(),
        "ScheduledEndTimestamp" => non_neg_integer()
      }

  """
  @type wait_started_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_function_url_config_request() :: %{
        optional("Qualifier") => String.t() | atom()
      }

  """
  @type get_function_url_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      context_failed_details() :: %{
        "Error" => event_error()
      }

  """
  @type context_failed_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_code_signing_config_response() :: %{
        "CodeSigningConfig" => code_signing_config()
      }

  """
  @type update_code_signing_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      instance_requirements() :: %{
        "AllowedInstanceTypes" => list(String.t() | atom()),
        "Architectures" => list(list(any())()),
        "ExcludedInstanceTypes" => list(String.t() | atom())
      }

  """
  @type instance_requirements() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      function_versions_by_capacity_provider_list_item() :: %{
        "FunctionArn" => String.t() | atom(),
        "State" => list(any())
      }

  """
  @type function_versions_by_capacity_provider_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_capacity_provider_response() :: %{
        "CapacityProvider" => capacity_provider()
      }

  """
  @type get_capacity_provider_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dead_letter_config() :: %{
        "TargetArn" => String.t() | atom()
      }

  """
  @type dead_letter_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      e_f_s_mount_timeout_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type e_f_s_mount_timeout_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_provisioned_concurrency_config_request() :: %{
        required("Qualifier") => String.t() | atom()
      }

  """
  @type delete_provisioned_concurrency_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image_config_error() :: %{
        "ErrorCode" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type image_config_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_layers_request() :: %{
        optional("CompatibleArchitecture") => list(any()),
        optional("CompatibleRuntime") => list(any()),
        optional("Marker") => String.t() | atom(),
        optional("MaxItems") => integer()
      }

  """
  @type list_layers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      provisioned_concurrency_config_not_found_exception() :: %{
        "Type" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type provisioned_concurrency_config_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      capacity_provider_limit_exceeded_exception() :: %{
        "Type" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type capacity_provider_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_code_signing_config_response() :: %{
        "CodeSigningConfig" => code_signing_config()
      }

  """
  @type get_code_signing_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      runtime_version_error() :: %{
        "ErrorCode" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type runtime_version_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_layer_version_request() :: %{}

  """
  @type get_layer_version_request() :: %{}

  @typedoc """

  ## Example:

      function_configuration() :: %{
        "VpcConfig" => vpc_config_response(),
        "TracingConfig" => tracing_config_response(),
        "MemorySize" => integer(),
        "Version" => String.t() | atom(),
        "Handler" => String.t() | atom(),
        "KMSKeyArn" => String.t() | atom(),
        "SigningProfileVersionArn" => String.t() | atom(),
        "MasterArn" => String.t() | atom(),
        "Role" => String.t() | atom(),
        "DurableConfig" => durable_config(),
        "PackageType" => list(any()),
        "CapacityProviderConfig" => capacity_provider_config(),
        "StateReason" => String.t() | atom(),
        "State" => list(any()),
        "LastUpdateStatus" => list(any()),
        "Architectures" => list(list(any())()),
        "Environment" => environment_response(),
        "Timeout" => integer(),
        "LastModified" => String.t() | atom(),
        "StateReasonCode" => list(any()),
        "DeadLetterConfig" => dead_letter_config(),
        "EphemeralStorage" => ephemeral_storage(),
        "Layers" => list(layer()),
        "CodeSha256" => String.t() | atom(),
        "FileSystemConfigs" => list(file_system_config()),
        "LastUpdateStatusReason" => String.t() | atom(),
        "LastUpdateStatusReasonCode" => list(any()),
        "ConfigSha256" => String.t() | atom(),
        "TenancyConfig" => tenancy_config(),
        "SnapStart" => snap_start_response(),
        "Runtime" => list(any()),
        "ImageConfigResponse" => image_config_response(),
        "Description" => String.t() | atom(),
        "RevisionId" => String.t() | atom(),
        "FunctionArn" => String.t() | atom(),
        "SigningJobArn" => String.t() | atom(),
        "LoggingConfig" => logging_config(),
        "CodeSize" => float(),
        "RuntimeVersionConfig" => runtime_version_config(),
        "FunctionName" => String.t() | atom()
      }

  """
  @type function_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      e_f_s_mount_connectivity_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type e_f_s_mount_connectivity_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_runtime_management_config_response() :: %{
        "FunctionArn" => String.t() | atom(),
        "RuntimeVersionArn" => String.t() | atom(),
        "UpdateRuntimeOn" => list(any())
      }

  """
  @type get_runtime_management_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_runtime_management_config_response() :: %{
        "FunctionArn" => String.t() | atom(),
        "RuntimeVersionArn" => String.t() | atom(),
        "UpdateRuntimeOn" => list(any())
      }

  """
  @type put_runtime_management_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      capacity_provider_config() :: %{
        "LambdaManagedInstancesCapacityProviderConfig" => lambda_managed_instances_capacity_provider_config()
      }

  """
  @type capacity_provider_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      e_n_i_limit_reached_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type e_n_i_limit_reached_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_durable_execution_response() :: %{
        "StopTimestamp" => non_neg_integer()
      }

  """
  @type stop_durable_execution_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_function_url_configs_request() :: %{
        optional("Marker") => String.t() | atom(),
        optional("MaxItems") => integer()
      }

  """
  @type list_function_url_configs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_layer_versions_request() :: %{
        optional("CompatibleArchitecture") => list(any()),
        optional("CompatibleRuntime") => list(any()),
        optional("Marker") => String.t() | atom(),
        optional("MaxItems") => integer()
      }

  """
  @type list_layer_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_function_scaling_config_request() :: %{
        optional("FunctionScalingConfig") => function_scaling_config(),
        required("Qualifier") => String.t() | atom()
      }

  """
  @type put_function_scaling_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_durable_executions_by_function_response() :: %{
        "DurableExecutions" => list(execution()),
        "NextMarker" => String.t() | atom()
      }

  """
  @type list_durable_executions_by_function_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_function_event_invoke_config_request() :: %{
        optional("Qualifier") => String.t() | atom()
      }

  """
  @type delete_function_event_invoke_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      e_f_s_mount_failure_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type e_f_s_mount_failure_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cors() :: %{
        "AllowCredentials" => boolean(),
        "AllowHeaders" => list(String.t() | atom()),
        "AllowMethods" => list(String.t() | atom()),
        "AllowOrigins" => list(String.t() | atom()),
        "ExposeHeaders" => list(String.t() | atom()),
        "MaxAge" => integer()
      }

  """
  @type cors() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      function_url_config() :: %{
        "AuthType" => list(any()),
        "Cors" => cors(),
        "CreationTime" => String.t() | atom(),
        "FunctionArn" => String.t() | atom(),
        "FunctionUrl" => String.t() | atom(),
        "InvokeMode" => list(any()),
        "LastModifiedTime" => String.t() | atom()
      }

  """
  @type function_url_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      wait_details() :: %{
        "ScheduledEndTimestamp" => non_neg_integer()
      }

  """
  @type wait_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      on_success() :: %{
        "Destination" => String.t() | atom()
      }

  """
  @type on_success() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      self_managed_event_source() :: %{
        "Endpoints" => map()
      }

  """
  @type self_managed_event_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_function_configuration_request() :: %{
        optional("CapacityProviderConfig") => capacity_provider_config(),
        optional("DeadLetterConfig") => dead_letter_config(),
        optional("Description") => String.t() | atom(),
        optional("DurableConfig") => durable_config(),
        optional("Environment") => environment(),
        optional("EphemeralStorage") => ephemeral_storage(),
        optional("FileSystemConfigs") => list(file_system_config()),
        optional("Handler") => String.t() | atom(),
        optional("ImageConfig") => image_config(),
        optional("KMSKeyArn") => String.t() | atom(),
        optional("Layers") => list(String.t() | atom()),
        optional("LoggingConfig") => logging_config(),
        optional("MemorySize") => integer(),
        optional("RevisionId") => String.t() | atom(),
        optional("Role") => String.t() | atom(),
        optional("Runtime") => list(any()),
        optional("SnapStart") => snap_start(),
        optional("Timeout") => integer(),
        optional("TracingConfig") => tracing_config(),
        optional("VpcConfig") => vpc_config()
      }

  """
  @type update_function_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kafka_schema_registry_config() :: %{
        "AccessConfigs" => list(kafka_schema_registry_access_config()),
        "EventRecordFormat" => list(any()),
        "SchemaRegistryURI" => String.t() | atom(),
        "SchemaValidationConfigs" => list(kafka_schema_validation_config())
      }

  """
  @type kafka_schema_registry_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_function_code_signing_config_response() :: %{
        "CodeSigningConfigArn" => String.t() | atom(),
        "FunctionName" => String.t() | atom()
      }

  """
  @type get_function_code_signing_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_code_signature_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type invalid_code_signature_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_function_url_configs_response() :: %{
        "FunctionUrlConfigs" => list(function_url_config()),
        "NextMarker" => String.t() | atom()
      }

  """
  @type list_function_url_configs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      allowed_publishers() :: %{
        "SigningProfileVersionArns" => list(String.t() | atom())
      }

  """
  @type allowed_publishers() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_durable_execution_history_response() :: %{
        "Events" => list(event()),
        "NextMarker" => String.t() | atom()
      }

  """
  @type get_durable_execution_history_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      capacity_provider() :: %{
        "CapacityProviderArn" => String.t() | atom(),
        "CapacityProviderScalingConfig" => capacity_provider_scaling_config(),
        "InstanceRequirements" => instance_requirements(),
        "KmsKeyArn" => String.t() | atom(),
        "LastModified" => String.t() | atom(),
        "PermissionsConfig" => capacity_provider_permissions_config(),
        "State" => list(any()),
        "VpcConfig" => capacity_provider_vpc_config()
      }

  """
  @type capacity_provider() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      function_versions_per_capacity_provider_limit_exceeded_exception() :: %{
        "Type" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type function_versions_per_capacity_provider_limit_exceeded_exception() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      callback_options() :: %{
        "HeartbeatTimeoutSeconds" => integer(),
        "TimeoutSeconds" => integer()
      }

  """
  @type callback_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_versions_by_function_response() :: %{
        "NextMarker" => String.t() | atom(),
        "Versions" => list(function_configuration())
      }

  """
  @type list_versions_by_function_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_capacity_provider_request() :: %{
        optional("CapacityProviderScalingConfig") => capacity_provider_scaling_config(),
        optional("InstanceRequirements") => instance_requirements(),
        optional("KmsKeyArn") => String.t() | atom(),
        optional("Tags") => map(),
        required("CapacityProviderName") => String.t() | atom(),
        required("PermissionsConfig") => capacity_provider_permissions_config(),
        required("VpcConfig") => capacity_provider_vpc_config()
      }

  """
  @type create_capacity_provider_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vpc_config_response() :: %{
        "Ipv6AllowedForDualStack" => boolean(),
        "SecurityGroupIds" => list(String.t() | atom()),
        "SubnetIds" => list(String.t() | atom()),
        "VpcId" => String.t() | atom()
      }

  """
  @type vpc_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ec2_unexpected_exception() :: %{
        "EC2ErrorCode" => String.t() | atom(),
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type ec2_unexpected_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_function_url_config_response() :: %{
        "AuthType" => list(any()),
        "Cors" => cors(),
        "CreationTime" => String.t() | atom(),
        "FunctionArn" => String.t() | atom(),
        "FunctionUrl" => String.t() | atom(),
        "InvokeMode" => list(any()),
        "LastModifiedTime" => String.t() | atom()
      }

  """
  @type get_function_url_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      step_options() :: %{
        "NextAttemptDelaySeconds" => integer()
      }

  """
  @type step_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_function_event_invoke_config_request() :: %{
        optional("Qualifier") => String.t() | atom()
      }

  """
  @type get_function_event_invoke_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      step_details() :: %{
        "Attempt" => integer(),
        "Error" => error_object(),
        "NextAttemptTimestamp" => non_neg_integer(),
        "Result" => String.t() | atom()
      }

  """
  @type step_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      execution_succeeded_details() :: %{
        "Result" => event_result()
      }

  """
  @type execution_succeeded_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_function_request() :: %{
        optional("Architectures") => list(list(any())()),
        optional("CapacityProviderConfig") => capacity_provider_config(),
        optional("CodeSigningConfigArn") => String.t() | atom(),
        optional("DeadLetterConfig") => dead_letter_config(),
        optional("Description") => String.t() | atom(),
        optional("DurableConfig") => durable_config(),
        optional("Environment") => environment(),
        optional("EphemeralStorage") => ephemeral_storage(),
        optional("FileSystemConfigs") => list(file_system_config()),
        optional("Handler") => String.t() | atom(),
        optional("ImageConfig") => image_config(),
        optional("KMSKeyArn") => String.t() | atom(),
        optional("Layers") => list(String.t() | atom()),
        optional("LoggingConfig") => logging_config(),
        optional("MemorySize") => integer(),
        optional("PackageType") => list(any()),
        optional("Publish") => boolean(),
        optional("PublishTo") => list(any()),
        optional("Runtime") => list(any()),
        optional("SnapStart") => snap_start(),
        optional("Tags") => map(),
        optional("TenancyConfig") => tenancy_config(),
        optional("Timeout") => integer(),
        optional("TracingConfig") => tracing_config(),
        optional("VpcConfig") => vpc_config(),
        required("Code") => function_code(),
        required("FunctionName") => String.t() | atom(),
        required("Role") => String.t() | atom()
      }

  """
  @type create_function_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      environment_error() :: %{
        "ErrorCode" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type environment_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      no_published_version_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type no_published_version_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_durable_execution_request() :: %{
        optional("Error") => error_object()
      }

  """
  @type stop_durable_execution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tags_error() :: %{
        "ErrorCode" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type tags_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ec2_throttled_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type ec2_throttled_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      trace_header() :: %{
        "XAmznTraceId" => String.t() | atom()
      }

  """
  @type trace_header() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_request() :: %{}

  """
  @type list_tags_request() :: %{}

  @typedoc """

  ## Example:

      e_f_s_i_o_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type e_f_s_i_o_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kms_invalid_state_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type kms_invalid_state_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      layers_list_item() :: %{
        "LatestMatchingVersion" => layer_versions_list_item(),
        "LayerArn" => String.t() | atom(),
        "LayerName" => String.t() | atom()
      }

  """
  @type layers_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      chained_invoke_options() :: %{
        "FunctionName" => String.t() | atom(),
        "TenantId" => String.t() | atom()
      }

  """
  @type chained_invoke_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      alias_routing_configuration() :: %{
        "AdditionalVersionWeights" => map()
      }

  """
  @type alias_routing_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image_config_response() :: %{
        "Error" => image_config_error(),
        "ImageConfig" => image_config()
      }

  """
  @type image_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_function_scaling_config_response() :: %{
        "FunctionState" => list(any())
      }

  """
  @type put_function_scaling_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_subnet_id_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type invalid_subnet_id_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tenancy_config() :: %{
        "TenantIsolationMode" => list(any())
      }

  """
  @type tenancy_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      snap_start_response() :: %{
        "ApplyOn" => list(any()),
        "OptimizationStatus" => list(any())
      }

  """
  @type snap_start_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_storage_exceeded_exception() :: %{
        "Type" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type code_storage_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      layer_version_content_input() :: %{
        "S3Bucket" => String.t() | atom(),
        "S3Key" => String.t() | atom(),
        "S3ObjectVersion" => String.t() | atom(),
        "ZipFile" => binary()
      }

  """
  @type layer_version_content_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_ready_exception() :: %{
        "Type" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type resource_not_ready_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_signing_policies() :: %{
        "UntrustedArtifactOnDeployment" => list(any())
      }

  """
  @type code_signing_policies() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      precondition_failed_exception() :: %{
        "Type" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type precondition_failed_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_durable_execution_callback_heartbeat_response() :: %{}

  """
  @type send_durable_execution_callback_heartbeat_response() :: %{}

  @typedoc """

  ## Example:

      list_function_event_invoke_configs_request() :: %{
        optional("Marker") => String.t() | atom(),
        optional("MaxItems") => integer()
      }

  """
  @type list_function_event_invoke_configs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      context_details() :: %{
        "Error" => error_object(),
        "ReplayChildren" => boolean(),
        "Result" => String.t() | atom()
      }

  """
  @type context_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_conflict_exception() :: %{
        "Type" => String.t() | atom(),
        "message" => String.t() | atom()
      }

  """
  @type resource_conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      concurrency() :: %{
        optional("ReservedConcurrentExecutions") => integer()
      }

  """
  @type concurrency() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_alias_request() :: %{}

  """
  @type delete_alias_request() :: %{}

  @typedoc """

  ## Example:

      callback_details() :: %{
        "CallbackId" => String.t() | atom(),
        "Error" => error_object(),
        "Result" => String.t() | atom()
      }

  """
  @type callback_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_provisioned_concurrency_configs_request() :: %{
        optional("Marker") => String.t() | atom(),
        optional("MaxItems") => integer()
      }

  """
  @type list_provisioned_concurrency_configs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      add_permission_request() :: %{
        optional("EventSourceToken") => String.t() | atom(),
        optional("FunctionUrlAuthType") => list(any()),
        optional("InvokedViaFunctionUrl") => boolean(),
        optional("PrincipalOrgID") => String.t() | atom(),
        optional("Qualifier") => String.t() | atom(),
        optional("RevisionId") => String.t() | atom(),
        optional("SourceAccount") => String.t() | atom(),
        optional("SourceArn") => String.t() | atom(),
        required("Action") => String.t() | atom(),
        required("Principal") => String.t() | atom(),
        required("StatementId") => String.t() | atom()
      }

  """
  @type add_permission_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter_criteria_error() :: %{
        "ErrorCode" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type filter_criteria_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tracing_config_response() :: %{
        "Mode" => list(any())
      }

  """
  @type tracing_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      snap_start_exception() :: %{
        "Message" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type snap_start_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_function_recursion_config_response() :: %{
        "RecursiveLoop" => list(any())
      }

  """
  @type get_function_recursion_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      step_succeeded_details() :: %{
        "Result" => event_result(),
        "RetryDetails" => retry_details()
      }

  """
  @type step_succeeded_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      add_permission_response() :: %{
        "Statement" => String.t() | atom()
      }

  """
  @type add_permission_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_signing_config() :: %{
        "AllowedPublishers" => allowed_publishers(),
        "CodeSigningConfigArn" => String.t() | atom(),
        "CodeSigningConfigId" => String.t() | atom(),
        "CodeSigningPolicies" => code_signing_policies(),
        "Description" => String.t() | atom(),
        "LastModified" => String.t() | atom()
      }

  """
  @type code_signing_config() :: %{(String.t() | atom()) => any()}

  @type add_layer_version_permission_errors() ::
          resource_conflict_exception()
          | precondition_failed_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | policy_length_exceeded_exception()

  @type add_permission_errors() ::
          resource_conflict_exception()
          | precondition_failed_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | policy_length_exceeded_exception()

  @type checkpoint_durable_execution_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | too_many_requests_exception()

  @type create_alias_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type create_capacity_provider_errors() ::
          resource_conflict_exception()
          | capacity_provider_limit_exceeded_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | too_many_requests_exception()

  @type create_code_signing_config_errors() ::
          service_exception() | invalid_parameter_value_exception()

  @type create_event_source_mapping_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type create_function_errors() ::
          resource_conflict_exception()
          | code_storage_exceeded_exception()
          | function_versions_per_capacity_provider_limit_exceeded_exception()
          | invalid_code_signature_exception()
          | code_verification_failed_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | code_signing_config_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type create_function_url_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type delete_alias_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | too_many_requests_exception()

  @type delete_capacity_provider_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type delete_code_signing_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()

  @type delete_event_source_mapping_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type delete_function_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type delete_function_code_signing_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | code_signing_config_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type delete_function_concurrency_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type delete_function_event_invoke_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type delete_function_url_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type delete_layer_version_errors() :: service_exception() | too_many_requests_exception()

  @type delete_provisioned_concurrency_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_account_settings_errors() :: service_exception() | too_many_requests_exception()

  @type get_alias_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_capacity_provider_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_code_signing_config_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()

  @type get_durable_execution_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_durable_execution_history_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_durable_execution_state_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | too_many_requests_exception()

  @type get_event_source_mapping_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_function_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_function_code_signing_config_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_function_concurrency_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_function_configuration_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_function_event_invoke_config_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_function_recursion_config_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_function_scaling_config_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_function_url_config_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_layer_version_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_layer_version_by_arn_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_layer_version_policy_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_policy_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_provisioned_concurrency_config_errors() ::
          provisioned_concurrency_config_not_found_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_runtime_management_config_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type invoke_errors() ::
          snap_start_exception()
          | resource_conflict_exception()
          | resource_not_ready_exception()
          | invalid_subnet_id_exception()
          | kms_invalid_state_exception()
          | e_f_s_i_o_exception()
          | ec2_throttled_exception()
          | no_published_version_exception()
          | ec2_unexpected_exception()
          | e_f_s_mount_failure_exception()
          | e_n_i_limit_reached_exception()
          | e_f_s_mount_connectivity_exception()
          | e_f_s_mount_timeout_exception()
          | kms_not_found_exception()
          | invalid_zip_file_exception()
          | kms_access_denied_exception()
          | request_too_large_exception()
          | subnet_ip_address_limit_reached_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | durable_execution_already_started_exception()
          | resource_not_found_exception()
          | invalid_request_content_exception()
          | invalid_runtime_exception()
          | recursive_invocation_exception()
          | serialized_request_entity_too_large_exception()
          | snap_start_timeout_exception()
          | too_many_requests_exception()
          | snap_start_not_ready_exception()
          | ec2_access_denied_exception()
          | invalid_security_group_id_exception()
          | kms_disabled_exception()
          | unsupported_media_type_exception()

  @type invoke_async_errors() ::
          resource_conflict_exception()
          | service_exception()
          | resource_not_found_exception()
          | invalid_request_content_exception()
          | invalid_runtime_exception()

  @type invoke_with_response_stream_errors() ::
          snap_start_exception()
          | resource_conflict_exception()
          | resource_not_ready_exception()
          | invalid_subnet_id_exception()
          | kms_invalid_state_exception()
          | e_f_s_i_o_exception()
          | ec2_throttled_exception()
          | no_published_version_exception()
          | ec2_unexpected_exception()
          | e_f_s_mount_failure_exception()
          | e_n_i_limit_reached_exception()
          | e_f_s_mount_connectivity_exception()
          | e_f_s_mount_timeout_exception()
          | kms_not_found_exception()
          | invalid_zip_file_exception()
          | kms_access_denied_exception()
          | request_too_large_exception()
          | subnet_ip_address_limit_reached_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | invalid_request_content_exception()
          | invalid_runtime_exception()
          | recursive_invocation_exception()
          | serialized_request_entity_too_large_exception()
          | snap_start_timeout_exception()
          | too_many_requests_exception()
          | snap_start_not_ready_exception()
          | ec2_access_denied_exception()
          | invalid_security_group_id_exception()
          | kms_disabled_exception()
          | unsupported_media_type_exception()

  @type list_aliases_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_capacity_providers_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | too_many_requests_exception()

  @type list_code_signing_configs_errors() ::
          service_exception() | invalid_parameter_value_exception()

  @type list_durable_executions_by_function_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_event_source_mappings_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_function_event_invoke_configs_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_function_url_configs_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_function_versions_by_capacity_provider_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_functions_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | too_many_requests_exception()

  @type list_functions_by_code_signing_config_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()

  @type list_layer_versions_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_layers_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | too_many_requests_exception()

  @type list_provisioned_concurrency_configs_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_tags_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type list_versions_by_function_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type publish_layer_version_errors() ::
          code_storage_exceeded_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type publish_version_errors() ::
          resource_conflict_exception()
          | precondition_failed_exception()
          | code_storage_exceeded_exception()
          | function_versions_per_capacity_provider_limit_exceeded_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type put_function_code_signing_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | code_signing_config_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type put_function_concurrency_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type put_function_event_invoke_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type put_function_recursion_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type put_function_scaling_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type put_provisioned_concurrency_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type put_runtime_management_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type remove_layer_version_permission_errors() ::
          precondition_failed_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type remove_permission_errors() ::
          precondition_failed_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type send_durable_execution_callback_failure_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | callback_timeout_exception()
          | too_many_requests_exception()

  @type send_durable_execution_callback_heartbeat_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | callback_timeout_exception()
          | too_many_requests_exception()

  @type send_durable_execution_callback_success_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | callback_timeout_exception()
          | too_many_requests_exception()

  @type stop_durable_execution_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type tag_resource_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type untag_resource_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_alias_errors() ::
          resource_conflict_exception()
          | precondition_failed_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_capacity_provider_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_code_signing_config_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()

  @type update_event_source_mapping_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | resource_in_use_exception()

  @type update_function_code_errors() ::
          resource_conflict_exception()
          | precondition_failed_exception()
          | code_storage_exceeded_exception()
          | invalid_code_signature_exception()
          | code_verification_failed_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | code_signing_config_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_function_configuration_errors() ::
          resource_conflict_exception()
          | precondition_failed_exception()
          | invalid_code_signature_exception()
          | code_verification_failed_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | code_signing_config_not_found_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_function_event_invoke_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type update_function_url_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  def metadata do
    %{
      api_version: "2015-03-31",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "lambda",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Lambda",
      signature_version: "v4",
      signing_name: "lambda",
      target_prefix: nil
    }
  end

  @doc """
  Adds permissions to the resource-based policy of a version of an [Lambda layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).

  Use this action to grant layer usage permission to other accounts. You can grant
  permission to a single account, all accounts in an organization, or all Amazon
  Web Services accounts.

  To revoke permission, call `RemoveLayerVersionPermission` with the statement ID
  that you specified when you added it.
  """
  @spec add_layer_version_permission(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          add_layer_version_permission_request(),
          list()
        ) ::
          {:ok, add_layer_version_permission_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_layer_version_permission_errors()}
  def add_layer_version_permission(
        %Client{} = client,
        layer_name,
        version_number,
        input,
        options \\ []
      ) do
    url_path =
      "/2018-10-31/layers/#{AWS.Util.encode_uri(layer_name)}/versions/#{AWS.Util.encode_uri(version_number)}/policy"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"RevisionId", "RevisionId"}
      ]
      |> Request.build_params(input)

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
  Grants a
  [principal](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying) permission to use a function.

  You can apply the policy at the function level, or specify a qualifier to
  restrict access to a single version or alias. If you use a qualifier, the
  invoker must use the full Amazon Resource Name (ARN) of that version or alias to
  invoke the function. Note: Lambda does not support adding policies to version
  $LATEST.

  To grant permission to another account, specify the account ID as the
  `Principal`. To grant permission to an organization defined in Organizations,
  specify the organization ID as the `PrincipalOrgID`. For Amazon Web Services
  services, the principal is a domain-style identifier that the service defines,
  such as `s3.amazonaws.com` or `sns.amazonaws.com`. For Amazon Web Services
  services, you can also specify the ARN of the associated resource as the
  `SourceArn`. If you grant permission to a service principal without specifying
  the source, other accounts could potentially configure resources in their
  account to invoke your Lambda function.

  This operation adds a statement to a resource-based permissions policy for the
  function. For more information about function policies, see [Using
  resource-based policies for
  Lambda](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html).
  """
  @spec add_permission(map(), String.t() | atom(), add_permission_request(), list()) ::
          {:ok, add_permission_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_permission_errors()}
  def add_permission(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/policy"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
      ]
      |> Request.build_params(input)

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
  Saves the progress of a [durable function](https://docs.aws.amazon.com/lambda/latest/dg/durable-functions.html)
  execution during runtime.

  This API is used by the Lambda durable functions SDK to checkpoint completed
  steps and schedule asynchronous operations. You typically don't need to call
  this API directly as the SDK handles checkpointing automatically.

  Each checkpoint operation consumes the current checkpoint token and returns a
  new one for the next checkpoint. This ensures that checkpoints are applied in
  the correct order and prevents duplicate or out-of-order state updates.
  """
  @spec checkpoint_durable_execution(
          map(),
          String.t() | atom(),
          checkpoint_durable_execution_request(),
          list()
        ) ::
          {:ok, checkpoint_durable_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, checkpoint_durable_execution_errors()}
  def checkpoint_durable_execution(
        %Client{} = client,
        durable_execution_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/2025-12-01/durable-executions/#{AWS.Util.encode_uri(durable_execution_arn)}/checkpoint"

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
  Creates an
  [alias](https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html)
  for a Lambda function version.

  Use aliases to provide clients with a function identifier that you can update to
  invoke a different version.

  You can also map an alias to split invocation requests between two versions. Use
  the `RoutingConfig` parameter to specify a second version and the percentage of
  invocation requests that it receives.
  """
  @spec create_alias(map(), String.t() | atom(), create_alias_request(), list()) ::
          {:ok, alias_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_alias_errors()}
  def create_alias(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/aliases"
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
  Creates a capacity provider that manages compute resources for Lambda functions
  """
  @spec create_capacity_provider(map(), create_capacity_provider_request(), list()) ::
          {:ok, create_capacity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_capacity_provider_errors()}
  def create_capacity_provider(%Client{} = client, input, options \\ []) do
    url_path = "/2025-11-30/capacity-providers"
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
      202
    )
  end

  @doc """
  Creates a code signing configuration.

  A [code signing configuration](https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html)
  defines a list of allowed signing profiles and defines the code-signing
  validation policy (action to be taken if deployment validation checks fail).
  """
  @spec create_code_signing_config(map(), create_code_signing_config_request(), list()) ::
          {:ok, create_code_signing_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_code_signing_config_errors()}
  def create_code_signing_config(%Client{} = client, input, options \\ []) do
    url_path = "/2020-04-22/code-signing-configs"
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
  Creates a mapping between an event source and an Lambda function.

  Lambda reads items from the event source and invokes the function.

  For details about how to configure different event sources, see the following
  topics.

    * [ Amazon DynamoDB Streams](https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-dynamodb-eventsourcemapping)

    * [ Amazon Kinesis](https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-eventsourcemapping)

    * [ Amazon SQS](https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-eventsource)

    * [ Amazon MQ and RabbitMQ](https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-eventsourcemapping)

    * [ Amazon MSK](https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html)

    * [ Apache Kafka](https://docs.aws.amazon.com/lambda/latest/dg/kafka-smaa.html)

    * [ Amazon DocumentDB](https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html)

  The following error handling options are available for stream sources (DynamoDB,
  Kinesis, Amazon MSK, and self-managed Apache Kafka):

    * `BisectBatchOnFunctionError` – If the function returns an error,
  split the batch in two and retry.

    * `MaximumRecordAgeInSeconds` – Discard records older than the
  specified age. The default value is infinite (-1). When set to infinite (-1),
  failed records are retried until the record expires

    * `MaximumRetryAttempts` – Discard records after the specified
  number of retries. The default value is infinite (-1). When set to infinite
  (-1), failed records are retried until the record expires.

    * `OnFailure` – Send discarded records to an Amazon SQS queue,
  Amazon SNS topic, Kafka topic, or Amazon S3 bucket. For more information, see
  [Adding a destination](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async-retain-records.html#invocation-async-destinations).

  The following option is available only for DynamoDB and Kinesis event sources:

    * `ParallelizationFactor` – Process multiple batches from each shard
  concurrently.

  For information about which configuration parameters apply to each event source,
  see the following topics.

    * [ Amazon DynamoDB Streams](https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-ddb-params)

    * [ Amazon Kinesis](https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-params)

    * [ Amazon SQS](https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#services-sqs-params)

    * [ Amazon MQ and RabbitMQ](https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-params)

    * [ Amazon MSK](https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#services-msk-parms)

    * [ Apache Kafka](https://docs.aws.amazon.com/lambda/latest/dg/with-kafka.html#services-kafka-parms)

    * [ Amazon DocumentDB](https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html#docdb-configuration)
  """
  @spec create_event_source_mapping(map(), create_event_source_mapping_request(), list()) ::
          {:ok, event_source_mapping_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_event_source_mapping_errors()}
  def create_event_source_mapping(%Client{} = client, input, options \\ []) do
    url_path = "/2015-03-31/event-source-mappings"
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
      202
    )
  end

  @doc """
  Creates a Lambda function.

  To create a function, you need a [deployment package](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html)
  and an [execution role](https://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role).
  The deployment package is a .zip file archive or container image that contains
  your function code. The execution role grants the function permission to use
  Amazon Web Services services, such as Amazon CloudWatch Logs for log streaming
  and X-Ray for request tracing.

  If the deployment package is a [container image](https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html), then
  you set the package type to `Image`. For a container image, the code property
  must include the URI of a container image in the Amazon ECR registry. You do not
  need to specify the handler and runtime properties.

  If the deployment package is a [.zip file archive](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html#gettingstarted-package-zip),
  then you set the package type to `Zip`. For a .zip file archive, the code
  property specifies the location of the .zip file. You must also specify the
  handler and runtime properties. The code in the deployment package must be
  compatible with the target instruction set architecture of the function
  (`x86-64` or `arm64`). If you do not specify the architecture, then the default
  value is `x86-64`.

  When you create a function, Lambda provisions an instance of the function and
  its supporting resources. If your function connects to a VPC, this process can
  take a minute or so. During this time, you can't invoke or modify the function.
  The `State`, `StateReason`, and `StateReasonCode` fields in the response from
  `GetFunctionConfiguration` indicate when the function is ready to invoke. For
  more information, see [Lambda function states](https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html).

  A function has an unpublished version, and can have published versions and
  aliases. The unpublished version changes when you update your function's code
  and configuration. A published version is a snapshot of your function code and
  configuration that can't be changed. An alias is a named resource that maps to a
  version, and can be changed to map to a different version. Use the `Publish`
  parameter to create version `1` of your function from its initial configuration.

  The other parameters let you configure version-specific and function-level
  settings. You can modify version-specific settings later with
  `UpdateFunctionConfiguration`. Function-level settings apply to both the
  unpublished and published versions of the function, and include tags
  (`TagResource`) and per-function concurrency limits (`PutFunctionConcurrency`).

  You can use code signing if your deployment package is a .zip file archive. To
  enable code signing for this function, specify the ARN of a code-signing
  configuration. When a user attempts to deploy a code package with
  `UpdateFunctionCode`, Lambda checks that the code package has a valid signature
  from a trusted publisher. The code-signing configuration includes set of signing
  profiles, which define the trusted publishers for this function.

  If another Amazon Web Services account or an Amazon Web Services service invokes
  your function, use `AddPermission` to grant permission by creating a
  resource-based Identity and Access Management (IAM) policy. You can grant
  permissions at the function level, on a version, or on an alias.

  To invoke your function directly, use `Invoke`. To invoke your function in
  response to events in other Amazon Web Services services, create an event source
  mapping (`CreateEventSourceMapping`), or configure a function trigger in the
  other service. For more information, see [Invoking Lambda functions](https://docs.aws.amazon.com/lambda/latest/dg/lambda-invocation.html).
  """
  @spec create_function(map(), create_function_request(), list()) ::
          {:ok, function_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_function_errors()}
  def create_function(%Client{} = client, input, options \\ []) do
    url_path = "/2015-03-31/functions"
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
  Creates a Lambda function URL with the specified configuration parameters.

  A function URL is a dedicated HTTP(S) endpoint that you can use to invoke your
  function.
  """
  @spec create_function_url_config(
          map(),
          String.t() | atom(),
          create_function_url_config_request(),
          list()
        ) ::
          {:ok, create_function_url_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_function_url_config_errors()}
  def create_function_url_config(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2021-10-31/functions/#{AWS.Util.encode_uri(function_name)}/url"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
      ]
      |> Request.build_params(input)

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
  Deletes a Lambda function
  [alias](https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html).
  """
  @spec delete_alias(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_alias_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_alias_errors()}
  def delete_alias(%Client{} = client, function_name, name, input, options \\ []) do
    url_path =
      "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/aliases/#{AWS.Util.encode_uri(name)}"

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
      204
    )
  end

  @doc """
  Deletes a capacity provider.

  You cannot delete a capacity provider that is currently being used by Lambda
  functions.
  """
  @spec delete_capacity_provider(
          map(),
          String.t() | atom(),
          delete_capacity_provider_request(),
          list()
        ) ::
          {:ok, delete_capacity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_capacity_provider_errors()}
  def delete_capacity_provider(%Client{} = client, capacity_provider_name, input, options \\ []) do
    url_path = "/2025-11-30/capacity-providers/#{AWS.Util.encode_uri(capacity_provider_name)}"
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
      202
    )
  end

  @doc """
  Deletes the code signing configuration.

  You can delete the code signing configuration only if no function is using it.
  """
  @spec delete_code_signing_config(
          map(),
          String.t() | atom(),
          delete_code_signing_config_request(),
          list()
        ) ::
          {:ok, delete_code_signing_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_code_signing_config_errors()}
  def delete_code_signing_config(
        %Client{} = client,
        code_signing_config_arn,
        input,
        options \\ []
      ) do
    url_path = "/2020-04-22/code-signing-configs/#{AWS.Util.encode_uri(code_signing_config_arn)}"
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
      204
    )
  end

  @doc """
  Deletes an [event source mapping](https://docs.aws.amazon.com/lambda/latest/dg/intro-invocation-modes.html).

  You can get the identifier of a mapping from the output of
  `ListEventSourceMappings`.

  When you delete an event source mapping, it enters a `Deleting` state and might
  not be completely deleted for several seconds.
  """
  @spec delete_event_source_mapping(
          map(),
          String.t() | atom(),
          delete_event_source_mapping_request(),
          list()
        ) ::
          {:ok, event_source_mapping_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_event_source_mapping_errors()}
  def delete_event_source_mapping(%Client{} = client, uuid, input, options \\ []) do
    url_path = "/2015-03-31/event-source-mappings/#{AWS.Util.encode_uri(uuid)}"
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
      202
    )
  end

  @doc """
  Deletes a Lambda function.

  To delete a specific function version, use the `Qualifier` parameter. Otherwise,
  all versions and aliases are deleted. This doesn't require the user to have
  explicit permissions for `DeleteAlias`.

  A deleted Lambda function cannot be recovered. Ensure that you specify the
  correct function name and version before deleting.

  To delete Lambda event source mappings that invoke a function, use
  `DeleteEventSourceMapping`. For Amazon Web Services services and resources that
  invoke your function directly, delete the trigger in the service where you
  originally configured it.
  """
  @spec delete_function(map(), String.t() | atom(), delete_function_request(), list()) ::
          {:ok, delete_function_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_function_errors()}
  def delete_function(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
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
  Removes the code signing configuration from the function.
  """
  @spec delete_function_code_signing_config(
          map(),
          String.t() | atom(),
          delete_function_code_signing_config_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_function_code_signing_config_errors()}
  def delete_function_code_signing_config(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2020-06-30/functions/#{AWS.Util.encode_uri(function_name)}/code-signing-config"
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
      204
    )
  end

  @doc """
  Removes a concurrent execution limit from a function.
  """
  @spec delete_function_concurrency(
          map(),
          String.t() | atom(),
          delete_function_concurrency_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_function_concurrency_errors()}
  def delete_function_concurrency(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2017-10-31/functions/#{AWS.Util.encode_uri(function_name)}/concurrency"
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
      204
    )
  end

  @doc """
  Deletes the configuration for asynchronous invocation for a function, version,
  or alias.

  To configure options for asynchronous invocation, use
  `PutFunctionEventInvokeConfig`.
  """
  @spec delete_function_event_invoke_config(
          map(),
          String.t() | atom(),
          delete_function_event_invoke_config_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_function_event_invoke_config_errors()}
  def delete_function_event_invoke_config(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2019-09-25/functions/#{AWS.Util.encode_uri(function_name)}/event-invoke-config"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
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
  Deletes a Lambda function URL.

  When you delete a function URL, you can't recover it. Creating a new function
  URL results in a different URL address.
  """
  @spec delete_function_url_config(
          map(),
          String.t() | atom(),
          delete_function_url_config_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_function_url_config_errors()}
  def delete_function_url_config(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2021-10-31/functions/#{AWS.Util.encode_uri(function_name)}/url"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
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
  Deletes a version of an [Lambda layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).

  Deleted versions can no longer be viewed or added to functions. To avoid
  breaking functions, a copy of the version remains in Lambda until no functions
  refer to it.
  """
  @spec delete_layer_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_layer_version_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_layer_version_errors()}
  def delete_layer_version(%Client{} = client, layer_name, version_number, input, options \\ []) do
    url_path =
      "/2018-10-31/layers/#{AWS.Util.encode_uri(layer_name)}/versions/#{AWS.Util.encode_uri(version_number)}"

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
      204
    )
  end

  @doc """
  Deletes the provisioned concurrency configuration for a function.
  """
  @spec delete_provisioned_concurrency_config(
          map(),
          String.t() | atom(),
          delete_provisioned_concurrency_config_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_provisioned_concurrency_config_errors()}
  def delete_provisioned_concurrency_config(
        %Client{} = client,
        function_name,
        input,
        options \\ []
      ) do
    url_path =
      "/2019-09-30/functions/#{AWS.Util.encode_uri(function_name)}/provisioned-concurrency"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
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
  Retrieves details about your account's
  [limits](https://docs.aws.amazon.com/lambda/latest/dg/limits.html) and usage in
  an Amazon Web Services Region.
  """
  @spec get_account_settings(map(), list()) ::
          {:ok, get_account_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_account_settings_errors()}
  def get_account_settings(%Client{} = client, options \\ []) do
    url_path = "/2016-08-19/account-settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns details about a Lambda function
  [alias](https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html).
  """
  @spec get_alias(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, alias_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_alias_errors()}
  def get_alias(%Client{} = client, function_name, name, options \\ []) do
    url_path =
      "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/aliases/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a specific capacity provider, including its
  configuration, state, and associated resources.
  """
  @spec get_capacity_provider(map(), String.t() | atom(), list()) ::
          {:ok, get_capacity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_capacity_provider_errors()}
  def get_capacity_provider(%Client{} = client, capacity_provider_name, options \\ []) do
    url_path = "/2025-11-30/capacity-providers/#{AWS.Util.encode_uri(capacity_provider_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the specified code signing configuration.
  """
  @spec get_code_signing_config(map(), String.t() | atom(), list()) ::
          {:ok, get_code_signing_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_code_signing_config_errors()}
  def get_code_signing_config(%Client{} = client, code_signing_config_arn, options \\ []) do
    url_path = "/2020-04-22/code-signing-configs/#{AWS.Util.encode_uri(code_signing_config_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves detailed information about a specific [durable execution](https://docs.aws.amazon.com/lambda/latest/dg/durable-functions.html),
  including its current status, input payload, result or error information, and
  execution metadata such as start time and usage statistics.
  """
  @spec get_durable_execution(map(), String.t() | atom(), list()) ::
          {:ok, get_durable_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_durable_execution_errors()}
  def get_durable_execution(%Client{} = client, durable_execution_arn, options \\ []) do
    url_path = "/2025-12-01/durable-executions/#{AWS.Util.encode_uri(durable_execution_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the execution history for a [durable execution](https://docs.aws.amazon.com/lambda/latest/dg/durable-functions.html),
  showing all the steps, callbacks, and events that occurred during the execution.

  This provides a detailed audit trail of the execution's progress over time.

  The history is available while the execution is running and for a retention
  period after it completes (1-90 days, default 30 days). You can control whether
  to include execution data such as step results and callback payloads.
  """
  @spec get_durable_execution_history(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_durable_execution_history_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_durable_execution_history_errors()}
  def get_durable_execution_history(
        %Client{} = client,
        durable_execution_arn,
        include_execution_data \\ nil,
        marker \\ nil,
        max_items \\ nil,
        reverse_order \\ nil,
        options \\ []
      ) do
    url_path =
      "/2025-12-01/durable-executions/#{AWS.Util.encode_uri(durable_execution_arn)}/history"

    headers = []
    query_params = []

    query_params =
      if !is_nil(reverse_order) do
        [{"ReverseOrder", reverse_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(include_execution_data) do
        [{"IncludeExecutionData", include_execution_data} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the current execution state required for the replay process during
  [durable function](https://docs.aws.amazon.com/lambda/latest/dg/durable-functions.html)
  execution.

  This API is used by the Lambda durable functions SDK to get state information
  needed for replay. You typically don't need to call this API directly as the SDK
  handles state management automatically.

  The response contains operations ordered by start sequence number in ascending
  order. Completed operations with children don't include child operation details
  since they don't need to be replayed.
  """
  @spec get_durable_execution_state(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_durable_execution_state_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_durable_execution_state_errors()}
  def get_durable_execution_state(
        %Client{} = client,
        durable_execution_arn,
        checkpoint_token,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path =
      "/2025-12-01/durable-executions/#{AWS.Util.encode_uri(durable_execution_arn)}/state"

    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(checkpoint_token) do
        [{"CheckpointToken", checkpoint_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns details about an event source mapping.

  You can get the identifier of a mapping from the output of
  `ListEventSourceMappings`.
  """
  @spec get_event_source_mapping(map(), String.t() | atom(), list()) ::
          {:ok, event_source_mapping_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_event_source_mapping_errors()}
  def get_event_source_mapping(%Client{} = client, uuid, options \\ []) do
    url_path = "/2015-03-31/event-source-mappings/#{AWS.Util.encode_uri(uuid)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the function or function version, with a link to
  download the deployment package that's valid for 10 minutes.

  If you specify a function version, only details that are specific to that
  version are returned.
  """
  @spec get_function(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, get_function_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_function_errors()}
  def get_function(%Client{} = client, function_name, qualifier \\ nil, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(qualifier) do
        [{"Qualifier", qualifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the code signing configuration for the specified function.
  """
  @spec get_function_code_signing_config(map(), String.t() | atom(), list()) ::
          {:ok, get_function_code_signing_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_function_code_signing_config_errors()}
  def get_function_code_signing_config(%Client{} = client, function_name, options \\ []) do
    url_path = "/2020-06-30/functions/#{AWS.Util.encode_uri(function_name)}/code-signing-config"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns details about the reserved concurrency configuration for a function.

  To set a concurrency limit for a function, use `PutFunctionConcurrency`.
  """
  @spec get_function_concurrency(map(), String.t() | atom(), list()) ::
          {:ok, get_function_concurrency_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_function_concurrency_errors()}
  def get_function_concurrency(%Client{} = client, function_name, options \\ []) do
    url_path = "/2019-09-30/functions/#{AWS.Util.encode_uri(function_name)}/concurrency"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the version-specific settings of a Lambda function or version.

  The output includes only options that can vary between versions of a function.
  To modify these settings, use `UpdateFunctionConfiguration`.

  To get all of a function's details, including function-level settings, use
  `GetFunction`.
  """
  @spec get_function_configuration(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, function_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_function_configuration_errors()}
  def get_function_configuration(
        %Client{} = client,
        function_name,
        qualifier \\ nil,
        options \\ []
      ) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/configuration"
    headers = []
    query_params = []

    query_params =
      if !is_nil(qualifier) do
        [{"Qualifier", qualifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the configuration for asynchronous invocation for a function, version,
  or alias.

  To configure options for asynchronous invocation, use
  `PutFunctionEventInvokeConfig`.
  """
  @spec get_function_event_invoke_config(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, function_event_invoke_config(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_function_event_invoke_config_errors()}
  def get_function_event_invoke_config(
        %Client{} = client,
        function_name,
        qualifier \\ nil,
        options \\ []
      ) do
    url_path = "/2019-09-25/functions/#{AWS.Util.encode_uri(function_name)}/event-invoke-config"
    headers = []
    query_params = []

    query_params =
      if !is_nil(qualifier) do
        [{"Qualifier", qualifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns your function's [recursive loop detection](https://docs.aws.amazon.com/lambda/latest/dg/invocation-recursion.html)
  configuration.
  """
  @spec get_function_recursion_config(map(), String.t() | atom(), list()) ::
          {:ok, get_function_recursion_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_function_recursion_config_errors()}
  def get_function_recursion_config(%Client{} = client, function_name, options \\ []) do
    url_path = "/2024-08-31/functions/#{AWS.Util.encode_uri(function_name)}/recursion-config"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the scaling configuration for a Lambda Managed Instances function.
  """
  @spec get_function_scaling_config(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_function_scaling_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_function_scaling_config_errors()}
  def get_function_scaling_config(%Client{} = client, function_name, qualifier, options \\ []) do
    url_path =
      "/2025-11-30/functions/#{AWS.Util.encode_uri(function_name)}/function-scaling-config"

    headers = []
    query_params = []

    query_params =
      if !is_nil(qualifier) do
        [{"Qualifier", qualifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns details about a Lambda function URL.
  """
  @spec get_function_url_config(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, get_function_url_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_function_url_config_errors()}
  def get_function_url_config(%Client{} = client, function_name, qualifier \\ nil, options \\ []) do
    url_path = "/2021-10-31/functions/#{AWS.Util.encode_uri(function_name)}/url"
    headers = []
    query_params = []

    query_params =
      if !is_nil(qualifier) do
        [{"Qualifier", qualifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a version of an [Lambda layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html),
  with a link to download the layer archive that's valid for 10 minutes.
  """
  @spec get_layer_version(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_layer_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_layer_version_errors()}
  def get_layer_version(%Client{} = client, layer_name, version_number, options \\ []) do
    url_path =
      "/2018-10-31/layers/#{AWS.Util.encode_uri(layer_name)}/versions/#{AWS.Util.encode_uri(version_number)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a version of an [Lambda layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html),
  with a link to download the layer archive that's valid for 10 minutes.
  """
  @spec get_layer_version_by_arn(map(), String.t() | atom(), list()) ::
          {:ok, get_layer_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_layer_version_by_arn_errors()}
  def get_layer_version_by_arn(%Client{} = client, arn, options \\ []) do
    url_path = "/2018-10-31/layers?find=LayerVersion"
    headers = []
    query_params = []

    query_params =
      if !is_nil(arn) do
        [{"Arn", arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the permission policy for a version of an [Lambda layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).

  For more information, see `AddLayerVersionPermission`.
  """
  @spec get_layer_version_policy(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_layer_version_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_layer_version_policy_errors()}
  def get_layer_version_policy(%Client{} = client, layer_name, version_number, options \\ []) do
    url_path =
      "/2018-10-31/layers/#{AWS.Util.encode_uri(layer_name)}/versions/#{AWS.Util.encode_uri(version_number)}/policy"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the [resource-based IAM policy](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html)
  for a function, version, or alias.
  """
  @spec get_policy(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, get_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_policy_errors()}
  def get_policy(%Client{} = client, function_name, qualifier \\ nil, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/policy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(qualifier) do
        [{"Qualifier", qualifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the provisioned concurrency configuration for a function's alias or
  version.
  """
  @spec get_provisioned_concurrency_config(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_provisioned_concurrency_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_provisioned_concurrency_config_errors()}
  def get_provisioned_concurrency_config(
        %Client{} = client,
        function_name,
        qualifier,
        options \\ []
      ) do
    url_path =
      "/2019-09-30/functions/#{AWS.Util.encode_uri(function_name)}/provisioned-concurrency"

    headers = []
    query_params = []

    query_params =
      if !is_nil(qualifier) do
        [{"Qualifier", qualifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the runtime management configuration for a function's version.

  If the runtime update mode is **Manual**, this includes the ARN of the runtime
  version and the runtime update mode. If the runtime update mode is **Auto** or
  **Function update**, this includes the runtime update mode and `null` is
  returned for the ARN. For more information, see [Runtime updates](https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html).
  """
  @spec get_runtime_management_config(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_runtime_management_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_runtime_management_config_errors()}
  def get_runtime_management_config(
        %Client{} = client,
        function_name,
        qualifier \\ nil,
        options \\ []
      ) do
    url_path =
      "/2021-07-20/functions/#{AWS.Util.encode_uri(function_name)}/runtime-management-config"

    headers = []
    query_params = []

    query_params =
      if !is_nil(qualifier) do
        [{"Qualifier", qualifier} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Invokes a Lambda function.

  You can invoke a function synchronously (and wait for the response), or
  asynchronously. By default, Lambda invokes your function synchronously (i.e.
  the`InvocationType` is `RequestResponse`). To invoke a function asynchronously,
  set `InvocationType` to `Event`. Lambda passes the `ClientContext` object to
  your function for synchronous invocations only.

  For synchronous invocations, the maximum payload size is 6 MB. For asynchronous
  invocations, the maximum payload size is 1 MB.

  For [synchronous invocation](https://docs.aws.amazon.com/lambda/latest/dg/invocation-sync.html),
  details about the function response, including errors, are included in the
  response body and headers. For either invocation type, you can find more
  information in the [execution log](https://docs.aws.amazon.com/lambda/latest/dg/monitoring-functions.html) and
  [trace](https://docs.aws.amazon.com/lambda/latest/dg/lambda-x-ray.html).  When an error occurs, your function may be invoked multiple times. Retry
  behavior varies by error type, client, event source, and invocation type. For
  example, if you invoke a function asynchronously and it returns an error, Lambda
  executes the function up to two more times. For more information, see [Error
  handling and automatic retries in
  Lambda](https://docs.aws.amazon.com/lambda/latest/dg/invocation-retries.html).

  For [asynchronous invocation](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html),
  Lambda adds events to a queue before sending them to your function. If your
  function does not have enough capacity to keep up with the queue, events may be
  lost. Occasionally, your function may receive the same event multiple times,
  even if no error occurs. To retain events that were not processed, configure
  your function with a [dead-letter queue](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-dlq).

  The status code in the API response doesn't reflect function errors. Error codes
  are reserved for errors that prevent your function from executing, such as
  permissions errors,
  [quota](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html) errors, or issues with your function's code and configuration. For example,
  Lambda returns `TooManyRequestsException` if running the function would cause
  you to exceed a concurrency limit at either the account level
  (`ConcurrentInvocationLimitExceeded`) or function level
  (`ReservedFunctionConcurrentInvocationLimitExceeded`).

  For functions with a long timeout, your client might disconnect during
  synchronous invocation while it waits for a response. Configure your HTTP
  client, SDK, firewall, proxy, or operating system to allow for long connections
  with timeout or keep-alive settings.

  This operation requires permission for the
  [lambda:InvokeFunction](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html)
  action. For details on how to set up permissions for cross-account invocations,
  see [Granting function access to other accounts](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html#permissions-resource-xaccountinvoke).
  """
  @spec invoke(map(), String.t() | atom(), invocation_request(), list()) ::
          {:ok, invocation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, invoke_errors()}
  def invoke(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/invocations"

    {headers, input} =
      [
        {"ClientContext", "X-Amz-Client-Context"},
        {"DurableExecutionName", "X-Amz-Durable-Execution-Name"},
        {"InvocationType", "X-Amz-Invocation-Type"},
        {"LogType", "X-Amz-Log-Type"},
        {"TenantId", "X-Amz-Tenant-Id"}
      ]
      |> Request.build_params(input)

    custom_headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"X-Amz-Durable-Execution-Arn", "DurableExecutionArn"},
          {"X-Amz-Executed-Version", "ExecutedVersion"},
          {"X-Amz-Function-Error", "FunctionError"},
          {"X-Amz-Log-Result", "LogResult"}
        ]
      )

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
  For asynchronous function invocation, use `Invoke`.

  Invokes a function asynchronously.

  The payload limit is 256KB. For larger payloads, for up to 1MB, use `Invoke`.

  If you do use the InvokeAsync action, note that it doesn't support the use of
  X-Ray active tracing. Trace ID is not propagated to the function, even if X-Ray
  active tracing is turned on.
  """
  @spec invoke_async(map(), String.t() | atom(), invoke_async_request(), list()) ::
          {:ok, invoke_async_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, invoke_async_errors()}
  def invoke_async(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2014-11-13/functions/#{AWS.Util.encode_uri(function_name)}/invoke-async"
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
      202
    )
  end

  @doc """
  Configure your Lambda functions to stream response payloads back to clients.

  For more information, see [Configuring a Lambda function to stream responses](https://docs.aws.amazon.com/lambda/latest/dg/configuration-response-streaming.html).

  This operation requires permission for the
  [lambda:InvokeFunction](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html) action. For details on how to set up permissions for cross-account invocations,
  see [Granting function access to other
  accounts](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html#permissions-resource-xaccountinvoke).
  """
  @spec invoke_with_response_stream(
          map(),
          String.t() | atom(),
          invoke_with_response_stream_request(),
          list()
        ) ::
          {:ok, invoke_with_response_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, invoke_with_response_stream_errors()}
  def invoke_with_response_stream(%Client{} = client, function_name, input, options \\ []) do
    url_path =
      "/2021-11-15/functions/#{AWS.Util.encode_uri(function_name)}/response-streaming-invocations"

    {headers, input} =
      [
        {"ClientContext", "X-Amz-Client-Context"},
        {"InvocationType", "X-Amz-Invocation-Type"},
        {"LogType", "X-Amz-Log-Type"},
        {"TenantId", "X-Amz-Tenant-Id"}
      ]
      |> Request.build_params(input)

    custom_headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"X-Amz-Executed-Version", "ExecutedVersion"},
          {"Content-Type", "ResponseStreamContentType"}
        ]
      )

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
  Returns a list of
  [aliases](https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html)
  for a Lambda function.
  """
  @spec list_aliases(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_aliases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_aliases_errors()}
  def list_aliases(
        %Client{} = client,
        function_name,
        function_version \\ nil,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/aliases"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(function_version) do
        [{"FunctionVersion", function_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of capacity providers in your account.
  """
  @spec list_capacity_providers(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_capacity_providers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_capacity_providers_errors()}
  def list_capacity_providers(
        %Client{} = client,
        marker \\ nil,
        max_items \\ nil,
        state \\ nil,
        options \\ []
      ) do
    url_path = "/2025-11-30/capacity-providers"
    headers = []
    query_params = []

    query_params =
      if !is_nil(state) do
        [{"State", state} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of [code signing configurations](https://docs.aws.amazon.com/lambda/latest/dg/configuring-codesigning.html).

  A request returns up to 10,000 configurations per call. You can use the
  `MaxItems` parameter to return fewer configurations per call.
  """
  @spec list_code_signing_configs(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_code_signing_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_code_signing_configs_errors()}
  def list_code_signing_configs(
        %Client{} = client,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2020-04-22/code-signing-configs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of [durable executions](https://docs.aws.amazon.com/lambda/latest/dg/durable-functions.html)
  for a specified Lambda function.

  You can filter the results by execution name, status, and start time range. This
  API supports pagination for large result sets.
  """
  @spec list_durable_executions_by_function(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_durable_executions_by_function_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_durable_executions_by_function_errors()}
  def list_durable_executions_by_function(
        %Client{} = client,
        function_name,
        durable_execution_name \\ nil,
        marker \\ nil,
        max_items \\ nil,
        qualifier \\ nil,
        reverse_order \\ nil,
        started_after \\ nil,
        started_before \\ nil,
        statuses \\ nil,
        options \\ []
      ) do
    url_path = "/2025-12-01/functions/#{AWS.Util.encode_uri(function_name)}/durable-executions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(statuses) do
        [{"Statuses", statuses} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(started_before) do
        [{"StartedBefore", started_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(started_after) do
        [{"StartedAfter", started_after} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(reverse_order) do
        [{"ReverseOrder", reverse_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(qualifier) do
        [{"Qualifier", qualifier} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(durable_execution_name) do
        [{"DurableExecutionName", durable_execution_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists event source mappings.

  Specify an `EventSourceArn` to show only event source mappings for a single
  event source.
  """
  @spec list_event_source_mappings(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_event_source_mappings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_event_source_mappings_errors()}
  def list_event_source_mappings(
        %Client{} = client,
        event_source_arn \\ nil,
        function_name \\ nil,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2015-03-31/event-source-mappings"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(function_name) do
        [{"FunctionName", function_name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(event_source_arn) do
        [{"EventSourceArn", event_source_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of configurations for asynchronous invocation for a function.

  To configure options for asynchronous invocation, use
  `PutFunctionEventInvokeConfig`.
  """
  @spec list_function_event_invoke_configs(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_function_event_invoke_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_function_event_invoke_configs_errors()}
  def list_function_event_invoke_configs(
        %Client{} = client,
        function_name,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path =
      "/2019-09-25/functions/#{AWS.Util.encode_uri(function_name)}/event-invoke-config/list"

    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of Lambda function URLs for the specified function.
  """
  @spec list_function_url_configs(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_function_url_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_function_url_configs_errors()}
  def list_function_url_configs(
        %Client{} = client,
        function_name,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2021-10-31/functions/#{AWS.Util.encode_uri(function_name)}/urls"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of function versions that are configured to use a specific
  capacity provider.
  """
  @spec list_function_versions_by_capacity_provider(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_function_versions_by_capacity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_function_versions_by_capacity_provider_errors()}
  def list_function_versions_by_capacity_provider(
        %Client{} = client,
        capacity_provider_name,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path =
      "/2025-11-30/capacity-providers/#{AWS.Util.encode_uri(capacity_provider_name)}/function-versions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of Lambda functions, with the version-specific configuration of
  each.

  Lambda returns up to 50 functions per call.

  Set `FunctionVersion` to `ALL` to include all published versions of each
  function in addition to the unpublished version.

  The `ListFunctions` operation returns a subset of the `FunctionConfiguration`
  fields. To get the additional fields (State, StateReasonCode, StateReason,
  LastUpdateStatus, LastUpdateStatusReason, LastUpdateStatusReasonCode,
  RuntimeVersionConfig) for a function or version, use `GetFunction`.
  """
  @spec list_functions(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_functions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_functions_errors()}
  def list_functions(
        %Client{} = client,
        function_version \\ nil,
        marker \\ nil,
        master_region \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2015-03-31/functions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(master_region) do
        [{"MasterRegion", master_region} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(function_version) do
        [{"FunctionVersion", function_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the functions that use the specified code signing configuration.

  You can use this method prior to deleting a code signing configuration, to
  verify that no functions are using it.
  """
  @spec list_functions_by_code_signing_config(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_functions_by_code_signing_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_functions_by_code_signing_config_errors()}
  def list_functions_by_code_signing_config(
        %Client{} = client,
        code_signing_config_arn,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path =
      "/2020-04-22/code-signing-configs/#{AWS.Util.encode_uri(code_signing_config_arn)}/functions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the versions of an [Lambda layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).

  Versions that have been deleted aren't listed. Specify a [runtime identifier](https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html)
  to list only versions that indicate that they're compatible with that runtime.
  Specify a compatible architecture to include only layer versions that are
  compatible with that architecture.
  """
  @spec list_layer_versions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_layer_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_layer_versions_errors()}
  def list_layer_versions(
        %Client{} = client,
        layer_name,
        compatible_architecture \\ nil,
        compatible_runtime \\ nil,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2018-10-31/layers/#{AWS.Util.encode_uri(layer_name)}/versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(compatible_runtime) do
        [{"CompatibleRuntime", compatible_runtime} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(compatible_architecture) do
        [{"CompatibleArchitecture", compatible_architecture} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists [Lambda layers](https://docs.aws.amazon.com/lambda/latest/dg/invocation-layers.html) and
  shows information about the latest version of each.

  Specify a [runtime identifier](https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html)
  to list only layers that indicate that they're compatible with that runtime.
  Specify a compatible architecture to include only layers that are compatible
  with that [instruction set architecture](https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html).
  """
  @spec list_layers(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_layers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_layers_errors()}
  def list_layers(
        %Client{} = client,
        compatible_architecture \\ nil,
        compatible_runtime \\ nil,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2018-10-31/layers"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(compatible_runtime) do
        [{"CompatibleRuntime", compatible_runtime} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(compatible_architecture) do
        [{"CompatibleArchitecture", compatible_architecture} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of provisioned concurrency configurations for a function.
  """
  @spec list_provisioned_concurrency_configs(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_provisioned_concurrency_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_provisioned_concurrency_configs_errors()}
  def list_provisioned_concurrency_configs(
        %Client{} = client,
        function_name,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path =
      "/2019-09-30/functions/#{AWS.Util.encode_uri(function_name)}/provisioned-concurrency?List=ALL"

    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a function, event source mapping, or code signing configuration's
  [tags](https://docs.aws.amazon.com/lambda/latest/dg/tagging.html).

  You can also view function tags with `GetFunction`.
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
  Returns a list of
  [versions](https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html),
  with the version-specific configuration of each.

  Lambda returns up to 50 versions per call.
  """
  @spec list_versions_by_function(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_versions_by_function_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_versions_by_function_errors()}
  def list_versions_by_function(
        %Client{} = client,
        function_name,
        marker \\ nil,
        max_items \\ nil,
        options \\ []
      ) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_items) do
        [{"MaxItems", max_items} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(marker) do
        [{"Marker", marker} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Creates an [Lambda layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html)
  from a ZIP archive.

  Each time you call `PublishLayerVersion` with the same layer name, a new version
  is created.

  Add layers to your function with `CreateFunction` or
  `UpdateFunctionConfiguration`.
  """
  @spec publish_layer_version(map(), String.t() | atom(), publish_layer_version_request(), list()) ::
          {:ok, publish_layer_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, publish_layer_version_errors()}
  def publish_layer_version(%Client{} = client, layer_name, input, options \\ []) do
    url_path = "/2018-10-31/layers/#{AWS.Util.encode_uri(layer_name)}/versions"
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
  Creates a
  [version](https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html)
  from the current code and configuration of a function.

  Use versions to create a snapshot of your function code and configuration that
  doesn't change.

  Lambda doesn't publish a version if the function's configuration and code
  haven't changed since the last version. Use `UpdateFunctionCode` or
  `UpdateFunctionConfiguration` to update the function before publishing a
  version.

  Clients can invoke versions directly or with an alias. To create an alias, use
  `CreateAlias`.
  """
  @spec publish_version(map(), String.t() | atom(), publish_version_request(), list()) ::
          {:ok, function_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, publish_version_errors()}
  def publish_version(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/versions"
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
  Update the code signing configuration for the function.

  Changes to the code signing configuration take effect the next time a user tries
  to deploy a code package to the function.
  """
  @spec put_function_code_signing_config(
          map(),
          String.t() | atom(),
          put_function_code_signing_config_request(),
          list()
        ) ::
          {:ok, put_function_code_signing_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_function_code_signing_config_errors()}
  def put_function_code_signing_config(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2020-06-30/functions/#{AWS.Util.encode_uri(function_name)}/code-signing-config"
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
  Sets the maximum number of simultaneous executions for a function, and reserves
  capacity for that concurrency level.

  Concurrency settings apply to the function as a whole, including all published
  versions and the unpublished version. Reserving concurrency both ensures that
  your function has capacity to process the specified number of events
  simultaneously, and prevents it from scaling beyond that level. Use
  `GetFunction` to see the current setting for a function.

  Use `GetAccountSettings` to see your Regional concurrency limit. You can reserve
  concurrency for as many functions as you like, as long as you leave at least 100
  simultaneous executions unreserved for functions that aren't configured with a
  per-function limit. For more information, see [Lambda function scaling](https://docs.aws.amazon.com/lambda/latest/dg/invocation-scaling.html).
  """
  @spec put_function_concurrency(
          map(),
          String.t() | atom(),
          put_function_concurrency_request(),
          list()
        ) ::
          {:ok, concurrency(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_function_concurrency_errors()}
  def put_function_concurrency(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2017-10-31/functions/#{AWS.Util.encode_uri(function_name)}/concurrency"
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
  Configures options for [asynchronous invocation](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html)
  on a function, version, or alias.

  If a configuration already exists for a function, version, or alias, this
  operation overwrites it. If you exclude any settings, they are removed. To set
  one option without affecting existing settings for other options, use
  `UpdateFunctionEventInvokeConfig`.

  By default, Lambda retries an asynchronous invocation twice if the function
  returns an error. It retains events in a queue for up to six hours. When an
  event fails all processing attempts or stays in the asynchronous invocation
  queue for too long, Lambda discards it. To retain discarded events, configure a
  dead-letter queue with `UpdateFunctionConfiguration`.

  To send an invocation record to a queue, topic, S3 bucket, function, or event
  bus, specify a
  [destination](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-async-destinations).
  You can configure separate destinations for successful invocations (on-success)
  and events that fail all processing attempts (on-failure). You can configure
  destinations in addition to or instead of a dead-letter queue.

  S3 buckets are supported only for on-failure destinations. To retain records of
  successful invocations, use another destination type.
  """
  @spec put_function_event_invoke_config(
          map(),
          String.t() | atom(),
          put_function_event_invoke_config_request(),
          list()
        ) ::
          {:ok, function_event_invoke_config(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_function_event_invoke_config_errors()}
  def put_function_event_invoke_config(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2019-09-25/functions/#{AWS.Util.encode_uri(function_name)}/event-invoke-config"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
      ]
      |> Request.build_params(input)

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
  Sets your function's [recursive loop detection](https://docs.aws.amazon.com/lambda/latest/dg/invocation-recursion.html)
  configuration.

  When you configure a Lambda function to output to the same service or resource
  that invokes the function, it's possible to create an infinite recursive loop.
  For example, a Lambda function might write a message to an Amazon Simple Queue
  Service (Amazon SQS) queue, which then invokes the same function. This
  invocation causes the function to write another message to the queue, which in
  turn invokes the function again.

  Lambda can detect certain types of recursive loops shortly after they occur.
  When Lambda detects a recursive loop and your function's recursive loop
  detection configuration is set to `Terminate`, it stops your function being
  invoked and notifies you.
  """
  @spec put_function_recursion_config(
          map(),
          String.t() | atom(),
          put_function_recursion_config_request(),
          list()
        ) ::
          {:ok, put_function_recursion_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_function_recursion_config_errors()}
  def put_function_recursion_config(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2024-08-31/functions/#{AWS.Util.encode_uri(function_name)}/recursion-config"
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
  Sets the scaling configuration for a Lambda Managed Instances function.

  The scaling configuration defines the minimum and maximum number of execution
  environments that can be provisioned for the function, allowing you to control
  scaling behavior and resource allocation.
  """
  @spec put_function_scaling_config(
          map(),
          String.t() | atom(),
          put_function_scaling_config_request(),
          list()
        ) ::
          {:ok, put_function_scaling_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_function_scaling_config_errors()}
  def put_function_scaling_config(%Client{} = client, function_name, input, options \\ []) do
    url_path =
      "/2025-11-30/functions/#{AWS.Util.encode_uri(function_name)}/function-scaling-config"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end

  @doc """
  Adds a provisioned concurrency configuration to a function's alias or version.
  """
  @spec put_provisioned_concurrency_config(
          map(),
          String.t() | atom(),
          put_provisioned_concurrency_config_request(),
          list()
        ) ::
          {:ok, put_provisioned_concurrency_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_provisioned_concurrency_config_errors()}
  def put_provisioned_concurrency_config(%Client{} = client, function_name, input, options \\ []) do
    url_path =
      "/2019-09-30/functions/#{AWS.Util.encode_uri(function_name)}/provisioned-concurrency"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end

  @doc """
  Sets the runtime management configuration for a function's version.

  For more information, see [Runtime updates](https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html).
  """
  @spec put_runtime_management_config(
          map(),
          String.t() | atom(),
          put_runtime_management_config_request(),
          list()
        ) ::
          {:ok, put_runtime_management_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_runtime_management_config_errors()}
  def put_runtime_management_config(%Client{} = client, function_name, input, options \\ []) do
    url_path =
      "/2021-07-20/functions/#{AWS.Util.encode_uri(function_name)}/runtime-management-config"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
      ]
      |> Request.build_params(input)

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
  Removes a statement from the permissions policy for a version of an [Lambda layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).

  For more information, see `AddLayerVersionPermission`.
  """
  @spec remove_layer_version_permission(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          remove_layer_version_permission_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_layer_version_permission_errors()}
  def remove_layer_version_permission(
        %Client{} = client,
        layer_name,
        statement_id,
        version_number,
        input,
        options \\ []
      ) do
    url_path =
      "/2018-10-31/layers/#{AWS.Util.encode_uri(layer_name)}/versions/#{AWS.Util.encode_uri(version_number)}/policy/#{AWS.Util.encode_uri(statement_id)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"RevisionId", "RevisionId"}
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
  Revokes function-use permission from an Amazon Web Services service or another
  Amazon Web Services account.

  You can get the ID of the statement from the output of `GetPolicy`.
  """
  @spec remove_permission(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          remove_permission_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_permission_errors()}
  def remove_permission(%Client{} = client, function_name, statement_id, input, options \\ []) do
    url_path =
      "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/policy/#{AWS.Util.encode_uri(statement_id)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"},
        {"RevisionId", "RevisionId"}
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
  Sends a failure response for a callback operation in a durable execution.

  Use this API when an external system cannot complete a callback operation
  successfully.
  """
  @spec send_durable_execution_callback_failure(
          map(),
          String.t() | atom(),
          send_durable_execution_callback_failure_request(),
          list()
        ) ::
          {:ok, send_durable_execution_callback_failure_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_durable_execution_callback_failure_errors()}
  def send_durable_execution_callback_failure(
        %Client{} = client,
        callback_id,
        input,
        options \\ []
      ) do
    url_path = "/2025-12-01/durable-execution-callbacks/#{AWS.Util.encode_uri(callback_id)}/fail"
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
  Sends a heartbeat signal for a long-running callback operation to prevent
  timeout.

  Use this API to extend the callback timeout period while the external operation
  is still in progress.
  """
  @spec send_durable_execution_callback_heartbeat(
          map(),
          String.t() | atom(),
          send_durable_execution_callback_heartbeat_request(),
          list()
        ) ::
          {:ok, send_durable_execution_callback_heartbeat_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_durable_execution_callback_heartbeat_errors()}
  def send_durable_execution_callback_heartbeat(
        %Client{} = client,
        callback_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2025-12-01/durable-execution-callbacks/#{AWS.Util.encode_uri(callback_id)}/heartbeat"

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
  Sends a successful completion response for a callback operation in a durable
  execution.

  Use this API when an external system has successfully completed a callback
  operation.
  """
  @spec send_durable_execution_callback_success(
          map(),
          String.t() | atom(),
          send_durable_execution_callback_success_request(),
          list()
        ) ::
          {:ok, send_durable_execution_callback_success_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_durable_execution_callback_success_errors()}
  def send_durable_execution_callback_success(
        %Client{} = client,
        callback_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2025-12-01/durable-execution-callbacks/#{AWS.Util.encode_uri(callback_id)}/succeed"

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
  Stops a running [durable execution](https://docs.aws.amazon.com/lambda/latest/dg/durable-functions.html).

  The execution transitions to STOPPED status and cannot be resumed. Any
  in-progress operations are terminated.
  """
  @spec stop_durable_execution(
          map(),
          String.t() | atom(),
          stop_durable_execution_request(),
          list()
        ) ::
          {:ok, stop_durable_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_durable_execution_errors()}
  def stop_durable_execution(%Client{} = client, durable_execution_arn, input, options \\ []) do
    url_path = "/2025-12-01/durable-executions/#{AWS.Util.encode_uri(durable_execution_arn)}/stop"
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
  Adds [tags](https://docs.aws.amazon.com/lambda/latest/dg/tagging.html) to a
  function, event source mapping, or code signing configuration.
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
  Removes [tags](https://docs.aws.amazon.com/lambda/latest/dg/tagging.html) from a
  function, event source mapping, or code signing configuration.
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
  Updates the configuration of a Lambda function
  [alias](https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html).
  """
  @spec update_alias(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_alias_request(),
          list()
        ) ::
          {:ok, alias_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_alias_errors()}
  def update_alias(%Client{} = client, function_name, name, input, options \\ []) do
    url_path =
      "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/aliases/#{AWS.Util.encode_uri(name)}"

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
  Updates the configuration of an existing capacity provider.
  """
  @spec update_capacity_provider(
          map(),
          String.t() | atom(),
          update_capacity_provider_request(),
          list()
        ) ::
          {:ok, update_capacity_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_capacity_provider_errors()}
  def update_capacity_provider(%Client{} = client, capacity_provider_name, input, options \\ []) do
    url_path = "/2025-11-30/capacity-providers/#{AWS.Util.encode_uri(capacity_provider_name)}"
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
      202
    )
  end

  @doc """
  Update the code signing configuration.

  Changes to the code signing configuration take effect the next time a user tries
  to deploy a code package to the function.
  """
  @spec update_code_signing_config(
          map(),
          String.t() | atom(),
          update_code_signing_config_request(),
          list()
        ) ::
          {:ok, update_code_signing_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_code_signing_config_errors()}
  def update_code_signing_config(
        %Client{} = client,
        code_signing_config_arn,
        input,
        options \\ []
      ) do
    url_path = "/2020-04-22/code-signing-configs/#{AWS.Util.encode_uri(code_signing_config_arn)}"
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
  Updates an event source mapping.

  You can change the function that Lambda invokes, or pause invocation and resume
  later from the same location.

  For details about how to configure different event sources, see the following
  topics.

    * [ Amazon DynamoDB Streams](https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-dynamodb-eventsourcemapping)

    * [ Amazon Kinesis](https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-eventsourcemapping)

    * [ Amazon SQS](https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-eventsource)

    * [ Amazon MQ and RabbitMQ](https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-eventsourcemapping)

    * [ Amazon MSK](https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html)

    * [ Apache Kafka](https://docs.aws.amazon.com/lambda/latest/dg/kafka-smaa.html)

    * [ Amazon DocumentDB](https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html)

  The following error handling options are available for stream sources (DynamoDB,
  Kinesis, Amazon MSK, and self-managed Apache Kafka):

    * `BisectBatchOnFunctionError` – If the function returns an error,
  split the batch in two and retry.

    * `MaximumRecordAgeInSeconds` – Discard records older than the
  specified age. The default value is infinite (-1). When set to infinite (-1),
  failed records are retried until the record expires

    * `MaximumRetryAttempts` – Discard records after the specified
  number of retries. The default value is infinite (-1). When set to infinite
  (-1), failed records are retried until the record expires.

    * `OnFailure` – Send discarded records to an Amazon SQS queue,
  Amazon SNS topic, Kafka topic, or Amazon S3 bucket. For more information, see
  [Adding a destination](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async-retain-records.html#invocation-async-destinations).

  The following option is available only for DynamoDB and Kinesis event sources:

    * `ParallelizationFactor` – Process multiple batches from each shard
  concurrently.

  For information about which configuration parameters apply to each event source,
  see the following topics.

    * [ Amazon DynamoDB Streams](https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-ddb-params)

    * [ Amazon Kinesis](https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-params)

    * [ Amazon SQS](https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#services-sqs-params)

    * [ Amazon MQ and RabbitMQ](https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-params)

    * [ Amazon MSK](https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#services-msk-parms)

    * [ Apache Kafka](https://docs.aws.amazon.com/lambda/latest/dg/with-kafka.html#services-kafka-parms)

    * [ Amazon DocumentDB](https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html#docdb-configuration)
  """
  @spec update_event_source_mapping(
          map(),
          String.t() | atom(),
          update_event_source_mapping_request(),
          list()
        ) ::
          {:ok, event_source_mapping_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_event_source_mapping_errors()}
  def update_event_source_mapping(%Client{} = client, uuid, input, options \\ []) do
    url_path = "/2015-03-31/event-source-mappings/#{AWS.Util.encode_uri(uuid)}"
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
      202
    )
  end

  @doc """
  Updates a Lambda function's code.

  If code signing is enabled for the function, the code package must be signed by
  a trusted publisher. For more information, see [Configuring code signing for Lambda](https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html).

  If the function's package type is `Image`, then you must specify the code
  package in `ImageUri` as the URI of a [container image](https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html) in the
  Amazon ECR registry.

  If the function's package type is `Zip`, then you must specify the deployment
  package as a [.zip file archive](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html#gettingstarted-package-zip).
  Enter the Amazon S3 bucket and key of the code .zip file location. You can also
  provide the function code inline using the `ZipFile` field.

  The code in the deployment package must be compatible with the target
  instruction set architecture of the function (`x86-64` or `arm64`).

  The function's code is locked when you publish a version. You can't modify the
  code of a published version, only the unpublished version.

  For a function defined as a container image, Lambda resolves the image tag to an
  image digest. In Amazon ECR, if you update the image tag to a new image, Lambda
  does not automatically update the function.
  """
  @spec update_function_code(map(), String.t() | atom(), update_function_code_request(), list()) ::
          {:ok, function_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_function_code_errors()}
  def update_function_code(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/code"
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
  Modify the version-specific settings of a Lambda function.

  When you update a function, Lambda provisions an instance of the function and
  its supporting resources. If your function connects to a VPC, this process can
  take a minute. During this time, you can't modify the function, but you can
  still invoke it. The `LastUpdateStatus`, `LastUpdateStatusReason`, and
  `LastUpdateStatusReasonCode` fields in the response from
  `GetFunctionConfiguration` indicate when the update is complete and the function
  is processing events with the new configuration. For more information, see
  [Lambda function states](https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html).

  These settings can vary between versions of a function and are locked when you
  publish a version. You can't modify the configuration of a published version,
  only the unpublished version.

  To configure function concurrency, use `PutFunctionConcurrency`. To grant invoke
  permissions to an Amazon Web Services account or Amazon Web Services service,
  use `AddPermission`.
  """
  @spec update_function_configuration(
          map(),
          String.t() | atom(),
          update_function_configuration_request(),
          list()
        ) ::
          {:ok, function_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_function_configuration_errors()}
  def update_function_configuration(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/configuration"
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
  Updates the configuration for asynchronous invocation for a function, version,
  or alias.

  To configure options for asynchronous invocation, use
  `PutFunctionEventInvokeConfig`.
  """
  @spec update_function_event_invoke_config(
          map(),
          String.t() | atom(),
          update_function_event_invoke_config_request(),
          list()
        ) ::
          {:ok, function_event_invoke_config(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_function_event_invoke_config_errors()}
  def update_function_event_invoke_config(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2019-09-25/functions/#{AWS.Util.encode_uri(function_name)}/event-invoke-config"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
      ]
      |> Request.build_params(input)

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
  Updates the configuration for a Lambda function URL.
  """
  @spec update_function_url_config(
          map(),
          String.t() | atom(),
          update_function_url_config_request(),
          list()
        ) ::
          {:ok, update_function_url_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_function_url_config_errors()}
  def update_function_url_config(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2021-10-31/functions/#{AWS.Util.encode_uri(function_name)}/url"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
      ]
      |> Request.build_params(input)

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
