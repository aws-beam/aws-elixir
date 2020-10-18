# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AppMesh do
  @moduledoc """
  AWS App Mesh is a service mesh based on the Envoy proxy that makes it easy
  to monitor and

  control microservices. App Mesh standardizes how your microservices
  communicate, giving you

  end-to-end visibility and helping to ensure high availability for your
  applications.

  App Mesh gives you consistent visibility and network traffic controls for
  every

  microservice in an application. You can use App Mesh with AWS Fargate,
  Amazon ECS, Amazon EKS,

  Kubernetes on AWS, and Amazon EC2.

  <note>

  App Mesh supports microservice applications that use service discovery
  naming for their

  components. For more information about service discovery on Amazon ECS, see
  [Service
  Discovery](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-discovery.html)
  in the *Amazon Elastic Container Service Developer Guide*. Kubernetes

  `kube-dns` and `coredns` are supported. For more information,

  see <a
  href="https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/">DNS

  for Services and Pods` in the Kubernetes documentation.

  </note>
  """

  @doc """
  Creates a gateway route.

  A gateway route is attached to a virtual gateway and routes traffic to an
  existing

  virtual service. If a route matches a request, it can distribute traffic to
  a target virtual service.

  For more information about gateway routes, see [Gateway
  routes](https://docs.aws.amazon.com/app-mesh/latest/userguide/gateway-routes.html).
  """
  def create_gateway_route(client, mesh_name, virtual_gateway_name, input, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualGateway/#{URI.encode(virtual_gateway_name)}/gatewayRoutes"
    headers = []
    {query_, input} =
      [
        {"meshOwner", "meshOwner"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a service mesh.

  A service mesh is a logical boundary for network traffic between services
  that are

  represented by resources within the mesh. After you create your service
  mesh, you can

  create virtual services, virtual nodes, virtual routers, and routes to
  distribute traffic

  between the applications in your mesh.

  For more information about service meshes, see [Service
  meshes](https://docs.aws.amazon.com/app-mesh/latest/userguide/meshes.html).
  """
  def create_mesh(client, input, options \\ []) do
    path_ = "/v20190125/meshes"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a route that is associated with a virtual router.

  You can route several different protocols and define a retry policy for a
  route.

  Traffic can be routed to one or more virtual nodes.

  For more information about routes, see
  [Routes](https://docs.aws.amazon.com/app-mesh/latest/userguide/routes.html).
  """
  def create_route(client, mesh_name, virtual_router_name, input, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualRouter/#{URI.encode(virtual_router_name)}/routes"
    headers = []
    {query_, input} =
      [
        {"meshOwner", "meshOwner"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a virtual gateway.

  A virtual gateway allows resources outside your mesh to communicate to
  resources that

  are inside your mesh. The virtual gateway represents an Envoy proxy running
  in an Amazon ECS

  task, in a Kubernetes service, or on an Amazon EC2 instance. Unlike a
  virtual node, which

  represents an Envoy running with an application, a virtual gateway
  represents Envoy deployed by itself.

  For more information about virtual gateways, see [Virtual
  gateways](https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_gateways.html).
  """
  def create_virtual_gateway(client, mesh_name, input, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualGateways"
    headers = []
    {query_, input} =
      [
        {"meshOwner", "meshOwner"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a virtual node within a service mesh.

  A virtual node acts as a logical pointer to a particular task group, such
  as an Amazon ECS

  service or a Kubernetes deployment. When you create a virtual node, you can
  specify the

  service discovery information for your task group, and whether the proxy
  running in a task

  group will communicate with other proxies using Transport Layer Security
  (TLS).

  You define a `listener` for any inbound traffic that your virtual node

  expects. Any virtual service that your virtual node expects to communicate
  to is specified

  as a `backend`.

  The response metadata for your new virtual node contains the `arn` that is

  associated with the virtual node. Set this value (either the full ARN or
  the truncated

  resource name: for example, `mesh/default/virtualNode/simpleapp`) as the

  `APPMESH_VIRTUAL_NODE_NAME` environment variable for your task group's
  Envoy

  proxy container in your task definition or pod spec. This is then mapped to
  the

  `node.id` and `node.cluster` Envoy parameters.

  <note>

  If you require your Envoy stats or tracing to use a different name, you can
  override

  the `node.cluster` value that is set by

  `APPMESH_VIRTUAL_NODE_NAME` with the

  `APPMESH_VIRTUAL_NODE_CLUSTER` environment variable.

  </note>

  For more information about virtual nodes, see [Virtual
  nodes](https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_nodes.html).
  """
  def create_virtual_node(client, mesh_name, input, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualNodes"
    headers = []
    {query_, input} =
      [
        {"meshOwner", "meshOwner"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a virtual router within a service mesh.

  Specify a `listener` for any inbound traffic that your virtual router

  receives. Create a virtual router for each protocol and port that you need
  to route.

  Virtual routers handle traffic for one or more virtual services within your
  mesh. After you

  create your virtual router, create and associate routes for your virtual
  router that direct

  incoming requests to different virtual nodes.

  For more information about virtual routers, see [Virtual
  routers](https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_routers.html).
  """
  def create_virtual_router(client, mesh_name, input, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualRouters"
    headers = []
    {query_, input} =
      [
        {"meshOwner", "meshOwner"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a virtual service within a service mesh.

  A virtual service is an abstraction of a real service that is provided by a
  virtual node

  directly or indirectly by means of a virtual router. Dependent services
  call your virtual

  service by its `virtualServiceName`, and those requests are routed to the

  virtual node or virtual router that is specified as the provider for the
  virtual

  service.

  For more information about virtual services, see [Virtual
  services](https://docs.aws.amazon.com/app-mesh/latest/userguide/virtual_services.html).
  """
  def create_virtual_service(client, mesh_name, input, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualServices"
    headers = []
    {query_, input} =
      [
        {"meshOwner", "meshOwner"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes an existing gateway route.
  """
  def delete_gateway_route(client, gateway_route_name, mesh_name, virtual_gateway_name, input, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualGateway/#{URI.encode(virtual_gateway_name)}/gatewayRoutes/#{URI.encode(gateway_route_name)}"
    headers = []
    {query_, input} =
      [
        {"meshOwner", "meshOwner"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes an existing service mesh.

  You must delete all resources (virtual services, routes, virtual routers,
  and virtual

  nodes) in the service mesh before you can delete the mesh itself.
  """
  def delete_mesh(client, mesh_name, input, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes an existing route.
  """
  def delete_route(client, mesh_name, route_name, virtual_router_name, input, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualRouter/#{URI.encode(virtual_router_name)}/routes/#{URI.encode(route_name)}"
    headers = []
    {query_, input} =
      [
        {"meshOwner", "meshOwner"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes an existing virtual gateway. You cannot delete a virtual gateway if
  any gateway

  routes are associated to it.
  """
  def delete_virtual_gateway(client, mesh_name, virtual_gateway_name, input, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualGateways/#{URI.encode(virtual_gateway_name)}"
    headers = []
    {query_, input} =
      [
        {"meshOwner", "meshOwner"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes an existing virtual node.

  You must delete any virtual services that list a virtual node as a service
  provider

  before you can delete the virtual node itself.
  """
  def delete_virtual_node(client, mesh_name, virtual_node_name, input, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualNodes/#{URI.encode(virtual_node_name)}"
    headers = []
    {query_, input} =
      [
        {"meshOwner", "meshOwner"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes an existing virtual router.

  You must delete any routes associated with the virtual router before you
  can delete the

  router itself.
  """
  def delete_virtual_router(client, mesh_name, virtual_router_name, input, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualRouters/#{URI.encode(virtual_router_name)}"
    headers = []
    {query_, input} =
      [
        {"meshOwner", "meshOwner"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes an existing virtual service.
  """
  def delete_virtual_service(client, mesh_name, virtual_service_name, input, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualServices/#{URI.encode(virtual_service_name)}"
    headers = []
    {query_, input} =
      [
        {"meshOwner", "meshOwner"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Describes an existing gateway route.
  """
  def describe_gateway_route(client, gateway_route_name, mesh_name, virtual_gateway_name, mesh_owner \\ nil, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualGateway/#{URI.encode(virtual_gateway_name)}/gatewayRoutes/#{URI.encode(gateway_route_name)}"
    headers = []
    query_ = []
    query_ = if !is_nil(mesh_owner) do
      [{"meshOwner", mesh_owner} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Describes an existing service mesh.
  """
  def describe_mesh(client, mesh_name, mesh_owner \\ nil, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}"
    headers = []
    query_ = []
    query_ = if !is_nil(mesh_owner) do
      [{"meshOwner", mesh_owner} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Describes an existing route.
  """
  def describe_route(client, mesh_name, route_name, virtual_router_name, mesh_owner \\ nil, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualRouter/#{URI.encode(virtual_router_name)}/routes/#{URI.encode(route_name)}"
    headers = []
    query_ = []
    query_ = if !is_nil(mesh_owner) do
      [{"meshOwner", mesh_owner} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Describes an existing virtual gateway.
  """
  def describe_virtual_gateway(client, mesh_name, virtual_gateway_name, mesh_owner \\ nil, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualGateways/#{URI.encode(virtual_gateway_name)}"
    headers = []
    query_ = []
    query_ = if !is_nil(mesh_owner) do
      [{"meshOwner", mesh_owner} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Describes an existing virtual node.
  """
  def describe_virtual_node(client, mesh_name, virtual_node_name, mesh_owner \\ nil, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualNodes/#{URI.encode(virtual_node_name)}"
    headers = []
    query_ = []
    query_ = if !is_nil(mesh_owner) do
      [{"meshOwner", mesh_owner} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Describes an existing virtual router.
  """
  def describe_virtual_router(client, mesh_name, virtual_router_name, mesh_owner \\ nil, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualRouters/#{URI.encode(virtual_router_name)}"
    headers = []
    query_ = []
    query_ = if !is_nil(mesh_owner) do
      [{"meshOwner", mesh_owner} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Describes an existing virtual service.
  """
  def describe_virtual_service(client, mesh_name, virtual_service_name, mesh_owner \\ nil, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualServices/#{URI.encode(virtual_service_name)}"
    headers = []
    query_ = []
    query_ = if !is_nil(mesh_owner) do
      [{"meshOwner", mesh_owner} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a list of existing gateway routes that are associated to a virtual

  gateway.
  """
  def list_gateway_routes(client, mesh_name, virtual_gateway_name, limit \\ nil, mesh_owner \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualGateway/#{URI.encode(virtual_gateway_name)}/gatewayRoutes"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(mesh_owner) do
      [{"meshOwner", mesh_owner} | query_]
    else
      query_
    end
    query_ = if !is_nil(limit) do
      [{"limit", limit} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a list of existing service meshes.
  """
  def list_meshes(client, limit \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v20190125/meshes"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(limit) do
      [{"limit", limit} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a list of existing routes in a service mesh.
  """
  def list_routes(client, mesh_name, virtual_router_name, limit \\ nil, mesh_owner \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualRouter/#{URI.encode(virtual_router_name)}/routes"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(mesh_owner) do
      [{"meshOwner", mesh_owner} | query_]
    else
      query_
    end
    query_ = if !is_nil(limit) do
      [{"limit", limit} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  List the tags for an App Mesh resource.
  """
  def list_tags_for_resource(client, limit \\ nil, next_token \\ nil, resource_arn, options \\ []) do
    path_ = "/v20190125/tags"
    headers = []
    query_ = []
    query_ = if !is_nil(resource_arn) do
      [{"resourceArn", resource_arn} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(limit) do
      [{"limit", limit} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a list of existing virtual gateways in a service mesh.
  """
  def list_virtual_gateways(client, mesh_name, limit \\ nil, mesh_owner \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualGateways"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(mesh_owner) do
      [{"meshOwner", mesh_owner} | query_]
    else
      query_
    end
    query_ = if !is_nil(limit) do
      [{"limit", limit} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a list of existing virtual nodes.
  """
  def list_virtual_nodes(client, mesh_name, limit \\ nil, mesh_owner \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualNodes"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(mesh_owner) do
      [{"meshOwner", mesh_owner} | query_]
    else
      query_
    end
    query_ = if !is_nil(limit) do
      [{"limit", limit} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a list of existing virtual routers in a service mesh.
  """
  def list_virtual_routers(client, mesh_name, limit \\ nil, mesh_owner \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualRouters"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(mesh_owner) do
      [{"meshOwner", mesh_owner} | query_]
    else
      query_
    end
    query_ = if !is_nil(limit) do
      [{"limit", limit} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a list of existing virtual services in a service mesh.
  """
  def list_virtual_services(client, mesh_name, limit \\ nil, mesh_owner \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualServices"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(mesh_owner) do
      [{"meshOwner", mesh_owner} | query_]
    else
      query_
    end
    query_ = if !is_nil(limit) do
      [{"limit", limit} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Associates the specified tags to a resource with the specified
  `resourceArn`.

  If existing tags on a resource aren't specified in the request parameters,
  they aren't

  changed. When a resource is deleted, the tags associated with that resource
  are also

  deleted.
  """
  def tag_resource(client, input, options \\ []) do
    path_ = "/v20190125/tag"
    headers = []
    {query_, input} =
      [
        {"resourceArn", "resourceArn"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes specified tags from a resource.
  """
  def untag_resource(client, input, options \\ []) do
    path_ = "/v20190125/untag"
    headers = []
    {query_, input} =
      [
        {"resourceArn", "resourceArn"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates an existing gateway route that is associated to a specified virtual
  gateway in a

  service mesh.
  """
  def update_gateway_route(client, gateway_route_name, mesh_name, virtual_gateway_name, input, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualGateway/#{URI.encode(virtual_gateway_name)}/gatewayRoutes/#{URI.encode(gateway_route_name)}"
    headers = []
    {query_, input} =
      [
        {"meshOwner", "meshOwner"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates an existing service mesh.
  """
  def update_mesh(client, mesh_name, input, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates an existing route for a specified service mesh and virtual router.
  """
  def update_route(client, mesh_name, route_name, virtual_router_name, input, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualRouter/#{URI.encode(virtual_router_name)}/routes/#{URI.encode(route_name)}"
    headers = []
    {query_, input} =
      [
        {"meshOwner", "meshOwner"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates an existing virtual gateway in a specified service mesh.
  """
  def update_virtual_gateway(client, mesh_name, virtual_gateway_name, input, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualGateways/#{URI.encode(virtual_gateway_name)}"
    headers = []
    {query_, input} =
      [
        {"meshOwner", "meshOwner"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates an existing virtual node in a specified service mesh.
  """
  def update_virtual_node(client, mesh_name, virtual_node_name, input, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualNodes/#{URI.encode(virtual_node_name)}"
    headers = []
    {query_, input} =
      [
        {"meshOwner", "meshOwner"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates an existing virtual router in a specified service mesh.
  """
  def update_virtual_router(client, mesh_name, virtual_router_name, input, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualRouters/#{URI.encode(virtual_router_name)}"
    headers = []
    {query_, input} =
      [
        {"meshOwner", "meshOwner"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates an existing virtual service in a specified service mesh.
  """
  def update_virtual_service(client, mesh_name, virtual_service_name, input, options \\ []) do
    path_ = "/v20190125/meshes/#{URI.encode(mesh_name)}/virtualServices/#{URI.encode(virtual_service_name)}"
    headers = []
    {query_, input} =
      [
        {"meshOwner", "meshOwner"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "appmesh"}
    host = build_host("appmesh", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    {client, fun} = Application.get_env(:aws_elixir, :http_client, {Aws.Internal.HttpClient, :request})
    apply(client, fun, [method, url, payload, headers, options, success_status_code])
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

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: encode!(input), else: ""
  end

  defp encode!(input) do
    {encoder, fun} = Application.get_env(:aws_elixir, :json_encoder, {Poison, :encode!})
    apply(encoder, fun, [input])
  end
end
