# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.ECR do
  @moduledoc """
  Amazon EC2 Container Registry (Amazon ECR) is a managed AWS Docker registry
  service. Customers can use the familiar Docker CLI to push, pull, and
  manage images. Amazon ECR provides a secure, scalable, and reliable
  registry. Amazon ECR supports private Docker repositories with
  resource-based permissions using AWS IAM so that specific users or Amazon
  EC2 instances can access repositories and images. Developers can use the
  Docker CLI to author and manage images.
  """

  @doc """
  Check the availability of multiple image layers in a specified registry and
  repository.

  <note> This operation is used by the Amazon ECR proxy, and it is not
  intended for general use by customers. Use the `docker` CLI to pull, tag,
  and push images.

  </note>
  """
  def batch_check_layer_availability(client, input, options \\ []) do
    request(client, "BatchCheckLayerAvailability", input, options)
  end

  @doc """
  Deletes a list of specified images within a specified repository. Images
  are specified with either `imageTag` or `imageDigest`.
  """
  def batch_delete_image(client, input, options \\ []) do
    request(client, "BatchDeleteImage", input, options)
  end

  @doc """
  Gets detailed information for specified images within a specified
  repository. Images are specified with either `imageTag` or `imageDigest`.
  """
  def batch_get_image(client, input, options \\ []) do
    request(client, "BatchGetImage", input, options)
  end

  @doc """
  Inform Amazon ECR that the image layer upload for a specified registry,
  repository name, and upload ID, has completed. You can optionally provide a
  `sha256` digest of the image layer for data validation purposes.

  <note> This operation is used by the Amazon ECR proxy, and it is not
  intended for general use by customers. Use the `docker` CLI to pull, tag,
  and push images.

  </note>
  """
  def complete_layer_upload(client, input, options \\ []) do
    request(client, "CompleteLayerUpload", input, options)
  end

  @doc """
  Creates an image repository.
  """
  def create_repository(client, input, options \\ []) do
    request(client, "CreateRepository", input, options)
  end

  @doc """
  Deletes an existing image repository. If a repository contains images, you
  must use the `force` option to delete it.
  """
  def delete_repository(client, input, options \\ []) do
    request(client, "DeleteRepository", input, options)
  end

  @doc """
  Deletes the repository policy from a specified repository.
  """
  def delete_repository_policy(client, input, options \\ []) do
    request(client, "DeleteRepositoryPolicy", input, options)
  end

  @doc """
  Describes image repositories in a registry.
  """
  def describe_repositories(client, input, options \\ []) do
    request(client, "DescribeRepositories", input, options)
  end

  @doc """
  Retrieves a token that is valid for a specified registry for 12 hours. This
  command allows you to use the `docker` CLI to push and pull images with
  Amazon ECR. If you do not specify a registry, the default registry is
  assumed.

  The `authorizationToken` returned for each registry specified is a base64
  encoded string that can be decoded and used in a `docker login` command to
  authenticate to a registry. The AWS CLI offers an `aws ecr get-login`
  command that simplifies the login process.
  """
  def get_authorization_token(client, input, options \\ []) do
    request(client, "GetAuthorizationToken", input, options)
  end

  @doc """
  Retrieves the pre-signed Amazon S3 download URL corresponding to an image
  layer. You can only get URLs for image layers that are referenced in an
  image.

  <note> This operation is used by the Amazon ECR proxy, and it is not
  intended for general use by customers. Use the `docker` CLI to pull, tag,
  and push images.

  </note>
  """
  def get_download_url_for_layer(client, input, options \\ []) do
    request(client, "GetDownloadUrlForLayer", input, options)
  end

  @doc """
  Retrieves the repository policy for a specified repository.
  """
  def get_repository_policy(client, input, options \\ []) do
    request(client, "GetRepositoryPolicy", input, options)
  end

  @doc """
  Notify Amazon ECR that you intend to upload an image layer.

  <note> This operation is used by the Amazon ECR proxy, and it is not
  intended for general use by customers. Use the `docker` CLI to pull, tag,
  and push images.

  </note>
  """
  def initiate_layer_upload(client, input, options \\ []) do
    request(client, "InitiateLayerUpload", input, options)
  end

  @doc """
  Lists all the image IDs for a given repository.
  """
  def list_images(client, input, options \\ []) do
    request(client, "ListImages", input, options)
  end

  @doc """
  Creates or updates the image manifest associated with an image.

  <note> This operation is used by the Amazon ECR proxy, and it is not
  intended for general use by customers. Use the `docker` CLI to pull, tag,
  and push images.

  </note>
  """
  def put_image(client, input, options \\ []) do
    request(client, "PutImage", input, options)
  end

  @doc """
  Applies a repository policy on a specified repository to control access
  permissions.
  """
  def set_repository_policy(client, input, options \\ []) do
    request(client, "SetRepositoryPolicy", input, options)
  end

  @doc """
  Uploads an image layer part to Amazon ECR.

  <note> This operation is used by the Amazon ECR proxy, and it is not
  intended for general use by customers. Use the `docker` CLI to pull, tag,
  and push images.

  </note>
  """
  def upload_layer_part(client, input, options \\ []) do
    request(client, "UploadLayerPart", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "ecr"}
    host = get_host("ecr", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "AmazonEC2ContainerRegistry_V20150921.#{action}"}]
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
