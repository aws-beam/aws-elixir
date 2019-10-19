# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ECR do
  @moduledoc """
  Amazon Elastic Container Registry

  Amazon Elastic Container Registry (Amazon ECR) is a managed Docker registry
  service. Customers can use the familiar Docker CLI to push, pull, and
  manage images. Amazon ECR provides a secure, scalable, and reliable
  registry. Amazon ECR supports private Docker repositories with
  resource-based permissions using IAM so that specific users or Amazon EC2
  instances can access repositories and images. Developers can use the Docker
  CLI to author and manage images.
  """

  @doc """
  Check the availability of multiple image layers in a specified registry and
  repository.

  <note> This operation is used by the Amazon ECR proxy, and it is not
  intended for general use by customers for pulling and pushing images. In
  most cases, you should use the `docker` CLI to pull, tag, and push images.

  </note>
  """
  def batch_check_layer_availability(client, input, options \\ []) do
    request(client, "BatchCheckLayerAvailability", input, options)
  end

  @doc """
  Deletes a list of specified images within a specified repository. Images
  are specified with either `imageTag` or `imageDigest`.

  You can remove a tag from an image by specifying the image's tag in your
  request. When you remove the last tag from an image, the image is deleted
  from your repository.

  You can completely delete an image (and all of its tags) by specifying the
  image's digest in your request.
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
  Informs Amazon ECR that the image layer upload has completed for a
  specified registry, repository name, and upload ID. You can optionally
  provide a `sha256` digest of the image layer for data validation purposes.

  <note> This operation is used by the Amazon ECR proxy, and it is not
  intended for general use by customers for pulling and pushing images. In
  most cases, you should use the `docker` CLI to pull, tag, and push images.

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
  Deletes the specified lifecycle policy.
  """
  def delete_lifecycle_policy(client, input, options \\ []) do
    request(client, "DeleteLifecyclePolicy", input, options)
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
  Returns metadata about the images in a repository, including image size,
  image tags, and creation date.

  <note> Beginning with Docker version 1.9, the Docker client compresses
  image layers before pushing them to a V2 Docker registry. The output of the
  `docker images` command shows the uncompressed image size, so it may return
  a larger image size than the image sizes returned by `DescribeImages`.

  </note>
  """
  def describe_images(client, input, options \\ []) do
    request(client, "DescribeImages", input, options)
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
  intended for general use by customers for pulling and pushing images. In
  most cases, you should use the `docker` CLI to pull, tag, and push images.

  </note>
  """
  def get_download_url_for_layer(client, input, options \\ []) do
    request(client, "GetDownloadUrlForLayer", input, options)
  end

  @doc """
  Retrieves the specified lifecycle policy.
  """
  def get_lifecycle_policy(client, input, options \\ []) do
    request(client, "GetLifecyclePolicy", input, options)
  end

  @doc """
  Retrieves the results of the specified lifecycle policy preview request.
  """
  def get_lifecycle_policy_preview(client, input, options \\ []) do
    request(client, "GetLifecyclePolicyPreview", input, options)
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
  intended for general use by customers for pulling and pushing images. In
  most cases, you should use the `docker` CLI to pull, tag, and push images.

  </note>
  """
  def initiate_layer_upload(client, input, options \\ []) do
    request(client, "InitiateLayerUpload", input, options)
  end

  @doc """
  Lists all the image IDs for a given repository.

  You can filter images based on whether or not they are tagged by setting
  the `tagStatus` parameter to `TAGGED` or `UNTAGGED`. For example, you can
  filter your results to return only `UNTAGGED` images and then pipe that
  result to a `BatchDeleteImage` operation to delete them. Or, you can filter
  your results to return only `TAGGED` images to list all of the tags in your
  repository.
  """
  def list_images(client, input, options \\ []) do
    request(client, "ListImages", input, options)
  end

  @doc """
  List the tags for an Amazon ECR resource.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Creates or updates the image manifest and tags associated with an image.

  <note> This operation is used by the Amazon ECR proxy, and it is not
  intended for general use by customers for pulling and pushing images. In
  most cases, you should use the `docker` CLI to pull, tag, and push images.

  </note>
  """
  def put_image(client, input, options \\ []) do
    request(client, "PutImage", input, options)
  end

  @doc """
  Updates the image tag mutability settings for a repository.
  """
  def put_image_tag_mutability(client, input, options \\ []) do
    request(client, "PutImageTagMutability", input, options)
  end

  @doc """
  Creates or updates a lifecycle policy. For information about lifecycle
  policy syntax, see [Lifecycle Policy
  Template](https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html).
  """
  def put_lifecycle_policy(client, input, options \\ []) do
    request(client, "PutLifecyclePolicy", input, options)
  end

  @doc """
  Applies a repository policy on a specified repository to control access
  permissions. For more information, see [Amazon ECR Repository
  Policies](https://docs.aws.amazon.com/AmazonECR/latest/userguide/RepositoryPolicies.html)
  in the *Amazon Elastic Container Registry User Guide*.
  """
  def set_repository_policy(client, input, options \\ []) do
    request(client, "SetRepositoryPolicy", input, options)
  end

  @doc """
  Starts a preview of the specified lifecycle policy. This allows you to see
  the results before creating the lifecycle policy.
  """
  def start_lifecycle_policy_preview(client, input, options \\ []) do
    request(client, "StartLifecyclePolicyPreview", input, options)
  end

  @doc """
  Adds specified tags to a resource with the specified ARN. Existing tags on
  a resource are not changed if they are not specified in the request
  parameters.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Deletes specified tags from a resource.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Uploads an image layer part to Amazon ECR.

  <note> This operation is used by the Amazon ECR proxy, and it is not
  intended for general use by customers for pulling and pushing images. In
  most cases, you should use the `docker` CLI to pull, tag, and push images.

  </note>
  """
  def upload_layer_part(client, input, options \\ []) do
    request(client, "UploadLayerPart", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, action, input, options) do
    client = %{client | service: "api.ecr"}
    host = get_host("api.ecr", client)
    url = get_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AmazonEC2ContainerRegistry_V20150921.#{action}"},
      {"X-Amz-Security-Token", client.session_token}
    ]
    
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}
    
      {:ok, %HTTPoison.Response{status_code: 200, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}
    
      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
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
