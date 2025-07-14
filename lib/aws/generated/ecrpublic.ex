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

  @typedoc """

  ## Example:
      
      get_repository_policy_request() :: %{
        optional("registryId") => String.t(),
        required("repositoryName") => String.t()
      }
      
  """
  @type get_repository_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upload_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type upload_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_repository_response() :: %{
        "catalogData" => repository_catalog_data(),
        "repository" => repository()
      }
      
  """
  @type create_repository_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_digest_does_not_match_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type image_digest_does_not_match_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("resourceArn") => String.t(),
        required("tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_already_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type image_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      layer_failure() :: %{
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "layerDigest" => String.t()
      }
      
  """
  @type layer_failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      image_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type image_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registry_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type registry_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_images_request() :: %{
        optional("imageIds") => list(image_identifier()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("registryId") => String.t(),
        required("repositoryName") => String.t()
      }
      
  """
  @type describe_images_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_repository_policy_response() :: %{
        "policyText" => String.t(),
        "registryId" => String.t(),
        "repositoryName" => String.t()
      }
      
  """
  @type set_repository_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      initiate_layer_upload_request() :: %{
        optional("registryId") => String.t(),
        required("repositoryName") => String.t()
      }
      
  """
  @type initiate_layer_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_registries_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type describe_registries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_repository_catalog_data_response() :: %{
        "catalogData" => repository_catalog_data()
      }
      
  """
  @type get_repository_catalog_data_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_check_layer_availability_response() :: %{
        "failures" => list(layer_failure()),
        "layers" => list(layer())
      }
      
  """
  @type batch_check_layer_availability_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      layers_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type layers_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_repository_policy_request() :: %{
        optional("registryId") => String.t(),
        required("repositoryName") => String.t()
      }
      
  """
  @type delete_repository_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      repository_not_empty_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type repository_not_empty_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_tag_parameter_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_tag_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_repository_catalog_data_request() :: %{
        optional("registryId") => String.t(),
        required("repositoryName") => String.t()
      }
      
  """
  @type get_repository_catalog_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      repository_already_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type repository_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("resourceArn") => String.t(),
        required("tagKeys") => list(String.t())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      repository_policy_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type repository_policy_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_repository_policy_response() :: %{
        "policyText" => String.t(),
        "registryId" => String.t(),
        "repositoryName" => String.t()
      }
      
  """
  @type get_repository_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      layer_already_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type layer_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_images_response() :: %{
        "imageDetails" => list(image_detail()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_images_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_repositories_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("registryId") => String.t(),
        optional("repositoryNames") => list(String.t())
      }
      
  """
  @type describe_repositories_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_image_request() :: %{
        optional("imageDigest") => String.t(),
        optional("imageManifestMediaType") => String.t(),
        optional("imageTag") => String.t(),
        optional("registryId") => String.t(),
        required("imageManifest") => String.t(),
        required("repositoryName") => String.t()
      }
      
  """
  @type put_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      complete_layer_upload_request() :: %{
        optional("registryId") => String.t(),
        required("layerDigests") => list(String.t()),
        required("repositoryName") => String.t(),
        required("uploadId") => String.t()
      }
      
  """
  @type complete_layer_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_repository_policy_request() :: %{
        optional("force") => boolean(),
        optional("registryId") => String.t(),
        required("policyText") => String.t(),
        required("repositoryName") => String.t()
      }
      
  """
  @type set_repository_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registry_alias() :: %{
        "defaultRegistryAlias" => boolean(),
        "name" => String.t(),
        "primaryRegistryAlias" => boolean(),
        "status" => list(any())
      }
      
  """
  @type registry_alias() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_command_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type unsupported_command_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_image_request() :: %{
        optional("registryId") => String.t(),
        required("imageIds") => list(image_identifier()),
        required("repositoryName") => String.t()
      }
      
  """
  @type batch_delete_image_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      complete_layer_upload_response() :: %{
        "layerDigest" => String.t(),
        "registryId" => String.t(),
        "repositoryName" => String.t(),
        "uploadId" => String.t()
      }
      
  """
  @type complete_layer_upload_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_failure() :: %{
        "failureCode" => list(any()),
        "failureReason" => String.t(),
        "imageId" => image_identifier()
      }
      
  """
  @type image_failure() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_layer_part_exception() :: %{
        "lastValidByteReceived" => float(),
        "message" => String.t(),
        "registryId" => String.t(),
        "repositoryName" => String.t(),
        "uploadId" => String.t()
      }
      
  """
  @type invalid_layer_part_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_tag_already_exists_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type image_tag_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_image_response() :: %{
        "image" => image()
      }
      
  """
  @type put_image_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_repository_catalog_data_response() :: %{
        "catalogData" => repository_catalog_data()
      }
      
  """
  @type put_repository_catalog_data_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      repository() :: %{
        "createdAt" => non_neg_integer(),
        "registryId" => String.t(),
        "repositoryArn" => String.t(),
        "repositoryName" => String.t(),
        "repositoryUri" => String.t()
      }
      
  """
  @type repository() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_repository_request() :: %{
        optional("force") => boolean(),
        optional("registryId") => String.t(),
        required("repositoryName") => String.t()
      }
      
  """
  @type delete_repository_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      layer() :: %{
        "layerAvailability" => list(any()),
        "layerDigest" => String.t(),
        "layerSize" => float(),
        "mediaType" => String.t()
      }
      
  """
  @type layer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      layer_part_too_small_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type layer_part_too_small_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registry_catalog_data() :: %{
        "displayName" => String.t()
      }
      
  """
  @type registry_catalog_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      referenced_images_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type referenced_images_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      repository_catalog_data() :: %{
        "aboutText" => String.t(),
        "architectures" => list(String.t()),
        "description" => String.t(),
        "logoUrl" => String.t(),
        "marketplaceCertified" => boolean(),
        "operatingSystems" => list(String.t()),
        "usageText" => String.t()
      }
      
  """
  @type repository_catalog_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_image_tags_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("registryId") => String.t(),
        required("repositoryName") => String.t()
      }
      
  """
  @type describe_image_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_authorization_token_response() :: %{
        "authorizationData" => authorization_data()
      }
      
  """
  @type get_authorization_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_authorization_token_request() :: %{}
      
  """
  @type get_authorization_token_request() :: %{}

  @typedoc """

  ## Example:
      
      describe_registries_response() :: %{
        "nextToken" => String.t(),
        "registries" => list(registry())
      }
      
  """
  @type describe_registries_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      repository_catalog_data_input() :: %{
        "aboutText" => String.t(),
        "architectures" => list(String.t()),
        "description" => String.t(),
        "logoImageBlob" => binary(),
        "operatingSystems" => list(String.t()),
        "usageText" => String.t()
      }
      
  """
  @type repository_catalog_data_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upload_layer_part_response() :: %{
        "lastByteReceived" => float(),
        "registryId" => String.t(),
        "repositoryName" => String.t(),
        "uploadId" => String.t()
      }
      
  """
  @type upload_layer_part_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_registry_catalog_data_request() :: %{
        optional("displayName") => String.t()
      }
      
  """
  @type put_registry_catalog_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_repository_request() :: %{
        optional("catalogData") => repository_catalog_data_input(),
        optional("tags") => list(tag()),
        required("repositoryName") => String.t()
      }
      
  """
  @type create_repository_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_registry_catalog_data_request() :: %{}
      
  """
  @type get_registry_catalog_data_request() :: %{}

  @typedoc """

  ## Example:
      
      image() :: %{
        "imageId" => image_identifier(),
        "imageManifest" => String.t(),
        "imageManifestMediaType" => String.t(),
        "registryId" => String.t(),
        "repositoryName" => String.t()
      }
      
  """
  @type image() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_repository_policy_response() :: %{
        "policyText" => String.t(),
        "registryId" => String.t(),
        "repositoryName" => String.t()
      }
      
  """
  @type delete_repository_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_registry_catalog_data_response() :: %{
        "registryCatalogData" => registry_catalog_data()
      }
      
  """
  @type get_registry_catalog_data_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_delete_image_response() :: %{
        "failures" => list(image_failure()),
        "imageIds" => list(image_identifier())
      }
      
  """
  @type batch_delete_image_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      invalid_layer_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_layer_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      referenced_image_detail() :: %{
        "artifactMediaType" => String.t(),
        "imageDigest" => String.t(),
        "imageManifestMediaType" => String.t(),
        "imagePushedAt" => non_neg_integer(),
        "imageSizeInBytes" => float()
      }
      
  """
  @type referenced_image_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_tag_detail() :: %{
        "createdAt" => non_neg_integer(),
        "imageDetail" => referenced_image_detail(),
        "imageTag" => String.t()
      }
      
  """
  @type image_tag_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      batch_check_layer_availability_request() :: %{
        optional("registryId") => String.t(),
        required("layerDigests") => list(String.t()),
        required("repositoryName") => String.t()
      }
      
  """
  @type batch_check_layer_availability_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      repository_catalog_data_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type repository_catalog_data_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      server_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_identifier() :: %{
        "imageDigest" => String.t(),
        "imageTag" => String.t()
      }
      
  """
  @type image_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      repository_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type repository_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      registry() :: %{
        "aliases" => list(registry_alias()),
        "registryArn" => String.t(),
        "registryId" => String.t(),
        "registryUri" => String.t(),
        "verified" => boolean()
      }
      
  """
  @type registry() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_repository_response() :: %{
        "repository" => repository()
      }
      
  """
  @type delete_repository_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_repositories_response() :: %{
        "nextToken" => String.t(),
        "repositories" => list(repository())
      }
      
  """
  @type describe_repositories_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_registry_catalog_data_response() :: %{
        "registryCatalogData" => registry_catalog_data()
      }
      
  """
  @type put_registry_catalog_data_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_image_tags_response() :: %{
        "imageTagDetails" => list(image_tag_detail()),
        "nextToken" => String.t()
      }
      
  """
  @type describe_image_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      authorization_data() :: %{
        "authorizationToken" => String.t(),
        "expiresAt" => non_neg_integer()
      }
      
  """
  @type authorization_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      image_detail() :: %{
        "artifactMediaType" => String.t(),
        "imageDigest" => String.t(),
        "imageManifestMediaType" => String.t(),
        "imagePushedAt" => non_neg_integer(),
        "imageSizeInBytes" => float(),
        "imageTags" => list(String.t()),
        "registryId" => String.t(),
        "repositoryName" => String.t()
      }
      
  """
  @type image_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      empty_upload_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type empty_upload_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      initiate_layer_upload_response() :: %{
        "partSize" => float(),
        "uploadId" => String.t()
      }
      
  """
  @type initiate_layer_upload_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_repository_catalog_data_request() :: %{
        optional("registryId") => String.t(),
        required("catalogData") => repository_catalog_data_input(),
        required("repositoryName") => String.t()
      }
      
  """
  @type put_repository_catalog_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upload_layer_part_request() :: %{
        optional("registryId") => String.t(),
        required("layerPartBlob") => binary(),
        required("partFirstByte") => float(),
        required("partLastByte") => float(),
        required("repositoryName") => String.t(),
        required("uploadId") => String.t()
      }
      
  """
  @type upload_layer_part_request() :: %{String.t() => any()}

  @type batch_check_layer_availability_errors() ::
          repository_not_found_exception()
          | server_exception()
          | invalid_parameter_exception()
          | unsupported_command_exception()
          | registry_not_found_exception()

  @type batch_delete_image_errors() ::
          repository_not_found_exception()
          | server_exception()
          | invalid_parameter_exception()
          | unsupported_command_exception()

  @type complete_layer_upload_errors() ::
          empty_upload_exception()
          | repository_not_found_exception()
          | server_exception()
          | invalid_layer_exception()
          | invalid_parameter_exception()
          | layer_part_too_small_exception()
          | unsupported_command_exception()
          | layer_already_exists_exception()
          | registry_not_found_exception()
          | upload_not_found_exception()

  @type create_repository_errors() ::
          too_many_tags_exception()
          | limit_exceeded_exception()
          | server_exception()
          | invalid_parameter_exception()
          | unsupported_command_exception()
          | repository_already_exists_exception()
          | invalid_tag_parameter_exception()

  @type delete_repository_errors() ::
          repository_not_found_exception()
          | server_exception()
          | invalid_parameter_exception()
          | unsupported_command_exception()
          | repository_not_empty_exception()

  @type delete_repository_policy_errors() ::
          repository_not_found_exception()
          | server_exception()
          | invalid_parameter_exception()
          | unsupported_command_exception()
          | repository_policy_not_found_exception()

  @type describe_image_tags_errors() ::
          repository_not_found_exception()
          | server_exception()
          | invalid_parameter_exception()
          | unsupported_command_exception()

  @type describe_images_errors() ::
          repository_not_found_exception()
          | server_exception()
          | invalid_parameter_exception()
          | unsupported_command_exception()
          | image_not_found_exception()

  @type describe_registries_errors() ::
          server_exception() | invalid_parameter_exception() | unsupported_command_exception()

  @type describe_repositories_errors() ::
          repository_not_found_exception()
          | server_exception()
          | invalid_parameter_exception()
          | unsupported_command_exception()

  @type get_authorization_token_errors() ::
          server_exception() | invalid_parameter_exception() | unsupported_command_exception()

  @type get_registry_catalog_data_errors() :: server_exception() | unsupported_command_exception()

  @type get_repository_catalog_data_errors() ::
          repository_not_found_exception()
          | server_exception()
          | repository_catalog_data_not_found_exception()
          | invalid_parameter_exception()
          | unsupported_command_exception()

  @type get_repository_policy_errors() ::
          repository_not_found_exception()
          | server_exception()
          | invalid_parameter_exception()
          | unsupported_command_exception()
          | repository_policy_not_found_exception()

  @type initiate_layer_upload_errors() ::
          repository_not_found_exception()
          | server_exception()
          | invalid_parameter_exception()
          | unsupported_command_exception()
          | registry_not_found_exception()

  @type list_tags_for_resource_errors() ::
          repository_not_found_exception()
          | server_exception()
          | invalid_parameter_exception()
          | unsupported_command_exception()

  @type put_image_errors() ::
          limit_exceeded_exception()
          | repository_not_found_exception()
          | server_exception()
          | invalid_parameter_exception()
          | referenced_images_not_found_exception()
          | image_tag_already_exists_exception()
          | unsupported_command_exception()
          | layers_not_found_exception()
          | registry_not_found_exception()
          | image_already_exists_exception()
          | image_digest_does_not_match_exception()

  @type put_registry_catalog_data_errors() ::
          server_exception() | invalid_parameter_exception() | unsupported_command_exception()

  @type put_repository_catalog_data_errors() ::
          repository_not_found_exception()
          | server_exception()
          | invalid_parameter_exception()
          | unsupported_command_exception()

  @type set_repository_policy_errors() ::
          repository_not_found_exception()
          | server_exception()
          | invalid_parameter_exception()
          | unsupported_command_exception()

  @type tag_resource_errors() ::
          too_many_tags_exception()
          | repository_not_found_exception()
          | server_exception()
          | invalid_parameter_exception()
          | unsupported_command_exception()
          | invalid_tag_parameter_exception()

  @type untag_resource_errors() ::
          too_many_tags_exception()
          | repository_not_found_exception()
          | server_exception()
          | invalid_parameter_exception()
          | unsupported_command_exception()
          | invalid_tag_parameter_exception()

  @type upload_layer_part_errors() ::
          limit_exceeded_exception()
          | repository_not_found_exception()
          | server_exception()
          | invalid_parameter_exception()
          | invalid_layer_part_exception()
          | unsupported_command_exception()
          | registry_not_found_exception()
          | upload_not_found_exception()

  def metadata do
    %{
      api_version: "2020-10-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.ecr-public",
      global?: false,
      hostname: nil,
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
  @spec batch_check_layer_availability(map(), batch_check_layer_availability_request(), list()) ::
          {:ok, batch_check_layer_availability_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_check_layer_availability_errors()}
  def batch_check_layer_availability(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
  @spec batch_delete_image(map(), batch_delete_image_request(), list()) ::
          {:ok, batch_delete_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_delete_image_errors()}
  def batch_delete_image(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
  @spec complete_layer_upload(map(), complete_layer_upload_request(), list()) ::
          {:ok, complete_layer_upload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, complete_layer_upload_errors()}
  def complete_layer_upload(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CompleteLayerUpload", input, options)
  end

  @doc """
  Creates a repository in a public registry.

  For more information, see [Amazon ECR repositories](https://docs.aws.amazon.com/AmazonECR/latest/userguide/Repositories.html)
  in the *Amazon Elastic Container Registry User Guide*.
  """
  @spec create_repository(map(), create_repository_request(), list()) ::
          {:ok, create_repository_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_repository_errors()}
  def create_repository(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateRepository", input, options)
  end

  @doc """
  Deletes a repository in a public registry.

  If the repository contains images, you must
  either manually delete all images in the repository or use the `force` option.
  This option deletes all images on your behalf before deleting the repository.
  """
  @spec delete_repository(map(), delete_repository_request(), list()) ::
          {:ok, delete_repository_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_repository_errors()}
  def delete_repository(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRepository", input, options)
  end

  @doc """
  Deletes the repository policy that's associated with the specified repository.
  """
  @spec delete_repository_policy(map(), delete_repository_policy_request(), list()) ::
          {:ok, delete_repository_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_repository_policy_errors()}
  def delete_repository_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteRepositoryPolicy", input, options)
  end

  @doc """
  Returns the image tag details for a repository in a public registry.
  """
  @spec describe_image_tags(map(), describe_image_tags_request(), list()) ::
          {:ok, describe_image_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_image_tags_errors()}
  def describe_image_tags(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
  @spec describe_images(map(), describe_images_request(), list()) ::
          {:ok, describe_images_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_images_errors()}
  def describe_images(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeImages", input, options)
  end

  @doc """
  Returns details for a public registry.
  """
  @spec describe_registries(map(), describe_registries_request(), list()) ::
          {:ok, describe_registries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_registries_errors()}
  def describe_registries(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeRegistries", input, options)
  end

  @doc """
  Describes repositories that are in a public registry.
  """
  @spec describe_repositories(map(), describe_repositories_request(), list()) ::
          {:ok, describe_repositories_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_repositories_errors()}
  def describe_repositories(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
  @spec get_authorization_token(map(), get_authorization_token_request(), list()) ::
          {:ok, get_authorization_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_authorization_token_errors()}
  def get_authorization_token(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetAuthorizationToken", input, options)
  end

  @doc """
  Retrieves catalog metadata for a public registry.
  """
  @spec get_registry_catalog_data(map(), get_registry_catalog_data_request(), list()) ::
          {:ok, get_registry_catalog_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_registry_catalog_data_errors()}
  def get_registry_catalog_data(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRegistryCatalogData", input, options)
  end

  @doc """
  Retrieve catalog metadata for a repository in a public registry.

  This metadata is
  displayed publicly in the Amazon ECR Public Gallery.
  """
  @spec get_repository_catalog_data(map(), get_repository_catalog_data_request(), list()) ::
          {:ok, get_repository_catalog_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_repository_catalog_data_errors()}
  def get_repository_catalog_data(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetRepositoryCatalogData", input, options)
  end

  @doc """
  Retrieves the repository policy for the specified repository.
  """
  @spec get_repository_policy(map(), get_repository_policy_request(), list()) ::
          {:ok, get_repository_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_repository_policy_errors()}
  def get_repository_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
  @spec initiate_layer_upload(map(), initiate_layer_upload_request(), list()) ::
          {:ok, initiate_layer_upload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, initiate_layer_upload_errors()}
  def initiate_layer_upload(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "InitiateLayerUpload", input, options)
  end

  @doc """
  List the tags for an Amazon ECR Public resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
  @spec put_image(map(), put_image_request(), list()) ::
          {:ok, put_image_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_image_errors()}
  def put_image(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutImage", input, options)
  end

  @doc """
  Create or update the catalog data for a public registry.
  """
  @spec put_registry_catalog_data(map(), put_registry_catalog_data_request(), list()) ::
          {:ok, put_registry_catalog_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_registry_catalog_data_errors()}
  def put_registry_catalog_data(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutRegistryCatalogData", input, options)
  end

  @doc """
  Creates or updates the catalog data for a repository in a public registry.
  """
  @spec put_repository_catalog_data(map(), put_repository_catalog_data_request(), list()) ::
          {:ok, put_repository_catalog_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_repository_catalog_data_errors()}
  def put_repository_catalog_data(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "PutRepositoryCatalogData", input, options)
  end

  @doc """
  Applies a repository policy to the specified public repository to control access
  permissions.

  For more information, see [Amazon ECR Repository Policies](https://docs.aws.amazon.com/AmazonECR/latest/userguide/repository-policies.html)
  in the *Amazon Elastic Container Registry User Guide*.
  """
  @spec set_repository_policy(map(), set_repository_policy_request(), list()) ::
          {:ok, set_repository_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_repository_policy_errors()}
  def set_repository_policy(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Deletes specified tags from a resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

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
  @spec upload_layer_part(map(), upload_layer_part_request(), list()) ::
          {:ok, upload_layer_part_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, upload_layer_part_errors()}
  def upload_layer_part(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UploadLayerPart", input, options)
  end
end
