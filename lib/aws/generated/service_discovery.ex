# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ServiceDiscovery do
  @moduledoc """
  Cloud Map

  With Cloud Map, you can configure public DNS, private DNS, or HTTP namespaces
  that your microservice applications run in.

  When an instance becomes available, you can call the Cloud Map API to register
  the instance with Cloud Map. For public or private DNS namespaces, Cloud Map
  automatically creates DNS records and an optional health check. Clients that
  submit public or private DNS queries, or HTTP requests, for the service receive
  an answer that contains up to eight healthy records.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: "ServiceDiscovery",
      api_version: "2017-03-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "servicediscovery",
      global?: false,
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
  same account, see [Cloud Map quotas](https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html)
  in the *Cloud Map Developer Guide*.
  """
  def create_http_namespace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateHttpNamespace", input, options)
  end

  @doc """
  Creates a private namespace based on DNS, which is visible only inside a
  specified Amazon VPC.

  The namespace defines your service naming scheme. For example, if you name your
  namespace `example.com` and name your service `backend`, the resulting DNS name
  for the service is `backend.example.com`. Service instances that are registered
  using a private DNS namespace can be discovered using either a
  `DiscoverInstances` request or using DNS. For the current quota on the number of
  namespaces that you can create using the same account, see [Cloud Map quotas](https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html)
  in the *Cloud Map Developer Guide*.
  """
  def create_private_dns_namespace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePrivateDnsNamespace", input, options)
  end

  @doc """
  Creates a public namespace based on DNS, which is visible on the internet.

  The namespace defines your service naming scheme. For example, if you name your
  namespace `example.com` and name your service `backend`, the resulting DNS name
  for the service is `backend.example.com`. You can discover instances that were
  registered with a public DNS namespace by using either a `DiscoverInstances`
  request or using DNS. For the current quota on the number of namespaces that you
  can create using the same account, see [Cloud Map quotas](https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html)
  in the *Cloud Map Developer Guide*.
  """
  def create_public_dns_namespace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePublicDnsNamespace", input, options)
  end

  @doc """
  Creates a service.

  This action defines the configuration for the following entities:

    * For public and private DNS namespaces, one of the following
  combinations of DNS records in Amazon Route 53:

      * `A`

      * `AAAA`

      * `A` and `AAAA`

      * `SRV`

      * `CNAME`

    * Optionally, a health check

  After you create the service, you can submit a
  [RegisterInstance](https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html) request, and Cloud Map uses the values in the configuration to create the
  specified entities.

  For the current quota on the number of instances that you can register using the
  same namespace and using the same service, see [Cloud Map
  quotas](https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html)
  in the *Cloud Map Developer Guide*.
  """
  def create_service(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateService", input, options)
  end

  @doc """
  Deletes a namespace from the current account.

  If the namespace still contains one or more services, the request fails.
  """
  def delete_namespace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteNamespace", input, options)
  end

  @doc """
  Deletes a specified service.

  If the service still contains one or more registered instances, the request
  fails.
  """
  def delete_service(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteService", input, options)
  end

  @doc """
  Deletes the Amazon Route 53 DNS records and health check, if any, that Cloud Map
  created for the specified instance.
  """
  def deregister_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterInstance", input, options)
  end

  @doc """
  Discovers registered instances for a specified namespace and service.

  You can use `DiscoverInstances` to discover instances for any type of namespace.
  For public and private DNS namespaces, you can also use DNS queries to discover
  instances.
  """
  def discover_instances(%Client{} = client, input, options \\ []) do
    meta = metadata() |> Map.put_new(:host_prefix, "data-")

    Request.request_post(client, meta, "DiscoverInstances", input, options)
  end

  @doc """
  Gets information about a specified instance.
  """
  def get_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetInstance", input, options)
  end

  @doc """
  Gets the current health status (`Healthy`, `Unhealthy`, or `Unknown`) of one or
  more instances that are associated with a specified service.

  There's a brief delay between when you register an instance and when the health
  status for the instance is available.
  """
  def get_instances_health_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetInstancesHealthStatus", input, options)
  end

  @doc """
  Gets information about a namespace.
  """
  def get_namespace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetNamespace", input, options)
  end

  @doc """
  Gets information about any operation that returns an operation ID in the
  response, such as a `CreateService` request.

  To get a list of operations that match specified criteria, see
  [ListOperations](https://docs.aws.amazon.com/cloud-map/latest/api/API_ListOperations.html).
  """
  def get_operation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetOperation", input, options)
  end

  @doc """
  Gets the settings for a specified service.
  """
  def get_service(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetService", input, options)
  end

  @doc """
  Lists summary information about the instances that you registered by using a
  specified service.
  """
  def list_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListInstances", input, options)
  end

  @doc """
  Lists summary information about the namespaces that were created by the current
  account.
  """
  def list_namespaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListNamespaces", input, options)
  end

  @doc """
  Lists operations that match the criteria that you specify.
  """
  def list_operations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListOperations", input, options)
  end

  @doc """
  Lists summary information for all the services that are associated with one or
  more specified namespaces.
  """
  def list_services(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListServices", input, options)
  end

  @doc """
  Lists tags for the specified resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Creates or updates one or more records and, optionally, creates a health check
  based on the settings in a specified service.

  When you submit a `RegisterInstance` request, the following occurs:

    * For each DNS record that you define in the service that's
  specified by `ServiceId`, a record is created or updated in the hosted zone
  that's associated with the corresponding namespace.

    * If the service includes `HealthCheckConfig`, a health check is
  created based on the settings in the health check configuration.

    * The health check, if any, is associated with each of the new or
  updated records.

  One `RegisterInstance` request must complete before you can submit another
  request and specify the same service ID and instance ID.

  For more information, see
  [CreateService](https://docs.aws.amazon.com/cloud-map/latest/api/API_CreateService.html).  When Cloud Map receives a DNS query for the specified DNS name, it returns the
  applicable value:

    * **If the health check is healthy**: returns all the records

    * **If the health check is unhealthy**: returns the applicable value
  for the last healthy instance

    * **If you didn't specify a health check configuration**: returns
  all the records

  For the current quota on the number of instances that you can register using the
  same namespace and using the same service, see [Cloud Map
  quotas](https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html)
  in the *Cloud Map Developer Guide*.
  """
  def register_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterInstance", input, options)
  end

  @doc """
  Adds one or more tags to the specified resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes one or more tags from the specified resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates an HTTP namespace.
  """
  def update_http_namespace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateHttpNamespace", input, options)
  end

  @doc """
  Submits a request to change the health status of a custom health check to
  healthy or unhealthy.

  You can use `UpdateInstanceCustomHealthStatus` to change the status only for
  custom health checks, which you define using `HealthCheckCustomConfig` when you
  create a service. You can't use it to change the status for Route 53 health
  checks, which you define using `HealthCheckConfig`.

  For more information, see
  [HealthCheckCustomConfig](https://docs.aws.amazon.com/cloud-map/latest/api/API_HealthCheckCustomConfig.html).
  """
  def update_instance_custom_health_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateInstanceCustomHealthStatus", input, options)
  end

  @doc """
  Updates a private DNS namespace.
  """
  def update_private_dns_namespace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePrivateDnsNamespace", input, options)
  end

  @doc """
  Updates a public DNS namespace.
  """
  def update_public_dns_namespace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdatePublicDnsNamespace", input, options)
  end

  @doc """
  Submits a request to perform the following operations:

    * Update the TTL setting for existing `DnsRecords` configurations

    * Add, update, or delete `HealthCheckConfig` for a specified service

  You can't add, update, or delete a `HealthCheckCustomConfig` configuration.

  For public and private DNS namespaces, note the following:

    * If you omit any existing `DnsRecords` or `HealthCheckConfig`
  configurations from an `UpdateService` request, the configurations are deleted
  from the service.

    * If you omit an existing `HealthCheckCustomConfig` configuration
  from an `UpdateService` request, the configuration isn't deleted from the
  service.

  When you update settings for a service, Cloud Map also updates the corresponding
  settings in all the records and health checks that were created by using the
  specified service.
  """
  def update_service(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateService", input, options)
  end
end
