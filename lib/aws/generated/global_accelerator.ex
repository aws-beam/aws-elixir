# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.GlobalAccelerator do
  @moduledoc """
  Global Accelerator

  This is the *Global Accelerator API Reference*.

  This guide is for developers who need detailed information about
  Global Accelerator API actions, data types, and errors. For more information
  about Global Accelerator features, see the
  [Global Accelerator Developer Guide](https://docs.aws.amazon.com/global-accelerator/latest/dg/what-is-global-accelerator.html).

  Global Accelerator is a service in which you create *accelerators* to improve
  the performance
  of your applications for local and global users. Depending on the type of
  accelerator you choose, you can
  gain additional benefits.

    *
  By using a standard accelerator, you can improve availability of your internet
  applications
  that are used by a global audience. With a standard accelerator, Global
  Accelerator directs traffic to optimal endpoints over the Amazon Web Services
  global network.

    *
  For other scenarios, you might choose a custom routing accelerator. With a
  custom routing accelerator, you
  can use application logic to directly map one or more users to a specific
  endpoint among many endpoints.

  Global Accelerator is a global service that supports endpoints in multiple
  Amazon Web Services Regions but you must specify the
  US West (Oregon) Region to create, update, or otherwise work with accelerators.
  That is, for example, specify `--region us-west-2`
  on Amazon Web Services CLI commands.

  By default, Global Accelerator provides you with static IP addresses that you
  associate with your accelerator. The static IP addresses
  are anycast from the Amazon Web Services edge network. For IPv4, Global
  Accelerator provides two static IPv4 addresses. For dual-stack,
  Global Accelerator provides a total of four addresses: two static IPv4 addresses
  and two static IPv6 addresses.
  With a standard accelerator for IPv4, instead of using the addresses that Global
  Accelerator provides, you can configure
  these entry points to be IPv4 addresses from your own IP address ranges that you
  bring to Global Accelerator (BYOIP).

  For a standard accelerator,
  they distribute incoming application traffic across multiple endpoint resources
  in multiple Amazon Web Services Regions , which increases
  the availability of your applications. Endpoints for standard accelerators can
  be Network Load Balancers, Application Load Balancers,
  Amazon EC2 instances, or Elastic IP addresses that are located in one Amazon Web
  Services Region or multiple Amazon Web Services Regions. For custom routing
  accelerators, you map traffic that arrives to the static IP addresses to
  specific Amazon EC2 servers in endpoints that
  are virtual private cloud (VPC) subnets.

  The static IP addresses remain assigned to your accelerator for as long as it
  exists, even if you
  disable the accelerator and it no longer accepts or routes traffic. However,
  when you
  *delete* an accelerator, you lose the static IP addresses that
  are assigned to it, so you can no longer route traffic by using them. You can
  use
  IAM policies like tag-based permissions with Global Accelerator to limit the
  users who have
  permissions to delete an accelerator. For more information, see [Tag-based policies](https://docs.aws.amazon.com/global-accelerator/latest/dg/access-control-manage-access-tag-policies.html).

  For standard accelerators, Global Accelerator uses the Amazon Web Services
  global network to route traffic to the optimal regional endpoint based
  on health, client location, and policies that you configure. The service reacts
  instantly to
  changes in health or configuration to ensure that internet traffic from clients
  is always
  directed to healthy endpoints.

  For more information about understanding and using Global Accelerator, see the
  [Global Accelerator Developer Guide](https://docs.aws.amazon.com/global-accelerator/latest/dg/what-is-global-accelerator.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  create_custom_routing_endpoint_group_response() :: %{
    "EndpointGroup" => custom_routing_endpoint_group()
  }
  """
  @type create_custom_routing_endpoint_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_cross_account_resource_accounts_request() :: %{

  }
  """
  @type list_cross_account_resource_accounts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  endpoint_configuration() :: %{
    "AttachmentArn" => String.t(),
    "ClientIPPreservationEnabled" => boolean(),
    "EndpointId" => String.t(),
    "Weight" => integer()
  }
  """
  @type endpoint_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  byoip_cidr() :: %{
    "Cidr" => String.t(),
    "Events" => list(byoip_cidr_event()()),
    "State" => list(any())
  }
  """
  @type byoip_cidr() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_accelerator_attributes_request() :: %{
    required("AcceleratorArn") => String.t()
  }
  """
  @type describe_accelerator_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_request() :: %{
    required("ResourceArn") => String.t(),
    required("Tags") => list(tag()())
  }
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_cross_account_attachments_response() :: %{
    "CrossAccountAttachments" => list(attachment()()),
    "NextToken" => String.t()
  }
  """
  @type list_cross_account_attachments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_accelerator_attributes_response() :: %{
    "AcceleratorAttributes" => accelerator_attributes()
  }
  """
  @type update_accelerator_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_custom_routing_accelerator_response() :: %{
    "Accelerator" => custom_routing_accelerator()
  }
  """
  @type describe_custom_routing_accelerator_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_accelerator_request() :: %{
    optional("Enabled") => boolean(),
    optional("IpAddressType") => list(any()),
    optional("Name") => String.t(),
    required("AcceleratorArn") => String.t()
  }
  """
  @type update_accelerator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  accelerator_attributes() :: %{
    "FlowLogsEnabled" => boolean(),
    "FlowLogsS3Bucket" => String.t(),
    "FlowLogsS3Prefix" => String.t()
  }
  """
  @type accelerator_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_accelerator_response() :: %{
    "Accelerator" => accelerator()
  }
  """
  @type create_accelerator_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_listener_response() :: %{
    "Listener" => listener()
  }
  """
  @type create_listener_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  custom_routing_destination_configuration() :: %{
    "FromPort" => integer(),
    "Protocols" => list(list(any())()),
    "ToPort" => integer()
  }
  """
  @type custom_routing_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_cross_account_attachments_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_cross_account_attachments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_custom_routing_accelerator_request() :: %{
    required("AcceleratorArn") => String.t()
  }
  """
  @type describe_custom_routing_accelerator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  deprovision_byoip_cidr_response() :: %{
    "ByoipCidr" => byoip_cidr()
  }
  """
  @type deprovision_byoip_cidr_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_response() :: %{

  }
  """
  @type untag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  listener() :: %{
    "ClientAffinity" => list(any()),
    "ListenerArn" => String.t(),
    "PortRanges" => list(port_range()()),
    "Protocol" => list(any())
  }
  """
  @type listener() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  endpoint_already_exists_exception() :: %{
    "Message" => String.t()
  }
  """
  @type endpoint_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_custom_routing_listener_response() :: %{
    "Listener" => custom_routing_listener()
  }
  """
  @type update_custom_routing_listener_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  socket_address() :: %{
    "IpAddress" => String.t(),
    "Port" => integer()
  }
  """
  @type socket_address() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  custom_routing_endpoint_group() :: %{
    "DestinationDescriptions" => list(custom_routing_destination_description()()),
    "EndpointDescriptions" => list(custom_routing_endpoint_description()()),
    "EndpointGroupArn" => String.t(),
    "EndpointGroupRegion" => String.t()
  }
  """
  @type custom_routing_endpoint_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_custom_routing_listener_response() :: %{
    "Listener" => custom_routing_listener()
  }
  """
  @type create_custom_routing_listener_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_custom_routing_endpoint_groups_response() :: %{
    "EndpointGroups" => list(custom_routing_endpoint_group()()),
    "NextToken" => String.t()
  }
  """
  @type list_custom_routing_endpoint_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_accelerator_attributes_response() :: %{
    "AcceleratorAttributes" => accelerator_attributes()
  }
  """
  @type describe_accelerator_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  byoip_cidr_not_found_exception() :: %{
    "Message" => String.t()
  }
  """
  @type byoip_cidr_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  custom_routing_destination_description() :: %{
    "FromPort" => integer(),
    "Protocols" => list(list(any())()),
    "ToPort" => integer()
  }
  """
  @type custom_routing_destination_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  attachment() :: %{
    "AttachmentArn" => String.t(),
    "CreatedTime" => non_neg_integer(),
    "LastModifiedTime" => non_neg_integer(),
    "Name" => String.t(),
    "Principals" => list(String.t()()),
    "Resources" => list(resource()())
  }
  """
  @type attachment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_custom_routing_port_mappings_response() :: %{
    "NextToken" => String.t(),
    "PortMappings" => list(port_mapping()())
  }
  """
  @type list_custom_routing_port_mappings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  provision_byoip_cidr_response() :: %{
    "ByoipCidr" => byoip_cidr()
  }
  """
  @type provision_byoip_cidr_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_custom_routing_listener_request() :: %{
    required("ListenerArn") => String.t()
  }
  """
  @type describe_custom_routing_listener_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  incorrect_cidr_state_exception() :: %{
    "Message" => String.t()
  }
  """
  @type incorrect_cidr_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_endpoint_group_request() :: %{
    required("EndpointGroupArn") => String.t()
  }
  """
  @type delete_endpoint_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  attachment_not_found_exception() :: %{
    "Message" => String.t()
  }
  """
  @type attachment_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_service_error_exception() :: %{
    "Message" => String.t()
  }
  """
  @type internal_service_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_accelerator_attributes_request() :: %{
    optional("FlowLogsEnabled") => boolean(),
    optional("FlowLogsS3Bucket") => String.t(),
    optional("FlowLogsS3Prefix") => String.t(),
    required("AcceleratorArn") => String.t()
  }
  """
  @type update_accelerator_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  endpoint_description() :: %{
    "ClientIPPreservationEnabled" => boolean(),
    "EndpointId" => String.t(),
    "HealthReason" => String.t(),
    "HealthState" => list(any()),
    "Weight" => integer()
  }
  """
  @type endpoint_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_cross_account_attachment_response() :: %{
    "CrossAccountAttachment" => attachment()
  }
  """
  @type describe_cross_account_attachment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_request() :: %{
    required("ResourceArn") => String.t(),
    required("TagKeys") => list(String.t()())
  }
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_custom_routing_listener_request() :: %{
    required("AcceleratorArn") => String.t(),
    required("IdempotencyToken") => String.t(),
    required("PortRanges") => list(port_range()())
  }
  """
  @type create_custom_routing_listener_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  accelerator_not_disabled_exception() :: %{
    "Message" => String.t()
  }
  """
  @type accelerator_not_disabled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  remove_custom_routing_endpoints_request() :: %{
    required("EndpointGroupArn") => String.t(),
    required("EndpointIds") => list(String.t()())
  }
  """
  @type remove_custom_routing_endpoints_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_accelerator_request() :: %{
    optional("Enabled") => boolean(),
    optional("IpAddressType") => list(any()),
    optional("IpAddresses") => list(String.t()()),
    optional("Tags") => list(tag()()),
    required("IdempotencyToken") => String.t(),
    required("Name") => String.t()
  }
  """
  @type create_accelerator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_cross_account_attachment_request() :: %{
    required("AttachmentArn") => String.t()
  }
  """
  @type describe_cross_account_attachment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_byoip_cidrs_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_byoip_cidrs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_custom_routing_listeners_response() :: %{
    "Listeners" => list(custom_routing_listener()()),
    "NextToken" => String.t()
  }
  """
  @type list_custom_routing_listeners_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_cross_account_attachment_request() :: %{
    optional("AddPrincipals") => list(String.t()()),
    optional("AddResources") => list(resource()()),
    optional("Name") => String.t(),
    optional("RemovePrincipals") => list(String.t()()),
    optional("RemoveResources") => list(resource()()),
    required("AttachmentArn") => String.t()
  }
  """
  @type update_cross_account_attachment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  endpoint_identifier() :: %{
    "ClientIPPreservationEnabled" => boolean(),
    "EndpointId" => String.t()
  }
  """
  @type endpoint_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_cross_account_attachment_response() :: %{
    "CrossAccountAttachment" => attachment()
  }
  """
  @type update_cross_account_attachment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  add_endpoints_request() :: %{
    required("EndpointConfigurations") => list(endpoint_configuration()()),
    required("EndpointGroupArn") => String.t()
  }
  """
  @type add_endpoints_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_cross_account_attachment_response() :: %{
    "CrossAccountAttachment" => attachment()
  }
  """
  @type create_cross_account_attachment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_custom_routing_port_mappings_by_destination_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("DestinationAddress") => String.t(),
    required("EndpointId") => String.t()
  }
  """
  @type list_custom_routing_port_mappings_by_destination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_accelerator_response() :: %{
    "Accelerator" => accelerator()
  }
  """
  @type describe_accelerator_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  port_override() :: %{
    "EndpointPort" => integer(),
    "ListenerPort" => integer()
  }
  """
  @type port_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_endpoint_group_response() :: %{
    "EndpointGroup" => endpoint_group()
  }
  """
  @type create_endpoint_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  conflict_exception() :: %{
    "Message" => String.t()
  }
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_listeners_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("AcceleratorArn") => String.t()
  }
  """
  @type list_listeners_request() :: %{String.t() => any()}

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
  advertise_byoip_cidr_request() :: %{
    required("Cidr") => String.t()
  }
  """
  @type advertise_byoip_cidr_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  remove_endpoints_request() :: %{
    required("EndpointGroupArn") => String.t(),
    required("EndpointIdentifiers") => list(endpoint_identifier()())
  }
  """
  @type remove_endpoints_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  accelerator_not_found_exception() :: %{
    "Message" => String.t()
  }
  """
  @type accelerator_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_custom_routing_accelerator_attributes_request() :: %{
    required("AcceleratorArn") => String.t()
  }
  """
  @type describe_custom_routing_accelerator_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_listener_response() :: %{
    "Listener" => listener()
  }
  """
  @type describe_listener_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_accelerators_response() :: %{
    "Accelerators" => list(accelerator()()),
    "NextToken" => String.t()
  }
  """
  @type list_accelerators_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cross_account_resource() :: %{
    "AttachmentArn" => String.t(),
    "EndpointId" => String.t()
  }
  """
  @type cross_account_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_next_token_exception() :: %{
    "Message" => String.t()
  }
  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_endpoint_group_request() :: %{
    required("EndpointGroupArn") => String.t()
  }
  """
  @type describe_endpoint_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_custom_routing_listener_request() :: %{
    required("ListenerArn") => String.t(),
    required("PortRanges") => list(port_range()())
  }
  """
  @type update_custom_routing_listener_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_listener_request() :: %{
    required("ListenerArn") => String.t()
  }
  """
  @type describe_listener_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_custom_routing_endpoint_group_response() :: %{
    "EndpointGroup" => custom_routing_endpoint_group()
  }
  """
  @type describe_custom_routing_endpoint_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_custom_routing_port_mappings_by_destination_response() :: %{
    "DestinationPortMappings" => list(destination_port_mapping()()),
    "NextToken" => String.t()
  }
  """
  @type list_custom_routing_port_mappings_by_destination_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  custom_routing_listener() :: %{
    "ListenerArn" => String.t(),
    "PortRanges" => list(port_range()())
  }
  """
  @type custom_routing_listener() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_cross_account_resources_request() :: %{
    optional("AcceleratorArn") => String.t(),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("ResourceOwnerAwsAccountId") => String.t()
  }
  """
  @type list_cross_account_resources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  ip_set() :: %{
    "IpAddressFamily" => list(any()),
    "IpAddresses" => list(String.t()()),
    "IpFamily" => String.t()
  }
  """
  @type ip_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_response() :: %{
    "Tags" => list(tag()())
  }
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  accelerator() :: %{
    "AcceleratorArn" => String.t(),
    "CreatedTime" => non_neg_integer(),
    "DnsName" => String.t(),
    "DualStackDnsName" => String.t(),
    "Enabled" => boolean(),
    "Events" => list(accelerator_event()()),
    "IpAddressType" => list(any()),
    "IpSets" => list(ip_set()()),
    "LastModifiedTime" => non_neg_integer(),
    "Name" => String.t(),
    "Status" => list(any())
  }
  """
  @type accelerator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  advertise_byoip_cidr_response() :: %{
    "ByoipCidr" => byoip_cidr()
  }
  """
  @type advertise_byoip_cidr_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  custom_routing_endpoint_configuration() :: %{
    "AttachmentArn" => String.t(),
    "EndpointId" => String.t()
  }
  """
  @type custom_routing_endpoint_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_port_range_exception() :: %{
    "Message" => String.t()
  }
  """
  @type invalid_port_range_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_custom_routing_accelerator_attributes_response() :: %{
    "AcceleratorAttributes" => custom_routing_accelerator_attributes()
  }
  """
  @type update_custom_routing_accelerator_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_custom_routing_accelerator_request() :: %{
    optional("Enabled") => boolean(),
    optional("IpAddressType") => list(any()),
    optional("IpAddresses") => list(String.t()()),
    optional("Tags") => list(tag()()),
    required("IdempotencyToken") => String.t(),
    required("Name") => String.t()
  }
  """
  @type create_custom_routing_accelerator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_listeners_response() :: %{
    "Listeners" => list(listener()()),
    "NextToken" => String.t()
  }
  """
  @type list_listeners_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  withdraw_byoip_cidr_response() :: %{
    "ByoipCidr" => byoip_cidr()
  }
  """
  @type withdraw_byoip_cidr_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  allow_custom_routing_traffic_request() :: %{
    optional("AllowAllTrafficToEndpoint") => boolean(),
    optional("DestinationAddresses") => list(String.t()()),
    optional("DestinationPorts") => list(integer()()),
    required("EndpointGroupArn") => String.t(),
    required("EndpointId") => String.t()
  }
  """
  @type allow_custom_routing_traffic_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  deny_custom_routing_traffic_request() :: %{
    optional("DenyAllTrafficToEndpoint") => boolean(),
    optional("DestinationAddresses") => list(String.t()()),
    optional("DestinationPorts") => list(integer()()),
    required("EndpointGroupArn") => String.t(),
    required("EndpointId") => String.t()
  }
  """
  @type deny_custom_routing_traffic_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_custom_routing_listeners_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("AcceleratorArn") => String.t()
  }
  """
  @type list_custom_routing_listeners_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_endpoint_group_response() :: %{
    "EndpointGroup" => endpoint_group()
  }
  """
  @type describe_endpoint_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_cross_account_attachment_request() :: %{
    optional("Principals") => list(String.t()()),
    optional("Resources") => list(resource()()),
    optional("Tags") => list(tag()()),
    required("IdempotencyToken") => String.t(),
    required("Name") => String.t()
  }
  """
  @type create_cross_account_attachment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_accelerator_response() :: %{
    "Accelerator" => accelerator()
  }
  """
  @type update_accelerator_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_cross_account_resources_response() :: %{
    "CrossAccountResources" => list(cross_account_resource()()),
    "NextToken" => String.t()
  }
  """
  @type list_cross_account_resources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  associated_listener_found_exception() :: %{
    "Message" => String.t()
  }
  """
  @type associated_listener_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  endpoint_not_found_exception() :: %{
    "Message" => String.t()
  }
  """
  @type endpoint_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  port_range() :: %{
    "FromPort" => integer(),
    "ToPort" => integer()
  }
  """
  @type port_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_custom_routing_port_mappings_request() :: %{
    optional("EndpointGroupArn") => String.t(),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("AcceleratorArn") => String.t()
  }
  """
  @type list_custom_routing_port_mappings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  add_endpoints_response() :: %{
    "EndpointDescriptions" => list(endpoint_description()()),
    "EndpointGroupArn" => String.t()
  }
  """
  @type add_endpoints_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_custom_routing_listener_request() :: %{
    required("ListenerArn") => String.t()
  }
  """
  @type delete_custom_routing_listener_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  byoip_cidr_event() :: %{
    "Message" => String.t(),
    "Timestamp" => non_neg_integer()
  }
  """
  @type byoip_cidr_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  associated_endpoint_group_found_exception() :: %{
    "Message" => String.t()
  }
  """
  @type associated_endpoint_group_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_endpoint_group_request() :: %{
    optional("EndpointConfigurations") => list(endpoint_configuration()()),
    optional("HealthCheckIntervalSeconds") => integer(),
    optional("HealthCheckPath") => String.t(),
    optional("HealthCheckPort") => integer(),
    optional("HealthCheckProtocol") => list(any()),
    optional("PortOverrides") => list(port_override()()),
    optional("ThresholdCount") => integer(),
    optional("TrafficDialPercentage") => float(),
    required("EndpointGroupArn") => String.t()
  }
  """
  @type update_endpoint_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_custom_routing_accelerator_request() :: %{
    optional("Enabled") => boolean(),
    optional("IpAddressType") => list(any()),
    optional("Name") => String.t(),
    required("AcceleratorArn") => String.t()
  }
  """
  @type update_custom_routing_accelerator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_custom_routing_endpoint_group_request() :: %{
    required("EndpointGroupArn") => String.t()
  }
  """
  @type describe_custom_routing_endpoint_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_endpoint_groups_response() :: %{
    "EndpointGroups" => list(endpoint_group()()),
    "NextToken" => String.t()
  }
  """
  @type list_endpoint_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_cross_account_attachment_request() :: %{
    required("AttachmentArn") => String.t()
  }
  """
  @type delete_cross_account_attachment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  access_denied_exception() :: %{
    "Message" => String.t()
  }
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_listener_request() :: %{
    optional("ClientAffinity") => list(any()),
    optional("PortRanges") => list(port_range()()),
    optional("Protocol") => list(any()),
    required("ListenerArn") => String.t()
  }
  """
  @type update_listener_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_listener_response() :: %{
    "Listener" => listener()
  }
  """
  @type update_listener_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_response() :: %{

  }
  """
  @type tag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  custom_routing_accelerator_attributes() :: %{
    "FlowLogsEnabled" => boolean(),
    "FlowLogsS3Bucket" => String.t(),
    "FlowLogsS3Prefix" => String.t()
  }
  """
  @type custom_routing_accelerator_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_argument_exception() :: %{
    "Message" => String.t()
  }
  """
  @type invalid_argument_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cidr_authorization_context() :: %{
    "Message" => String.t(),
    "Signature" => String.t()
  }
  """
  @type cidr_authorization_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  port_mapping() :: %{
    "AcceleratorPort" => integer(),
    "DestinationSocketAddress" => socket_address(),
    "DestinationTrafficState" => list(any()),
    "EndpointGroupArn" => String.t(),
    "EndpointId" => String.t(),
    "Protocols" => list(list(any())())
  }
  """
  @type port_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_custom_routing_accelerator_response() :: %{
    "Accelerator" => custom_routing_accelerator()
  }
  """
  @type update_custom_routing_accelerator_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_request() :: %{
    required("ResourceArn") => String.t()
  }
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  add_custom_routing_endpoints_request() :: %{
    required("EndpointConfigurations") => list(custom_routing_endpoint_configuration()()),
    required("EndpointGroupArn") => String.t()
  }
  """
  @type add_custom_routing_endpoints_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_byoip_cidrs_response() :: %{
    "ByoipCidrs" => list(byoip_cidr()()),
    "NextToken" => String.t()
  }
  """
  @type list_byoip_cidrs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  transaction_in_progress_exception() :: %{
    "Message" => String.t()
  }
  """
  @type transaction_in_progress_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_accelerator_request() :: %{
    required("AcceleratorArn") => String.t()
  }
  """
  @type delete_accelerator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_endpoint_groups_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("ListenerArn") => String.t()
  }
  """
  @type list_endpoint_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  withdraw_byoip_cidr_request() :: %{
    required("Cidr") => String.t()
  }
  """
  @type withdraw_byoip_cidr_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  limit_exceeded_exception() :: %{
    "Message" => String.t()
  }
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  endpoint_group_already_exists_exception() :: %{
    "Message" => String.t()
  }
  """
  @type endpoint_group_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_accelerators_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_accelerators_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_custom_routing_accelerator_request() :: %{
    required("AcceleratorArn") => String.t()
  }
  """
  @type delete_custom_routing_accelerator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_custom_routing_accelerators_response() :: %{
    "Accelerators" => list(custom_routing_accelerator()()),
    "NextToken" => String.t()
  }
  """
  @type list_custom_routing_accelerators_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  custom_routing_accelerator() :: %{
    "AcceleratorArn" => String.t(),
    "CreatedTime" => non_neg_integer(),
    "DnsName" => String.t(),
    "Enabled" => boolean(),
    "IpAddressType" => list(any()),
    "IpSets" => list(ip_set()()),
    "LastModifiedTime" => non_neg_integer(),
    "Name" => String.t(),
    "Status" => list(any())
  }
  """
  @type custom_routing_accelerator() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_custom_routing_accelerator_attributes_request() :: %{
    optional("FlowLogsEnabled") => boolean(),
    optional("FlowLogsS3Bucket") => String.t(),
    optional("FlowLogsS3Prefix") => String.t(),
    required("AcceleratorArn") => String.t()
  }
  """
  @type update_custom_routing_accelerator_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_accelerator_request() :: %{
    required("AcceleratorArn") => String.t()
  }
  """
  @type describe_accelerator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  add_custom_routing_endpoints_response() :: %{
    "EndpointDescriptions" => list(custom_routing_endpoint_description()()),
    "EndpointGroupArn" => String.t()
  }
  """
  @type add_custom_routing_endpoints_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_custom_routing_endpoint_groups_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("ListenerArn") => String.t()
  }
  """
  @type list_custom_routing_endpoint_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  listener_not_found_exception() :: %{
    "Message" => String.t()
  }
  """
  @type listener_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  destination_port_mapping() :: %{
    "AcceleratorArn" => String.t(),
    "AcceleratorSocketAddresses" => list(socket_address()()),
    "DestinationSocketAddress" => socket_address(),
    "DestinationTrafficState" => list(any()),
    "EndpointGroupArn" => String.t(),
    "EndpointGroupRegion" => String.t(),
    "EndpointId" => String.t(),
    "IpAddressType" => list(any())
  }
  """
  @type destination_port_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_cross_account_resource_accounts_response() :: %{
    "ResourceOwnerAwsAccountIds" => list(String.t()())
  }
  """
  @type list_cross_account_resource_accounts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_listener_request() :: %{
    required("ListenerArn") => String.t()
  }
  """
  @type delete_listener_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  accelerator_event() :: %{
    "Message" => String.t(),
    "Timestamp" => non_neg_integer()
  }
  """
  @type accelerator_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  endpoint_group_not_found_exception() :: %{
    "Message" => String.t()
  }
  """
  @type endpoint_group_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_endpoint_group_response() :: %{
    "EndpointGroup" => endpoint_group()
  }
  """
  @type update_endpoint_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_custom_routing_accelerator_attributes_response() :: %{
    "AcceleratorAttributes" => custom_routing_accelerator_attributes()
  }
  """
  @type describe_custom_routing_accelerator_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_custom_routing_endpoint_group_request() :: %{
    required("DestinationConfigurations") => list(custom_routing_destination_configuration()()),
    required("EndpointGroupRegion") => String.t(),
    required("IdempotencyToken") => String.t(),
    required("ListenerArn") => String.t()
  }
  """
  @type create_custom_routing_endpoint_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  endpoint_group() :: %{
    "EndpointDescriptions" => list(endpoint_description()()),
    "EndpointGroupArn" => String.t(),
    "EndpointGroupRegion" => String.t(),
    "HealthCheckIntervalSeconds" => integer(),
    "HealthCheckPath" => String.t(),
    "HealthCheckPort" => integer(),
    "HealthCheckProtocol" => list(any()),
    "PortOverrides" => list(port_override()()),
    "ThresholdCount" => integer(),
    "TrafficDialPercentage" => float()
  }
  """
  @type endpoint_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  deprovision_byoip_cidr_request() :: %{
    required("Cidr") => String.t()
  }
  """
  @type deprovision_byoip_cidr_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  custom_routing_endpoint_description() :: %{
    "EndpointId" => String.t()
  }
  """
  @type custom_routing_endpoint_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_custom_routing_accelerators_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_custom_routing_accelerators_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_custom_routing_endpoint_group_request() :: %{
    required("EndpointGroupArn") => String.t()
  }
  """
  @type delete_custom_routing_endpoint_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_custom_routing_accelerator_response() :: %{
    "Accelerator" => custom_routing_accelerator()
  }
  """
  @type create_custom_routing_accelerator_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  describe_custom_routing_listener_response() :: %{
    "Listener" => custom_routing_listener()
  }
  """
  @type describe_custom_routing_listener_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_listener_request() :: %{
    optional("ClientAffinity") => list(any()),
    required("AcceleratorArn") => String.t(),
    required("IdempotencyToken") => String.t(),
    required("PortRanges") => list(port_range()()),
    required("Protocol") => list(any())
  }
  """
  @type create_listener_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  provision_byoip_cidr_request() :: %{
    required("Cidr") => String.t(),
    required("CidrAuthorizationContext") => cidr_authorization_context()
  }
  """
  @type provision_byoip_cidr_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource() :: %{
    "EndpointId" => String.t(),
    "Region" => String.t()
  }
  """
  @type resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_endpoint_group_request() :: %{
    optional("EndpointConfigurations") => list(endpoint_configuration()()),
    optional("HealthCheckIntervalSeconds") => integer(),
    optional("HealthCheckPath") => String.t(),
    optional("HealthCheckPort") => integer(),
    optional("HealthCheckProtocol") => list(any()),
    optional("PortOverrides") => list(port_override()()),
    optional("ThresholdCount") => integer(),
    optional("TrafficDialPercentage") => float(),
    required("EndpointGroupRegion") => String.t(),
    required("IdempotencyToken") => String.t(),
    required("ListenerArn") => String.t()
  }
  """
  @type create_endpoint_group_request() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2018-08-08",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "globalaccelerator",
      global?: false,
      protocol: "json",
      service_id: "Global Accelerator",
      signature_version: "v4",
      signing_name: "globalaccelerator",
      target_prefix: "GlobalAccelerator_V20180706"
    }
  end

  @doc """
  Associate a virtual private cloud (VPC) subnet endpoint with your custom routing
  accelerator.

  The listener port range must be large enough to support the number of IP
  addresses that can be
  specified in your subnet. The number of ports required is: subnet size times the
  number
  of ports per destination EC2 instances. For example, a subnet defined as /24
  requires a listener
  port range of at least 255 ports.

  Note: You must have enough remaining listener ports available to
  map to the subnet ports, or the call will fail with a LimitExceededException.

  By default, all destinations in a subnet in a custom routing accelerator cannot
  receive traffic. To enable all
  destinations to receive traffic, or to specify individual port mappings that can
  receive
  traffic, see the [
  AllowCustomRoutingTraffic](https://docs.aws.amazon.com/global-accelerator/latest/api/API_AllowCustomRoutingTraffic.html)
  operation.
  """
  @spec add_custom_routing_endpoints(map(), add_custom_routing_endpoints_request(), list()) ::
          {:ok, add_custom_routing_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, endpoint_already_exists_exception()}
          | {:error, endpoint_group_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, limit_exceeded_exception()}
  def add_custom_routing_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddCustomRoutingEndpoints", input, options)
  end

  @doc """
  Add endpoints to an endpoint group.

  The `AddEndpoints` API operation is the recommended option for adding endpoints.
  The
  alternative options are to add endpoints when you create an endpoint group (with
  the
  [CreateEndpointGroup](https://docs.aws.amazon.com/global-accelerator/latest/api/API_CreateEndpointGroup.html) API)
  or when you update an endpoint group (with the
  [UpdateEndpointGroup](https://docs.aws.amazon.com/global-accelerator/latest/api/API_UpdateEndpointGroup.html)
  API).

  There are two advantages to using `AddEndpoints` to add endpoints in Global
  Accelerator:

    *
  It's faster, because Global Accelerator only has to resolve the new endpoints
  that
  you're adding, rather than resolving new and existing endpoints.

    *
  It's more convenient, because you don't need to specify the current
  endpoints that are already in the endpoint group, in addition to the new
  endpoints that
  you want to add.

  For information about endpoint types and requirements for endpoints that you can
  add
  to Global Accelerator, see [
  Endpoints for standard
  accelerators](https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoints.html)
  in the *Global Accelerator Developer Guide*.
  """
  @spec add_endpoints(map(), add_endpoints_request(), list()) ::
          {:ok, add_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, endpoint_group_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, transaction_in_progress_exception()}
  def add_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddEndpoints", input, options)
  end

  @doc """
  Advertises an IPv4 address range that is provisioned for use with your Amazon
  Web Services resources
  through bring your own IP addresses (BYOIP).

  It can take a few minutes before traffic to
  the specified addresses starts routing to Amazon Web Services because of
  propagation delays.

  To stop advertising the BYOIP address range, use [
  WithdrawByoipCidr](https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html).

  For more information, see [Bring your own IP addresses
  (BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html)
  in the *Global Accelerator Developer Guide*.
  """
  @spec advertise_byoip_cidr(map(), advertise_byoip_cidr_request(), list()) ::
          {:ok, advertise_byoip_cidr_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, byoip_cidr_not_found_exception()}
          | {:error, incorrect_cidr_state_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
  def advertise_byoip_cidr(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AdvertiseByoipCidr", input, options)
  end

  @doc """
  Specify the Amazon EC2 instance (destination) IP addresses and ports for a VPC
  subnet endpoint that can receive traffic
  for a custom routing accelerator.

  You can allow traffic to all destinations in the subnet endpoint, or allow
  traffic to a
  specified list of destination IP addresses and ports in the subnet. Note that
  you cannot specify IP addresses or ports
  outside of the range that you configured for the endpoint group.

  After you make changes, you can verify that the updates are complete by checking
  the status of your
  accelerator: the status changes from IN_PROGRESS to DEPLOYED.
  """
  @spec allow_custom_routing_traffic(map(), allow_custom_routing_traffic_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, endpoint_group_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
  def allow_custom_routing_traffic(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AllowCustomRoutingTraffic", input, options)
  end

  @doc """
  Create an accelerator.

  An accelerator includes one or more listeners that process inbound connections
  and direct traffic
  to one or more endpoint groups, each of which includes endpoints, such as
  Network Load Balancers.

  Global Accelerator is a global service that supports endpoints in multiple
  Amazon Web Services Regions but you must specify the
  US West (Oregon) Region to create, update, or otherwise work with accelerators.
  That is, for example, specify `--region us-west-2`
  on Amazon Web Services CLI commands.
  """
  @spec create_accelerator(map(), create_accelerator_request(), list()) ::
          {:ok, create_accelerator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, limit_exceeded_exception()}
  def create_accelerator(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAccelerator", input, options)
  end

  @doc """
  Create a cross-account attachment in Global Accelerator.

  You create a cross-account attachment to
  specify the *principals* who have permission to add to accelerators in their own
  account the resources in your account that you also list in the attachment.

  A principal can be an Amazon Web Services account number or the Amazon Resource
  Name (ARN) for an
  accelerator. For account numbers that are listed as principals, to add a
  resource listed in the attachment to an accelerator,
  you must sign in to an account specified as a principal. Then you can add the
  resources that are listed
  to any of your accelerators. If an accelerator ARN is listed in the
  cross-account attachment as a principal,
  anyone with permission to make updates to the accelerator can add as endpoints
  resources that are listed in the
  attachment.
  """
  @spec create_cross_account_attachment(map(), create_cross_account_attachment_request(), list()) ::
          {:ok, create_cross_account_attachment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, transaction_in_progress_exception()}
  def create_cross_account_attachment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCrossAccountAttachment", input, options)
  end

  @doc """
  Create a custom routing accelerator.

  A custom routing accelerator directs traffic to one of possibly thousands
  of Amazon EC2 instance destinations running in a single or multiple virtual
  private clouds (VPC) subnet endpoints.

  Be aware that, by default, all destination EC2 instances in a VPC subnet
  endpoint cannot receive
  traffic. To enable all destinations to receive traffic, or to specify individual
  port
  mappings that can receive traffic, see the [
  AllowCustomRoutingTraffic](https://docs.aws.amazon.com/global-accelerator/latest/api/API_AllowCustomRoutingTraffic.html)
  operation.

  Global Accelerator is a global service that supports endpoints in multiple
  Amazon Web Services Regions but you must specify the
  US West (Oregon) Region to create, update, or otherwise work with accelerators.
  That is, for example, specify `--region us-west-2`
  on Amazon Web Services CLI commands.
  """
  @spec create_custom_routing_accelerator(
          map(),
          create_custom_routing_accelerator_request(),
          list()
        ) ::
          {:ok, create_custom_routing_accelerator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, limit_exceeded_exception()}
  def create_custom_routing_accelerator(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCustomRoutingAccelerator", input, options)
  end

  @doc """
  Create an endpoint group for the specified listener for a custom routing
  accelerator.

  An endpoint group is a collection of endpoints in one Amazon Web Services
  Region.
  """
  @spec create_custom_routing_endpoint_group(
          map(),
          create_custom_routing_endpoint_group_request(),
          list()
        ) ::
          {:ok, create_custom_routing_endpoint_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accelerator_not_found_exception()}
          | {:error, access_denied_exception()}
          | {:error, endpoint_group_already_exists_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, invalid_port_range_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, listener_not_found_exception()}
  def create_custom_routing_endpoint_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCustomRoutingEndpointGroup", input, options)
  end

  @doc """
  Create a listener to process inbound connections from clients to a custom
  routing accelerator.

  Connections arrive to assigned static IP addresses on the port range that you
  specify.
  """
  @spec create_custom_routing_listener(map(), create_custom_routing_listener_request(), list()) ::
          {:ok, create_custom_routing_listener_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accelerator_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, invalid_port_range_exception()}
          | {:error, limit_exceeded_exception()}
  def create_custom_routing_listener(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCustomRoutingListener", input, options)
  end

  @doc """
  Create an endpoint group for the specified listener.

  An endpoint group is a collection of endpoints in one Amazon Web Services
  Region. A resource must be valid and active when you add it as an endpoint.

  For more information about endpoint types and requirements for endpoints that
  you can add
  to Global Accelerator, see [
  Endpoints for standard
  accelerators](https://docs.aws.amazon.com/global-accelerator/latest/dg/about-endpoints.html)
  in the *Global Accelerator Developer Guide*.
  """
  @spec create_endpoint_group(map(), create_endpoint_group_request(), list()) ::
          {:ok, create_endpoint_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accelerator_not_found_exception()}
          | {:error, access_denied_exception()}
          | {:error, endpoint_group_already_exists_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, listener_not_found_exception()}
  def create_endpoint_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEndpointGroup", input, options)
  end

  @doc """
  Create a listener to process inbound connections from clients to an accelerator.

  Connections arrive to assigned static
  IP addresses on a port, port range, or list of port ranges that you specify.
  """
  @spec create_listener(map(), create_listener_request(), list()) ::
          {:ok, create_listener_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accelerator_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, invalid_port_range_exception()}
          | {:error, limit_exceeded_exception()}
  def create_listener(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateListener", input, options)
  end

  @doc """
  Delete an accelerator.

  Before you can delete an accelerator, you must disable it and remove all
  dependent resources
  (listeners and endpoint groups). To disable the accelerator, update the
  accelerator to set `Enabled` to false.

  When you create an accelerator, by default, Global Accelerator provides you with
  a set of two static IP addresses.
  Alternatively, you can bring your own IP address ranges to Global Accelerator
  and assign IP addresses from those ranges.

  The IP addresses are assigned to your accelerator for as long as it exists, even
  if you disable the accelerator and
  it no longer accepts or routes traffic. However, when you *delete* an
  accelerator, you lose the
  static IP addresses that are assigned to the accelerator, so you can no longer
  route traffic by using them.
  As a best practice, ensure that you have permissions in place to avoid
  inadvertently deleting accelerators. You
  can use IAM policies with Global Accelerator to limit the users who have
  permissions to delete an accelerator. For more information,
  see [Identity and access management](https://docs.aws.amazon.com/global-accelerator/latest/dg/auth-and-access-control.html)
  in
  the *Global Accelerator Developer Guide*.
  """
  @spec delete_accelerator(map(), delete_accelerator_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accelerator_not_disabled_exception()}
          | {:error, accelerator_not_found_exception()}
          | {:error, associated_listener_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
  def delete_accelerator(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAccelerator", input, options)
  end

  @doc """
  Delete a cross-account attachment.

  When you delete an attachment, Global Accelerator revokes the permission
  to use the resources in the attachment from all principals in the list of
  principals. Global Accelerator
  revokes the permission for specific resources by doing the following:

    *
  If the principal is an account ID, Global Accelerator reviews every accelerator
  in the account
  and removes cross-account endpoints from all accelerators.

    *
  If the principal is an accelerator, Global Accelerator reviews just that
  accelerator
  and removes cross-account endpoints from it.

  If there are overlapping permissions provided by multiple cross-account
  attachments,
  Global Accelerator only removes endpoints if there are no current cross-account
  attachments that provide
  access permission. For example, if you delete a cross-account attachment that
  lists an
  accelerator as a principal, but another cross-account attachment includes the
  account ID
  that owns that accelerator, endpoints will not be removed from the accelerator.
  """
  @spec delete_cross_account_attachment(map(), delete_cross_account_attachment_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, attachment_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, transaction_in_progress_exception()}
  def delete_cross_account_attachment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCrossAccountAttachment", input, options)
  end

  @doc """
  Delete a custom routing accelerator.

  Before you can delete an accelerator, you must disable it and remove all
  dependent resources
  (listeners and endpoint groups). To disable the accelerator, update the
  accelerator to set `Enabled` to false.

  When you create a custom routing accelerator, by default, Global Accelerator
  provides you with a set of two static IP addresses.

  The IP
  addresses are assigned to your accelerator for as long as it exists, even if you
  disable the accelerator and
  it no longer accepts or routes traffic. However, when you *delete* an
  accelerator, you lose the
  static IP addresses that are assigned to the accelerator, so you can no longer
  route traffic by using them.
  As a best practice, ensure that you have permissions in place to avoid
  inadvertently deleting accelerators. You
  can use IAM policies with Global Accelerator to limit the users who have
  permissions to delete an accelerator. For more information,
  see [Identity and access management](https://docs.aws.amazon.com/global-accelerator/latest/dg/auth-and-access-control.html)
  in
  the *Global Accelerator Developer Guide*.
  """
  @spec delete_custom_routing_accelerator(
          map(),
          delete_custom_routing_accelerator_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accelerator_not_disabled_exception()}
          | {:error, accelerator_not_found_exception()}
          | {:error, associated_listener_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
  def delete_custom_routing_accelerator(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCustomRoutingAccelerator", input, options)
  end

  @doc """
  Delete an endpoint group from a listener for a custom routing accelerator.
  """
  @spec delete_custom_routing_endpoint_group(
          map(),
          delete_custom_routing_endpoint_group_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, endpoint_group_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
  def delete_custom_routing_endpoint_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCustomRoutingEndpointGroup", input, options)
  end

  @doc """
  Delete a listener for a custom routing accelerator.
  """
  @spec delete_custom_routing_listener(map(), delete_custom_routing_listener_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associated_endpoint_group_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, listener_not_found_exception()}
  def delete_custom_routing_listener(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCustomRoutingListener", input, options)
  end

  @doc """
  Delete an endpoint group from a listener.
  """
  @spec delete_endpoint_group(map(), delete_endpoint_group_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, endpoint_group_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
  def delete_endpoint_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEndpointGroup", input, options)
  end

  @doc """
  Delete a listener from an accelerator.
  """
  @spec delete_listener(map(), delete_listener_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associated_endpoint_group_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, listener_not_found_exception()}
  def delete_listener(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteListener", input, options)
  end

  @doc """
  Specify the Amazon EC2 instance (destination) IP addresses and ports for a VPC
  subnet endpoint that cannot receive traffic
  for a custom routing accelerator.

  You can deny traffic to all destinations in the VPC endpoint, or deny traffic to
  a
  specified list of destination IP addresses and ports. Note that you cannot
  specify IP addresses
  or ports outside of the range that you configured for the endpoint group.

  After you make changes, you can verify that the updates are complete by checking
  the status of your
  accelerator: the status changes from IN_PROGRESS to DEPLOYED.
  """
  @spec deny_custom_routing_traffic(map(), deny_custom_routing_traffic_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, endpoint_group_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
  def deny_custom_routing_traffic(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DenyCustomRoutingTraffic", input, options)
  end

  @doc """
  Releases the specified address range that you provisioned to use with your
  Amazon Web Services resources
  through bring your own IP addresses (BYOIP) and deletes the corresponding
  address pool.

  Before you can release an address range, you must stop advertising it by using
  [WithdrawByoipCidr](https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html) and you must not have
  any accelerators that are using static IP addresses allocated from its address
  range.

  For more information, see [Bring
  your own IP addresses
  (BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html)
  in the *Global Accelerator Developer Guide*.
  """
  @spec deprovision_byoip_cidr(map(), deprovision_byoip_cidr_request(), list()) ::
          {:ok, deprovision_byoip_cidr_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, byoip_cidr_not_found_exception()}
          | {:error, incorrect_cidr_state_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
  def deprovision_byoip_cidr(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeprovisionByoipCidr", input, options)
  end

  @doc """
  Describe an accelerator.
  """
  @spec describe_accelerator(map(), describe_accelerator_request(), list()) ::
          {:ok, describe_accelerator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accelerator_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
  def describe_accelerator(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAccelerator", input, options)
  end

  @doc """
  Describe the attributes of an accelerator.
  """
  @spec describe_accelerator_attributes(map(), describe_accelerator_attributes_request(), list()) ::
          {:ok, describe_accelerator_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accelerator_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
  def describe_accelerator_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAcceleratorAttributes", input, options)
  end

  @doc """
  Gets configuration information about a cross-account attachment.
  """
  @spec describe_cross_account_attachment(
          map(),
          describe_cross_account_attachment_request(),
          list()
        ) ::
          {:ok, describe_cross_account_attachment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, attachment_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
  def describe_cross_account_attachment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCrossAccountAttachment", input, options)
  end

  @doc """
  Describe a custom routing accelerator.
  """
  @spec describe_custom_routing_accelerator(
          map(),
          describe_custom_routing_accelerator_request(),
          list()
        ) ::
          {:ok, describe_custom_routing_accelerator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accelerator_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
  def describe_custom_routing_accelerator(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCustomRoutingAccelerator", input, options)
  end

  @doc """
  Describe the attributes of a custom routing accelerator.
  """
  @spec describe_custom_routing_accelerator_attributes(
          map(),
          describe_custom_routing_accelerator_attributes_request(),
          list()
        ) ::
          {:ok, describe_custom_routing_accelerator_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accelerator_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
  def describe_custom_routing_accelerator_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DescribeCustomRoutingAcceleratorAttributes",
      input,
      options
    )
  end

  @doc """
  Describe an endpoint group for a custom routing accelerator.
  """
  @spec describe_custom_routing_endpoint_group(
          map(),
          describe_custom_routing_endpoint_group_request(),
          list()
        ) ::
          {:ok, describe_custom_routing_endpoint_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, endpoint_group_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
  def describe_custom_routing_endpoint_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCustomRoutingEndpointGroup", input, options)
  end

  @doc """
  The description of a listener for a custom routing accelerator.
  """
  @spec describe_custom_routing_listener(
          map(),
          describe_custom_routing_listener_request(),
          list()
        ) ::
          {:ok, describe_custom_routing_listener_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, listener_not_found_exception()}
  def describe_custom_routing_listener(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCustomRoutingListener", input, options)
  end

  @doc """
  Describe an endpoint group.
  """
  @spec describe_endpoint_group(map(), describe_endpoint_group_request(), list()) ::
          {:ok, describe_endpoint_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, endpoint_group_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
  def describe_endpoint_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEndpointGroup", input, options)
  end

  @doc """
  Describe a listener.
  """
  @spec describe_listener(map(), describe_listener_request(), list()) ::
          {:ok, describe_listener_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, listener_not_found_exception()}
  def describe_listener(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeListener", input, options)
  end

  @doc """
  List the accelerators for an Amazon Web Services account.
  """
  @spec list_accelerators(map(), list_accelerators_request(), list()) ::
          {:ok, list_accelerators_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, invalid_next_token_exception()}
  def list_accelerators(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAccelerators", input, options)
  end

  @doc """
  Lists the IP address ranges that were specified in calls to
  [ProvisionByoipCidr](https://docs.aws.amazon.com/global-accelerator/latest/api/ProvisionByoipCidr.html),
  including
  the current state and a history of state changes.
  """
  @spec list_byoip_cidrs(map(), list_byoip_cidrs_request(), list()) ::
          {:ok, list_byoip_cidrs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, invalid_next_token_exception()}
  def list_byoip_cidrs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListByoipCidrs", input, options)
  end

  @doc """
  List the cross-account attachments that have been created in Global Accelerator.
  """
  @spec list_cross_account_attachments(map(), list_cross_account_attachments_request(), list()) ::
          {:ok, list_cross_account_attachments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, invalid_next_token_exception()}
  def list_cross_account_attachments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCrossAccountAttachments", input, options)
  end

  @doc """
  List the accounts that have cross-account endpoints.
  """
  @spec list_cross_account_resource_accounts(
          map(),
          list_cross_account_resource_accounts_request(),
          list()
        ) ::
          {:ok, list_cross_account_resource_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_service_error_exception()}
  def list_cross_account_resource_accounts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCrossAccountResourceAccounts", input, options)
  end

  @doc """
  List the cross-account endpoints available to add to an accelerator.
  """
  @spec list_cross_account_resources(map(), list_cross_account_resources_request(), list()) ::
          {:ok, list_cross_account_resources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accelerator_not_found_exception()}
          | {:error, access_denied_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, invalid_next_token_exception()}
  def list_cross_account_resources(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCrossAccountResources", input, options)
  end

  @doc """
  List the custom routing accelerators for an Amazon Web Services account.
  """
  @spec list_custom_routing_accelerators(
          map(),
          list_custom_routing_accelerators_request(),
          list()
        ) ::
          {:ok, list_custom_routing_accelerators_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, invalid_next_token_exception()}
  def list_custom_routing_accelerators(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCustomRoutingAccelerators", input, options)
  end

  @doc """
  List the endpoint groups that are associated with a listener for a custom
  routing accelerator.
  """
  @spec list_custom_routing_endpoint_groups(
          map(),
          list_custom_routing_endpoint_groups_request(),
          list()
        ) ::
          {:ok, list_custom_routing_endpoint_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, invalid_next_token_exception()}
          | {:error, listener_not_found_exception()}
  def list_custom_routing_endpoint_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCustomRoutingEndpointGroups", input, options)
  end

  @doc """
  List the listeners for a custom routing accelerator.
  """
  @spec list_custom_routing_listeners(map(), list_custom_routing_listeners_request(), list()) ::
          {:ok, list_custom_routing_listeners_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accelerator_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, invalid_next_token_exception()}
  def list_custom_routing_listeners(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCustomRoutingListeners", input, options)
  end

  @doc """
  Provides a complete mapping from the public accelerator IP address and port to
  destination EC2 instance
  IP addresses and ports in the virtual public cloud (VPC) subnet endpoint for a
  custom routing accelerator.

  For each subnet endpoint that you add, Global Accelerator creates a new static
  port mapping for the accelerator. The port
  mappings don't change after Global Accelerator generates them, so you can
  retrieve and cache the full mapping on your servers.

  If you remove a subnet from your accelerator, Global Accelerator removes
  (reclaims) the port mappings. If you add a subnet to
  your accelerator, Global Accelerator creates new port mappings (the existing
  ones don't change). If you add or remove EC2 instances
  in your subnet, the port mappings don't change, because the mappings are created
  when you add the subnet to Global Accelerator.

  The mappings also include a flag for each destination denoting which destination
  IP addresses and
  ports are allowed or denied traffic.
  """
  @spec list_custom_routing_port_mappings(
          map(),
          list_custom_routing_port_mappings_request(),
          list()
        ) ::
          {:ok, list_custom_routing_port_mappings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accelerator_not_found_exception()}
          | {:error, endpoint_group_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, invalid_next_token_exception()}
  def list_custom_routing_port_mappings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCustomRoutingPortMappings", input, options)
  end

  @doc """
  List the port mappings for a specific EC2 instance (destination) in a VPC subnet
  endpoint.

  The
  response is the mappings for one destination IP address. This is useful when
  your subnet endpoint has mappings that
  span multiple custom routing accelerators in your account, or for scenarios
  where you only want to
  list the port mappings for a specific destination instance.
  """
  @spec list_custom_routing_port_mappings_by_destination(
          map(),
          list_custom_routing_port_mappings_by_destination_request(),
          list()
        ) ::
          {:ok, list_custom_routing_port_mappings_by_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, endpoint_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, invalid_next_token_exception()}
  def list_custom_routing_port_mappings_by_destination(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "ListCustomRoutingPortMappingsByDestination",
      input,
      options
    )
  end

  @doc """
  List the endpoint groups that are associated with a listener.
  """
  @spec list_endpoint_groups(map(), list_endpoint_groups_request(), list()) ::
          {:ok, list_endpoint_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, invalid_next_token_exception()}
          | {:error, listener_not_found_exception()}
  def list_endpoint_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEndpointGroups", input, options)
  end

  @doc """
  List the listeners for an accelerator.
  """
  @spec list_listeners(map(), list_listeners_request(), list()) ::
          {:ok, list_listeners_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accelerator_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, invalid_next_token_exception()}
  def list_listeners(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListListeners", input, options)
  end

  @doc """
  List all tags for an accelerator.

  For more information, see [Tagging in Global
  Accelerator](https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html)
  in the *Global Accelerator Developer Guide*.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accelerator_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Provisions an IP address range to use with your Amazon Web Services resources
  through bring your own IP
  addresses (BYOIP) and creates a corresponding address pool.

  After the address range is provisioned,
  it is ready to be advertised using [
  AdvertiseByoipCidr](https://docs.aws.amazon.com/global-accelerator/latest/api/AdvertiseByoipCidr.html).

  For more information, see [Bring your own IP addresses
  (BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html)
  in the *Global Accelerator Developer Guide*.
  """
  @spec provision_byoip_cidr(map(), provision_byoip_cidr_request(), list()) ::
          {:ok, provision_byoip_cidr_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, incorrect_cidr_state_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, limit_exceeded_exception()}
  def provision_byoip_cidr(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ProvisionByoipCidr", input, options)
  end

  @doc """
  Remove endpoints from a custom routing accelerator.
  """
  @spec remove_custom_routing_endpoints(map(), remove_custom_routing_endpoints_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, conflict_exception()}
          | {:error, endpoint_group_not_found_exception()}
          | {:error, endpoint_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
  def remove_custom_routing_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveCustomRoutingEndpoints", input, options)
  end

  @doc """
  Remove endpoints from an endpoint group.

  The `RemoveEndpoints` API operation is the recommended option for removing
  endpoints. The alternative is to remove
  endpoints by updating an endpoint group by using the
  [UpdateEndpointGroup](https://docs.aws.amazon.com/global-accelerator/latest/api/API_UpdateEndpointGroup.html)

  API operation. There are two advantages to using `AddEndpoints` to remove
  endpoints instead:

    *
  It's more convenient, because you only need to specify the endpoints that you
  want to remove. With the
  `UpdateEndpointGroup` API operation, you must specify all of the endpoints in
  the
  endpoint group except the ones that you want to remove from the group.

    *
  It's faster, because Global Accelerator doesn't need to resolve any endpoints.
  With the
  `UpdateEndpointGroup` API operation, Global Accelerator must resolve all of the
  endpoints that
  remain in the group.
  """
  @spec remove_endpoints(map(), remove_endpoints_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, endpoint_group_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, transaction_in_progress_exception()}
  def remove_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveEndpoints", input, options)
  end

  @doc """
  Add tags to an accelerator resource.

  For more information, see [Tagging in Global
  Accelerator](https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html)
  in the *Global Accelerator Developer Guide*.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accelerator_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Remove tags from a Global Accelerator resource.

  When you specify a tag key, the action removes both that key and its associated
  value.
  The operation succeeds even if you attempt to remove tags from an accelerator
  that was already removed.

  For more information, see [Tagging in Global
  Accelerator](https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html)
  in the *Global Accelerator Developer Guide*.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accelerator_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Update an accelerator to make changes, such as the following:

    *
  Change the name of the accelerator.

    *
  Disable the accelerator so that it no longer accepts or routes traffic, or so
  that you can delete it.

    *
  Enable the accelerator, if it is disabled.

    *
  Change the IP address type to dual-stack if it is IPv4, or change the IP address
  type to IPv4 if it's dual-stack.

  Be aware that static IP addresses remain assigned to your accelerator for as
  long as it exists, even if you disable the accelerator and it no
  longer accepts or routes traffic. However, when you delete the accelerator, you
  lose the static IP addresses that are assigned to it, so you
  can no longer route traffic by using them.

  Global Accelerator is a global service that supports endpoints in multiple
  Amazon Web Services Regions but you must specify the
  US West (Oregon) Region to create, update, or otherwise work with accelerators.
  That is, for example, specify `--region us-west-2`
  on Amazon Web Services CLI commands.
  """
  @spec update_accelerator(map(), update_accelerator_request(), list()) ::
          {:ok, update_accelerator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accelerator_not_found_exception()}
          | {:error, access_denied_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
  def update_accelerator(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAccelerator", input, options)
  end

  @doc """
  Update the attributes for an accelerator.
  """
  @spec update_accelerator_attributes(map(), update_accelerator_attributes_request(), list()) ::
          {:ok, update_accelerator_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accelerator_not_found_exception()}
          | {:error, access_denied_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
  def update_accelerator_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAcceleratorAttributes", input, options)
  end

  @doc """
  Update a cross-account attachment to add or remove principals or resources.

  When you update
  an attachment to remove a principal (account ID or accelerator) or a resource,
  Global Accelerator
  revokes the permission for specific resources by doing the following:

    *
  If the principal is an account ID, Global Accelerator reviews every accelerator
  in the account
  and removes cross-account endpoints from all accelerators.

    *
  If the principal is an accelerator, Global Accelerator reviews just that
  accelerator
  and removes cross-account endpoints from it.

  If there are overlapping permissions provided by multiple cross-account
  attachments,
  Global Accelerator only removes endpoints if there are no current cross-account
  attachments that provide
  access permission. For example, if you delete a cross-account attachment that
  lists an
  accelerator as a principal, but another cross-account attachment includes the
  account ID
  that owns that accelerator, endpoints will not be removed from the accelerator.
  """
  @spec update_cross_account_attachment(map(), update_cross_account_attachment_request(), list()) ::
          {:ok, update_cross_account_attachment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, attachment_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, transaction_in_progress_exception()}
  def update_cross_account_attachment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCrossAccountAttachment", input, options)
  end

  @doc """
  Update a custom routing accelerator.
  """
  @spec update_custom_routing_accelerator(
          map(),
          update_custom_routing_accelerator_request(),
          list()
        ) ::
          {:ok, update_custom_routing_accelerator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accelerator_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
  def update_custom_routing_accelerator(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCustomRoutingAccelerator", input, options)
  end

  @doc """
  Update the attributes for a custom routing accelerator.
  """
  @spec update_custom_routing_accelerator_attributes(
          map(),
          update_custom_routing_accelerator_attributes_request(),
          list()
        ) ::
          {:ok, update_custom_routing_accelerator_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, accelerator_not_found_exception()}
          | {:error, access_denied_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
  def update_custom_routing_accelerator_attributes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCustomRoutingAcceleratorAttributes", input, options)
  end

  @doc """
  Update a listener for a custom routing accelerator.
  """
  @spec update_custom_routing_listener(map(), update_custom_routing_listener_request(), list()) ::
          {:ok, update_custom_routing_listener_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, invalid_port_range_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, listener_not_found_exception()}
  def update_custom_routing_listener(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCustomRoutingListener", input, options)
  end

  @doc """
  Update an endpoint group.

  A resource must be valid and active when you add it as an endpoint.
  """
  @spec update_endpoint_group(map(), update_endpoint_group_request(), list()) ::
          {:ok, update_endpoint_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, endpoint_group_not_found_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, limit_exceeded_exception()}
  def update_endpoint_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateEndpointGroup", input, options)
  end

  @doc """
  Update a listener.
  """
  @spec update_listener(map(), update_listener_request(), list()) ::
          {:ok, update_listener_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
          | {:error, invalid_port_range_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, listener_not_found_exception()}
  def update_listener(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateListener", input, options)
  end

  @doc """
  Stops advertising an address range that is provisioned as an address pool.

  You can perform this operation at most once every 10 seconds, even if you
  specify different address
  ranges each time.

  It can take a few minutes before traffic to the specified addresses stops
  routing to Amazon Web Services because of
  propagation delays.

  For more information, see [Bring your own IP addresses
  (BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html)
  in the *Global Accelerator Developer Guide*.
  """
  @spec withdraw_byoip_cidr(map(), withdraw_byoip_cidr_request(), list()) ::
          {:ok, withdraw_byoip_cidr_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, byoip_cidr_not_found_exception()}
          | {:error, incorrect_cidr_state_exception()}
          | {:error, internal_service_error_exception()}
          | {:error, invalid_argument_exception()}
  def withdraw_byoip_cidr(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "WithdrawByoipCidr", input, options)
  end
end
