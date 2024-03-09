# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ECRPUBLIC do
  @moduledoc """
  Amazon Elastic Container Registry Public

  Amazon Elastic Container Registry Public (Amazon ECR Public) is a managed
  container image registry service.

  Amazon ECR provides both
  public and private registries to host your container images. You can use the
  Docker CLI or
  your preferred client to push, pull, and manage images. Amazon ECR provides a
  secure, scalable,
  and reliable registry for your Docker or Open Container Initiative (OCI) images.
  Amazon ECR
  supports public repositories with this API. For information about the Amazon ECR
  API for private
  repositories, see [Amazon Elastic Container Registry API Reference](https://docs.aws.amazon.com/AmazonECR/latest/APIReference/Welcome.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2020-10-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.ecr-public",
      global?: false,
      protocol: "json",
      service_id: "ECR PUBLIC",
      signature_version: "v4",
      signing_name: "ecr-public",
      target_prefix: "SpencerFrontendService"
    }
  end

  @doc """
  Checks the availability of one or more image layers that are within a repository
  in a
  public registry.

  When an image is pushed to a repository, each image layer is checked to
  verify if it has been uploaded before. If it has been uploaded, then the image
  layer is
  skipped.

  This operation is used by the Amazon ECR proxy and is not generally used by
  customers for pulling and pushing images. In most cases, you should use the
  `docker` CLI to pull, tag, and push images.
  """
  def batch_check_layer_availability(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchCheckLayerAvailability", input, options)
  end

  @doc """
  Deletes a list of specified images that are within a repository in a public
  registry.

  Images are specified with either an `imageTag` or
  `imageDigest`.

  You can remove a tag from an image by specifying the image's tag in your
  request. When
  you remove the last tag from an image, the image is deleted from your
  repository.

  You can completely delete an image (and all of its tags) by specifying the
  digest of the
  image in your request.
  """
  def batch_delete_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDeleteImage", input, options)
  end

  @doc """
  Informs Amazon ECR that the image layer upload is complete for a specified
  public registry,
  repository name, and upload ID.

  You can optionally provide a `sha256` digest of
  the image layer for data validation purposes.

  When an image is pushed, the CompleteLayerUpload API is called once for each new
  image
  layer to verify that the upload is complete.

  This operation is used by the Amazon ECR proxy and is not generally used by
  customers for pulling and pushing images. In most cases, you should use the
  `docker` CLI to pull, tag, and push images.
  """
  def complete_layer_upload(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CompleteLayerUpload", input, options)
  end

  @doc """
  Creates a repository in a public registry.

  For more information, see [Amazon ECR repositories](https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html)
  in the *Amazon Elastic Container Registry User Guide*.
  """
  def create_repository(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRepository", input, options)
  end

  @doc """
  Deletes a repository in a public registry.

  If the repository contains images, you must
  either manually delete all images in the repository or use the `force` option.
  This option deletes all images on your behalf before deleting the repository.
  """
  def delete_repository(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRepository", input, options)
  end

  @doc """
  Deletes the repository policy that's associated with the specified repository.
  """
  def delete_repository_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRepositoryPolicy", input, options)
  end

  @doc """
  Returns the image tag details for a repository in a public registry.
  """
  def describe_image_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeImageTags", input, options)
  end

  @doc """
  Returns metadata that's related to the images in a repository in a public
  registry.

  Beginning with Docker version 1.9, the Docker client compresses image layers
  before
  pushing them to a V2 Docker registry. The output of the `docker images`
  command shows the uncompressed image size. Therefore, it might return a larger
  image
  size than the image sizes that are returned by `DescribeImages`.
  """
  def describe_images(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeImages", input, options)
  end

  @doc """
  Returns details for a public registry.
  """
  def describe_registries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRegistries", input, options)
  end

  @doc """
  Describes repositories that are in a public registry.
  """
  def describe_repositories(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRepositories", input, options)
  end

  @doc """
  Retrieves an authorization token.

  An authorization token represents your IAM
  authentication credentials. You can use it to access any Amazon ECR registry
  that your IAM
  principal has access to. The authorization token is valid for 12 hours. This API
  requires
  the `ecr-public:GetAuthorizationToken` and
  `sts:GetServiceBearerToken` permissions.
  """
  def get_authorization_token(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAuthorizationToken", input, options)
  end

  @doc """
  Retrieves catalog metadata for a public registry.
  """
  def get_registry_catalog_data(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRegistryCatalogData", input, options)
  end

  @doc """
  Retrieve catalog metadata for a repository in a public registry.

  This metadata is
  displayed publicly in the Amazon ECR Public Gallery.
  """
  def get_repository_catalog_data(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRepositoryCatalogData", input, options)
  end

  @doc """
  Retrieves the repository policy for the specified repository.
  """
  def get_repository_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRepositoryPolicy", input, options)
  end

  @doc """
  Notifies Amazon ECR that you intend to upload an image layer.

  When an image is pushed, the InitiateLayerUpload API is called once for each
  image layer
  that hasn't already been uploaded. Whether an image layer uploads is determined
  by the
  BatchCheckLayerAvailability API action.

  This operation is used by the Amazon ECR proxy and is not generally used by
  customers for pulling and pushing images. In most cases, you should use the
  `docker` CLI to pull, tag, and push images.
  """
  def initiate_layer_upload(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "InitiateLayerUpload", input, options)
  end

  @doc """
  List the tags for an Amazon ECR Public resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Creates or updates the image manifest and tags that are associated with an
  image.

  When an image is pushed and all new image layers have been uploaded, the
  PutImage API is
  called once to create or update the image manifest and the tags that are
  associated with
  the image.

  This operation is used by the Amazon ECR proxy and is not generally used by
  customers for pulling and pushing images. In most cases, you should use the
  `docker` CLI to pull, tag, and push images.
  """
  def put_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutImage", input, options)
  end

  @doc """
  Create or update the catalog data for a public registry.
  """
  def put_registry_catalog_data(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutRegistryCatalogData", input, options)
  end

  @doc """
  Creates or updates the catalog data for a repository in a public registry.
  """
  def put_repository_catalog_data(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutRepositoryCatalogData", input, options)
  end

  @doc """
  Applies a repository policy to the specified public repository to control access
  permissions.

  For more information, see [Amazon ECR Repository Policies](https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policies.html)
  in the *Amazon Elastic Container Registry User Guide*.
  """
  def set_repository_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetRepositoryPolicy", input, options)
  end

  @doc """
  Associates the specified tags to a resource with the specified `resourceArn`.

  If existing tags on a resource aren't specified in the request parameters, they
  aren't
  changed. When a resource is deleted, the tags associated with that resource are
  also
  deleted.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Deletes specified tags from a resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Uploads an image layer part to Amazon ECR.

  When an image is pushed, each new image layer is uploaded in parts. The maximum
  size of
  each image layer part can be 20971520 bytes (about 20MB). The UploadLayerPart
  API is called
  once for each new image layer part.

  This operation is used by the Amazon ECR proxy and is not generally used by
  customers for pulling and pushing images. In most cases, you should use the
  `docker` CLI to pull, tag, and push images.
  """
  def upload_layer_part(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UploadLayerPart", input, options)
  end
end
