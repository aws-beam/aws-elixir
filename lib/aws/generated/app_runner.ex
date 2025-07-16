# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AppRunner do
  @moduledoc """
  App Runner

  App Runner is an application service that provides a fast, simple, and
  cost-effective way to go directly from an existing container image or source
  code
  to a running service in the Amazon Web Services Cloud in seconds.

  You don't need to learn new technologies, decide which compute service to use,
  or understand how to
  provision and configure Amazon Web Services resources.

  App Runner connects directly to your container registry or source code
  repository. It provides an automatic delivery pipeline with fully managed
  operations,
  high performance, scalability, and security.

  For more information about App Runner, see the [App Runner Developer Guide](https://docs.aws.amazon.com/apprunner/latest/dg/).
  For release information, see the [App Runner Release Notes](https://docs.aws.amazon.com/apprunner/latest/relnotes/).

  To install the Software Development Kits (SDKs), Integrated
  Development Environment (IDE) Toolkits, and command line tools that you can use
  to access the API, see [Tools for Amazon Web Services](http://aws.amazon.com/tools/).

  ## Endpoints

  For a list of Region-specific endpoints that App Runner supports, see [App Runner
  endpoints and
  quotas](https://docs.aws.amazon.com/general/latest/gr/apprunner.html) in the
  *Amazon Web Services General Reference*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      custom_domain() :: %{
        "CertificateValidationRecords" => list(certificate_validation_record()),
        "DomainName" => String.t(),
        "EnableWWWSubdomain" => boolean(),
        "Status" => list(any())
      }
      
  """
  @type custom_domain() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      encryption_configuration() :: %{
        "KmsKey" => String.t()
      }
      
  """
  @type encryption_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_observability_configuration_request() :: %{
        required("ObservabilityConfigurationArn") => String.t()
      }
      
  """
  @type delete_observability_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_observability_configurations_response() :: %{
        "NextToken" => String.t(),
        "ObservabilityConfigurationSummaryList" => list(observability_configuration_summary())
      }
      
  """
  @type list_observability_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ingress_vpc_configuration() :: %{
        "VpcEndpointId" => String.t(),
        "VpcId" => String.t()
      }
      
  """
  @type ingress_vpc_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_ingress_connection_summary() :: %{
        "ServiceArn" => String.t(),
        "VpcIngressConnectionArn" => String.t()
      }
      
  """
  @type vpc_ingress_connection_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_observability_configuration_request() :: %{
        optional("Tags") => list(tag()),
        optional("TraceConfiguration") => trace_configuration(),
        required("ObservabilityConfigurationName") => String.t()
      }
      
  """
  @type create_observability_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_auto_scaling_configuration_request() :: %{
        required("AutoScalingConfigurationArn") => String.t()
      }
      
  """
  @type describe_auto_scaling_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vpc_connector_response() :: %{
        "VpcConnector" => vpc_connector()
      }
      
  """
  @type create_vpc_connector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      code_configuration() :: %{
        "CodeConfigurationValues" => code_configuration_values(),
        "ConfigurationSource" => list(any())
      }
      
  """
  @type code_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_observability_configuration_request() :: %{
        required("ObservabilityConfigurationArn") => String.t()
      }
      
  """
  @type describe_observability_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_default_auto_scaling_configuration_response() :: %{
        "AutoScalingConfiguration" => auto_scaling_configuration()
      }
      
  """
  @type update_default_auto_scaling_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_dns_target() :: %{
        "DomainName" => String.t(),
        "VpcId" => String.t(),
        "VpcIngressConnectionArn" => String.t()
      }
      
  """
  @type vpc_dns_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_observability_configuration_response() :: %{
        "ObservabilityConfiguration" => observability_configuration()
      }
      
  """
  @type describe_observability_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_vpc_ingress_connection_response() :: %{
        "VpcIngressConnection" => vpc_ingress_connection()
      }
      
  """
  @type update_vpc_ingress_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_service_request() :: %{
        required("ServiceArn") => String.t()
      }
      
  """
  @type describe_service_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_repository() :: %{
        "ImageConfiguration" => image_configuration(),
        "ImageIdentifier" => String.t(),
        "ImageRepositoryType" => list(any())
      }
      
  """
  @type image_repository() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_connections_response() :: %{
        "ConnectionSummaryList" => list(connection_summary()),
        "NextToken" => String.t()
      }
      
  """
  @type list_connections_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_code_version() :: %{
        "Type" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type source_code_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_observability_configuration_response() :: %{
        "ObservabilityConfiguration" => observability_configuration()
      }
      
  """
  @type create_observability_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pause_service_request() :: %{
        required("ServiceArn") => String.t()
      }
      
  """
  @type pause_service_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_custom_domains_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ServiceArn") => String.t()
      }
      
  """
  @type describe_custom_domains_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_connector() :: %{
        "CreatedAt" => non_neg_integer(),
        "DeletedAt" => non_neg_integer(),
        "SecurityGroups" => list(String.t()),
        "Status" => list(any()),
        "Subnets" => list(String.t()),
        "VpcConnectorArn" => String.t(),
        "VpcConnectorName" => String.t(),
        "VpcConnectorRevision" => integer()
      }
      
  """
  @type vpc_connector() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_vpc_ingress_connection_request() :: %{
        required("VpcIngressConnectionArn") => String.t()
      }
      
  """
  @type describe_vpc_ingress_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service() :: %{
        "AutoScalingConfigurationSummary" => auto_scaling_configuration_summary(),
        "CreatedAt" => non_neg_integer(),
        "DeletedAt" => non_neg_integer(),
        "EncryptionConfiguration" => encryption_configuration(),
        "HealthCheckConfiguration" => health_check_configuration(),
        "InstanceConfiguration" => instance_configuration(),
        "NetworkConfiguration" => network_configuration(),
        "ObservabilityConfiguration" => service_observability_configuration(),
        "ServiceArn" => String.t(),
        "ServiceId" => String.t(),
        "ServiceName" => String.t(),
        "ServiceUrl" => String.t(),
        "SourceConfiguration" => source_configuration(),
        "Status" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type service() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_vpc_connectors_response() :: %{
        "NextToken" => String.t(),
        "VpcConnectors" => list(vpc_connector())
      }
      
  """
  @type list_vpc_connectors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_service_error_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_service_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_deployment_response() :: %{
        "OperationId" => String.t()
      }
      
  """
  @type start_deployment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operation_summary() :: %{
        "EndedAt" => non_neg_integer(),
        "Id" => String.t(),
        "StartedAt" => non_neg_integer(),
        "Status" => list(any()),
        "TargetArn" => String.t(),
        "Type" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type operation_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("TagKeys") => list(String.t())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vpc_connector_response() :: %{
        "VpcConnector" => vpc_connector()
      }
      
  """
  @type delete_vpc_connector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vpc_ingress_connection_response() :: %{
        "VpcIngressConnection" => vpc_ingress_connection()
      }
      
  """
  @type create_vpc_ingress_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_auto_scaling_configurations_request() :: %{
        optional("AutoScalingConfigurationName") => String.t(),
        optional("LatestOnly") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_auto_scaling_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_state_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_custom_domain_request() :: %{
        optional("EnableWWWSubdomain") => boolean(),
        required("DomainName") => String.t(),
        required("ServiceArn") => String.t()
      }
      
  """
  @type associate_custom_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vpc_ingress_connection_request() :: %{
        optional("Tags") => list(tag()),
        required("IngressVpcConfiguration") => ingress_vpc_configuration(),
        required("ServiceArn") => String.t(),
        required("VpcIngressConnectionName") => String.t()
      }
      
  """
  @type create_vpc_ingress_connection_request() :: %{String.t() => any()}

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
      
      trace_configuration() :: %{
        "Vendor" => list(any())
      }
      
  """
  @type trace_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_custom_domain_request() :: %{
        required("DomainName") => String.t(),
        required("ServiceArn") => String.t()
      }
      
  """
  @type disassociate_custom_domain_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_connections_request() :: %{
        optional("ConnectionName") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_connections_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_services_for_auto_scaling_configuration_response() :: %{
        "NextToken" => String.t(),
        "ServiceArnList" => list(String.t())
      }
      
  """
  @type list_services_for_auto_scaling_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vpc_ingress_connection_response() :: %{
        "VpcIngressConnection" => vpc_ingress_connection()
      }
      
  """
  @type delete_vpc_ingress_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_ingress_connection() :: %{
        "AccountId" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "DeletedAt" => non_neg_integer(),
        "DomainName" => String.t(),
        "IngressVpcConfiguration" => ingress_vpc_configuration(),
        "ServiceArn" => String.t(),
        "Status" => list(any()),
        "VpcIngressConnectionArn" => String.t(),
        "VpcIngressConnectionName" => String.t()
      }
      
  """
  @type vpc_ingress_connection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_operations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ServiceArn") => String.t()
      }
      
  """
  @type list_operations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_configuration() :: %{
        "AutoScalingConfigurationArn" => String.t(),
        "AutoScalingConfigurationName" => String.t(),
        "AutoScalingConfigurationRevision" => integer(),
        "CreatedAt" => non_neg_integer(),
        "DeletedAt" => non_neg_integer(),
        "HasAssociatedService" => boolean(),
        "IsDefault" => boolean(),
        "Latest" => boolean(),
        "MaxConcurrency" => integer(),
        "MaxSize" => integer(),
        "MinSize" => integer(),
        "Status" => list(any())
      }
      
  """
  @type auto_scaling_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      certificate_validation_record() :: %{
        "Name" => String.t(),
        "Status" => list(any()),
        "Type" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type certificate_validation_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_vpc_connectors_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_vpc_connectors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vpc_connector_request() :: %{
        optional("SecurityGroups") => list(String.t()),
        optional("Tags") => list(tag()),
        required("Subnets") => list(String.t()),
        required("VpcConnectorName") => String.t()
      }
      
  """
  @type create_vpc_connector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_auto_scaling_configuration_request() :: %{
        optional("DeleteAllRevisions") => boolean(),
        required("AutoScalingConfigurationArn") => String.t()
      }
      
  """
  @type delete_auto_scaling_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_vpc_ingress_connection_request() :: %{
        required("IngressVpcConfiguration") => ingress_vpc_configuration(),
        required("VpcIngressConnectionArn") => String.t()
      }
      
  """
  @type update_vpc_ingress_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

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
      
      invalid_request_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connection() :: %{
        "ConnectionArn" => String.t(),
        "ConnectionName" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "ProviderType" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type connection() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_services_response() :: %{
        "NextToken" => String.t(),
        "ServiceSummaryList" => list(service_summary())
      }
      
  """
  @type list_services_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_summary() :: %{
        "CreatedAt" => non_neg_integer(),
        "ServiceArn" => String.t(),
        "ServiceId" => String.t(),
        "ServiceName" => String.t(),
        "ServiceUrl" => String.t(),
        "Status" => list(any()),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type service_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resume_service_request() :: %{
        required("ServiceArn") => String.t()
      }
      
  """
  @type resume_service_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_service_request() :: %{
        optional("AutoScalingConfigurationArn") => String.t(),
        optional("EncryptionConfiguration") => encryption_configuration(),
        optional("HealthCheckConfiguration") => health_check_configuration(),
        optional("InstanceConfiguration") => instance_configuration(),
        optional("NetworkConfiguration") => network_configuration(),
        optional("ObservabilityConfiguration") => service_observability_configuration(),
        optional("Tags") => list(tag()),
        required("ServiceName") => String.t(),
        required("SourceConfiguration") => source_configuration()
      }
      
  """
  @type create_service_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      code_repository() :: %{
        "CodeConfiguration" => code_configuration(),
        "RepositoryUrl" => String.t(),
        "SourceCodeVersion" => source_code_version(),
        "SourceDirectory" => String.t()
      }
      
  """
  @type code_repository() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_configuration_summary() :: %{
        "AutoScalingConfigurationArn" => String.t(),
        "AutoScalingConfigurationName" => String.t(),
        "AutoScalingConfigurationRevision" => integer(),
        "CreatedAt" => non_neg_integer(),
        "HasAssociatedService" => boolean(),
        "IsDefault" => boolean(),
        "Status" => list(any())
      }
      
  """
  @type auto_scaling_configuration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_observability_configurations_request() :: %{
        optional("LatestOnly") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ObservabilityConfigurationName") => String.t()
      }
      
  """
  @type list_observability_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_observability_configuration_response() :: %{
        "ObservabilityConfiguration" => observability_configuration()
      }
      
  """
  @type delete_observability_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ingress_configuration() :: %{
        "IsPubliclyAccessible" => boolean()
      }
      
  """
  @type ingress_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_configuration() :: %{
        "AuthenticationConfiguration" => authentication_configuration(),
        "AutoDeploymentsEnabled" => boolean(),
        "CodeRepository" => code_repository(),
        "ImageRepository" => image_repository()
      }
      
  """
  @type source_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_vpc_connector_request() :: %{
        required("VpcConnectorArn") => String.t()
      }
      
  """
  @type describe_vpc_connector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_service_response() :: %{
        "Service" => service()
      }
      
  """
  @type describe_service_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vpc_connector_request() :: %{
        required("VpcConnectorArn") => String.t()
      }
      
  """
  @type delete_vpc_connector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_default_auto_scaling_configuration_request() :: %{
        required("AutoScalingConfigurationArn") => String.t()
      }
      
  """
  @type update_default_auto_scaling_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_request() :: %{
        optional("AutoScalingConfigurationArn") => String.t(),
        optional("HealthCheckConfiguration") => health_check_configuration(),
        optional("InstanceConfiguration") => instance_configuration(),
        optional("NetworkConfiguration") => network_configuration(),
        optional("ObservabilityConfiguration") => service_observability_configuration(),
        optional("SourceConfiguration") => source_configuration(),
        required("ServiceArn") => String.t()
      }
      
  """
  @type update_service_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      code_configuration_values() :: %{
        "BuildCommand" => String.t(),
        "Port" => String.t(),
        "Runtime" => list(any()),
        "RuntimeEnvironmentSecrets" => map(),
        "RuntimeEnvironmentVariables" => map(),
        "StartCommand" => String.t()
      }
      
  """
  @type code_configuration_values() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_auto_scaling_configuration_response() :: %{
        "AutoScalingConfiguration" => auto_scaling_configuration()
      }
      
  """
  @type describe_auto_scaling_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_services_for_auto_scaling_configuration_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("AutoScalingConfigurationArn") => String.t()
      }
      
  """
  @type list_services_for_auto_scaling_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      observability_configuration() :: %{
        "CreatedAt" => non_neg_integer(),
        "DeletedAt" => non_neg_integer(),
        "Latest" => boolean(),
        "ObservabilityConfigurationArn" => String.t(),
        "ObservabilityConfigurationName" => String.t(),
        "ObservabilityConfigurationRevision" => integer(),
        "Status" => list(any()),
        "TraceConfiguration" => trace_configuration()
      }
      
  """
  @type observability_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_auto_scaling_configurations_response() :: %{
        "AutoScalingConfigurationSummaryList" => list(auto_scaling_configuration_summary()),
        "NextToken" => String.t()
      }
      
  """
  @type list_auto_scaling_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_configuration() :: %{
        "EgressConfiguration" => egress_configuration(),
        "IngressConfiguration" => ingress_configuration(),
        "IpAddressType" => list(any())
      }
      
  """
  @type network_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_operations_response() :: %{
        "NextToken" => String.t(),
        "OperationSummaryList" => list(operation_summary())
      }
      
  """
  @type list_operations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_vpc_ingress_connections_filter() :: %{
        "ServiceArn" => String.t(),
        "VpcEndpointId" => String.t()
      }
      
  """
  @type list_vpc_ingress_connections_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      connection_summary() :: %{
        "ConnectionArn" => String.t(),
        "ConnectionName" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "ProviderType" => list(any()),
        "Status" => list(any())
      }
      
  """
  @type connection_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_configuration() :: %{
        "Cpu" => String.t(),
        "InstanceRoleArn" => String.t(),
        "Memory" => String.t()
      }
      
  """
  @type instance_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_connection_response() :: %{
        "Connection" => connection()
      }
      
  """
  @type delete_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      observability_configuration_summary() :: %{
        "ObservabilityConfigurationArn" => String.t(),
        "ObservabilityConfigurationName" => String.t(),
        "ObservabilityConfigurationRevision" => integer()
      }
      
  """
  @type observability_configuration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      egress_configuration() :: %{
        "EgressType" => list(any()),
        "VpcConnectorArn" => String.t()
      }
      
  """
  @type egress_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_request() :: %{
        required("ServiceArn") => String.t()
      }
      
  """
  @type delete_service_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vpc_ingress_connection_request() :: %{
        required("VpcIngressConnectionArn") => String.t()
      }
      
  """
  @type delete_vpc_ingress_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_auto_scaling_configuration_request() :: %{
        optional("MaxConcurrency") => integer(),
        optional("MaxSize") => integer(),
        optional("MinSize") => integer(),
        optional("Tags") => list(tag()),
        required("AutoScalingConfigurationName") => String.t()
      }
      
  """
  @type create_auto_scaling_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_connection_response() :: %{
        "Connection" => connection()
      }
      
  """
  @type create_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_vpc_ingress_connection_response() :: %{
        "VpcIngressConnection" => vpc_ingress_connection()
      }
      
  """
  @type describe_vpc_ingress_connection_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_auto_scaling_configuration_response() :: %{
        "AutoScalingConfiguration" => auto_scaling_configuration()
      }
      
  """
  @type delete_auto_scaling_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_observability_configuration() :: %{
        "ObservabilityConfigurationArn" => String.t(),
        "ObservabilityEnabled" => boolean()
      }
      
  """
  @type service_observability_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_vpc_connector_response() :: %{
        "VpcConnector" => vpc_connector()
      }
      
  """
  @type describe_vpc_connector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_service_response() :: %{
        "OperationId" => String.t(),
        "Service" => service()
      }
      
  """
  @type update_service_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_service_response() :: %{
        "OperationId" => String.t(),
        "Service" => service()
      }
      
  """
  @type delete_service_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authentication_configuration() :: %{
        "AccessRoleArn" => String.t(),
        "ConnectionArn" => String.t()
      }
      
  """
  @type authentication_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_connection_request() :: %{
        required("ConnectionArn") => String.t()
      }
      
  """
  @type delete_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_service_response() :: %{
        "OperationId" => String.t(),
        "Service" => service()
      }
      
  """
  @type create_service_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_configuration() :: %{
        "Port" => String.t(),
        "RuntimeEnvironmentSecrets" => map(),
        "RuntimeEnvironmentVariables" => map(),
        "StartCommand" => String.t()
      }
      
  """
  @type image_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_vpc_ingress_connections_response() :: %{
        "NextToken" => String.t(),
        "VpcIngressConnectionSummaryList" => list(vpc_ingress_connection_summary())
      }
      
  """
  @type list_vpc_ingress_connections_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_connection_request() :: %{
        optional("Tags") => list(tag()),
        required("ConnectionName") => String.t(),
        required("ProviderType") => list(any())
      }
      
  """
  @type create_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_custom_domain_response() :: %{
        "CustomDomain" => custom_domain(),
        "DNSTarget" => String.t(),
        "ServiceArn" => String.t(),
        "VpcDNSTargets" => list(vpc_dns_target())
      }
      
  """
  @type associate_custom_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_deployment_request() :: %{
        required("ServiceArn") => String.t()
      }
      
  """
  @type start_deployment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_vpc_ingress_connections_request() :: %{
        optional("Filter") => list_vpc_ingress_connections_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_vpc_ingress_connections_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_auto_scaling_configuration_response() :: %{
        "AutoScalingConfiguration" => auto_scaling_configuration()
      }
      
  """
  @type create_auto_scaling_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resume_service_response() :: %{
        "OperationId" => String.t(),
        "Service" => service()
      }
      
  """
  @type resume_service_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_custom_domain_response() :: %{
        "CustomDomain" => custom_domain(),
        "DNSTarget" => String.t(),
        "ServiceArn" => String.t(),
        "VpcDNSTargets" => list(vpc_dns_target())
      }
      
  """
  @type disassociate_custom_domain_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      pause_service_response() :: %{
        "OperationId" => String.t(),
        "Service" => service()
      }
      
  """
  @type pause_service_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      health_check_configuration() :: %{
        "HealthyThreshold" => integer(),
        "Interval" => integer(),
        "Path" => String.t(),
        "Protocol" => list(any()),
        "Timeout" => integer(),
        "UnhealthyThreshold" => integer()
      }
      
  """
  @type health_check_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_custom_domains_response() :: %{
        "CustomDomains" => list(custom_domain()),
        "DNSTarget" => String.t(),
        "NextToken" => String.t(),
        "ServiceArn" => String.t(),
        "VpcDNSTargets" => list(vpc_dns_target())
      }
      
  """
  @type describe_custom_domains_response() :: %{String.t() => any()}

  @type associate_custom_domain_errors() ::
          invalid_request_exception()
          | invalid_state_exception()
          | internal_service_error_exception()

  @type create_auto_scaling_configuration_errors() ::
          service_quota_exceeded_exception()
          | invalid_request_exception()
          | internal_service_error_exception()

  @type create_connection_errors() ::
          service_quota_exceeded_exception()
          | invalid_request_exception()
          | internal_service_error_exception()

  @type create_observability_configuration_errors() ::
          service_quota_exceeded_exception()
          | invalid_request_exception()
          | internal_service_error_exception()

  @type create_service_errors() ::
          service_quota_exceeded_exception()
          | invalid_request_exception()
          | internal_service_error_exception()

  @type create_vpc_connector_errors() ::
          service_quota_exceeded_exception()
          | invalid_request_exception()
          | internal_service_error_exception()

  @type create_vpc_ingress_connection_errors() ::
          service_quota_exceeded_exception()
          | invalid_request_exception()
          | invalid_state_exception()
          | internal_service_error_exception()

  @type delete_auto_scaling_configuration_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type delete_connection_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type delete_observability_configuration_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type delete_service_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | invalid_state_exception()
          | internal_service_error_exception()

  @type delete_vpc_connector_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type delete_vpc_ingress_connection_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | invalid_state_exception()
          | internal_service_error_exception()

  @type describe_auto_scaling_configuration_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type describe_custom_domains_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type describe_observability_configuration_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type describe_service_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type describe_vpc_connector_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type describe_vpc_ingress_connection_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type disassociate_custom_domain_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | invalid_state_exception()
          | internal_service_error_exception()

  @type list_auto_scaling_configurations_errors() ::
          invalid_request_exception() | internal_service_error_exception()

  @type list_connections_errors() ::
          invalid_request_exception() | internal_service_error_exception()

  @type list_observability_configurations_errors() ::
          invalid_request_exception() | internal_service_error_exception()

  @type list_operations_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type list_services_errors() :: invalid_request_exception() | internal_service_error_exception()

  @type list_services_for_auto_scaling_configuration_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type list_tags_for_resource_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | invalid_state_exception()
          | internal_service_error_exception()

  @type list_vpc_connectors_errors() ::
          invalid_request_exception() | internal_service_error_exception()

  @type list_vpc_ingress_connections_errors() ::
          invalid_request_exception() | internal_service_error_exception()

  @type pause_service_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | invalid_state_exception()
          | internal_service_error_exception()

  @type resume_service_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | invalid_state_exception()
          | internal_service_error_exception()

  @type start_deployment_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type tag_resource_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | invalid_state_exception()
          | internal_service_error_exception()

  @type untag_resource_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | invalid_state_exception()
          | internal_service_error_exception()

  @type update_default_auto_scaling_configuration_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_error_exception()

  @type update_service_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | invalid_state_exception()
          | internal_service_error_exception()

  @type update_vpc_ingress_connection_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | invalid_state_exception()
          | internal_service_error_exception()

  def metadata do
    %{
      api_version: "2020-05-15",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "apprunner",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "AppRunner",
      signature_version: "v4",
      signing_name: "apprunner",
      target_prefix: "AppRunner"
    }
  end

  @doc """
  Associate your own domain name with the App Runner subdomain URL of your App
  Runner service.

  After you call `AssociateCustomDomain` and receive a successful response, use
  the information in the `CustomDomain` record
  that's returned to add CNAME records to your Domain Name System (DNS). For each
  mapped domain name, add a mapping to the target App Runner subdomain and one or
  more certificate validation records. App Runner then performs DNS validation to
  verify that you own or control the domain name that you associated. App Runner
  tracks
  domain validity in a certificate stored in [AWS Certificate Manager (ACM)](https://docs.aws.amazon.com/acm/latest/userguide).
  """
  @spec associate_custom_domain(map(), associate_custom_domain_request(), list()) ::
          {:ok, associate_custom_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_custom_domain_errors()}
  def associate_custom_domain(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateCustomDomain", input, options)
  end

  @doc """
  Create an App Runner automatic scaling configuration resource.

  App Runner requires this resource when you create or update App Runner services
  and you require
  non-default auto scaling settings. You can share an auto scaling configuration
  across multiple services.

  Create multiple revisions of a configuration by calling this action multiple
  times using the same `AutoScalingConfigurationName`. The call
  returns incremental `AutoScalingConfigurationRevision` values. When you create a
  service and configure an auto scaling configuration resource,
  the service uses the latest active revision of the auto scaling configuration by
  default. You can optionally configure the service to use a specific
  revision.

  Configure a higher `MinSize` to increase the spread of your App Runner service
  over more Availability Zones in the Amazon Web Services Region. The
  tradeoff is a higher minimal cost.

  Configure a lower `MaxSize` to control your cost. The tradeoff is lower
  responsiveness during peak demand.
  """
  @spec create_auto_scaling_configuration(
          map(),
          create_auto_scaling_configuration_request(),
          list()
        ) ::
          {:ok, create_auto_scaling_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_auto_scaling_configuration_errors()}
  def create_auto_scaling_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAutoScalingConfiguration", input, options)
  end

  @doc """
  Create an App Runner connection resource.

  App Runner requires a connection resource when you create App Runner services
  that access private repositories from
  certain third-party providers. You can share a connection across multiple
  services.

  A connection resource is needed to access GitHub and Bitbucket repositories.
  Both require
  a user interface approval process through the App Runner console before you can
  use the
  connection.
  """
  @spec create_connection(map(), create_connection_request(), list()) ::
          {:ok, create_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_connection_errors()}
  def create_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateConnection", input, options)
  end

  @doc """
  Create an App Runner observability configuration resource.

  App Runner requires this resource when you create or update App Runner services
  and you want to enable
  non-default observability features. You can share an observability configuration
  across multiple services.

  Create multiple revisions of a configuration by calling this action multiple
  times using the same `ObservabilityConfigurationName`. The
  call returns incremental `ObservabilityConfigurationRevision` values. When you
  create a service and configure an observability configuration
  resource, the service uses the latest active revision of the observability
  configuration by default. You can optionally configure the service to use a
  specific revision.

  The observability configuration resource is designed to configure multiple
  features (currently one feature, tracing). This action takes optional
  parameters that describe the configuration of these features (currently one
  parameter, `TraceConfiguration`). If you don't specify a feature
  parameter, App Runner doesn't enable the feature.
  """
  @spec create_observability_configuration(
          map(),
          create_observability_configuration_request(),
          list()
        ) ::
          {:ok, create_observability_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_observability_configuration_errors()}
  def create_observability_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateObservabilityConfiguration", input, options)
  end

  @doc """
  Create an App Runner service.

  After the service is created, the action also automatically starts a deployment.

  This is an asynchronous operation. On a successful call, you can use the
  returned `OperationId` and the
  [ListOperations](https://docs.aws.amazon.com/apprunner/latest/api/API_ListOperations.html)
  call to track the operation's progress.
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
  Create an App Runner VPC connector resource.

  App Runner requires this resource when you want to associate your App Runner
  service to a custom Amazon Virtual Private Cloud
  (Amazon VPC).
  """
  @spec create_vpc_connector(map(), create_vpc_connector_request(), list()) ::
          {:ok, create_vpc_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_vpc_connector_errors()}
  def create_vpc_connector(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVpcConnector", input, options)
  end

  @doc """
  Create an App Runner VPC Ingress Connection resource.

  App Runner requires this resource when you want to associate your App Runner
  service with an Amazon VPC endpoint.
  """
  @spec create_vpc_ingress_connection(map(), create_vpc_ingress_connection_request(), list()) ::
          {:ok, create_vpc_ingress_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_vpc_ingress_connection_errors()}
  def create_vpc_ingress_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVpcIngressConnection", input, options)
  end

  @doc """
  Delete an App Runner automatic scaling configuration resource.

  You can delete a top level auto scaling configuration, a specific revision of
  one, or all
  revisions associated with the top level configuration. You can't delete the
  default auto scaling configuration or a configuration that's used by one or
  more App Runner services.
  """
  @spec delete_auto_scaling_configuration(
          map(),
          delete_auto_scaling_configuration_request(),
          list()
        ) ::
          {:ok, delete_auto_scaling_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_auto_scaling_configuration_errors()}
  def delete_auto_scaling_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAutoScalingConfiguration", input, options)
  end

  @doc """
  Delete an App Runner connection.

  You must first ensure that there are no running App Runner services that use
  this connection. If there are any, the
  `DeleteConnection` action fails.
  """
  @spec delete_connection(map(), delete_connection_request(), list()) ::
          {:ok, delete_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_connection_errors()}
  def delete_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteConnection", input, options)
  end

  @doc """
  Delete an App Runner observability configuration resource.

  You can delete a specific revision or the latest active revision. You can't
  delete a
  configuration that's used by one or more App Runner services.
  """
  @spec delete_observability_configuration(
          map(),
          delete_observability_configuration_request(),
          list()
        ) ::
          {:ok, delete_observability_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_observability_configuration_errors()}
  def delete_observability_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteObservabilityConfiguration", input, options)
  end

  @doc """
  Delete an App Runner service.

  This is an asynchronous operation. On a successful call, you can use the
  returned `OperationId` and the `ListOperations`
  call to track the operation's progress.

  Make sure that you don't have any active VPCIngressConnections associated with
  the service you want to delete.
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
  Delete an App Runner VPC connector resource.

  You can't delete a
  connector that's used by one or more App Runner services.
  """
  @spec delete_vpc_connector(map(), delete_vpc_connector_request(), list()) ::
          {:ok, delete_vpc_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_vpc_connector_errors()}
  def delete_vpc_connector(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVpcConnector", input, options)
  end

  @doc """
  Delete an App Runner VPC Ingress Connection resource that's associated with an
  App Runner service.

  The VPC Ingress Connection must be in one of the following states to be deleted:

    *

  `AVAILABLE`

    *

  `FAILED_CREATION`

    *

  `FAILED_UPDATE`

    *

  `FAILED_DELETION`
  """
  @spec delete_vpc_ingress_connection(map(), delete_vpc_ingress_connection_request(), list()) ::
          {:ok, delete_vpc_ingress_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_vpc_ingress_connection_errors()}
  def delete_vpc_ingress_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVpcIngressConnection", input, options)
  end

  @doc """
  Return a full description of an App Runner automatic scaling configuration
  resource.
  """
  @spec describe_auto_scaling_configuration(
          map(),
          describe_auto_scaling_configuration_request(),
          list()
        ) ::
          {:ok, describe_auto_scaling_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_auto_scaling_configuration_errors()}
  def describe_auto_scaling_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAutoScalingConfiguration", input, options)
  end

  @doc """
  Return a description of custom domain names that are associated with an App
  Runner service.
  """
  @spec describe_custom_domains(map(), describe_custom_domains_request(), list()) ::
          {:ok, describe_custom_domains_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_custom_domains_errors()}
  def describe_custom_domains(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCustomDomains", input, options)
  end

  @doc """
  Return a full description of an App Runner observability configuration resource.
  """
  @spec describe_observability_configuration(
          map(),
          describe_observability_configuration_request(),
          list()
        ) ::
          {:ok, describe_observability_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_observability_configuration_errors()}
  def describe_observability_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeObservabilityConfiguration", input, options)
  end

  @doc """
  Return a full description of an App Runner service.
  """
  @spec describe_service(map(), describe_service_request(), list()) ::
          {:ok, describe_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_service_errors()}
  def describe_service(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeService", input, options)
  end

  @doc """
  Return a description of an App Runner VPC connector resource.
  """
  @spec describe_vpc_connector(map(), describe_vpc_connector_request(), list()) ::
          {:ok, describe_vpc_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_vpc_connector_errors()}
  def describe_vpc_connector(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVpcConnector", input, options)
  end

  @doc """
  Return a full description of an App Runner VPC Ingress Connection resource.
  """
  @spec describe_vpc_ingress_connection(map(), describe_vpc_ingress_connection_request(), list()) ::
          {:ok, describe_vpc_ingress_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_vpc_ingress_connection_errors()}
  def describe_vpc_ingress_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVpcIngressConnection", input, options)
  end

  @doc """
  Disassociate a custom domain name from an App Runner service.

  Certificates tracking domain validity are associated with a custom domain and
  are stored in [AWS Certificate Manager (ACM)](https://docs.aws.amazon.com/acm/latest/userguide).
  These certificates aren't deleted as part of this action. App Runner delays
  certificate deletion for
  30 days after a domain is disassociated from your service.
  """
  @spec disassociate_custom_domain(map(), disassociate_custom_domain_request(), list()) ::
          {:ok, disassociate_custom_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_custom_domain_errors()}
  def disassociate_custom_domain(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateCustomDomain", input, options)
  end

  @doc """
  Returns a list of active App Runner automatic scaling configurations in your
  Amazon Web Services account.

  You can query the revisions for a specific
  configuration name or the revisions for all active configurations in your
  account. You can optionally query only the latest revision of each requested
  name.

  To retrieve a full description of a particular configuration revision, call and
  provide one of
  the ARNs returned by `ListAutoScalingConfigurations`.
  """
  @spec list_auto_scaling_configurations(
          map(),
          list_auto_scaling_configurations_request(),
          list()
        ) ::
          {:ok, list_auto_scaling_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_auto_scaling_configurations_errors()}
  def list_auto_scaling_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAutoScalingConfigurations", input, options)
  end

  @doc """
  Returns a list of App Runner connections that are associated with your Amazon
  Web Services account.
  """
  @spec list_connections(map(), list_connections_request(), list()) ::
          {:ok, list_connections_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_connections_errors()}
  def list_connections(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListConnections", input, options)
  end

  @doc """
  Returns a list of active App Runner observability configurations in your Amazon
  Web Services account.

  You can query the revisions for a specific
  configuration name or the revisions for all active configurations in your
  account. You can optionally query only the latest revision of each requested
  name.

  To retrieve a full description of a particular configuration revision, call and
  provide one
  of the ARNs returned by `ListObservabilityConfigurations`.
  """
  @spec list_observability_configurations(
          map(),
          list_observability_configurations_request(),
          list()
        ) ::
          {:ok, list_observability_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_observability_configurations_errors()}
  def list_observability_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListObservabilityConfigurations", input, options)
  end

  @doc """
  Return a list of operations that occurred on an App Runner service.

  The resulting list of `OperationSummary` objects is sorted in reverse
  chronological order. The first object on the list represents the
  last started operation.
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
  Returns a list of running App Runner services in your Amazon Web Services
  account.
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
  Returns a list of the associated App Runner services using an auto scaling
  configuration.
  """
  @spec list_services_for_auto_scaling_configuration(
          map(),
          list_services_for_auto_scaling_configuration_request(),
          list()
        ) ::
          {:ok, list_services_for_auto_scaling_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_services_for_auto_scaling_configuration_errors()}
  def list_services_for_auto_scaling_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServicesForAutoScalingConfiguration", input, options)
  end

  @doc """
  List tags that are associated with for an App Runner resource.

  The response contains a list of tag key-value pairs.
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
  Returns a list of App Runner VPC connectors in your Amazon Web Services account.
  """
  @spec list_vpc_connectors(map(), list_vpc_connectors_request(), list()) ::
          {:ok, list_vpc_connectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_vpc_connectors_errors()}
  def list_vpc_connectors(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListVpcConnectors", input, options)
  end

  @doc """
  Return a list of App Runner VPC Ingress Connections in your Amazon Web Services
  account.
  """
  @spec list_vpc_ingress_connections(map(), list_vpc_ingress_connections_request(), list()) ::
          {:ok, list_vpc_ingress_connections_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_vpc_ingress_connections_errors()}
  def list_vpc_ingress_connections(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListVpcIngressConnections", input, options)
  end

  @doc """
  Pause an active App Runner service.

  App Runner reduces compute capacity for the service to zero and loses state (for
  example, ephemeral storage is
  removed).

  This is an asynchronous operation. On a successful call, you can use the
  returned `OperationId` and the `ListOperations`
  call to track the operation's progress.
  """
  @spec pause_service(map(), pause_service_request(), list()) ::
          {:ok, pause_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, pause_service_errors()}
  def pause_service(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PauseService", input, options)
  end

  @doc """
  Resume an active App Runner service.

  App Runner provisions compute capacity for the service.

  This is an asynchronous operation. On a successful call, you can use the
  returned `OperationId` and the `ListOperations`
  call to track the operation's progress.
  """
  @spec resume_service(map(), resume_service_request(), list()) ::
          {:ok, resume_service_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, resume_service_errors()}
  def resume_service(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResumeService", input, options)
  end

  @doc """
  Initiate a manual deployment of the latest commit in a source code repository or
  the latest image in a source image repository to an App Runner
  service.

  For a source code repository, App Runner retrieves the commit and builds a
  Docker image. For a source image repository, App Runner retrieves the latest
  Docker
  image. In both cases, App Runner then deploys the new image to your service and
  starts a new container instance.

  This is an asynchronous operation. On a successful call, you can use the
  returned `OperationId` and the `ListOperations`
  call to track the operation's progress.
  """
  @spec start_deployment(map(), start_deployment_request(), list()) ::
          {:ok, start_deployment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_deployment_errors()}
  def start_deployment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartDeployment", input, options)
  end

  @doc """
  Add tags to, or update the tag values of, an App Runner resource.

  A tag is a key-value pair.
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
  Remove tags from an App Runner resource.
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
  Update an auto scaling configuration to be the default.

  The existing default auto scaling configuration will be set to non-default
  automatically.
  """
  @spec update_default_auto_scaling_configuration(
          map(),
          update_default_auto_scaling_configuration_request(),
          list()
        ) ::
          {:ok, update_default_auto_scaling_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_default_auto_scaling_configuration_errors()}
  def update_default_auto_scaling_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDefaultAutoScalingConfiguration", input, options)
  end

  @doc """
  Update an App Runner service.

  You can update the source configuration and instance configuration of the
  service. You can also update the ARN of the auto
  scaling configuration resource that's associated with the service. However, you
  can't change the name or the encryption configuration of the service.
  These can be set only when you create the service.

  To update the tags applied to your service, use the separate actions
  `TagResource` and `UntagResource`.

  This is an asynchronous operation. On a successful call, you can use the
  returned `OperationId` and the `ListOperations`
  call to track the operation's progress.
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
  Update an existing App Runner VPC Ingress Connection resource.

  The VPC Ingress Connection must be in one of the following states to be updated:

    *

  AVAILABLE

    *

  FAILED_CREATION

    *

  FAILED_UPDATE
  """
  @spec update_vpc_ingress_connection(map(), update_vpc_ingress_connection_request(), list()) ::
          {:ok, update_vpc_ingress_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_vpc_ingress_connection_errors()}
  def update_vpc_ingress_connection(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateVpcIngressConnection", input, options)
  end
end
