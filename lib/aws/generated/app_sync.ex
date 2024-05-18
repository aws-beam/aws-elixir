# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AppSync do
  @moduledoc """
  AppSync provides API actions for creating and interacting with data sources
  using GraphQL
  from your application.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      data_source_introspection_model_index() :: %{
        "fields" => list(String.t()()),
        "name" => String.t()
      }

  """
  @type data_source_introspection_model_index() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_type_request() :: %{
        required("format") => list(any())
      }

  """
  @type get_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_merged_graphql_api_response() :: %{
        "sourceApiAssociation" => source_api_association()
      }

  """
  @type associate_merged_graphql_api_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_domain_names_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_domain_names_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evaluate_code_response() :: %{
        "error" => evaluate_code_error_detail(),
        "evaluationResult" => String.t(),
        "logs" => list(String.t()())
      }

  """
  @type evaluate_code_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      code_error_location() :: %{
        "column" => integer(),
        "line" => integer(),
        "span" => integer()
      }

  """
  @type code_error_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_type_request() :: %{}

  """
  @type delete_type_request() :: %{}

  @typedoc """

  ## Example:

      list_resolvers_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_resolvers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      flush_api_cache_request() :: %{}

  """
  @type flush_api_cache_request() :: %{}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_type_response() :: %{}

  """
  @type delete_type_response() :: %{}

  @typedoc """

  ## Example:

      internal_failure_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_source_graphql_api_request() :: %{}

  """
  @type disassociate_source_graphql_api_request() :: %{}

  @typedoc """

  ## Example:

      list_api_keys_response() :: %{
        "apiKeys" => list(api_key()()),
        "nextToken" => String.t()
      }

  """
  @type list_api_keys_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lambda_conflict_handler_config() :: %{
        "lambdaConflictHandlerArn" => String.t()
      }

  """
  @type lambda_conflict_handler_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evaluate_code_error_detail() :: %{
        "codeErrors" => list(code_error()()),
        "message" => String.t()
      }

  """
  @type evaluate_code_error_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "message" => String.t()
      }

  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_source_api_associations_response() :: %{
        "nextToken" => String.t(),
        "sourceApiAssociationSummaries" => list(source_api_association_summary()())
      }

  """
  @type list_source_api_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_functions_response() :: %{
        "functions" => list(function_configuration()()),
        "nextToken" => String.t()
      }

  """
  @type list_functions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_types_response() :: %{
        "nextToken" => String.t(),
        "types" => list(type()())
      }

  """
  @type list_types_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      api_limit_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type api_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_resolver_response() :: %{
        "resolver" => resolver()
      }

  """
  @type update_resolver_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_data_source_request() :: %{
        optional("description") => String.t(),
        optional("dynamodbConfig") => dynamodb_data_source_config(),
        optional("elasticsearchConfig") => elasticsearch_data_source_config(),
        optional("eventBridgeConfig") => event_bridge_data_source_config(),
        optional("httpConfig") => http_data_source_config(),
        optional("lambdaConfig") => lambda_data_source_config(),
        optional("metricsConfig") => list(any()),
        optional("openSearchServiceConfig") => open_search_service_data_source_config(),
        optional("relationalDatabaseConfig") => relational_database_data_source_config(),
        optional("serviceRoleArn") => String.t(),
        required("name") => String.t(),
        required("type") => list(any())
      }

  """
  @type create_data_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_source_introspection_model_field() :: %{
        "length" => float(),
        "name" => String.t(),
        "type" => data_source_introspection_model_field_type()
      }

  """
  @type data_source_introspection_model_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lambda_authorizer_config() :: %{
        "authorizerResultTtlInSeconds" => integer(),
        "authorizerUri" => String.t(),
        "identityValidationExpression" => String.t()
      }

  """
  @type lambda_authorizer_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      delete_graphql_api_response() :: %{}

  """
  @type delete_graphql_api_response() :: %{}

  @typedoc """

  ## Example:

      list_graphql_apis_response() :: %{
        "graphqlApis" => list(graphql_api()()),
        "nextToken" => String.t()
      }

  """
  @type list_graphql_apis_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_resolver_request() :: %{}

  """
  @type get_resolver_request() :: %{}

  @typedoc """

  ## Example:

      delete_domain_name_response() :: %{}

  """
  @type delete_domain_name_response() :: %{}

  @typedoc """

  ## Example:

      additional_authentication_provider() :: %{
        "authenticationType" => list(any()),
        "lambdaAuthorizerConfig" => lambda_authorizer_config(),
        "openIDConnectConfig" => open_id_connect_config(),
        "userPoolConfig" => cognito_user_pool_config()
      }

  """
  @type additional_authentication_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_source_api_associations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_source_api_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_source_api_association_response() :: %{
        "sourceApiAssociation" => source_api_association()
      }

  """
  @type get_source_api_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_resolvers_by_function_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_resolvers_by_function_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_api_key_request() :: %{
        optional("description") => String.t(),
        optional("expires") => float()
      }

  """
  @type update_api_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_schema_creation_status_response() :: %{
        "details" => String.t(),
        "status" => list(any())
      }

  """
  @type get_schema_creation_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cognito_user_pool_config() :: %{
        "appIdClientRegex" => String.t(),
        "awsRegion" => String.t(),
        "userPoolId" => String.t()
      }

  """
  @type cognito_user_pool_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      api_key_limit_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type api_key_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_domain_name_request() :: %{
        optional("description") => String.t(),
        required("certificateArn") => String.t(),
        required("domainName") => String.t()
      }

  """
  @type create_domain_name_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_graphql_apis_request() :: %{
        optional("apiType") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("owner") => list(any())
      }

  """
  @type list_graphql_apis_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_api_association_response() :: %{
        "apiAssociation" => api_association()
      }

  """
  @type get_api_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_api_cache_response() :: %{
        "apiCache" => api_cache()
      }

  """
  @type create_api_cache_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_types_by_association_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("format") => list(any())
      }

  """
  @type list_types_by_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_function_response() :: %{
        "functionConfiguration" => function_configuration()
      }

  """
  @type get_function_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_data_source_response() :: %{
        "dataSource" => data_source()
      }

  """
  @type update_data_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_graphql_api_environment_variables_response() :: %{
        "environmentVariables" => map()
      }

  """
  @type put_graphql_api_environment_variables_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_type_request() :: %{
        required("definition") => String.t(),
        required("format") => list(any())
      }

  """
  @type create_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rds_http_endpoint_config() :: %{
        "awsRegion" => String.t(),
        "awsSecretStoreArn" => String.t(),
        "databaseName" => String.t(),
        "dbClusterIdentifier" => String.t(),
        "schema" => String.t()
      }

  """
  @type rds_http_endpoint_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evaluate_mapping_template_request() :: %{
        required("context") => String.t(),
        required("template") => String.t()
      }

  """
  @type evaluate_mapping_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      open_id_connect_config() :: %{
        "authTTL" => float(),
        "clientId" => String.t(),
        "iatTTL" => float(),
        "issuer" => String.t()
      }

  """
  @type open_id_connect_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evaluate_mapping_template_response() :: %{
        "error" => error_detail(),
        "evaluationResult" => String.t(),
        "logs" => list(String.t()())
      }

  """
  @type evaluate_mapping_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_resolvers_by_function_response() :: %{
        "nextToken" => String.t(),
        "resolvers" => list(resolver()())
      }

  """
  @type list_resolvers_by_function_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_function_response() :: %{
        "functionConfiguration" => function_configuration()
      }

  """
  @type update_function_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_graphql_api_response() :: %{
        "graphqlApi" => graphql_api()
      }

  """
  @type update_graphql_api_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_api_cache_request() :: %{
        optional("atRestEncryptionEnabled") => boolean(),
        optional("healthMetricsConfig") => list(any()),
        optional("transitEncryptionEnabled") => boolean(),
        required("apiCachingBehavior") => list(any()),
        required("ttl") => float(),
        required("type") => list(any())
      }

  """
  @type create_api_cache_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_api_key_response() :: %{
        "apiKey" => api_key()
      }

  """
  @type update_api_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      graphql_api() :: %{
        "additionalAuthenticationProviders" => list(additional_authentication_provider()()),
        "apiId" => String.t(),
        "apiType" => list(any()),
        "arn" => String.t(),
        "authenticationType" => list(any()),
        "dns" => map(),
        "enhancedMetricsConfig" => enhanced_metrics_config(),
        "introspectionConfig" => list(any()),
        "lambdaAuthorizerConfig" => lambda_authorizer_config(),
        "logConfig" => log_config(),
        "mergedApiExecutionRoleArn" => String.t(),
        "name" => String.t(),
        "openIDConnectConfig" => open_id_connect_config(),
        "owner" => String.t(),
        "ownerContact" => String.t(),
        "queryDepthLimit" => integer(),
        "resolverCountLimit" => integer(),
        "tags" => map(),
        "uris" => map(),
        "userPoolConfig" => user_pool_config(),
        "visibility" => list(any()),
        "wafWebAclArn" => String.t(),
        "xrayEnabled" => boolean()
      }

  """
  @type graphql_api() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_api_cache_request() :: %{}

  """
  @type get_api_cache_request() :: %{}

  @typedoc """

  ## Example:

      delete_graphql_api_request() :: %{}

  """
  @type delete_graphql_api_request() :: %{}

  @typedoc """

  ## Example:

      get_api_association_request() :: %{}

  """
  @type get_api_association_request() :: %{}

  @typedoc """

  ## Example:

      caching_config() :: %{
        "cachingKeys" => list(String.t()()),
        "ttl" => float()
      }

  """
  @type caching_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      authorization_config() :: %{
        "authorizationType" => list(any()),
        "awsIamConfig" => aws_iam_config()
      }

  """
  @type authorization_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_type_response() :: %{
        "type" => type()
      }

  """
  @type get_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_sources_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_data_sources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_introspection_schema_response() :: %{
        "schema" => binary()
      }

  """
  @type get_introspection_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_data_source_response() :: %{}

  """
  @type delete_data_source_response() :: %{}

  @typedoc """

  ## Example:

      delta_sync_config() :: %{
        "baseTableTTL" => float(),
        "deltaSyncTableName" => String.t(),
        "deltaSyncTableTTL" => float()
      }

  """
  @type delta_sync_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_sync_runtime() :: %{
        "name" => list(any()),
        "runtimeVersion" => String.t()
      }

  """
  @type app_sync_runtime() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_api_response() :: %{
        "apiAssociation" => api_association()
      }

  """
  @type associate_api_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_function_request() :: %{}

  """
  @type get_function_request() :: %{}

  @typedoc """

  ## Example:

      update_resolver_request() :: %{
        optional("cachingConfig") => caching_config(),
        optional("code") => String.t(),
        optional("dataSourceName") => String.t(),
        optional("kind") => list(any()),
        optional("maxBatchSize") => integer(),
        optional("metricsConfig") => list(any()),
        optional("pipelineConfig") => pipeline_config(),
        optional("requestMappingTemplate") => String.t(),
        optional("responseMappingTemplate") => String.t(),
        optional("runtime") => app_sync_runtime(),
        optional("syncConfig") => sync_config()
      }

  """
  @type update_resolver_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_pool_config() :: %{
        "appIdClientRegex" => String.t(),
        "awsRegion" => String.t(),
        "defaultAction" => list(any()),
        "userPoolId" => String.t()
      }

  """
  @type user_pool_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_graphql_api_environment_variables_request() :: %{
        required("environmentVariables") => map()
      }

  """
  @type put_graphql_api_environment_variables_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_resolver_request() :: %{
        optional("cachingConfig") => caching_config(),
        optional("code") => String.t(),
        optional("dataSourceName") => String.t(),
        optional("kind") => list(any()),
        optional("maxBatchSize") => integer(),
        optional("metricsConfig") => list(any()),
        optional("pipelineConfig") => pipeline_config(),
        optional("requestMappingTemplate") => String.t(),
        optional("responseMappingTemplate") => String.t(),
        optional("runtime") => app_sync_runtime(),
        optional("syncConfig") => sync_config(),
        required("fieldName") => String.t()
      }

  """
  @type create_resolver_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      code_error() :: %{
        "errorType" => String.t(),
        "location" => code_error_location(),
        "value" => String.t()
      }

  """
  @type code_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_function_request() :: %{}

  """
  @type delete_function_request() :: %{}

  @typedoc """

  ## Example:

      log_config() :: %{
        "cloudWatchLogsRoleArn" => String.t(),
        "excludeVerboseContent" => boolean(),
        "fieldLogLevel" => list(any())
      }

  """
  @type log_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_data_source_request() :: %{}

  """
  @type get_data_source_request() :: %{}

  @typedoc """

  ## Example:

      list_resolvers_response() :: %{
        "nextToken" => String.t(),
        "resolvers" => list(resolver()())
      }

  """
  @type list_resolvers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_api_cache_response() :: %{
        "apiCache" => api_cache()
      }

  """
  @type get_api_cache_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_merged_graphql_api_response() :: %{
        "sourceApiAssociationStatus" => list(any())
      }

  """
  @type disassociate_merged_graphql_api_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_api_request() :: %{}

  """
  @type disassociate_api_request() :: %{}

  @typedoc """

  ## Example:

      create_type_response() :: %{
        "type" => type()
      }

  """
  @type create_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_graphql_api_environment_variables_response() :: %{
        "environmentVariables" => map()
      }

  """
  @type get_graphql_api_environment_variables_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_function_response() :: %{
        "functionConfiguration" => function_configuration()
      }

  """
  @type create_function_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enhanced_metrics_config() :: %{
        "dataSourceLevelMetricsBehavior" => list(any()),
        "operationLevelMetricsConfig" => list(any()),
        "resolverLevelMetricsBehavior" => list(any())
      }

  """
  @type enhanced_metrics_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_api_key_response() :: %{}

  """
  @type delete_api_key_response() :: %{}

  @typedoc """

  ## Example:

      list_data_sources_response() :: %{
        "dataSources" => list(data_source()()),
        "nextToken" => String.t()
      }

  """
  @type list_data_sources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_data_source_request() :: %{}

  """
  @type delete_data_source_request() :: %{}

  @typedoc """

  ## Example:

      delete_function_response() :: %{}

  """
  @type delete_function_response() :: %{}

  @typedoc """

  ## Example:

      api_cache() :: %{
        "apiCachingBehavior" => list(any()),
        "atRestEncryptionEnabled" => boolean(),
        "healthMetricsConfig" => list(any()),
        "status" => list(any()),
        "transitEncryptionEnabled" => boolean(),
        "ttl" => float(),
        "type" => list(any())
      }

  """
  @type api_cache() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_domain_name_response() :: %{
        "domainNameConfig" => domain_name_config()
      }

  """
  @type update_domain_name_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_resolver_request() :: %{}

  """
  @type delete_resolver_request() :: %{}

  @typedoc """

  ## Example:

      get_data_source_introspection_response() :: %{
        "introspectionId" => String.t(),
        "introspectionResult" => data_source_introspection_result(),
        "introspectionStatus" => list(any()),
        "introspectionStatusDetail" => String.t()
      }

  """
  @type get_data_source_introspection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_source_api_association_request() :: %{}

  """
  @type get_source_api_association_request() :: %{}

  @typedoc """

  ## Example:

      start_data_source_introspection_response() :: %{
        "introspectionId" => String.t(),
        "introspectionStatus" => list(any()),
        "introspectionStatusDetail" => String.t()
      }

  """
  @type start_data_source_introspection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resolver() :: %{
        "cachingConfig" => caching_config(),
        "code" => String.t(),
        "dataSourceName" => String.t(),
        "fieldName" => String.t(),
        "kind" => list(any()),
        "maxBatchSize" => integer(),
        "metricsConfig" => list(any()),
        "pipelineConfig" => pipeline_config(),
        "requestMappingTemplate" => String.t(),
        "resolverArn" => String.t(),
        "responseMappingTemplate" => String.t(),
        "runtime" => app_sync_runtime(),
        "syncConfig" => sync_config(),
        "typeName" => String.t()
      }

  """
  @type resolver() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_domain_names_response() :: %{
        "domainNameConfigs" => list(domain_name_config()()),
        "nextToken" => String.t()
      }

  """
  @type list_domain_names_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_api_key_response() :: %{
        "apiKey" => api_key()
      }

  """
  @type create_api_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_type_request() :: %{
        optional("definition") => String.t(),
        required("format") => list(any())
      }

  """
  @type update_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pipeline_config() :: %{
        "functions" => list(String.t()())
      }

  """
  @type pipeline_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_domain_name_request() :: %{
        optional("description") => String.t()
      }

  """
  @type update_domain_name_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_api_key_request() :: %{
        optional("description") => String.t(),
        optional("expires") => float()
      }

  """
  @type create_api_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lambda_data_source_config() :: %{
        "lambdaFunctionArn" => String.t()
      }

  """
  @type lambda_data_source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_api_cache_request() :: %{
        optional("healthMetricsConfig") => list(any()),
        required("apiCachingBehavior") => list(any()),
        required("ttl") => float(),
        required("type") => list(any())
      }

  """
  @type update_api_cache_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_functions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_functions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      api_association() :: %{
        "apiId" => String.t(),
        "associationStatus" => list(any()),
        "deploymentDetail" => String.t(),
        "domainName" => String.t()
      }

  """
  @type api_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      http_data_source_config() :: %{
        "authorizationConfig" => authorization_config(),
        "endpoint" => String.t()
      }

  """
  @type http_data_source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_data_source_response() :: %{
        "dataSource" => data_source()
      }

  """
  @type create_data_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_schema_merge_response() :: %{
        "sourceApiAssociationStatus" => list(any())
      }

  """
  @type start_schema_merge_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_api_cache_request() :: %{}

  """
  @type delete_api_cache_request() :: %{}

  @typedoc """

  ## Example:

      start_schema_merge_request() :: %{}

  """
  @type start_schema_merge_request() :: %{}

  @typedoc """

  ## Example:

      rds_data_api_config() :: %{
        "databaseName" => String.t(),
        "resourceArn" => String.t(),
        "secretArn" => String.t()
      }

  """
  @type rds_data_api_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aws_iam_config() :: %{
        "signingRegion" => String.t(),
        "signingServiceName" => String.t()
      }

  """
  @type aws_iam_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_schema_creation_status_request() :: %{}

  """
  @type get_schema_creation_status_request() :: %{}

  @typedoc """

  ## Example:

      error_detail() :: %{
        "message" => String.t()
      }

  """
  @type error_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_source_graphql_api_response() :: %{
        "sourceApiAssociationStatus" => list(any())
      }

  """
  @type disassociate_source_graphql_api_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_resolver_response() :: %{
        "resolver" => resolver()
      }

  """
  @type get_resolver_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      source_api_association() :: %{
        "associationArn" => String.t(),
        "associationId" => String.t(),
        "description" => String.t(),
        "lastSuccessfulMergeDate" => non_neg_integer(),
        "mergedApiArn" => String.t(),
        "mergedApiId" => String.t(),
        "sourceApiArn" => String.t(),
        "sourceApiAssociationConfig" => source_api_association_config(),
        "sourceApiAssociationStatus" => list(any()),
        "sourceApiAssociationStatusDetail" => String.t(),
        "sourceApiId" => String.t()
      }

  """
  @type source_api_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      get_domain_name_request() :: %{}

  """
  @type get_domain_name_request() :: %{}

  @typedoc """

  ## Example:

      associate_api_request() :: %{
        required("apiId") => String.t()
      }

  """
  @type associate_api_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_graphql_api_response() :: %{
        "graphqlApi" => graphql_api()
      }

  """
  @type get_graphql_api_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_resolver_response() :: %{}

  """
  @type delete_resolver_response() :: %{}

  @typedoc """

  ## Example:

      delete_api_key_request() :: %{}

  """
  @type delete_api_key_request() :: %{}

  @typedoc """

  ## Example:

      source_api_association_summary() :: %{
        "associationArn" => String.t(),
        "associationId" => String.t(),
        "description" => String.t(),
        "mergedApiArn" => String.t(),
        "mergedApiId" => String.t(),
        "sourceApiArn" => String.t(),
        "sourceApiId" => String.t()
      }

  """
  @type source_api_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      domain_name_config() :: %{
        "appsyncDomainName" => String.t(),
        "certificateArn" => String.t(),
        "description" => String.t(),
        "domainName" => String.t(),
        "hostedZoneId" => String.t()
      }

  """
  @type domain_name_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      concurrent_modification_exception() :: %{
        "message" => String.t()
      }

  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_types_by_association_response() :: %{
        "nextToken" => String.t(),
        "types" => list(type()())
      }

  """
  @type list_types_by_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_schema_creation_response() :: %{
        "status" => list(any())
      }

  """
  @type start_schema_creation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_merged_graphql_api_request() :: %{}

  """
  @type disassociate_merged_graphql_api_request() :: %{}

  @typedoc """

  ## Example:

      start_schema_creation_request() :: %{
        required("definition") => binary()
      }

  """
  @type start_schema_creation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      api_key_validity_out_of_bounds_exception() :: %{
        "message" => String.t()
      }

  """
  @type api_key_validity_out_of_bounds_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      function_configuration() :: %{
        "code" => String.t(),
        "dataSourceName" => String.t(),
        "description" => String.t(),
        "functionArn" => String.t(),
        "functionId" => String.t(),
        "functionVersion" => String.t(),
        "maxBatchSize" => integer(),
        "name" => String.t(),
        "requestMappingTemplate" => String.t(),
        "responseMappingTemplate" => String.t(),
        "runtime" => app_sync_runtime(),
        "syncConfig" => sync_config()
      }

  """
  @type function_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      elasticsearch_data_source_config() :: %{
        "awsRegion" => String.t(),
        "endpoint" => String.t()
      }

  """
  @type elasticsearch_data_source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_api_keys_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_api_keys_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      relational_database_data_source_config() :: %{
        "rdsHttpEndpointConfig" => rds_http_endpoint_config(),
        "relationalDatabaseSourceType" => list(any())
      }

  """
  @type relational_database_data_source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      open_search_service_data_source_config() :: %{
        "awsRegion" => String.t(),
        "endpoint" => String.t()
      }

  """
  @type open_search_service_data_source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_data_source_request() :: %{
        optional("description") => String.t(),
        optional("dynamodbConfig") => dynamodb_data_source_config(),
        optional("elasticsearchConfig") => elasticsearch_data_source_config(),
        optional("eventBridgeConfig") => event_bridge_data_source_config(),
        optional("httpConfig") => http_data_source_config(),
        optional("lambdaConfig") => lambda_data_source_config(),
        optional("metricsConfig") => list(any()),
        optional("openSearchServiceConfig") => open_search_service_data_source_config(),
        optional("relationalDatabaseConfig") => relational_database_data_source_config(),
        optional("serviceRoleArn") => String.t(),
        required("type") => list(any())
      }

  """
  @type update_data_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      flush_api_cache_response() :: %{}

  """
  @type flush_api_cache_response() :: %{}

  @typedoc """

  ## Example:

      delete_api_cache_response() :: %{}

  """
  @type delete_api_cache_response() :: %{}

  @typedoc """

  ## Example:

      associate_source_graphql_api_request() :: %{
        optional("description") => String.t(),
        optional("sourceApiAssociationConfig") => source_api_association_config(),
        required("sourceApiIdentifier") => String.t()
      }

  """
  @type associate_source_graphql_api_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      type() :: %{
        "arn" => String.t(),
        "definition" => String.t(),
        "description" => String.t(),
        "format" => list(any()),
        "name" => String.t()
      }

  """
  @type type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_source_introspection_model() :: %{
        "fields" => list(data_source_introspection_model_field()()),
        "indexes" => list(data_source_introspection_model_index()()),
        "name" => String.t(),
        "primaryKey" => data_source_introspection_model_index(),
        "sdl" => String.t()
      }

  """
  @type data_source_introspection_model() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_graphql_api_response() :: %{
        "graphqlApi" => graphql_api()
      }

  """
  @type create_graphql_api_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_source_introspection_result() :: %{
        "models" => list(data_source_introspection_model()()),
        "nextToken" => String.t()
      }

  """
  @type data_source_introspection_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evaluate_code_request() :: %{
        optional("function") => String.t(),
        required("code") => String.t(),
        required("context") => String.t(),
        required("runtime") => app_sync_runtime()
      }

  """
  @type evaluate_code_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_source_graphql_api_response() :: %{
        "sourceApiAssociation" => source_api_association()
      }

  """
  @type associate_source_graphql_api_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_domain_name_request() :: %{}

  """
  @type delete_domain_name_request() :: %{}

  @typedoc """

  ## Example:

      source_api_association_config() :: %{
        "mergeType" => list(any())
      }

  """
  @type source_api_association_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      event_bridge_data_source_config() :: %{
        "eventBusArn" => String.t()
      }

  """
  @type event_bridge_data_source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_type_response() :: %{
        "type" => type()
      }

  """
  @type update_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_domain_name_response() :: %{
        "domainNameConfig" => domain_name_config()
      }

  """
  @type create_domain_name_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_source_api_association_response() :: %{
        "sourceApiAssociation" => source_api_association()
      }

  """
  @type update_source_api_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_function_request() :: %{
        optional("code") => String.t(),
        optional("description") => String.t(),
        optional("functionVersion") => String.t(),
        optional("maxBatchSize") => integer(),
        optional("requestMappingTemplate") => String.t(),
        optional("responseMappingTemplate") => String.t(),
        optional("runtime") => app_sync_runtime(),
        optional("syncConfig") => sync_config(),
        required("dataSourceName") => String.t(),
        required("name") => String.t()
      }

  """
  @type update_function_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "detail" => bad_request_detail(),
        "message" => String.t(),
        "reason" => list(any())
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_graphql_api_request() :: %{
        optional("additionalAuthenticationProviders") => list(additional_authentication_provider()()),
        optional("enhancedMetricsConfig") => enhanced_metrics_config(),
        optional("introspectionConfig") => list(any()),
        optional("lambdaAuthorizerConfig") => lambda_authorizer_config(),
        optional("logConfig") => log_config(),
        optional("mergedApiExecutionRoleArn") => String.t(),
        optional("openIDConnectConfig") => open_id_connect_config(),
        optional("ownerContact") => String.t(),
        optional("queryDepthLimit") => integer(),
        optional("resolverCountLimit") => integer(),
        optional("userPoolConfig") => user_pool_config(),
        optional("xrayEnabled") => boolean(),
        required("authenticationType") => list(any()),
        required("name") => String.t()
      }

  """
  @type update_graphql_api_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_api_cache_response() :: %{
        "apiCache" => api_cache()
      }

  """
  @type update_api_cache_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_resolver_response() :: %{
        "resolver" => resolver()
      }

  """
  @type create_resolver_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_introspection_schema_request() :: %{
        optional("includeDirectives") => boolean(),
        required("format") => list(any())
      }

  """
  @type get_introspection_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_function_request() :: %{
        optional("code") => String.t(),
        optional("description") => String.t(),
        optional("functionVersion") => String.t(),
        optional("maxBatchSize") => integer(),
        optional("requestMappingTemplate") => String.t(),
        optional("responseMappingTemplate") => String.t(),
        optional("runtime") => app_sync_runtime(),
        optional("syncConfig") => sync_config(),
        required("dataSourceName") => String.t(),
        required("name") => String.t()
      }

  """
  @type create_function_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_request_detail() :: %{
        "codeErrors" => list(code_error()())
      }

  """
  @type bad_request_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_graphql_api_request() :: %{}

  """
  @type get_graphql_api_request() :: %{}

  @typedoc """

  ## Example:

      update_source_api_association_request() :: %{
        optional("description") => String.t(),
        optional("sourceApiAssociationConfig") => source_api_association_config()
      }

  """
  @type update_source_api_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_graphql_api_environment_variables_request() :: %{}

  """
  @type get_graphql_api_environment_variables_request() :: %{}

  @typedoc """

  ## Example:

      disassociate_api_response() :: %{}

  """
  @type disassociate_api_response() :: %{}

  @typedoc """

  ## Example:

      data_source() :: %{
        "dataSourceArn" => String.t(),
        "description" => String.t(),
        "dynamodbConfig" => dynamodb_data_source_config(),
        "elasticsearchConfig" => elasticsearch_data_source_config(),
        "eventBridgeConfig" => event_bridge_data_source_config(),
        "httpConfig" => http_data_source_config(),
        "lambdaConfig" => lambda_data_source_config(),
        "metricsConfig" => list(any()),
        "name" => String.t(),
        "openSearchServiceConfig" => open_search_service_data_source_config(),
        "relationalDatabaseConfig" => relational_database_data_source_config(),
        "serviceRoleArn" => String.t(),
        "type" => list(any())
      }

  """
  @type data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sync_config() :: %{
        "conflictDetection" => list(any()),
        "conflictHandler" => list(any()),
        "lambdaConflictHandlerConfig" => lambda_conflict_handler_config()
      }

  """
  @type sync_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_source_introspection_model_field_type() :: %{
        "kind" => String.t(),
        "name" => String.t(),
        "type" => data_source_introspection_model_field_type(),
        "values" => list(String.t()())
      }

  """
  @type data_source_introspection_model_field_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_graphql_api_request() :: %{
        optional("additionalAuthenticationProviders") => list(additional_authentication_provider()()),
        optional("apiType") => list(any()),
        optional("enhancedMetricsConfig") => enhanced_metrics_config(),
        optional("introspectionConfig") => list(any()),
        optional("lambdaAuthorizerConfig") => lambda_authorizer_config(),
        optional("logConfig") => log_config(),
        optional("mergedApiExecutionRoleArn") => String.t(),
        optional("openIDConnectConfig") => open_id_connect_config(),
        optional("ownerContact") => String.t(),
        optional("queryDepthLimit") => integer(),
        optional("resolverCountLimit") => integer(),
        optional("tags") => map(),
        optional("userPoolConfig") => user_pool_config(),
        optional("visibility") => list(any()),
        optional("xrayEnabled") => boolean(),
        required("authenticationType") => list(any()),
        required("name") => String.t()
      }

  """
  @type create_graphql_api_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      api_key() :: %{
        "deletes" => float(),
        "description" => String.t(),
        "expires" => float(),
        "id" => String.t()
      }

  """
  @type api_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_data_source_introspection_request() :: %{
        optional("rdsDataApiConfig") => rds_data_api_config()
      }

  """
  @type start_data_source_introspection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_data_source_response() :: %{
        "dataSource" => data_source()
      }

  """
  @type get_data_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dynamodb_data_source_config() :: %{
        "awsRegion" => String.t(),
        "deltaSyncConfig" => delta_sync_config(),
        "tableName" => String.t(),
        "useCallerCredentials" => boolean(),
        "versioned" => boolean()
      }

  """
  @type dynamodb_data_source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_types_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("format") => list(any())
      }

  """
  @type list_types_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      graph_q_l_schema_exception() :: %{
        "message" => String.t()
      }

  """
  @type graph_q_l_schema_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_domain_name_response() :: %{
        "domainNameConfig" => domain_name_config()
      }

  """
  @type get_domain_name_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_data_source_introspection_request() :: %{
        optional("includeModelsSDL") => boolean(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type get_data_source_introspection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_merged_graphql_api_request() :: %{
        optional("description") => String.t(),
        optional("sourceApiAssociationConfig") => source_api_association_config(),
        required("mergedApiIdentifier") => String.t()
      }

  """
  @type associate_merged_graphql_api_request() :: %{String.t() => any()}

  @type associate_api_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type associate_merged_graphql_api_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type associate_source_graphql_api_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type create_api_cache_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type create_api_key_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | api_key_validity_out_of_bounds_exception()
          | not_found_exception()
          | api_key_limit_exceeded_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type create_data_source_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type create_domain_name_errors() ::
          bad_request_exception() | access_denied_exception() | internal_failure_exception()

  @type create_function_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type create_graphql_api_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | concurrent_modification_exception()
          | api_limit_exceeded_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type create_resolver_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type create_type_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type delete_api_cache_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type delete_api_key_errors() ::
          bad_request_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type delete_data_source_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type delete_domain_name_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type delete_function_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type delete_graphql_api_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type delete_resolver_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type delete_type_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type disassociate_api_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type disassociate_merged_graphql_api_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type disassociate_source_graphql_api_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type evaluate_code_errors() ::
          bad_request_exception() | access_denied_exception() | internal_failure_exception()

  @type evaluate_mapping_template_errors() ::
          bad_request_exception() | access_denied_exception() | internal_failure_exception()

  @type flush_api_cache_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_api_association_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_api_cache_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_data_source_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_data_source_introspection_errors() ::
          bad_request_exception() | not_found_exception() | internal_failure_exception()

  @type get_domain_name_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_function_errors() ::
          concurrent_modification_exception() | not_found_exception() | unauthorized_exception()

  @type get_graphql_api_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_graphql_api_environment_variables_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_introspection_schema_errors() ::
          graph_q_l_schema_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_resolver_errors() ::
          concurrent_modification_exception() | not_found_exception() | unauthorized_exception()

  @type get_schema_creation_status_errors() ::
          bad_request_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_source_api_association_errors() ::
          bad_request_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type get_type_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_api_keys_errors() ::
          bad_request_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_data_sources_errors() ::
          bad_request_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_domain_names_errors() ::
          bad_request_exception() | access_denied_exception() | internal_failure_exception()

  @type list_functions_errors() ::
          bad_request_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_graphql_apis_errors() ::
          bad_request_exception() | unauthorized_exception() | internal_failure_exception()

  @type list_resolvers_errors() ::
          bad_request_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_resolvers_by_function_errors() ::
          bad_request_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_source_api_associations_errors() ::
          bad_request_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | access_denied_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_types_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type list_types_by_association_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type put_graphql_api_environment_variables_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type start_data_source_introspection_errors() ::
          bad_request_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type start_schema_creation_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type start_schema_merge_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | access_denied_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | access_denied_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type update_api_cache_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type update_api_key_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | api_key_validity_out_of_bounds_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type update_data_source_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type update_domain_name_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type update_function_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type update_graphql_api_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type update_resolver_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type update_source_api_association_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  @type update_type_errors() ::
          bad_request_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | unauthorized_exception()
          | internal_failure_exception()

  def metadata do
    %{
      api_version: "2017-07-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "appsync",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "AppSync",
      signature_version: "v4",
      signing_name: "appsync",
      target_prefix: nil
    }
  end

  @doc """
  Maps an endpoint to your custom domain.
  """
  @spec associate_api(map(), String.t(), associate_api_request(), list()) ::
          {:ok, associate_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_api_errors()}
  def associate_api(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/v1/domainnames/#{AWS.Util.encode_uri(domain_name)}/apiassociation"
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
      200
    )
  end

  @doc """
  Creates an association between a Merged API and source API using the source
  API's identifier.
  """
  @spec associate_merged_graphql_api(
          map(),
          String.t(),
          associate_merged_graphql_api_request(),
          list()
        ) ::
          {:ok, associate_merged_graphql_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_merged_graphql_api_errors()}
  def associate_merged_graphql_api(
        %Client{} = client,
        source_api_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/sourceApis/#{AWS.Util.encode_uri(source_api_identifier)}/mergedApiAssociations"

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
      200
    )
  end

  @doc """
  Creates an association between a Merged API and source API using the Merged
  API's identifier.
  """
  @spec associate_source_graphql_api(
          map(),
          String.t(),
          associate_source_graphql_api_request(),
          list()
        ) ::
          {:ok, associate_source_graphql_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_source_graphql_api_errors()}
  def associate_source_graphql_api(
        %Client{} = client,
        merged_api_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/mergedApis/#{AWS.Util.encode_uri(merged_api_identifier)}/sourceApiAssociations"

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
      200
    )
  end

  @doc """
  Creates a cache for the GraphQL API.
  """
  @spec create_api_cache(map(), String.t(), create_api_cache_request(), list()) ::
          {:ok, create_api_cache_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_api_cache_errors()}
  def create_api_cache(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/ApiCaches"
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
      200
    )
  end

  @doc """
  Creates a unique key that you can distribute to clients who invoke your API.
  """
  @spec create_api_key(map(), String.t(), create_api_key_request(), list()) ::
          {:ok, create_api_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_api_key_errors()}
  def create_api_key(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/apikeys"
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
      200
    )
  end

  @doc """
  Creates a `DataSource` object.
  """
  @spec create_data_source(map(), String.t(), create_data_source_request(), list()) ::
          {:ok, create_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_data_source_errors()}
  def create_data_source(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/datasources"
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
      200
    )
  end

  @doc """
  Creates a custom `DomainName` object.
  """
  @spec create_domain_name(map(), create_domain_name_request(), list()) ::
          {:ok, create_domain_name_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_domain_name_errors()}
  def create_domain_name(%Client{} = client, input, options \\ []) do
    url_path = "/v1/domainnames"
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
      200
    )
  end

  @doc """
  Creates a `Function` object.

  A function is a reusable entity. You can use multiple functions to compose the
  resolver logic.
  """
  @spec create_function(map(), String.t(), create_function_request(), list()) ::
          {:ok, create_function_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_function_errors()}
  def create_function(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/functions"
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
      200
    )
  end

  @doc """
  Creates a `GraphqlApi` object.
  """
  @spec create_graphql_api(map(), create_graphql_api_request(), list()) ::
          {:ok, create_graphql_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_graphql_api_errors()}
  def create_graphql_api(%Client{} = client, input, options \\ []) do
    url_path = "/v1/apis"
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
      200
    )
  end

  @doc """
  Creates a `Resolver` object.

  A resolver converts incoming requests into a format that a data source can
  understand, and converts the data
  source's responses into GraphQL.
  """
  @spec create_resolver(map(), String.t(), String.t(), create_resolver_request(), list()) ::
          {:ok, create_resolver_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_resolver_errors()}
  def create_resolver(%Client{} = client, api_id, type_name, input, options \\ []) do
    url_path =
      "/v1/apis/#{AWS.Util.encode_uri(api_id)}/types/#{AWS.Util.encode_uri(type_name)}/resolvers"

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
      200
    )
  end

  @doc """
  Creates a `Type` object.
  """
  @spec create_type(map(), String.t(), create_type_request(), list()) ::
          {:ok, create_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_type_errors()}
  def create_type(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/types"
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
      200
    )
  end

  @doc """
  Deletes an `ApiCache` object.
  """
  @spec delete_api_cache(map(), String.t(), delete_api_cache_request(), list()) ::
          {:ok, delete_api_cache_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_api_cache_errors()}
  def delete_api_cache(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/ApiCaches"
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
      200
    )
  end

  @doc """
  Deletes an API key.
  """
  @spec delete_api_key(map(), String.t(), String.t(), delete_api_key_request(), list()) ::
          {:ok, delete_api_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_api_key_errors()}
  def delete_api_key(%Client{} = client, api_id, id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/apikeys/#{AWS.Util.encode_uri(id)}"
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
      200
    )
  end

  @doc """
  Deletes a `DataSource` object.
  """
  @spec delete_data_source(map(), String.t(), String.t(), delete_data_source_request(), list()) ::
          {:ok, delete_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_data_source_errors()}
  def delete_data_source(%Client{} = client, api_id, name, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/datasources/#{AWS.Util.encode_uri(name)}"
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
      200
    )
  end

  @doc """
  Deletes a custom `DomainName` object.
  """
  @spec delete_domain_name(map(), String.t(), delete_domain_name_request(), list()) ::
          {:ok, delete_domain_name_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_domain_name_errors()}
  def delete_domain_name(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/v1/domainnames/#{AWS.Util.encode_uri(domain_name)}"
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
      200
    )
  end

  @doc """
  Deletes a `Function`.
  """
  @spec delete_function(map(), String.t(), String.t(), delete_function_request(), list()) ::
          {:ok, delete_function_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_function_errors()}
  def delete_function(%Client{} = client, api_id, function_id, input, options \\ []) do
    url_path =
      "/v1/apis/#{AWS.Util.encode_uri(api_id)}/functions/#{AWS.Util.encode_uri(function_id)}"

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
      200
    )
  end

  @doc """
  Deletes a `GraphqlApi` object.
  """
  @spec delete_graphql_api(map(), String.t(), delete_graphql_api_request(), list()) ::
          {:ok, delete_graphql_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_graphql_api_errors()}
  def delete_graphql_api(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}"
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
      200
    )
  end

  @doc """
  Deletes a `Resolver` object.
  """
  @spec delete_resolver(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_resolver_request(),
          list()
        ) ::
          {:ok, delete_resolver_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resolver_errors()}
  def delete_resolver(%Client{} = client, api_id, field_name, type_name, input, options \\ []) do
    url_path =
      "/v1/apis/#{AWS.Util.encode_uri(api_id)}/types/#{AWS.Util.encode_uri(type_name)}/resolvers/#{AWS.Util.encode_uri(field_name)}"

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
      200
    )
  end

  @doc """
  Deletes a `Type` object.
  """
  @spec delete_type(map(), String.t(), String.t(), delete_type_request(), list()) ::
          {:ok, delete_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_type_errors()}
  def delete_type(%Client{} = client, api_id, type_name, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/types/#{AWS.Util.encode_uri(type_name)}"
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
      200
    )
  end

  @doc """
  Removes an `ApiAssociation` object from a custom domain.
  """
  @spec disassociate_api(map(), String.t(), disassociate_api_request(), list()) ::
          {:ok, disassociate_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_api_errors()}
  def disassociate_api(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/v1/domainnames/#{AWS.Util.encode_uri(domain_name)}/apiassociation"
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
      200
    )
  end

  @doc """
  Deletes an association between a Merged API and source API using the source
  API's identifier and the
  association ID.
  """
  @spec disassociate_merged_graphql_api(
          map(),
          String.t(),
          String.t(),
          disassociate_merged_graphql_api_request(),
          list()
        ) ::
          {:ok, disassociate_merged_graphql_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_merged_graphql_api_errors()}
  def disassociate_merged_graphql_api(
        %Client{} = client,
        association_id,
        source_api_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/sourceApis/#{AWS.Util.encode_uri(source_api_identifier)}/mergedApiAssociations/#{AWS.Util.encode_uri(association_id)}"

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
      200
    )
  end

  @doc """
  Deletes an association between a Merged API and source API using the Merged
  API's identifier and the
  association ID.
  """
  @spec disassociate_source_graphql_api(
          map(),
          String.t(),
          String.t(),
          disassociate_source_graphql_api_request(),
          list()
        ) ::
          {:ok, disassociate_source_graphql_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_source_graphql_api_errors()}
  def disassociate_source_graphql_api(
        %Client{} = client,
        association_id,
        merged_api_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/mergedApis/#{AWS.Util.encode_uri(merged_api_identifier)}/sourceApiAssociations/#{AWS.Util.encode_uri(association_id)}"

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
      200
    )
  end

  @doc """
  Evaluates the given code and returns the response.

  The code definition requirements depend on the specified
  runtime. For `APPSYNC_JS` runtimes, the code defines the request and response
  functions. The request
  function takes the incoming request after a GraphQL operation is parsed and
  converts it into a request
  configuration for the selected data source operation. The response function
  interprets responses from the data
  source and maps it to the shape of the GraphQL field output type.
  """
  @spec evaluate_code(map(), evaluate_code_request(), list()) ::
          {:ok, evaluate_code_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, evaluate_code_errors()}
  def evaluate_code(%Client{} = client, input, options \\ []) do
    url_path = "/v1/dataplane-evaluatecode"
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
      200
    )
  end

  @doc """
  Evaluates a given template and returns the response.

  The mapping template can be a request or response
  template.

  Request templates take the incoming request after a GraphQL operation is parsed
  and convert it into a
  request configuration for the selected data source operation. Response templates
  interpret responses from the
  data source and map it to the shape of the GraphQL field output type.

  Mapping templates are written in the Apache Velocity Template Language (VTL).
  """
  @spec evaluate_mapping_template(map(), evaluate_mapping_template_request(), list()) ::
          {:ok, evaluate_mapping_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, evaluate_mapping_template_errors()}
  def evaluate_mapping_template(%Client{} = client, input, options \\ []) do
    url_path = "/v1/dataplane-evaluatetemplate"
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
      200
    )
  end

  @doc """
  Flushes an `ApiCache` object.
  """
  @spec flush_api_cache(map(), String.t(), flush_api_cache_request(), list()) ::
          {:ok, flush_api_cache_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, flush_api_cache_errors()}
  def flush_api_cache(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/FlushCache"
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
      200
    )
  end

  @doc """
  Retrieves an `ApiAssociation` object.
  """
  @spec get_api_association(map(), String.t(), list()) ::
          {:ok, get_api_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_api_association_errors()}
  def get_api_association(%Client{} = client, domain_name, options \\ []) do
    url_path = "/v1/domainnames/#{AWS.Util.encode_uri(domain_name)}/apiassociation"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves an `ApiCache` object.
  """
  @spec get_api_cache(map(), String.t(), list()) ::
          {:ok, get_api_cache_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_api_cache_errors()}
  def get_api_cache(%Client{} = client, api_id, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/ApiCaches"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a `DataSource` object.
  """
  @spec get_data_source(map(), String.t(), String.t(), list()) ::
          {:ok, get_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_data_source_errors()}
  def get_data_source(%Client{} = client, api_id, name, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/datasources/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the record of an existing introspection.

  If the retrieval is successful, the result of the
  instrospection will also be returned. If the retrieval fails the operation, an
  error message will be returned
  instead.
  """
  @spec get_data_source_introspection(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_data_source_introspection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_data_source_introspection_errors()}
  def get_data_source_introspection(
        %Client{} = client,
        introspection_id,
        include_models_s_d_l \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/datasources/introspections/#{AWS.Util.encode_uri(introspection_id)}"
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
      if !is_nil(include_models_s_d_l) do
        [{"includeModelsSDL", include_models_s_d_l} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a custom `DomainName` object.
  """
  @spec get_domain_name(map(), String.t(), list()) ::
          {:ok, get_domain_name_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_domain_name_errors()}
  def get_domain_name(%Client{} = client, domain_name, options \\ []) do
    url_path = "/v1/domainnames/#{AWS.Util.encode_uri(domain_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a `Function`.
  """
  @spec get_function(map(), String.t(), String.t(), list()) ::
          {:ok, get_function_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_function_errors()}
  def get_function(%Client{} = client, api_id, function_id, options \\ []) do
    url_path =
      "/v1/apis/#{AWS.Util.encode_uri(api_id)}/functions/#{AWS.Util.encode_uri(function_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a `GraphqlApi` object.
  """
  @spec get_graphql_api(map(), String.t(), list()) ::
          {:ok, get_graphql_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_graphql_api_errors()}
  def get_graphql_api(%Client{} = client, api_id, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the list of environmental variable key-value pairs associated with an
  API by its ID value.
  """
  @spec get_graphql_api_environment_variables(map(), String.t(), list()) ::
          {:ok, get_graphql_api_environment_variables_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_graphql_api_environment_variables_errors()}
  def get_graphql_api_environment_variables(%Client{} = client, api_id, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/environmentVariables"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the introspection schema for a GraphQL API.
  """
  @spec get_introspection_schema(map(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, get_introspection_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_introspection_schema_errors()}
  def get_introspection_schema(
        %Client{} = client,
        api_id,
        format,
        include_directives \\ nil,
        options \\ []
      ) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/schema"
    headers = []
    query_params = []

    query_params =
      if !is_nil(include_directives) do
        [{"includeDirectives", include_directives} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(format) do
        [{"format", format} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a `Resolver` object.
  """
  @spec get_resolver(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_resolver_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resolver_errors()}
  def get_resolver(%Client{} = client, api_id, field_name, type_name, options \\ []) do
    url_path =
      "/v1/apis/#{AWS.Util.encode_uri(api_id)}/types/#{AWS.Util.encode_uri(type_name)}/resolvers/#{AWS.Util.encode_uri(field_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the current status of a schema creation operation.
  """
  @spec get_schema_creation_status(map(), String.t(), list()) ::
          {:ok, get_schema_creation_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_schema_creation_status_errors()}
  def get_schema_creation_status(%Client{} = client, api_id, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/schemacreation"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a `SourceApiAssociation` object.
  """
  @spec get_source_api_association(map(), String.t(), String.t(), list()) ::
          {:ok, get_source_api_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_source_api_association_errors()}
  def get_source_api_association(
        %Client{} = client,
        association_id,
        merged_api_identifier,
        options \\ []
      ) do
    url_path =
      "/v1/mergedApis/#{AWS.Util.encode_uri(merged_api_identifier)}/sourceApiAssociations/#{AWS.Util.encode_uri(association_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a `Type` object.
  """
  @spec get_type(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_type_errors()}
  def get_type(%Client{} = client, api_id, type_name, format, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/types/#{AWS.Util.encode_uri(type_name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(format) do
        [{"format", format} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the API keys for a given API.

  API keys are deleted automatically 60 days after they expire. However, they may
  still be included in the
  response until they have actually been deleted. You can safely call
  `DeleteApiKey` to manually
  delete a key before it's automatically deleted.
  """
  @spec list_api_keys(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_api_keys_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_api_keys_errors()}
  def list_api_keys(
        %Client{} = client,
        api_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/apikeys"
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
  Lists the data sources for a given API.
  """
  @spec list_data_sources(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_data_sources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_data_sources_errors()}
  def list_data_sources(
        %Client{} = client,
        api_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/datasources"
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
  Lists multiple custom domain names.
  """
  @spec list_domain_names(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_domain_names_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_domain_names_errors()}
  def list_domain_names(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v1/domainnames"
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
  List multiple functions.
  """
  @spec list_functions(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_functions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_functions_errors()}
  def list_functions(
        %Client{} = client,
        api_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/functions"
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
  Lists your GraphQL APIs.
  """
  @spec list_graphql_apis(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_graphql_apis_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_graphql_apis_errors()}
  def list_graphql_apis(
        %Client{} = client,
        api_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        owner \\ nil,
        options \\ []
      ) do
    url_path = "/v1/apis"
    headers = []
    query_params = []

    query_params =
      if !is_nil(owner) do
        [{"owner", owner} | query_params]
      else
        query_params
      end

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
      if !is_nil(api_type) do
        [{"apiType", api_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the resolvers for a given API and type.
  """
  @spec list_resolvers(map(), String.t(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_resolvers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_resolvers_errors()}
  def list_resolvers(
        %Client{} = client,
        api_id,
        type_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/apis/#{AWS.Util.encode_uri(api_id)}/types/#{AWS.Util.encode_uri(type_name)}/resolvers"

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
  List the resolvers that are associated with a specific function.
  """
  @spec list_resolvers_by_function(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_resolvers_by_function_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_resolvers_by_function_errors()}
  def list_resolvers_by_function(
        %Client{} = client,
        api_id,
        function_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/apis/#{AWS.Util.encode_uri(api_id)}/functions/#{AWS.Util.encode_uri(function_id)}/resolvers"

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
  Lists the `SourceApiAssociationSummary` data.
  """
  @spec list_source_api_associations(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_source_api_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_source_api_associations_errors()}
  def list_source_api_associations(
        %Client{} = client,
        api_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/sourceApiAssociations"
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
  Lists the tags for a resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the types for a given API.
  """
  @spec list_types(map(), String.t(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_types_errors()}
  def list_types(
        %Client{} = client,
        api_id,
        format,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/types"
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
      if !is_nil(format) do
        [{"format", format} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists `Type` objects by the source API association ID.
  """
  @spec list_types_by_association(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_types_by_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_types_by_association_errors()}
  def list_types_by_association(
        %Client{} = client,
        association_id,
        merged_api_identifier,
        format,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/mergedApis/#{AWS.Util.encode_uri(merged_api_identifier)}/sourceApiAssociations/#{AWS.Util.encode_uri(association_id)}/types"

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
      if !is_nil(format) do
        [{"format", format} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Creates a list of environmental variables in an API by its ID value.

  When creating an environmental variable, it must follow the constraints below:

    *
  Both JavaScript and VTL templates support environmental variables.

    *
  Environmental variables are not evaluated before function invocation.

    *
  Environmental variables only support string values.

    *
  Any defined value in an environmental variable is considered a string literal
  and not
  expanded.

    *
  Variable evaluations should ideally be performed in the function code.

  When creating an environmental variable key-value pair, it must follow the
  additional constraints
  below:

    *
  Keys must begin with a letter.

    *
  Keys must be at least two characters long.

    *
  Keys can only contain letters, numbers, and the underscore character (_).

    *
  Values can be up to 512 characters long.

    *
  You can configure up to 50 key-value pairs in a GraphQL API.

  You can create a list of environmental variables by adding it to the
  `environmentVariables`
  payload as a list in the format `{"key1":"value1","key2":"value2", …}`. Note
  that each call of the
  `PutGraphqlApiEnvironmentVariables` action will result in the overwriting of the
  existing
  environmental variable list of that API. This means the existing environmental
  variables will be lost. To avoid
  this, you must include all existing and new environmental variables in the list
  each time you call this
  action.
  """
  @spec put_graphql_api_environment_variables(
          map(),
          String.t(),
          put_graphql_api_environment_variables_request(),
          list()
        ) ::
          {:ok, put_graphql_api_environment_variables_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_graphql_api_environment_variables_errors()}
  def put_graphql_api_environment_variables(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/environmentVariables"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a new introspection.

  Returns the `introspectionId` of the new introspection after its
  creation.
  """
  @spec start_data_source_introspection(map(), start_data_source_introspection_request(), list()) ::
          {:ok, start_data_source_introspection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_data_source_introspection_errors()}
  def start_data_source_introspection(%Client{} = client, input, options \\ []) do
    url_path = "/v1/datasources/introspections"
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
      200
    )
  end

  @doc """
  Adds a new schema to your GraphQL API.

  This operation is asynchronous. Use to determine when it has
  completed.
  """
  @spec start_schema_creation(map(), String.t(), start_schema_creation_request(), list()) ::
          {:ok, start_schema_creation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_schema_creation_errors()}
  def start_schema_creation(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/schemacreation"
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
      200
    )
  end

  @doc """
  Initiates a merge operation.

  Returns a status that shows the result of the merge operation.
  """
  @spec start_schema_merge(map(), String.t(), String.t(), start_schema_merge_request(), list()) ::
          {:ok, start_schema_merge_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_schema_merge_errors()}
  def start_schema_merge(
        %Client{} = client,
        association_id,
        merged_api_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/mergedApis/#{AWS.Util.encode_uri(merged_api_identifier)}/sourceApiAssociations/#{AWS.Util.encode_uri(association_id)}/merge"

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
      200
    )
  end

  @doc """
  Tags a resource with user-supplied tags.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      200
    )
  end

  @doc """
  Untags a resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

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
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the cache for the GraphQL API.
  """
  @spec update_api_cache(map(), String.t(), update_api_cache_request(), list()) ::
          {:ok, update_api_cache_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_api_cache_errors()}
  def update_api_cache(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/ApiCaches/update"
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
      200
    )
  end

  @doc """
  Updates an API key.

  You can update the key as long as it's not deleted.
  """
  @spec update_api_key(map(), String.t(), String.t(), update_api_key_request(), list()) ::
          {:ok, update_api_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_api_key_errors()}
  def update_api_key(%Client{} = client, api_id, id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/apikeys/#{AWS.Util.encode_uri(id)}"
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
      200
    )
  end

  @doc """
  Updates a `DataSource` object.
  """
  @spec update_data_source(map(), String.t(), String.t(), update_data_source_request(), list()) ::
          {:ok, update_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_data_source_errors()}
  def update_data_source(%Client{} = client, api_id, name, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/datasources/#{AWS.Util.encode_uri(name)}"
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
      200
    )
  end

  @doc """
  Updates a custom `DomainName` object.
  """
  @spec update_domain_name(map(), String.t(), update_domain_name_request(), list()) ::
          {:ok, update_domain_name_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_domain_name_errors()}
  def update_domain_name(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/v1/domainnames/#{AWS.Util.encode_uri(domain_name)}"
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
      200
    )
  end

  @doc """
  Updates a `Function` object.
  """
  @spec update_function(map(), String.t(), String.t(), update_function_request(), list()) ::
          {:ok, update_function_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_function_errors()}
  def update_function(%Client{} = client, api_id, function_id, input, options \\ []) do
    url_path =
      "/v1/apis/#{AWS.Util.encode_uri(api_id)}/functions/#{AWS.Util.encode_uri(function_id)}"

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
      200
    )
  end

  @doc """
  Updates a `GraphqlApi` object.
  """
  @spec update_graphql_api(map(), String.t(), update_graphql_api_request(), list()) ::
          {:ok, update_graphql_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_graphql_api_errors()}
  def update_graphql_api(%Client{} = client, api_id, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}"
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
      200
    )
  end

  @doc """
  Updates a `Resolver` object.
  """
  @spec update_resolver(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_resolver_request(),
          list()
        ) ::
          {:ok, update_resolver_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_resolver_errors()}
  def update_resolver(%Client{} = client, api_id, field_name, type_name, input, options \\ []) do
    url_path =
      "/v1/apis/#{AWS.Util.encode_uri(api_id)}/types/#{AWS.Util.encode_uri(type_name)}/resolvers/#{AWS.Util.encode_uri(field_name)}"

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
      200
    )
  end

  @doc """
  Updates some of the configuration choices of a particular source API
  association.
  """
  @spec update_source_api_association(
          map(),
          String.t(),
          String.t(),
          update_source_api_association_request(),
          list()
        ) ::
          {:ok, update_source_api_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_source_api_association_errors()}
  def update_source_api_association(
        %Client{} = client,
        association_id,
        merged_api_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/mergedApis/#{AWS.Util.encode_uri(merged_api_identifier)}/sourceApiAssociations/#{AWS.Util.encode_uri(association_id)}"

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
      200
    )
  end

  @doc """
  Updates a `Type` object.
  """
  @spec update_type(map(), String.t(), String.t(), update_type_request(), list()) ::
          {:ok, update_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_type_errors()}
  def update_type(%Client{} = client, api_id, type_name, input, options \\ []) do
    url_path = "/v1/apis/#{AWS.Util.encode_uri(api_id)}/types/#{AWS.Util.encode_uri(type_name)}"
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
      200
    )
  end
end
