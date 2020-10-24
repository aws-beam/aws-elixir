# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaStore do
  @moduledoc """
  An AWS Elemental MediaStore container is a namespace that holds folders and
  objects. You use a container endpoint to create, read, and delete objects.
  """

  @doc """
  Creates a storage container to hold objects. A container is similar to a
  bucket in the Amazon S3 service.
  """
  def create_container(client, input, options \\ []) do
    request(client, "CreateContainer", input, options)
  end

  @doc """
  Deletes the specified container. Before you make a `DeleteContainer`
  request, delete any objects in the container or in any folders in the
  container. You can delete only empty containers.
  """
  def delete_container(client, input, options \\ []) do
    request(client, "DeleteContainer", input, options)
  end

  @doc """
  Deletes the access policy that is associated with the specified container.
  """
  def delete_container_policy(client, input, options \\ []) do
    request(client, "DeleteContainerPolicy", input, options)
  end

  @doc """
  Deletes the cross-origin resource sharing (CORS) configuration information
  that is set for the container.

  To use this operation, you must have permission to perform the
  `MediaStore:DeleteCorsPolicy` action. The container owner has this
  permission by default and can grant this permission to others.
  """
  def delete_cors_policy(client, input, options \\ []) do
    request(client, "DeleteCorsPolicy", input, options)
  end

  @doc """
  Removes an object lifecycle policy from a container. It takes up to 20
  minutes for the change to take effect.
  """
  def delete_lifecycle_policy(client, input, options \\ []) do
    request(client, "DeleteLifecyclePolicy", input, options)
  end

  @doc """
  Deletes the metric policy that is associated with the specified container.
  If there is no metric policy associated with the container, MediaStore
  doesn't send metrics to CloudWatch.
  """
  def delete_metric_policy(client, input, options \\ []) do
    request(client, "DeleteMetricPolicy", input, options)
  end

  @doc """
  Retrieves the properties of the requested container. This request is
  commonly used to retrieve the endpoint of a container. An endpoint is a
  value assigned by the service when a new container is created. A
  container's endpoint does not change after it has been assigned. The
  `DescribeContainer` request returns a single `Container` object based on
  `ContainerName`. To return all `Container` objects that are associated with
  a specified AWS account, use `ListContainers`.
  """
  def describe_container(client, input, options \\ []) do
    request(client, "DescribeContainer", input, options)
  end

  @doc """
  Retrieves the access policy for the specified container. For information
  about the data that is included in an access policy, see the [AWS Identity
  and Access Management User
  Guide](https://aws.amazon.com/documentation/iam/).
  """
  def get_container_policy(client, input, options \\ []) do
    request(client, "GetContainerPolicy", input, options)
  end

  @doc """
  Returns the cross-origin resource sharing (CORS) configuration information
  that is set for the container.

  To use this operation, you must have permission to perform the
  `MediaStore:GetCorsPolicy` action. By default, the container owner has this
  permission and can grant it to others.
  """
  def get_cors_policy(client, input, options \\ []) do
    request(client, "GetCorsPolicy", input, options)
  end

  @doc """
  Retrieves the object lifecycle policy that is assigned to a container.
  """
  def get_lifecycle_policy(client, input, options \\ []) do
    request(client, "GetLifecyclePolicy", input, options)
  end

  @doc """
  Returns the metric policy for the specified container.
  """
  def get_metric_policy(client, input, options \\ []) do
    request(client, "GetMetricPolicy", input, options)
  end

  @doc """
  Lists the properties of all containers in AWS Elemental MediaStore.

  You can query to receive all the containers in one response. Or you can
  include the `MaxResults` parameter to receive a limited number of
  containers in each response. In this case, the response includes a token.
  To get the next set of containers, send the command again, this time with
  the `NextToken` parameter (with the returned token as its value). The next
  set of responses appears, with a token if there are still more containers
  to receive.

  See also `DescribeContainer`, which gets the properties of one container.
  """
  def list_containers(client, input, options \\ []) do
    request(client, "ListContainers", input, options)
  end

  @doc """
  Returns a list of the tags assigned to the specified container.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Creates an access policy for the specified container to restrict the users
  and clients that can access it. For information about the data that is
  included in an access policy, see the [AWS Identity and Access Management
  User Guide](https://aws.amazon.com/documentation/iam/).

  For this release of the REST API, you can create only one policy for a
  container. If you enter `PutContainerPolicy` twice, the second command
  modifies the existing policy.
  """
  def put_container_policy(client, input, options \\ []) do
    request(client, "PutContainerPolicy", input, options)
  end

  @doc """
  Sets the cross-origin resource sharing (CORS) configuration on a container
  so that the container can service cross-origin requests. For example, you
  might want to enable a request whose origin is http://www.example.com to
  access your AWS Elemental MediaStore container at my.example.container.com
  by using the browser's XMLHttpRequest capability.

  To enable CORS on a container, you attach a CORS policy to the container.
  In the CORS policy, you configure rules that identify origins and the HTTP
  methods that can be executed on your container. The policy can contain up
  to 398,000 characters. You can add up to 100 rules to a CORS policy. If
  more than one rule applies, the service uses the first applicable rule
  listed.

  To learn more about CORS, see [Cross-Origin Resource Sharing (CORS) in AWS
  Elemental
  MediaStore](https://docs.aws.amazon.com/mediastore/latest/ug/cors-policy.html).
  """
  def put_cors_policy(client, input, options \\ []) do
    request(client, "PutCorsPolicy", input, options)
  end

  @doc """
  Writes an object lifecycle policy to a container. If the container already
  has an object lifecycle policy, the service replaces the existing policy
  with the new policy. It takes up to 20 minutes for the change to take
  effect.

  For information about how to construct an object lifecycle policy, see
  [Components of an Object Lifecycle
  Policy](https://docs.aws.amazon.com/mediastore/latest/ug/policies-object-lifecycle-components.html).
  """
  def put_lifecycle_policy(client, input, options \\ []) do
    request(client, "PutLifecyclePolicy", input, options)
  end

  @doc """
  The metric policy that you want to add to the container. A metric policy
  allows AWS Elemental MediaStore to send metrics to Amazon CloudWatch. It
  takes up to 20 minutes for the new policy to take effect.
  """
  def put_metric_policy(client, input, options \\ []) do
    request(client, "PutMetricPolicy", input, options)
  end

  @doc """
  Starts access logging on the specified container. When you enable access
  logging on a container, MediaStore delivers access logs for objects stored
  in that container to Amazon CloudWatch Logs.
  """
  def start_access_logging(client, input, options \\ []) do
    request(client, "StartAccessLogging", input, options)
  end

  @doc """
  Stops access logging on the specified container. When you stop access
  logging on a container, MediaStore stops sending access logs to Amazon
  CloudWatch Logs. These access logs are not saved and are not retrievable.
  """
  def stop_access_logging(client, input, options \\ []) do
    request(client, "StopAccessLogging", input, options)
  end

  @doc """
  Adds tags to the specified AWS Elemental MediaStore container. Tags are
  key:value pairs that you can associate with AWS resources. For example, the
  tag key might be "customer" and the tag value might be "companyA." You can
  specify one or more tags to add to each container. You can add up to 50
  tags to each container. For more information about tagging, including
  naming and usage conventions, see [Tagging Resources in
  MediaStore](https://docs.aws.amazon.com/mediastore/latest/ug/tagging.html).
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Removes tags from the specified container. You can specify one or more tags
  to remove.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "mediastore"}
    host = build_host("mediastore", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "MediaStore_20170901.#{action}"}
    ]

    payload = AWS.JSON.encode!(input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(url, payload, headers, options)
  end

  defp post(url, payload, headers, options) do
    case AWS.HTTP.request(:post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %{status_code: 200, body: body} = response} ->
        {:ok, AWS.JSON.decode!(body), response}

      {:ok, %{body: body}} ->
        {:error, AWS.JSON.decode!(body)}

      error = {:error, _reason} -> error
    end
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
