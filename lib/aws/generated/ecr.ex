# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ECR do
  @moduledoc """
  Amazon Elastic Container Registry

  Amazon Elastic Container Registry (Amazon ECR) is a managed container image
  registry service.

  Customers can use the familiar Docker CLI, or their preferred client, to push,
  pull, and manage images. Amazon ECR provides a secure, scalable, and reliable
  registry for your Docker or Open Container Initiative (OCI) images. Amazon ECR
  supports private repositories with resource-based permissions using IAM so that
  specific users or Amazon EC2 instances can access repositories and images.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: "Amazon ECR",
      api_version: "2015-09-21",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.ecr",
      global?: false,
      protocol: "json",
      service_id: "ECR",
      signature_version: "v4",
      signing_name: "ecr",
      target_prefix: "AmazonEC2ContainerRegistry_V20150921"
    }
  end

  @doc """
  Checks the availability of one or more image layers in a repository.

  When an image is pushed to a repository, each image layer is checked to verify
  if it has been uploaded before. If it has been uploaded, then the image layer is
  skipped.

  This operation is used by the Amazon ECR proxy and is not generally used by
  customers for pulling and pushing images. In most cases, you should use the
  `docker` CLI to pull, tag, and push images.
  """
  def batch_check_layer_availability(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchCheckLayerAvailability", input, options)
  end

  @doc """
  Deletes a list of specified images within a repository.

  Images are specified with either an `imageTag` or `imageDigest`.

  You can remove a tag from an image by specifying the image's tag in your
  request. When you remove the last tag from an image, the image is deleted from
  your repository.

  You can completely delete an image (and all of its tags) by specifying the
  image's digest in your request.
  """
  def batch_delete_image(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchDeleteImage", input, options)
  end

  @doc """
  Gets detailed information for an image.

  Images are specified with either an `imageTag` or `imageDigest`.

  When an image is pulled, the BatchGetImage API is called once to retrieve the
  image manifest.
  """
  def batch_get_image(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchGetImage", input, options)
  end

  @doc """
  Informs Amazon ECR that the image layer upload has completed for a specified
  registry, repository name, and upload ID.

  You can optionally provide a `sha256` digest of the image layer for data
  validation purposes.

  When an image is pushed, the CompleteLayerUpload API is called once per each new
  image layer to verify that the upload has completed.

  This operation is used by the Amazon ECR proxy and is not generally used by
  customers for pulling and pushing images. In most cases, you should use the
  `docker` CLI to pull, tag, and push images.
  """
  def complete_layer_upload(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CompleteLayerUpload", input, options)
  end

  @doc """
  Creates a repository.

  For more information, see [Amazon ECR Repositories](https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html)
  in the *Amazon Elastic Container Registry User Guide*.
  """
  def create_repository(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateRepository", input, options)
  end

  @doc """
  Deletes the lifecycle policy associated with the specified repository.
  """
  def delete_lifecycle_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteLifecyclePolicy", input, options)
  end

  @doc """
  Deletes the registry permissions policy.
  """
  def delete_registry_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteRegistryPolicy", input, options)
  end

  @doc """
  Deletes a repository.

  If the repository contains images, you must either delete all images in the
  repository or use the `force` option to delete the repository.
  """
  def delete_repository(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteRepository", input, options)
  end

  @doc """
  Deletes the repository policy associated with the specified repository.
  """
  def delete_repository_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteRepositoryPolicy", input, options)
  end

  @doc """
  Returns the scan findings for the specified image.
  """
  def describe_image_scan_findings(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeImageScanFindings", input, options)
  end

  @doc """
  Returns metadata about the images in a repository.

  Beginning with Docker version 1.9, the Docker client compresses image layers
  before pushing them to a V2 Docker registry. The output of the `docker images`
  command shows the uncompressed image size, so it may return a larger image size
  than the image sizes returned by `DescribeImages`.
  """
  def describe_images(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeImages", input, options)
  end

  @doc """
  Describes the settings for a registry.

  The replication configuration for a repository can be created or updated with
  the `PutReplicationConfiguration` API action.
  """
  def describe_registry(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeRegistry", input, options)
  end

  @doc """
  Describes image repositories in a registry.
  """
  def describe_repositories(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeRepositories", input, options)
  end

  @doc """
  Retrieves an authorization token.

  An authorization token represents your IAM authentication credentials and can be
  used to access any Amazon ECR registry that your IAM principal has access to.
  The authorization token is valid for 12 hours.

  The `authorizationToken` returned is a base64 encoded string that can be decoded
  and used in a `docker login` command to authenticate to a registry. The AWS CLI
  offers an `get-login-password` command that simplifies the login process. For
  more information, see [Registry Authentication](https://docs.aws.amazon.com/AmazonECR/latest/userguide/Registries.html#registry_auth)
  in the *Amazon Elastic Container Registry User Guide*.
  """
  def get_authorization_token(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetAuthorizationToken", input, options)
  end

  @doc """
  Retrieves the pre-signed Amazon S3 download URL corresponding to an image layer.

  You can only get URLs for image layers that are referenced in an image.

  When an image is pulled, the GetDownloadUrlForLayer API is called once per image
  layer that is not already cached.

  This operation is used by the Amazon ECR proxy and is not generally used by
  customers for pulling and pushing images. In most cases, you should use the
  `docker` CLI to pull, tag, and push images.
  """
  def get_download_url_for_layer(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetDownloadUrlForLayer", input, options)
  end

  @doc """
  Retrieves the lifecycle policy for the specified repository.
  """
  def get_lifecycle_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetLifecyclePolicy", input, options)
  end

  @doc """
  Retrieves the results of the lifecycle policy preview request for the specified
  repository.
  """
  def get_lifecycle_policy_preview(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetLifecyclePolicyPreview", input, options)
  end

  @doc """
  Retrieves the permissions policy for a registry.
  """
  def get_registry_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetRegistryPolicy", input, options)
  end

  @doc """
  Retrieves the repository policy for the specified repository.
  """
  def get_repository_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetRepositoryPolicy", input, options)
  end

  @doc """
  Notifies Amazon ECR that you intend to upload an image layer.

  When an image is pushed, the InitiateLayerUpload API is called once per image
  layer that has not already been uploaded. Whether or not an image layer has been
  uploaded is determined by the BatchCheckLayerAvailability API action.

  This operation is used by the Amazon ECR proxy and is not generally used by
  customers for pulling and pushing images. In most cases, you should use the
  `docker` CLI to pull, tag, and push images.
  """
  def initiate_layer_upload(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "InitiateLayerUpload", input, options)
  end

  @doc """
  Lists all the image IDs for the specified repository.

  You can filter images based on whether or not they are tagged by using the
  `tagStatus` filter and specifying either `TAGGED`, `UNTAGGED` or `ANY`. For
  example, you can filter your results to return only `UNTAGGED` images and then
  pipe that result to a `BatchDeleteImage` operation to delete them. Or, you can
  filter your results to return only `TAGGED` images to list all of the tags in
  your repository.
  """
  def list_images(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListImages", input, options)
  end

  @doc """
  List the tags for an Amazon ECR resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Creates or updates the image manifest and tags associated with an image.

  When an image is pushed and all new image layers have been uploaded, the
  PutImage API is called once to create or update the image manifest and the tags
  associated with the image.

  This operation is used by the Amazon ECR proxy and is not generally used by
  customers for pulling and pushing images. In most cases, you should use the
  `docker` CLI to pull, tag, and push images.
  """
  def put_image(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutImage", input, options)
  end

  @doc """
  Updates the image scanning configuration for the specified repository.
  """
  def put_image_scanning_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutImageScanningConfiguration", input, options)
  end

  @doc """
  Updates the image tag mutability settings for the specified repository.

  For more information, see [Image Tag Mutability](https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-tag-mutability.html)
  in the *Amazon Elastic Container Registry User Guide*.
  """
  def put_image_tag_mutability(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutImageTagMutability", input, options)
  end

  @doc """
  Creates or updates the lifecycle policy for the specified repository.

  For more information, see [Lifecycle Policy Template](https://docs.aws.amazon.com/AmazonECR/latest/userguide/LifecyclePolicies.html).
  """
  def put_lifecycle_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutLifecyclePolicy", input, options)
  end

  @doc """
  Creates or updates the permissions policy for your registry.

  A registry policy is used to specify permissions for another AWS account and is
  used when configuring cross-account replication. For more information, see
  [Registry permissions](https://docs.aws.amazon.com/AmazonECR/latest/userguide/registry-permissions.html)
  in the *Amazon Elastic Container Registry User Guide*.
  """
  def put_registry_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutRegistryPolicy", input, options)
  end

  @doc """
  Creates or updates the replication configuration for a registry.

  The existing replication configuration for a repository can be retrieved with
  the `DescribeRegistry` API action. The first time the
  PutReplicationConfiguration API is called, a service-linked IAM role is created
  in your account for the replication process. For more information, see [Using Service-Linked Roles for Amazon
  ECR](https://docs.aws.amazon.com/AmazonECR/latest/userguide/using-service-linked-roles.html)
  in the *Amazon Elastic Container Registry User Guide*.

  When configuring cross-account replication, the destination account must grant
  the source account permission to replicate. This permission is controlled using
  a registry permissions policy. For more information, see `PutRegistryPolicy`.
  """
  def put_replication_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutReplicationConfiguration", input, options)
  end

  @doc """
  Applies a repository policy to the specified repository to control access
  permissions.

  For more information, see [Amazon ECR Repository Policies](https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policies.html)
  in the *Amazon Elastic Container Registry User Guide*.
  """
  def set_repository_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SetRepositoryPolicy", input, options)
  end

  @doc """
  Starts an image vulnerability scan.

  An image scan can only be started once per day on an individual image. This
  limit includes if an image was scanned on initial push. For more information,
  see [Image Scanning](https://docs.aws.amazon.com/AmazonECR/latest/userguide/image-scanning.html)
  in the *Amazon Elastic Container Registry User Guide*.
  """
  def start_image_scan(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartImageScan", input, options)
  end

  @doc """
  Starts a preview of a lifecycle policy for the specified repository.

  This allows you to see the results before associating the lifecycle policy with
  the repository.
  """
  def start_lifecycle_policy_preview(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartLifecyclePolicyPreview", input, options)
  end

  @doc """
  Adds specified tags to a resource with the specified ARN.

  Existing tags on a resource are not changed if they are not specified in the
  request parameters.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Deletes specified tags from a resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Uploads an image layer part to Amazon ECR.

  When an image is pushed, each new image layer is uploaded in parts. The maximum
  size of each image layer part can be 20971520 bytes (or about 20MB). The
  UploadLayerPart API is called once per each new image layer part.

  This operation is used by the Amazon ECR proxy and is not generally used by
  customers for pulling and pushing images. In most cases, you should use the
  `docker` CLI to pull, tag, and push images.
  """
  def upload_layer_part(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UploadLayerPart", input, options)
  end
end
