# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.Lightsail do
  @moduledoc """
  Amazon Lightsail is the easiest way to get started with AWS for developers
  who just need virtual private servers. Lightsail includes everything you
  need to launch your project quickly - a virtual machine, SSD-based storage,
  data transfer, DNS management, and a static IP - for a low, predictable
  price. You manage those Lightsail servers through the Lightsail console or
  by using the API or command-line interface (CLI).

  For more information about Lightsail concepts and tasks, see the [Lightsail
  Dev Guide](http://lightsail.aws.amazon.com/ls/docs).

  To use the Lightsail API or the CLI, you will need to use AWS Identity and
  Access Management (IAM) to generate access keys. For details about how to
  set this up, see the [Lightsail Dev
  Guide](http://lightsail.aws.amazon.com/ls/docs/how-to/articles/lightsail-how-to-set-up-access-keys-to-use-sdk-api-cli).
  """

  @doc """
  Allocates a static IP address.
  """
  def allocate_static_ip(client, input, options \\ []) do
    request(client, "AllocateStaticIp", input, options)
  end

  @doc """
  Attaches a static IP address to a specific Amazon Lightsail instance.
  """
  def attach_static_ip(client, input, options \\ []) do
    request(client, "AttachStaticIp", input, options)
  end

  @doc """
  Closes the public ports on a specific Amazon Lightsail instance.
  """
  def close_instance_public_ports(client, input, options \\ []) do
    request(client, "CloseInstancePublicPorts", input, options)
  end

  @doc """
  Creates a domain resource for the specified domain (e.g., example.com).
  """
  def create_domain(client, input, options \\ []) do
    request(client, "CreateDomain", input, options)
  end

  @doc """
  Creates one of the following entry records associated with the domain: A
  record, CNAME record, TXT record, or MX record.
  """
  def create_domain_entry(client, input, options \\ []) do
    request(client, "CreateDomainEntry", input, options)
  end

  @doc """
  Creates a snapshot of a specific virtual private server, or *instance*. You
  can use a snapshot to create a new instance that is based on that snapshot.
  """
  def create_instance_snapshot(client, input, options \\ []) do
    request(client, "CreateInstanceSnapshot", input, options)
  end

  @doc """
  Creates one or more Amazon Lightsail virtual private servers, or
  *instances*.
  """
  def create_instances(client, input, options \\ []) do
    request(client, "CreateInstances", input, options)
  end

  @doc """
  Uses a specific snapshot as a blueprint for creating one or more new
  instances that are based on that identical configuration.
  """
  def create_instances_from_snapshot(client, input, options \\ []) do
    request(client, "CreateInstancesFromSnapshot", input, options)
  end

  @doc """
  Creates sn SSH key pair.
  """
  def create_key_pair(client, input, options \\ []) do
    request(client, "CreateKeyPair", input, options)
  end

  @doc """
  Deletes the specified domain recordset and all of its domain records.
  """
  def delete_domain(client, input, options \\ []) do
    request(client, "DeleteDomain", input, options)
  end

  @doc """
  Deletes a specific domain entry.
  """
  def delete_domain_entry(client, input, options \\ []) do
    request(client, "DeleteDomainEntry", input, options)
  end

  @doc """
  Deletes a specific Amazon Lightsail virtual private server, or *instance*.
  """
  def delete_instance(client, input, options \\ []) do
    request(client, "DeleteInstance", input, options)
  end

  @doc """
  Deletes a specific snapshot of a virtual private server (or *instance*).
  """
  def delete_instance_snapshot(client, input, options \\ []) do
    request(client, "DeleteInstanceSnapshot", input, options)
  end

  @doc """
  Deletes a specific SSH key pair.
  """
  def delete_key_pair(client, input, options \\ []) do
    request(client, "DeleteKeyPair", input, options)
  end

  @doc """
  Detaches a static IP from the Amazon Lightsail instance to which it is
  attached.
  """
  def detach_static_ip(client, input, options \\ []) do
    request(client, "DetachStaticIp", input, options)
  end

  @doc """
  Downloads the default SSH key pair from the user's account.
  """
  def download_default_key_pair(client, input, options \\ []) do
    request(client, "DownloadDefaultKeyPair", input, options)
  end

  @doc """
  Returns the names of all active (not deleted) resources.
  """
  def get_active_names(client, input, options \\ []) do
    request(client, "GetActiveNames", input, options)
  end

  @doc """
  Returns the list of available instance images, or *blueprints*. You can use
  a blueprint to create a new virtual private server already running a
  specific operating system, as well as a preinstalled app or development
  stack. The software each instance is running depends on the blueprint image
  you choose.
  """
  def get_blueprints(client, input, options \\ []) do
    request(client, "GetBlueprints", input, options)
  end

  @doc """
  Returns the list of bundles that are available for purchase. A bundle
  describes the specs for your virtual private server (or *instance*).
  """
  def get_bundles(client, input, options \\ []) do
    request(client, "GetBundles", input, options)
  end

  @doc """
  Returns information about a specific domain recordset.
  """
  def get_domain(client, input, options \\ []) do
    request(client, "GetDomain", input, options)
  end

  @doc """
  Returns a list of all domains in the user's account.
  """
  def get_domains(client, input, options \\ []) do
    request(client, "GetDomains", input, options)
  end

  @doc """
  Returns information about a specific Amazon Lightsail instance, which is a
  virtual private server.
  """
  def get_instance(client, input, options \\ []) do
    request(client, "GetInstance", input, options)
  end

  @doc """
  Returns temporary SSH keys you can use to connect to a specific virtual
  private server, or *instance*.
  """
  def get_instance_access_details(client, input, options \\ []) do
    request(client, "GetInstanceAccessDetails", input, options)
  end

  @doc """
  Returns the data points for the specified Amazon Lightsail instance metric,
  given an instance name.
  """
  def get_instance_metric_data(client, input, options \\ []) do
    request(client, "GetInstanceMetricData", input, options)
  end

  @doc """
  Returns the port states for a specific virtual private server, or
  *instance*.
  """
  def get_instance_port_states(client, input, options \\ []) do
    request(client, "GetInstancePortStates", input, options)
  end

  @doc """
  Returns information about a specific instance snapshot.
  """
  def get_instance_snapshot(client, input, options \\ []) do
    request(client, "GetInstanceSnapshot", input, options)
  end

  @doc """
  Returns all instance snapshots for the user's account.
  """
  def get_instance_snapshots(client, input, options \\ []) do
    request(client, "GetInstanceSnapshots", input, options)
  end

  @doc """
  Returns the state of a specific instance. Works on one instance at a time.
  """
  def get_instance_state(client, input, options \\ []) do
    request(client, "GetInstanceState", input, options)
  end

  @doc """
  Returns information about all Amazon Lightsail virtual private servers, or
  *instances*.
  """
  def get_instances(client, input, options \\ []) do
    request(client, "GetInstances", input, options)
  end

  @doc """
  Returns information about a specific key pair.
  """
  def get_key_pair(client, input, options \\ []) do
    request(client, "GetKeyPair", input, options)
  end

  @doc """
  Returns information about all key pairs in the user's account.
  """
  def get_key_pairs(client, input, options \\ []) do
    request(client, "GetKeyPairs", input, options)
  end

  @doc """
  Returns information about a specific operation. Operations include events
  such as when you create an instance, allocate a static IP, attach a static
  IP, and so on.
  """
  def get_operation(client, input, options \\ []) do
    request(client, "GetOperation", input, options)
  end

  @doc """
  Returns information about all operations.

  Results are returned from oldest to newest, up to a maximum of 200. Results
  can be paged by making each subsequent call to `GetOperations` use the
  maximum (last) `statusChangedAt` value from the previous request.
  """
  def get_operations(client, input, options \\ []) do
    request(client, "GetOperations", input, options)
  end

  @doc """
  Gets operations for a specific resource (e.g., an instance or a static IP).
  """
  def get_operations_for_resource(client, input, options \\ []) do
    request(client, "GetOperationsForResource", input, options)
  end

  @doc """
  Returns a list of all valid regions for Amazon Lightsail.
  """
  def get_regions(client, input, options \\ []) do
    request(client, "GetRegions", input, options)
  end

  @doc """
  Returns information about a specific static IP.
  """
  def get_static_ip(client, input, options \\ []) do
    request(client, "GetStaticIp", input, options)
  end

  @doc """
  Returns information about all static IPs in the user's account.
  """
  def get_static_ips(client, input, options \\ []) do
    request(client, "GetStaticIps", input, options)
  end

  @doc """
  Imports a public SSH key from a specific key pair.
  """
  def import_key_pair(client, input, options \\ []) do
    request(client, "ImportKeyPair", input, options)
  end

  @doc """
  Returns a Boolean value indicating whether your Lightsail VPC is peered.
  """
  def is_vpc_peered(client, input, options \\ []) do
    request(client, "IsVpcPeered", input, options)
  end

  @doc """
  Adds public ports to an Amazon Lightsail instance.
  """
  def open_instance_public_ports(client, input, options \\ []) do
    request(client, "OpenInstancePublicPorts", input, options)
  end

  @doc """
  Tries to peer the Lightsail VPC with the user's default VPC.
  """
  def peer_vpc(client, input, options \\ []) do
    request(client, "PeerVpc", input, options)
  end

  @doc """
  Restarts a specific instance. When your Amazon Lightsail instance is
  finished rebooting, Lightsail assigns a new public IP address. To use the
  same IP address after restarting, create a static IP address and attach it
  to the instance.
  """
  def reboot_instance(client, input, options \\ []) do
    request(client, "RebootInstance", input, options)
  end

  @doc """
  Deletes a specific static IP from your account.
  """
  def release_static_ip(client, input, options \\ []) do
    request(client, "ReleaseStaticIp", input, options)
  end

  @doc """
  Starts a specific Amazon Lightsail instance from a stopped state. To
  restart an instance, use the reboot instance operation.
  """
  def start_instance(client, input, options \\ []) do
    request(client, "StartInstance", input, options)
  end

  @doc """
  Stops a specific Amazon Lightsail instance that is currently running.
  """
  def stop_instance(client, input, options \\ []) do
    request(client, "StopInstance", input, options)
  end

  @doc """
  Attempts to unpeer the Lightsail VPC from the user's default VPC.
  """
  def unpeer_vpc(client, input, options \\ []) do
    request(client, "UnpeerVpc", input, options)
  end

  @doc """
  Updates a domain recordset after it is created.
  """
  def update_domain_entry(client, input, options \\ []) do
    request(client, "UpdateDomainEntry", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "lightsail"}
    host = get_host("lightsail", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "Lightsail_20161128.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body)
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}
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
    "#{proto}://#{host}:#{port}/"
  end

end
