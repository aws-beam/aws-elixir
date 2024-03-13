# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AppMesh do
  @moduledoc """
  App Mesh is a service mesh based on the Envoy proxy that makes it easy to
  monitor and control microservices.

  App Mesh standardizes how your microservices
  communicate, giving you end-to-end visibility and helping to ensure high
  availability for
  your applications.

  App Mesh gives you consistent visibility and network traffic controls for
  every microservice in an application. You can use App Mesh with Amazon Web
  Services Fargate, Amazon ECS, Amazon EKS, Kubernetes on Amazon Web Services, and
  Amazon EC2.

  App Mesh supports microservice applications that use service discovery
  naming for their components. For more information about service discovery on
  Amazon ECS, see [Service Discovery](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html)
  in the *Amazon Elastic Container Service Developer Guide*. Kubernetes
  `kube-dns` and `coredns` are supported. For more information,
  see [DNS for Services and
  Pods](https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/)
  in the Kubernetes documentation.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      create_virtual_gateway_output() :: %{
        required("virtualGateway") => virtual_gateway_data()
      }

  """
  @type create_virtual_gateway_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      http_timeout() :: %{
        "idle" => duration(),
        "perRequest" => duration()
      }

  """
  @type http_timeout() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      subject_alternative_names() :: %{
        "match" => subject_alternative_name_matchers()
      }

  """
  @type subject_alternative_names() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_gateway_ref() :: %{
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "lastUpdatedAt" => [non_neg_integer()],
        "meshName" => String.t(),
        "meshOwner" => String.t(),
        "resourceOwner" => String.t(),
        "version" => [float()],
        "virtualGatewayName" => String.t()
      }

  """
  @type virtual_gateway_ref() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_route_input() :: %{
        "clientToken" => [String.t()],
        "meshOwner" => String.t(),
        "spec" => route_spec()
      }

  """
  @type update_route_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_virtual_router_output() :: %{
        "virtualRouter" => virtual_router_data()
      }

  """
  @type describe_virtual_router_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_virtual_service_output() :: %{
        "virtualService" => virtual_service_data()
      }

  """
  @type create_virtual_service_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_virtual_service_input() :: %{
        "meshOwner" => String.t()
      }

  """
  @type delete_virtual_service_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tls_validation_context_sds_trust() :: %{
        "secretName" => String.t()
      }

  """
  @type tls_validation_context_sds_trust() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_metadata() :: %{
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "lastUpdatedAt" => [non_neg_integer()],
        "meshOwner" => String.t(),
        "resourceOwner" => String.t(),
        "uid" => [String.t()],
        "version" => [float()]
      }

  """
  @type resource_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mesh_ref() :: %{
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "lastUpdatedAt" => [non_neg_integer()],
        "meshName" => String.t(),
        "meshOwner" => String.t(),
        "resourceOwner" => String.t(),
        "version" => [float()]
      }

  """
  @type mesh_ref() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      outlier_detection() :: %{
        "baseEjectionDuration" => duration(),
        "interval" => duration(),
        "maxEjectionPercent" => integer(),
        "maxServerErrors" => float()
      }

  """
  @type outlier_detection() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      grpc_gateway_route_rewrite() :: %{
        "hostname" => gateway_route_hostname_rewrite()
      }

  """
  @type grpc_gateway_route_rewrite() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      http_gateway_route_prefix_rewrite() :: %{
        "defaultPrefix" => String.t(),
        "value" => String.t()
      }

  """
  @type http_gateway_route_prefix_rewrite() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_node_grpc_connection_pool() :: %{
        "maxRequests" => integer()
      }

  """
  @type virtual_node_grpc_connection_pool() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_mesh_input() :: %{
        "clientToken" => [String.t()],
        "spec" => mesh_spec()
      }

  """
  @type update_mesh_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_virtual_gateways_input() :: %{
        optional("limit") => integer(),
        optional("meshOwner") => String.t(),
        optional("nextToken") => [String.t()]
      }

  """
  @type list_virtual_gateways_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gateway_route_hostname_match() :: %{
        "exact" => String.t(),
        "suffix" => String.t()
      }

  """
  @type gateway_route_hostname_match() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_virtual_router_output() :: %{
        "virtualRouter" => virtual_router_data()
      }

  """
  @type update_virtual_router_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_virtual_router_output() :: %{
        "virtualRouter" => virtual_router_data()
      }

  """
  @type create_virtual_router_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_route_output() :: %{
        "route" => route_data()
      }

  """
  @type create_route_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_virtual_gateway_output() :: %{
        required("virtualGateway") => virtual_gateway_data()
      }

  """
  @type delete_virtual_gateway_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_mesh_output() :: %{
        "mesh" => mesh_data()
      }

  """
  @type create_mesh_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      grpc_route_match() :: %{
        "metadata" => list(grpc_route_metadata()()),
        "methodName" => String.t(),
        "port" => integer(),
        "serviceName" => String.t()
      }

  """
  @type grpc_route_match() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_route_input() :: %{
        "meshOwner" => String.t()
      }

  """
  @type describe_route_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      listener() :: %{
        "connectionPool" => list(),
        "healthCheck" => health_check_policy(),
        "outlierDetection" => outlier_detection(),
        "portMapping" => port_mapping(),
        "timeout" => list(),
        "tls" => listener_tls()
      }

  """
  @type listener() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tls_validation_context_acm_trust() :: %{
        "certificateAuthorityArns" => list(String.t()())
      }

  """
  @type tls_validation_context_acm_trust() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      match_range() :: %{
        "end" => [float()],
        "start" => [float()]
      }

  """
  @type match_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_route_input() :: %{
        "clientToken" => [String.t()],
        "meshOwner" => String.t(),
        "routeName" => String.t(),
        "spec" => route_spec(),
        "tags" => list(tag_ref()())
      }

  """
  @type create_route_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_in_use_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_virtual_node_output() :: %{
        "virtualNode" => virtual_node_data()
      }

  """
  @type update_virtual_node_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_virtual_service_output() :: %{
        "virtualService" => virtual_service_data()
      }

  """
  @type delete_virtual_service_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tcp_route_action() :: %{
        "weightedTargets" => list(weighted_target()())
      }

  """
  @type tcp_route_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      weighted_target() :: %{
        "port" => integer(),
        "virtualNode" => String.t(),
        "weight" => integer()
      }

  """
  @type weighted_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type forbidden_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_ref() :: %{
        "key" => String.t(),
        "value" => String.t()
      }

  """
  @type tag_ref() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_gateway_client_policy() :: %{
        "tls" => virtual_gateway_client_policy_tls()
      }

  """
  @type virtual_gateway_client_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_service_status() :: %{
        "status" => String.t()
      }

  """
  @type virtual_service_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_virtual_gateway_input() :: %{
        optional("clientToken") => [String.t()],
        optional("meshOwner") => String.t(),
        required("spec") => virtual_gateway_spec()
      }

  """
  @type update_virtual_gateway_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_gateway_route_input() :: %{
        optional("meshOwner") => String.t()
      }

  """
  @type describe_gateway_route_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_routes_output() :: %{
        "nextToken" => [String.t()],
        "routes" => list(route_ref()())
      }

  """
  @type list_routes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mesh_spec() :: %{
        "egressFilter" => egress_filter(),
        "serviceDiscovery" => mesh_service_discovery()
      }

  """
  @type mesh_spec() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_node_http2_connection_pool() :: %{
        "maxRequests" => integer()
      }

  """
  @type virtual_node_http2_connection_pool() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      http_retry_policy() :: %{
        "httpRetryEvents" => list(String.t()()),
        "maxRetries" => float(),
        "perRetryTimeout" => duration(),
        "tcpRetryEvents" => list(String.t()())
      }

  """
  @type http_retry_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_gateway_spec() :: %{
        "backendDefaults" => virtual_gateway_backend_defaults(),
        "listeners" => list(virtual_gateway_listener()()),
        "logging" => virtual_gateway_logging()
      }

  """
  @type virtual_gateway_spec() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_virtual_gateway_input() :: %{
        optional("meshOwner") => String.t()
      }

  """
  @type describe_virtual_gateway_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      listener_tls_validation_context() :: %{
        "subjectAlternativeNames" => subject_alternative_names(),
        "trust" => list()
      }

  """
  @type listener_tls_validation_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_router_listener() :: %{
        "portMapping" => port_mapping()
      }

  """
  @type virtual_router_listener() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mesh_status() :: %{
        "status" => String.t()
      }

  """
  @type mesh_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aws_cloud_map_service_discovery() :: %{
        "attributes" => list(aws_cloud_map_instance_attribute()()),
        "ipPreference" => String.t(),
        "namespaceName" => String.t(),
        "serviceName" => String.t()
      }

  """
  @type aws_cloud_map_service_discovery() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_virtual_router_input() :: %{
        "clientToken" => [String.t()],
        "meshOwner" => String.t(),
        "spec" => virtual_router_spec()
      }

  """
  @type update_virtual_router_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mesh_service_discovery() :: %{
        "ipPreference" => String.t()
      }

  """
  @type mesh_service_discovery() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_meshes_input() :: %{
        "limit" => integer(),
        "nextToken" => [String.t()]
      }

  """
  @type list_meshes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        "nextToken" => [String.t()],
        "tags" => list(tag_ref()())
      }

  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_service_spec() :: %{
        "provider" => list()
      }

  """
  @type virtual_service_spec() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      mesh_data() :: %{
        "meshName" => String.t(),
        "metadata" => resource_metadata(),
        "spec" => mesh_spec(),
        "status" => mesh_status()
      }

  """
  @type mesh_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_gateway_grpc_connection_pool() :: %{
        "maxRequests" => integer()
      }

  """
  @type virtual_gateway_grpc_connection_pool() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      http_gateway_route_rewrite() :: %{
        "hostname" => gateway_route_hostname_rewrite(),
        "path" => http_gateway_route_path_rewrite(),
        "prefix" => http_gateway_route_prefix_rewrite()
      }

  """
  @type http_gateway_route_rewrite() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_route_output() :: %{
        "route" => route_data()
      }

  """
  @type delete_route_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_virtual_nodes_output() :: %{
        "nextToken" => [String.t()],
        "virtualNodes" => list(virtual_node_ref()())
      }

  """
  @type list_virtual_nodes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      route_status() :: %{
        "status" => String.t()
      }

  """
  @type route_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_gateway_listener_tls_validation_context() :: %{
        "subjectAlternativeNames" => subject_alternative_names(),
        "trust" => list()
      }

  """
  @type virtual_gateway_listener_tls_validation_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_virtual_router_input() :: %{
        "meshOwner" => String.t()
      }

  """
  @type describe_virtual_router_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_meshes_output() :: %{
        "meshes" => list(mesh_ref()()),
        "nextToken" => [String.t()]
      }

  """
  @type list_meshes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_gateway_listener_tls_sds_certificate() :: %{
        "secretName" => String.t()
      }

  """
  @type virtual_gateway_listener_tls_sds_certificate() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_virtual_routers_input() :: %{
        "limit" => integer(),
        "meshOwner" => String.t(),
        "nextToken" => [String.t()]
      }

  """
  @type list_virtual_routers_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gateway_route_target() :: %{
        "port" => integer(),
        "virtualService" => gateway_route_virtual_service()
      }

  """
  @type gateway_route_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_node_tcp_connection_pool() :: %{
        "maxConnections" => integer()
      }

  """
  @type virtual_node_tcp_connection_pool() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gateway_route_spec() :: %{
        "grpcRoute" => grpc_gateway_route(),
        "http2Route" => http_gateway_route(),
        "httpRoute" => http_gateway_route(),
        "priority" => integer()
      }

  """
  @type gateway_route_spec() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_virtual_nodes_input() :: %{
        "limit" => integer(),
        "meshOwner" => String.t(),
        "nextToken" => [String.t()]
      }

  """
  @type list_virtual_nodes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_router_service_provider() :: %{
        "virtualRouterName" => String.t()
      }

  """
  @type virtual_router_service_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      grpc_route_metadata() :: %{
        "invert" => [boolean()],
        "match" => list(),
        "name" => String.t()
      }

  """
  @type grpc_route_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_node_ref() :: %{
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "lastUpdatedAt" => [non_neg_integer()],
        "meshName" => String.t(),
        "meshOwner" => String.t(),
        "resourceOwner" => String.t(),
        "version" => [float()],
        "virtualNodeName" => String.t()
      }

  """
  @type virtual_node_ref() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_gateway_route_input() :: %{
        optional("clientToken") => [String.t()],
        optional("meshOwner") => String.t(),
        required("spec") => gateway_route_spec()
      }

  """
  @type update_gateway_route_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_gateway_route_input() :: %{
        optional("meshOwner") => String.t()
      }

  """
  @type delete_gateway_route_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      route_ref() :: %{
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "lastUpdatedAt" => [non_neg_integer()],
        "meshName" => String.t(),
        "meshOwner" => String.t(),
        "resourceOwner" => String.t(),
        "routeName" => String.t(),
        "version" => [float()],
        "virtualRouterName" => String.t()
      }

  """
  @type route_ref() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tls_validation_context() :: %{
        "subjectAlternativeNames" => subject_alternative_names(),
        "trust" => list()
      }

  """
  @type tls_validation_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      http_gateway_route_header() :: %{
        "invert" => [boolean()],
        "match" => list(),
        "name" => String.t()
      }

  """
  @type http_gateway_route_header() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_route_output() :: %{
        "route" => route_data()
      }

  """
  @type describe_route_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      grpc_timeout() :: %{
        "idle" => duration(),
        "perRequest" => duration()
      }

  """
  @type grpc_timeout() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      client_policy() :: %{
        "tls" => client_policy_tls()
      }

  """
  @type client_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_virtual_router_input() :: %{
        "clientToken" => [String.t()],
        "meshOwner" => String.t(),
        "spec" => virtual_router_spec(),
        "tags" => list(tag_ref()()),
        "virtualRouterName" => String.t()
      }

  """
  @type create_virtual_router_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tcp_route_match() :: %{
        "port" => integer()
      }

  """
  @type tcp_route_match() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_virtual_service_output() :: %{
        "virtualService" => virtual_service_data()
      }

  """
  @type update_virtual_service_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      subject_alternative_name_matchers() :: %{
        "exact" => list(String.t()())
      }

  """
  @type subject_alternative_name_matchers() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_gateway_backend_defaults() :: %{
        "clientPolicy" => virtual_gateway_client_policy()
      }

  """
  @type virtual_gateway_backend_defaults() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_virtual_gateways_output() :: %{
        optional("nextToken") => [String.t()],
        required("virtualGateways") => list(virtual_gateway_ref()())
      }

  """
  @type list_virtual_gateways_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_virtual_node_output() :: %{
        "virtualNode" => virtual_node_data()
      }

  """
  @type describe_virtual_node_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_gateway_file_access_log() :: %{
        "format" => list(),
        "path" => String.t()
      }

  """
  @type virtual_gateway_file_access_log() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_gateway_logging() :: %{
        "accessLog" => list()
      }

  """
  @type virtual_gateway_logging() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_gateway_routes_input() :: %{
        optional("limit") => integer(),
        optional("meshOwner") => String.t(),
        optional("nextToken") => [String.t()]
      }

  """
  @type list_gateway_routes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_node_status() :: %{
        "status" => String.t()
      }

  """
  @type virtual_node_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gateway_route_virtual_service() :: %{
        "virtualServiceName" => String.t()
      }

  """
  @type gateway_route_virtual_service() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_virtual_gateway_output() :: %{
        required("virtualGateway") => virtual_gateway_data()
      }

  """
  @type describe_virtual_gateway_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_route_input() :: %{
        "meshOwner" => String.t()
      }

  """
  @type delete_route_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_node_data() :: %{
        "meshName" => String.t(),
        "metadata" => resource_metadata(),
        "spec" => virtual_node_spec(),
        "status" => virtual_node_status(),
        "virtualNodeName" => String.t()
      }

  """
  @type virtual_node_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_service_ref() :: %{
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "lastUpdatedAt" => [non_neg_integer()],
        "meshName" => String.t(),
        "meshOwner" => String.t(),
        "resourceOwner" => String.t(),
        "version" => [float()],
        "virtualServiceName" => String.t()
      }

  """
  @type virtual_service_ref() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      listener_tls_file_certificate() :: %{
        "certificateChain" => String.t(),
        "privateKey" => String.t()
      }

  """
  @type listener_tls_file_certificate() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_gateway_status() :: %{
        "status" => String.t()
      }

  """
  @type virtual_gateway_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_mesh_input() :: %{}

  """
  @type delete_mesh_input() :: %{}

  @typedoc """

  ## Example:

      virtual_node_service_provider() :: %{
        "virtualNodeName" => String.t()
      }

  """
  @type virtual_node_service_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_virtual_router_input() :: %{
        "meshOwner" => String.t()
      }

  """
  @type delete_virtual_router_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_gateway_listener_tls_acm_certificate() :: %{
        "certificateArn" => String.t()
      }

  """
  @type virtual_gateway_listener_tls_acm_certificate() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_gateway_route_output() :: %{
        required("gatewayRoute") => gateway_route_data()
      }

  """
  @type describe_gateway_route_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_virtual_node_input() :: %{
        "clientToken" => [String.t()],
        "meshOwner" => String.t(),
        "spec" => virtual_node_spec(),
        "tags" => list(tag_ref()()),
        "virtualNodeName" => String.t()
      }

  """
  @type create_virtual_node_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_router_spec() :: %{
        "listeners" => list(virtual_router_listener()())
      }

  """
  @type virtual_router_spec() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_gateway_listener() :: %{
        "connectionPool" => list(),
        "healthCheck" => virtual_gateway_health_check_policy(),
        "portMapping" => virtual_gateway_port_mapping(),
        "tls" => virtual_gateway_listener_tls()
      }

  """
  @type virtual_gateway_listener() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      json_format_ref() :: %{
        "key" => String.t(),
        "value" => String.t()
      }

  """
  @type json_format_ref() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        "resourceArn" => String.t(),
        "tags" => list(tag_ref()())
      }

  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_gateway_tls_validation_context_sds_trust() :: %{
        "secretName" => String.t()
      }

  """
  @type virtual_gateway_tls_validation_context_sds_trust() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      listener_tls_acm_certificate() :: %{
        "certificateArn" => String.t()
      }

  """
  @type listener_tls_acm_certificate() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_virtual_service_input() :: %{
        "clientToken" => [String.t()],
        "meshOwner" => String.t(),
        "spec" => virtual_service_spec(),
        "tags" => list(tag_ref()()),
        "virtualServiceName" => String.t()
      }

  """
  @type create_virtual_service_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_virtual_routers_output() :: %{
        "nextToken" => [String.t()],
        "virtualRouters" => list(virtual_router_ref()())
      }

  """
  @type list_virtual_routers_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      grpc_route_action() :: %{
        "weightedTargets" => list(weighted_target()())
      }

  """
  @type grpc_route_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_virtual_router_output() :: %{
        "virtualRouter" => virtual_router_data()
      }

  """
  @type delete_virtual_router_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_virtual_services_output() :: %{
        "nextToken" => [String.t()],
        "virtualServices" => list(virtual_service_ref()())
      }

  """
  @type list_virtual_services_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_output() :: %{}

  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:

      virtual_gateway_health_check_policy() :: %{
        "healthyThreshold" => integer(),
        "intervalMillis" => float(),
        "path" => [String.t()],
        "port" => integer(),
        "protocol" => String.t(),
        "timeoutMillis" => float(),
        "unhealthyThreshold" => integer()
      }

  """
  @type virtual_gateway_health_check_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_gateway_port_mapping() :: %{
        "port" => integer(),
        "protocol" => String.t()
      }

  """
  @type virtual_gateway_port_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_routes_input() :: %{
        "limit" => integer(),
        "meshOwner" => String.t(),
        "nextToken" => [String.t()]
      }

  """
  @type list_routes_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_virtual_node_input() :: %{
        "meshOwner" => String.t()
      }

  """
  @type describe_virtual_node_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_gateway_route_output() :: %{
        required("gatewayRoute") => gateway_route_data()
      }

  """
  @type create_gateway_route_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      http_route_action() :: %{
        "weightedTargets" => list(weighted_target()())
      }

  """
  @type http_route_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tcp_timeout() :: %{
        "idle" => duration()
      }

  """
  @type tcp_timeout() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_gateway_route_output() :: %{
        required("gatewayRoute") => gateway_route_data()
      }

  """
  @type update_gateway_route_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_route_output() :: %{
        "route" => route_data()
      }

  """
  @type update_route_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tls_validation_context_file_trust() :: %{
        "certificateChain" => String.t()
      }

  """
  @type tls_validation_context_file_trust() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_gateway_http_connection_pool() :: %{
        "maxConnections" => integer(),
        "maxPendingRequests" => integer()
      }

  """
  @type virtual_gateway_http_connection_pool() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_gateway_tls_validation_context() :: %{
        "subjectAlternativeNames" => subject_alternative_names(),
        "trust" => list()
      }

  """
  @type virtual_gateway_tls_validation_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      route_data() :: %{
        "meshName" => String.t(),
        "metadata" => resource_metadata(),
        "routeName" => String.t(),
        "spec" => route_spec(),
        "status" => route_status(),
        "virtualRouterName" => String.t()
      }

  """
  @type route_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_gateway_route_output() :: %{
        required("gatewayRoute") => gateway_route_data()
      }

  """
  @type delete_gateway_route_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_node_http_connection_pool() :: %{
        "maxConnections" => integer(),
        "maxPendingRequests" => integer()
      }

  """
  @type virtual_node_http_connection_pool() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_gateway_client_policy_tls() :: %{
        "certificate" => list(),
        "enforce" => [boolean()],
        "ports" => list(integer()()),
        "validation" => virtual_gateway_tls_validation_context()
      }

  """
  @type virtual_gateway_client_policy_tls() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tcp_route() :: %{
        "action" => tcp_route_action(),
        "match" => tcp_route_match(),
        "timeout" => tcp_timeout()
      }

  """
  @type tcp_route() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      grpc_gateway_route() :: %{
        "action" => grpc_gateway_route_action(),
        "match" => grpc_gateway_route_match()
      }

  """
  @type grpc_gateway_route() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      grpc_gateway_route_metadata() :: %{
        "invert" => [boolean()],
        "match" => list(),
        "name" => String.t()
      }

  """
  @type grpc_gateway_route_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        "resourceArn" => String.t(),
        "tagKeys" => list(String.t()())
      }

  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_mesh_output() :: %{
        "mesh" => mesh_data()
      }

  """
  @type describe_mesh_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_gateway_tls_validation_context_file_trust() :: %{
        "certificateChain" => String.t()
      }

  """
  @type virtual_gateway_tls_validation_context_file_trust() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      backend_defaults() :: %{
        "clientPolicy" => client_policy()
      }

  """
  @type backend_defaults() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      port_mapping() :: %{
        "port" => integer(),
        "protocol" => String.t()
      }

  """
  @type port_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      duration() :: %{
        "unit" => String.t(),
        "value" => float()
      }

  """
  @type duration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gateway_route_ref() :: %{
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "gatewayRouteName" => String.t(),
        "lastUpdatedAt" => [non_neg_integer()],
        "meshName" => String.t(),
        "meshOwner" => String.t(),
        "resourceOwner" => String.t(),
        "version" => [float()],
        "virtualGatewayName" => String.t()
      }

  """
  @type gateway_route_ref() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_node_spec() :: %{
        "backendDefaults" => backend_defaults(),
        "backends" => list(list()()),
        "listeners" => list(listener()()),
        "logging" => logging(),
        "serviceDiscovery" => list()
      }

  """
  @type virtual_node_spec() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gateway_route_hostname_rewrite() :: %{
        "defaultTargetHostname" => String.t()
      }

  """
  @type gateway_route_hostname_rewrite() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_mesh_output() :: %{
        "mesh" => mesh_data()
      }

  """
  @type delete_mesh_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      route_spec() :: %{
        "grpcRoute" => grpc_route(),
        "http2Route" => http_route(),
        "httpRoute" => http_route(),
        "priority" => integer(),
        "tcpRoute" => tcp_route()
      }

  """
  @type route_spec() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_service_backend() :: %{
        "clientPolicy" => client_policy(),
        "virtualServiceName" => String.t()
      }

  """
  @type virtual_service_backend() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_input() :: %{
        "limit" => integer(),
        "nextToken" => [String.t()],
        "resourceArn" => String.t()
      }

  """
  @type list_tags_for_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dns_service_discovery() :: %{
        "hostname" => String.t(),
        "ipPreference" => String.t(),
        "responseType" => String.t()
      }

  """
  @type dns_service_discovery() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_output() :: %{}

  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:

      internal_server_error_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type internal_server_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      grpc_gateway_route_action() :: %{
        "rewrite" => grpc_gateway_route_rewrite(),
        "target" => gateway_route_target()
      }

  """
  @type grpc_gateway_route_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_virtual_gateway_input() :: %{
        optional("meshOwner") => String.t()
      }

  """
  @type delete_virtual_gateway_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_virtual_node_input() :: %{
        "clientToken" => [String.t()],
        "meshOwner" => String.t(),
        "spec" => virtual_node_spec()
      }

  """
  @type update_virtual_node_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      grpc_gateway_route_match() :: %{
        "hostname" => gateway_route_hostname_match(),
        "metadata" => list(grpc_gateway_route_metadata()()),
        "port" => integer(),
        "serviceName" => String.t()
      }

  """
  @type grpc_gateway_route_match() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      http_gateway_route_path_rewrite() :: %{
        "exact" => String.t()
      }

  """
  @type http_gateway_route_path_rewrite() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      client_policy_tls() :: %{
        "certificate" => list(),
        "enforce" => [boolean()],
        "ports" => list(integer()()),
        "validation" => tls_validation_context()
      }

  """
  @type client_policy_tls() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_virtual_service_input() :: %{
        "clientToken" => [String.t()],
        "meshOwner" => String.t(),
        "spec" => virtual_service_spec()
      }

  """
  @type update_virtual_service_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_gateway_route_input() :: %{
        optional("clientToken") => [String.t()],
        optional("meshOwner") => String.t(),
        optional("tags") => list(tag_ref()()),
        required("gatewayRouteName") => String.t(),
        required("spec") => gateway_route_spec()
      }

  """
  @type create_gateway_route_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_virtual_node_input() :: %{
        "meshOwner" => String.t()
      }

  """
  @type delete_virtual_node_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_router_status() :: %{
        "status" => String.t()
      }

  """
  @type virtual_router_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aws_cloud_map_instance_attribute() :: %{
        "key" => String.t(),
        "value" => String.t()
      }

  """
  @type aws_cloud_map_instance_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_gateway_routes_output() :: %{
        optional("nextToken") => [String.t()],
        required("gatewayRoutes") => list(gateway_route_ref()())
      }

  """
  @type list_gateway_routes_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      health_check_policy() :: %{
        "healthyThreshold" => integer(),
        "intervalMillis" => float(),
        "path" => [String.t()],
        "port" => integer(),
        "protocol" => String.t(),
        "timeoutMillis" => float(),
        "unhealthyThreshold" => integer()
      }

  """
  @type health_check_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      listener_tls_sds_certificate() :: %{
        "secretName" => String.t()
      }

  """
  @type listener_tls_sds_certificate() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      http_gateway_route_action() :: %{
        "rewrite" => http_gateway_route_rewrite(),
        "target" => gateway_route_target()
      }

  """
  @type http_gateway_route_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      http_path_match() :: %{
        "exact" => String.t(),
        "regex" => String.t()
      }

  """
  @type http_path_match() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_virtual_gateway_input() :: %{
        optional("clientToken") => [String.t()],
        optional("meshOwner") => String.t(),
        optional("tags") => list(tag_ref()()),
        required("spec") => virtual_gateway_spec(),
        required("virtualGatewayName") => String.t()
      }

  """
  @type create_virtual_gateway_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_gateway_http2_connection_pool() :: %{
        "maxRequests" => integer()
      }

  """
  @type virtual_gateway_http2_connection_pool() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      http_route_header() :: %{
        "invert" => [boolean()],
        "match" => list(),
        "name" => String.t()
      }

  """
  @type http_route_header() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      file_access_log() :: %{
        "format" => list(),
        "path" => String.t()
      }

  """
  @type file_access_log() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_mesh_input() :: %{
        "meshOwner" => String.t()
      }

  """
  @type describe_mesh_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gateway_route_data() :: %{
        "gatewayRouteName" => String.t(),
        "meshName" => String.t(),
        "metadata" => resource_metadata(),
        "spec" => gateway_route_spec(),
        "status" => gateway_route_status(),
        "virtualGatewayName" => String.t()
      }

  """
  @type gateway_route_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_gateway_tls_validation_context_acm_trust() :: %{
        "certificateAuthorityArns" => list(String.t()())
      }

  """
  @type virtual_gateway_tls_validation_context_acm_trust() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_gateway_listener_tls_file_certificate() :: %{
        "certificateChain" => String.t(),
        "privateKey" => String.t()
      }

  """
  @type virtual_gateway_listener_tls_file_certificate() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_virtual_service_output() :: %{
        "virtualService" => virtual_service_data()
      }

  """
  @type describe_virtual_service_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      grpc_retry_policy() :: %{
        "grpcRetryEvents" => list(String.t()()),
        "httpRetryEvents" => list(String.t()()),
        "maxRetries" => float(),
        "perRetryTimeout" => duration(),
        "tcpRetryEvents" => list(String.t()())
      }

  """
  @type grpc_retry_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_virtual_services_input() :: %{
        "limit" => integer(),
        "meshOwner" => String.t(),
        "nextToken" => [String.t()]
      }

  """
  @type list_virtual_services_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_gateway_listener_tls() :: %{
        "certificate" => list(),
        "mode" => String.t(),
        "validation" => virtual_gateway_listener_tls_validation_context()
      }

  """
  @type virtual_gateway_listener_tls() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      http_route_match() :: %{
        "headers" => list(http_route_header()()),
        "method" => String.t(),
        "path" => http_path_match(),
        "port" => integer(),
        "prefix" => [String.t()],
        "queryParameters" => list(http_query_parameter()()),
        "scheme" => String.t()
      }

  """
  @type http_route_match() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_mesh_output() :: %{
        "mesh" => mesh_data()
      }

  """
  @type update_mesh_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_virtual_service_input() :: %{
        "meshOwner" => String.t()
      }

  """
  @type describe_virtual_service_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_virtual_gateway_output() :: %{
        required("virtualGateway") => virtual_gateway_data()
      }

  """
  @type update_virtual_gateway_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      egress_filter() :: %{
        "type" => String.t()
      }

  """
  @type egress_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      query_parameter_match() :: %{
        "exact" => [String.t()]
      }

  """
  @type query_parameter_match() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_virtual_node_output() :: %{
        "virtualNode" => virtual_node_data()
      }

  """
  @type create_virtual_node_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_service_data() :: %{
        "meshName" => String.t(),
        "metadata" => resource_metadata(),
        "spec" => virtual_service_spec(),
        "status" => virtual_service_status(),
        "virtualServiceName" => String.t()
      }

  """
  @type virtual_service_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      http_gateway_route() :: %{
        "action" => http_gateway_route_action(),
        "match" => http_gateway_route_match()
      }

  """
  @type http_gateway_route() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      gateway_route_status() :: %{
        "status" => String.t()
      }

  """
  @type gateway_route_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      http_query_parameter() :: %{
        "match" => query_parameter_match(),
        "name" => String.t()
      }

  """
  @type http_query_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      http_route() :: %{
        "action" => http_route_action(),
        "match" => http_route_match(),
        "retryPolicy" => http_retry_policy(),
        "timeout" => http_timeout()
      }

  """
  @type http_route() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_router_ref() :: %{
        "arn" => String.t(),
        "createdAt" => [non_neg_integer()],
        "lastUpdatedAt" => [non_neg_integer()],
        "meshName" => String.t(),
        "meshOwner" => String.t(),
        "resourceOwner" => String.t(),
        "version" => [float()],
        "virtualRouterName" => String.t()
      }

  """
  @type virtual_router_ref() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      http_gateway_route_match() :: %{
        "headers" => list(http_gateway_route_header()()),
        "hostname" => gateway_route_hostname_match(),
        "method" => String.t(),
        "path" => http_path_match(),
        "port" => integer(),
        "prefix" => [String.t()],
        "queryParameters" => list(http_query_parameter()())
      }

  """
  @type http_gateway_route_match() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      listener_tls() :: %{
        "certificate" => list(),
        "mode" => String.t(),
        "validation" => listener_tls_validation_context()
      }

  """
  @type listener_tls() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_virtual_node_output() :: %{
        "virtualNode" => virtual_node_data()
      }

  """
  @type delete_virtual_node_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logging() :: %{
        "accessLog" => list()
      }

  """
  @type logging() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_tags_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      grpc_route() :: %{
        "action" => grpc_route_action(),
        "match" => grpc_route_match(),
        "retryPolicy" => grpc_retry_policy(),
        "timeout" => grpc_timeout()
      }

  """
  @type grpc_route() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_gateway_data() :: %{
        "meshName" => String.t(),
        "metadata" => resource_metadata(),
        "spec" => virtual_gateway_spec(),
        "status" => virtual_gateway_status(),
        "virtualGatewayName" => String.t()
      }

  """
  @type virtual_gateway_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      virtual_router_data() :: %{
        "meshName" => String.t(),
        "metadata" => resource_metadata(),
        "spec" => virtual_router_spec(),
        "status" => virtual_router_status(),
        "virtualRouterName" => String.t()
      }

  """
  @type virtual_router_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_mesh_input() :: %{
        "clientToken" => [String.t()],
        "meshName" => String.t(),
        "spec" => mesh_spec(),
        "tags" => list(tag_ref()())
      }

  """
  @type create_mesh_input() :: %{String.t() => any()}

  @type create_gateway_route_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_mesh_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_route_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_virtual_gateway_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_virtual_node_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_virtual_router_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type create_virtual_service_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type delete_gateway_route_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type delete_mesh_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type delete_route_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type delete_virtual_gateway_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type delete_virtual_node_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type delete_virtual_router_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type delete_virtual_service_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | resource_in_use_exception()

  @type describe_gateway_route_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type describe_mesh_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type describe_route_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type describe_virtual_gateway_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type describe_virtual_node_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type describe_virtual_router_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type describe_virtual_service_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_gateway_routes_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_meshes_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_routes_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_virtual_gateways_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_virtual_nodes_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_virtual_routers_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type list_virtual_services_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_gateway_route_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_mesh_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_route_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_virtual_gateway_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_virtual_node_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_virtual_router_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  @type update_virtual_service_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | forbidden_exception()

  def metadata do
    %{
      api_version: "2019-01-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "appmesh",
      global?: false,
      protocol: "rest-json",
      service_id: "App Mesh",
      signature_version: "v4",
      signing_name: "appmesh",
      target_prefix: nil
    }
  end

  @doc """
  Creates a gateway route.

  A gateway route is attached to a virtual gateway and routes traffic to an
  existing
  virtual service. If a route matches a request, it can distribute traffic to a
  target
  virtual service.

  For more information about gateway routes, see [Gateway routes](https://docs.aws.amazon.com/app-mesh/latest/userguide/gateway-routes.html).
  """
  @spec create_gateway_route(map(), String.t(), String.t(), create_gateway_route_input(), list()) ::
          {:ok, create_gateway_route_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_gateway_route_errors()}
  def create_gateway_route(
        %Client{} = client,
        mesh_name,
        virtual_gateway_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualGateway/#{AWS.Util.encode_uri(virtual_gateway_name)}/gatewayRoutes"

    headers = []

    {query_params, input} =
      [
        {"meshOwner", "meshOwner"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a service mesh.

  A service mesh is a logical boundary for network traffic between services that
  are
  represented by resources within the mesh. After you create your service mesh,
  you can
  create virtual services, virtual nodes, virtual routers, and routes to
  distribute traffic
  between the applications in your mesh.

  For more information about service meshes, see [Service meshes](https://docs.aws.amazon.com/app-mesh/latest/userguide/meshes.html).
  """
  @spec create_mesh(map(), create_mesh_input(), list()) ::
          {:ok, create_mesh_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_mesh_errors()}
  def create_mesh(%Client{} = client, input, options \\ []) do
    url_path = "/v20190125/meshes"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a route that is associated with a virtual router.

  You can route several different protocols and define a retry policy for a route.
  Traffic can be routed to one or more virtual nodes.

  For more information about routes, see
  [Routes](https://docs.aws.amazon.com/app-mesh/latest/userguide/routes.html).
  """
  @spec create_route(map(), String.t(), String.t(), create_route_input(), list()) ::
          {:ok, create_route_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_route_errors()}
  def create_route(%Client{} = client, mesh_name, virtual_router_name, input, options \\ []) do
    url_path =
      "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualRouter/#{AWS.Util.encode_uri(virtual_router_name)}/routes"

    headers = []

    {query_params, input} =
      [
        {"meshOwner", "meshOwner"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a virtual gateway.

  A virtual gateway allows resources outside your mesh to communicate to resources
  that
  are inside your mesh. The virtual gateway represents an Envoy proxy running in
  an Amazon ECS task, in a Kubernetes service, or on an Amazon EC2 instance.
  Unlike a
  virtual node, which represents an Envoy running with an application, a virtual
  gateway
  represents Envoy deployed by itself.

  For more information about virtual gateways, see [Virtual gateways](https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_gateways.html).
  """
  @spec create_virtual_gateway(map(), String.t(), create_virtual_gateway_input(), list()) ::
          {:ok, create_virtual_gateway_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_virtual_gateway_errors()}
  def create_virtual_gateway(%Client{} = client, mesh_name, input, options \\ []) do
    url_path = "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualGateways"
    headers = []

    {query_params, input} =
      [
        {"meshOwner", "meshOwner"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a virtual node within a service mesh.

  A virtual node acts as a logical pointer to a particular task group, such as an
  Amazon ECS service or a Kubernetes deployment. When you create a virtual node,
  you can
  specify the service discovery information for your task group, and whether the
  proxy
  running in a task group will communicate with other proxies using Transport
  Layer Security
  (TLS).

  You define a `listener` for any inbound traffic that your virtual node
  expects. Any virtual service that your virtual node expects to communicate to is
  specified
  as a `backend`.

  The response metadata for your new virtual node contains the `arn` that is
  associated with the virtual node. Set this value to the full ARN; for example,
  `arn:aws:appmesh:us-west-2:123456789012:myMesh/default/virtualNode/myApp`)
  as the `APPMESH_RESOURCE_ARN` environment variable for your task group's Envoy
  proxy container in your task definition or pod spec. This is then mapped to the
  `node.id` and `node.cluster` Envoy parameters.

  By default, App Mesh uses the name of the resource you specified in
  `APPMESH_RESOURCE_ARN` when Envoy is referring to itself in metrics and
  traces. You can override this behavior by setting the
  `APPMESH_RESOURCE_CLUSTER` environment variable with your own name.

  For more information about virtual nodes, see [Virtual nodes](https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_nodes.html).
  You must be using `1.15.0` or later of the Envoy image when
  setting these variables. For more information aboutApp Mesh Envoy variables, see
  [Envoy image](https://docs.aws.amazon.com/app-mesh/latest/userguide/envoy.html) in the
  App Mesh User Guide.
  """
  @spec create_virtual_node(map(), String.t(), create_virtual_node_input(), list()) ::
          {:ok, create_virtual_node_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_virtual_node_errors()}
  def create_virtual_node(%Client{} = client, mesh_name, input, options \\ []) do
    url_path = "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualNodes"
    headers = []

    {query_params, input} =
      [
        {"meshOwner", "meshOwner"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a virtual router within a service mesh.

  Specify a `listener` for any inbound traffic that your virtual router
  receives. Create a virtual router for each protocol and port that you need to
  route.
  Virtual routers handle traffic for one or more virtual services within your
  mesh. After you
  create your virtual router, create and associate routes for your virtual router
  that direct
  incoming requests to different virtual nodes.

  For more information about virtual routers, see [Virtual routers](https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_routers.html).
  """
  @spec create_virtual_router(map(), String.t(), create_virtual_router_input(), list()) ::
          {:ok, create_virtual_router_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_virtual_router_errors()}
  def create_virtual_router(%Client{} = client, mesh_name, input, options \\ []) do
    url_path = "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualRouters"
    headers = []

    {query_params, input} =
      [
        {"meshOwner", "meshOwner"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a virtual service within a service mesh.

  A virtual service is an abstraction of a real service that is provided by a
  virtual node
  directly or indirectly by means of a virtual router. Dependent services call
  your virtual
  service by its `virtualServiceName`, and those requests are routed to the
  virtual node or virtual router that is specified as the provider for the virtual
  service.

  For more information about virtual services, see [Virtual services](https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_services.html).
  """
  @spec create_virtual_service(map(), String.t(), create_virtual_service_input(), list()) ::
          {:ok, create_virtual_service_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_virtual_service_errors()}
  def create_virtual_service(%Client{} = client, mesh_name, input, options \\ []) do
    url_path = "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualServices"
    headers = []

    {query_params, input} =
      [
        {"meshOwner", "meshOwner"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Deletes an existing gateway route.
  """
  @spec delete_gateway_route(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_gateway_route_input(),
          list()
        ) ::
          {:ok, delete_gateway_route_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_gateway_route_errors()}
  def delete_gateway_route(
        %Client{} = client,
        gateway_route_name,
        mesh_name,
        virtual_gateway_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualGateway/#{AWS.Util.encode_uri(virtual_gateway_name)}/gatewayRoutes/#{AWS.Util.encode_uri(gateway_route_name)}"

    headers = []

    {query_params, input} =
      [
        {"meshOwner", "meshOwner"}
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
  Deletes an existing service mesh.

  You must delete all resources (virtual services, routes, virtual routers, and
  virtual
  nodes) in the service mesh before you can delete the mesh itself.
  """
  @spec delete_mesh(map(), String.t(), delete_mesh_input(), list()) ::
          {:ok, delete_mesh_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_mesh_errors()}
  def delete_mesh(%Client{} = client, mesh_name, input, options \\ []) do
    url_path = "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}"
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
  Deletes an existing route.
  """
  @spec delete_route(map(), String.t(), String.t(), String.t(), delete_route_input(), list()) ::
          {:ok, delete_route_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_route_errors()}
  def delete_route(
        %Client{} = client,
        mesh_name,
        route_name,
        virtual_router_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualRouter/#{AWS.Util.encode_uri(virtual_router_name)}/routes/#{AWS.Util.encode_uri(route_name)}"

    headers = []

    {query_params, input} =
      [
        {"meshOwner", "meshOwner"}
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
  Deletes an existing virtual gateway.

  You cannot delete a virtual gateway if any gateway
  routes are associated to it.
  """
  @spec delete_virtual_gateway(
          map(),
          String.t(),
          String.t(),
          delete_virtual_gateway_input(),
          list()
        ) ::
          {:ok, delete_virtual_gateway_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_virtual_gateway_errors()}
  def delete_virtual_gateway(
        %Client{} = client,
        mesh_name,
        virtual_gateway_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualGateways/#{AWS.Util.encode_uri(virtual_gateway_name)}"

    headers = []

    {query_params, input} =
      [
        {"meshOwner", "meshOwner"}
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
  Deletes an existing virtual node.

  You must delete any virtual services that list a virtual node as a service
  provider
  before you can delete the virtual node itself.
  """
  @spec delete_virtual_node(map(), String.t(), String.t(), delete_virtual_node_input(), list()) ::
          {:ok, delete_virtual_node_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_virtual_node_errors()}
  def delete_virtual_node(%Client{} = client, mesh_name, virtual_node_name, input, options \\ []) do
    url_path =
      "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualNodes/#{AWS.Util.encode_uri(virtual_node_name)}"

    headers = []

    {query_params, input} =
      [
        {"meshOwner", "meshOwner"}
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
  Deletes an existing virtual router.

  You must delete any routes associated with the virtual router before you can
  delete the
  router itself.
  """
  @spec delete_virtual_router(
          map(),
          String.t(),
          String.t(),
          delete_virtual_router_input(),
          list()
        ) ::
          {:ok, delete_virtual_router_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_virtual_router_errors()}
  def delete_virtual_router(
        %Client{} = client,
        mesh_name,
        virtual_router_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualRouters/#{AWS.Util.encode_uri(virtual_router_name)}"

    headers = []

    {query_params, input} =
      [
        {"meshOwner", "meshOwner"}
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
  Deletes an existing virtual service.
  """
  @spec delete_virtual_service(
          map(),
          String.t(),
          String.t(),
          delete_virtual_service_input(),
          list()
        ) ::
          {:ok, delete_virtual_service_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_virtual_service_errors()}
  def delete_virtual_service(
        %Client{} = client,
        mesh_name,
        virtual_service_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualServices/#{AWS.Util.encode_uri(virtual_service_name)}"

    headers = []

    {query_params, input} =
      [
        {"meshOwner", "meshOwner"}
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
  Describes an existing gateway route.
  """
  @spec describe_gateway_route(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          list()
        ) ::
          {:ok, describe_gateway_route_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_gateway_route_errors()}
  def describe_gateway_route(
        %Client{} = client,
        gateway_route_name,
        mesh_name,
        virtual_gateway_name,
        mesh_owner \\ nil,
        options \\ []
      ) do
    url_path =
      "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualGateway/#{AWS.Util.encode_uri(virtual_gateway_name)}/gatewayRoutes/#{AWS.Util.encode_uri(gateway_route_name)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(mesh_owner) do
        [{"meshOwner", mesh_owner} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes an existing service mesh.
  """
  @spec describe_mesh(map(), String.t(), String.t() | nil, list()) ::
          {:ok, describe_mesh_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_mesh_errors()}
  def describe_mesh(%Client{} = client, mesh_name, mesh_owner \\ nil, options \\ []) do
    url_path = "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(mesh_owner) do
        [{"meshOwner", mesh_owner} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes an existing route.
  """
  @spec describe_route(map(), String.t(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, describe_route_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_route_errors()}
  def describe_route(
        %Client{} = client,
        mesh_name,
        route_name,
        virtual_router_name,
        mesh_owner \\ nil,
        options \\ []
      ) do
    url_path =
      "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualRouter/#{AWS.Util.encode_uri(virtual_router_name)}/routes/#{AWS.Util.encode_uri(route_name)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(mesh_owner) do
        [{"meshOwner", mesh_owner} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes an existing virtual gateway.
  """
  @spec describe_virtual_gateway(map(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, describe_virtual_gateway_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_virtual_gateway_errors()}
  def describe_virtual_gateway(
        %Client{} = client,
        mesh_name,
        virtual_gateway_name,
        mesh_owner \\ nil,
        options \\ []
      ) do
    url_path =
      "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualGateways/#{AWS.Util.encode_uri(virtual_gateway_name)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(mesh_owner) do
        [{"meshOwner", mesh_owner} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes an existing virtual node.
  """
  @spec describe_virtual_node(map(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, describe_virtual_node_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_virtual_node_errors()}
  def describe_virtual_node(
        %Client{} = client,
        mesh_name,
        virtual_node_name,
        mesh_owner \\ nil,
        options \\ []
      ) do
    url_path =
      "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualNodes/#{AWS.Util.encode_uri(virtual_node_name)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(mesh_owner) do
        [{"meshOwner", mesh_owner} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes an existing virtual router.
  """
  @spec describe_virtual_router(map(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, describe_virtual_router_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_virtual_router_errors()}
  def describe_virtual_router(
        %Client{} = client,
        mesh_name,
        virtual_router_name,
        mesh_owner \\ nil,
        options \\ []
      ) do
    url_path =
      "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualRouters/#{AWS.Util.encode_uri(virtual_router_name)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(mesh_owner) do
        [{"meshOwner", mesh_owner} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes an existing virtual service.
  """
  @spec describe_virtual_service(map(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, describe_virtual_service_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_virtual_service_errors()}
  def describe_virtual_service(
        %Client{} = client,
        mesh_name,
        virtual_service_name,
        mesh_owner \\ nil,
        options \\ []
      ) do
    url_path =
      "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualServices/#{AWS.Util.encode_uri(virtual_service_name)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(mesh_owner) do
        [{"meshOwner", mesh_owner} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of existing gateway routes that are associated to a virtual
  gateway.
  """
  @spec list_gateway_routes(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_gateway_routes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_gateway_routes_errors()}
  def list_gateway_routes(
        %Client{} = client,
        mesh_name,
        virtual_gateway_name,
        limit \\ nil,
        mesh_owner \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualGateway/#{AWS.Util.encode_uri(virtual_gateway_name)}/gatewayRoutes"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(mesh_owner) do
        [{"meshOwner", mesh_owner} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of existing service meshes.
  """
  @spec list_meshes(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_meshes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_meshes_errors()}
  def list_meshes(%Client{} = client, limit \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v20190125/meshes"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of existing routes in a service mesh.
  """
  @spec list_routes(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_routes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_routes_errors()}
  def list_routes(
        %Client{} = client,
        mesh_name,
        virtual_router_name,
        limit \\ nil,
        mesh_owner \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualRouter/#{AWS.Util.encode_uri(virtual_router_name)}/routes"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(mesh_owner) do
        [{"meshOwner", mesh_owner} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the tags for an App Mesh resource.
  """
  @spec list_tags_for_resource(map(), String.t() | nil, String.t() | nil, String.t(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(
        %Client{} = client,
        limit \\ nil,
        next_token \\ nil,
        resource_arn,
        options \\ []
      ) do
    url_path = "/v20190125/tags"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"resourceArn", resource_arn} | query_params]
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
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of existing virtual gateways in a service mesh.
  """
  @spec list_virtual_gateways(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_virtual_gateways_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_virtual_gateways_errors()}
  def list_virtual_gateways(
        %Client{} = client,
        mesh_name,
        limit \\ nil,
        mesh_owner \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualGateways"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(mesh_owner) do
        [{"meshOwner", mesh_owner} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of existing virtual nodes.
  """
  @spec list_virtual_nodes(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_virtual_nodes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_virtual_nodes_errors()}
  def list_virtual_nodes(
        %Client{} = client,
        mesh_name,
        limit \\ nil,
        mesh_owner \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualNodes"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(mesh_owner) do
        [{"meshOwner", mesh_owner} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of existing virtual routers in a service mesh.
  """
  @spec list_virtual_routers(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_virtual_routers_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_virtual_routers_errors()}
  def list_virtual_routers(
        %Client{} = client,
        mesh_name,
        limit \\ nil,
        mesh_owner \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualRouters"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(mesh_owner) do
        [{"meshOwner", mesh_owner} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of existing virtual services in a service mesh.
  """
  @spec list_virtual_services(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_virtual_services_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_virtual_services_errors()}
  def list_virtual_services(
        %Client{} = client,
        mesh_name,
        limit \\ nil,
        mesh_owner \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualServices"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(mesh_owner) do
        [{"meshOwner", mesh_owner} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Associates the specified tags to a resource with the specified `resourceArn`.

  If existing tags on a resource aren't specified in the request parameters, they
  aren't
  changed. When a resource is deleted, the tags associated with that resource are
  also
  deleted.
  """
  @spec tag_resource(map(), tag_resource_input(), list()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/v20190125/tag"
    headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Deletes specified tags from a resource.
  """
  @spec untag_resource(map(), untag_resource_input(), list()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/v20190125/untag"
    headers = []

    {query_params, input} =
      [
        {"resourceArn", "resourceArn"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing gateway route that is associated to a specified virtual
  gateway in a
  service mesh.
  """
  @spec update_gateway_route(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_gateway_route_input(),
          list()
        ) ::
          {:ok, update_gateway_route_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_gateway_route_errors()}
  def update_gateway_route(
        %Client{} = client,
        gateway_route_name,
        mesh_name,
        virtual_gateway_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualGateway/#{AWS.Util.encode_uri(virtual_gateway_name)}/gatewayRoutes/#{AWS.Util.encode_uri(gateway_route_name)}"

    headers = []

    {query_params, input} =
      [
        {"meshOwner", "meshOwner"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing service mesh.
  """
  @spec update_mesh(map(), String.t(), update_mesh_input(), list()) ::
          {:ok, update_mesh_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_mesh_errors()}
  def update_mesh(%Client{} = client, mesh_name, input, options \\ []) do
    url_path = "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing route for a specified service mesh and virtual router.
  """
  @spec update_route(map(), String.t(), String.t(), String.t(), update_route_input(), list()) ::
          {:ok, update_route_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_route_errors()}
  def update_route(
        %Client{} = client,
        mesh_name,
        route_name,
        virtual_router_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualRouter/#{AWS.Util.encode_uri(virtual_router_name)}/routes/#{AWS.Util.encode_uri(route_name)}"

    headers = []

    {query_params, input} =
      [
        {"meshOwner", "meshOwner"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing virtual gateway in a specified service mesh.
  """
  @spec update_virtual_gateway(
          map(),
          String.t(),
          String.t(),
          update_virtual_gateway_input(),
          list()
        ) ::
          {:ok, update_virtual_gateway_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_virtual_gateway_errors()}
  def update_virtual_gateway(
        %Client{} = client,
        mesh_name,
        virtual_gateway_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualGateways/#{AWS.Util.encode_uri(virtual_gateway_name)}"

    headers = []

    {query_params, input} =
      [
        {"meshOwner", "meshOwner"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing virtual node in a specified service mesh.
  """
  @spec update_virtual_node(map(), String.t(), String.t(), update_virtual_node_input(), list()) ::
          {:ok, update_virtual_node_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_virtual_node_errors()}
  def update_virtual_node(%Client{} = client, mesh_name, virtual_node_name, input, options \\ []) do
    url_path =
      "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualNodes/#{AWS.Util.encode_uri(virtual_node_name)}"

    headers = []

    {query_params, input} =
      [
        {"meshOwner", "meshOwner"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing virtual router in a specified service mesh.
  """
  @spec update_virtual_router(
          map(),
          String.t(),
          String.t(),
          update_virtual_router_input(),
          list()
        ) ::
          {:ok, update_virtual_router_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_virtual_router_errors()}
  def update_virtual_router(
        %Client{} = client,
        mesh_name,
        virtual_router_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualRouters/#{AWS.Util.encode_uri(virtual_router_name)}"

    headers = []

    {query_params, input} =
      [
        {"meshOwner", "meshOwner"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing virtual service in a specified service mesh.
  """
  @spec update_virtual_service(
          map(),
          String.t(),
          String.t(),
          update_virtual_service_input(),
          list()
        ) ::
          {:ok, update_virtual_service_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_virtual_service_errors()}
  def update_virtual_service(
        %Client{} = client,
        mesh_name,
        virtual_service_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v20190125/meshes/#{AWS.Util.encode_uri(mesh_name)}/virtualServices/#{AWS.Util.encode_uri(virtual_service_name)}"

    headers = []

    {query_params, input} =
      [
        {"meshOwner", "meshOwner"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
