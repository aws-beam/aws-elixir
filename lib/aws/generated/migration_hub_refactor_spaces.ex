# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MigrationHubRefactorSpaces do
  @moduledoc """
  Amazon Web Services Migration Hub Refactor Spaces

  This API reference provides descriptions, syntax, and other details about each
  of the
  actions and data types for Amazon Web Services Migration Hub Refactor Spaces
  (Refactor Spaces).

  The topic for each action shows the API
  request parameters and the response. Alternatively, you can use one of the
  Amazon Web Services SDKs to
  access an API that is tailored to the programming language or platform that
  you're using. For
  more information, see [Amazon Web Services SDKs](https://aws.amazon.com/tools/#SDKs).

  To share Refactor Spaces environments with other Amazon Web Services accounts or
  with Organizations
  and their OUs, use Resource Access Manager's `CreateResourceShare` API. See
  [CreateResourceShare](https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html)
  in the *Amazon Web Services RAM API Reference*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      lambda_endpoint_summary() :: %{
        "Arn" => String.t()
      }

  """
  @type lambda_endpoint_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_vpc() :: %{
        "AccountId" => String.t(),
        "CidrBlocks" => list(String.t()()),
        "CreatedTime" => non_neg_integer(),
        "EnvironmentId" => String.t(),
        "LastUpdatedTime" => non_neg_integer(),
        "VpcId" => String.t(),
        "VpcName" => String.t()
      }

  """
  @type environment_vpc() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_resource_policy_response() :: %{}

  """
  @type delete_resource_policy_response() :: %{}

  @typedoc """

  ## Example:

      default_route_input() :: %{
        "ActivationState" => String.t()
      }

  """
  @type default_route_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      api_gateway_proxy_input() :: %{
        "EndpointType" => String.t(),
        "StageName" => String.t()
      }

  """
  @type api_gateway_proxy_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_route_response() :: %{
        optional("ApplicationId") => String.t(),
        optional("Arn") => String.t(),
        optional("LastUpdatedTime") => non_neg_integer(),
        optional("RouteId") => String.t(),
        optional("ServiceId") => String.t(),
        optional("State") => String.t()
      }

  """
  @type update_route_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_service_response() :: %{
        optional("ApplicationId") => String.t(),
        optional("Arn") => String.t(),
        optional("CreatedByAccountId") => String.t(),
        optional("CreatedTime") => non_neg_integer(),
        optional("Description") => String.t(),
        optional("EndpointType") => String.t(),
        optional("EnvironmentId") => String.t(),
        optional("Error") => error_response(),
        optional("LambdaEndpoint") => lambda_endpoint_config(),
        optional("LastUpdatedTime") => non_neg_integer(),
        optional("Name") => String.t(),
        optional("OwnerAccountId") => String.t(),
        optional("ServiceId") => String.t(),
        optional("State") => String.t(),
        optional("Tags") => map(),
        optional("UrlEndpoint") => url_endpoint_config(),
        optional("VpcId") => String.t()
      }

  """
  @type get_service_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lambda_endpoint_config() :: %{
        "Arn" => String.t()
      }

  """
  @type lambda_endpoint_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      route_summary() :: %{
        "AppendSourcePath" => boolean(),
        "ApplicationId" => String.t(),
        "Arn" => String.t(),
        "CreatedByAccountId" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "EnvironmentId" => String.t(),
        "Error" => error_response(),
        "IncludeChildPaths" => boolean(),
        "LastUpdatedTime" => non_neg_integer(),
        "Methods" => list(String.t()()),
        "OwnerAccountId" => String.t(),
        "PathResourceToId" => map(),
        "RouteId" => String.t(),
        "RouteType" => String.t(),
        "ServiceId" => String.t(),
        "SourcePath" => String.t(),
        "State" => String.t(),
        "Tags" => map()
      }

  """
  @type route_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment_summary() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "EnvironmentId" => String.t(),
        "Error" => error_response(),
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t(),
        "NetworkFabricType" => String.t(),
        "OwnerAccountId" => String.t(),
        "State" => String.t(),
        "Tags" => map(),
        "TransitGatewayId" => String.t()
      }

  """
  @type environment_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_environment_request() :: %{}

  """
  @type get_environment_request() :: %{}

  @typedoc """

  ## Example:

      lambda_endpoint_input() :: %{
        "Arn" => String.t()
      }

  """
  @type lambda_endpoint_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_resource_policy_response() :: %{
        optional("Policy") => String.t()
      }

  """
  @type get_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_environment_response() :: %{
        optional("Arn") => String.t(),
        optional("CreatedTime") => non_neg_integer(),
        optional("Description") => String.t(),
        optional("EnvironmentId") => String.t(),
        optional("Error") => error_response(),
        optional("LastUpdatedTime") => non_neg_integer(),
        optional("Name") => String.t(),
        optional("NetworkFabricType") => String.t(),
        optional("OwnerAccountId") => String.t(),
        optional("State") => String.t(),
        optional("Tags") => map(),
        optional("TransitGatewayId") => String.t()
      }

  """
  @type get_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_service_request() :: %{}

  """
  @type get_service_request() :: %{}

  @typedoc """

  ## Example:

      list_services_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_services_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_services_response() :: %{
        optional("NextToken") => String.t(),
        optional("ServiceSummaryList") => list(service_summary()())
      }

  """
  @type list_services_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t(),
        "QuotaCode" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t(),
        "ServiceCode" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_summary() :: %{
        "ApplicationId" => String.t(),
        "Arn" => String.t(),
        "CreatedByAccountId" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "EndpointType" => String.t(),
        "EnvironmentId" => String.t(),
        "Error" => error_response(),
        "LambdaEndpoint" => lambda_endpoint_summary(),
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t(),
        "OwnerAccountId" => String.t(),
        "ServiceId" => String.t(),
        "State" => String.t(),
        "Tags" => map(),
        "UrlEndpoint" => url_endpoint_summary(),
        "VpcId" => String.t()
      }

  """
  @type service_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_service_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("LambdaEndpoint") => lambda_endpoint_input(),
        optional("Tags") => map(),
        optional("UrlEndpoint") => url_endpoint_input(),
        optional("VpcId") => String.t(),
        required("EndpointType") => String.t(),
        required("Name") => String.t()
      }

  """
  @type create_service_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      error_response() :: %{
        "AccountId" => String.t(),
        "AdditionalDetails" => map(),
        "Code" => String.t(),
        "Message" => String.t(),
        "ResourceIdentifier" => String.t(),
        "ResourceType" => String.t()
      }

  """
  @type error_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        optional("Tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_application_request() :: %{
        optional("ApiGatewayProxy") => api_gateway_proxy_input(),
        optional("ClientToken") => String.t(),
        optional("Tags") => map(),
        required("Name") => String.t(),
        required("ProxyType") => String.t(),
        required("VpcId") => String.t()
      }

  """
  @type create_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_environments_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_environments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_application_response() :: %{
        optional("ApiGatewayProxy") => api_gateway_proxy_input(),
        optional("ApplicationId") => String.t(),
        optional("Arn") => String.t(),
        optional("CreatedByAccountId") => String.t(),
        optional("CreatedTime") => non_neg_integer(),
        optional("EnvironmentId") => String.t(),
        optional("LastUpdatedTime") => non_neg_integer(),
        optional("Name") => String.t(),
        optional("OwnerAccountId") => String.t(),
        optional("ProxyType") => String.t(),
        optional("State") => String.t(),
        optional("Tags") => map(),
        optional("VpcId") => String.t()
      }

  """
  @type create_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_resource_policy_request() :: %{}

  """
  @type get_resource_policy_request() :: %{}

  @typedoc """

  ## Example:

      update_route_request() :: %{
        required("ActivationState") => String.t()
      }

  """
  @type update_route_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_application_response() :: %{
        optional("ApplicationId") => String.t(),
        optional("Arn") => String.t(),
        optional("EnvironmentId") => String.t(),
        optional("LastUpdatedTime") => non_neg_integer(),
        optional("Name") => String.t(),
        optional("State") => String.t()
      }

  """
  @type delete_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      url_endpoint_config() :: %{
        "HealthUrl" => String.t(),
        "Url" => String.t()
      }

  """
  @type url_endpoint_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_environment_response() :: %{
        optional("Arn") => String.t(),
        optional("CreatedTime") => non_neg_integer(),
        optional("Description") => String.t(),
        optional("EnvironmentId") => String.t(),
        optional("LastUpdatedTime") => non_neg_integer(),
        optional("Name") => String.t(),
        optional("NetworkFabricType") => String.t(),
        optional("OwnerAccountId") => String.t(),
        optional("State") => String.t(),
        optional("Tags") => map()
      }

  """
  @type create_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      uri_path_route_input() :: %{
        "ActivationState" => String.t(),
        "AppendSourcePath" => boolean(),
        "IncludeChildPaths" => boolean(),
        "Methods" => list(String.t()()),
        "SourcePath" => String.t()
      }

  """
  @type uri_path_route_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_environment_request() :: %{}

  """
  @type delete_environment_request() :: %{}

  @typedoc """

  ## Example:

      list_routes_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_routes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_application_response() :: %{
        optional("ApiGatewayProxy") => api_gateway_proxy_config(),
        optional("ApplicationId") => String.t(),
        optional("Arn") => String.t(),
        optional("CreatedByAccountId") => String.t(),
        optional("CreatedTime") => non_neg_integer(),
        optional("EnvironmentId") => String.t(),
        optional("Error") => error_response(),
        optional("LastUpdatedTime") => non_neg_integer(),
        optional("Name") => String.t(),
        optional("OwnerAccountId") => String.t(),
        optional("ProxyType") => String.t(),
        optional("State") => String.t(),
        optional("Tags") => map(),
        optional("VpcId") => String.t()
      }

  """
  @type get_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_applications_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_route_response() :: %{
        optional("AppendSourcePath") => boolean(),
        optional("ApplicationId") => String.t(),
        optional("Arn") => String.t(),
        optional("CreatedByAccountId") => String.t(),
        optional("CreatedTime") => non_neg_integer(),
        optional("EnvironmentId") => String.t(),
        optional("Error") => error_response(),
        optional("IncludeChildPaths") => boolean(),
        optional("LastUpdatedTime") => non_neg_integer(),
        optional("Methods") => list(String.t()()),
        optional("OwnerAccountId") => String.t(),
        optional("PathResourceToId") => map(),
        optional("RouteId") => String.t(),
        optional("RouteType") => String.t(),
        optional("ServiceId") => String.t(),
        optional("SourcePath") => String.t(),
        optional("State") => String.t(),
        optional("Tags") => map()
      }

  """
  @type get_route_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_resource_policy_request() :: %{
        required("Policy") => String.t(),
        required("ResourceArn") => String.t()
      }

  """
  @type put_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      api_gateway_proxy_config() :: %{
        "ApiGatewayId" => String.t(),
        "EndpointType" => String.t(),
        "NlbArn" => String.t(),
        "NlbName" => String.t(),
        "ProxyUrl" => String.t(),
        "StageName" => String.t(),
        "VpcLinkId" => String.t()
      }

  """
  @type api_gateway_proxy_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_routes_response() :: %{
        optional("NextToken") => String.t(),
        optional("RouteSummaryList") => list(route_summary()())
      }

  """
  @type list_routes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_environment_vpcs_response() :: %{
        optional("EnvironmentVpcList") => list(environment_vpc()()),
        optional("NextToken") => String.t()
      }

  """
  @type list_environment_vpcs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      url_endpoint_input() :: %{
        "HealthUrl" => String.t(),
        "Url" => String.t()
      }

  """
  @type url_endpoint_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_route_response() :: %{
        optional("ApplicationId") => String.t(),
        optional("Arn") => String.t(),
        optional("LastUpdatedTime") => non_neg_integer(),
        optional("RouteId") => String.t(),
        optional("ServiceId") => String.t(),
        optional("State") => String.t()
      }

  """
  @type delete_route_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_resource_policy_exception() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_resource_policy_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_route_response() :: %{
        optional("ApplicationId") => String.t(),
        optional("Arn") => String.t(),
        optional("CreatedByAccountId") => String.t(),
        optional("CreatedTime") => non_neg_integer(),
        optional("LastUpdatedTime") => non_neg_integer(),
        optional("OwnerAccountId") => String.t(),
        optional("RouteId") => String.t(),
        optional("RouteType") => String.t(),
        optional("ServiceId") => String.t(),
        optional("State") => String.t(),
        optional("Tags") => map(),
        optional("UriPathRoute") => uri_path_route_input()
      }

  """
  @type create_route_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      delete_service_request() :: %{}

  """
  @type delete_service_request() :: %{}

  @typedoc """

  ## Example:

      delete_route_request() :: %{}

  """
  @type delete_route_request() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t(),
        "QuotaCode" => String.t(),
        "RetryAfterSeconds" => integer(),
        "ServiceCode" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_environments_response() :: %{
        optional("EnvironmentSummaryList") => list(environment_summary()()),
        optional("NextToken") => String.t()
      }

  """
  @type list_environments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      application_summary() :: %{
        "ApiGatewayProxy" => api_gateway_proxy_summary(),
        "ApplicationId" => String.t(),
        "Arn" => String.t(),
        "CreatedByAccountId" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "EnvironmentId" => String.t(),
        "Error" => error_response(),
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t(),
        "OwnerAccountId" => String.t(),
        "ProxyType" => String.t(),
        "State" => String.t(),
        "Tags" => map(),
        "VpcId" => String.t()
      }

  """
  @type application_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_resource_policy_response() :: %{}

  """
  @type put_resource_policy_response() :: %{}

  @typedoc """

  ## Example:

      list_applications_response() :: %{
        optional("ApplicationSummaryList") => list(application_summary()()),
        optional("NextToken") => String.t()
      }

  """
  @type list_applications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_resource_policy_request() :: %{}

  """
  @type delete_resource_policy_request() :: %{}

  @typedoc """

  ## Example:

      api_gateway_proxy_summary() :: %{
        "ApiGatewayId" => String.t(),
        "EndpointType" => String.t(),
        "NlbArn" => String.t(),
        "NlbName" => String.t(),
        "ProxyUrl" => String.t(),
        "StageName" => String.t(),
        "VpcLinkId" => String.t()
      }

  """
  @type api_gateway_proxy_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_service_response() :: %{
        optional("ApplicationId") => String.t(),
        optional("Arn") => String.t(),
        optional("EnvironmentId") => String.t(),
        optional("LastUpdatedTime") => non_neg_integer(),
        optional("Name") => String.t(),
        optional("ServiceId") => String.t(),
        optional("State") => String.t()
      }

  """
  @type delete_service_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_route_request() :: %{
        optional("ClientToken") => String.t(),
        optional("DefaultRoute") => default_route_input(),
        optional("Tags") => map(),
        optional("UriPathRoute") => uri_path_route_input(),
        required("RouteType") => String.t(),
        required("ServiceIdentifier") => String.t()
      }

  """
  @type create_route_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_environment_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("Name") => String.t(),
        required("NetworkFabricType") => String.t()
      }

  """
  @type create_environment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_environment_vpcs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_environment_vpcs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_service_response() :: %{
        optional("ApplicationId") => String.t(),
        optional("Arn") => String.t(),
        optional("CreatedByAccountId") => String.t(),
        optional("CreatedTime") => non_neg_integer(),
        optional("Description") => String.t(),
        optional("EndpointType") => String.t(),
        optional("EnvironmentId") => String.t(),
        optional("LambdaEndpoint") => lambda_endpoint_input(),
        optional("LastUpdatedTime") => non_neg_integer(),
        optional("Name") => String.t(),
        optional("OwnerAccountId") => String.t(),
        optional("ServiceId") => String.t(),
        optional("State") => String.t(),
        optional("Tags") => map(),
        optional("UrlEndpoint") => url_endpoint_input(),
        optional("VpcId") => String.t()
      }

  """
  @type create_service_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_application_request() :: %{}

  """
  @type get_application_request() :: %{}

  @typedoc """

  ## Example:

      delete_environment_response() :: %{
        optional("Arn") => String.t(),
        optional("EnvironmentId") => String.t(),
        optional("LastUpdatedTime") => non_neg_integer(),
        optional("Name") => String.t(),
        optional("State") => String.t()
      }

  """
  @type delete_environment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_route_request() :: %{}

  """
  @type get_route_request() :: %{}

  @typedoc """

  ## Example:

      delete_application_request() :: %{}

  """
  @type delete_application_request() :: %{}

  @typedoc """

  ## Example:

      url_endpoint_summary() :: %{
        "HealthUrl" => String.t(),
        "Url" => String.t()
      }

  """
  @type url_endpoint_summary() :: %{String.t() => any()}

  @type create_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_route_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_service_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_route_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_service_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_environment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_route_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_service_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_applications_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_environment_vpcs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_environments_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_routes_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_services_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type put_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | invalid_resource_policy_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_route_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2021-10-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "refactor-spaces",
      global?: false,
      protocol: "rest-json",
      service_id: "Migration Hub Refactor Spaces",
      signature_version: "v4",
      signing_name: "refactor-spaces",
      target_prefix: nil
    }
  end

  @doc """
  Creates an Amazon Web Services Migration Hub Refactor Spaces application.

  The account that owns the environment also owns the
  applications created inside the environment, regardless of the account that
  creates the
  application. Refactor Spaces provisions an Amazon API Gateway, API Gateway VPC
  link, and
  Network Load Balancer for the application proxy inside your account.

  In environments created with a
  [CreateEnvironment:NetworkFabricType](https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateEnvironment.html#migrationhubrefactorspaces-CreateEnvironment-request-NetworkFabricType) of `NONE` you need to configure
  [ VPC to VPC
  connectivity](https://docs.aws.amazon.com/whitepapers/latest/aws-vpc-connectivity-options/amazon-vpc-to-amazon-vpc-connectivity-options.html)
  between your service VPC and the application proxy VPC to
  route traffic through the application proxy to a service with a private URL
  endpoint. For more
  information, see [
  Create an
  application](https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/userguide/getting-started-create-application.html)
  in the *Refactor Spaces User Guide*.
  """
  @spec create_application(map(), String.t(), create_application_request(), list()) ::
          {:ok, create_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_application_errors()}
  def create_application(%Client{} = client, environment_identifier, input, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(environment_identifier)}/applications"
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
  Creates an Amazon Web Services Migration Hub Refactor Spaces environment.

  The caller owns the environment resource, and all
  Refactor Spaces applications, services, and routes created within the
  environment. They are referred
  to as the *environment owner*. The environment owner has cross-account
  visibility and control of Refactor Spaces resources that are added to the
  environment by other
  accounts that the environment is shared with.

  When creating an environment with a
  [CreateEnvironment:NetworkFabricType](https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateEnvironment.html#migrationhubrefactorspaces-CreateEnvironment-request-NetworkFabricType) of `TRANSIT_GATEWAY`, Refactor Spaces
  provisions a transit gateway to enable services in VPCs to communicate directly
  across
  accounts. If
  [CreateEnvironment:NetworkFabricType](https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateEnvironment.html#migrationhubrefactorspaces-CreateEnvironment-request-NetworkFabricType)
  is `NONE`, Refactor Spaces does not create
  a transit gateway and you must use your network infrastructure to route traffic
  to services
  with private URL endpoints.
  """
  @spec create_environment(map(), create_environment_request(), list()) ::
          {:ok, create_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_environment_errors()}
  def create_environment(%Client{} = client, input, options \\ []) do
    url_path = "/environments"
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
  Creates an Amazon Web Services Migration Hub Refactor Spaces route.

  The account owner of the service resource is always the
  environment owner, regardless of which account creates the route. Routes target
  a service in
  the application. If an application does not have any routes, then the first
  route must be
  created as a `DEFAULT`
  `RouteType`.

  When created, the default route defaults to an active state so state is not a
  required
  input. However, like all other state values the state of the default route can
  be updated
  after creation, but only when all other routes are also inactive. Conversely, no
  route can be
  active without the default route also being active.

  When you create a route, Refactor Spaces configures the Amazon API Gateway to
  send traffic
  to the target service as follows:

    *

  ## URL Endpoints

  If the service has a URL endpoint, and the endpoint resolves to a private IP
  address,
  Refactor Spaces routes traffic using the API Gateway VPC link. If a service
  endpoint
  resolves to a public IP address, Refactor Spaces routes traffic over the public
  internet.
  Services can have HTTP or HTTPS URL endpoints. For HTTPS URLs, publicly-signed
  certificates are supported. Private Certificate Authorities (CAs) are permitted
  only if
  the CA's domain is also publicly resolvable.

  Refactor Spaces automatically resolves the public Domain Name System (DNS) names
  that are
  set in `CreateService:UrlEndpoint `when you create a service. The DNS names
  resolve when the DNS time-to-live (TTL) expires, or every 60 seconds for TTLs
  less than 60
  seconds. This periodic DNS resolution ensures that the route configuration
  remains
  up-to-date.

  ## One-time health check

  A one-time health check is performed on the service when either the route is
  updated
  from inactive to active, or when it is created with an active state. If the
  health check
  fails, the route transitions the route state to `FAILED`, an error code of
  `SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE` is provided, and no traffic is sent
  to the service.

  For private URLs, a target group is created on the Network Load Balancer and the
  load
  balancer target group runs default target health checks. By default, the health
  check is
  run against the service endpoint URL. Optionally, the health check can be
  performed
  against a different protocol, port, and/or path using the
  [CreateService:UrlEndpoint](https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateService.html#migrationhubrefactorspaces-CreateService-request-UrlEndpoint) parameter. All other health check settings for the
  load balancer use the default values described in the [Health
  checks for your target
  groups](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/target-group-health-checks.html)
  in the *Elastic Load Balancing
  guide*. The health check is considered successful if at least one target
  within the target group transitions to a healthy state.

    *

  ## Lambda function endpoints

  If the service has an Lambda function endpoint, then Refactor Spaces
  configures the Lambda function's resource policy to allow the application's
  API Gateway to invoke the function.

  The Lambda function state is checked. If the function is not active, the
  function configuration is updated so that Lambda resources are provisioned. If
  the Lambda state is `Failed`, then the route creation fails. For
  more information, see the [GetFunctionConfiguration's State response parameter](https://docs.aws.amazon.com/lambda/latest/dg/API_GetFunctionConfiguration.html#SSS-GetFunctionConfiguration-response-State)
  in the *Lambda Developer Guide*.

  A check is performed to determine that a Lambda function with the specified ARN
  exists. If it does not exist, the health check fails. For public URLs, a
  connection is
  opened to the public endpoint. If the URL is not reachable, the health check
  fails.

  ## Environments without a network bridge

  When you create environments without a network bridge
  ([CreateEnvironment:NetworkFabricType](https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateEnvironment.html#migrationhubrefactorspaces-CreateEnvironment-request-NetworkFabricType) is `NONE)` and you use your own
  networking infrastructure, you need to configure [VPC to VPC
  connectivity](https://docs.aws.amazon.com/whitepapers/latest/aws-vpc-connectivity-options/amazon-vpc-to-amazon-vpc-connectivity-options.html)
  between your network and the application proxy VPC. Route
  creation from the application proxy to service endpoints will fail if your
  network is not
  configured to connect to the application proxy VPC. For more information, see [
  Create
  a
  route](https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/userguide/getting-started-create-role.html)
  in the *Refactor Spaces User Guide*.
  """
  @spec create_route(map(), String.t(), String.t(), create_route_request(), list()) ::
          {:ok, create_route_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_route_errors()}
  def create_route(
        %Client{} = client,
        application_identifier,
        environment_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/environments/#{AWS.Util.encode_uri(environment_identifier)}/applications/#{AWS.Util.encode_uri(application_identifier)}/routes"

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
  Creates an Amazon Web Services Migration Hub Refactor Spaces service.

  The account owner of the service is always the
  environment owner, regardless of which account in the environment creates the
  service.
  Services have either a URL endpoint in a virtual private cloud (VPC), or a
  Lambda
  function endpoint.

  If an Amazon Web Services resource is launched in a service VPC, and you want it
  to be
  accessible to all of an environment’s services with VPCs and routes, apply the
  `RefactorSpacesSecurityGroup` to the resource. Alternatively, to add more
  cross-account constraints, apply your own security group.
  """
  @spec create_service(map(), String.t(), String.t(), create_service_request(), list()) ::
          {:ok, create_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_service_errors()}
  def create_service(
        %Client{} = client,
        application_identifier,
        environment_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/environments/#{AWS.Util.encode_uri(environment_identifier)}/applications/#{AWS.Util.encode_uri(application_identifier)}/services"

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
  Deletes an Amazon Web Services Migration Hub Refactor Spaces application.

  Before you can delete an application, you must first
  delete any services or routes within the application.
  """
  @spec delete_application(map(), String.t(), String.t(), delete_application_request(), list()) ::
          {:ok, delete_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_application_errors()}
  def delete_application(
        %Client{} = client,
        application_identifier,
        environment_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/environments/#{AWS.Util.encode_uri(environment_identifier)}/applications/#{AWS.Util.encode_uri(application_identifier)}"

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
  Deletes an Amazon Web Services Migration Hub Refactor Spaces environment.

  Before you can delete an environment, you must first
  delete any applications and services within the environment.
  """
  @spec delete_environment(map(), String.t(), delete_environment_request(), list()) ::
          {:ok, delete_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_environment_errors()}
  def delete_environment(%Client{} = client, environment_identifier, input, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(environment_identifier)}"
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
  Deletes the resource policy set for the environment.
  """
  @spec delete_resource_policy(map(), String.t(), delete_resource_policy_request(), list()) ::
          {:ok, delete_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/resourcepolicy/#{AWS.Util.encode_uri(identifier)}"
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
  Deletes an Amazon Web Services Migration Hub Refactor Spaces route.
  """
  @spec delete_route(map(), String.t(), String.t(), String.t(), delete_route_request(), list()) ::
          {:ok, delete_route_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_route_errors()}
  def delete_route(
        %Client{} = client,
        application_identifier,
        environment_identifier,
        route_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/environments/#{AWS.Util.encode_uri(environment_identifier)}/applications/#{AWS.Util.encode_uri(application_identifier)}/routes/#{AWS.Util.encode_uri(route_identifier)}"

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
  Deletes an Amazon Web Services Migration Hub Refactor Spaces service.
  """
  @spec delete_service(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_service_request(),
          list()
        ) ::
          {:ok, delete_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_service_errors()}
  def delete_service(
        %Client{} = client,
        application_identifier,
        environment_identifier,
        service_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/environments/#{AWS.Util.encode_uri(environment_identifier)}/applications/#{AWS.Util.encode_uri(application_identifier)}/services/#{AWS.Util.encode_uri(service_identifier)}"

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
  Gets an Amazon Web Services Migration Hub Refactor Spaces application.
  """
  @spec get_application(map(), String.t(), String.t(), list()) ::
          {:ok, get_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_application_errors()}
  def get_application(
        %Client{} = client,
        application_identifier,
        environment_identifier,
        options \\ []
      ) do
    url_path =
      "/environments/#{AWS.Util.encode_uri(environment_identifier)}/applications/#{AWS.Util.encode_uri(application_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an Amazon Web Services Migration Hub Refactor Spaces environment.
  """
  @spec get_environment(map(), String.t(), list()) ::
          {:ok, get_environment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_environment_errors()}
  def get_environment(%Client{} = client, environment_identifier, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(environment_identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the resource-based permission policy that is set for the given environment.
  """
  @spec get_resource_policy(map(), String.t(), list()) ::
          {:ok, get_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_policy_errors()}
  def get_resource_policy(%Client{} = client, identifier, options \\ []) do
    url_path = "/resourcepolicy/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an Amazon Web Services Migration Hub Refactor Spaces route.
  """
  @spec get_route(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_route_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_route_errors()}
  def get_route(
        %Client{} = client,
        application_identifier,
        environment_identifier,
        route_identifier,
        options \\ []
      ) do
    url_path =
      "/environments/#{AWS.Util.encode_uri(environment_identifier)}/applications/#{AWS.Util.encode_uri(application_identifier)}/routes/#{AWS.Util.encode_uri(route_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an Amazon Web Services Migration Hub Refactor Spaces service.
  """
  @spec get_service(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_service_errors()}
  def get_service(
        %Client{} = client,
        application_identifier,
        environment_identifier,
        service_identifier,
        options \\ []
      ) do
    url_path =
      "/environments/#{AWS.Util.encode_uri(environment_identifier)}/applications/#{AWS.Util.encode_uri(application_identifier)}/services/#{AWS.Util.encode_uri(service_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the Amazon Web Services Migration Hub Refactor Spaces applications
  within an environment.
  """
  @spec list_applications(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_applications_errors()}
  def list_applications(
        %Client{} = client,
        environment_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/environments/#{AWS.Util.encode_uri(environment_identifier)}/applications"
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
  Lists all Amazon Web Services Migration Hub Refactor Spaces service virtual
  private clouds (VPCs) that are part of the
  environment.
  """
  @spec list_environment_vpcs(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_environment_vpcs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_environment_vpcs_errors()}
  def list_environment_vpcs(
        %Client{} = client,
        environment_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/environments/#{AWS.Util.encode_uri(environment_identifier)}/vpcs"
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
  Lists Amazon Web Services Migration Hub Refactor Spaces environments owned by a
  caller account or shared with the caller
  account.
  """
  @spec list_environments(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_environments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_environments_errors()}
  def list_environments(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/environments"
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
  Lists all the Amazon Web Services Migration Hub Refactor Spaces routes within an
  application.
  """
  @spec list_routes(map(), String.t(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_routes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_routes_errors()}
  def list_routes(
        %Client{} = client,
        application_identifier,
        environment_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/environments/#{AWS.Util.encode_uri(environment_identifier)}/applications/#{AWS.Util.encode_uri(application_identifier)}/routes"

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
  Lists all the Amazon Web Services Migration Hub Refactor Spaces services within
  an application.
  """
  @spec list_services(map(), String.t(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_services_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_services_errors()}
  def list_services(
        %Client{} = client,
        application_identifier,
        environment_identifier,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/environments/#{AWS.Util.encode_uri(environment_identifier)}/applications/#{AWS.Util.encode_uri(application_identifier)}/services"

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
  Lists the tags of a resource.

  The caller account must be the same as the resource’s
  `OwnerAccountId`. Listing tags in other accounts is not supported.
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
  Attaches a resource-based permission policy to the Amazon Web Services Migration
  Hub Refactor Spaces environment.

  The policy
  must contain the same actions and condition statements as the
  `arn:aws:ram::aws:permission/AWSRAMDefaultPermissionRefactorSpacesEnvironment`
  permission in Resource Access Manager. The policy must not contain new lines or
  blank lines.
  """
  @spec put_resource_policy(map(), put_resource_policy_request(), list()) ::
          {:ok, put_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    url_path = "/resourcepolicy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Removes the tags of a given resource.

  Tags are metadata which can be used to manage a
  resource. To tag a resource, the caller account must be the same as the
  resource’s
  `OwnerAccountId`. Tagging resources in other accounts is not supported.

  Amazon Web Services Migration Hub Refactor Spaces does not propagate tags to
  orchestrated resources, such as an
  environment’s transit gateway.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Adds to or modifies the tags of the given resource.

  Tags are metadata which can be used to
  manage a resource. To untag a resource, the caller account must be the same as
  the resource’s
  `OwnerAccountId`. Untagging resources across accounts is not supported.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      200
    )
  end

  @doc """
  Updates an Amazon Web Services Migration Hub Refactor Spaces route.
  """
  @spec update_route(map(), String.t(), String.t(), String.t(), update_route_request(), list()) ::
          {:ok, update_route_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_route_errors()}
  def update_route(
        %Client{} = client,
        application_identifier,
        environment_identifier,
        route_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/environments/#{AWS.Util.encode_uri(environment_identifier)}/applications/#{AWS.Util.encode_uri(application_identifier)}/routes/#{AWS.Util.encode_uri(route_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
