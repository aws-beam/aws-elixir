# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ServiceDiscovery do
  @moduledoc """
  Cloud Map

  With Cloud Map, you can configure public DNS, private DNS, or HTTP namespaces
  that your microservice
  applications run in.

  When an instance becomes available, you can call the Cloud Map API to register
  the
  instance with Cloud Map. For public or private DNS namespaces, Cloud Map
  automatically creates DNS records and
  an optional health check. Clients that submit public or private DNS queries, or
  HTTP requests, for the service
  receive an answer that contains up to eight healthy records.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      update_public_dns_namespace_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type update_public_dns_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dns_properties() :: %{
        "HostedZoneId" => String.t(),
        "SOA" => s_o_a()
      }
      
  """
  @type dns_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operation() :: %{
        "CreateDate" => non_neg_integer(),
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "Id" => String.t(),
        "Status" => list(any()),
        "Targets" => map(),
        "Type" => list(any()),
        "UpdateDate" => non_neg_integer()
      }
      
  """
  @type operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_namespace_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type delete_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      private_dns_properties_mutable() :: %{
        "SOA" => s_o_a()
      }
      
  """
  @type private_dns_properties_mutable() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_http_namespace_request() :: %{
        optional("CreatorRequestId") => String.t(),
        optional("Description") => String.t(),
        optional("Tags") => list(tag()()),
        required("Name") => String.t()
      }
      
  """
  @type create_http_namespace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_private_dns_namespace_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type update_private_dns_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_http_namespace_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type update_http_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_attributes_response() :: %{
        "ServiceAttributes" => service_attributes()
      }
      
  """
  @type get_service_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      private_dns_namespace_properties() :: %{
        "DnsProperties" => private_dns_properties_mutable()
      }
      
  """
  @type private_dns_namespace_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_input() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      custom_health_not_found() :: %{
        "Message" => String.t()
      }
      
  """
  @type custom_health_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_response() :: %{
        "Service" => service()
      }
      
  """
  @type get_service_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_change() :: %{
        "Description" => String.t(),
        "DnsConfig" => dns_config_change(),
        "HealthCheckConfig" => health_check_config()
      }
      
  """
  @type service_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      http_instance_summary() :: %{
        "Attributes" => map(),
        "HealthStatus" => list(any()),
        "InstanceId" => String.t(),
        "NamespaceName" => String.t(),
        "ServiceName" => String.t()
      }
      
  """
  @type http_instance_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_namespaces_request() :: %{
        optional("Filters") => list(namespace_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_namespaces_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      private_dns_properties_mutable_change() :: %{
        "SOA" => s_o_a_change()
      }
      
  """
  @type private_dns_properties_mutable_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      namespace_summary() :: %{
        "Arn" => String.t(),
        "CreateDate" => non_neg_integer(),
        "Description" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "Properties" => namespace_properties(),
        "ServiceCount" => integer(),
        "Type" => list(any())
      }
      
  """
  @type namespace_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_instance_custom_health_status_request() :: %{
        required("InstanceId") => String.t(),
        required("ServiceId") => String.t(),
        required("Status") => list(any())
      }
      
  """
  @type update_instance_custom_health_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_in_use() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_in_use() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_instances_health_status_request() :: %{
        optional("Instances") => list(String.t()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ServiceId") => String.t()
      }
      
  """
  @type get_instances_health_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_public_dns_namespace_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type create_public_dns_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_operation_response() :: %{
        "Operation" => operation()
      }
      
  """
  @type get_operation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      public_dns_properties_mutable_change() :: %{
        "SOA" => s_o_a_change()
      }
      
  """
  @type public_dns_properties_mutable_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      discover_instances_response() :: %{
        "Instances" => list(http_instance_summary()()),
        "InstancesRevision" => float()
      }
      
  """
  @type discover_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      public_dns_properties_mutable() :: %{
        "SOA" => s_o_a()
      }
      
  """
  @type public_dns_properties_mutable() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      public_dns_namespace_properties() :: %{
        "DnsProperties" => public_dns_properties_mutable()
      }
      
  """
  @type public_dns_namespace_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service() :: %{
        "Arn" => String.t(),
        "CreateDate" => non_neg_integer(),
        "CreatorRequestId" => String.t(),
        "Description" => String.t(),
        "DnsConfig" => dns_config(),
        "HealthCheckConfig" => health_check_config(),
        "HealthCheckCustomConfig" => health_check_custom_config(),
        "Id" => String.t(),
        "InstanceCount" => integer(),
        "Name" => String.t(),
        "NamespaceId" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type service() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operation_summary() :: %{
        "Id" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type operation_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      discover_instances_request() :: %{
        optional("HealthStatus") => list(any()),
        optional("MaxResults") => integer(),
        optional("OptionalParameters") => map(),
        optional("QueryParameters") => map(),
        required("NamespaceName") => String.t(),
        required("ServiceName") => String.t()
      }
      
  """
  @type discover_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      private_dns_namespace_properties_change() :: %{
        "DnsProperties" => private_dns_properties_mutable_change()
      }
      
  """
  @type private_dns_namespace_properties_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_instance_request() :: %{
        required("InstanceId") => String.t(),
        required("ServiceId") => String.t()
      }
      
  """
  @type deregister_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_private_dns_namespace_request() :: %{
        optional("CreatorRequestId") => String.t(),
        optional("Description") => String.t(),
        optional("Properties") => private_dns_namespace_properties(),
        optional("Tags") => list(tag()()),
        required("Name") => String.t(),
        required("Vpc") => String.t()
      }
      
  """
  @type create_private_dns_namespace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_request() :: %{
        required("Id") => String.t()
      }
      
  """
  @type get_service_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_service_attributes_request() :: %{
        required("ServiceId") => String.t()
      }
      
  """
  @type get_service_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_instance_request() :: %{
        required("InstanceId") => String.t(),
        required("ServiceId") => String.t()
      }
      
  """
  @type get_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_services_request() :: %{
        optional("Filters") => list(service_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_services_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_namespace_response() :: %{
        "Namespace" => namespace()
      }
      
  """
  @type get_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      health_check_custom_config() :: %{
        "FailureThreshold" => integer()
      }
      
  """
  @type health_check_custom_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      namespace_properties() :: %{
        "DnsProperties" => dns_properties(),
        "HttpProperties" => http_properties()
      }
      
  """
  @type namespace_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_operations_request() :: %{
        optional("Filters") => list(operation_filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_operations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      public_dns_namespace_change() :: %{
        "Description" => String.t(),
        "Properties" => public_dns_namespace_properties_change()
      }
      
  """
  @type public_dns_namespace_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_o_a() :: %{
        "TTL" => float()
      }
      
  """
  @type s_o_a() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_filter() :: %{
        "Condition" => list(any()),
        "Name" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type service_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_private_dns_namespace_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type create_private_dns_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      discover_instances_revision_response() :: %{
        "InstancesRevision" => float()
      }
      
  """
  @type discover_instances_revision_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_services_response() :: %{
        "NextToken" => String.t(),
        "Services" => list(service_summary()())
      }
      
  """
  @type list_services_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_operation_request() :: %{
        required("OperationId") => String.t()
      }
      
  """
  @type get_operation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_summary() :: %{
        "Arn" => String.t(),
        "CreateDate" => non_neg_integer(),
        "Description" => String.t(),
        "DnsConfig" => dns_config(),
        "HealthCheckConfig" => health_check_config(),
        "HealthCheckCustomConfig" => health_check_custom_config(),
        "Id" => String.t(),
        "InstanceCount" => integer(),
        "Name" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type service_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      private_dns_namespace_change() :: %{
        "Description" => String.t(),
        "Properties" => private_dns_namespace_properties_change()
      }
      
  """
  @type private_dns_namespace_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_o_a_change() :: %{
        "TTL" => float()
      }
      
  """
  @type s_o_a_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_service_request() :: %{
        optional("CreatorRequestId") => String.t(),
        optional("Description") => String.t(),
        optional("DnsConfig") => dns_config(),
        optional("HealthCheckConfig") => health_check_config(),
        optional("HealthCheckCustomConfig") => health_check_custom_config(),
        optional("NamespaceId") => String.t(),
        optional("Tags") => list(tag()()),
        optional("Type") => list(any()),
        required("Name") => String.t()
      }
      
  """
  @type create_service_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_instance_response() :: %{
        "Instance" => instance()
      }
      
  """
  @type get_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_instance_request() :: %{
        optional("CreatorRequestId") => String.t(),
        required("Attributes") => map(),
        required("InstanceId") => String.t(),
        required("ServiceId") => String.t()
      }
      
  """
  @type register_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      duplicate_request() :: %{
        "DuplicateOperationId" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type duplicate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_attributes_request() :: %{
        required("Attributes") => list(String.t()()),
        required("ServiceId") => String.t()
      }
      
  """
  @type delete_service_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      discover_instances_revision_request() :: %{
        required("NamespaceName") => String.t(),
        required("ServiceName") => String.t()
      }
      
  """
  @type discover_instances_revision_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operation_not_found() :: %{
        "Message" => String.t()
      }
      
  """
  @type operation_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_not_found() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_http_namespace_request() :: %{
        optional("UpdaterRequestId") => String.t(),
        required("Id") => String.t(),
        required("Namespace") => http_namespace_change()
      }
      
  """
  @type update_http_namespace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dns_config() :: %{
        "DnsRecords" => list(dns_record()()),
        "NamespaceId" => String.t(),
        "RoutingPolicy" => list(any())
      }
      
  """
  @type dns_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      http_namespace_change() :: %{
        "Description" => String.t()
      }
      
  """
  @type http_namespace_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_instance_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type register_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_public_dns_namespace_request() :: %{
        optional("CreatorRequestId") => String.t(),
        optional("Description") => String.t(),
        optional("Properties") => public_dns_namespace_properties(),
        optional("Tags") => list(tag()()),
        required("Name") => String.t()
      }
      
  """
  @type create_public_dns_namespace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_instances_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ServiceId") => String.t()
      }
      
  """
  @type list_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      namespace_filter() :: %{
        "Condition" => list(any()),
        "Name" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type namespace_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_request() :: %{
        required("Id") => String.t(),
        required("Service") => service_change()
      }
      
  """
  @type update_service_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_instances_response() :: %{
        "Instances" => list(instance_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_attributes_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_attributes_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      namespace_already_exists() :: %{
        "CreatorRequestId" => String.t(),
        "Message" => String.t(),
        "NamespaceId" => String.t()
      }
      
  """
  @type namespace_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      http_properties() :: %{
        "HttpName" => String.t()
      }
      
  """
  @type http_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dns_record() :: %{
        "TTL" => float(),
        "Type" => list(any())
      }
      
  """
  @type dns_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_operations_response() :: %{
        "NextToken" => String.t(),
        "Operations" => list(operation_summary()())
      }
      
  """
  @type list_operations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance() :: %{
        "Attributes" => map(),
        "CreatorRequestId" => String.t(),
        "Id" => String.t()
      }
      
  """
  @type instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_attributes_response() :: %{}
      
  """
  @type delete_service_attributes_response() :: %{}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      request_limit_exceeded() :: %{
        "Message" => String.t()
      }
      
  """
  @type request_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_instances_health_status_response() :: %{
        "NextToken" => String.t(),
        "Status" => map()
      }
      
  """
  @type get_instances_health_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_http_namespace_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type create_http_namespace_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_request() :: %{
        required("Id") => String.t()
      }
      
  """
  @type delete_service_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      health_check_config() :: %{
        "FailureThreshold" => integer(),
        "ResourcePath" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type health_check_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_attributes() :: %{
        "Attributes" => map(),
        "ServiceArn" => String.t()
      }
      
  """
  @type service_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_summary() :: %{
        "Attributes" => map(),
        "Id" => String.t()
      }
      
  """
  @type instance_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_namespaces_response() :: %{
        "Namespaces" => list(namespace_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_namespaces_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_namespace_request() :: %{
        required("Id") => String.t()
      }
      
  """
  @type delete_namespace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dns_config_change() :: %{
        "DnsRecords" => list(dns_record()())
      }
      
  """
  @type dns_config_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      namespace_not_found() :: %{
        "Message" => String.t()
      }
      
  """
  @type namespace_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_private_dns_namespace_request() :: %{
        optional("UpdaterRequestId") => String.t(),
        required("Id") => String.t(),
        required("Namespace") => private_dns_namespace_change()
      }
      
  """
  @type update_private_dns_namespace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_attributes_response() :: %{}
      
  """
  @type update_service_attributes_response() :: %{}

  @typedoc """

  ## Example:
      
      instance_not_found() :: %{
        "Message" => String.t()
      }
      
  """
  @type instance_not_found() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type update_service_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_response() :: %{}
      
  """
  @type delete_service_response() :: %{}

  @typedoc """

  ## Example:
      
      deregister_instance_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type deregister_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_service_response() :: %{
        "Service" => service()
      }
      
  """
  @type create_service_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_limit_exceeded() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_limit_exceeded() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_already_exists() :: %{
        "CreatorRequestId" => String.t(),
        "Message" => String.t(),
        "ServiceId" => String.t()
      }
      
  """
  @type service_already_exists() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      namespace() :: %{
        "Arn" => String.t(),
        "CreateDate" => non_neg_integer(),
        "CreatorRequestId" => String.t(),
        "Description" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "Properties" => namespace_properties(),
        "ServiceCount" => integer(),
        "Type" => list(any())
      }
      
  """
  @type namespace() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      public_dns_namespace_properties_change() :: %{
        "DnsProperties" => public_dns_properties_mutable_change()
      }
      
  """
  @type public_dns_namespace_properties_change() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operation_filter() :: %{
        "Condition" => list(any()),
        "Name" => list(any()),
        "Values" => list(String.t()())
      }
      
  """
  @type operation_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_public_dns_namespace_request() :: %{
        optional("UpdaterRequestId") => String.t(),
        required("Id") => String.t(),
        required("Namespace") => public_dns_namespace_change()
      }
      
  """
  @type update_public_dns_namespace_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "Message" => String.t(),
        "ResourceName" => String.t()
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_attributes_request() :: %{
        required("Attributes") => map(),
        required("ServiceId") => String.t()
      }
      
  """
  @type update_service_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_namespace_request() :: %{
        required("Id") => String.t()
      }
      
  """
  @type get_namespace_request() :: %{String.t() => any()}

  @type create_http_namespace_errors() ::
          too_many_tags_exception()
          | resource_limit_exceeded()
          | namespace_already_exists()
          | duplicate_request()
          | invalid_input()

  @type create_private_dns_namespace_errors() ::
          too_many_tags_exception()
          | resource_limit_exceeded()
          | namespace_already_exists()
          | duplicate_request()
          | invalid_input()

  @type create_public_dns_namespace_errors() ::
          too_many_tags_exception()
          | resource_limit_exceeded()
          | namespace_already_exists()
          | duplicate_request()
          | invalid_input()

  @type create_service_errors() ::
          too_many_tags_exception()
          | service_already_exists()
          | resource_limit_exceeded()
          | namespace_not_found()
          | invalid_input()

  @type delete_namespace_errors() ::
          namespace_not_found() | duplicate_request() | resource_in_use() | invalid_input()

  @type delete_service_errors() :: service_not_found() | resource_in_use() | invalid_input()

  @type delete_service_attributes_errors() :: service_not_found() | invalid_input()

  @type deregister_instance_errors() ::
          instance_not_found()
          | service_not_found()
          | duplicate_request()
          | resource_in_use()
          | invalid_input()

  @type discover_instances_errors() ::
          namespace_not_found() | request_limit_exceeded() | service_not_found() | invalid_input()

  @type discover_instances_revision_errors() ::
          namespace_not_found() | request_limit_exceeded() | service_not_found() | invalid_input()

  @type get_instance_errors() :: instance_not_found() | service_not_found() | invalid_input()

  @type get_instances_health_status_errors() ::
          instance_not_found() | service_not_found() | invalid_input()

  @type get_namespace_errors() :: namespace_not_found() | invalid_input()

  @type get_operation_errors() :: operation_not_found() | invalid_input()

  @type get_service_errors() :: service_not_found() | invalid_input()

  @type get_service_attributes_errors() :: service_not_found() | invalid_input()

  @type list_instances_errors() :: service_not_found() | invalid_input()

  @type list_namespaces_errors() :: invalid_input()

  @type list_operations_errors() :: invalid_input()

  @type list_services_errors() :: invalid_input()

  @type list_tags_for_resource_errors() :: resource_not_found_exception() | invalid_input()

  @type register_instance_errors() ::
          resource_limit_exceeded()
          | service_not_found()
          | duplicate_request()
          | resource_in_use()
          | invalid_input()

  @type tag_resource_errors() ::
          too_many_tags_exception() | resource_not_found_exception() | invalid_input()

  @type untag_resource_errors() :: resource_not_found_exception() | invalid_input()

  @type update_http_namespace_errors() ::
          namespace_not_found() | duplicate_request() | resource_in_use() | invalid_input()

  @type update_instance_custom_health_status_errors() ::
          instance_not_found() | service_not_found() | custom_health_not_found() | invalid_input()

  @type update_private_dns_namespace_errors() ::
          namespace_not_found() | duplicate_request() | resource_in_use() | invalid_input()

  @type update_public_dns_namespace_errors() ::
          namespace_not_found() | duplicate_request() | resource_in_use() | invalid_input()

  @type update_service_errors() :: service_not_found() | duplicate_request() | invalid_input()

  @type update_service_attributes_errors() ::
          service_attributes_limit_exceeded_exception() | service_not_found() | invalid_input()

  def metadata do
    %{
      api_version: "2017-03-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "servicediscovery",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "ServiceDiscovery",
      signature_version: "v4",
      signing_name: "servicediscovery",
      target_prefix: "Route53AutoNaming_v20170314"
    }
  end

  @doc """
  Creates an HTTP namespace.

  Service instances registered using an HTTP namespace can be discovered using a
  `DiscoverInstances` request but can't be discovered using DNS.

  For the current quota on the number of namespaces that you can create using the
  same Amazon Web Services account, see [Cloud Map quotas](https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html)
  in the *Cloud Map Developer Guide*.
  """
  @spec create_http_namespace(map(), create_http_namespace_request(), list()) ::
          {:ok, create_http_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_http_namespace_errors()}
  def create_http_namespace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateHttpNamespace", input, options)
  end

  @doc """
  Creates a private namespace based on DNS, which is visible only inside a
  specified Amazon VPC.

  The
  namespace defines your service naming scheme. For example, if you name your
  namespace `example.com`
  and name your service `backend`, the resulting DNS name for the service is
  `backend.example.com`. Service instances that are registered using a private DNS
  namespace can be
  discovered using either a `DiscoverInstances` request or using DNS. For the
  current quota on the
  number of namespaces that you can create using the same Amazon Web Services
  account, see [Cloud Map quotas](https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html)
  in the
  *Cloud Map Developer Guide*.
  """
  @spec create_private_dns_namespace(map(), create_private_dns_namespace_request(), list()) ::
          {:ok, create_private_dns_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_private_dns_namespace_errors()}
  def create_private_dns_namespace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePrivateDnsNamespace", input, options)
  end

  @doc """
  Creates a public namespace based on DNS, which is visible on the internet.

  The namespace defines your
  service naming scheme. For example, if you name your namespace `example.com` and
  name your service
  `backend`, the resulting DNS name for the service is `backend.example.com`. You
  can
  discover instances that were registered with a public DNS namespace by using
  either a
  `DiscoverInstances` request or using DNS. For the current quota on the number of
  namespaces that you
  can create using the same Amazon Web Services account, see [Cloud Map quotas](https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html)
  in the
  *Cloud Map Developer Guide*.

  The `CreatePublicDnsNamespace` API operation is not supported in the Amazon Web
  Services GovCloud (US)
  Regions.
  """
  @spec create_public_dns_namespace(map(), create_public_dns_namespace_request(), list()) ::
          {:ok, create_public_dns_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_public_dns_namespace_errors()}
  def create_public_dns_namespace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePublicDnsNamespace", input, options)
  end

  @doc """
  Creates a service.

  This action defines the configuration for the following entities:

    *
  For public and private DNS namespaces, one of the following combinations of DNS
  records in
  Amazon Route 53:

      *

  `A`

      *

  `AAAA`

      *

  `A` and `AAAA`

      *

  `SRV`

      *

  `CNAME`

    *
  Optionally, a health check

  After you create the service, you can submit a
  [RegisterInstance](https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html) request, and Cloud Map uses the
  values in the configuration to create the specified entities.

  For the current quota on the number of instances that you can register using the
  same namespace and using
  the same service, see [Cloud Map
  quotas](https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html)
  in the *Cloud Map Developer Guide*.
  """
  @spec create_service(map(), create_service_request(), list()) ::
          {:ok, create_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_service_errors()}
  def create_service(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateService", input, options)
  end

  @doc """
  Deletes a namespace from the current account.

  If the namespace still contains one or more services, the
  request fails.
  """
  @spec delete_namespace(map(), delete_namespace_request(), list()) ::
          {:ok, delete_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_namespace_errors()}
  def delete_namespace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteNamespace", input, options)
  end

  @doc """
  Deletes a specified service and all associated service attributes.

  If the service still contains one or more registered instances, the request
  fails.
  """
  @spec delete_service(map(), delete_service_request(), list()) ::
          {:ok, delete_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_service_errors()}
  def delete_service(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteService", input, options)
  end

  @doc """
  Deletes specific attributes associated with a service.
  """
  @spec delete_service_attributes(map(), delete_service_attributes_request(), list()) ::
          {:ok, delete_service_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_service_attributes_errors()}
  def delete_service_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteServiceAttributes", input, options)
  end

  @doc """
  Deletes the Amazon Route 53 DNS records and health check, if any, that Cloud Map
  created for the specified
  instance.
  """
  @spec deregister_instance(map(), deregister_instance_request(), list()) ::
          {:ok, deregister_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_instance_errors()}
  def deregister_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterInstance", input, options)
  end

  @doc """
  Discovers registered instances for a specified namespace and service.

  You can use
  `DiscoverInstances` to discover instances for any type of namespace.
  `DiscoverInstances`
  returns a randomized list of instances allowing customers to distribute traffic
  evenly across instances. For
  public and private DNS namespaces, you can also use DNS queries to discover
  instances.
  """
  @spec discover_instances(map(), discover_instances_request(), list()) ::
          {:ok, discover_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, discover_instances_errors()}
  def discover_instances(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "data-")

    Request.request_post(client, meta, "DiscoverInstances", input, options)
  end

  @doc """
  Discovers the increasing revision associated with an instance.
  """
  @spec discover_instances_revision(map(), discover_instances_revision_request(), list()) ::
          {:ok, discover_instances_revision_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, discover_instances_revision_errors()}
  def discover_instances_revision(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "data-")

    Request.request_post(client, meta, "DiscoverInstancesRevision", input, options)
  end

  @doc """
  Gets information about a specified instance.
  """
  @spec get_instance(map(), get_instance_request(), list()) ::
          {:ok, get_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_instance_errors()}
  def get_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetInstance", input, options)
  end

  @doc """
  Gets the current health status (`Healthy`, `Unhealthy`, or `Unknown`) of
  one or more instances that are associated with a specified service.

  There's a brief delay between when you register an instance and when the health
  status for the instance is
  available.
  """
  @spec get_instances_health_status(map(), get_instances_health_status_request(), list()) ::
          {:ok, get_instances_health_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_instances_health_status_errors()}
  def get_instances_health_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetInstancesHealthStatus", input, options)
  end

  @doc """
  Gets information about a namespace.
  """
  @spec get_namespace(map(), get_namespace_request(), list()) ::
          {:ok, get_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_namespace_errors()}
  def get_namespace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetNamespace", input, options)
  end

  @doc """
  Gets information about any operation that returns an operation ID in the
  response, such as a
  `CreateHttpNamespace` request.

  To get a list of operations that match specified criteria, see
  [ListOperations](https://docs.aws.amazon.com/cloud-map/latest/api/API_ListOperations.html).
  """
  @spec get_operation(map(), get_operation_request(), list()) ::
          {:ok, get_operation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_operation_errors()}
  def get_operation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetOperation", input, options)
  end

  @doc """
  Gets the settings for a specified service.
  """
  @spec get_service(map(), get_service_request(), list()) ::
          {:ok, get_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_service_errors()}
  def get_service(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetService", input, options)
  end

  @doc """
  Returns the attributes associated with a specified service.
  """
  @spec get_service_attributes(map(), get_service_attributes_request(), list()) ::
          {:ok, get_service_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_service_attributes_errors()}
  def get_service_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetServiceAttributes", input, options)
  end

  @doc """
  Lists summary information about the instances that you registered by using a
  specified service.
  """
  @spec list_instances(map(), list_instances_request(), list()) ::
          {:ok, list_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_instances_errors()}
  def list_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListInstances", input, options)
  end

  @doc """
  Lists summary information about the namespaces that were created by the current
  Amazon Web Services account.
  """
  @spec list_namespaces(map(), list_namespaces_request(), list()) ::
          {:ok, list_namespaces_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_namespaces_errors()}
  def list_namespaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListNamespaces", input, options)
  end

  @doc """
  Lists operations that match the criteria that you specify.
  """
  @spec list_operations(map(), list_operations_request(), list()) ::
          {:ok, list_operations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_operations_errors()}
  def list_operations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListOperations", input, options)
  end

  @doc """
  Lists summary information for all the services that are associated with one or
  more
  namespaces.
  """
  @spec list_services(map(), list_services_request(), list()) ::
          {:ok, list_services_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_services_errors()}
  def list_services(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServices", input, options)
  end

  @doc """
  Lists tags for the specified resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Creates or updates one or more records and, optionally, creates a health check
  based on the settings in a
  specified service.

  When you submit a `RegisterInstance` request, the following occurs:

    *
  For each DNS record that you define in the service that's specified by
  `ServiceId`, a record
  is created or updated in the hosted zone that's associated with the
  corresponding namespace.

    *
  If the service includes `HealthCheckConfig`, a health check is created based on
  the settings
  in the health check configuration.

    *
  The health check, if any, is associated with each of the new or updated records.

  One `RegisterInstance` request must complete before you can submit another
  request and specify
  the same service ID and instance ID.

  For more information, see
  [CreateService](https://docs.aws.amazon.com/cloud-map/latest/api/API_CreateService.html).   When Cloud Map receives a DNS query for the specified DNS name, it returns the
  applicable value:

    *

  **If the health check is healthy**: returns all the records

    *

  **If the health check is unhealthy**: returns the applicable value for the
  last healthy instance

    *

  **If you didn't specify a health check configuration**: returns all the
  records

  For the current quota on the number of instances that you can register using the
  same namespace and using
  the same service, see [Cloud Map
  quotas](https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html)
  in the *Cloud Map Developer Guide*.
  """
  @spec register_instance(map(), register_instance_request(), list()) ::
          {:ok, register_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_instance_errors()}
  def register_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterInstance", input, options)
  end

  @doc """
  Adds one or more tags to the specified resource.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes one or more tags from the specified resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates an HTTP
  namespace.
  """
  @spec update_http_namespace(map(), update_http_namespace_request(), list()) ::
          {:ok, update_http_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_http_namespace_errors()}
  def update_http_namespace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateHttpNamespace", input, options)
  end

  @doc """
  Submits a request to change the health status of a custom health check to
  healthy or unhealthy.

  You can use `UpdateInstanceCustomHealthStatus` to change the status only for
  custom health
  checks, which you define using `HealthCheckCustomConfig` when you create a
  service. You can't use it
  to change the status for Route 53 health checks, which you define using
  `HealthCheckConfig`.

  For more information, see
  [HealthCheckCustomConfig](https://docs.aws.amazon.com/cloud-map/latest/api/API_HealthCheckCustomConfig.html).
  """
  @spec update_instance_custom_health_status(
          map(),
          update_instance_custom_health_status_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_instance_custom_health_status_errors()}
  def update_instance_custom_health_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateInstanceCustomHealthStatus", input, options)
  end

  @doc """
  Updates a private DNS
  namespace.
  """
  @spec update_private_dns_namespace(map(), update_private_dns_namespace_request(), list()) ::
          {:ok, update_private_dns_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_private_dns_namespace_errors()}
  def update_private_dns_namespace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePrivateDnsNamespace", input, options)
  end

  @doc """
  Updates a public DNS
  namespace.
  """
  @spec update_public_dns_namespace(map(), update_public_dns_namespace_request(), list()) ::
          {:ok, update_public_dns_namespace_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_public_dns_namespace_errors()}
  def update_public_dns_namespace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePublicDnsNamespace", input, options)
  end

  @doc """
  Submits a request to perform the following operations:

    *
  Update the TTL setting for existing `DnsRecords` configurations

    *
  Add, update, or delete `HealthCheckConfig` for a specified service

  You can't add, update, or delete a `HealthCheckCustomConfig` configuration.

  For public and private DNS namespaces, note the following:

    *
  If you omit any existing `DnsRecords` or `HealthCheckConfig` configurations from
  an
  `UpdateService` request, the configurations are deleted from the service.

    *
  If you omit an existing `HealthCheckCustomConfig` configuration from an
  `UpdateService` request, the configuration isn't deleted from the service.

  When you update settings for a service, Cloud Map also updates the corresponding
  settings in all the
  records and health checks that were created by using the specified service.
  """
  @spec update_service(map(), update_service_request(), list()) ::
          {:ok, update_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_service_errors()}
  def update_service(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateService", input, options)
  end

  @doc """
  Submits a request to update a specified service to add service-level attributes.
  """
  @spec update_service_attributes(map(), update_service_attributes_request(), list()) ::
          {:ok, update_service_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_service_attributes_errors()}
  def update_service_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateServiceAttributes", input, options)
  end
end
