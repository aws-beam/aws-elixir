# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.DirectConnect do
  @moduledoc """
  AWS Direct Connect makes it easy to establish a dedicated network
  connection from your premises to Amazon Web Services (AWS). Using AWS
  Direct Connect, you can establish private connectivity between AWS and your
  data center, office, or colocation environment, which in many cases can
  reduce your network costs, increase bandwidth throughput, and provide a
  more consistent network experience than Internet-based connections.

  The AWS Direct Connect API Reference provides descriptions, syntax, and
  usage examples for each of the actions and data types for AWS Direct
  Connect. Use the following links to get started using the *AWS Direct
  Connect API Reference*:

  <ul>
  <li>[Actions](http://docs.aws.amazon.com/directconnect/latest/APIReference/API_Operations.html):
  An alphabetical list of all AWS Direct Connect actions.</li> <li>[Data
  Types](http://docs.aws.amazon.com/directconnect/latest/APIReference/API_Types.html):
  An alphabetical list of all AWS Direct Connect data types.</li> <li>[Common
  Query
  Parameters](http://docs.aws.amazon.com/directconnect/latest/APIReference/CommonParameters.html):
  Parameters that all Query actions can use.</li> <li>[Common
  Errors](http://docs.aws.amazon.com/directconnect/latest/APIReference/CommonErrors.html):
  Client and server errors that all actions can return.</li> </ul>
  """

  @doc """
  Creates a hosted connection on an interconnect.

  Allocates a VLAN number and a specified amount of bandwidth for use by a
  hosted connection on the given interconnect.
  """
  def allocate_connection_on_interconnect(client, input, options \\ []) do
    request(client, "AllocateConnectionOnInterconnect", input, options)
  end

  @doc """
  Provisions a private virtual interface to be owned by a different customer.

  The owner of a connection calls this function to provision a private
  virtual interface which will be owned by another AWS customer.

  Virtual interfaces created using this function must be confirmed by the
  virtual interface owner by calling ConfirmPrivateVirtualInterface. Until
  this step has been completed, the virtual interface will be in 'Confirming'
  state, and will not be available for handling traffic.
  """
  def allocate_private_virtual_interface(client, input, options \\ []) do
    request(client, "AllocatePrivateVirtualInterface", input, options)
  end

  @doc """
  Provisions a public virtual interface to be owned by a different customer.

  The owner of a connection calls this function to provision a public virtual
  interface which will be owned by another AWS customer.

  Virtual interfaces created using this function must be confirmed by the
  virtual interface owner by calling ConfirmPublicVirtualInterface. Until
  this step has been completed, the virtual interface will be in 'Confirming'
  state, and will not be available for handling traffic.
  """
  def allocate_public_virtual_interface(client, input, options \\ []) do
    request(client, "AllocatePublicVirtualInterface", input, options)
  end

  @doc """
  Confirm the creation of a hosted connection on an interconnect.

  Upon creation, the hosted connection is initially in the 'Ordering' state,
  and will remain in this state until the owner calls ConfirmConnection to
  confirm creation of the hosted connection.
  """
  def confirm_connection(client, input, options \\ []) do
    request(client, "ConfirmConnection", input, options)
  end

  @doc """
  Accept ownership of a private virtual interface created by another
  customer.

  After the virtual interface owner calls this function, the virtual
  interface will be created and attached to the given virtual private
  gateway, and will be available for handling traffic.
  """
  def confirm_private_virtual_interface(client, input, options \\ []) do
    request(client, "ConfirmPrivateVirtualInterface", input, options)
  end

  @doc """
  Accept ownership of a public virtual interface created by another customer.

  After the virtual interface owner calls this function, the specified
  virtual interface will be created and made available for handling traffic.
  """
  def confirm_public_virtual_interface(client, input, options \\ []) do
    request(client, "ConfirmPublicVirtualInterface", input, options)
  end

  @doc """
  Creates a new connection between the customer network and a specific AWS
  Direct Connect location.

  A connection links your internal network to an AWS Direct Connect location
  over a standard 1 gigabit or 10 gigabit Ethernet fiber-optic cable. One end
  of the cable is connected to your router, the other to an AWS Direct
  Connect router. An AWS Direct Connect location provides access to Amazon
  Web Services in the region it is associated with. You can establish
  connections with AWS Direct Connect locations in multiple regions, but a
  connection in one region does not provide connectivity to other regions.
  """
  def create_connection(client, input, options \\ []) do
    request(client, "CreateConnection", input, options)
  end

  @doc """
  Creates a new interconnect between a AWS Direct Connect partner's network
  and a specific AWS Direct Connect location.

  An interconnect is a connection which is capable of hosting other
  connections. The AWS Direct Connect partner can use an interconnect to
  provide sub-1Gbps AWS Direct Connect service to tier 2 customers who do not
  have their own connections. Like a standard connection, an interconnect
  links the AWS Direct Connect partner's network to an AWS Direct Connect
  location over a standard 1 Gbps or 10 Gbps Ethernet fiber-optic cable. One
  end is connected to the partner's router, the other to an AWS Direct
  Connect router.

  For each end customer, the AWS Direct Connect partner provisions a
  connection on their interconnect by calling
  AllocateConnectionOnInterconnect. The end customer can then connect to AWS
  resources by creating a virtual interface on their connection, using the
  VLAN assigned to them by the AWS Direct Connect partner.
  """
  def create_interconnect(client, input, options \\ []) do
    request(client, "CreateInterconnect", input, options)
  end

  @doc """
  Creates a new private virtual interface. A virtual interface is the VLAN
  that transports AWS Direct Connect traffic. A private virtual interface
  supports sending traffic to a single virtual private cloud (VPC).
  """
  def create_private_virtual_interface(client, input, options \\ []) do
    request(client, "CreatePrivateVirtualInterface", input, options)
  end

  @doc """
  Creates a new public virtual interface. A virtual interface is the VLAN
  that transports AWS Direct Connect traffic. A public virtual interface
  supports sending traffic to public services of AWS such as Amazon Simple
  Storage Service (Amazon S3).
  """
  def create_public_virtual_interface(client, input, options \\ []) do
    request(client, "CreatePublicVirtualInterface", input, options)
  end

  @doc """
  Deletes the connection.

  Deleting a connection only stops the AWS Direct Connect port hour and data
  transfer charges. You need to cancel separately with the providers any
  services or charges for cross-connects or network circuits that connect you
  to the AWS Direct Connect location.
  """
  def delete_connection(client, input, options \\ []) do
    request(client, "DeleteConnection", input, options)
  end

  @doc """
  Deletes the specified interconnect.
  """
  def delete_interconnect(client, input, options \\ []) do
    request(client, "DeleteInterconnect", input, options)
  end

  @doc """
  Deletes a virtual interface.
  """
  def delete_virtual_interface(client, input, options \\ []) do
    request(client, "DeleteVirtualInterface", input, options)
  end

  @doc """
  Displays all connections in this region.

  If a connection ID is provided, the call returns only that particular
  connection.
  """
  def describe_connections(client, input, options \\ []) do
    request(client, "DescribeConnections", input, options)
  end

  @doc """
  Return a list of connections that have been provisioned on the given
  interconnect.
  """
  def describe_connections_on_interconnect(client, input, options \\ []) do
    request(client, "DescribeConnectionsOnInterconnect", input, options)
  end

  @doc """
  Returns a list of interconnects owned by the AWS account.

  If an interconnect ID is provided, it will only return this particular
  interconnect.
  """
  def describe_interconnects(client, input, options \\ []) do
    request(client, "DescribeInterconnects", input, options)
  end

  @doc """
  Returns the list of AWS Direct Connect locations in the current AWS region.
  These are the locations that may be selected when calling CreateConnection
  or CreateInterconnect.
  """
  def describe_locations(client, input, options \\ []) do
    request(client, "DescribeLocations", input, options)
  end

  @doc """
  Returns a list of virtual private gateways owned by the AWS account.

  You can create one or more AWS Direct Connect private virtual interfaces
  linking to a virtual private gateway. A virtual private gateway can be
  managed via Amazon Virtual Private Cloud (VPC) console or the [EC2
  CreateVpnGateway](http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-CreateVpnGateway.html)
  action.
  """
  def describe_virtual_gateways(client, input, options \\ []) do
    request(client, "DescribeVirtualGateways", input, options)
  end

  @doc """
  Displays all virtual interfaces for an AWS account. Virtual interfaces
  deleted fewer than 15 minutes before DescribeVirtualInterfaces is called
  are also returned. If a connection ID is included then only virtual
  interfaces associated with this connection will be returned. If a virtual
  interface ID is included then only a single virtual interface will be
  returned.

  A virtual interface (VLAN) transmits the traffic between the AWS Direct
  Connect location and the customer.

  If a connection ID is provided, only virtual interfaces provisioned on the
  specified connection will be returned. If a virtual interface ID is
  provided, only this particular virtual interface will be returned.
  """
  def describe_virtual_interfaces(client, input, options \\ []) do
    request(client, "DescribeVirtualInterfaces", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "directconnect"}
    host = get_host("directconnect", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "OvertureService.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["__type"]
        {:error, reason}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}"
  end

end
