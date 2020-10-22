# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ServiceDiscovery do
  @moduledoc """
  AWS Cloud Map lets you configure public DNS, private DNS, or HTTP
  namespaces that your microservice applications run in. When an instance of
  the service becomes available, you can call the AWS Cloud Map API to
  register the instance with AWS Cloud Map. For public or private DNS
  namespaces, AWS Cloud Map automatically creates DNS records and an optional
  health check. Clients that submit public or private DNS queries, or HTTP
  requests, for the service receive an answer that contains up to eight
  healthy records.
  """

  @doc """
  Creates an HTTP namespace. Service instances that you register using an
  HTTP namespace can be discovered using a `DiscoverInstances` request but
  can't be discovered using DNS.

  For the current quota on the number of namespaces that you can create using
  the same AWS account, see [AWS Cloud Map
  quotas](https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html)
  in the *AWS Cloud Map Developer Guide*.
  """
  def create_http_namespace(client, input, options \\ []) do
    request(client, "CreateHttpNamespace", input, options)
  end

  @doc """
  Creates a private namespace based on DNS, which will be visible only inside
  a specified Amazon VPC. The namespace defines your service naming scheme.
  For example, if you name your namespace `example.com` and name your service
  `backend`, the resulting DNS name for the service will be
  `backend.example.com`. For the current quota on the number of namespaces
  that you can create using the same AWS account, see [AWS Cloud Map
  Limits](https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html)
  in the *AWS Cloud Map Developer Guide*.
  """
  def create_private_dns_namespace(client, input, options \\ []) do
    request(client, "CreatePrivateDnsNamespace", input, options)
  end

  @doc """
  Creates a public namespace based on DNS, which will be visible on the
  internet. The namespace defines your service naming scheme. For example, if
  you name your namespace `example.com` and name your service `backend`, the
  resulting DNS name for the service will be `backend.example.com`. For the
  current quota on the number of namespaces that you can create using the
  same AWS account, see [AWS Cloud Map
  Limits](https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html)
  in the *AWS Cloud Map Developer Guide*.
  """
  def create_public_dns_namespace(client, input, options \\ []) do
    request(client, "CreatePublicDnsNamespace", input, options)
  end

  @doc """
  Creates a service, which defines the configuration for the following
  entities:

  <ul> <li> For public and private DNS namespaces, one of the following
  combinations of DNS records in Amazon Route 53:

  <ul> <li> `A`

  </li> <li> `AAAA`

  </li> <li> `A` and `AAAA`

  </li> <li> `SRV`

  </li> <li> `CNAME`

  </li> </ul> </li> <li> Optionally, a health check

  </li> </ul> After you create the service, you can submit a
  [RegisterInstance](https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html)
  request, and AWS Cloud Map uses the values in the configuration to create
  the specified entities.

  For the current quota on the number of instances that you can register
  using the same namespace and using the same service, see [AWS Cloud Map
  Limits](https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html)
  in the *AWS Cloud Map Developer Guide*.
  """
  def create_service(client, input, options \\ []) do
    request(client, "CreateService", input, options)
  end

  @doc """
  Deletes a namespace from the current account. If the namespace still
  contains one or more services, the request fails.
  """
  def delete_namespace(client, input, options \\ []) do
    request(client, "DeleteNamespace", input, options)
  end

  @doc """
  Deletes a specified service. If the service still contains one or more
  registered instances, the request fails.
  """
  def delete_service(client, input, options \\ []) do
    request(client, "DeleteService", input, options)
  end

  @doc """
  Deletes the Amazon Route 53 DNS records and health check, if any, that AWS
  Cloud Map created for the specified instance.
  """
  def deregister_instance(client, input, options \\ []) do
    request(client, "DeregisterInstance", input, options)
  end

  @doc """
  Discovers registered instances for a specified namespace and service. You
  can use `DiscoverInstances` to discover instances for any type of
  namespace. For public and private DNS namespaces, you can also use DNS
  queries to discover instances.
  """
  def discover_instances(client, input, options \\ []) do
    request(client, "DiscoverInstances", input, options)
  end

  @doc """
  Gets information about a specified instance.
  """
  def get_instance(client, input, options \\ []) do
    request(client, "GetInstance", input, options)
  end

  @doc """
  Gets the current health status (`Healthy`, `Unhealthy`, or `Unknown`) of
  one or more instances that are associated with a specified service.

  <note> There is a brief delay between when you register an instance and
  when the health status for the instance is available.

  </note>
  """
  def get_instances_health_status(client, input, options \\ []) do
    request(client, "GetInstancesHealthStatus", input, options)
  end

  @doc """
  Gets information about a namespace.
  """
  def get_namespace(client, input, options \\ []) do
    request(client, "GetNamespace", input, options)
  end

  @doc """
  Gets information about any operation that returns an operation ID in the
  response, such as a `CreateService` request.

  <note> To get a list of operations that match specified criteria, see
  [ListOperations](https://docs.aws.amazon.com/cloud-map/latest/api/API_ListOperations.html).

  </note>
  """
  def get_operation(client, input, options \\ []) do
    request(client, "GetOperation", input, options)
  end

  @doc """
  Gets the settings for a specified service.
  """
  def get_service(client, input, options \\ []) do
    request(client, "GetService", input, options)
  end

  @doc """
  Lists summary information about the instances that you registered by using
  a specified service.
  """
  def list_instances(client, input, options \\ []) do
    request(client, "ListInstances", input, options)
  end

  @doc """
  Lists summary information about the namespaces that were created by the
  current AWS account.
  """
  def list_namespaces(client, input, options \\ []) do
    request(client, "ListNamespaces", input, options)
  end

  @doc """
  Lists operations that match the criteria that you specify.
  """
  def list_operations(client, input, options \\ []) do
    request(client, "ListOperations", input, options)
  end

  @doc """
  Lists summary information for all the services that are associated with one
  or more specified namespaces.
  """
  def list_services(client, input, options \\ []) do
    request(client, "ListServices", input, options)
  end

  @doc """
  Lists tags for the specified resource.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Creates or updates one or more records and, optionally, creates a health
  check based on the settings in a specified service. When you submit a
  `RegisterInstance` request, the following occurs:

  <ul> <li> For each DNS record that you define in the service that is
  specified by `ServiceId`, a record is created or updated in the hosted zone
  that is associated with the corresponding namespace.

  </li> <li> If the service includes `HealthCheckConfig`, a health check is
  created based on the settings in the health check configuration.

  </li> <li> The health check, if any, is associated with each of the new or
  updated records.

  </li> </ul> <important> One `RegisterInstance` request must complete before
  you can submit another request and specify the same service ID and instance
  ID.

  </important> For more information, see
  [CreateService](https://docs.aws.amazon.com/cloud-map/latest/api/API_CreateService.html).

  When AWS Cloud Map receives a DNS query for the specified DNS name, it
  returns the applicable value:

  <ul> <li> **If the health check is healthy**: returns all the records

  </li> <li> **If the health check is unhealthy**: returns the applicable
  value for the last healthy instance

  </li> <li> **If you didn't specify a health check configuration**: returns
  all the records

  </li> </ul> For the current quota on the number of instances that you can
  register using the same namespace and using the same service, see [AWS
  Cloud Map
  Limits](https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html)
  in the *AWS Cloud Map Developer Guide*.
  """
  def register_instance(client, input, options \\ []) do
    request(client, "RegisterInstance", input, options)
  end

  @doc """
  Adds one or more tags to the specified resource.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Removes one or more tags from the specified resource.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Submits a request to change the health status of a custom health check to
  healthy or unhealthy.

  You can use `UpdateInstanceCustomHealthStatus` to change the status only
  for custom health checks, which you define using `HealthCheckCustomConfig`
  when you create a service. You can't use it to change the status for
  Route 53 health checks, which you define using `HealthCheckConfig`.

  For more information, see
  [HealthCheckCustomConfig](https://docs.aws.amazon.com/cloud-map/latest/api/API_HealthCheckCustomConfig.html).
  """
  def update_instance_custom_health_status(client, input, options \\ []) do
    request(client, "UpdateInstanceCustomHealthStatus", input, options)
  end

  @doc """
  Submits a request to perform the following operations:

  <ul> <li> Update the TTL setting for existing `DnsRecords` configurations

  </li> <li> Add, update, or delete `HealthCheckConfig` for a specified
  service

  <note> You can't add, update, or delete a `HealthCheckCustomConfig`
  configuration.

  </note> </li> </ul> For public and private DNS namespaces, note the
  following:

  <ul> <li> If you omit any existing `DnsRecords` or `HealthCheckConfig`
  configurations from an `UpdateService` request, the configurations are
  deleted from the service.

  </li> <li> If you omit an existing `HealthCheckCustomConfig` configuration
  from an `UpdateService` request, the configuration is not deleted from the
  service.

  </li> </ul> When you update settings for a service, AWS Cloud Map also
  updates the corresponding settings in all the records and health checks
  that were created by using the specified service.
  """
  def update_service(client, input, options \\ []) do
    request(client, "UpdateService", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "servicediscovery"}
    host = build_host("servicediscovery", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "Route53AutoNaming_v20170314.#{action}"}
    ]

    payload = AWS.JSON.encode!(input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    AWS.HTTP.request(:post, url, payload, headers, options, 200)
  end

  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
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
