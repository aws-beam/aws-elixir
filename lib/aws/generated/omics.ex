# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Omics do
  @moduledoc """
  Amazon Web Services HealthOmics is a service that helps users such as
  bioinformaticians, researchers, and scientists to store, query, analyze, and
  generate insights from genomics and other biological data.

  It simplifies and accelerates the process of storing and analyzing genomic
  information for Amazon Web Services.

  For an introduction to the service, see [What is Amazon Web Services HealthOmics?](https://docs.aws.amazon.com/omics/latest/dev/what-is-healthomics.html)
  in the *Amazon Web Services HealthOmics User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      run_log_location() :: %{
        "engineLogStream" => String.t() | atom(),
        "runLogStream" => String.t() | atom()
      }

  """
  @type run_log_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_multipart_read_set_uploads_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_multipart_read_set_uploads_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      abort_multipart_read_set_upload_request() :: %{}

  """
  @type abort_multipart_read_set_upload_request() :: %{}

  @typedoc """

  ## Example:

      annotation_store_item() :: %{
        "creationTime" => non_neg_integer(),
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => [String.t() | atom()],
        "reference" => list(),
        "sseConfig" => sse_config(),
        "status" => String.t() | atom(),
        "statusMessage" => String.t() | atom(),
        "storeArn" => String.t() | atom(),
        "storeFormat" => String.t() | atom(),
        "storeSizeBytes" => [float()],
        "updateTime" => non_neg_integer()
      }

  """
  @type annotation_store_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_workflow_request() :: %{
        optional("accelerators") => String.t() | atom(),
        optional("definitionRepository") => definition_repository(),
        optional("definitionUri") => String.t() | atom(),
        optional("definitionZip") => [binary()],
        optional("description") => String.t() | atom(),
        optional("engine") => String.t() | atom(),
        optional("main") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("parameterTemplate") => map(),
        optional("parameterTemplatePath") => String.t() | atom(),
        optional("readmeMarkdown") => String.t() | atom(),
        optional("readmePath") => String.t() | atom(),
        optional("readmeUri") => String.t() | atom(),
        optional("storageCapacity") => [integer()],
        optional("storageType") => String.t() | atom(),
        optional("tags") => map(),
        optional("workflowBucketOwnerId") => String.t() | atom(),
        required("requestId") => String.t() | atom()
      }

  """
  @type create_workflow_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_annotation_import_request() :: %{}

  """
  @type cancel_annotation_import_request() :: %{}

  @typedoc """

  ## Example:

      create_run_cache_response() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom(),
        "status" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type create_run_cache_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_variant_store_response() :: %{
        "creationTime" => non_neg_integer(),
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => [String.t() | atom()],
        "reference" => list(),
        "status" => String.t() | atom(),
        "updateTime" => non_neg_integer()
      }

  """
  @type update_variant_store_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      definition_repository_details() :: %{
        "connectionArn" => String.t() | atom(),
        "fullRepositoryId" => String.t() | atom(),
        "providerEndpoint" => [String.t() | atom()],
        "providerType" => [String.t() | atom()],
        "sourceReference" => source_reference()
      }

  """
  @type definition_repository_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_read_set_job_item() :: %{
        "completionTime" => [non_neg_integer()],
        "creationTime" => [non_neg_integer()],
        "id" => String.t() | atom(),
        "roleArn" => String.t() | atom(),
        "sequenceStoreId" => String.t() | atom(),
        "status" => String.t() | atom()
      }

  """
  @type import_read_set_job_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      activate_read_set_filter() :: %{
        "createdAfter" => [non_neg_integer()],
        "createdBefore" => [non_neg_integer()],
        "status" => String.t() | atom()
      }

  """
  @type activate_read_set_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      run_cache_list_item() :: %{
        "arn" => String.t() | atom(),
        "cacheBehavior" => String.t() | atom(),
        "cacheS3Uri" => String.t() | atom(),
        "creationTime" => non_neg_integer(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => String.t() | atom()
      }

  """
  @type run_cache_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_variant_store_request() :: %{
        optional("description") => String.t() | atom()
      }

  """
  @type update_variant_store_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workflow_version_list_item() :: %{
        "arn" => String.t() | atom(),
        "creationTime" => non_neg_integer(),
        "description" => String.t() | atom(),
        "digest" => String.t() | atom(),
        "metadata" => map(),
        "status" => String.t() | atom(),
        "type" => String.t() | atom(),
        "versionName" => String.t() | atom(),
        "workflowId" => String.t() | atom()
      }

  """
  @type workflow_version_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_sequence_store_response() :: %{
        "arn" => String.t() | atom(),
        "creationTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "eTagAlgorithmFamily" => String.t() | atom(),
        "fallbackLocation" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "propagatedSetLevelTags" => list(String.t() | atom()),
        "s3Access" => sequence_store_s3_access(),
        "sseConfig" => sse_config(),
        "status" => String.t() | atom(),
        "statusMessage" => String.t() | atom(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type update_sequence_store_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_annotation_store_version_response() :: %{
        "creationTime" => non_neg_integer(),
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => String.t() | atom(),
        "storeId" => String.t() | atom(),
        "updateTime" => non_neg_integer(),
        "versionName" => String.t() | atom()
      }

  """
  @type update_annotation_store_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_shares_request() :: %{
        optional("filter") => filter(),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()],
        required("resourceOwner") => String.t() | atom()
      }

  """
  @type list_shares_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_annotation_store_request() :: %{
        optional("description") => String.t() | atom()
      }

  """
  @type update_annotation_store_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_run_request() :: %{
        optional("export") => list(String.t() | atom())
      }

  """
  @type get_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_reference_stores_response() :: %{
        "nextToken" => String.t() | atom(),
        "referenceStores" => list(reference_store_detail())
      }

  """
  @type list_reference_stores_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      read_set_upload_part_list_filter() :: %{
        "createdAfter" => [non_neg_integer()],
        "createdBefore" => [non_neg_integer()]
      }

  """
  @type read_set_upload_part_list_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_run_cache_request() :: %{
        optional("cacheBehavior") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("name") => String.t() | atom()
      }

  """
  @type update_run_cache_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_read_set_export_jobs_request() :: %{
        optional("filter") => export_read_set_filter(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_read_set_export_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_runs_response() :: %{
        "items" => list(run_list_item()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_runs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_read_set_filter() :: %{
        "createdAfter" => [non_neg_integer()],
        "createdBefore" => [non_neg_integer()],
        "status" => String.t() | atom()
      }

  """
  @type import_read_set_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_reference_metadata_response() :: %{
        "arn" => String.t() | atom(),
        "creationJobId" => String.t() | atom(),
        "creationTime" => [non_neg_integer()],
        "creationType" => String.t() | atom(),
        "description" => String.t() | atom(),
        "files" => reference_files(),
        "id" => String.t() | atom(),
        "md5" => String.t() | atom(),
        "name" => String.t() | atom(),
        "referenceStoreId" => String.t() | atom(),
        "status" => String.t() | atom(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type get_reference_metadata_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_annotation_store_request() :: %{
        optional("description") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("reference") => list(),
        optional("sseConfig") => sse_config(),
        optional("storeOptions") => list(),
        optional("tags") => map(),
        optional("versionName") => String.t() | atom(),
        required("storeFormat") => String.t() | atom()
      }

  """
  @type create_annotation_store_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      upload_read_set_part_request() :: %{
        required("partNumber") => [integer()],
        required("partSource") => String.t() | atom(),
        required("payload") => binary()
      }

  """
  @type upload_read_set_part_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_read_set_activation_jobs_response() :: %{
        "activationJobs" => list(activate_read_set_job_item()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_read_set_activation_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_variant_store_response() :: %{
        "status" => String.t() | atom()
      }

  """
  @type delete_variant_store_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_read_set_import_job_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("roleArn") => String.t() | atom(),
        required("sources") => list(start_read_set_import_job_source_item())
      }

  """
  @type start_read_set_import_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      variant_import_job_item() :: %{
        "annotationFields" => map(),
        "completionTime" => non_neg_integer(),
        "creationTime" => non_neg_integer(),
        "destinationName" => [String.t() | atom()],
        "id" => [String.t() | atom()],
        "roleArn" => String.t() | atom(),
        "runLeftNormalization" => boolean(),
        "status" => String.t() | atom(),
        "updateTime" => non_neg_integer()
      }

  """
  @type variant_import_job_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_reference_job_item() :: %{
        "completionTime" => [non_neg_integer()],
        "creationTime" => [non_neg_integer()],
        "id" => String.t() | atom(),
        "referenceStoreId" => String.t() | atom(),
        "roleArn" => String.t() | atom(),
        "status" => String.t() | atom()
      }

  """
  @type import_reference_job_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      get_read_set_export_job_request() :: %{}

  """
  @type get_read_set_export_job_request() :: %{}

  @typedoc """

  ## Example:

      get_run_group_request() :: %{}

  """
  @type get_run_group_request() :: %{}

  @typedoc """

  ## Example:

      delete_sequence_store_request() :: %{}

  """
  @type delete_sequence_store_request() :: %{}

  @typedoc """

  ## Example:

      start_reference_import_job_response() :: %{
        "creationTime" => [non_neg_integer()],
        "id" => String.t() | atom(),
        "referenceStoreId" => String.t() | atom(),
        "roleArn" => String.t() | atom(),
        "status" => String.t() | atom()
      }

  """
  @type start_reference_import_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_workflow_request() :: %{}

  """
  @type delete_workflow_request() :: %{}

  @typedoc """

  ## Example:

      list_annotation_stores_request() :: %{
        optional("filter") => list_annotation_stores_filter(),
        optional("ids") => list(String.t() | atom()),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_annotation_stores_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_annotation_store_response() :: %{
        "status" => String.t() | atom()
      }

  """
  @type delete_annotation_store_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_annotation_store_response() :: %{
        "creationTime" => non_neg_integer(),
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => [String.t() | atom()],
        "reference" => list(),
        "status" => String.t() | atom(),
        "storeFormat" => String.t() | atom(),
        "storeOptions" => list(),
        "updateTime" => non_neg_integer()
      }

  """
  @type update_annotation_store_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      read_set_filter() :: %{
        "createdAfter" => [non_neg_integer()],
        "createdBefore" => [non_neg_integer()],
        "creationType" => String.t() | atom(),
        "generatedFrom" => String.t() | atom(),
        "name" => String.t() | atom(),
        "referenceArn" => String.t() | atom(),
        "sampleId" => String.t() | atom(),
        "status" => String.t() | atom(),
        "subjectId" => String.t() | atom()
      }

  """
  @type read_set_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_read_set_response() :: %{
        "errors" => list(read_set_batch_error())
      }

  """
  @type batch_delete_read_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_read_set_activation_jobs_request() :: %{
        optional("filter") => activate_read_set_filter(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_read_set_activation_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_annotation_store_request() :: %{}

  """
  @type get_annotation_store_request() :: %{}

  @typedoc """

  ## Example:

      get_workflow_version_response() :: %{
        "accelerators" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "creationTime" => non_neg_integer(),
        "definition" => String.t() | atom(),
        "definitionRepositoryDetails" => definition_repository_details(),
        "description" => String.t() | atom(),
        "digest" => String.t() | atom(),
        "engine" => String.t() | atom(),
        "main" => String.t() | atom(),
        "metadata" => map(),
        "parameterTemplate" => map(),
        "readme" => String.t() | atom(),
        "readmePath" => String.t() | atom(),
        "status" => String.t() | atom(),
        "statusMessage" => String.t() | atom(),
        "storageCapacity" => [integer()],
        "storageType" => String.t() | atom(),
        "tags" => map(),
        "type" => String.t() | atom(),
        "uuid" => String.t() | atom(),
        "versionName" => String.t() | atom(),
        "workflowBucketOwnerId" => String.t() | atom(),
        "workflowId" => String.t() | atom()
      }

  """
  @type get_workflow_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_variant_import_jobs_response() :: %{
        "nextToken" => [String.t() | atom()],
        "variantImportJobs" => list(variant_import_job_item())
      }

  """
  @type list_variant_import_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_s3_access_policy_request() :: %{
        required("s3AccessPolicy") => String.t() | atom()
      }

  """
  @type put_s3_access_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_access_config() :: %{
        "accessLogLocation" => String.t() | atom()
      }

  """
  @type s3_access_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workflow_list_item() :: %{
        "arn" => String.t() | atom(),
        "creationTime" => non_neg_integer(),
        "digest" => String.t() | atom(),
        "id" => String.t() | atom(),
        "metadata" => map(),
        "name" => String.t() | atom(),
        "status" => String.t() | atom(),
        "type" => String.t() | atom()
      }

  """
  @type workflow_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      export_read_set_job_detail() :: %{
        "completionTime" => [non_neg_integer()],
        "creationTime" => [non_neg_integer()],
        "destination" => String.t() | atom(),
        "id" => String.t() | atom(),
        "sequenceStoreId" => String.t() | atom(),
        "status" => String.t() | atom()
      }

  """
  @type export_read_set_job_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_annotation_store_versions_response() :: %{
        "errors" => list(version_delete_error())
      }

  """
  @type delete_annotation_store_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      upload_read_set_part_response() :: %{
        "checksum" => [String.t() | atom()]
      }

  """
  @type upload_read_set_part_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_reference_metadata_request() :: %{}

  """
  @type get_reference_metadata_request() :: %{}

  @typedoc """

  ## Example:

      accept_share_request() :: %{}

  """
  @type accept_share_request() :: %{}

  @typedoc """

  ## Example:

      list_run_caches_response() :: %{
        "items" => list(run_cache_list_item()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_run_caches_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      share_details() :: %{
        "creationTime" => non_neg_integer(),
        "ownerId" => [String.t() | atom()],
        "principalSubscriber" => [String.t() | atom()],
        "resourceArn" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "shareId" => [String.t() | atom()],
        "shareName" => String.t() | atom(),
        "status" => String.t() | atom(),
        "statusMessage" => String.t() | atom(),
        "updateTime" => non_neg_integer()
      }

  """
  @type share_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_s3_access_policy_request() :: %{}

  """
  @type get_s3_access_policy_request() :: %{}

  @typedoc """

  ## Example:

      annotation_store_version_item() :: %{
        "creationTime" => non_neg_integer(),
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => String.t() | atom(),
        "statusMessage" => String.t() | atom(),
        "storeId" => String.t() | atom(),
        "updateTime" => non_neg_integer(),
        "versionArn" => String.t() | atom(),
        "versionName" => String.t() | atom(),
        "versionSizeBytes" => [float()]
      }

  """
  @type annotation_store_version_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      activate_read_set_job_item() :: %{
        "completionTime" => [non_neg_integer()],
        "creationTime" => [non_neg_integer()],
        "id" => String.t() | atom(),
        "sequenceStoreId" => String.t() | atom(),
        "status" => String.t() | atom()
      }

  """
  @type activate_read_set_job_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_run_group_request() :: %{}

  """
  @type delete_run_group_request() :: %{}

  @typedoc """

  ## Example:

      get_reference_response() :: %{
        "payload" => binary()
      }

  """
  @type get_reference_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_annotation_stores_response() :: %{
        "annotationStores" => list(annotation_store_item()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_annotation_stores_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_multipart_read_set_upload_response() :: %{
        "creationTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "generatedFrom" => String.t() | atom(),
        "name" => String.t() | atom(),
        "referenceArn" => String.t() | atom(),
        "sampleId" => String.t() | atom(),
        "sequenceStoreId" => String.t() | atom(),
        "sourceFileType" => String.t() | atom(),
        "subjectId" => String.t() | atom(),
        "tags" => map(),
        "uploadId" => String.t() | atom()
      }

  """
  @type create_multipart_read_set_upload_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_run_cache_request() :: %{}

  """
  @type delete_run_cache_request() :: %{}

  @typedoc """

  ## Example:

      delete_s3_access_policy_response() :: %{}

  """
  @type delete_s3_access_policy_response() :: %{}

  @typedoc """

  ## Example:

      delete_reference_request() :: %{}

  """
  @type delete_reference_request() :: %{}

  @typedoc """

  ## Example:

      request_timeout_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type request_timeout_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_annotation_store_versions_response() :: %{
        "annotationStoreVersions" => list(annotation_store_version_item()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_annotation_store_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      complete_multipart_read_set_upload_response() :: %{
        "readSetId" => String.t() | atom()
      }

  """
  @type complete_multipart_read_set_upload_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_workflow_request() :: %{
        optional("description") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("readmeMarkdown") => String.t() | atom(),
        optional("storageCapacity") => [integer()],
        optional("storageType") => String.t() | atom()
      }

  """
  @type update_workflow_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reference_list_item() :: %{
        "arn" => String.t() | atom(),
        "creationTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "md5" => String.t() | atom(),
        "name" => String.t() | atom(),
        "referenceStoreId" => String.t() | atom(),
        "status" => String.t() | atom(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type reference_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tsv_options() :: %{
        "readOptions" => read_options()
      }

  """
  @type tsv_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      run_list_item() :: %{
        "arn" => String.t() | atom(),
        "creationTime" => non_neg_integer(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "priority" => [integer()],
        "startTime" => non_neg_integer(),
        "status" => String.t() | atom(),
        "stopTime" => non_neg_integer(),
        "storageCapacity" => [integer()],
        "storageType" => String.t() | atom(),
        "workflowId" => String.t() | atom(),
        "workflowVersionName" => String.t() | atom()
      }

  """
  @type run_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_reference_import_job_source_item() :: %{
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "sourceFile" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type start_reference_import_job_source_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_variant_import_request() :: %{}

  """
  @type cancel_variant_import_request() :: %{}

  @typedoc """

  ## Example:

      get_annotation_store_version_request() :: %{}

  """
  @type get_annotation_store_version_request() :: %{}

  @typedoc """

  ## Example:

      list_variant_import_jobs_request() :: %{
        optional("filter") => list_variant_import_jobs_filter(),
        optional("ids") => list(String.t() | atom()),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_variant_import_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_annotation_store_response() :: %{
        "creationTime" => non_neg_integer(),
        "id" => String.t() | atom(),
        "name" => [String.t() | atom()],
        "reference" => list(),
        "status" => String.t() | atom(),
        "storeFormat" => String.t() | atom(),
        "storeOptions" => list(),
        "versionName" => String.t() | atom()
      }

  """
  @type create_annotation_store_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_annotation_import_response() :: %{}

  """
  @type cancel_annotation_import_response() :: %{}

  @typedoc """

  ## Example:

      create_share_request() :: %{
        optional("shareName") => String.t() | atom(),
        required("principalSubscriber") => [String.t() | atom()],
        required("resourceArn") => [String.t() | atom()]
      }

  """
  @type create_share_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_read_set_import_jobs_response() :: %{
        "importJobs" => list(import_read_set_job_item()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_read_set_import_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_read_set_activation_job_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("sources") => list(start_read_set_activation_job_source_item())
      }

  """
  @type start_read_set_activation_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_annotation_store_version_response() :: %{
        "creationTime" => non_neg_integer(),
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => String.t() | atom(),
        "statusMessage" => String.t() | atom(),
        "storeId" => String.t() | atom(),
        "tags" => map(),
        "updateTime" => non_neg_integer(),
        "versionArn" => String.t() | atom(),
        "versionName" => String.t() | atom(),
        "versionOptions" => list(),
        "versionSizeBytes" => [float()]
      }

  """
  @type get_annotation_store_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      source_reference() :: %{
        "type" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type source_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_read_set_request() :: %{
        optional("file") => String.t() | atom(),
        required("partNumber") => [integer()]
      }

  """
  @type get_read_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      variant_store_item() :: %{
        "creationTime" => non_neg_integer(),
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => [String.t() | atom()],
        "reference" => list(),
        "sseConfig" => sse_config(),
        "status" => String.t() | atom(),
        "statusMessage" => String.t() | atom(),
        "storeArn" => String.t() | atom(),
        "storeSizeBytes" => [float()],
        "updateTime" => non_neg_integer()
      }

  """
  @type variant_store_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      task_list_item() :: %{
        "cacheHit" => [boolean()],
        "cacheS3Uri" => String.t() | atom(),
        "cpus" => [integer()],
        "creationTime" => non_neg_integer(),
        "gpus" => [integer()],
        "instanceType" => String.t() | atom(),
        "memory" => [integer()],
        "name" => String.t() | atom(),
        "startTime" => non_neg_integer(),
        "status" => String.t() | atom(),
        "stopTime" => non_neg_integer(),
        "taskId" => String.t() | atom()
      }

  """
  @type task_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workflow_request() :: %{
        optional("export") => list(String.t() | atom()),
        optional("type") => String.t() | atom(),
        optional("workflowOwnerId") => String.t() | atom()
      }

  """
  @type get_workflow_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_references_response() :: %{
        "nextToken" => String.t() | atom(),
        "references" => list(reference_list_item())
      }

  """
  @type list_references_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_variant_stores_request() :: %{
        optional("filter") => list_variant_stores_filter(),
        optional("ids") => list(String.t() | atom()),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_variant_stores_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_read_set_metadata_response() :: %{
        "arn" => String.t() | atom(),
        "creationJobId" => String.t() | atom(),
        "creationTime" => [non_neg_integer()],
        "creationType" => String.t() | atom(),
        "description" => String.t() | atom(),
        "etag" => e_tag(),
        "fileType" => String.t() | atom(),
        "files" => read_set_files(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "referenceArn" => String.t() | atom(),
        "sampleId" => String.t() | atom(),
        "sequenceInformation" => sequence_information(),
        "sequenceStoreId" => String.t() | atom(),
        "status" => String.t() | atom(),
        "statusMessage" => String.t() | atom(),
        "subjectId" => String.t() | atom()
      }

  """
  @type get_read_set_metadata_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_sequence_store_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("eTagAlgorithmFamily") => String.t() | atom(),
        optional("fallbackLocation") => String.t() | atom(),
        optional("propagatedSetLevelTags") => list(String.t() | atom()),
        optional("s3AccessConfig") => s3_access_config(),
        optional("sseConfig") => sse_config(),
        optional("tags") => map(),
        required("name") => String.t() | atom()
      }

  """
  @type create_sequence_store_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      accept_share_response() :: %{
        "status" => String.t() | atom()
      }

  """
  @type accept_share_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_annotation_store_response() :: %{
        "creationTime" => non_neg_integer(),
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => [String.t() | atom()],
        "numVersions" => [integer()],
        "reference" => list(),
        "sseConfig" => sse_config(),
        "status" => String.t() | atom(),
        "statusMessage" => String.t() | atom(),
        "storeArn" => String.t() | atom(),
        "storeFormat" => String.t() | atom(),
        "storeOptions" => list(),
        "storeSizeBytes" => [float()],
        "tags" => map(),
        "updateTime" => non_neg_integer()
      }

  """
  @type get_annotation_store_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      definition_repository() :: %{
        "connectionArn" => String.t() | atom(),
        "excludeFilePatterns" => list([String.t() | atom()]()),
        "fullRepositoryId" => String.t() | atom(),
        "sourceReference" => source_reference()
      }

  """
  @type definition_repository() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workflow_parameter() :: %{
        "description" => String.t() | atom(),
        "optional" => [boolean()]
      }

  """
  @type workflow_parameter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_shares_response() :: %{
        "nextToken" => [String.t() | atom()],
        "shares" => list(share_details())
      }

  """
  @type list_shares_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_run_cache_request() :: %{
        optional("cacheBehavior") => String.t() | atom(),
        optional("cacheBucketOwnerId") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("tags") => map(),
        required("cacheS3Location") => String.t() | atom(),
        required("requestId") => String.t() | atom()
      }

  """
  @type create_run_cache_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vcf_options() :: %{
        "ignoreFilterField" => [boolean()],
        "ignoreQualField" => [boolean()]
      }

  """
  @type vcf_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_read_set_activation_job_response() :: %{
        "completionTime" => [non_neg_integer()],
        "creationTime" => [non_neg_integer()],
        "id" => String.t() | atom(),
        "sequenceStoreId" => String.t() | atom(),
        "sources" => list(activate_read_set_source_item()),
        "status" => String.t() | atom(),
        "statusMessage" => String.t() | atom()
      }

  """
  @type get_read_set_activation_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      complete_read_set_upload_part_list_item() :: %{
        "checksum" => [String.t() | atom()],
        "partNumber" => [integer()],
        "partSource" => String.t() | atom()
      }

  """
  @type complete_read_set_upload_part_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_run_group_response() :: %{
        "arn" => String.t() | atom(),
        "creationTime" => non_neg_integer(),
        "id" => String.t() | atom(),
        "maxCpus" => [integer()],
        "maxDuration" => [integer()],
        "maxGpus" => [integer()],
        "maxRuns" => [integer()],
        "name" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type get_run_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      variant_import_item_source() :: %{
        "source" => String.t() | atom()
      }

  """
  @type variant_import_item_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reference_store_detail() :: %{
        "arn" => String.t() | atom(),
        "creationTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "sseConfig" => sse_config()
      }

  """
  @type reference_store_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      version_delete_error() :: %{
        "message" => [String.t() | atom()],
        "versionName" => String.t() | atom()
      }

  """
  @type version_delete_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_workflow_version_request() :: %{}

  """
  @type delete_workflow_version_request() :: %{}

  @typedoc """

  ## Example:

      not_supported_operation_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type not_supported_operation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sequence_stores_response() :: %{
        "nextToken" => String.t() | atom(),
        "sequenceStores" => list(sequence_store_detail())
      }

  """
  @type list_sequence_stores_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sequence_store_filter() :: %{
        "createdAfter" => [non_neg_integer()],
        "createdBefore" => [non_neg_integer()],
        "name" => String.t() | atom(),
        "status" => String.t() | atom(),
        "updatedAfter" => [non_neg_integer()],
        "updatedBefore" => [non_neg_integer()]
      }

  """
  @type sequence_store_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_reference_request() :: %{
        optional("file") => String.t() | atom(),
        optional("range") => String.t() | atom(),
        required("partNumber") => [integer()]
      }

  """
  @type get_reference_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      annotation_import_job_item() :: %{
        "annotationFields" => map(),
        "completionTime" => non_neg_integer(),
        "creationTime" => non_neg_integer(),
        "destinationName" => [String.t() | atom()],
        "id" => [String.t() | atom()],
        "roleArn" => String.t() | atom(),
        "runLeftNormalization" => boolean(),
        "status" => String.t() | atom(),
        "updateTime" => non_neg_integer(),
        "versionName" => String.t() | atom()
      }

  """
  @type annotation_import_job_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sequence_store_response() :: %{
        "arn" => String.t() | atom(),
        "creationTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "eTagAlgorithmFamily" => String.t() | atom(),
        "fallbackLocation" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "propagatedSetLevelTags" => list(String.t() | atom()),
        "s3Access" => sequence_store_s3_access(),
        "sseConfig" => sse_config(),
        "status" => String.t() | atom(),
        "statusMessage" => String.t() | atom(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type get_sequence_store_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      run_group_list_item() :: %{
        "arn" => String.t() | atom(),
        "creationTime" => non_neg_integer(),
        "id" => String.t() | atom(),
        "maxCpus" => [integer()],
        "maxDuration" => [integer()],
        "maxGpus" => [integer()],
        "maxRuns" => [integer()],
        "name" => String.t() | atom()
      }

  """
  @type run_group_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_annotation_store_version_response() :: %{
        "creationTime" => non_neg_integer(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => String.t() | atom(),
        "storeId" => String.t() | atom(),
        "versionName" => String.t() | atom(),
        "versionOptions" => list()
      }

  """
  @type create_annotation_store_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_reference_import_job_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("roleArn") => String.t() | atom(),
        required("sources") => list(start_reference_import_job_source_item())
      }

  """
  @type start_reference_import_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_run_tasks_response() :: %{
        "items" => list(task_list_item()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_run_tasks_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_share_response() :: %{
        "shareId" => [String.t() | atom()],
        "shareName" => String.t() | atom(),
        "status" => String.t() | atom()
      }

  """
  @type create_share_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_workflow_version_request() :: %{
        optional("accelerators") => String.t() | atom(),
        optional("definitionRepository") => definition_repository(),
        optional("definitionUri") => String.t() | atom(),
        optional("definitionZip") => [binary()],
        optional("description") => String.t() | atom(),
        optional("engine") => String.t() | atom(),
        optional("main") => String.t() | atom(),
        optional("parameterTemplate") => map(),
        optional("parameterTemplatePath") => String.t() | atom(),
        optional("readmeMarkdown") => String.t() | atom(),
        optional("readmePath") => String.t() | atom(),
        optional("readmeUri") => String.t() | atom(),
        optional("storageCapacity") => [integer()],
        optional("storageType") => String.t() | atom(),
        optional("tags") => map(),
        optional("workflowBucketOwnerId") => String.t() | atom(),
        required("requestId") => String.t() | atom(),
        required("versionName") => String.t() | atom()
      }

  """
  @type create_workflow_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_read_set_source_item() :: %{
        "description" => String.t() | atom(),
        "generatedFrom" => String.t() | atom(),
        "name" => String.t() | atom(),
        "readSetId" => String.t() | atom(),
        "referenceArn" => String.t() | atom(),
        "sampleId" => String.t() | atom(),
        "sourceFileType" => String.t() | atom(),
        "sourceFiles" => source_files(),
        "status" => String.t() | atom(),
        "statusMessage" => String.t() | atom(),
        "subjectId" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type import_read_set_source_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_variant_store_request() :: %{
        optional("force") => [boolean()]
      }

  """
  @type delete_variant_store_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_reference_store_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("sseConfig") => sse_config(),
        optional("tags") => map(),
        required("name") => String.t() | atom()
      }

  """
  @type create_reference_store_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      annotation_import_item_detail() :: %{
        "jobStatus" => String.t() | atom(),
        "source" => String.t() | atom()
      }

  """
  @type annotation_import_item_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      e_tag() :: %{
        "algorithm" => String.t() | atom(),
        "source1" => [String.t() | atom()],
        "source2" => [String.t() | atom()]
      }

  """
  @type e_tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_read_set_import_jobs_request() :: %{
        optional("filter") => import_read_set_filter(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_read_set_import_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_read_set_metadata_request() :: %{}

  """
  @type get_read_set_metadata_request() :: %{}

  @typedoc """

  ## Example:

      reference_store_filter() :: %{
        "createdAfter" => [non_neg_integer()],
        "createdBefore" => [non_neg_integer()],
        "name" => String.t() | atom()
      }

  """
  @type reference_store_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_variant_stores_filter() :: %{
        "status" => String.t() | atom()
      }

  """
  @type list_variant_stores_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_read_sets_response() :: %{
        "nextToken" => String.t() | atom(),
        "readSets" => list(read_set_list_item())
      }

  """
  @type list_read_sets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_annotation_store_request() :: %{
        optional("force") => [boolean()]
      }

  """
  @type delete_annotation_store_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_workflows_request() :: %{
        optional("maxResults") => [integer()],
        optional("name") => String.t() | atom(),
        optional("startingToken") => String.t() | atom(),
        optional("type") => String.t() | atom()
      }

  """
  @type list_workflows_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_multipart_read_set_upload_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("generatedFrom") => String.t() | atom(),
        optional("referenceArn") => String.t() | atom(),
        optional("tags") => map(),
        required("name") => String.t() | atom(),
        required("sampleId") => String.t() | atom(),
        required("sourceFileType") => String.t() | atom(),
        required("subjectId") => String.t() | atom()
      }

  """
  @type create_multipart_read_set_upload_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_sequence_store_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("description") => String.t() | atom(),
        optional("fallbackLocation") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("propagatedSetLevelTags") => list(String.t() | atom()),
        optional("s3AccessConfig") => s3_access_config()
      }

  """
  @type update_sequence_store_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_read_set_import_job_response() :: %{
        "creationTime" => [non_neg_integer()],
        "id" => String.t() | atom(),
        "roleArn" => String.t() | atom(),
        "sequenceStoreId" => String.t() | atom(),
        "status" => String.t() | atom()
      }

  """
  @type start_read_set_import_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_reference_store_response() :: %{
        "arn" => String.t() | atom(),
        "creationTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "sseConfig" => sse_config()
      }

  """
  @type get_reference_store_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      read_set_upload_part_list_item() :: %{
        "checksum" => [String.t() | atom()],
        "creationTime" => [non_neg_integer()],
        "lastUpdatedTime" => [non_neg_integer()],
        "partNumber" => [integer()],
        "partSize" => [float()],
        "partSource" => String.t() | atom()
      }

  """
  @type read_set_upload_part_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_s3_access_policy_response() :: %{
        "s3AccessPointArn" => String.t() | atom(),
        "storeId" => String.t() | atom(),
        "storeType" => list(any())
      }

  """
  @type put_s3_access_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_workflow_version_response() :: %{
        "arn" => String.t() | atom(),
        "status" => String.t() | atom(),
        "tags" => map(),
        "uuid" => String.t() | atom(),
        "versionName" => String.t() | atom(),
        "workflowId" => String.t() | atom()
      }

  """
  @type create_workflow_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      read_set_files() :: %{
        "index" => file_information(),
        "source1" => file_information(),
        "source2" => file_information()
      }

  """
  @type read_set_files() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_read_set_import_job_source_item() :: %{
        "description" => String.t() | atom(),
        "generatedFrom" => String.t() | atom(),
        "name" => String.t() | atom(),
        "referenceArn" => String.t() | atom(),
        "sampleId" => String.t() | atom(),
        "sourceFileType" => String.t() | atom(),
        "sourceFiles" => source_files(),
        "subjectId" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type start_read_set_import_job_source_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      activate_read_set_source_item() :: %{
        "readSetId" => String.t() | atom(),
        "status" => String.t() | atom(),
        "statusMessage" => String.t() | atom()
      }

  """
  @type activate_read_set_source_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_annotation_import_jobs_response() :: %{
        "annotationImportJobs" => list(annotation_import_job_item()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_annotation_import_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reference_files() :: %{
        "index" => file_information(),
        "source" => file_information()
      }

  """
  @type reference_files() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_annotation_import_request() :: %{
        optional("annotationFields") => map(),
        optional("formatOptions") => list(),
        optional("runLeftNormalization") => boolean(),
        optional("versionName") => String.t() | atom(),
        required("destinationName") => String.t() | atom(),
        required("items") => list(annotation_import_item_source()),
        required("roleArn") => String.t() | atom()
      }

  """
  @type start_annotation_import_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_read_set_request() :: %{
        required("ids") => list(String.t() | atom())
      }

  """
  @type batch_delete_read_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_variant_store_response() :: %{
        "creationTime" => non_neg_integer(),
        "id" => String.t() | atom(),
        "name" => [String.t() | atom()],
        "reference" => list(),
        "status" => String.t() | atom()
      }

  """
  @type create_variant_store_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workflow_version_request() :: %{
        optional("export") => list(String.t() | atom()),
        optional("type") => String.t() | atom(),
        optional("workflowOwnerId") => String.t() | atom()
      }

  """
  @type get_workflow_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_run_cache_request() :: %{}

  """
  @type get_run_cache_request() :: %{}

  @typedoc """

  ## Example:

      list_read_sets_request() :: %{
        optional("filter") => read_set_filter(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_read_sets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_run_groups_response() :: %{
        "items" => list(run_group_list_item()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_run_groups_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_workflow_versions_request() :: %{
        optional("maxResults") => [integer()],
        optional("startingToken") => String.t() | atom(),
        optional("type") => String.t() | atom(),
        optional("workflowOwnerId") => String.t() | atom()
      }

  """
  @type list_workflow_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      annotation_import_item_source() :: %{
        "source" => String.t() | atom()
      }

  """
  @type annotation_import_item_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter() :: %{
        "resourceArns" => list([String.t() | atom()]()),
        "status" => list(String.t() | atom()),
        "type" => list(String.t() | atom())
      }

  """
  @type filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_sequence_store_response() :: %{
        "arn" => String.t() | atom(),
        "creationTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "eTagAlgorithmFamily" => String.t() | atom(),
        "fallbackLocation" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "propagatedSetLevelTags" => list(String.t() | atom()),
        "s3Access" => sequence_store_s3_access(),
        "sseConfig" => sse_config(),
        "status" => String.t() | atom(),
        "statusMessage" => String.t() | atom()
      }

  """
  @type create_sequence_store_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_run_request() :: %{}

  """
  @type cancel_run_request() :: %{}

  @typedoc """

  ## Example:

      delete_run_request() :: %{}

  """
  @type delete_run_request() :: %{}

  @typedoc """

  ## Example:

      create_run_group_response() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type create_run_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_sequence_store_response() :: %{}

  """
  @type delete_sequence_store_response() :: %{}

  @typedoc """

  ## Example:

      start_read_set_export_job_response() :: %{
        "creationTime" => [non_neg_integer()],
        "destination" => String.t() | atom(),
        "id" => String.t() | atom(),
        "sequenceStoreId" => String.t() | atom(),
        "status" => String.t() | atom()
      }

  """
  @type start_read_set_export_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_workflow_versions_response() :: %{
        "items" => list(workflow_version_list_item()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_workflow_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_reference_store_request() :: %{}

  """
  @type get_reference_store_request() :: %{}

  @typedoc """

  ## Example:

      update_annotation_store_version_request() :: %{
        optional("description") => String.t() | atom()
      }

  """
  @type update_annotation_store_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      reference_filter() :: %{
        "createdAfter" => [non_neg_integer()],
        "createdBefore" => [non_neg_integer()],
        "md5" => String.t() | atom(),
        "name" => String.t() | atom()
      }

  """
  @type reference_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_read_set_response() :: %{
        "payload" => binary()
      }

  """
  @type get_read_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_run_tasks_request() :: %{
        optional("maxResults") => [integer()],
        optional("startingToken") => String.t() | atom(),
        optional("status") => String.t() | atom()
      }

  """
  @type list_run_tasks_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_read_set_export_jobs_response() :: %{
        "exportJobs" => list(export_read_set_job_detail()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_read_set_export_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sequence_store_s3_access() :: %{
        "accessLogLocation" => String.t() | atom(),
        "s3AccessPointArn" => String.t() | atom(),
        "s3Uri" => String.t() | atom()
      }

  """
  @type sequence_store_s3_access() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_variant_store_request() :: %{
        optional("description") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("sseConfig") => sse_config(),
        optional("tags") => map(),
        required("reference") => list()
      }

  """
  @type create_variant_store_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_read_set_export_job_response() :: %{
        "completionTime" => [non_neg_integer()],
        "creationTime" => [non_neg_integer()],
        "destination" => String.t() | atom(),
        "id" => String.t() | atom(),
        "readSets" => list(export_read_set_detail()),
        "sequenceStoreId" => String.t() | atom(),
        "status" => String.t() | atom(),
        "statusMessage" => String.t() | atom()
      }

  """
  @type get_read_set_export_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sequence_stores_request() :: %{
        optional("filter") => sequence_store_filter(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_sequence_stores_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      export_read_set_detail() :: %{
        "id" => String.t() | atom(),
        "status" => String.t() | atom(),
        "statusMessage" => String.t() | atom()
      }

  """
  @type export_read_set_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_annotation_store_versions_filter() :: %{
        "status" => String.t() | atom()
      }

  """
  @type list_annotation_store_versions_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_multipart_read_set_uploads_response() :: %{
        "nextToken" => String.t() | atom(),
        "uploads" => list(multipart_read_set_upload_list_item())
      }

  """
  @type list_multipart_read_set_uploads_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      read_options() :: %{
        "comment" => String.t() | atom(),
        "encoding" => String.t() | atom(),
        "escape" => String.t() | atom(),
        "escapeQuotes" => boolean(),
        "header" => boolean(),
        "lineSep" => String.t() | atom(),
        "quote" => String.t() | atom(),
        "quoteAll" => boolean(),
        "sep" => String.t() | atom()
      }

  """
  @type read_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sse_config() :: %{
        "keyArn" => [String.t() | atom()],
        "type" => String.t() | atom()
      }

  """
  @type sse_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_variant_import_response() :: %{
        "annotationFields" => map(),
        "completionTime" => non_neg_integer(),
        "creationTime" => non_neg_integer(),
        "destinationName" => String.t() | atom(),
        "id" => String.t() | atom(),
        "items" => list(variant_import_item_detail()),
        "roleArn" => String.t() | atom(),
        "runLeftNormalization" => boolean(),
        "status" => String.t() | atom(),
        "statusMessage" => String.t() | atom(),
        "updateTime" => non_neg_integer()
      }

  """
  @type get_variant_import_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_run_group_request() :: %{
        optional("maxCpus") => [integer()],
        optional("maxDuration") => [integer()],
        optional("maxGpus") => [integer()],
        optional("maxRuns") => [integer()],
        optional("name") => String.t() | atom()
      }

  """
  @type update_run_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_workflow_response() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom(),
        "status" => String.t() | atom(),
        "tags" => map(),
        "uuid" => String.t() | atom()
      }

  """
  @type create_workflow_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_variant_store_request() :: %{}

  """
  @type get_variant_store_request() :: %{}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_read_set_activation_job_request() :: %{}

  """
  @type get_read_set_activation_job_request() :: %{}

  @typedoc """

  ## Example:

      get_variant_import_request() :: %{}

  """
  @type get_variant_import_request() :: %{}

  @typedoc """

  ## Example:

      sequence_information() :: %{
        "alignment" => [String.t() | atom()],
        "generatedFrom" => String.t() | atom(),
        "totalBaseCount" => [float()],
        "totalReadCount" => [float()]
      }

  """
  @type sequence_information() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_reference_stores_request() :: %{
        optional("filter") => reference_store_filter(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_reference_stores_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_reference_import_jobs_request() :: %{
        optional("filter") => import_reference_filter(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_reference_import_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sequence_store_request() :: %{}

  """
  @type get_sequence_store_request() :: %{}

  @typedoc """

  ## Example:

      get_reference_import_job_response() :: %{
        "completionTime" => [non_neg_integer()],
        "creationTime" => [non_neg_integer()],
        "id" => String.t() | atom(),
        "referenceStoreId" => String.t() | atom(),
        "roleArn" => String.t() | atom(),
        "sources" => list(import_reference_source_item()),
        "status" => String.t() | atom(),
        "statusMessage" => String.t() | atom()
      }

  """
  @type get_reference_import_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_read_set_import_job_response() :: %{
        "completionTime" => [non_neg_integer()],
        "creationTime" => [non_neg_integer()],
        "id" => String.t() | atom(),
        "roleArn" => String.t() | atom(),
        "sequenceStoreId" => String.t() | atom(),
        "sources" => list(import_read_set_source_item()),
        "status" => String.t() | atom(),
        "statusMessage" => String.t() | atom()
      }

  """
  @type get_read_set_import_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_run_caches_request() :: %{
        optional("maxResults") => [integer()],
        optional("startingToken") => String.t() | atom()
      }

  """
  @type list_run_caches_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_run_cache_response() :: %{
        "arn" => String.t() | atom(),
        "cacheBehavior" => String.t() | atom(),
        "cacheBucketOwnerId" => String.t() | atom(),
        "cacheS3Uri" => String.t() | atom(),
        "creationTime" => non_neg_integer(),
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type get_run_cache_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tsv_version_options() :: %{
        "annotationType" => String.t() | atom(),
        "formatToHeader" => map(),
        "schema" => list(map())
      }

  """
  @type tsv_version_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      import_reference_filter() :: %{
        "createdAfter" => [non_neg_integer()],
        "createdBefore" => [non_neg_integer()],
        "status" => String.t() | atom()
      }

  """
  @type import_reference_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_annotation_import_jobs_request() :: %{
        optional("filter") => list_annotation_import_jobs_filter(),
        optional("ids") => list(String.t() | atom()),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_annotation_import_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_variant_stores_response() :: %{
        "nextToken" => [String.t() | atom()],
        "variantStores" => list(variant_store_item())
      }

  """
  @type list_variant_stores_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_annotation_import_response() :: %{
        "jobId" => String.t() | atom()
      }

  """
  @type start_annotation_import_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_read_set_import_job_request() :: %{}

  """
  @type get_read_set_import_job_request() :: %{}

  @typedoc """

  ## Example:

      delete_reference_store_request() :: %{}

  """
  @type delete_reference_store_request() :: %{}

  @typedoc """

  ## Example:

      delete_s3_access_policy_request() :: %{}

  """
  @type delete_s3_access_policy_request() :: %{}

  @typedoc """

  ## Example:

      multipart_read_set_upload_list_item() :: %{
        "creationTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "generatedFrom" => String.t() | atom(),
        "name" => String.t() | atom(),
        "referenceArn" => String.t() | atom(),
        "sampleId" => String.t() | atom(),
        "sequenceStoreId" => String.t() | atom(),
        "sourceFileType" => String.t() | atom(),
        "subjectId" => String.t() | atom(),
        "tags" => map(),
        "uploadId" => String.t() | atom()
      }

  """
  @type multipart_read_set_upload_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      variant_import_item_detail() :: %{
        "jobStatus" => String.t() | atom(),
        "source" => String.t() | atom(),
        "statusMessage" => String.t() | atom()
      }

  """
  @type variant_import_item_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_run_task_request() :: %{}

  """
  @type get_run_task_request() :: %{}

  @typedoc """

  ## Example:

      get_run_task_response() :: %{
        "cacheHit" => [boolean()],
        "cacheS3Uri" => String.t() | atom(),
        "cpus" => [integer()],
        "creationTime" => non_neg_integer(),
        "failureReason" => String.t() | atom(),
        "gpus" => [integer()],
        "instanceType" => String.t() | atom(),
        "logStream" => String.t() | atom(),
        "memory" => [integer()],
        "name" => String.t() | atom(),
        "startTime" => non_neg_integer(),
        "status" => String.t() | atom(),
        "statusMessage" => String.t() | atom(),
        "stopTime" => non_neg_integer(),
        "taskId" => String.t() | atom()
      }

  """
  @type get_run_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_reference_store_response() :: %{
        "arn" => String.t() | atom(),
        "creationTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "sseConfig" => sse_config()
      }

  """
  @type create_reference_store_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_reference_source_item() :: %{
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "referenceId" => String.t() | atom(),
        "sourceFile" => String.t() | atom(),
        "status" => String.t() | atom(),
        "statusMessage" => String.t() | atom(),
        "tags" => map()
      }

  """
  @type import_reference_source_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_read_set_upload_parts_request() :: %{
        optional("filter") => read_set_upload_part_list_filter(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        required("partSource") => String.t() | atom()
      }

  """
  @type list_read_set_upload_parts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_references_request() :: %{
        optional("filter") => reference_filter(),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_references_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      read_set_list_item() :: %{
        "arn" => String.t() | atom(),
        "creationTime" => [non_neg_integer()],
        "creationType" => String.t() | atom(),
        "description" => String.t() | atom(),
        "etag" => e_tag(),
        "fileType" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "referenceArn" => String.t() | atom(),
        "sampleId" => String.t() | atom(),
        "sequenceInformation" => sequence_information(),
        "sequenceStoreId" => String.t() | atom(),
        "status" => String.t() | atom(),
        "statusMessage" => String.t() | atom(),
        "subjectId" => String.t() | atom()
      }

  """
  @type read_set_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_annotation_import_request() :: %{}

  """
  @type get_annotation_import_request() :: %{}

  @typedoc """

  ## Example:

      get_s3_access_policy_response() :: %{
        "s3AccessPointArn" => String.t() | atom(),
        "s3AccessPolicy" => String.t() | atom(),
        "storeId" => String.t() | atom(),
        "storeType" => list(any()),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type get_s3_access_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_reference_response() :: %{}

  """
  @type delete_reference_response() :: %{}

  @typedoc """

  ## Example:

      start_run_request() :: %{
        optional("cacheBehavior") => String.t() | atom(),
        optional("cacheId") => String.t() | atom(),
        optional("logLevel") => String.t() | atom(),
        optional("name") => String.t() | atom(),
        optional("outputUri") => String.t() | atom(),
        optional("parameters") => any(),
        optional("priority") => [integer()],
        optional("retentionMode") => String.t() | atom(),
        optional("runGroupId") => String.t() | atom(),
        optional("runId") => String.t() | atom(),
        optional("storageCapacity") => [integer()],
        optional("storageType") => String.t() | atom(),
        optional("tags") => map(),
        optional("workflowId") => String.t() | atom(),
        optional("workflowOwnerId") => String.t() | atom(),
        optional("workflowType") => String.t() | atom(),
        optional("workflowVersionName") => String.t() | atom(),
        required("requestId") => String.t() | atom(),
        required("roleArn") => String.t() | atom()
      }

  """
  @type start_run_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_annotation_store_versions_request() :: %{
        optional("force") => [boolean()],
        required("versions") => list(String.t() | atom())
      }

  """
  @type delete_annotation_store_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_workflow_version_request() :: %{
        optional("description") => String.t() | atom(),
        optional("readmeMarkdown") => String.t() | atom(),
        optional("storageCapacity") => [integer()],
        optional("storageType") => String.t() | atom()
      }

  """
  @type update_workflow_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_share_request() :: %{}

  """
  @type get_share_request() :: %{}

  @typedoc """

  ## Example:

      start_read_set_activation_job_response() :: %{
        "creationTime" => [non_neg_integer()],
        "id" => String.t() | atom(),
        "sequenceStoreId" => String.t() | atom(),
        "status" => String.t() | atom()
      }

  """
  @type start_read_set_activation_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_annotation_store_version_request() :: %{
        optional("description") => String.t() | atom(),
        optional("tags") => map(),
        optional("versionOptions") => list(),
        required("versionName") => String.t() | atom()
      }

  """
  @type create_annotation_store_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_share_response() :: %{
        "share" => share_details()
      }

  """
  @type get_share_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_variant_import_response() :: %{}

  """
  @type cancel_variant_import_response() :: %{}

  @typedoc """

  ## Example:

      list_read_set_upload_parts_response() :: %{
        "nextToken" => String.t() | atom(),
        "parts" => list(read_set_upload_part_list_item())
      }

  """
  @type list_read_set_upload_parts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_reference_store_response() :: %{}

  """
  @type delete_reference_store_response() :: %{}

  @typedoc """

  ## Example:

      delete_share_response() :: %{
        "status" => String.t() | atom()
      }

  """
  @type delete_share_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_read_set_activation_job_source_item() :: %{
        "readSetId" => String.t() | atom()
      }

  """
  @type start_read_set_activation_job_source_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_variant_import_request() :: %{
        optional("annotationFields") => map(),
        optional("runLeftNormalization") => boolean(),
        required("destinationName") => String.t() | atom(),
        required("items") => list(variant_import_item_source()),
        required("roleArn") => String.t() | atom()
      }

  """
  @type start_variant_import_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      source_files() :: %{
        "source1" => String.t() | atom(),
        "source2" => String.t() | atom()
      }

  """
  @type source_files() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_reference_import_job_request() :: %{}

  """
  @type get_reference_import_job_request() :: %{}

  @typedoc """

  ## Example:

      file_information() :: %{
        "contentLength" => [float()],
        "partSize" => [float()],
        "s3Access" => read_set_s3_access(),
        "totalParts" => [integer()]
      }

  """
  @type file_information() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_read_set_export_job_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("destination") => String.t() | atom(),
        required("roleArn") => String.t() | atom(),
        required("sources") => list(export_read_set())
      }

  """
  @type start_read_set_export_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_variant_import_response() :: %{
        "jobId" => String.t() | atom()
      }

  """
  @type start_variant_import_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tsv_store_options() :: %{
        "annotationType" => String.t() | atom(),
        "formatToHeader" => map(),
        "schema" => list(map())
      }

  """
  @type tsv_store_options() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_annotation_store_versions_request() :: %{
        optional("filter") => list_annotation_store_versions_filter(),
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_annotation_store_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_run_response() :: %{
        "priority" => [integer()],
        "id" => String.t() | atom(),
        "accelerators" => String.t() | atom(),
        "workflowVersionName" => String.t() | atom(),
        "creationTime" => non_neg_integer(),
        "runGroupId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "logLevel" => String.t() | atom(),
        "workflowType" => String.t() | atom(),
        "startedBy" => String.t() | atom(),
        "roleArn" => String.t() | atom(),
        "digest" => String.t() | atom(),
        "runOutputUri" => String.t() | atom(),
        "retentionMode" => String.t() | atom(),
        "uuid" => String.t() | atom(),
        "storageCapacity" => [integer()],
        "workflowId" => String.t() | atom(),
        "statusMessage" => String.t() | atom(),
        "workflowUuid" => String.t() | atom(),
        "startTime" => non_neg_integer(),
        "runId" => String.t() | atom(),
        "engineVersion" => String.t() | atom(),
        "cacheId" => String.t() | atom(),
        "tags" => map(),
        "failureReason" => String.t() | atom(),
        "logLocation" => run_log_location(),
        "outputUri" => String.t() | atom(),
        "definition" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "parameters" => any(),
        "cacheBehavior" => String.t() | atom(),
        "storageType" => String.t() | atom(),
        "status" => String.t() | atom(),
        "stopTime" => non_neg_integer(),
        "resourceDigests" => map(),
        "workflowOwnerId" => String.t() | atom()
      }

  """
  @type get_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_run_groups_request() :: %{
        optional("maxResults") => [integer()],
        optional("name") => String.t() | atom(),
        optional("startingToken") => String.t() | atom()
      }

  """
  @type list_run_groups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_workflows_response() :: %{
        "items" => list(workflow_list_item()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_workflows_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_annotation_stores_filter() :: %{
        "status" => String.t() | atom()
      }

  """
  @type list_annotation_stores_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      range_not_satisfiable_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type range_not_satisfiable_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      complete_multipart_read_set_upload_request() :: %{
        required("parts") => list(complete_read_set_upload_part_list_item())
      }

  """
  @type complete_multipart_read_set_upload_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      read_set_batch_error() :: %{
        "code" => [String.t() | atom()],
        "id" => String.t() | atom(),
        "message" => [String.t() | atom()]
      }

  """
  @type read_set_batch_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_run_response() :: %{
        "arn" => String.t() | atom(),
        "id" => String.t() | atom(),
        "runOutputUri" => String.t() | atom(),
        "status" => String.t() | atom(),
        "tags" => map(),
        "uuid" => String.t() | atom()
      }

  """
  @type start_run_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_runs_request() :: %{
        optional("maxResults") => [integer()],
        optional("name") => String.t() | atom(),
        optional("runGroupId") => String.t() | atom(),
        optional("startingToken") => String.t() | atom(),
        optional("status") => String.t() | atom()
      }

  """
  @type list_runs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_variant_store_response() :: %{
        "creationTime" => non_neg_integer(),
        "description" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => [String.t() | atom()],
        "reference" => list(),
        "sseConfig" => sse_config(),
        "status" => String.t() | atom(),
        "statusMessage" => String.t() | atom(),
        "storeArn" => String.t() | atom(),
        "storeSizeBytes" => [float()],
        "tags" => map(),
        "updateTime" => non_neg_integer()
      }

  """
  @type get_variant_store_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_share_request() :: %{}

  """
  @type delete_share_request() :: %{}

  @typedoc """

  ## Example:

      list_annotation_import_jobs_filter() :: %{
        "status" => String.t() | atom(),
        "storeName" => [String.t() | atom()]
      }

  """
  @type list_annotation_import_jobs_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_reference_import_jobs_response() :: %{
        "importJobs" => list(import_reference_job_item()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_reference_import_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_annotation_import_response() :: %{
        "annotationFields" => map(),
        "completionTime" => non_neg_integer(),
        "creationTime" => non_neg_integer(),
        "destinationName" => String.t() | atom(),
        "formatOptions" => list(),
        "id" => String.t() | atom(),
        "items" => list(annotation_import_item_detail()),
        "roleArn" => String.t() | atom(),
        "runLeftNormalization" => boolean(),
        "status" => String.t() | atom(),
        "statusMessage" => String.t() | atom(),
        "updateTime" => non_neg_integer(),
        "versionName" => String.t() | atom()
      }

  """
  @type get_annotation_import_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      read_set_s3_access() :: %{
        "s3Uri" => String.t() | atom()
      }

  """
  @type read_set_s3_access() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_run_group_request() :: %{
        optional("maxCpus") => [integer()],
        optional("maxDuration") => [integer()],
        optional("maxGpus") => [integer()],
        optional("maxRuns") => [integer()],
        optional("name") => String.t() | atom(),
        optional("tags") => map(),
        required("requestId") => String.t() | atom()
      }

  """
  @type create_run_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      abort_multipart_read_set_upload_response() :: %{}

  """
  @type abort_multipart_read_set_upload_response() :: %{}

  @typedoc """

  ## Example:

      list_variant_import_jobs_filter() :: %{
        "status" => String.t() | atom(),
        "storeName" => [String.t() | atom()]
      }

  """
  @type list_variant_import_jobs_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      export_read_set_filter() :: %{
        "createdAfter" => [non_neg_integer()],
        "createdBefore" => [non_neg_integer()],
        "status" => String.t() | atom()
      }

  """
  @type export_read_set_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sequence_store_detail() :: %{
        "arn" => String.t() | atom(),
        "creationTime" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "eTagAlgorithmFamily" => String.t() | atom(),
        "fallbackLocation" => String.t() | atom(),
        "id" => String.t() | atom(),
        "name" => String.t() | atom(),
        "sseConfig" => sse_config(),
        "status" => String.t() | atom(),
        "statusMessage" => String.t() | atom(),
        "updateTime" => [non_neg_integer()]
      }

  """
  @type sequence_store_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workflow_response() :: %{
        "accelerators" => String.t() | atom(),
        "arn" => String.t() | atom(),
        "creationTime" => non_neg_integer(),
        "definition" => String.t() | atom(),
        "definitionRepositoryDetails" => definition_repository_details(),
        "description" => String.t() | atom(),
        "digest" => String.t() | atom(),
        "engine" => String.t() | atom(),
        "id" => String.t() | atom(),
        "main" => String.t() | atom(),
        "metadata" => map(),
        "name" => String.t() | atom(),
        "parameterTemplate" => map(),
        "readme" => String.t() | atom(),
        "readmePath" => String.t() | atom(),
        "status" => String.t() | atom(),
        "statusMessage" => String.t() | atom(),
        "storageCapacity" => [integer()],
        "storageType" => String.t() | atom(),
        "tags" => map(),
        "type" => String.t() | atom(),
        "uuid" => String.t() | atom()
      }

  """
  @type get_workflow_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      export_read_set() :: %{
        "readSetId" => String.t() | atom()
      }

  """
  @type export_read_set() :: %{(String.t() | atom()) => any()}

  @type abort_multipart_read_set_upload_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | not_supported_operation_exception()
          | request_timeout_exception()

  @type accept_share_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type batch_delete_read_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type cancel_annotation_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type cancel_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type cancel_variant_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type complete_multipart_read_set_upload_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | not_supported_operation_exception()
          | request_timeout_exception()

  @type create_annotation_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_annotation_store_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_multipart_read_set_upload_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | not_supported_operation_exception()
          | request_timeout_exception()

  @type create_reference_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | request_timeout_exception()

  @type create_run_cache_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type create_run_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type create_sequence_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | request_timeout_exception()

  @type create_share_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_variant_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_workflow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type create_workflow_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type delete_annotation_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_annotation_store_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_reference_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type delete_reference_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type delete_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type delete_run_cache_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type delete_run_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type delete_s3_access_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | not_supported_operation_exception()
          | request_timeout_exception()

  @type delete_sequence_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type delete_share_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_variant_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_workflow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type delete_workflow_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type get_annotation_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_annotation_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_annotation_store_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_read_set_errors() ::
          range_not_satisfiable_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type get_read_set_activation_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type get_read_set_export_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type get_read_set_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type get_read_set_metadata_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type get_reference_errors() ::
          range_not_satisfiable_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type get_reference_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type get_reference_metadata_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type get_reference_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type get_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type get_run_cache_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type get_run_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type get_run_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type get_s3_access_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | not_supported_operation_exception()
          | request_timeout_exception()

  @type get_sequence_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type get_share_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_variant_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_variant_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_workflow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type get_workflow_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type list_annotation_import_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_annotation_store_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_annotation_stores_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_multipart_read_set_uploads_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | not_supported_operation_exception()
          | request_timeout_exception()

  @type list_read_set_activation_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type list_read_set_export_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type list_read_set_import_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type list_read_set_upload_parts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | not_supported_operation_exception()
          | request_timeout_exception()

  @type list_read_sets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type list_reference_import_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type list_reference_stores_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | request_timeout_exception()

  @type list_references_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type list_run_caches_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type list_run_groups_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type list_run_tasks_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type list_runs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type list_sequence_stores_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | request_timeout_exception()

  @type list_shares_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type list_variant_import_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_variant_stores_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_workflow_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type list_workflows_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type put_s3_access_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | not_supported_operation_exception()
          | request_timeout_exception()

  @type start_annotation_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type start_read_set_activation_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type start_read_set_export_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type start_read_set_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type start_reference_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | request_timeout_exception()

  @type start_run_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type start_variant_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type update_annotation_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_annotation_store_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_run_cache_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type update_run_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type update_sequence_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type update_variant_store_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_workflow_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type update_workflow_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | request_timeout_exception()

  @type upload_read_set_part_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | not_supported_operation_exception()
          | request_timeout_exception()

  def metadata do
    %{
      api_version: "2022-11-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "omics",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Omics",
      signature_version: "v4",
      signing_name: "omics",
      target_prefix: nil
    }
  end

  @doc """
  Stops a multipart upload.
  """
  @spec abort_multipart_read_set_upload(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          abort_multipart_read_set_upload_request(),
          list()
        ) ::
          {:ok, abort_multipart_read_set_upload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, abort_multipart_read_set_upload_errors()}
  def abort_multipart_read_set_upload(
        %Client{} = client,
        sequence_store_id,
        upload_id,
        input,
        options \\ []
      ) do
    url_path =
      "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/upload/#{AWS.Util.encode_uri(upload_id)}/abort"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Accept a resource share request.
  """
  @spec accept_share(map(), String.t() | atom(), accept_share_request(), list()) ::
          {:ok, accept_share_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_share_errors()}
  def accept_share(%Client{} = client, share_id, input, options \\ []) do
    url_path = "/share/#{AWS.Util.encode_uri(share_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes one or more read sets.
  """
  @spec batch_delete_read_set(map(), String.t() | atom(), batch_delete_read_set_request(), list()) ::
          {:ok, batch_delete_read_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_delete_read_set_errors()}
  def batch_delete_read_set(%Client{} = client, sequence_store_id, input, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/readset/batch/delete"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Cancels an annotation import job.
  """
  @spec cancel_annotation_import_job(
          map(),
          String.t() | atom(),
          cancel_annotation_import_request(),
          list()
        ) ::
          {:ok, cancel_annotation_import_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_annotation_import_job_errors()}
  def cancel_annotation_import_job(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/import/annotation/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Cancels a run using its ID and returns a response with no body if the operation
  is successful.

  To confirm that the run has been cancelled, use the `ListRuns` API operation to
  check that it is no longer listed.
  """
  @spec cancel_run(map(), String.t() | atom(), cancel_run_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_run_errors()}
  def cancel_run(%Client{} = client, id, input, options \\ []) do
    url_path = "/run/#{AWS.Util.encode_uri(id)}/cancel"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Cancels a variant import job.
  """
  @spec cancel_variant_import_job(
          map(),
          String.t() | atom(),
          cancel_variant_import_request(),
          list()
        ) ::
          {:ok, cancel_variant_import_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_variant_import_job_errors()}
  def cancel_variant_import_job(%Client{} = client, job_id, input, options \\ []) do
    url_path = "/import/variant/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Concludes a multipart upload once you have uploaded all the components.
  """
  @spec complete_multipart_read_set_upload(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          complete_multipart_read_set_upload_request(),
          list()
        ) ::
          {:ok, complete_multipart_read_set_upload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, complete_multipart_read_set_upload_errors()}
  def complete_multipart_read_set_upload(
        %Client{} = client,
        sequence_store_id,
        upload_id,
        input,
        options \\ []
      ) do
    url_path =
      "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/upload/#{AWS.Util.encode_uri(upload_id)}/complete"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "storage-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates an annotation store.
  """
  @spec create_annotation_store(map(), create_annotation_store_request(), list()) ::
          {:ok, create_annotation_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_annotation_store_errors()}
  def create_annotation_store(%Client{} = client, input, options \\ []) do
    url_path = "/annotationStore"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a new version of an annotation store.
  """
  @spec create_annotation_store_version(
          map(),
          String.t() | atom(),
          create_annotation_store_version_request(),
          list()
        ) ::
          {:ok, create_annotation_store_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_annotation_store_version_errors()}
  def create_annotation_store_version(%Client{} = client, name, input, options \\ []) do
    url_path = "/annotationStore/#{AWS.Util.encode_uri(name)}/version"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Begins a multipart read set upload.
  """
  @spec create_multipart_read_set_upload(
          map(),
          String.t() | atom(),
          create_multipart_read_set_upload_request(),
          list()
        ) ::
          {:ok, create_multipart_read_set_upload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_multipart_read_set_upload_errors()}
  def create_multipart_read_set_upload(
        %Client{} = client,
        sequence_store_id,
        input,
        options \\ []
      ) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/upload"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a reference store.
  """
  @spec create_reference_store(map(), create_reference_store_request(), list()) ::
          {:ok, create_reference_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_reference_store_errors()}
  def create_reference_store(%Client{} = client, input, options \\ []) do
    url_path = "/referencestore"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a run cache to store and reference task outputs from completed private
  runs.

  Specify an Amazon S3 location where Amazon Web Services HealthOmics saves the
  cached data. This data must be immediately accessible and not in an archived
  state. You can save intermediate task files to a run cache if they are declared
  as task outputs in the workflow definition file.

  For more information, see [Call caching](https://docs.aws.amazon.com/omics/latest/dev/workflows-call-caching.html)
  and [Creating a run cache](https://docs.aws.amazon.com/omics/latest/dev/workflow-cache-create.html)
  in the *Amazon Web Services HealthOmics User Guide*.
  """
  @spec create_run_cache(map(), create_run_cache_request(), list()) ::
          {:ok, create_run_cache_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_run_cache_errors()}
  def create_run_cache(%Client{} = client, input, options \\ []) do
    url_path = "/runCache"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a run group to limit the compute resources for the runs that are added
  to the group.

  Returns an ARN, ID, and tags for the run group.
  """
  @spec create_run_group(map(), create_run_group_request(), list()) ::
          {:ok, create_run_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_run_group_errors()}
  def create_run_group(%Client{} = client, input, options \\ []) do
    url_path = "/runGroup"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a sequence store.
  """
  @spec create_sequence_store(map(), create_sequence_store_request(), list()) ::
          {:ok, create_sequence_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_sequence_store_errors()}
  def create_sequence_store(%Client{} = client, input, options \\ []) do
    url_path = "/sequencestore"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a cross-account shared resource.

  The resource owner makes an offer to share the resource with the principal
  subscriber (an AWS user with a different account than the resource owner).

  The following resources support cross-account sharing:

    * HealthOmics variant stores

    * HealthOmics annotation stores

    * Private workflows
  """
  @spec create_share(map(), create_share_request(), list()) ::
          {:ok, create_share_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_share_errors()}
  def create_share(%Client{} = client, input, options \\ []) do
    url_path = "/share"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a variant store.
  """
  @spec create_variant_store(map(), create_variant_store_request(), list()) ::
          {:ok, create_variant_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_variant_store_errors()}
  def create_variant_store(%Client{} = client, input, options \\ []) do
    url_path = "/variantStore"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a private workflow.

  Before you create a private workflow, you must create and configure these
  required resources:

    * *Workflow definition files*: Define your workflow in one or more
  workflow definition files, written in WDL, Nextflow, or CWL. The workflow
  definition specifies the inputs and outputs for runs that use the workflow. It
  also includes specifications for the runs and run tasks for your workflow,
  including compute and memory requirements. The workflow definition file must be
  in .zip format.

    * (Optional) *Parameter template*: You can create a parameter
  template file that defines the run parameters, or Amazon Web Services
  HealthOmics can generate the parameter template for you.

    * *ECR container images*: Create one or more container images for
  the workflow. Store the images in a private ECR repository.

    * (Optional) *Sentieon licenses*: Request a Sentieon license if
  using the Sentieon software in a private workflow.

  For more information, see [Creating or updating a private workflow in Amazon Web Services
  HealthOmics](https://docs.aws.amazon.com/omics/latest/dev/creating-private-workflows.html)
  in the *Amazon Web Services HealthOmics User Guide*.
  """
  @spec create_workflow(map(), create_workflow_request(), list()) ::
          {:ok, create_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_workflow_errors()}
  def create_workflow(%Client{} = client, input, options \\ []) do
    url_path = "/workflow"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a new workflow version for the workflow that you specify with the
  `workflowId` parameter.

  When you create a new version of a workflow, you need to specify the
  configuration for the new version. It doesn't inherit any configuration values
  from the workflow.

  Provide a version name that is unique for this workflow. You cannot change the
  name after HealthOmics creates the version.

  Don’t include any personally identifiable information (PII) in the version name.
  Version names appear in the workflow version ARN.

  For more information, see [Workflow versioning in Amazon Web Services HealthOmics](https://docs.aws.amazon.com/omics/latest/dev/workflow-versions.html)
  in the *Amazon Web Services HealthOmics User Guide*.
  """
  @spec create_workflow_version(
          map(),
          String.t() | atom(),
          create_workflow_version_request(),
          list()
        ) ::
          {:ok, create_workflow_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_workflow_version_errors()}
  def create_workflow_version(%Client{} = client, workflow_id, input, options \\ []) do
    url_path = "/workflow/#{AWS.Util.encode_uri(workflow_id)}/version"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Deletes an annotation store.
  """
  @spec delete_annotation_store(
          map(),
          String.t() | atom(),
          delete_annotation_store_request(),
          list()
        ) ::
          {:ok, delete_annotation_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_annotation_store_errors()}
  def delete_annotation_store(%Client{} = client, name, input, options \\ []) do
    url_path = "/annotationStore/#{AWS.Util.encode_uri(name)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"force", "force"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes one or multiple versions of an annotation store.
  """
  @spec delete_annotation_store_versions(
          map(),
          String.t() | atom(),
          delete_annotation_store_versions_request(),
          list()
        ) ::
          {:ok, delete_annotation_store_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_annotation_store_versions_errors()}
  def delete_annotation_store_versions(%Client{} = client, name, input, options \\ []) do
    url_path = "/annotationStore/#{AWS.Util.encode_uri(name)}/versions/delete"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"force", "force"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a genome reference.
  """
  @spec delete_reference(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_reference_request(),
          list()
        ) ::
          {:ok, delete_reference_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_reference_errors()}
  def delete_reference(%Client{} = client, id, reference_store_id, input, options \\ []) do
    url_path =
      "/referencestore/#{AWS.Util.encode_uri(reference_store_id)}/reference/#{AWS.Util.encode_uri(id)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a genome reference store.
  """
  @spec delete_reference_store(
          map(),
          String.t() | atom(),
          delete_reference_store_request(),
          list()
        ) ::
          {:ok, delete_reference_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_reference_store_errors()}
  def delete_reference_store(%Client{} = client, id, input, options \\ []) do
    url_path = "/referencestore/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a run and returns a response with no body if the operation is
  successful.

  You can only delete a run that has reached a `COMPLETED`, `FAILED`, or
  `CANCELLED` stage. A completed run has delivered an output, or was cancelled and
  resulted in no output. When you delete a run, only the metadata associated with
  the run is deleted. The run outputs remain in Amazon S3 and logs remain in
  CloudWatch.

  To verify that the workflow is deleted:

    * Use `ListRuns` to confirm the workflow no longer appears in the
  list.

    * Use `GetRun` to verify the workflow cannot be found.
  """
  @spec delete_run(map(), String.t() | atom(), delete_run_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_run_errors()}
  def delete_run(%Client{} = client, id, input, options \\ []) do
    url_path = "/run/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Deletes a run cache and returns a response with no body if the operation is
  successful.

  This action removes the cache metadata stored in the service account, but does
  not delete the data in Amazon S3. You can access the cache data in Amazon S3,
  for inspection or to troubleshoot issues. You can remove old cache data using
  standard S3 `Delete` operations.

  For more information, see [Deleting a run cache](https://docs.aws.amazon.com/omics/latest/dev/workflow-cache-delete.html)
  in the *Amazon Web Services HealthOmics User Guide*.
  """
  @spec delete_run_cache(map(), String.t() | atom(), delete_run_cache_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_run_cache_errors()}
  def delete_run_cache(%Client{} = client, id, input, options \\ []) do
    url_path = "/runCache/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Deletes a run group and returns a response with no body if the operation is
  successful.

  To verify that the run group is deleted:

    * Use `ListRunGroups` to confirm the workflow no longer appears in
  the list.

    * Use `GetRunGroup` to verify the workflow cannot be found.
  """
  @spec delete_run_group(map(), String.t() | atom(), delete_run_group_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_run_group_errors()}
  def delete_run_group(%Client{} = client, id, input, options \\ []) do
    url_path = "/runGroup/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Deletes an access policy for the specified store.
  """
  @spec delete_s3_access_policy(
          map(),
          String.t() | atom(),
          delete_s3_access_policy_request(),
          list()
        ) ::
          {:ok, delete_s3_access_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_s3_access_policy_errors()}
  def delete_s3_access_policy(%Client{} = client, s3_access_point_arn, input, options \\ []) do
    url_path = "/s3accesspolicy/#{AWS.Util.encode_uri(s3_access_point_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a sequence store.
  """
  @spec delete_sequence_store(map(), String.t() | atom(), delete_sequence_store_request(), list()) ::
          {:ok, delete_sequence_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_sequence_store_errors()}
  def delete_sequence_store(%Client{} = client, id, input, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a resource share.

  If you are the resource owner, the subscriber will no longer have access to the
  shared resource. If you are the subscriber, this operation deletes your access
  to the share.
  """
  @spec delete_share(map(), String.t() | atom(), delete_share_request(), list()) ::
          {:ok, delete_share_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_share_errors()}
  def delete_share(%Client{} = client, share_id, input, options \\ []) do
    url_path = "/share/#{AWS.Util.encode_uri(share_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a variant store.
  """
  @spec delete_variant_store(map(), String.t() | atom(), delete_variant_store_request(), list()) ::
          {:ok, delete_variant_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_variant_store_errors()}
  def delete_variant_store(%Client{} = client, name, input, options \\ []) do
    url_path = "/variantStore/#{AWS.Util.encode_uri(name)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"force", "force"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a workflow by specifying its ID.

  No response is returned if the deletion is successful.

  To verify that the workflow is deleted:

    * Use `ListWorkflows` to confirm the workflow no longer appears in
  the list.

    * Use `GetWorkflow` to verify the workflow cannot be found.
  """
  @spec delete_workflow(map(), String.t() | atom(), delete_workflow_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_workflow_errors()}
  def delete_workflow(%Client{} = client, id, input, options \\ []) do
    url_path = "/workflow/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Deletes a workflow version.

  Deleting a workflow version doesn't affect any ongoing runs that are using the
  workflow version.

  For more information, see [Workflow versioning in Amazon Web Services HealthOmics](https://docs.aws.amazon.com/omics/latest/dev/workflow-versions.html)
  in the *Amazon Web Services HealthOmics User Guide*.
  """
  @spec delete_workflow_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_workflow_version_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_workflow_version_errors()}
  def delete_workflow_version(%Client{} = client, version_name, workflow_id, input, options \\ []) do
    url_path =
      "/workflow/#{AWS.Util.encode_uri(workflow_id)}/version/#{AWS.Util.encode_uri(version_name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Gets information about an annotation import job.
  """
  @spec get_annotation_import_job(map(), String.t() | atom(), list()) ::
          {:ok, get_annotation_import_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_annotation_import_job_errors()}
  def get_annotation_import_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/import/annotation/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about an annotation store.
  """
  @spec get_annotation_store(map(), String.t() | atom(), list()) ::
          {:ok, get_annotation_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_annotation_store_errors()}
  def get_annotation_store(%Client{} = client, name, options \\ []) do
    url_path = "/annotationStore/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the metadata for an annotation store version.
  """
  @spec get_annotation_store_version(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_annotation_store_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_annotation_store_version_errors()}
  def get_annotation_store_version(%Client{} = client, name, version_name, options \\ []) do
    url_path =
      "/annotationStore/#{AWS.Util.encode_uri(name)}/version/#{AWS.Util.encode_uri(version_name)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a file from a read set.
  """
  @spec get_read_set(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_read_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_read_set_errors()}
  def get_read_set(
        %Client{} = client,
        id,
        sequence_store_id,
        file \\ nil,
        part_number,
        options \\ []
      ) do
    url_path =
      "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/readset/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(part_number) do
        [{"partNumber", part_number} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(file) do
        [{"file", file} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a read set activation job.
  """
  @spec get_read_set_activation_job(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_read_set_activation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_read_set_activation_job_errors()}
  def get_read_set_activation_job(%Client{} = client, id, sequence_store_id, options \\ []) do
    url_path =
      "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/activationjob/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a read set export job.
  """
  @spec get_read_set_export_job(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_read_set_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_read_set_export_job_errors()}
  def get_read_set_export_job(%Client{} = client, id, sequence_store_id, options \\ []) do
    url_path =
      "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/exportjob/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a read set import job.
  """
  @spec get_read_set_import_job(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_read_set_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_read_set_import_job_errors()}
  def get_read_set_import_job(%Client{} = client, id, sequence_store_id, options \\ []) do
    url_path =
      "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/importjob/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets details about a read set.
  """
  @spec get_read_set_metadata(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_read_set_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_read_set_metadata_errors()}
  def get_read_set_metadata(%Client{} = client, id, sequence_store_id, options \\ []) do
    url_path =
      "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/readset/#{AWS.Util.encode_uri(id)}/metadata"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a reference file.
  """
  @spec get_reference(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_reference_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_reference_errors()}
  def get_reference(
        %Client{} = client,
        id,
        reference_store_id,
        file \\ nil,
        part_number,
        range \\ nil,
        options \\ []
      ) do
    url_path =
      "/referencestore/#{AWS.Util.encode_uri(reference_store_id)}/reference/#{AWS.Util.encode_uri(id)}"

    headers = []

    headers =
      if !is_nil(range) do
        [{"Range", range} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(part_number) do
        [{"partNumber", part_number} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(file) do
        [{"file", file} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a reference import job.
  """
  @spec get_reference_import_job(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_reference_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_reference_import_job_errors()}
  def get_reference_import_job(%Client{} = client, id, reference_store_id, options \\ []) do
    url_path =
      "/referencestore/#{AWS.Util.encode_uri(reference_store_id)}/importjob/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a genome reference's metadata.
  """
  @spec get_reference_metadata(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_reference_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_reference_metadata_errors()}
  def get_reference_metadata(%Client{} = client, id, reference_store_id, options \\ []) do
    url_path =
      "/referencestore/#{AWS.Util.encode_uri(reference_store_id)}/reference/#{AWS.Util.encode_uri(id)}/metadata"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a reference store.
  """
  @spec get_reference_store(map(), String.t() | atom(), list()) ::
          {:ok, get_reference_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_reference_store_errors()}
  def get_reference_store(%Client{} = client, id, options \\ []) do
    url_path = "/referencestore/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets detailed information about a specific run using its ID.

  Amazon Web Services HealthOmics stores a configurable number of runs, as
  determined by service limits, that are available to the console and API. If
  `GetRun` does not return the requested run, you can find all run logs in the
  CloudWatch logs. For more information about viewing the run logs, see
  [CloudWatch logs](https://docs.aws.amazon.com/omics/latest/dev/monitoring-cloudwatch-logs.html)
  in the *Amazon Web Services HealthOmics User Guide*.
  """
  @spec get_run(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, get_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_run_errors()}
  def get_run(%Client{} = client, id, export \\ nil, options \\ []) do
    url_path = "/run/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(export) do
        [{"export", export} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves detailed information about the specified run cache using its ID.

  For more information, see [Call caching for Amazon Web Services HealthOmics runs](https://docs.aws.amazon.com/omics/latest/dev/workflows-call-caching.html)
  in the *Amazon Web Services HealthOmics User Guide*.
  """
  @spec get_run_cache(map(), String.t() | atom(), list()) ::
          {:ok, get_run_cache_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_run_cache_errors()}
  def get_run_cache(%Client{} = client, id, options \\ []) do
    url_path = "/runCache/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a run group and returns its metadata.
  """
  @spec get_run_group(map(), String.t() | atom(), list()) ::
          {:ok, get_run_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_run_group_errors()}
  def get_run_group(%Client{} = client, id, options \\ []) do
    url_path = "/runGroup/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets detailed information about a run task using its ID.
  """
  @spec get_run_task(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_run_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_run_task_errors()}
  def get_run_task(%Client{} = client, id, task_id, options \\ []) do
    url_path = "/run/#{AWS.Util.encode_uri(id)}/task/#{AWS.Util.encode_uri(task_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves details about an access policy on a given store.
  """
  @spec get_s3_access_policy(map(), String.t() | atom(), list()) ::
          {:ok, get_s3_access_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_s3_access_policy_errors()}
  def get_s3_access_policy(%Client{} = client, s3_access_point_arn, options \\ []) do
    url_path = "/s3accesspolicy/#{AWS.Util.encode_uri(s3_access_point_arn)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a sequence store.
  """
  @spec get_sequence_store(map(), String.t() | atom(), list()) ::
          {:ok, get_sequence_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sequence_store_errors()}
  def get_sequence_store(%Client{} = client, id, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the metadata for the specified resource share.
  """
  @spec get_share(map(), String.t() | atom(), list()) ::
          {:ok, get_share_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_share_errors()}
  def get_share(%Client{} = client, share_id, options \\ []) do
    url_path = "/share/#{AWS.Util.encode_uri(share_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a variant import job.
  """
  @spec get_variant_import_job(map(), String.t() | atom(), list()) ::
          {:ok, get_variant_import_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_variant_import_job_errors()}
  def get_variant_import_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/import/variant/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a variant store.
  """
  @spec get_variant_store(map(), String.t() | atom(), list()) ::
          {:ok, get_variant_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_variant_store_errors()}
  def get_variant_store(%Client{} = client, name, options \\ []) do
    url_path = "/variantStore/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets all information about a workflow using its ID.

  If a workflow is shared with you, you cannot export the workflow.

  For more information about your workflow status, see [Verify the workflow status](https://docs.aws.amazon.com/omics/latest/dev/using-get-workflow.html) in
  the *Amazon Web Services HealthOmics User Guide*.
  """
  @spec get_workflow(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_workflow_errors()}
  def get_workflow(
        %Client{} = client,
        id,
        export \\ nil,
        type \\ nil,
        workflow_owner_id \\ nil,
        options \\ []
      ) do
    url_path = "/workflow/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(workflow_owner_id) do
        [{"workflowOwnerId", workflow_owner_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(export) do
        [{"export", export} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a workflow version.

  For more information, see [Workflow versioning in Amazon Web Services HealthOmics](https://docs.aws.amazon.com/omics/latest/dev/workflow-versions.html)
  in the *Amazon Web Services HealthOmics User Guide*.
  """
  @spec get_workflow_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_workflow_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_workflow_version_errors()}
  def get_workflow_version(
        %Client{} = client,
        version_name,
        workflow_id,
        export \\ nil,
        type \\ nil,
        workflow_owner_id \\ nil,
        options \\ []
      ) do
    url_path =
      "/workflow/#{AWS.Util.encode_uri(workflow_id)}/version/#{AWS.Util.encode_uri(version_name)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(workflow_owner_id) do
        [{"workflowOwnerId", workflow_owner_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(export) do
        [{"export", export} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of annotation import jobs.
  """
  @spec list_annotation_import_jobs(map(), list_annotation_import_jobs_request(), list()) ::
          {:ok, list_annotation_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_annotation_import_jobs_errors()}
  def list_annotation_import_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/import/annotations"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists the versions of an annotation store.
  """
  @spec list_annotation_store_versions(
          map(),
          String.t() | atom(),
          list_annotation_store_versions_request(),
          list()
        ) ::
          {:ok, list_annotation_store_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_annotation_store_versions_errors()}
  def list_annotation_store_versions(%Client{} = client, name, input, options \\ []) do
    url_path = "/annotationStore/#{AWS.Util.encode_uri(name)}/versions"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves a list of annotation stores.
  """
  @spec list_annotation_stores(map(), list_annotation_stores_request(), list()) ::
          {:ok, list_annotation_stores_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_annotation_stores_errors()}
  def list_annotation_stores(%Client{} = client, input, options \\ []) do
    url_path = "/annotationStores"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists multipart read set uploads and for in progress uploads.

  Once the upload is completed, a read set is created and the upload will no
  longer be returned in the response.
  """
  @spec list_multipart_read_set_uploads(
          map(),
          String.t() | atom(),
          list_multipart_read_set_uploads_request(),
          list()
        ) ::
          {:ok, list_multipart_read_set_uploads_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_multipart_read_set_uploads_errors()}
  def list_multipart_read_set_uploads(%Client{} = client, sequence_store_id, input, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/uploads"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves a list of read set activation jobs.
  """
  @spec list_read_set_activation_jobs(
          map(),
          String.t() | atom(),
          list_read_set_activation_jobs_request(),
          list()
        ) ::
          {:ok, list_read_set_activation_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_read_set_activation_jobs_errors()}
  def list_read_set_activation_jobs(%Client{} = client, sequence_store_id, input, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/activationjobs"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves a list of read set export jobs.
  """
  @spec list_read_set_export_jobs(
          map(),
          String.t() | atom(),
          list_read_set_export_jobs_request(),
          list()
        ) ::
          {:ok, list_read_set_export_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_read_set_export_jobs_errors()}
  def list_read_set_export_jobs(%Client{} = client, sequence_store_id, input, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/exportjobs"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves a list of read set import jobs.
  """
  @spec list_read_set_import_jobs(
          map(),
          String.t() | atom(),
          list_read_set_import_jobs_request(),
          list()
        ) ::
          {:ok, list_read_set_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_read_set_import_jobs_errors()}
  def list_read_set_import_jobs(%Client{} = client, sequence_store_id, input, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/importjobs"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  This operation will list all parts in a requested multipart upload for a
  sequence store.
  """
  @spec list_read_set_upload_parts(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          list_read_set_upload_parts_request(),
          list()
        ) ::
          {:ok, list_read_set_upload_parts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_read_set_upload_parts_errors()}
  def list_read_set_upload_parts(
        %Client{} = client,
        sequence_store_id,
        upload_id,
        input,
        options \\ []
      ) do
    url_path =
      "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/upload/#{AWS.Util.encode_uri(upload_id)}/parts"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves a list of read sets.
  """
  @spec list_read_sets(map(), String.t() | atom(), list_read_sets_request(), list()) ::
          {:ok, list_read_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_read_sets_errors()}
  def list_read_sets(%Client{} = client, sequence_store_id, input, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/readsets"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves a list of reference import jobs.
  """
  @spec list_reference_import_jobs(
          map(),
          String.t() | atom(),
          list_reference_import_jobs_request(),
          list()
        ) ::
          {:ok, list_reference_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_reference_import_jobs_errors()}
  def list_reference_import_jobs(%Client{} = client, reference_store_id, input, options \\ []) do
    url_path = "/referencestore/#{AWS.Util.encode_uri(reference_store_id)}/importjobs"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves a list of reference stores.
  """
  @spec list_reference_stores(map(), list_reference_stores_request(), list()) ::
          {:ok, list_reference_stores_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_reference_stores_errors()}
  def list_reference_stores(%Client{} = client, input, options \\ []) do
    url_path = "/referencestores"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves a list of references.
  """
  @spec list_references(map(), String.t() | atom(), list_references_request(), list()) ::
          {:ok, list_references_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_references_errors()}
  def list_references(%Client{} = client, reference_store_id, input, options \\ []) do
    url_path = "/referencestore/#{AWS.Util.encode_uri(reference_store_id)}/references"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves a list of your run caches and the metadata for each cache.
  """
  @spec list_run_caches(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_run_caches_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_run_caches_errors()}
  def list_run_caches(
        %Client{} = client,
        max_results \\ nil,
        starting_token \\ nil,
        options \\ []
      ) do
    url_path = "/runCache"
    headers = []
    query_params = []

    query_params =
      if !is_nil(starting_token) do
        [{"startingToken", starting_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of all run groups and returns the metadata for each run group.
  """
  @spec list_run_groups(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_run_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_run_groups_errors()}
  def list_run_groups(
        %Client{} = client,
        max_results \\ nil,
        name \\ nil,
        starting_token \\ nil,
        options \\ []
      ) do
    url_path = "/runGroup"
    headers = []
    query_params = []

    query_params =
      if !is_nil(starting_token) do
        [{"startingToken", starting_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of tasks and status information within their specified run.

  Use this operation to monitor runs and to identify which specific tasks have
  failed.
  """
  @spec list_run_tasks(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_run_tasks_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_run_tasks_errors()}
  def list_run_tasks(
        %Client{} = client,
        id,
        max_results \\ nil,
        starting_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/run/#{AWS.Util.encode_uri(id)}/task"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(starting_token) do
        [{"startingToken", starting_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of runs and returns each run's metadata and status.

  Amazon Web Services HealthOmics stores a configurable number of runs, as
  determined by service limits, that are available to the console and API. If the
  `ListRuns` response doesn't include specific runs that you expected, you can
  find all run logs in the CloudWatch logs. For more information about viewing the
  run logs, see [CloudWatch logs](https://docs.aws.amazon.com/omics/latest/dev/monitoring-cloudwatch-logs.html)
  in the *Amazon Web Services HealthOmics User Guide*.
  """
  @spec list_runs(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_runs_errors()}
  def list_runs(
        %Client{} = client,
        max_results \\ nil,
        name \\ nil,
        run_group_id \\ nil,
        starting_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/run"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(starting_token) do
        [{"startingToken", starting_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(run_group_id) do
        [{"runGroupId", run_group_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of sequence stores.
  """
  @spec list_sequence_stores(map(), list_sequence_stores_request(), list()) ::
          {:ok, list_sequence_stores_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_sequence_stores_errors()}
  def list_sequence_stores(%Client{} = client, input, options \\ []) do
    url_path = "/sequencestores"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves the resource shares associated with an account.

  Use the filter parameter to retrieve a specific subset of the shares.
  """
  @spec list_shares(map(), list_shares_request(), list()) ::
          {:ok, list_shares_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_shares_errors()}
  def list_shares(%Client{} = client, input, options \\ []) do
    url_path = "/shares"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves a list of tags for a resource.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "tags-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of variant import jobs.
  """
  @spec list_variant_import_jobs(map(), list_variant_import_jobs_request(), list()) ::
          {:ok, list_variant_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_variant_import_jobs_errors()}
  def list_variant_import_jobs(%Client{} = client, input, options \\ []) do
    url_path = "/import/variants"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves a list of variant stores.
  """
  @spec list_variant_stores(map(), list_variant_stores_request(), list()) ::
          {:ok, list_variant_stores_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_variant_stores_errors()}
  def list_variant_stores(%Client{} = client, input, options \\ []) do
    url_path = "/variantStores"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists the workflow versions for the specified workflow.

  For more information, see [Workflow versioning in Amazon Web Services HealthOmics](https://docs.aws.amazon.com/omics/latest/dev/workflow-versions.html)
  in the *Amazon Web Services HealthOmics User Guide*.
  """
  @spec list_workflow_versions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_workflow_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_workflow_versions_errors()}
  def list_workflow_versions(
        %Client{} = client,
        workflow_id,
        max_results \\ nil,
        starting_token \\ nil,
        type \\ nil,
        workflow_owner_id \\ nil,
        options \\ []
      ) do
    url_path = "/workflow/#{AWS.Util.encode_uri(workflow_id)}/version"
    headers = []
    query_params = []

    query_params =
      if !is_nil(workflow_owner_id) do
        [{"workflowOwnerId", workflow_owner_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(starting_token) do
        [{"startingToken", starting_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of existing workflows.

  You can filter for specific workflows by their name and type. Using the type
  parameter, specify `PRIVATE` to retrieve a list of private workflows or specify
  `READY2RUN` for a list of all Ready2Run workflows. If you do not specify the
  type of workflow, this operation returns a list of existing workflows.
  """
  @spec list_workflows(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_workflows_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_workflows_errors()}
  def list_workflows(
        %Client{} = client,
        max_results \\ nil,
        name \\ nil,
        starting_token \\ nil,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/workflow"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(starting_token) do
        [{"startingToken", starting_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Adds an access policy to the specified store.
  """
  @spec put_s3_access_policy(map(), String.t() | atom(), put_s3_access_policy_request(), list()) ::
          {:ok, put_s3_access_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_s3_access_policy_errors()}
  def put_s3_access_policy(%Client{} = client, s3_access_point_arn, input, options \\ []) do
    url_path = "/s3accesspolicy/#{AWS.Util.encode_uri(s3_access_point_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Starts an annotation import job.
  """
  @spec start_annotation_import_job(map(), start_annotation_import_request(), list()) ::
          {:ok, start_annotation_import_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_annotation_import_job_errors()}
  def start_annotation_import_job(%Client{} = client, input, options \\ []) do
    url_path = "/import/annotation"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Activates an archived read set.

  To reduce storage charges, Amazon Omics archives unused read sets after 30 days.
  """
  @spec start_read_set_activation_job(
          map(),
          String.t() | atom(),
          start_read_set_activation_job_request(),
          list()
        ) ::
          {:ok, start_read_set_activation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_read_set_activation_job_errors()}
  def start_read_set_activation_job(%Client{} = client, sequence_store_id, input, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/activationjob"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Exports a read set to Amazon S3.
  """
  @spec start_read_set_export_job(
          map(),
          String.t() | atom(),
          start_read_set_export_job_request(),
          list()
        ) ::
          {:ok, start_read_set_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_read_set_export_job_errors()}
  def start_read_set_export_job(%Client{} = client, sequence_store_id, input, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/exportjob"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Starts a read set import job.
  """
  @spec start_read_set_import_job(
          map(),
          String.t() | atom(),
          start_read_set_import_job_request(),
          list()
        ) ::
          {:ok, start_read_set_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_read_set_import_job_errors()}
  def start_read_set_import_job(%Client{} = client, sequence_store_id, input, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/importjob"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Starts a reference import job.
  """
  @spec start_reference_import_job(
          map(),
          String.t() | atom(),
          start_reference_import_job_request(),
          list()
        ) ::
          {:ok, start_reference_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_reference_import_job_errors()}
  def start_reference_import_job(%Client{} = client, reference_store_id, input, options \\ []) do
    url_path = "/referencestore/#{AWS.Util.encode_uri(reference_store_id)}/importjob"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Starts a new run and returns details about the run, or duplicates an existing
  run.

  A run is a single invocation of a workflow. If you provide request IDs, Amazon
  Web Services HealthOmics identifies duplicate requests and starts the run only
  once. Monitor the progress of the run by calling the `GetRun` API operation.

  To start a new run, the following inputs are required:

    * A service role ARN (`roleArn`).

    * The run's workflow ID (`workflowId`, not the `uuid` or `runId`).

    * An Amazon S3 location (`outputUri`) where the run outputs will be
  saved.

    * All required workflow parameters (`parameter`), which can include
  optional parameters from the parameter template. The run cannot include any
  parameters that are not defined in the parameter template. To see all possible
  parameters, use the `GetRun` API operation.

    * For runs with a `STATIC` (default) storage type, specify the
  required storage capacity (in gibibytes). A storage capacity value is not
  required for runs that use `DYNAMIC` storage.

  `StartRun` can also duplicate an existing run using the run's default values.
  You can modify these default values and/or add other optional inputs. To
  duplicate a run, the following inputs are required:

    * A service role ARN (`roleArn`).

    * The ID of the run to duplicate (`runId`).

    * An Amazon S3 location where the run outputs will be saved
  (`outputUri`).

  To learn more about the optional parameters for `StartRun`, see [Starting a run](https://docs.aws.amazon.com/omics/latest/dev/starting-a-run.html) in the
  *Amazon Web Services HealthOmics User Guide*.

  Use the `retentionMode` input to control how long the metadata for each run is
  stored in CloudWatch. There are two retention modes:

    * Specify `REMOVE` to automatically remove the oldest runs when you
  reach the maximum service retention limit for runs. It is recommended that you
  use the `REMOVE` mode to initiate major run requests so that your runs do not
  fail when you reach the limit.

    * The `retentionMode` is set to the `RETAIN` mode by default, which
  allows you to manually remove runs after reaching the maximum service retention
  limit. Under this setting, you cannot create additional runs until you remove
  the excess runs.

  To learn more about the retention modes, see [Run retention mode](https://docs.aws.amazon.com/omics/latest/dev/run-retention.html) in the
  *Amazon Web Services HealthOmics User Guide*.
  """
  @spec start_run(map(), start_run_request(), list()) ::
          {:ok, start_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_run_errors()}
  def start_run(%Client{} = client, input, options \\ []) do
    url_path = "/run"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Starts a variant import job.
  """
  @spec start_variant_import_job(map(), start_variant_import_request(), list()) ::
          {:ok, start_variant_import_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_variant_import_job_errors()}
  def start_variant_import_job(%Client{} = client, input, options \\ []) do
    url_path = "/import/variant"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Tags a resource.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "tags-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Removes tags from a resource.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "tags-")

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates an annotation store.
  """
  @spec update_annotation_store(
          map(),
          String.t() | atom(),
          update_annotation_store_request(),
          list()
        ) ::
          {:ok, update_annotation_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_annotation_store_errors()}
  def update_annotation_store(%Client{} = client, name, input, options \\ []) do
    url_path = "/annotationStore/#{AWS.Util.encode_uri(name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the description of an annotation store version.
  """
  @spec update_annotation_store_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_annotation_store_version_request(),
          list()
        ) ::
          {:ok, update_annotation_store_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_annotation_store_version_errors()}
  def update_annotation_store_version(
        %Client{} = client,
        name,
        version_name,
        input,
        options \\ []
      ) do
    url_path =
      "/annotationStore/#{AWS.Util.encode_uri(name)}/version/#{AWS.Util.encode_uri(version_name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a run cache using its ID and returns a response with no body if the
  operation is successful.

  You can update the run cache description, name, or the default run cache
  behavior with `CACHE_ON_FAILURE` or `CACHE_ALWAYS`. To confirm that your run
  cache settings have been properly updated, use the `GetRunCache` API operation.

  For more information, see [How call caching works](https://docs.aws.amazon.com/omics/latest/dev/how-run-cache.html) in the
  *Amazon Web Services HealthOmics User Guide*.
  """
  @spec update_run_cache(map(), String.t() | atom(), update_run_cache_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_run_cache_errors()}
  def update_run_cache(%Client{} = client, id, input, options \\ []) do
    url_path = "/runCache/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Updates the settings of a run group and returns a response with no body if the
  operation is successful.

  You can update the following settings with `UpdateRunGroup`:

    * Maximum number of CPUs

    * Run time (measured in minutes)

    * Number of GPUs

    * Number of concurrent runs

    * Group name

  To confirm that the settings have been successfully updated, use the
  `ListRunGroups` or `GetRunGroup` API operations to verify that the desired
  changes have been made.
  """
  @spec update_run_group(map(), String.t() | atom(), update_run_group_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_run_group_errors()}
  def update_run_group(%Client{} = client, id, input, options \\ []) do
    url_path = "/runGroup/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Update one or more parameters for the sequence store.
  """
  @spec update_sequence_store(map(), String.t() | atom(), update_sequence_store_request(), list()) ::
          {:ok, update_sequence_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_sequence_store_errors()}
  def update_sequence_store(%Client{} = client, id, input, options \\ []) do
    url_path = "/sequencestore/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "control-storage-")

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a variant store.
  """
  @spec update_variant_store(map(), String.t() | atom(), update_variant_store_request(), list()) ::
          {:ok, update_variant_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_variant_store_errors()}
  def update_variant_store(%Client{} = client, name, input, options \\ []) do
    url_path = "/variantStore/#{AWS.Util.encode_uri(name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "analytics-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates information about a workflow.

  You can update the following workflow information:

    * Name

    * Description

    * Default storage type

    * Default storage capacity (with workflow ID)

  This operation returns a response with no body if the operation is successful.
  You can check the workflow updates by calling the `GetWorkflow` API operation.

  For more information, see [Update a private workflow](https://docs.aws.amazon.com/omics/latest/dev/update-private-workflow.html)
  in the *Amazon Web Services HealthOmics User Guide*.
  """
  @spec update_workflow(map(), String.t() | atom(), update_workflow_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_workflow_errors()}
  def update_workflow(%Client{} = client, id, input, options \\ []) do
    url_path = "/workflow/#{AWS.Util.encode_uri(id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Updates information about the workflow version.

  For more information, see [Workflow versioning in Amazon Web Services HealthOmics](https://docs.aws.amazon.com/omics/latest/dev/workflow-versions.html)
  in the *Amazon Web Services HealthOmics User Guide*.
  """
  @spec update_workflow_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_workflow_version_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_workflow_version_errors()}
  def update_workflow_version(%Client{} = client, version_name, workflow_id, input, options \\ []) do
    url_path =
      "/workflow/#{AWS.Util.encode_uri(workflow_id)}/version/#{AWS.Util.encode_uri(version_name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "workflows-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  This operation uploads a specific part of a read set.

  If you upload a new part using a previously used part number, the previously
  uploaded part will be overwritten.
  """
  @spec upload_read_set_part(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          upload_read_set_part_request(),
          list()
        ) ::
          {:ok, upload_read_set_part_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, upload_read_set_part_errors()}
  def upload_read_set_part(%Client{} = client, sequence_store_id, upload_id, input, options \\ []) do
    url_path =
      "/sequencestore/#{AWS.Util.encode_uri(sequence_store_id)}/upload/#{AWS.Util.encode_uri(upload_id)}/part"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"partNumber", "partNumber"},
        {"partSource", "partSource"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "storage-")

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
