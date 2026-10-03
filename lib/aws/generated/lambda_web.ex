# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LambdaWeb do
  @moduledoc """
  The AWS Lambda Web Functions APIs (`LambdaWeb` namespace) are experimental and
  for internal AWS use only.

  They are not yet available to external customers.

  AWS Lambda Web Functions let you run web applications and APIs as HTTP servers
  on Lambda. A web function has one or more immutable revisions (code and
  configuration) and one or more endpoints that expose it over HTTPS.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_quotas() :: %{
        "maxEndpointsPerFunction" => [integer()],
        "maxRevisionsPerFunction" => [integer()],
        "maxTotalArmVCpus" => [integer()],
        "maxTotalRateLimit" => [integer()]
      }

  """
  @type account_quotas() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      account_usage() :: %{
        "functionCount" => [integer()]
      }

  """
  @type account_usage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      build_config() :: %{
        "codeConfig" => code_config(),
        "runtimeConfig" => runtime_config()
      }

  """
  @type build_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_config() :: %{
        "s3Object" => s3_object()
      }

  """
  @type code_config() :: %{(String.t() | atom()) => any()}

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

      create_web_function_endpoint_request() :: %{
        optional("autoDeploymentMode") => list(any()),
        optional("description") => String.t() | atom(),
        optional("regions") => list(String.t() | atom()),
        optional("revisionWeights") => list(revision_weight()),
        optional("scalingConfig") => scaling_config(),
        optional("throttleConfig") => throttle_config(),
        required("authType") => list(any()),
        required("endpointName") => String.t() | atom(),
        required("endpointType") => list(any())
      }

  """
  @type create_web_function_endpoint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_web_function_endpoint_response() :: %{
        "authType" => list(any()),
        "autoDeploymentMode" => list(any()),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "domainName" => String.t() | atom(),
        "endpointArn" => String.t() | atom(),
        "endpointName" => String.t() | atom(),
        "endpointType" => list(any()),
        "functionArn" => String.t() | atom(),
        "regionalEndpoints" => map(),
        "regions" => list(String.t() | atom()),
        "revisionWeights" => list(revision_weight()),
        "scalingConfig" => scaling_config(),
        "state" => list(any()),
        "stateReason" => [String.t() | atom()],
        "throttleConfig" => throttle_config(),
        "updateStatus" => list(any()),
        "updateStatusReason" => [String.t() | atom()],
        "updatedAt" => non_neg_integer()
      }

  """
  @type create_web_function_endpoint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_web_function_request() :: %{
        optional("endpointConfig") => endpoint_config(),
        optional("revisionConfig") => revision_config(),
        optional("tags") => map(),
        required("functionName") => String.t() | atom()
      }

  """
  @type create_web_function_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_web_function_response() :: %{
        "createdAt" => non_neg_integer(),
        "endpoint" => function_endpoint_summary(),
        "functionArn" => String.t() | atom(),
        "functionName" => String.t() | atom(),
        "revision" => function_revision_summary(),
        "state" => list(any()),
        "stateReason" => [String.t() | atom()],
        "tags" => map(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type create_web_function_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_web_function_revision_request() :: %{
        optional("description") => String.t() | atom(),
        optional("kmsKeyArn") => String.t() | atom(),
        required("buildConfig") => build_config(),
        required("serviceConfig") => service_config()
      }

  """
  @type create_web_function_revision_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_web_function_revision_response() :: %{
        "buildConfig" => build_config(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "errors" => list(revision_error()),
        "functionArn" => String.t() | atom(),
        "kmsKeyArn" => String.t() | atom(),
        "revisionArn" => String.t() | atom(),
        "revisionId" => String.t() | atom(),
        "serviceConfig" => service_config(),
        "state" => list(any()),
        "stateReason" => [String.t() | atom()]
      }

  """
  @type create_web_function_revision_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_resource_policy_request() :: %{
        optional("revisionId") => String.t() | atom()
      }

  """
  @type delete_resource_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_web_function_endpoint_request() :: %{}

  """
  @type delete_web_function_endpoint_request() :: %{}

  @typedoc """

  ## Example:

      delete_web_function_request() :: %{}

  """
  @type delete_web_function_request() :: %{}

  @typedoc """

  ## Example:

      delete_web_function_revision_request() :: %{}

  """
  @type delete_web_function_revision_request() :: %{}

  @typedoc """

  ## Example:

      endpoint_config() :: %{
        "authType" => list(any()),
        "autoDeploymentMode" => list(any()),
        "description" => String.t() | atom(),
        "endpointName" => String.t() | atom(),
        "endpointType" => list(any()),
        "regions" => list(String.t() | atom()),
        "scalingConfig" => scaling_config(),
        "throttleConfig" => throttle_config()
      }

  """
  @type endpoint_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter() :: %{
        "name" => [String.t() | atom()],
        "values" => list([String.t() | atom()]())
      }

  """
  @type filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      function_endpoint_summary() :: %{
        "authType" => list(any()),
        "autoDeploymentMode" => list(any()),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "domainName" => String.t() | atom(),
        "endpointArn" => String.t() | atom(),
        "endpointName" => String.t() | atom(),
        "endpointType" => list(any()),
        "regions" => list(String.t() | atom()),
        "revisionWeights" => list(revision_weight()),
        "scalingConfig" => scaling_config(),
        "state" => list(any()),
        "stateReason" => [String.t() | atom()],
        "throttleConfig" => throttle_config(),
        "updateStatus" => list(any()),
        "updateStatusReason" => [String.t() | atom()],
        "updatedAt" => non_neg_integer()
      }

  """
  @type function_endpoint_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      function_revision_summary() :: %{
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "revisionArn" => String.t() | atom(),
        "revisionId" => String.t() | atom(),
        "state" => list(any()),
        "stateReason" => [String.t() | atom()]
      }

  """
  @type function_revision_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      function_summary() :: %{
        "createdAt" => non_neg_integer(),
        "functionArn" => String.t() | atom(),
        "functionName" => String.t() | atom(),
        "state" => list(any()),
        "stateReason" => [String.t() | atom()],
        "updatedAt" => non_neg_integer()
      }

  """
  @type function_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_resource_policy_request() :: %{}

  """
  @type get_resource_policy_request() :: %{}

  @typedoc """

  ## Example:

      get_resource_policy_response() :: %{
        "policy" => String.t() | atom(),
        "revisionId" => String.t() | atom()
      }

  """
  @type get_resource_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_web_account_settings_request() :: %{}

  """
  @type get_web_account_settings_request() :: %{}

  @typedoc """

  ## Example:

      get_web_account_settings_response() :: %{
        "accountQuotas" => account_quotas(),
        "accountUsage" => account_usage()
      }

  """
  @type get_web_account_settings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_web_function_endpoint_request() :: %{}

  """
  @type get_web_function_endpoint_request() :: %{}

  @typedoc """

  ## Example:

      get_web_function_endpoint_response() :: %{
        "authType" => list(any()),
        "autoDeploymentMode" => list(any()),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "domainName" => String.t() | atom(),
        "endpointArn" => String.t() | atom(),
        "endpointName" => String.t() | atom(),
        "endpointType" => list(any()),
        "functionArn" => String.t() | atom(),
        "regionalEndpoints" => map(),
        "regions" => list(String.t() | atom()),
        "revisionWeights" => list(revision_weight()),
        "scalingConfig" => scaling_config(),
        "state" => list(any()),
        "stateReason" => [String.t() | atom()],
        "throttleConfig" => throttle_config(),
        "updateStatus" => list(any()),
        "updateStatusReason" => [String.t() | atom()],
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_web_function_endpoint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_web_function_request() :: %{}

  """
  @type get_web_function_request() :: %{}

  @typedoc """

  ## Example:

      get_web_function_response() :: %{
        "createdAt" => non_neg_integer(),
        "functionArn" => String.t() | atom(),
        "functionName" => String.t() | atom(),
        "state" => list(any()),
        "stateReason" => [String.t() | atom()],
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_web_function_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_web_function_revision_request() :: %{}

  """
  @type get_web_function_revision_request() :: %{}

  @typedoc """

  ## Example:

      get_web_function_revision_response() :: %{
        "buildConfig" => build_config(),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "errors" => list(revision_error()),
        "functionArn" => String.t() | atom(),
        "kmsKeyArn" => String.t() | atom(),
        "revisionArn" => String.t() | atom(),
        "revisionId" => String.t() | atom(),
        "serviceConfig" => service_config(),
        "state" => list(any()),
        "stateReason" => [String.t() | atom()]
      }

  """
  @type get_web_function_revision_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_request() :: %{}

  """
  @type list_tags_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_web_function_endpoints_request() :: %{
        optional("filters") => list(filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_web_function_endpoints_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_web_function_endpoints_response() :: %{
        "endpoints" => list(function_endpoint_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_web_function_endpoints_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_web_function_revisions_request() :: %{
        optional("filters") => list(filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_web_function_revisions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_web_function_revisions_response() :: %{
        "nextToken" => String.t() | atom(),
        "revisions" => list(function_revision_summary())
      }

  """
  @type list_web_function_revisions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_web_functions_request() :: %{
        optional("filters") => list(filter()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_web_functions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_web_functions_response() :: %{
        "functions" => list(function_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_web_functions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      logging_config() :: %{
        "applicationLogLevel" => list(any()),
        "logGroup" => [String.t() | atom()],
        "systemLogLevel" => list(any())
      }

  """
  @type logging_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_resource_policy_request() :: %{
        optional("revisionId") => String.t() | atom(),
        required("policy") => String.t() | atom()
      }

  """
  @type put_resource_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_resource_policy_response() :: %{
        "policy" => String.t() | atom(),
        "revisionId" => String.t() | atom()
      }

  """
  @type put_resource_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      regional_endpoint() :: %{
        "authType" => list(any()),
        "domainName" => String.t() | atom(),
        "revisionWeights" => list(revision_weight()),
        "scalingConfig" => scaling_config(),
        "state" => list(any()),
        "stateReason" => [String.t() | atom()],
        "throttleConfig" => throttle_config(),
        "updateStatus" => list(any()),
        "updateStatusReason" => [String.t() | atom()]
      }

  """
  @type regional_endpoint() :: %{(String.t() | atom()) => any()}

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

      revision_config() :: %{
        "buildConfig" => build_config(),
        "description" => String.t() | atom(),
        "kmsKeyArn" => String.t() | atom(),
        "serviceConfig" => service_config()
      }

  """
  @type revision_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      revision_error() :: %{
        "attribute" => [String.t() | atom()],
        "errorCode" => [String.t() | atom()],
        "errorMessage" => [String.t() | atom()]
      }

  """
  @type revision_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      revision_weight() :: %{
        "revisionId" => String.t() | atom(),
        "weight" => [integer()]
      }

  """
  @type revision_weight() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      runtime_config() :: %{
        "runtime" => [String.t() | atom()]
      }

  """
  @type runtime_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_object() :: %{
        "bucket" => [String.t() | atom()],
        "key" => [String.t() | atom()],
        "versionId" => [String.t() | atom()]
      }

  """
  @type s3_object() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scaling_config() :: %{
        "maxEnvironments" => [integer()]
      }

  """
  @type scaling_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_config() :: %{
        "environmentVariables" => map(),
        "executionRoleArn" => String.t() | atom(),
        "maxConcurrencyPerEnvironment" => [integer()],
        "telemetryConfig" => telemetry_config(),
        "timeoutSeconds" => [integer()]
      }

  """
  @type service_config() :: %{(String.t() | atom()) => any()}

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

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      telemetry_config() :: %{
        "loggingConfig" => logging_config()
      }

  """
  @type telemetry_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttle_config() :: %{
        "rateLimit" => [integer()]
      }

  """
  @type throttle_config() :: %{(String.t() | atom()) => any()}

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

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_web_function_endpoint_request() :: %{
        optional("authType") => list(any()),
        optional("autoDeploymentMode") => list(any()),
        optional("description") => String.t() | atom(),
        optional("revisionWeights") => list(revision_weight()),
        optional("scalingConfig") => scaling_config(),
        optional("throttleConfig") => throttle_config()
      }

  """
  @type update_web_function_endpoint_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_web_function_endpoint_response() :: %{
        "authType" => list(any()),
        "autoDeploymentMode" => list(any()),
        "createdAt" => non_neg_integer(),
        "description" => String.t() | atom(),
        "domainName" => String.t() | atom(),
        "endpointArn" => String.t() | atom(),
        "endpointName" => String.t() | atom(),
        "endpointType" => list(any()),
        "functionArn" => String.t() | atom(),
        "regionalEndpoints" => map(),
        "regions" => list(String.t() | atom()),
        "revisionWeights" => list(revision_weight()),
        "scalingConfig" => scaling_config(),
        "state" => list(any()),
        "stateReason" => [String.t() | atom()],
        "throttleConfig" => throttle_config(),
        "updateStatus" => list(any()),
        "updateStatusReason" => [String.t() | atom()],
        "updatedAt" => non_neg_integer()
      }

  """
  @type update_web_function_endpoint_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @type create_web_function_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_web_function_endpoint_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_web_function_revision_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_resource_policy_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_web_function_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_web_function_endpoint_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_web_function_revision_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type get_resource_policy_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_web_account_settings_errors() ::
          throttling_exception() | internal_server_exception() | access_denied_exception()

  @type get_web_function_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_web_function_endpoint_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_web_function_revision_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_tags_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_web_function_endpoints_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_web_function_revisions_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_web_functions_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type put_resource_policy_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type tag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type untag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type update_web_function_endpoint_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2025-03-07",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "lambda",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Lambda Web",
      signature_version: "v4",
      signing_name: "lambda",
      target_prefix: nil
    }
  end

  @doc """
  Creates a web function with an initial revision and endpoint.

  To create a web function, you provide the function name, revision configuration
  (code and service settings), and endpoint configuration.

  To use this operation, you must have the `CreateWebFunction` permission on the
  web function. You don't need separate permissions for the initial revision or
  endpoint.

  This API is experimental and for internal AWS use only. It is not yet available
  to external customers.
  """
  @spec create_web_function(map(), create_web_function_request(), list()) ::
          {:ok, create_web_function_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_web_function_errors()}
  def create_web_function(%Client{} = client, input, options \\ []) do
    url_path = "/2025-03-07/web-functions"
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
  Creates an endpoint for a web function.

  An endpoint exposes the web function over HTTPS and routes traffic to one or
  more revisions.

  To use this operation, you must have the `CreateWebFunctionEndpoint` permission
  on the web function, not on the endpoint being created.

  This API is experimental and for internal AWS use only. It is not yet available
  to external customers.
  """
  @spec create_web_function_endpoint(
          map(),
          String.t() | atom(),
          create_web_function_endpoint_request(),
          list()
        ) ::
          {:ok, create_web_function_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_web_function_endpoint_errors()}
  def create_web_function_endpoint(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2025-03-07/web-functions/#{AWS.Util.encode_uri(function_name)}/endpoints"
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
  Creates an immutable revision for a web function.

  A revision represents a specific version of the function code and configuration.

  To use this operation, you must have the `CreateWebFunctionRevision` permission
  on the web function, not on the revision being created.

  This API is experimental and for internal AWS use only. It is not yet available
  to external customers.
  """
  @spec create_web_function_revision(
          map(),
          String.t() | atom(),
          create_web_function_revision_request(),
          list()
        ) ::
          {:ok, create_web_function_revision_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_web_function_revision_errors()}
  def create_web_function_revision(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2025-03-07/web-functions/#{AWS.Util.encode_uri(function_name)}/revisions"
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
  Removes the resource-based policy from a web function.

  This API is experimental and for internal AWS use only. It is not yet available
  to external customers.
  """
  @spec delete_resource_policy(
          map(),
          String.t() | atom(),
          delete_resource_policy_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/2025-03-07/resource-policy/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"revisionId", "RevisionId"}
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
  Deletes a web function and all of its associated revisions and endpoints.

  To use this operation, you must have the `DeleteWebFunction` permission on the
  web function. You don't need the `DeleteWebFunctionRevision` or
  `DeleteWebFunctionEndpoint` permission.

  This API is experimental and for internal AWS use only. It is not yet available
  to external customers.
  """
  @spec delete_web_function(map(), String.t() | atom(), delete_web_function_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_web_function_errors()}
  def delete_web_function(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2025-03-07/web-functions/#{AWS.Util.encode_uri(function_name)}"
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
  Deletes a web function endpoint.

  This API is experimental and for internal AWS use only. It is not yet available
  to external customers.
  """
  @spec delete_web_function_endpoint(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_web_function_endpoint_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_web_function_endpoint_errors()}
  def delete_web_function_endpoint(
        %Client{} = client,
        endpoint_name,
        function_name,
        input,
        options \\ []
      ) do
    url_path =
      "/2025-03-07/web-functions/#{AWS.Util.encode_uri(function_name)}/endpoints/#{AWS.Util.encode_uri(endpoint_name)}"

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
  Deletes a web function revision.

  You cannot delete a revision that is currently serving traffic on an endpoint.

  This API is experimental and for internal AWS use only. It is not yet available
  to external customers.
  """
  @spec delete_web_function_revision(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_web_function_revision_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_web_function_revision_errors()}
  def delete_web_function_revision(
        %Client{} = client,
        function_name,
        revision_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2025-03-07/web-functions/#{AWS.Util.encode_uri(function_name)}/revisions/#{AWS.Util.encode_uri(revision_id)}"

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
  Retrieves the resource-based policy attached to a web function.

  This API is experimental and for internal AWS use only. It is not yet available
  to external customers.
  """
  @spec get_resource_policy(map(), String.t() | atom(), list()) ::
          {:ok, get_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_policy_errors()}
  def get_resource_policy(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/2025-03-07/resource-policy/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves details about your AWS Lambda Web Functions account settings for the
  current AWS Region, including the quotas that apply to web functions and your
  current usage.

  This API is experimental and for internal AWS use only. It is not yet available
  to external customers.
  """
  @spec get_web_account_settings(map(), list()) ::
          {:ok, get_web_account_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_web_account_settings_errors()}
  def get_web_account_settings(%Client{} = client, options \\ []) do
    url_path = "/2025-03-07/web-account-settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves details about a web function, including its current state and
  configuration.

  This API is experimental and for internal AWS use only. It is not yet available
  to external customers.
  """
  @spec get_web_function(map(), String.t() | atom(), list()) ::
          {:ok, get_web_function_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_web_function_errors()}
  def get_web_function(%Client{} = client, function_name, options \\ []) do
    url_path = "/2025-03-07/web-functions/#{AWS.Util.encode_uri(function_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves details about a web function endpoint, including its current state,
  configuration, and domain name.

  This API is experimental and for internal AWS use only. It is not yet available
  to external customers.
  """
  @spec get_web_function_endpoint(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_web_function_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_web_function_endpoint_errors()}
  def get_web_function_endpoint(%Client{} = client, endpoint_name, function_name, options \\ []) do
    url_path =
      "/2025-03-07/web-functions/#{AWS.Util.encode_uri(function_name)}/endpoints/#{AWS.Util.encode_uri(endpoint_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves details about a web function revision, including its state and
  configuration.

  This API is experimental and for internal AWS use only. It is not yet available
  to external customers.
  """
  @spec get_web_function_revision(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_web_function_revision_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_web_function_revision_errors()}
  def get_web_function_revision(%Client{} = client, function_name, revision_id, options \\ []) do
    url_path =
      "/2025-03-07/web-functions/#{AWS.Util.encode_uri(function_name)}/revisions/#{AWS.Util.encode_uri(revision_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of tags applied to a web function.

  This API is experimental and for internal AWS use only. It is not yet available
  to external customers.
  """
  @spec list_tags(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_errors()}
  def list_tags(%Client{} = client, resource, options \\ []) do
    url_path = "/2025-03-07/tags/#{AWS.Util.encode_uri(resource)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists endpoints for a web function.

  We recommend using pagination to ensure that the operation returns quickly and
  successfully.

  This API is experimental and for internal AWS use only. It is not yet available
  to external customers.
  """
  @spec list_web_function_endpoints(
          map(),
          String.t() | atom(),
          list_web_function_endpoints_request(),
          list()
        ) ::
          {:ok, list_web_function_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_web_function_endpoints_errors()}
  def list_web_function_endpoints(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2025-03-07/web-functions/#{AWS.Util.encode_uri(function_name)}/list-endpoints"
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
  Lists revisions for a web function.

  We recommend using pagination to ensure that the operation returns quickly and
  successfully.

  This API is experimental and for internal AWS use only. It is not yet available
  to external customers.
  """
  @spec list_web_function_revisions(
          map(),
          String.t() | atom(),
          list_web_function_revisions_request(),
          list()
        ) ::
          {:ok, list_web_function_revisions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_web_function_revisions_errors()}
  def list_web_function_revisions(%Client{} = client, function_name, input, options \\ []) do
    url_path = "/2025-03-07/web-functions/#{AWS.Util.encode_uri(function_name)}/list-revisions"
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
  Lists web functions in your account.

  We recommend using pagination to ensure that the operation returns quickly and
  successfully.

  This API is experimental and for internal AWS use only. It is not yet available
  to external customers.
  """
  @spec list_web_functions(map(), list_web_functions_request(), list()) ::
          {:ok, list_web_functions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_web_functions_errors()}
  def list_web_functions(%Client{} = client, input, options \\ []) do
    url_path = "/2025-03-07/web-functions"
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
  Adds or updates a resource-based policy on a web function.

  A resource-based policy grants permissions to other AWS accounts or services to
  perform actions on the web function.

  This API is experimental and for internal AWS use only. It is not yet available
  to external customers.
  """
  @spec put_resource_policy(map(), String.t() | atom(), put_resource_policy_request(), list()) ::
          {:ok, put_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/2025-03-07/resource-policy/#{AWS.Util.encode_uri(resource_arn)}"
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
  Adds tags to a web function.

  If a tag key already exists, the existing value is overwritten with the new
  value.

  This API is experimental and for internal AWS use only. It is not yet available
  to external customers.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource, input, options \\ []) do
    url_path = "/2025-03-07/tags/#{AWS.Util.encode_uri(resource)}"
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
  Removes tags from a web function.

  This API is experimental and for internal AWS use only. It is not yet available
  to external customers.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource, input, options \\ []) do
    url_path = "/2025-03-07/tags/#{AWS.Util.encode_uri(resource)}"
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
      204
    )
  end

  @doc """
  Updates the configuration of a web function endpoint.

  You can modify the authorization type, auto-deployment mode, revision weights,
  scaling, and throttling settings.

  This API is experimental and for internal AWS use only. It is not yet available
  to external customers.
  """
  @spec update_web_function_endpoint(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_web_function_endpoint_request(),
          list()
        ) ::
          {:ok, update_web_function_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_web_function_endpoint_errors()}
  def update_web_function_endpoint(
        %Client{} = client,
        endpoint_name,
        function_name,
        input,
        options \\ []
      ) do
    url_path =
      "/2025-03-07/web-functions/#{AWS.Util.encode_uri(function_name)}/endpoints/#{AWS.Util.encode_uri(endpoint_name)}"

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
      202
    )
  end
end
