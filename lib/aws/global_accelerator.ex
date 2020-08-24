# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.GlobalAccelerator do
  @moduledoc """
  AWS Global Accelerator

  This is the *AWS Global Accelerator API Reference*. This guide is for
  developers who need detailed information about AWS Global Accelerator API
  actions, data types, and errors. For more information about Global
  Accelerator features, see the [AWS Global Accelerator Developer
  Guide](https://docs.aws.amazon.com/global-accelerator/latest/dg/Welcome.html).

  AWS Global Accelerator is a service in which you create accelerators to
  improve availability and performance of your applications for local and
  global users.

  <important> You must specify the US West (Oregon) Region to create or
  update accelerators.

  </important> By default, Global Accelerator provides you with static IP
  addresses that you associate with your accelerator. (Instead of using the
  IP addresses that Global Accelerator provides, you can configure these
  entry points to be IPv4 addresses from your own IP address ranges that you
  bring to Global Accelerator.) The static IP addresses are anycast from the
  AWS edge network and distribute incoming application traffic across
  multiple endpoint resources in multiple AWS Regions, which increases the
  availability of your applications. Endpoints can be Network Load Balancers,
  Application Load Balancers, EC2 instances, or Elastic IP addresses that are
  located in one AWS Region or multiple Regions.

  Global Accelerator uses the AWS global network to route traffic to the
  optimal regional endpoint based on health, client location, and policies
  that you configure. The service reacts instantly to changes in health or
  configuration to ensure that internet traffic from clients is directed to
  only healthy endpoints.

  Global Accelerator includes components that work together to help you
  improve performance and availability for your applications:

  <dl> <dt>Static IP address</dt> <dd> By default, AWS Global Accelerator
  provides you with a set of static IP addresses that are anycast from the
  AWS edge network and serve as the single fixed entry points for your
  clients. Or you can configure these entry points to be IPv4 addresses from
  your own IP address ranges that you bring to Global Accelerator (BYOIP).
  For more information, see [Bring Your Own IP Addresses
  (BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html)
  in the *AWS Global Accelerator Developer Guide*. If you already have load
  balancers, EC2 instances, or Elastic IP addresses set up for your
  applications, you can easily add those to Global Accelerator to allow the
  resources to be accessed by the static IP addresses.

  <important> The static IP addresses remain assigned to your accelerator for
  as long as it exists, even if you disable the accelerator and it no longer
  accepts or routes traffic. However, when you *delete* an accelerator, you
  lose the static IP addresses that are assigned to it, so you can no longer
  route traffic by using them. You can use IAM policies with Global
  Accelerator to limit the users who have permissions to delete an
  accelerator. For more information, see [Authentication and Access
  Control](https://docs.aws.amazon.com/global-accelerator/latest/dg/auth-and-access-control.html)
  in the *AWS Global Accelerator Developer Guide*.

  </important> </dd> <dt>Accelerator</dt> <dd> An accelerator directs traffic
  to optimal endpoints over the AWS global network to improve availability
  and performance for your internet applications that have a global audience.
  Each accelerator includes one or more listeners.

  </dd> <dt>DNS name</dt> <dd> Global Accelerator assigns each accelerator a
  default Domain Name System (DNS) name, similar to
  `a1234567890abcdef.awsglobalaccelerator.com`, that points to your Global
  Accelerator static IP addresses. Depending on the use case, you can use
  your accelerator's static IP addresses or DNS name to route traffic to your
  accelerator, or set up DNS records to route traffic using your own custom
  domain name.

  </dd> <dt>Network zone</dt> <dd> A network zone services the static IP
  addresses for your accelerator from a unique IP subnet. Similar to an AWS
  Availability Zone, a network zone is an isolated unit with its own set of
  physical infrastructure. When you configure an accelerator, by default,
  Global Accelerator allocates two IPv4 addresses for it. If one IP address
  from a network zone becomes unavailable due to IP address blocking by
  certain client networks, or network disruptions, then client applications
  can retry on the healthy static IP address from the other isolated network
  zone.

  </dd> <dt>Listener</dt> <dd> A listener processes inbound connections from
  clients to Global Accelerator, based on the protocol and port that you
  configure. Each listener has one or more endpoint groups associated with
  it, and traffic is forwarded to endpoints in one of the groups. You
  associate endpoint groups with listeners by specifying the Regions that you
  want to distribute traffic to. Traffic is distributed to optimal endpoints
  within the endpoint groups associated with a listener.

  </dd> <dt>Endpoint group</dt> <dd> Each endpoint group is associated with a
  specific AWS Region. Endpoint groups include one or more endpoints in the
  Region. You can increase or reduce the percentage of traffic that would be
  otherwise directed to an endpoint group by adjusting a setting called a
  *traffic dial*. The traffic dial lets you easily do performance testing or
  blue/green deployment testing for new releases across different AWS
  Regions, for example.

  </dd> <dt>Endpoint</dt> <dd> An endpoint is a Network Load Balancer,
  Application Load Balancer, EC2 instance, or Elastic IP address. Traffic is
  routed to endpoints based on several factors, including the geo-proximity
  to the user, the health of the endpoint, and the configuration options that
  you choose, such as endpoint weights. For each endpoint, you can configure
  weights, which are numbers that you can use to specify the proportion of
  traffic to route to each one. This can be useful, for example, to do
  performance testing within a Region.

  </dd> </dl>
  """

  @doc """
  Advertises an IPv4 address range that is provisioned for use with your AWS
  resources through bring your own IP addresses (BYOIP). It can take a few
  minutes before traffic to the specified addresses starts routing to AWS
  because of propagation delays. To see an AWS CLI example of advertising an
  address range, scroll down to **Example**.

  To stop advertising the BYOIP address range, use [
  WithdrawByoipCidr](https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html).

  For more information, see [Bring Your Own IP Addresses
  (BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html)
  in the *AWS Global Accelerator Developer Guide*.
  """
  def advertise_byoip_cidr(client, input, options \\ []) do
    request(client, "AdvertiseByoipCidr", input, options)
  end

  @doc """
  Create an accelerator. An accelerator includes one or more listeners that
  process inbound connections and direct traffic to one or more endpoint
  groups, each of which includes endpoints, such as Network Load Balancers.
  To see an AWS CLI example of creating an accelerator, scroll down to
  **Example**.

  If you bring your own IP address ranges to AWS Global Accelerator (BYOIP),
  you can assign IP addresses from your own pool to your accelerator as the
  static IP address entry points. Only one IP address from each of your IP
  address ranges can be used for each accelerator.

  <important> You must specify the US West (Oregon) Region to create or
  update accelerators.

  </important>
  """
  def create_accelerator(client, input, options \\ []) do
    request(client, "CreateAccelerator", input, options)
  end

  @doc """
  Create an endpoint group for the specified listener. An endpoint group is a
  collection of endpoints in one AWS Region. To see an AWS CLI example of
  creating an endpoint group, scroll down to **Example**.
  """
  def create_endpoint_group(client, input, options \\ []) do
    request(client, "CreateEndpointGroup", input, options)
  end

  @doc """
  Create a listener to process inbound connections from clients to an
  accelerator. Connections arrive to assigned static IP addresses on a port,
  port range, or list of port ranges that you specify. To see an AWS CLI
  example of creating a listener, scroll down to **Example**.
  """
  def create_listener(client, input, options \\ []) do
    request(client, "CreateListener", input, options)
  end

  @doc """
  Delete an accelerator. Before you can delete an accelerator, you must
  disable it and remove all dependent resources (listeners and endpoint
  groups). To disable the accelerator, update the accelerator to set
  `Enabled` to false.

  <important> When you create an accelerator, by default, Global Accelerator
  provides you with a set of two static IP addresses. Alternatively, you can
  bring your own IP address ranges to Global Accelerator and assign IP
  addresses from those ranges.

  The IP addresses are assigned to your accelerator for as long as it exists,
  even if you disable the accelerator and it no longer accepts or routes
  traffic. However, when you *delete* an accelerator, you lose the static IP
  addresses that are assigned to the accelerator, so you can no longer route
  traffic by using them. As a best practice, ensure that you have permissions
  in place to avoid inadvertently deleting accelerators. You can use IAM
  policies with Global Accelerator to limit the users who have permissions to
  delete an accelerator. For more information, see [Authentication and Access
  Control](https://docs.aws.amazon.com/global-accelerator/latest/dg/auth-and-access-control.html)
  in the *AWS Global Accelerator Developer Guide*.

  </important>
  """
  def delete_accelerator(client, input, options \\ []) do
    request(client, "DeleteAccelerator", input, options)
  end

  @doc """
  Delete an endpoint group from a listener.
  """
  def delete_endpoint_group(client, input, options \\ []) do
    request(client, "DeleteEndpointGroup", input, options)
  end

  @doc """
  Delete a listener from an accelerator.
  """
  def delete_listener(client, input, options \\ []) do
    request(client, "DeleteListener", input, options)
  end

  @doc """
  Releases the specified address range that you provisioned to use with your
  AWS resources through bring your own IP addresses (BYOIP) and deletes the
  corresponding address pool. To see an AWS CLI example of deprovisioning an
  address range, scroll down to **Example**.

  Before you can release an address range, you must stop advertising it by
  using
  [WithdrawByoipCidr](https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html)
  and you must not have any accelerators that are using static IP addresses
  allocated from its address range.

  For more information, see [Bring Your Own IP Addresses
  (BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html)
  in the *AWS Global Accelerator Developer Guide*.
  """
  def deprovision_byoip_cidr(client, input, options \\ []) do
    request(client, "DeprovisionByoipCidr", input, options)
  end

  @doc """
  Describe an accelerator. To see an AWS CLI example of describing an
  accelerator, scroll down to **Example**.
  """
  def describe_accelerator(client, input, options \\ []) do
    request(client, "DescribeAccelerator", input, options)
  end

  @doc """
  Describe the attributes of an accelerator. To see an AWS CLI example of
  describing the attributes of an accelerator, scroll down to **Example**.
  """
  def describe_accelerator_attributes(client, input, options \\ []) do
    request(client, "DescribeAcceleratorAttributes", input, options)
  end

  @doc """
  Describe an endpoint group. To see an AWS CLI example of describing an
  endpoint group, scroll down to **Example**.
  """
  def describe_endpoint_group(client, input, options \\ []) do
    request(client, "DescribeEndpointGroup", input, options)
  end

  @doc """
  Describe a listener. To see an AWS CLI example of describing a listener,
  scroll down to **Example**.
  """
  def describe_listener(client, input, options \\ []) do
    request(client, "DescribeListener", input, options)
  end

  @doc """
  List the accelerators for an AWS account. To see an AWS CLI example of
  listing the accelerators for an AWS account, scroll down to **Example**.
  """
  def list_accelerators(client, input, options \\ []) do
    request(client, "ListAccelerators", input, options)
  end

  @doc """
  Lists the IP address ranges that were specified in calls to
  [ProvisionByoipCidr](https://docs.aws.amazon.com/global-accelerator/latest/api/ProvisionByoipCidr.html),
  including the current state and a history of state changes.

  To see an AWS CLI example of listing BYOIP CIDR addresses, scroll down to
  **Example**.
  """
  def list_byoip_cidrs(client, input, options \\ []) do
    request(client, "ListByoipCidrs", input, options)
  end

  @doc """
  List the endpoint groups that are associated with a listener. To see an AWS
  CLI example of listing the endpoint groups for listener, scroll down to
  **Example**.
  """
  def list_endpoint_groups(client, input, options \\ []) do
    request(client, "ListEndpointGroups", input, options)
  end

  @doc """
  List the listeners for an accelerator. To see an AWS CLI example of listing
  the listeners for an accelerator, scroll down to **Example**.
  """
  def list_listeners(client, input, options \\ []) do
    request(client, "ListListeners", input, options)
  end

  @doc """
  List all tags for an accelerator. To see an AWS CLI example of listing tags
  for an accelerator, scroll down to **Example**.

  For more information, see [Tagging in AWS Global
  Accelerator](https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html)
  in the *AWS Global Accelerator Developer Guide*.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Provisions an IP address range to use with your AWS resources through bring
  your own IP addresses (BYOIP) and creates a corresponding address pool.
  After the address range is provisioned, it is ready to be advertised using
  [
  AdvertiseByoipCidr](https://docs.aws.amazon.com/global-accelerator/latest/api/AdvertiseByoipCidr.html).

  To see an AWS CLI example of provisioning an address range for BYOIP,
  scroll down to **Example**.

  For more information, see [Bring Your Own IP Addresses
  (BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html)
  in the *AWS Global Accelerator Developer Guide*.
  """
  def provision_byoip_cidr(client, input, options \\ []) do
    request(client, "ProvisionByoipCidr", input, options)
  end

  @doc """
  Add tags to an accelerator resource. To see an AWS CLI example of adding
  tags to an accelerator, scroll down to **Example**.

  For more information, see [Tagging in AWS Global
  Accelerator](https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html)
  in the *AWS Global Accelerator Developer Guide*.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Remove tags from a Global Accelerator resource. When you specify a tag key,
  the action removes both that key and its associated value. To see an AWS
  CLI example of removing tags from an accelerator, scroll down to
  **Example**. The operation succeeds even if you attempt to remove tags from
  an accelerator that was already removed.

  For more information, see [Tagging in AWS Global
  Accelerator](https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html)
  in the *AWS Global Accelerator Developer Guide*.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Update an accelerator. To see an AWS CLI example of updating an
  accelerator, scroll down to **Example**.

  <important> You must specify the US West (Oregon) Region to create or
  update accelerators.

  </important>
  """
  def update_accelerator(client, input, options \\ []) do
    request(client, "UpdateAccelerator", input, options)
  end

  @doc """
  Update the attributes for an accelerator. To see an AWS CLI example of
  updating an accelerator to enable flow logs, scroll down to **Example**.
  """
  def update_accelerator_attributes(client, input, options \\ []) do
    request(client, "UpdateAcceleratorAttributes", input, options)
  end

  @doc """
  Update an endpoint group. To see an AWS CLI example of updating an endpoint
  group, scroll down to **Example**.
  """
  def update_endpoint_group(client, input, options \\ []) do
    request(client, "UpdateEndpointGroup", input, options)
  end

  @doc """
  Update a listener. To see an AWS CLI example of updating listener, scroll
  down to **Example**.
  """
  def update_listener(client, input, options \\ []) do
    request(client, "UpdateListener", input, options)
  end

  @doc """
  Stops advertising an address range that is provisioned as an address pool.
  You can perform this operation at most once every 10 seconds, even if you
  specify different address ranges each time. To see an AWS CLI example of
  withdrawing an address range for BYOIP so it will no longer be advertised
  by AWS, scroll down to **Example**.

  It can take a few minutes before traffic to the specified addresses stops
  routing to AWS because of propagation delays.

  For more information, see [Bring Your Own IP Addresses
  (BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html)
  in the *AWS Global Accelerator Developer Guide*.
  """
  def withdraw_byoip_cidr(client, input, options \\ []) do
    request(client, "WithdrawByoipCidr", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, action, input, options) do
    client = %{client | service: "globalaccelerator"}
    host = build_host("globalaccelerator", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "GlobalAccelerator_V20180706.#{action}"}
    ]

    payload = Poison.Encoder.encode(input, %{})
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)

    case HTTPoison.post(url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %HTTPoison.Response{status_code: 200, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end
end
