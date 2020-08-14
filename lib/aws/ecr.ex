# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ECR do
  @moduledoc """
  Amazon Elastic Container Registry

  Amazon Elastic Container Registry (Amazon ECR) is a managed container image
  registry service. Customers can use the familiar Docker CLI, or their
  preferred client, to push, pull, and manage images. Amazon ECR provides a
  secure, scalable, and reliable registry for your Docker or Open Container
  Initiative (OCI) images. Amazon ECR supports private repositories with
  resource-based permissions using IAM so that specific users or Amazon EC2
  instances can access repositories and images.
  """

  @doc """
  Checks the availability of one or more image layers in a repository.

  When an image is pushed to a repository, each image layer is checked to
  verify if it has been uploaded before. If it has been uploaded, then the
  image layer is skipped.

  <note> This operation is used by the Amazon ECR proxy and is not generally
  used by customers for pulling and pushing images. In most cases, you should
  use the `docker` CLI to pull, tag, and push images.

  </note>
  """
  def batch_check_layer_availability(client, input, options \\ []) do
    request(client, "BatchCheckLayerAvailability", input, options)
  end

  @doc """
  Deletes a list of specified images within a repository. Images are
  specified with either an `imageTag` or `imageDigest`.

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
  Gets detailed information for an image. Images are specified with either an
  `imageTag` or `imageDigest`.

  When an image is pulled, the BatchGetImage API is called once to retrieve
  the image manifest.
  """
  def batch_get_image(client, input, options \\ []) do
    request(client, "BatchGetImage", input, options)
  end

  @doc """
  Informs Amazon ECR that the image layer upload has completed for a
  specified registry, repository name, and upload ID. You can optionally
  provide a `sha256` digest of the image layer for data validation purposes.

  When an image is pushed, the CompleteLayerUpload API is called once per
  each new image layer to verify that the upload has completed.

  <note> This operation is used by the Amazon ECR proxy and is not generally
  used by customers for pulling and pushing images. In most cases, you should
  use the `docker` CLI to pull, tag, and push images.

  </note>
  """
  def complete_layer_upload(client, input, options \\ []) do
    request(client, "CompleteLayerUpload", input, options)
  end

  @doc """
  Creates a repository. For more information, see [Amazon ECR
  Repositories](https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html)
  in the *Amazon Elastic Container Registry User Guide*.
  """
  def create_repository(client, input, options \\ []) do
    request(client, "CreateRepository", input, options)
  end

  @doc """
  Deletes the lifecycle policy associated with the specified repository.
  """
  def delete_lifecycle_policy(client, input, options \\ []) do
    request(client, "DeleteLifecyclePolicy", input, options)
  end

  @doc """
  Deletes a repository. If the repository contains images, you must either
  delete all images in the repository or use the `force` option to delete the
  repository.
  """
  def delete_repository(client, input, options \\ []) do
    request(client, "DeleteRepository", input, options)
  end

  @doc """
  Deletes the repository policy associated with the specified repository.
  """
  def delete_repository_policy(client, input, options \\ []) do
    request(client, "DeleteRepositoryPolicy", input, options)
  end

  @doc """
  Returns the scan findings for the specified image.
  """
  def describe_image_scan_findings(client, input, options \\ []) do
    request(client, "DescribeImageScanFindings", input, options)
  end

  @doc """
  Returns metadata about the images in a repository.

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
  Retrieves an authorization token. An authorization token represents your
  IAM authentication credentials and can be used to access any Amazon ECR
  registry that your IAM principal has access to. The authorization token is
  valid for 12 hours.

  The `authorizationToken` returned is a base64 encoded string that can be
  decoded and used in a `docker login` command to authenticate to a registry.
  The AWS CLI offers an `get-login-password` command that simplifies the
  login process. For more information, see [Registry
  Authentication](https://docs.aws.amazon.com/AmazonECR/latest/userguide/Registries.html#registry_auth)
  in the *Amazon Elastic Container Registry User Guide*.
  """
  def get_authorization_token(client, input, options \\ []) do
    request(client, "GetAuthorizationToken", input, options)
  end

  @doc """
  Retrieves the pre-signed Amazon S3 download URL corresponding to an image
  layer. You can only get URLs for image layers that are referenced in an
  image.

  When an image is pulled, the GetDownloadUrlForLayer API is called once per
  image layer that is not already cached.

  <note> This operation is used by the Amazon ECR proxy and is not generally
  used by customers for pulling and pushing images. In most cases, you should
  use the `docker` CLI to pull, tag, and push images.

  </note>
  """
  def get_download_url_for_layer(client, input, options \\ []) do
    request(client, "GetDownloadUrlForLayer", input, options)
  end

  @doc """
  Retrieves the lifecycle policy for the specified repository.
  """
  def get_lifecycle_policy(client, input, options \\ []) do
    request(client, "GetLifecyclePolicy", input, options)
  end

  @doc """
  Retrieves the results of the lifecycle policy preview request for the
  specified repository.
  """
  def get_lifecycle_policy_preview(client, input, options \\ []) do
    request(client, "GetLifecyclePolicyPreview", input, options)
  end

  @doc """
  Retrieves the repository policy for the specified repository.
  """
  def get_repository_policy(client, input, options \\ []) do
    request(client, "GetRepositoryPolicy", input, options)
  end

  @doc """
  Notifies Amazon ECR that you intend to upload an image layer.

  When an image is pushed, the InitiateLayerUpload API is called once per
  image layer that has not already been uploaded. Whether or not an image
  layer has been uploaded is determined by the BatchCheckLayerAvailability
  API action.

  <note> This operation is used by the Amazon ECR proxy and is not generally
  used by customers for pulling and pushing images. In most cases, you should
  use the `docker` CLI to pull, tag, and push images.

  </note>
  """
  def initiate_layer_upload(client, input, options \\ []) do
    request(client, "InitiateLayerUpload", input, options)
  end

  @doc """
  Lists all the image IDs for the specified repository.

  You can filter images based on whether or not they are tagged by using the
  `tagStatus` filter and specifying either `TAGGED`, `UNTAGGED` or `ANY`. For
  example, you can filter your results to return only `UNTAGGED` images and
  then pipe that result to a `BatchDeleteImage` operation to delete them. Or,
  you can filter your results to return only `TAGGED` images to list all of
  the tags in your repository.
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

  When an image is pushed and all new image layers have been uploaded, the
  PutImage API is called once to create or update the image manifest and the
  tags associated with the image.

  <note> This operation is used by the Amazon ECR proxy and is not generally
  used by customers for pulling and pushing images. In most cases, you should
  use the `docker` CLI to pull, tag, and push images.

  </note>
  """
  def put_image(client, input, options \\ []) do
    request(client, "PutImage", input, options)
  end

  @doc """
  Updates the image scanning configuration for the specified repository.
  """
  def put_image_scanning_configuration(client, input, options \\ []) do
    request(client, "PutImageScanningConfiguration", input, options)
  end

  @doc """
  Updates the image tag mutability settings for the specified repository. For
  more information, see [Image Tag
  Mutability](https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-tag-mutability.html)
  in the *Amazon Elastic Container Registry User Guide*.
  """
  def put_image_tag_mutability(client, input, options \\ []) do
    request(client, "PutImageTagMutability", input, options)
  end

  @doc """
  Creates or updates the lifecycle policy for the specified repository. For
  more information, see [Lifecycle Policy
  Template](https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html).
  """
  def put_lifecycle_policy(client, input, options \\ []) do
    request(client, "PutLifecyclePolicy", input, options)
  end

  @doc """
  Applies a repository policy to the specified repository to control access
  permissions. For more information, see [Amazon ECR Repository
  Policies](https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policies.html)
  in the *Amazon Elastic Container Registry User Guide*.
  """
  def set_repository_policy(client, input, options \\ []) do
    request(client, "SetRepositoryPolicy", input, options)
  end

  @doc """
  Starts an image vulnerability scan. An image scan can only be started once
  per day on an individual image. This limit includes if an image was scanned
  on initial push. For more information, see [Image
  Scanning](https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html)
  in the *Amazon Elastic Container Registry User Guide*.
  """
  def start_image_scan(client, input, options \\ []) do
    request(client, "StartImageScan", input, options)
  end

  @doc """
  Starts a preview of a lifecycle policy for the specified repository. This
  allows you to see the results before associating the lifecycle policy with
  the repository.
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

  When an image is pushed, each new image layer is uploaded in parts. The
  maximum size of each image layer part can be 20971520 bytes (or about
  20MB). The UploadLayerPart API is called once per each new image layer
  part.

  <note> This operation is used by the Amazon ECR proxy and is not generally
  used by customers for pulling and pushing images. In most cases, you should
  use the `docker` CLI to pull, tag, and push images.

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
    client = %{client | service: "ecr"}
    host = get_host("api.ecr", client)
    url = get_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AmazonEC2ContainerRegistry_V20150921.#{action}"}
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

  defp get_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp get_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end
end
