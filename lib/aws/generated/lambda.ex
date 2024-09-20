# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Lambda do
  @moduledoc """
  Lambda

  ## Overview

  Lambda is a compute service that lets you run code without provisioning or
  managing servers.

  Lambda runs your code on a high-availability compute infrastructure and performs
  all of the
  administration of the compute resources, including server and operating system
  maintenance, capacity provisioning
  and automatic scaling, code monitoring and logging. With Lambda, you can run
  code for virtually any
  type of application or backend service. For more information about the Lambda
  service, see [What is Lambda](https://docs.aws.amazon.com/lambda/latest/dg/welcome.html) in the
  **Lambda Developer Guide**.

  The *Lambda API Reference* provides information about
  each of the API methods, including details about the parameters in each API
  request and
  response.

  You can use Software Development Kits (SDKs), Integrated Development Environment
  (IDE) Toolkits, and command
  line tools to access the API. For installation instructions, see [Tools for Amazon Web Services](http://aws.amazon.com/tools/).

  For a list of Region-specific endpoints that Lambda supports,
  see [Lambda endpoints and quotas
  ](https://docs.aws.amazon.com/general/latest/gr/lambda-service.html/) in the
  *Amazon Web Services General Reference.*.

  When making the API calls, you will need to
  authenticate your request by providing a signature. Lambda supports signature
  version 4. For more information,
  see [Signature Version 4 signing process](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html)
  in the
  *Amazon Web Services General Reference.*.

  ## CA certificates

  Because Amazon Web Services SDKs use the CA certificates from your computer,
  changes to the certificates on the Amazon Web Services servers
  can cause connection failures when you attempt to use an SDK. You can prevent
  these failures by keeping your
  computer's CA certificates and operating system up-to-date. If you encounter
  this issue in a corporate
  environment and do not manage your own computer, you might need to ask an
  administrator to assist with the
  update process. The following list shows minimum operating system and Java
  versions:

    *
  Microsoft Windows versions that have updates from January 2005 or later
  installed contain at least one
  of the required CAs in their trust list.

    *
  Mac OS X 10.4 with Java for Mac OS X 10.4 Release 5 (February 2007), Mac OS X
  10.5 (October 2007), and
  later versions contain at least one of the required CAs in their trust list.

    *
  Red Hat Enterprise Linux 5 (March 2007), 6, and 7 and CentOS 5, 6, and 7 all
  contain at least one of the
  required CAs in their default trusted CA list.

    *
  Java 1.4.2_12 (May 2006), 5 Update 2 (March 2005), and all later versions,
  including Java 6 (December
  2006), 7, and 8, contain at least one of the required CAs in their default
  trusted CA list.

  When accessing the Lambda management console or Lambda API endpoints, whether
  through browsers or
  programmatically, you will need to ensure your client machines support any of
  the following CAs:

    *
  Amazon Root CA 1

    *
  Starfield Services Root Certificate Authority - G2

    *
  Starfield Class 2 Certification Authority

  Root certificates from the first two authorities are available from [Amazon trust services](https://www.amazontrust.com/repository/), but keeping your
  computer
  up-to-date is the more straightforward solution. To learn more about
  ACM-provided certificates, see [Amazon Web Services Certificate Manager FAQs.](http://aws.amazon.com/certificate-manager/faqs/#certificates)
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_functions_by_code_signing_config_response() :: %{
        "FunctionArns" => list(String.t()()),
        "NextMarker" => String.t()
      }

  """
  @type list_functions_by_code_signing_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      account_usage() :: %{
        "FunctionCount" => float(),
        "TotalCodeSize" => float()
      }

  """
  @type account_usage() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      function_event_invoke_config() :: %{
        optional("DestinationConfig") => destination_config(),
        optional("FunctionArn") => String.t(),
        optional("LastModified") => non_neg_integer(),
        optional("MaximumEventAgeInSeconds") => integer(),
        optional("MaximumRetryAttempts") => integer()
      }

  """
  @type function_event_invoke_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_aliases_response() :: %{
        "Aliases" => list(alias_configuration()()),
        "NextMarker" => String.t()
      }

  """
  @type list_aliases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unsupported_media_type_exception() :: %{
        "Type" => String.t(),
        "message" => String.t()
      }

  """
  @type unsupported_media_type_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kms_disabled_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type kms_disabled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_aliases_request() :: %{
        optional("FunctionVersion") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_aliases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      function_code() :: %{
        "ImageUri" => String.t(),
        "S3Bucket" => String.t(),
        "S3Key" => String.t(),
        "S3ObjectVersion" => String.t(),
        "ZipFile" => binary()
      }

  """
  @type function_code() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_security_group_id_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type invalid_security_group_id_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_event_source_mapping_request() :: %{
        optional("BatchSize") => integer(),
        optional("BisectBatchOnFunctionError") => boolean(),
        optional("DestinationConfig") => destination_config(),
        optional("DocumentDBEventSourceConfig") => document_db_event_source_config(),
        optional("Enabled") => boolean(),
        optional("FilterCriteria") => filter_criteria(),
        optional("FunctionName") => String.t(),
        optional("FunctionResponseTypes") => list(list(any())()),
        optional("KMSKeyArn") => String.t(),
        optional("MaximumBatchingWindowInSeconds") => integer(),
        optional("MaximumRecordAgeInSeconds") => integer(),
        optional("MaximumRetryAttempts") => integer(),
        optional("ParallelizationFactor") => integer(),
        optional("ScalingConfig") => scaling_config(),
        optional("SourceAccessConfigurations") => list(source_access_configuration()()),
        optional("TumblingWindowInSeconds") => integer()
      }

  """
  @type update_event_source_mapping_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      runtime_version_config() :: %{
        "Error" => runtime_version_error(),
        "RuntimeVersionArn" => String.t()
      }

  """
  @type runtime_version_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      snap_start() :: %{
        "ApplyOn" => list(any())
      }

  """
  @type snap_start() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_code_signing_config_request() :: %{}

  """
  @type get_code_signing_config_request() :: %{}

  @typedoc """

  ## Example:

      remove_layer_version_permission_request() :: %{
        optional("RevisionId") => String.t()
      }

  """
  @type remove_layer_version_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_public_access_block_config_response() :: %{
        "PublicAccessBlockConfig" => public_access_block_config()
      }

  """
  @type get_public_access_block_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_function_code_signing_config_request() :: %{}

  """
  @type delete_function_code_signing_config_request() :: %{}

  @typedoc """

  ## Example:

      environment_response() :: %{
        "Error" => environment_error(),
        "Variables" => map()
      }

  """
  @type environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      provisioned_concurrency_config_list_item() :: %{
        "AllocatedProvisionedConcurrentExecutions" => integer(),
        "AvailableProvisionedConcurrentExecutions" => integer(),
        "FunctionArn" => String.t(),
        "LastModified" => String.t(),
        "RequestedProvisionedConcurrentExecutions" => integer(),
        "Status" => list(any()),
        "StatusReason" => String.t()
      }

  """
  @type provisioned_concurrency_config_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_alias_request() :: %{
        optional("Description") => String.t(),
        optional("FunctionVersion") => String.t(),
        optional("RevisionId") => String.t(),
        optional("RoutingConfig") => alias_routing_configuration()
      }

  """
  @type update_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_functions_response() :: %{
        "Functions" => list(function_configuration()()),
        "NextMarker" => String.t()
      }

  """
  @type list_functions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_function_concurrency_request() :: %{
        required("ReservedConcurrentExecutions") => integer()
      }

  """
  @type put_function_concurrency_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      policy_length_exceeded_exception() :: %{
        "Type" => String.t(),
        "message" => String.t()
      }

  """
  @type policy_length_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_public_access_block_config_request() :: %{}

  """
  @type get_public_access_block_config_request() :: %{}

  @typedoc """

  ## Example:

      list_provisioned_concurrency_configs_response() :: %{
        "NextMarker" => String.t(),
        "ProvisionedConcurrencyConfigs" => list(provisioned_concurrency_config_list_item()())
      }

  """
  @type list_provisioned_concurrency_configs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_code_signing_configs_response() :: %{
        "CodeSigningConfigs" => list(code_signing_config()()),
        "NextMarker" => String.t()
      }

  """
  @type list_code_signing_configs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      amazon_managed_kafka_event_source_config() :: %{
        "ConsumerGroupId" => String.t()
      }

  """
  @type amazon_managed_kafka_event_source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoke_with_response_stream_response() :: %{
        "EventStream" => list(),
        "ExecutedVersion" => String.t(),
        "ResponseStreamContentType" => String.t(),
        "StatusCode" => integer()
      }

  """
  @type invoke_with_response_stream_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_criteria() :: %{
        "Filters" => list(filter()())
      }

  """
  @type filter_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      function_code_location() :: %{
        "ImageUri" => String.t(),
        "Location" => String.t(),
        "RepositoryType" => String.t(),
        "ResolvedImageUri" => String.t()
      }

  """
  @type function_code_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_account_settings_request() :: %{}

  """
  @type get_account_settings_request() :: %{}

  @typedoc """

  ## Example:

      create_alias_request() :: %{
        optional("Description") => String.t(),
        optional("RoutingConfig") => alias_routing_configuration(),
        required("FunctionVersion") => String.t(),
        required("Name") => String.t()
      }

  """
  @type create_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_public_access_block_config_request() :: %{
        required("PublicAccessBlockConfig") => public_access_block_config()
      }

  """
  @type put_public_access_block_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_in_use_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_layer_version_policy_response() :: %{
        "Policy" => String.t(),
        "RevisionId" => String.t()
      }

  """
  @type get_layer_version_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_account_settings_response() :: %{
        "AccountLimit" => account_limit(),
        "AccountUsage" => account_usage()
      }

  """
  @type get_account_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_policy_request() :: %{
        optional("Qualifier") => String.t()
      }

  """
  @type get_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_layer_version_response() :: %{
        optional("CompatibleArchitectures") => list(list(any())()),
        optional("CompatibleRuntimes") => list(list(any())()),
        optional("Content") => layer_version_content_output(),
        optional("CreatedDate") => String.t(),
        optional("Description") => String.t(),
        optional("LayerArn") => String.t(),
        optional("LayerVersionArn") => String.t(),
        optional("LicenseInfo") => String.t(),
        optional("Version") => float()
      }

  """
  @type get_layer_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_function_recursion_config_response() :: %{
        "RecursiveLoop" => list(any())
      }

  """
  @type put_function_recursion_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_function_event_invoke_config_request() :: %{
        optional("DestinationConfig") => destination_config(),
        optional("MaximumEventAgeInSeconds") => integer(),
        optional("MaximumRetryAttempts") => integer(),
        optional("Qualifier") => String.t()
      }

  """
  @type put_function_event_invoke_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoke_async_request() :: %{
        required("InvokeArgs") => binary()
      }

  """
  @type invoke_async_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_layers_response() :: %{
        "Layers" => list(layers_list_item()()),
        "NextMarker" => String.t()
      }

  """
  @type list_layers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      source_access_configuration() :: %{
        "Type" => list(any()),
        "URI" => String.t()
      }

  """
  @type source_access_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_layer_version_policy_request() :: %{}

  """
  @type get_layer_version_policy_request() :: %{}

  @typedoc """

  ## Example:

      list_code_signing_configs_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_code_signing_configs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      layer_version_content_output() :: %{
        "CodeSha256" => String.t(),
        "CodeSize" => float(),
        "Location" => String.t(),
        "SigningJobArn" => String.t(),
        "SigningProfileVersionArn" => String.t()
      }

  """
  @type layer_version_content_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invocation_response() :: %{
        "ExecutedVersion" => String.t(),
        "FunctionError" => String.t(),
        "LogResult" => String.t(),
        "Payload" => binary(),
        "StatusCode" => integer()
      }

  """
  @type invocation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_function_url_config_request() :: %{
        optional("Qualifier") => String.t()
      }

  """
  @type delete_function_url_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_resource_policy_response() :: %{
        "Policy" => String.t(),
        "RevisionId" => String.t()
      }

  """
  @type get_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_function_recursion_config_request() :: %{}

  """
  @type get_function_recursion_config_request() :: %{}

  @typedoc """

  ## Example:

      ec2_access_denied_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type ec2_access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_function_url_config_request() :: %{
        optional("AuthType") => list(any()),
        optional("Cors") => cors(),
        optional("InvokeMode") => list(any()),
        optional("Qualifier") => String.t()
      }

  """
  @type update_function_url_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      self_managed_kafka_event_source_config() :: %{
        "ConsumerGroupId" => String.t()
      }

  """
  @type self_managed_kafka_event_source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      snap_start_not_ready_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type snap_start_not_ready_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_function_configuration_request() :: %{
        optional("Qualifier") => String.t()
      }

  """
  @type get_function_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_function_response() :: %{
        "Code" => function_code_location(),
        "Concurrency" => concurrency(),
        "Configuration" => function_configuration(),
        "Tags" => map()
      }

  """
  @type get_function_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logging_config() :: %{
        "ApplicationLogLevel" => list(any()),
        "LogFormat" => list(any()),
        "LogGroup" => String.t(),
        "SystemLogLevel" => list(any())
      }

  """
  @type logging_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_function_concurrency_request() :: %{}

  """
  @type delete_function_concurrency_request() :: %{}

  @typedoc """

  ## Example:

      image_config() :: %{
        "Command" => list(String.t()()),
        "EntryPoint" => list(String.t()()),
        "WorkingDirectory" => String.t()
      }

  """
  @type image_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_function_url_config_response() :: %{
        "AuthType" => list(any()),
        "Cors" => cors(),
        "CreationTime" => String.t(),
        "FunctionArn" => String.t(),
        "FunctionUrl" => String.t(),
        "InvokeMode" => list(any()),
        "LastModifiedTime" => String.t()
      }

  """
  @type update_function_url_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "Reason" => list(any()),
        "Type" => String.t(),
        "message" => String.t(),
        "retryAfterSeconds" => String.t()
      }

  """
  @type too_many_requests_exception() :: %{String.t() => any()}

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
  @type put_function_recursion_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      destination_config() :: %{
        "OnFailure" => on_failure(),
        "OnSuccess" => on_success()
      }

  """
  @type destination_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      snap_start_timeout_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type snap_start_timeout_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_provisioned_concurrency_config_request() :: %{
        required("ProvisionedConcurrentExecutions") => integer(),
        required("Qualifier") => String.t()
      }

  """
  @type put_provisioned_concurrency_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_layer_version_request() :: %{}

  """
  @type delete_layer_version_request() :: %{}

  @typedoc """

  ## Example:

      create_code_signing_config_response() :: %{
        "CodeSigningConfig" => code_signing_config()
      }

  """
  @type create_code_signing_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoke_response_stream_update() :: %{
        "Payload" => binary()
      }

  """
  @type invoke_response_stream_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_function_event_invoke_configs_response() :: %{
        "FunctionEventInvokeConfigs" => list(function_event_invoke_config()()),
        "NextMarker" => String.t()
      }

  """
  @type list_function_event_invoke_configs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_function_concurrency_response() :: %{
        "ReservedConcurrentExecutions" => integer()
      }

  """
  @type get_function_concurrency_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_event_source_mapping_request() :: %{}

  """
  @type delete_event_source_mapping_request() :: %{}

  @typedoc """

  ## Example:

      recursive_invocation_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type recursive_invocation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_runtime_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type invalid_runtime_exception() :: %{String.t() => any()}

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

      on_failure() :: %{
        "Destination" => String.t()
      }

  """
  @type on_failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_event_source_mappings_response() :: %{
        "EventSourceMappings" => list(event_source_mapping_configuration()()),
        "NextMarker" => String.t()
      }

  """
  @type list_event_source_mappings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_runtime_management_config_request() :: %{
        optional("Qualifier") => String.t()
      }

  """
  @type get_runtime_management_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_request_content_exception() :: %{
        "Type" => String.t(),
        "message" => String.t()
      }

  """
  @type invalid_request_content_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_runtime_management_config_request() :: %{
        optional("Qualifier") => String.t(),
        optional("RuntimeVersionArn") => String.t(),
        required("UpdateRuntimeOn") => list(any())
      }

  """
  @type put_runtime_management_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_function_request() :: %{
        optional("Qualifier") => String.t()
      }

  """
  @type get_function_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      publish_layer_version_response() :: %{
        "CompatibleArchitectures" => list(list(any())()),
        "CompatibleRuntimes" => list(list(any())()),
        "Content" => layer_version_content_output(),
        "CreatedDate" => String.t(),
        "Description" => String.t(),
        "LayerArn" => String.t(),
        "LayerVersionArn" => String.t(),
        "LicenseInfo" => String.t(),
        "Version" => float()
      }

  """
  @type publish_layer_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      document_db_event_source_config() :: %{
        "CollectionName" => String.t(),
        "DatabaseName" => String.t(),
        "FullDocument" => list(any())
      }

  """
  @type document_db_event_source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_code_signing_config_request() :: %{}

  """
  @type delete_code_signing_config_request() :: %{}

  @typedoc """

  ## Example:

      put_public_access_block_config_response() :: %{
        "PublicAccessBlockConfig" => public_access_block_config()
      }

  """
  @type put_public_access_block_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_function_url_config_response() :: %{
        "AuthType" => list(any()),
        "Cors" => cors(),
        "CreationTime" => String.t(),
        "FunctionArn" => String.t(),
        "FunctionUrl" => String.t(),
        "InvokeMode" => list(any())
      }

  """
  @type create_function_url_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      code_signing_config_not_found_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type code_signing_config_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment() :: %{
        "Variables" => map()
      }

  """
  @type environment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_function_request() :: %{
        optional("Qualifier") => String.t()
      }

  """
  @type delete_function_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      publish_version_request() :: %{
        optional("CodeSha256") => String.t(),
        optional("Description") => String.t(),
        optional("RevisionId") => String.t()
      }

  """
  @type publish_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_function_code_signing_config_response() :: %{
        "CodeSigningConfigArn" => String.t(),
        "FunctionName" => String.t()
      }

  """
  @type put_function_code_signing_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      alias_configuration() :: %{
        "AliasArn" => String.t(),
        "Description" => String.t(),
        "FunctionVersion" => String.t(),
        "Name" => String.t(),
        "RevisionId" => String.t(),
        "RoutingConfig" => alias_routing_configuration()
      }

  """
  @type alias_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_function_code_request() :: %{
        optional("Architectures") => list(list(any())()),
        optional("DryRun") => boolean(),
        optional("ImageUri") => String.t(),
        optional("Publish") => boolean(),
        optional("RevisionId") => String.t(),
        optional("S3Bucket") => String.t(),
        optional("S3Key") => String.t(),
        optional("S3ObjectVersion") => String.t(),
        optional("ZipFile") => binary()
      }

  """
  @type update_function_code_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_code_signing_config_request() :: %{
        optional("CodeSigningPolicies") => code_signing_policies(),
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("AllowedPublishers") => allowed_publishers()
      }

  """
  @type create_code_signing_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_parameter_value_exception() :: %{
        "Type" => String.t(),
        "message" => String.t()
      }

  """
  @type invalid_parameter_value_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      event_source_mapping_configuration() :: %{
        "AmazonManagedKafkaEventSourceConfig" => amazon_managed_kafka_event_source_config(),
        "BatchSize" => integer(),
        "BisectBatchOnFunctionError" => boolean(),
        "DestinationConfig" => destination_config(),
        "DocumentDBEventSourceConfig" => document_db_event_source_config(),
        "EventSourceArn" => String.t(),
        "EventSourceMappingArn" => String.t(),
        "FilterCriteria" => filter_criteria(),
        "FilterCriteriaError" => filter_criteria_error(),
        "FunctionArn" => String.t(),
        "FunctionResponseTypes" => list(list(any())()),
        "KMSKeyArn" => String.t(),
        "LastModified" => non_neg_integer(),
        "LastProcessingResult" => String.t(),
        "MaximumBatchingWindowInSeconds" => integer(),
        "MaximumRecordAgeInSeconds" => integer(),
        "MaximumRetryAttempts" => integer(),
        "ParallelizationFactor" => integer(),
        "Queues" => list(String.t()()),
        "ScalingConfig" => scaling_config(),
        "SelfManagedEventSource" => self_managed_event_source(),
        "SelfManagedKafkaEventSourceConfig" => self_managed_kafka_event_source_config(),
        "SourceAccessConfigurations" => list(source_access_configuration()()),
        "StartingPosition" => list(any()),
        "StartingPositionTimestamp" => non_neg_integer(),
        "State" => String.t(),
        "StateTransitionReason" => String.t(),
        "Topics" => list(String.t()()),
        "TumblingWindowInSeconds" => integer(),
        "UUID" => String.t()
      }

  """
  @type event_source_mapping_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_event_source_mapping_request() :: %{
        optional("AmazonManagedKafkaEventSourceConfig") => amazon_managed_kafka_event_source_config(),
        optional("BatchSize") => integer(),
        optional("BisectBatchOnFunctionError") => boolean(),
        optional("DestinationConfig") => destination_config(),
        optional("DocumentDBEventSourceConfig") => document_db_event_source_config(),
        optional("Enabled") => boolean(),
        optional("EventSourceArn") => String.t(),
        optional("FilterCriteria") => filter_criteria(),
        optional("FunctionResponseTypes") => list(list(any())()),
        optional("KMSKeyArn") => String.t(),
        optional("MaximumBatchingWindowInSeconds") => integer(),
        optional("MaximumRecordAgeInSeconds") => integer(),
        optional("MaximumRetryAttempts") => integer(),
        optional("ParallelizationFactor") => integer(),
        optional("Queues") => list(String.t()()),
        optional("ScalingConfig") => scaling_config(),
        optional("SelfManagedEventSource") => self_managed_event_source(),
        optional("SelfManagedKafkaEventSourceConfig") => self_managed_kafka_event_source_config(),
        optional("SourceAccessConfigurations") => list(source_access_configuration()()),
        optional("StartingPosition") => list(any()),
        optional("StartingPositionTimestamp") => non_neg_integer(),
        optional("Tags") => map(),
        optional("Topics") => list(String.t()()),
        optional("TumblingWindowInSeconds") => integer(),
        required("FunctionName") => String.t()
      }

  """
  @type create_event_source_mapping_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_function_url_config_request() :: %{
        optional("Cors") => cors(),
        optional("InvokeMode") => list(any()),
        optional("Qualifier") => String.t(),
        required("AuthType") => list(any())
      }

  """
  @type create_function_url_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      layer() :: %{
        "Arn" => String.t(),
        "CodeSize" => float(),
        "SigningJobArn" => String.t(),
        "SigningProfileVersionArn" => String.t()
      }

  """
  @type layer() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_provisioned_concurrency_config_response() :: %{
        "AllocatedProvisionedConcurrentExecutions" => integer(),
        "AvailableProvisionedConcurrentExecutions" => integer(),
        "LastModified" => String.t(),
        "RequestedProvisionedConcurrentExecutions" => integer(),
        "Status" => list(any()),
        "StatusReason" => String.t()
      }

  """
  @type get_provisioned_concurrency_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_config() :: %{
        "Ipv6AllowedForDualStack" => boolean(),
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()())
      }

  """
  @type vpc_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      publish_layer_version_request() :: %{
        optional("CompatibleArchitectures") => list(list(any())()),
        optional("CompatibleRuntimes") => list(list(any())()),
        optional("Description") => String.t(),
        optional("LicenseInfo") => String.t(),
        required("Content") => layer_version_content_input()
      }

  """
  @type publish_layer_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      subnet_ip_address_limit_reached_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type subnet_ip_address_limit_reached_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remove_permission_request() :: %{
        optional("Qualifier") => String.t(),
        optional("RevisionId") => String.t()
      }

  """
  @type remove_permission_request() :: %{String.t() => any()}

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
  @type account_limit() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      public_access_block_config() :: %{
        "BlockPublicPolicy" => boolean(),
        "RestrictPublicResource" => boolean()
      }

  """
  @type public_access_block_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_function_event_invoke_config_request() :: %{
        optional("DestinationConfig") => destination_config(),
        optional("MaximumEventAgeInSeconds") => integer(),
        optional("MaximumRetryAttempts") => integer(),
        optional("Qualifier") => String.t()
      }

  """
  @type update_function_event_invoke_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_code_signing_config_response() :: %{}

  """
  @type delete_code_signing_config_response() :: %{}

  @typedoc """

  ## Example:

      file_system_config() :: %{
        "Arn" => String.t(),
        "LocalMountPath" => String.t()
      }

  """
  @type file_system_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tracing_config() :: %{
        "Mode" => list(any())
      }

  """
  @type tracing_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_layer_version_by_arn_request() :: %{
        required("Arn") => String.t()
      }

  """
  @type get_layer_version_by_arn_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      code_verification_failed_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type code_verification_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ephemeral_storage() :: %{
        "Size" => integer()
      }

  """
  @type ephemeral_storage() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_provisioned_concurrency_config_response() :: %{
        "AllocatedProvisionedConcurrentExecutions" => integer(),
        "AvailableProvisionedConcurrentExecutions" => integer(),
        "LastModified" => String.t(),
        "RequestedProvisionedConcurrentExecutions" => integer(),
        "Status" => list(any()),
        "StatusReason" => String.t()
      }

  """
  @type put_provisioned_concurrency_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_resource_policy_request() :: %{}

  """
  @type get_resource_policy_request() :: %{}

  @typedoc """

  ## Example:

      filter() :: %{
        "Pattern" => String.t()
      }

  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      layer_versions_list_item() :: %{
        "CompatibleArchitectures" => list(list(any())()),
        "CompatibleRuntimes" => list(list(any())()),
        "CreatedDate" => String.t(),
        "Description" => String.t(),
        "LayerVersionArn" => String.t(),
        "LicenseInfo" => String.t(),
        "Version" => float()
      }

  """
  @type layer_versions_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_layer_versions_response() :: %{
        "LayerVersions" => list(layer_versions_list_item()()),
        "NextMarker" => String.t()
      }

  """
  @type list_layer_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoke_async_response() :: %{
        "Status" => integer()
      }

  """
  @type invoke_async_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_versions_by_function_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_versions_by_function_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      request_too_large_exception() :: %{
        "Type" => String.t(),
        "message" => String.t()
      }

  """
  @type request_too_large_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      scaling_config() :: %{
        "MaximumConcurrency" => integer()
      }

  """
  @type scaling_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_policy_response() :: %{
        "Policy" => String.t(),
        "RevisionId" => String.t()
      }

  """
  @type get_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_provisioned_concurrency_config_request() :: %{
        required("Qualifier") => String.t()
      }

  """
  @type get_provisioned_concurrency_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_functions_request() :: %{
        optional("FunctionVersion") => list(any()),
        optional("Marker") => String.t(),
        optional("MasterRegion") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_functions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      add_layer_version_permission_request() :: %{
        optional("OrganizationId") => String.t(),
        optional("RevisionId") => String.t(),
        required("Action") => String.t(),
        required("Principal") => String.t(),
        required("StatementId") => String.t()
      }

  """
  @type add_layer_version_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_functions_by_code_signing_config_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_functions_by_code_signing_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_event_source_mappings_request() :: %{
        optional("EventSourceArn") => String.t(),
        optional("FunctionName") => String.t(),
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_event_source_mappings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kms_access_denied_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type kms_access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_code_signing_config_request() :: %{
        optional("AllowedPublishers") => allowed_publishers(),
        optional("CodeSigningPolicies") => code_signing_policies(),
        optional("Description") => String.t()
      }

  """
  @type update_code_signing_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_function_code_signing_config_request() :: %{
        required("CodeSigningConfigArn") => String.t()
      }

  """
  @type put_function_code_signing_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      add_layer_version_permission_response() :: %{
        "RevisionId" => String.t(),
        "Statement" => String.t()
      }

  """
  @type add_layer_version_permission_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_event_source_mapping_request() :: %{}

  """
  @type get_event_source_mapping_request() :: %{}

  @typedoc """

  ## Example:

      invocation_request() :: %{
        optional("ClientContext") => String.t(),
        optional("InvocationType") => list(any()),
        optional("LogType") => list(any()),
        optional("Payload") => binary(),
        optional("Qualifier") => String.t()
      }

  """
  @type invocation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_zip_file_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type invalid_zip_file_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoke_with_response_stream_complete_event() :: %{
        "ErrorCode" => String.t(),
        "ErrorDetails" => String.t(),
        "LogResult" => String.t()
      }

  """
  @type invoke_with_response_stream_complete_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_resource_policy_request() :: %{
        optional("RevisionId") => String.t(),
        required("Policy") => String.t()
      }

  """
  @type put_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kms_not_found_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type kms_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoke_with_response_stream_request() :: %{
        optional("ClientContext") => String.t(),
        optional("InvocationType") => list(any()),
        optional("LogType") => list(any()),
        optional("Payload") => binary(),
        optional("Qualifier") => String.t()
      }

  """
  @type invoke_with_response_stream_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_function_url_config_request() :: %{
        optional("Qualifier") => String.t()
      }

  """
  @type get_function_url_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_code_signing_config_response() :: %{
        "CodeSigningConfig" => code_signing_config()
      }

  """
  @type update_code_signing_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dead_letter_config() :: %{
        "TargetArn" => String.t()
      }

  """
  @type dead_letter_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      e_f_s_mount_timeout_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type e_f_s_mount_timeout_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_provisioned_concurrency_config_request() :: %{
        required("Qualifier") => String.t()
      }

  """
  @type delete_provisioned_concurrency_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      image_config_error() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type image_config_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_layers_request() :: %{
        optional("CompatibleArchitecture") => list(any()),
        optional("CompatibleRuntime") => list(any()),
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_layers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      provisioned_concurrency_config_not_found_exception() :: %{
        "Type" => String.t(),
        "message" => String.t()
      }

  """
  @type provisioned_concurrency_config_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_code_signing_config_response() :: %{
        "CodeSigningConfig" => code_signing_config()
      }

  """
  @type get_code_signing_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      runtime_version_error() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type runtime_version_error() :: %{String.t() => any()}

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
        "Version" => String.t(),
        "Handler" => String.t(),
        "KMSKeyArn" => String.t(),
        "SigningProfileVersionArn" => String.t(),
        "MasterArn" => String.t(),
        "Role" => String.t(),
        "PackageType" => list(any()),
        "StateReason" => String.t(),
        "State" => list(any()),
        "LastUpdateStatus" => list(any()),
        "Architectures" => list(list(any())()),
        "Environment" => environment_response(),
        "Timeout" => integer(),
        "LastModified" => String.t(),
        "StateReasonCode" => list(any()),
        "DeadLetterConfig" => dead_letter_config(),
        "EphemeralStorage" => ephemeral_storage(),
        "Layers" => list(layer()()),
        "CodeSha256" => String.t(),
        "FileSystemConfigs" => list(file_system_config()()),
        "LastUpdateStatusReason" => String.t(),
        "LastUpdateStatusReasonCode" => list(any()),
        "SnapStart" => snap_start_response(),
        "Runtime" => list(any()),
        "ImageConfigResponse" => image_config_response(),
        "Description" => String.t(),
        "RevisionId" => String.t(),
        "FunctionArn" => String.t(),
        "SigningJobArn" => String.t(),
        "LoggingConfig" => logging_config(),
        "CodeSize" => float(),
        "RuntimeVersionConfig" => runtime_version_config(),
        "FunctionName" => String.t()
      }

  """
  @type function_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      e_f_s_mount_connectivity_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type e_f_s_mount_connectivity_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_runtime_management_config_response() :: %{
        "FunctionArn" => String.t(),
        "RuntimeVersionArn" => String.t(),
        "UpdateRuntimeOn" => list(any())
      }

  """
  @type get_runtime_management_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_runtime_management_config_response() :: %{
        "FunctionArn" => String.t(),
        "RuntimeVersionArn" => String.t(),
        "UpdateRuntimeOn" => list(any())
      }

  """
  @type put_runtime_management_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      e_n_i_limit_reached_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type e_n_i_limit_reached_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_function_url_configs_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_function_url_configs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_layer_versions_request() :: %{
        optional("CompatibleArchitecture") => list(any()),
        optional("CompatibleRuntime") => list(any()),
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_layer_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_function_event_invoke_config_request() :: %{
        optional("Qualifier") => String.t()
      }

  """
  @type delete_function_event_invoke_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      e_f_s_mount_failure_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type e_f_s_mount_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cors() :: %{
        "AllowCredentials" => boolean(),
        "AllowHeaders" => list(String.t()()),
        "AllowMethods" => list(String.t()()),
        "AllowOrigins" => list(String.t()()),
        "ExposeHeaders" => list(String.t()()),
        "MaxAge" => integer()
      }

  """
  @type cors() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      function_url_config() :: %{
        "AuthType" => list(any()),
        "Cors" => cors(),
        "CreationTime" => String.t(),
        "FunctionArn" => String.t(),
        "FunctionUrl" => String.t(),
        "InvokeMode" => list(any()),
        "LastModifiedTime" => String.t()
      }

  """
  @type function_url_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      on_success() :: %{
        "Destination" => String.t()
      }

  """
  @type on_success() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      self_managed_event_source() :: %{
        "Endpoints" => map()
      }

  """
  @type self_managed_event_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_function_configuration_request() :: %{
        optional("DeadLetterConfig") => dead_letter_config(),
        optional("Description") => String.t(),
        optional("Environment") => environment(),
        optional("EphemeralStorage") => ephemeral_storage(),
        optional("FileSystemConfigs") => list(file_system_config()()),
        optional("Handler") => String.t(),
        optional("ImageConfig") => image_config(),
        optional("KMSKeyArn") => String.t(),
        optional("Layers") => list(String.t()()),
        optional("LoggingConfig") => logging_config(),
        optional("MemorySize") => integer(),
        optional("RevisionId") => String.t(),
        optional("Role") => String.t(),
        optional("Runtime") => list(any()),
        optional("SnapStart") => snap_start(),
        optional("Timeout") => integer(),
        optional("TracingConfig") => tracing_config(),
        optional("VpcConfig") => vpc_config()
      }

  """
  @type update_function_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_resource_policy_response() :: %{
        "Policy" => String.t(),
        "RevisionId" => String.t()
      }

  """
  @type put_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_function_code_signing_config_response() :: %{
        "CodeSigningConfigArn" => String.t(),
        "FunctionName" => String.t()
      }

  """
  @type get_function_code_signing_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_code_signature_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type invalid_code_signature_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_function_url_configs_response() :: %{
        "FunctionUrlConfigs" => list(function_url_config()()),
        "NextMarker" => String.t()
      }

  """
  @type list_function_url_configs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      allowed_publishers() :: %{
        "SigningProfileVersionArns" => list(String.t()())
      }

  """
  @type allowed_publishers() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_versions_by_function_response() :: %{
        "NextMarker" => String.t(),
        "Versions" => list(function_configuration()())
      }

  """
  @type list_versions_by_function_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vpc_config_response() :: %{
        "Ipv6AllowedForDualStack" => boolean(),
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()()),
        "VpcId" => String.t()
      }

  """
  @type vpc_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      public_policy_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type public_policy_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_resource_policy_request() :: %{
        optional("RevisionId") => String.t()
      }

  """
  @type delete_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ec2_unexpected_exception() :: %{
        "EC2ErrorCode" => String.t(),
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type ec2_unexpected_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_function_url_config_response() :: %{
        "AuthType" => list(any()),
        "Cors" => cors(),
        "CreationTime" => String.t(),
        "FunctionArn" => String.t(),
        "FunctionUrl" => String.t(),
        "InvokeMode" => list(any()),
        "LastModifiedTime" => String.t()
      }

  """
  @type get_function_url_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_function_event_invoke_config_request() :: %{
        optional("Qualifier") => String.t()
      }

  """
  @type get_function_event_invoke_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_function_request() :: %{
        optional("Architectures") => list(list(any())()),
        optional("CodeSigningConfigArn") => String.t(),
        optional("DeadLetterConfig") => dead_letter_config(),
        optional("Description") => String.t(),
        optional("Environment") => environment(),
        optional("EphemeralStorage") => ephemeral_storage(),
        optional("FileSystemConfigs") => list(file_system_config()()),
        optional("Handler") => String.t(),
        optional("ImageConfig") => image_config(),
        optional("KMSKeyArn") => String.t(),
        optional("Layers") => list(String.t()()),
        optional("LoggingConfig") => logging_config(),
        optional("MemorySize") => integer(),
        optional("PackageType") => list(any()),
        optional("Publish") => boolean(),
        optional("Runtime") => list(any()),
        optional("SnapStart") => snap_start(),
        optional("Tags") => map(),
        optional("Timeout") => integer(),
        optional("TracingConfig") => tracing_config(),
        optional("VpcConfig") => vpc_config(),
        required("Code") => function_code(),
        required("FunctionName") => String.t(),
        required("Role") => String.t()
      }

  """
  @type create_function_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_error() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type environment_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ec2_throttled_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type ec2_throttled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_request() :: %{}

  """
  @type list_tags_request() :: %{}

  @typedoc """

  ## Example:

      e_f_s_i_o_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type e_f_s_i_o_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kms_invalid_state_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type kms_invalid_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      layers_list_item() :: %{
        "LatestMatchingVersion" => layer_versions_list_item(),
        "LayerArn" => String.t(),
        "LayerName" => String.t()
      }

  """
  @type layers_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      alias_routing_configuration() :: %{
        "AdditionalVersionWeights" => map()
      }

  """
  @type alias_routing_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      image_config_response() :: %{
        "Error" => image_config_error(),
        "ImageConfig" => image_config()
      }

  """
  @type image_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_subnet_id_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type invalid_subnet_id_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      snap_start_response() :: %{
        "ApplyOn" => list(any()),
        "OptimizationStatus" => list(any())
      }

  """
  @type snap_start_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      code_storage_exceeded_exception() :: %{
        "Type" => String.t(),
        "message" => String.t()
      }

  """
  @type code_storage_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      layer_version_content_input() :: %{
        "S3Bucket" => String.t(),
        "S3Key" => String.t(),
        "S3ObjectVersion" => String.t(),
        "ZipFile" => binary()
      }

  """
  @type layer_version_content_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_ready_exception() :: %{
        "Type" => String.t(),
        "message" => String.t()
      }

  """
  @type resource_not_ready_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      code_signing_policies() :: %{
        "UntrustedArtifactOnDeployment" => list(any())
      }

  """
  @type code_signing_policies() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      precondition_failed_exception() :: %{
        "Type" => String.t(),
        "message" => String.t()
      }

  """
  @type precondition_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_function_event_invoke_configs_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_function_event_invoke_configs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_conflict_exception() :: %{
        "Type" => String.t(),
        "message" => String.t()
      }

  """
  @type resource_conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      concurrency() :: %{
        optional("ReservedConcurrentExecutions") => integer()
      }

  """
  @type concurrency() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_alias_request() :: %{}

  """
  @type delete_alias_request() :: %{}

  @typedoc """

  ## Example:

      list_provisioned_concurrency_configs_request() :: %{
        optional("Marker") => String.t(),
        optional("MaxItems") => integer()
      }

  """
  @type list_provisioned_concurrency_configs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      add_permission_request() :: %{
        optional("EventSourceToken") => String.t(),
        optional("FunctionUrlAuthType") => list(any()),
        optional("PrincipalOrgID") => String.t(),
        optional("Qualifier") => String.t(),
        optional("RevisionId") => String.t(),
        optional("SourceAccount") => String.t(),
        optional("SourceArn") => String.t(),
        required("Action") => String.t(),
        required("Principal") => String.t(),
        required("StatementId") => String.t()
      }

  """
  @type add_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_criteria_error() :: %{
        "ErrorCode" => String.t(),
        "Message" => String.t()
      }

  """
  @type filter_criteria_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tracing_config_response() :: %{
        "Mode" => list(any())
      }

  """
  @type tracing_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      snap_start_exception() :: %{
        "Message" => String.t(),
        "Type" => String.t()
      }

  """
  @type snap_start_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_function_recursion_config_response() :: %{
        "RecursiveLoop" => list(any())
      }

  """
  @type get_function_recursion_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      add_permission_response() :: %{
        "Statement" => String.t()
      }

  """
  @type add_permission_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      code_signing_config() :: %{
        "AllowedPublishers" => allowed_publishers(),
        "CodeSigningConfigArn" => String.t(),
        "CodeSigningConfigId" => String.t(),
        "CodeSigningPolicies" => code_signing_policies(),
        "Description" => String.t(),
        "LastModified" => String.t()
      }

  """
  @type code_signing_config() :: %{String.t() => any()}

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
          | public_policy_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | policy_length_exceeded_exception()

  @type create_alias_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
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

  @type delete_resource_policy_errors() ::
          resource_conflict_exception()
          | precondition_failed_exception()
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

  @type get_code_signing_config_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()

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

  @type get_public_access_block_config_errors() ::
          service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type get_resource_policy_errors() ::
          service_exception()
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

  @type list_code_signing_configs_errors() ::
          service_exception() | invalid_parameter_value_exception()

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

  @type put_provisioned_concurrency_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type put_public_access_block_config_errors() ::
          resource_conflict_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type put_resource_policy_errors() ::
          resource_conflict_exception()
          | precondition_failed_exception()
          | public_policy_exception()
          | service_exception()
          | invalid_parameter_value_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | policy_length_exceeded_exception()

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
          | public_policy_exception()
          | service_exception()
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

  Use this action to grant layer
  usage permission to other accounts. You can grant permission to a single
  account, all accounts in an organization,
  or all Amazon Web Services accounts.

  To revoke permission, call `RemoveLayerVersionPermission` with the statement ID
  that you
  specified when you added it.
  """
  @spec add_layer_version_permission(
          map(),
          String.t(),
          String.t(),
          add_layer_version_permission_request(),
          list()
        ) ::
          {:ok, add_layer_version_permission_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Grants a
  [principal](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_principal.html#Principal_specifying) permission to use a function.

  You can apply the policy at the function level, or specify a qualifier to
  restrict
  access to a single version or alias. If you use a qualifier, the invoker must
  use the full Amazon Resource Name
  (ARN) of that version or alias to invoke the function. Note: Lambda does not
  support adding policies
  to version $LATEST.

  To grant permission to another account, specify the account ID as the
  `Principal`. To grant
  permission to an organization defined in Organizations, specify the organization
  ID as the
  `PrincipalOrgID`. For Amazon Web Servicesservices, the principal is a
  domain-style identifier that
  the service defines, such as `s3.amazonaws.com` or `sns.amazonaws.com`. For
  Amazon Web Servicesservices, you can also specify the ARN of the associated
  resource as the `SourceArn`. If
  you grant permission to a service principal without specifying the source, other
  accounts could potentially
  configure resources in their account to invoke your Lambda function.

  This operation adds a statement to a resource-based permissions policy for the
  function. For more information
  about function policies, see [Using resource-based policies for
  Lambda](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html).
  """
  @spec add_permission(map(), String.t(), add_permission_request(), list()) ::
          {:ok, add_permission_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, add_permission_errors()}
  def add_permission(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/policy"
    headers = []

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
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates an
  [alias](https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html)
  for a
  Lambda function version.

  Use aliases to provide clients with a function identifier that you can update to
  invoke a
  different version.

  You can also map an alias to split invocation requests between two versions. Use
  the
  `RoutingConfig` parameter to specify a second version and the percentage of
  invocation requests that
  it receives.
  """
  @spec create_alias(map(), String.t(), create_alias_request(), list()) ::
          {:ok, alias_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_alias_errors()}
  def create_alias(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/aliases"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a code signing configuration.

  A [code signing configuration](https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html)
  defines a list of
  allowed signing profiles and defines the code-signing validation policy (action
  to be taken if deployment
  validation checks fail).
  """
  @spec create_code_signing_config(map(), create_code_signing_config_request(), list()) ::
          {:ok, create_code_signing_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_code_signing_config_errors()}
  def create_code_signing_config(%Client{} = client, input, options \\ []) do
    url_path = "/2020-04-22/code-signing-configs"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
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

    *

  [
  Amazon DynamoDB
  Streams](https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-dynamodb-eventsourcemapping)

    *

  [
  Amazon
  Kinesis](https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-eventsourcemapping)

    *

  [
  Amazon
  SQS](https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-eventsource)

    *

  [
  Amazon MQ and
  RabbitMQ](https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-eventsourcemapping)

    *

  [
  Amazon MSK](https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html)

    *

  [
  Apache Kafka](https://docs.aws.amazon.com/lambda/latest/dg/kafka-smaa.html)

    *

  [
  Amazon
  DocumentDB](https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html)

  The following error handling options are available only for stream sources
  (DynamoDB and Kinesis):

    *

  `BisectBatchOnFunctionError` – If the function returns an error, split the batch
  in two and retry.

    *

  `DestinationConfig` – Send discarded records to an Amazon SQS queue or Amazon
  SNS topic.

    *

  `MaximumRecordAgeInSeconds` – Discard records older than the specified age. The
  default value is infinite (-1). When set to infinite (-1), failed records are
  retried until the record expires

    *

  `MaximumRetryAttempts` – Discard records after the specified number of retries.
  The default value is infinite (-1). When set to infinite (-1), failed records
  are retried until the record expires.

    *

  `ParallelizationFactor` – Process multiple batches from each shard concurrently.

  For information about which configuration parameters apply to each event source,
  see the following topics.

    *

  [
  Amazon DynamoDB
  Streams](https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-ddb-params)

    *

  [
  Amazon
  Kinesis](https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-params)

    *

  [
  Amazon
  SQS](https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#services-sqs-params)

    *

  [
  Amazon MQ and
  RabbitMQ](https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-params)

    *

  [
  Amazon
  MSK](https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#services-msk-parms)

    *

  [
  Apache
  Kafka](https://docs.aws.amazon.com/lambda/latest/dg/with-kafka.html#services-kafka-parms)

    *

  [
  Amazon
  DocumentDB](https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html#docdb-configuration)
  """
  @spec create_event_source_mapping(map(), create_event_source_mapping_request(), list()) ::
          {:ok, event_source_mapping_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_event_source_mapping_errors()}
  def create_event_source_mapping(%Client{} = client, input, options \\ []) do
    url_path = "/2015-03-31/event-source-mappings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Creates a Lambda function.

  To create a function, you need a [deployment package](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html)
  and an [execution role](https://docs.aws.amazon.com/lambda/latest/dg/intro-permission-model.html#lambda-intro-execution-role).
  The
  deployment package is a .zip file archive or container image that contains your
  function code. The execution role
  grants the function permission to use Amazon Web Servicesservices, such as
  Amazon CloudWatch Logs for log
  streaming and X-Ray for request tracing.

  If the deployment package is a [container image](https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html), then
  you set the package type to `Image`. For a container image, the code property
  must include the URI of a container image in the Amazon ECR registry. You do not
  need to specify the
  handler and runtime properties.

  If the deployment package is a [.zip file archive](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html#gettingstarted-package-zip),
  then
  you set the package type to `Zip`. For a .zip file archive, the code property
  specifies the location of
  the .zip file. You must also specify the handler and runtime properties. The
  code in the deployment package must
  be compatible with the target instruction set architecture of the function
  (`x86-64` or
  `arm64`). If you do not specify the architecture, then the default value is
  `x86-64`.

  When you create a function, Lambda provisions an instance of the function and
  its supporting
  resources. If your function connects to a VPC, this process can take a minute or
  so. During this time, you can't
  invoke or modify the function. The `State`, `StateReason`, and `StateReasonCode`
  fields in the response from `GetFunctionConfiguration` indicate when the
  function is ready to
  invoke. For more information, see [Lambda function states](https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html).

  A function has an unpublished version, and can have published versions and
  aliases. The unpublished version
  changes when you update your function's code and configuration. A published
  version is a snapshot of your function
  code and configuration that can't be changed. An alias is a named resource that
  maps to a version, and can be
  changed to map to a different version. Use the `Publish` parameter to create
  version `1` of
  your function from its initial configuration.

  The other parameters let you configure version-specific and function-level
  settings. You can modify
  version-specific settings later with `UpdateFunctionConfiguration`.
  Function-level settings apply
  to both the unpublished and published versions of the function, and include tags
  (`TagResource`)
  and per-function concurrency limits (`PutFunctionConcurrency`).

  You can use code signing if your deployment package is a .zip file archive. To
  enable code signing for this
  function, specify the ARN of a code-signing configuration. When a user attempts
  to deploy a code package with
  `UpdateFunctionCode`, Lambda checks that the code package has a valid signature
  from
  a trusted publisher. The code-signing configuration includes set of signing
  profiles, which define the trusted
  publishers for this function.

  If another Amazon Web Services account or an Amazon Web Servicesservice invokes
  your function, use `AddPermission` to grant permission by creating a
  resource-based Identity and Access Management (IAM) policy. You can grant
  permissions at the function level, on a version, or on an alias.

  To invoke your function directly, use `Invoke`. To invoke your function in
  response to events
  in other Amazon Web Servicesservices, create an event source mapping
  (`CreateEventSourceMapping`),
  or configure a function trigger in the other service. For more information, see
  [Invoking Lambda functions](https://docs.aws.amazon.com/lambda/latest/dg/lambda-invocation.html).
  """
  @spec create_function(map(), create_function_request(), list()) ::
          {:ok, function_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_function_errors()}
  def create_function(%Client{} = client, input, options \\ []) do
    url_path = "/2015-03-31/functions"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a Lambda function URL with the specified configuration parameters.

  A function URL is
  a dedicated HTTP(S) endpoint that you can use to invoke your function.
  """
  @spec create_function_url_config(
          map(),
          String.t(),
          create_function_url_config_request(),
          list()
        ) ::
          {:ok, create_function_url_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_function_url_config_errors()}
  def create_function_url_config(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2021-10-31/functions/#{AWS.Util.encode_uri(function_name)}/url"
    headers = []

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
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Deletes a Lambda function
  [alias](https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html).
  """
  @spec delete_alias(map(), String.t(), String.t(), delete_alias_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_alias_errors()}
  def delete_alias(%Client{} = client, function_name, name, input, options \\ []) do
    url_path =
      "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/aliases/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes the code signing configuration.

  You can delete the code signing configuration only if no function is
  using it.
  """
  @spec delete_code_signing_config(
          map(),
          String.t(),
          delete_code_signing_config_request(),
          list()
        ) ::
          {:ok, delete_code_signing_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_code_signing_config_errors()}
  def delete_code_signing_config(
        %Client{} = client,
        code_signing_config_arn,
        input,
        options \\ []
      ) do
    url_path = "/2020-04-22/code-signing-configs/#{AWS.Util.encode_uri(code_signing_config_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
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
  not be completely
  deleted for several seconds.
  """
  @spec delete_event_source_mapping(
          map(),
          String.t(),
          delete_event_source_mapping_request(),
          list()
        ) ::
          {:ok, event_source_mapping_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_event_source_mapping_errors()}
  def delete_event_source_mapping(%Client{} = client, uuid, input, options \\ []) do
    url_path = "/2015-03-31/event-source-mappings/#{AWS.Util.encode_uri(uuid)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Deletes a Lambda function.

  To delete a specific function version, use the `Qualifier` parameter.
  Otherwise, all versions and aliases are deleted. This doesn't require the user
  to have explicit
  permissions for `DeleteAlias`.

  To delete Lambda event source mappings that invoke a function, use
  `DeleteEventSourceMapping`. For Amazon Web Servicesservices and resources that
  invoke your function
  directly, delete the trigger in the service where you originally configured it.
  """
  @spec delete_function(map(), String.t(), delete_function_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_function_errors()}
  def delete_function(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}"
    headers = []

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
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Removes the code signing configuration from the function.
  """
  @spec delete_function_code_signing_config(
          map(),
          String.t(),
          delete_function_code_signing_config_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_function_code_signing_config_errors()}
  def delete_function_code_signing_config(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2020-06-30/functions/#{AWS.Util.encode_uri(function_name)}/code-signing-config"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
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
          String.t(),
          delete_function_concurrency_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_function_concurrency_errors()}
  def delete_function_concurrency(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2017-10-31/functions/#{AWS.Util.encode_uri(function_name)}/concurrency"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
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
          String.t(),
          delete_function_event_invoke_config_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_function_event_invoke_config_errors()}
  def delete_function_event_invoke_config(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2019-09-25/functions/#{AWS.Util.encode_uri(function_name)}/event-invoke-config"
    headers = []

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
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a Lambda function URL.

  When you delete a function URL, you
  can't recover it. Creating a new function URL results in a different URL
  address.
  """
  @spec delete_function_url_config(
          map(),
          String.t(),
          delete_function_url_config_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_function_url_config_errors()}
  def delete_function_url_config(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2021-10-31/functions/#{AWS.Util.encode_uri(function_name)}/url"
    headers = []

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
      headers,
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
          String.t(),
          String.t(),
          delete_layer_version_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_layer_version_errors()}
  def delete_layer_version(%Client{} = client, layer_name, version_number, input, options \\ []) do
    url_path =
      "/2018-10-31/layers/#{AWS.Util.encode_uri(layer_name)}/versions/#{AWS.Util.encode_uri(version_number)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
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
          String.t(),
          delete_provisioned_concurrency_config_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
      headers,
      input,
      options,
      204
    )
  end

  @doc """

  The option to create and modify full JSON resource-based policies, and to use
  the PutResourcePolicy, GetResourcePolicy, and DeleteResourcePolicy APIs, won't
  be
  available in all Amazon Web Services Regions until September 30, 2024.

  Deletes a [resource-based policy](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html)
  from a function.
  """
  @spec delete_resource_policy(map(), String.t(), delete_resource_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/2024-09-16/resource-policy/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

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
      headers,
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
  @spec get_alias(map(), String.t(), String.t(), list()) ::
          {:ok, alias_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Returns information about the specified code signing configuration.
  """
  @spec get_code_signing_config(map(), String.t(), list()) ::
          {:ok, get_code_signing_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_code_signing_config_errors()}
  def get_code_signing_config(%Client{} = client, code_signing_config_arn, options \\ []) do
    url_path = "/2020-04-22/code-signing-configs/#{AWS.Util.encode_uri(code_signing_config_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns details about an event source mapping.

  You can get the identifier of a mapping from the output of
  `ListEventSourceMappings`.
  """
  @spec get_event_source_mapping(map(), String.t(), list()) ::
          {:ok, event_source_mapping_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
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
  download the deployment package
  that's valid for 10 minutes.

  If you specify a function version, only details that are specific to that
  version are
  returned.
  """
  @spec get_function(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_function_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_function_code_signing_config(map(), String.t(), list()) ::
          {:ok, get_function_code_signing_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
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

  To set a concurrency limit for a
  function, use `PutFunctionConcurrency`.
  """
  @spec get_function_concurrency(map(), String.t(), list()) ::
          {:ok, get_function_concurrency_response(), any()}
          | {:error, {:unexpected_response, any()}}
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

  The output includes only options that
  can vary between versions of a function. To modify these settings, use
  `UpdateFunctionConfiguration`.

  To get all of a function's details, including function-level settings, use
  `GetFunction`.
  """
  @spec get_function_configuration(map(), String.t(), String.t() | nil, list()) ::
          {:ok, function_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_function_event_invoke_config(map(), String.t(), String.t() | nil, list()) ::
          {:ok, function_event_invoke_config(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_function_recursion_config(map(), String.t(), list()) ::
          {:ok, get_function_recursion_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_function_recursion_config_errors()}
  def get_function_recursion_config(%Client{} = client, function_name, options \\ []) do
    url_path = "/2024-08-31/functions/#{AWS.Util.encode_uri(function_name)}/recursion-config"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns details about a Lambda function URL.
  """
  @spec get_function_url_config(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_function_url_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  with a link to download the layer archive
  that's valid for 10 minutes.
  """
  @spec get_layer_version(map(), String.t(), String.t(), list()) ::
          {:ok, get_layer_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  with a link to download the layer archive
  that's valid for 10 minutes.
  """
  @spec get_layer_version_by_arn(map(), String.t(), list()) ::
          {:ok, get_layer_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_layer_version_policy(map(), String.t(), String.t(), list()) ::
          {:ok, get_layer_version_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_policy(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_provisioned_concurrency_config(map(), String.t(), String.t(), list()) ::
          {:ok, get_provisioned_concurrency_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
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

  The option to configure public-access settings, and to use the
  PutPublicAccessBlock and GetPublicAccessBlock APIs, won't be
  available in all Amazon Web Services Regions until September 30, 2024.

  Retrieve the public-access settings for a function.
  """
  @spec get_public_access_block_config(map(), String.t(), list()) ::
          {:ok, get_public_access_block_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_public_access_block_config_errors()}
  def get_public_access_block_config(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/2024-09-16/public-access-block/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  The option to create and modify full JSON resource-based policies, and to use
  the PutResourcePolicy, GetResourcePolicy, and DeleteResourcePolicy APIs, won't
  be
  available in all Amazon Web Services Regions until September 30, 2024.

  Retrieves the [resource-based policy](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html)
  attached to a function.
  """
  @spec get_resource_policy(map(), String.t(), list()) ::
          {:ok, get_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_policy_errors()}
  def get_resource_policy(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/2024-09-16/resource-policy/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the runtime management configuration for a function's version.

  If the runtime update mode is **Manual**, this includes the ARN of the
  runtime version and the runtime update mode. If the runtime update mode is
  **Auto** or **Function update**,
  this includes the runtime update mode and `null` is returned for the ARN. For
  more information, see [Runtime updates](https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html).
  """
  @spec get_runtime_management_config(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_runtime_management_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  the`InvocationType`
  is `RequestResponse`). To invoke a function asynchronously, set `InvocationType`
  to
  `Event`. Lambda passes the `ClientContext` object to your function for
  synchronous invocations only.

  For [synchronous invocation](https://docs.aws.amazon.com/lambda/latest/dg/invocation-sync.html),
  details about the function response, including errors, are included in the
  response body and headers. For either
  invocation type, you can find more information in the [execution log](https://docs.aws.amazon.com/lambda/latest/dg/monitoring-functions.html) and
  [trace](https://docs.aws.amazon.com/lambda/latest/dg/lambda-x-ray.html).   When an error occurs, your function may be invoked multiple times. Retry
  behavior varies by error type,
  client, event source, and invocation type. For example, if you invoke a function
  asynchronously and it returns an
  error, Lambda executes the function up to two more times. For more information,
  see [Error handling and automatic retries in
  Lambda](https://docs.aws.amazon.com/lambda/latest/dg/invocation-retries.html).

  For [asynchronous invocation](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html),
  Lambda adds events to a queue before sending them to your function. If your
  function does not have enough capacity
  to keep up with the queue, events may be lost. Occasionally, your function may
  receive the same event multiple
  times, even if no error occurs. To retain events that were not processed,
  configure your function with a [dead-letter queue](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-dlq).

  The status code in the API response doesn't reflect function errors. Error codes
  are reserved for errors that
  prevent your function from executing, such as permissions errors,
  [quota](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html) errors, or issues with your function's code and
  configuration. For example, Lambda returns `TooManyRequestsException` if running
  the
  function would cause you to exceed a concurrency limit at either the account
  level
  (`ConcurrentInvocationLimitExceeded`) or function level
  (`ReservedFunctionConcurrentInvocationLimitExceeded`).

  For functions with a long timeout, your client might disconnect during
  synchronous invocation while it waits
  for a response. Configure your HTTP client, SDK, firewall, proxy, or operating
  system to allow for long
  connections with timeout or keep-alive settings.

  This operation requires permission for the
  [lambda:InvokeFunction](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html)
  action. For details on how to set up
  permissions for cross-account invocations, see [Granting function access to other
  accounts](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html#permissions-resource-xaccountinvoke).
  """
  @spec invoke(map(), String.t(), invocation_request(), list()) ::
          {:ok, invocation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invoke_errors()}
  def invoke(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/invocations"

    {headers, input} =
      [
        {"ClientContext", "X-Amz-Client-Context"},
        {"InvocationType", "X-Amz-Invocation-Type"},
        {"LogType", "X-Amz-Log-Type"}
      ]
      |> Request.build_params(input)

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
      headers,
      input,
      options,
      200
    )
  end

  @doc """

  For asynchronous function invocation, use `Invoke`.

  Invokes a function asynchronously.

  If you do use the InvokeAsync action, note that it doesn't support the use of
  X-Ray active tracing. Trace ID is not
  propagated to the function, even if X-Ray active tracing is turned on.
  """
  @spec invoke_async(map(), String.t(), invoke_async_request(), list()) ::
          {:ok, invoke_async_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invoke_async_errors()}
  def invoke_async(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2014-11-13/functions/#{AWS.Util.encode_uri(function_name)}/invoke-async"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Configure your Lambda functions to stream response payloads back to clients.

  For more information, see [Configuring a Lambda function to stream responses](https://docs.aws.amazon.com/lambda/latest/dg/configuration-response-streaming.html).

  This operation requires permission for the
  [lambda:InvokeFunction](https://docs.aws.amazon.com/IAM/latest/UserGuide/list_awslambda.html) action. For details on how to set up
  permissions for cross-account invocations, see [Granting function
  access to other
  accounts](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html#permissions-resource-xaccountinvoke).
  """
  @spec invoke_with_response_stream(
          map(),
          String.t(),
          invoke_with_response_stream_request(),
          list()
        ) ::
          {:ok, invoke_with_response_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invoke_with_response_stream_errors()}
  def invoke_with_response_stream(%Client{} = client, function_name, input, options \\ []) do
    url_path =
      "/2021-11-15/functions/#{AWS.Util.encode_uri(function_name)}/response-streaming-invocations"

    {headers, input} =
      [
        {"ClientContext", "X-Amz-Client-Context"},
        {"InvocationType", "X-Amz-Invocation-Type"},
        {"LogType", "X-Amz-Log-Type"}
      ]
      |> Request.build_params(input)

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
      headers,
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_aliases_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Returns a list of [code signing
  configurations](https://docs.aws.amazon.com/lambda/latest/dg/configuring-codesigning.html).

  A request returns up to 10,000 configurations per
  call. You can use the `MaxItems` parameter to return fewer configurations per
  call.
  """
  @spec list_code_signing_configs(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_code_signing_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Lists event source mappings.

  Specify an `EventSourceArn` to show only event source mappings for a
  single event source.
  """
  @spec list_event_source_mappings(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_event_source_mappings_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_function_event_invoke_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec list_function_url_configs(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_function_url_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Returns a list of Lambda functions, with the version-specific configuration of
  each.

  Lambda returns up to 50
  functions per call.

  Set `FunctionVersion` to `ALL` to include all published versions of each
  function in
  addition to the unpublished version.

  The `ListFunctions` operation returns a subset of the `FunctionConfiguration`
  fields.
  To get the additional fields (State, StateReasonCode, StateReason,
  LastUpdateStatus, LastUpdateStatusReason,
  LastUpdateStatusReasonCode, RuntimeVersionConfig) for a function or version, use
  `GetFunction`.
  """
  @spec list_functions(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_functions_response(), any()}
          | {:error, {:unexpected_response, any()}}
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

  You can use this method prior to deleting a
  code signing configuration, to verify that no functions are using it.
  """
  @spec list_functions_by_code_signing_config(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_functions_by_code_signing_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  to list only
  versions that indicate that they're compatible with that runtime. Specify a
  compatible architecture to include only
  layer versions that are compatible with that architecture.
  """
  @spec list_layer_versions(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_layer_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
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

  Specify a
  [runtime identifier](https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html)
  to list only layers that indicate that they're compatible with that
  runtime. Specify a compatible architecture to include only layers that are
  compatible with
  that [instruction set architecture](https://docs.aws.amazon.com/lambda/latest/dg/foundation-arch.html).
  """
  @spec list_layers(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_layers_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_provisioned_concurrency_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
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

  You can
  also view funciton tags with `GetFunction`.
  """
  @spec list_tags(map(), String.t(), list()) ::
          {:ok, list_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec list_versions_by_function(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_versions_by_function_response(), any()}
          | {:error, {:unexpected_response, any()}}
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

  Each time you call `PublishLayerVersion` with the same
  layer name, a new version is created.

  Add layers to your function with `CreateFunction` or
  `UpdateFunctionConfiguration`.
  """
  @spec publish_layer_version(map(), String.t(), publish_layer_version_request(), list()) ::
          {:ok, publish_layer_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, publish_layer_version_errors()}
  def publish_layer_version(%Client{} = client, layer_name, input, options \\ []) do
    url_path = "/2018-10-31/layers/#{AWS.Util.encode_uri(layer_name)}/versions"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a
  [version](https://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html)
  from the
  current code and configuration of a function.

  Use versions to create a snapshot of your function code and
  configuration that doesn't change.

  Lambda doesn't publish a version if the function's configuration and code
  haven't changed since the last
  version. Use `UpdateFunctionCode` or `UpdateFunctionConfiguration` to update the
  function before publishing a version.

  Clients can invoke versions directly or with an alias. To create an alias, use
  `CreateAlias`.
  """
  @spec publish_version(map(), String.t(), publish_version_request(), list()) ::
          {:ok, function_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, publish_version_errors()}
  def publish_version(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/versions"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Update the code signing configuration for the function.

  Changes to the code signing configuration take effect the
  next time a user tries to deploy a code package to the function.
  """
  @spec put_function_code_signing_config(
          map(),
          String.t(),
          put_function_code_signing_config_request(),
          list()
        ) ::
          {:ok, put_function_code_signing_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_function_code_signing_config_errors()}
  def put_function_code_signing_config(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2020-06-30/functions/#{AWS.Util.encode_uri(function_name)}/code-signing-config"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Sets the maximum number of simultaneous executions for a function, and reserves
  capacity for that concurrency
  level.

  Concurrency settings apply to the function as a whole, including all published
  versions and the unpublished
  version. Reserving concurrency both ensures that your function has capacity to
  process the specified number of
  events simultaneously, and prevents it from scaling beyond that level. Use
  `GetFunction` to see
  the current setting for a function.

  Use `GetAccountSettings` to see your Regional concurrency limit. You can reserve
  concurrency
  for as many functions as you like, as long as you leave at least 100
  simultaneous executions unreserved for
  functions that aren't configured with a per-function limit. For more
  information, see [Lambda function scaling](https://docs.aws.amazon.com/lambda/latest/dg/invocation-scaling.html).
  """
  @spec put_function_concurrency(map(), String.t(), put_function_concurrency_request(), list()) ::
          {:ok, concurrency(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_function_concurrency_errors()}
  def put_function_concurrency(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2017-10-31/functions/#{AWS.Util.encode_uri(function_name)}/concurrency"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Configures options for [asynchronous invocation](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html)
  on a function, version, or alias.

  If a configuration already exists for a function, version,
  or alias, this operation overwrites it. If you exclude any settings, they are
  removed. To set one option without
  affecting existing settings for other options, use
  `UpdateFunctionEventInvokeConfig`.

  By default, Lambda retries an asynchronous invocation twice if the function
  returns an error. It retains
  events in a queue for up to six hours. When an event fails all processing
  attempts or stays in the asynchronous
  invocation queue for too long, Lambda discards it. To retain discarded events,
  configure a dead-letter queue with
  `UpdateFunctionConfiguration`.

  To send an invocation record to a queue, topic, function, or event bus, specify
  a
  [destination](https://docs.aws.amazon.com/lambda/latest/dg/invocation-async.html#invocation-async-destinations).
  You can configure separate destinations for successful invocations (on-success)
  and events
  that fail all processing attempts (on-failure). You can configure destinations
  in addition to or instead of a
  dead-letter queue.
  """
  @spec put_function_event_invoke_config(
          map(),
          String.t(),
          put_function_event_invoke_config_request(),
          list()
        ) ::
          {:ok, function_event_invoke_config(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_function_event_invoke_config_errors()}
  def put_function_event_invoke_config(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2019-09-25/functions/#{AWS.Util.encode_uri(function_name)}/event-invoke-config"
    headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Sets your function's [recursive loop detection](https://docs.aws.amazon.com/lambda/latest/dg/invocation-recursion.html)
  configuration.

  When you configure a Lambda function to output to the same service or resource
  that invokes the function, it's possible to create
  an infinite recursive loop. For example, a Lambda function might write a message
  to an Amazon Simple Queue Service (Amazon SQS) queue, which then invokes the
  same
  function. This invocation causes the function to write another message to the
  queue, which in turn invokes the function again.

  Lambda can detect certain types of recursive loops shortly after they occur.
  When Lambda detects a recursive loop and your
  function's recursive loop detection configuration is set to `Terminate`, it
  stops your function being invoked and notifies
  you.
  """
  @spec put_function_recursion_config(
          map(),
          String.t(),
          put_function_recursion_config_request(),
          list()
        ) ::
          {:ok, put_function_recursion_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_function_recursion_config_errors()}
  def put_function_recursion_config(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2024-08-31/functions/#{AWS.Util.encode_uri(function_name)}/recursion-config"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Adds a provisioned concurrency configuration to a function's alias or version.
  """
  @spec put_provisioned_concurrency_config(
          map(),
          String.t(),
          put_provisioned_concurrency_config_request(),
          list()
        ) ::
          {:ok, put_provisioned_concurrency_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_provisioned_concurrency_config_errors()}
  def put_provisioned_concurrency_config(%Client{} = client, function_name, input, options \\ []) do
    url_path =
      "/2019-09-30/functions/#{AWS.Util.encode_uri(function_name)}/provisioned-concurrency"

    headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """

  The option to configure public-access settings, and to use the
  PutPublicAccessBlock and GetPublicAccessBlock APIs, won't be
  available in all Amazon Web Services Regions until September 30, 2024.

  Configure your function's public-access settings.

  To control public access to a Lambda function, you can choose whether to allow
  the creation of
  [resource-based policies](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html)
  that
  allow public access to that function. You can also block public access to a
  function, even if it has an existing resource-based
  policy that allows it.
  """
  @spec put_public_access_block_config(
          map(),
          String.t(),
          put_public_access_block_config_request(),
          list()
        ) ::
          {:ok, put_public_access_block_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_public_access_block_config_errors()}
  def put_public_access_block_config(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/2024-09-16/public-access-block/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """

  The option to create and modify full JSON resource-based policies, and to use
  the PutResourcePolicy, GetResourcePolicy, and DeleteResourcePolicy APIs, won't
  be
  available in all Amazon Web Services Regions until September 30, 2024.

  Adds a [resource-based policy](https://docs.aws.amazon.com/lambda/latest/dg/access-control-resource-based.html)
  to a function. You can use resource-based policies to grant access to other
  [Amazon Web Services accounts](https://docs.aws.amazon.com/lambda/latest/dg/permissions-function-cross-account.html),
  [organizations](https://docs.aws.amazon.com/lambda/latest/dg/permissions-function-organization.html), or
  [services](https://docs.aws.amazon.com/lambda/latest/dg/permissions-function-services.html).
  Resource-based policies
  apply to a single function, version, or alias.

  Adding a resource-based policy using this API action replaces any existing
  policy you've previously created. This means that if
  you've previously added resource-based permissions to a function using the
  `AddPermission` action, those
  permissions will be overwritten by your new policy.
  """
  @spec put_resource_policy(map(), String.t(), put_resource_policy_request(), list()) ::
          {:ok, put_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/2024-09-16/resource-policy/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Sets the runtime management configuration for a function's version.

  For more information,
  see [Runtime updates](https://docs.aws.amazon.com/lambda/latest/dg/runtimes-update.html).
  """
  @spec put_runtime_management_config(
          map(),
          String.t(),
          put_runtime_management_config_request(),
          list()
        ) ::
          {:ok, put_runtime_management_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_runtime_management_config_errors()}
  def put_runtime_management_config(%Client{} = client, function_name, input, options \\ []) do
    url_path =
      "/2021-07-20/functions/#{AWS.Util.encode_uri(function_name)}/runtime-management-config"

    headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Removes a statement from the permissions policy for a version of an [Lambda layer](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html).

  For more information, see
  `AddLayerVersionPermission`.
  """
  @spec remove_layer_version_permission(
          map(),
          String.t(),
          String.t(),
          String.t(),
          remove_layer_version_permission_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Revokes function-use permission from an Amazon Web Servicesservice or another
  Amazon Web Services account.

  You
  can get the ID of the statement from the output of `GetPolicy`.
  """
  @spec remove_permission(map(), String.t(), String.t(), remove_permission_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_permission_errors()}
  def remove_permission(%Client{} = client, function_name, statement_id, input, options \\ []) do
    url_path =
      "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/policy/#{AWS.Util.encode_uri(statement_id)}"

    headers = []

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
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Adds [tags](https://docs.aws.amazon.com/lambda/latest/dg/tagging.html) to a
  function, event source mapping, or code signing configuration.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource, input, options \\ []) do
    url_path = "/2017-03-31/tags/#{AWS.Util.encode_uri(resource)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Removes [tags](https://docs.aws.amazon.com/lambda/latest/dg/tagging.html) from a
  function, event source mapping, or code signing configuration.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource, input, options \\ []) do
    url_path = "/2017-03-31/tags/#{AWS.Util.encode_uri(resource)}"
    headers = []

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
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates the configuration of a Lambda function
  [alias](https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html).
  """
  @spec update_alias(map(), String.t(), String.t(), update_alias_request(), list()) ::
          {:ok, alias_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_alias_errors()}
  def update_alias(%Client{} = client, function_name, name, input, options \\ []) do
    url_path =
      "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/aliases/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Update the code signing configuration.

  Changes to the code signing configuration take effect the next time a
  user tries to deploy a code package to the function.
  """
  @spec update_code_signing_config(
          map(),
          String.t(),
          update_code_signing_config_request(),
          list()
        ) ::
          {:ok, update_code_signing_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_code_signing_config_errors()}
  def update_code_signing_config(
        %Client{} = client,
        code_signing_config_arn,
        input,
        options \\ []
      ) do
    url_path = "/2020-04-22/code-signing-configs/#{AWS.Util.encode_uri(code_signing_config_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an event source mapping.

  You can change the function that Lambda invokes, or pause
  invocation and resume later from the same location.

  For details about how to configure different event sources, see the following
  topics.

    *

  [
  Amazon DynamoDB
  Streams](https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-dynamodb-eventsourcemapping)

    *

  [
  Amazon
  Kinesis](https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-eventsourcemapping)

    *

  [
  Amazon
  SQS](https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#events-sqs-eventsource)

    *

  [
  Amazon MQ and
  RabbitMQ](https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-eventsourcemapping)

    *

  [
  Amazon MSK](https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html)

    *

  [
  Apache Kafka](https://docs.aws.amazon.com/lambda/latest/dg/kafka-smaa.html)

    *

  [
  Amazon
  DocumentDB](https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html)

  The following error handling options are available only for stream sources
  (DynamoDB and Kinesis):

    *

  `BisectBatchOnFunctionError` – If the function returns an error, split the batch
  in two and retry.

    *

  `DestinationConfig` – Send discarded records to an Amazon SQS queue or Amazon
  SNS topic.

    *

  `MaximumRecordAgeInSeconds` – Discard records older than the specified age. The
  default value is infinite (-1). When set to infinite (-1), failed records are
  retried until the record expires

    *

  `MaximumRetryAttempts` – Discard records after the specified number of retries.
  The default value is infinite (-1). When set to infinite (-1), failed records
  are retried until the record expires.

    *

  `ParallelizationFactor` – Process multiple batches from each shard concurrently.

  For information about which configuration parameters apply to each event source,
  see the following topics.

    *

  [
  Amazon DynamoDB
  Streams](https://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html#services-ddb-params)

    *

  [
  Amazon
  Kinesis](https://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html#services-kinesis-params)

    *

  [
  Amazon
  SQS](https://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html#services-sqs-params)

    *

  [
  Amazon MQ and
  RabbitMQ](https://docs.aws.amazon.com/lambda/latest/dg/with-mq.html#services-mq-params)

    *

  [
  Amazon
  MSK](https://docs.aws.amazon.com/lambda/latest/dg/with-msk.html#services-msk-parms)

    *

  [
  Apache
  Kafka](https://docs.aws.amazon.com/lambda/latest/dg/with-kafka.html#services-kafka-parms)

    *

  [
  Amazon
  DocumentDB](https://docs.aws.amazon.com/lambda/latest/dg/with-documentdb.html#docdb-configuration)
  """
  @spec update_event_source_mapping(
          map(),
          String.t(),
          update_event_source_mapping_request(),
          list()
        ) ::
          {:ok, event_source_mapping_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_event_source_mapping_errors()}
  def update_event_source_mapping(%Client{} = client, uuid, input, options \\ []) do
    url_path = "/2015-03-31/event-source-mappings/#{AWS.Util.encode_uri(uuid)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates a Lambda function's code.

  If code signing is enabled for the function, the code package
  must be signed by a trusted publisher. For more information, see [Configuring code signing for
  Lambda](https://docs.aws.amazon.com/lambda/latest/dg/configuration-codesigning.html).

  If the function's package type is `Image`, then you must specify the code
  package in
  `ImageUri` as the URI of a [container image](https://docs.aws.amazon.com/lambda/latest/dg/lambda-images.html) in the
  Amazon ECR registry.

  If the function's package type is `Zip`, then you must specify the deployment
  package as a [.zip file archive](https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-package.html#gettingstarted-package-zip).
  Enter the Amazon S3 bucket and key of the code .zip file location. You can also
  provide
  the function code inline using the `ZipFile` field.

  The code in the deployment package must be compatible with the target
  instruction set architecture of the
  function (`x86-64` or `arm64`).

  The function's code is locked when you publish a version. You can't modify the
  code of a published version,
  only the unpublished version.

  For a function defined as a container image, Lambda resolves the image tag to an
  image digest. In
  Amazon ECR, if you update the image tag to a new image, Lambda does not
  automatically
  update the function.
  """
  @spec update_function_code(map(), String.t(), update_function_code_request(), list()) ::
          {:ok, function_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_function_code_errors()}
  def update_function_code(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/code"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Modify the version-specific settings of a Lambda function.

  When you update a function, Lambda provisions an instance of the function and
  its supporting
  resources. If your function connects to a VPC, this process can take a minute.
  During this time, you can't modify
  the function, but you can still invoke it. The `LastUpdateStatus`,
  `LastUpdateStatusReason`,
  and `LastUpdateStatusReasonCode` fields in the response from
  `GetFunctionConfiguration`
  indicate when the update is complete and the function is processing events with
  the new configuration. For more
  information, see [Lambda function
  states](https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html).

  These settings can vary between versions of a function and are locked when you
  publish a version. You can't
  modify the configuration of a published version, only the unpublished version.

  To configure function concurrency, use `PutFunctionConcurrency`. To grant invoke
  permissions
  to an Amazon Web Services account or Amazon Web Servicesservice, use
  `AddPermission`.
  """
  @spec update_function_configuration(
          map(),
          String.t(),
          update_function_configuration_request(),
          list()
        ) ::
          {:ok, function_configuration(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_function_configuration_errors()}
  def update_function_configuration(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2015-03-31/functions/#{AWS.Util.encode_uri(function_name)}/configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the configuration for asynchronous invocation for a function, version,
  or alias.

  To configure options for asynchronous invocation, use
  `PutFunctionEventInvokeConfig`.
  """
  @spec update_function_event_invoke_config(
          map(),
          String.t(),
          update_function_event_invoke_config_request(),
          list()
        ) ::
          {:ok, function_event_invoke_config(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_function_event_invoke_config_errors()}
  def update_function_event_invoke_config(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2019-09-25/functions/#{AWS.Util.encode_uri(function_name)}/event-invoke-config"
    headers = []

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
      headers,
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
          String.t(),
          update_function_url_config_request(),
          list()
        ) ::
          {:ok, update_function_url_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_function_url_config_errors()}
  def update_function_url_config(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2021-10-31/functions/#{AWS.Util.encode_uri(function_name)}/url"
    headers = []

    {query_params, input} =
      [
        {"Qualifier", "Qualifier"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
