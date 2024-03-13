# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MedicalImaging do
  @moduledoc """
  This is the *AWS HealthImaging API Reference*.

  AWS HealthImaging is a HIPAA-eligible service that helps health
  care providers and their medical imaging ISV partners store, transform, and
  apply machine learning to medical images. For
  an introduction to the service, see the [
  *AWS HealthImaging Developer Guide*
  ](https://docs.aws.amazon.com/healthimaging/latest/devguide/what-is.html).

  We recommend using one of the AWS Software Development Kits (SDKs) for your
  programming language, as
  they take care of request authentication, serialization, and connection
  management. For more information,
  see [Tools to build on AWS](http://aws.amazon.com/developer/tools).   For information about using HealthImaging API actions in one of the
  language-specific AWS SDKs, refer to the
  *See Also* link at the end of each section that describes an API action or data
  type.

  The following sections list AWS HealthImaging API actions categorized according
  to functionality. Links are
  provided to actions within this Reference, along with links back to
  corresponding sections in the
  *AWS HealthImaging Developer Guide* where you can view console procedures and
  CLI/SDK code examples.

  ## Data store actions

    *

  [CreateDatastore](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_CreateDatastore.html)

  – See
  [Creating a data store](https://docs.aws.amazon.com/healthimaging/latest/devguide/create-data-store.html).

    *

  [GetDatastore](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_GetDatastore.html)  – See
  [Getting data store
  properties](https://docs.aws.amazon.com/healthimaging/latest/devguide/get-data-store.html).

    *

  [ListDatastores](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_ListDatastores.html)  – See
  [Listing data
  stores](https://docs.aws.amazon.com/healthimaging/latest/devguide/list-data-stores.html).

    *

  [DeleteDatastore](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_DeleteDatastore.html)  – See
  [Deleting a data
  store](https://docs.aws.amazon.com/healthimaging/latest/devguide/delete-data-store.html).

  ## Import job actions

    *

  [StartDICOMImportJob](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_StartDICOMImportJob.html)  – See
  [Starting an import
  job](https://docs.aws.amazon.com/healthimaging/latest/devguide/start-dicom-import-job.html).

    *

  [GetDICOMImportJob](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_GetDICOMImportJob.html)  – See
  [Getting import job
  properties](https://docs.aws.amazon.com/healthimaging/latest/devguide/get-dicom-import-job.html).

    *

  [ListDICOMImportJobs](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_ListDICOMImportJobs.html)  – See
  [Listing import
  jobs](https://docs.aws.amazon.com/healthimaging/latest/devguide/list-dicom-import-jobs.html).

  ## Image set access actions

    *

  [SearchImageSets](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_SearchImageSets.html)  – See
  [Searching image
  sets](https://docs.aws.amazon.com/healthimaging/latest/devguide/search-image-sets.html).

    *

  [GetImageSet](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_GetImageSet.html)  – See
  [Getting image set
  properties](https://docs.aws.amazon.com/healthimaging/latest/devguide/get-image-set-properties.html).

    *

  [GetImageSetMetadata](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_GetImageSetMetadata.html)  – See
  [Getting image set
  metadata](https://docs.aws.amazon.com/healthimaging/latest/devguide/get-image-set-metadata.html).

    *

  [GetImageFrame](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_GetImageFrame.html)  – See
  [Getting image set pixel
  data](https://docs.aws.amazon.com/healthimaging/latest/devguide/get-image-frame.html).

  ## Image set modification actions

    *

  [ListImageSetVersions](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_ListImageSetVersions.html)  – See
  [Listing image set
  versions](https://docs.aws.amazon.com/healthimaging/latest/devguide/list-image-set-versions.html).

    *

  [UpdateImageSetMetadata](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_UpdateImageSetMetadata.html)  – See
  [Updating image set
  metadata](https://docs.aws.amazon.com/healthimaging/latest/devguide/update-image-set-metadata.html).

    *

  [CopyImageSet](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_CopyImageSet.html)  – See
  [Copying an image
  set](https://docs.aws.amazon.com/healthimaging/latest/devguide/copy-image-set.html).

    *

  [DeleteImageSet](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_DeleteImageSet.html)  – See
  [Deleting an image
  set](https://docs.aws.amazon.com/healthimaging/latest/devguide/delete-image-set.html).

  ## Tagging actions

    *

  [TagResource](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_TagResource.html)  – See
  [Tagging a data
  store](https://docs.aws.amazon.com/healthimaging/latest/devguide/tag-list-untag-data-store.html)
  and
  [Tagging an image set](https://docs.aws.amazon.com/healthimaging/latest/devguide/tag-list-untag-image-set.html).

    *

  [ListTagsForResource](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_ListTagsForResource.html)  – See
  [Tagging a data
  store](https://docs.aws.amazon.com/healthimaging/latest/devguide/tag-list-untag-data-store.html)
  and
  [Tagging an image set](https://docs.aws.amazon.com/healthimaging/latest/devguide/tag-list-untag-image-set.html).

    *

  [UntagResource](https://docs.aws.amazon.com/healthimaging/latest/APIReference/API_UntagResource.html)  – See
  [Tagging a data
  store](https://docs.aws.amazon.com/healthimaging/latest/devguide/tag-list-untag-data-store.html)
  and
  [Tagging an image set](https://docs.aws.amazon.com/healthimaging/latest/devguide/tag-list-untag-image-set.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      get_image_set_metadata_request() :: %{
        optional("versionId") => String.t()
      }

  """
  @type get_image_set_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_d_i_c_o_m_import_job_request() :: %{
        optional("jobName") => String.t(),
        required("clientToken") => String.t(),
        required("dataAccessRoleArn") => String.t(),
        required("inputS3Uri") => String.t(),
        required("outputS3Uri") => String.t()
      }

  """
  @type start_d_i_c_o_m_import_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_image_sets_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t(),
        optional("searchCriteria") => search_criteria()
      }

  """
  @type search_image_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      image_sets_metadata_summary() :: %{
        "DICOMTags" => d_i_c_o_m_tags(),
        "createdAt" => non_neg_integer(),
        "imageSetId" => String.t(),
        "updatedAt" => non_neg_integer(),
        "version" => [integer()]
      }

  """
  @type image_sets_metadata_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      copy_image_set_request() :: %{
        required("copyImageSetInformation") => copy_image_set_information()
      }

  """
  @type copy_image_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      copy_source_image_set_information() :: %{
        "latestVersionId" => String.t()
      }

  """
  @type copy_source_image_set_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      copy_source_image_set_properties() :: %{
        "createdAt" => non_neg_integer(),
        "imageSetArn" => String.t(),
        "imageSetId" => String.t(),
        "imageSetState" => list(any()),
        "imageSetWorkflowStatus" => list(any()),
        "latestVersionId" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type copy_source_image_set_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_datastore_request() :: %{}

  """
  @type get_datastore_request() :: %{}

  @typedoc """

  ## Example:

      list_image_set_versions_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }

  """
  @type list_image_set_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      d_i_c_o_m_import_job_summary() :: %{
        "dataAccessRoleArn" => String.t(),
        "datastoreId" => String.t(),
        "endedAt" => non_neg_integer(),
        "jobId" => String.t(),
        "jobName" => String.t(),
        "jobStatus" => list(any()),
        "message" => String.t(),
        "submittedAt" => non_neg_integer()
      }

  """
  @type d_i_c_o_m_import_job_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      image_set_properties() :: %{
        "ImageSetWorkflowStatus" => list(any()),
        "createdAt" => non_neg_integer(),
        "deletedAt" => non_neg_integer(),
        "imageSetId" => String.t(),
        "imageSetState" => list(any()),
        "message" => String.t(),
        "updatedAt" => non_neg_integer(),
        "versionId" => String.t()
      }

  """
  @type image_set_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      image_frame_information() :: %{
        "imageFrameId" => String.t()
      }

  """
  @type image_frame_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_filter() :: %{
        "operator" => list(any()),
        "values" => list(list()())
      }

  """
  @type search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_d_i_c_o_m_import_job_request() :: %{}

  """
  @type get_d_i_c_o_m_import_job_request() :: %{}

  @typedoc """

  ## Example:

      get_image_set_response() :: %{
        "createdAt" => non_neg_integer(),
        "datastoreId" => String.t(),
        "deletedAt" => non_neg_integer(),
        "imageSetArn" => String.t(),
        "imageSetId" => String.t(),
        "imageSetState" => list(any()),
        "imageSetWorkflowStatus" => list(any()),
        "message" => String.t(),
        "updatedAt" => non_neg_integer(),
        "versionId" => String.t()
      }

  """
  @type get_image_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_datastore_response() :: %{
        "datastoreId" => String.t(),
        "datastoreStatus" => list(any())
      }

  """
  @type delete_datastore_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_image_set_request() :: %{
        optional("versionId") => String.t()
      }

  """
  @type get_image_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_image_sets_response() :: %{
        "imageSetsMetadataSummaries" => list(image_sets_metadata_summary()()),
        "nextToken" => String.t()
      }

  """
  @type search_image_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_image_set_metadata_request() :: %{
        required("latestVersionId") => String.t(),
        required("updateImageSetMetadataUpdates") => list()
      }

  """
  @type update_image_set_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      copy_image_set_response() :: %{
        "datastoreId" => String.t(),
        "destinationImageSetProperties" => copy_destination_image_set_properties(),
        "sourceImageSetProperties" => copy_source_image_set_properties()
      }

  """
  @type copy_image_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_datastore_response() :: %{
        "datastoreProperties" => datastore_properties()
      }

  """
  @type get_datastore_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_datastores_response() :: %{
        "datastoreSummaries" => list(datastore_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_datastores_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_d_i_c_o_m_import_job_response() :: %{
        "datastoreId" => String.t(),
        "jobId" => String.t(),
        "jobStatus" => list(any()),
        "submittedAt" => non_neg_integer()
      }

  """
  @type start_d_i_c_o_m_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_image_frame_request() :: %{
        required("imageFrameInformation") => image_frame_information()
      }

  """
  @type get_image_frame_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      d_i_c_o_m_import_job_properties() :: %{
        "dataAccessRoleArn" => String.t(),
        "datastoreId" => String.t(),
        "endedAt" => non_neg_integer(),
        "inputS3Uri" => String.t(),
        "jobId" => String.t(),
        "jobName" => String.t(),
        "jobStatus" => list(any()),
        "message" => String.t(),
        "outputS3Uri" => String.t(),
        "submittedAt" => non_neg_integer()
      }

  """
  @type d_i_c_o_m_import_job_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_datastores_request() :: %{
        optional("datastoreStatus") => list(any()),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }

  """
  @type list_datastores_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      datastore_properties() :: %{
        "createdAt" => non_neg_integer(),
        "datastoreArn" => String.t(),
        "datastoreId" => String.t(),
        "datastoreName" => String.t(),
        "datastoreStatus" => list(any()),
        "kmsKeyArn" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type datastore_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      d_i_c_o_m_tags() :: %{
        "DICOMAccessionNumber" => String.t(),
        "DICOMNumberOfStudyRelatedInstances" => integer(),
        "DICOMNumberOfStudyRelatedSeries" => integer(),
        "DICOMPatientBirthDate" => String.t(),
        "DICOMPatientId" => String.t(),
        "DICOMPatientName" => String.t(),
        "DICOMPatientSex" => String.t(),
        "DICOMStudyDate" => String.t(),
        "DICOMStudyDescription" => String.t(),
        "DICOMStudyId" => String.t(),
        "DICOMStudyInstanceUID" => String.t(),
        "DICOMStudyTime" => String.t()
      }

  """
  @type d_i_c_o_m_tags() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      copy_destination_image_set_properties() :: %{
        "createdAt" => non_neg_integer(),
        "imageSetArn" => String.t(),
        "imageSetId" => String.t(),
        "imageSetState" => list(any()),
        "imageSetWorkflowStatus" => list(any()),
        "latestVersionId" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type copy_destination_image_set_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      datastore_summary() :: %{
        "createdAt" => non_neg_integer(),
        "datastoreArn" => String.t(),
        "datastoreId" => String.t(),
        "datastoreName" => String.t(),
        "datastoreStatus" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type datastore_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      d_i_c_o_m_updates() :: %{
        "removableAttributes" => binary(),
        "updatableAttributes" => binary()
      }

  """
  @type d_i_c_o_m_updates() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_image_set_versions_response() :: %{
        "imageSetPropertiesList" => list(image_set_properties()()),
        "nextToken" => String.t()
      }

  """
  @type list_image_set_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      copy_destination_image_set() :: %{
        "imageSetId" => String.t(),
        "latestVersionId" => String.t()
      }

  """
  @type copy_destination_image_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_d_i_c_o_m_import_jobs_request() :: %{
        optional("jobStatus") => list(any()),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t()
      }

  """
  @type list_d_i_c_o_m_import_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_image_set_request() :: %{}

  """
  @type delete_image_set_request() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_datastore_request() :: %{
        optional("datastoreName") => String.t(),
        optional("kmsKeyArn") => String.t(),
        optional("tags") => map(),
        required("clientToken") => String.t()
      }

  """
  @type create_datastore_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_image_set_metadata_response() :: %{
        "contentEncoding" => [String.t()],
        "contentType" => [String.t()],
        "imageSetMetadataBlob" => binary()
      }

  """
  @type get_image_set_metadata_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_image_set_metadata_response() :: %{
        "createdAt" => non_neg_integer(),
        "datastoreId" => String.t(),
        "imageSetId" => String.t(),
        "imageSetState" => list(any()),
        "imageSetWorkflowStatus" => list(any()),
        "latestVersionId" => String.t(),
        "message" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type update_image_set_metadata_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      d_i_c_o_m_study_date_and_time() :: %{
        "DICOMStudyDate" => String.t(),
        "DICOMStudyTime" => String.t()
      }

  """
  @type d_i_c_o_m_study_date_and_time() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_datastore_response() :: %{
        "datastoreId" => String.t(),
        "datastoreStatus" => list(any())
      }

  """
  @type create_datastore_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      copy_image_set_information() :: %{
        "destinationImageSet" => copy_destination_image_set(),
        "sourceImageSet" => copy_source_image_set_information()
      }

  """
  @type copy_image_set_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_image_set_response() :: %{
        "datastoreId" => String.t(),
        "imageSetId" => String.t(),
        "imageSetState" => list(any()),
        "imageSetWorkflowStatus" => list(any())
      }

  """
  @type delete_image_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_criteria() :: %{
        "filters" => list(search_filter()())
      }

  """
  @type search_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_image_frame_response() :: %{
        "contentType" => [String.t()],
        "imageFrameBlob" => binary()
      }

  """
  @type get_image_frame_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_d_i_c_o_m_import_jobs_response() :: %{
        "jobSummaries" => list(d_i_c_o_m_import_job_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_d_i_c_o_m_import_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_datastore_request() :: %{}

  """
  @type delete_datastore_request() :: %{}

  @typedoc """

  ## Example:

      get_d_i_c_o_m_import_job_response() :: %{
        "jobProperties" => d_i_c_o_m_import_job_properties()
      }

  """
  @type get_d_i_c_o_m_import_job_response() :: %{String.t() => any()}

  @type copy_image_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_datastore_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_datastore_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_image_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_d_i_c_o_m_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_datastore_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_image_frame_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_image_set_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_image_set_metadata_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_d_i_c_o_m_import_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_datastores_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_image_set_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type search_image_sets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_d_i_c_o_m_import_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_image_set_metadata_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2023-07-19",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "medical-imaging",
      global?: false,
      protocol: "rest-json",
      service_id: "Medical Imaging",
      signature_version: "v4",
      signing_name: "medical-imaging",
      target_prefix: nil
    }
  end

  @doc """
  Copy an image set.
  """
  @spec copy_image_set(map(), String.t(), String.t(), copy_image_set_request(), list()) ::
          {:ok, copy_image_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, copy_image_set_errors()}
  def copy_image_set(%Client{} = client, datastore_id, source_image_set_id, input, options \\ []) do
    url_path =
      "/datastore/#{AWS.Util.encode_uri(datastore_id)}/imageSet/#{AWS.Util.encode_uri(source_image_set_id)}/copyImageSet"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "runtime-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Create a data store.
  """
  @spec create_datastore(map(), create_datastore_request(), list()) ::
          {:ok, create_datastore_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_datastore_errors()}
  def create_datastore(%Client{} = client, input, options \\ []) do
    url_path = "/datastore"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Delete a data store.

  Before a data store can be deleted, you must first delete all image sets within
  it.
  """
  @spec delete_datastore(map(), String.t(), delete_datastore_request(), list()) ::
          {:ok, delete_datastore_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_datastore_errors()}
  def delete_datastore(%Client{} = client, datastore_id, input, options \\ []) do
    url_path = "/datastore/#{AWS.Util.encode_uri(datastore_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Delete an image set.
  """
  @spec delete_image_set(map(), String.t(), String.t(), delete_image_set_request(), list()) ::
          {:ok, delete_image_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_image_set_errors()}
  def delete_image_set(%Client{} = client, datastore_id, image_set_id, input, options \\ []) do
    url_path =
      "/datastore/#{AWS.Util.encode_uri(datastore_id)}/imageSet/#{AWS.Util.encode_uri(image_set_id)}/deleteImageSet"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "runtime-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Get the import job properties to learn more about the job or job progress.
  """
  @spec get_d_i_c_o_m_import_job(map(), String.t(), String.t(), list()) ::
          {:ok, get_d_i_c_o_m_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_d_i_c_o_m_import_job_errors()}
  def get_d_i_c_o_m_import_job(%Client{} = client, datastore_id, job_id, options \\ []) do
    url_path =
      "/getDICOMImportJob/datastore/#{AWS.Util.encode_uri(datastore_id)}/job/#{AWS.Util.encode_uri(job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get data store properties.
  """
  @spec get_datastore(map(), String.t(), list()) ::
          {:ok, get_datastore_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_datastore_errors()}
  def get_datastore(%Client{} = client, datastore_id, options \\ []) do
    url_path = "/datastore/#{AWS.Util.encode_uri(datastore_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get an image frame (pixel data) for an image set.
  """
  @spec get_image_frame(map(), String.t(), String.t(), get_image_frame_request(), list()) ::
          {:ok, get_image_frame_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_image_frame_errors()}
  def get_image_frame(%Client{} = client, datastore_id, image_set_id, input, options \\ []) do
    url_path =
      "/datastore/#{AWS.Util.encode_uri(datastore_id)}/imageSet/#{AWS.Util.encode_uri(image_set_id)}/getImageFrame"

    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "contentType"}]
      )

    meta = metadata() |> Map.put_new(:host_prefix, "runtime-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Get image set properties.
  """
  @spec get_image_set(map(), String.t(), String.t(), get_image_set_request(), list()) ::
          {:ok, get_image_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_image_set_errors()}
  def get_image_set(%Client{} = client, datastore_id, image_set_id, input, options \\ []) do
    url_path =
      "/datastore/#{AWS.Util.encode_uri(datastore_id)}/imageSet/#{AWS.Util.encode_uri(image_set_id)}/getImageSet"

    headers = []

    {query_params, input} =
      [
        {"versionId", "version"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "runtime-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Get metadata attributes for an image set.
  """
  @spec get_image_set_metadata(
          map(),
          String.t(),
          String.t(),
          get_image_set_metadata_request(),
          list()
        ) ::
          {:ok, get_image_set_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_image_set_metadata_errors()}
  def get_image_set_metadata(%Client{} = client, datastore_id, image_set_id, input, options \\ []) do
    url_path =
      "/datastore/#{AWS.Util.encode_uri(datastore_id)}/imageSet/#{AWS.Util.encode_uri(image_set_id)}/getImageSetMetadata"

    headers = []

    {query_params, input} =
      [
        {"versionId", "version"}
      ]
      |> Request.build_params(input)

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Encoding", "contentEncoding"}, {"Content-Type", "contentType"}]
      )

    meta = metadata() |> Map.put_new(:host_prefix, "runtime-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  List import jobs created for a specific data store.
  """
  @spec list_d_i_c_o_m_import_jobs(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_d_i_c_o_m_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_d_i_c_o_m_import_jobs_errors()}
  def list_d_i_c_o_m_import_jobs(
        %Client{} = client,
        datastore_id,
        job_status \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/listDICOMImportJobs/datastore/#{AWS.Util.encode_uri(datastore_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(job_status) do
        [{"jobStatus", job_status} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List data stores.
  """
  @spec list_datastores(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_datastores_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_datastores_errors()}
  def list_datastores(
        %Client{} = client,
        datastore_status \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/datastore"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(datastore_status) do
        [{"datastoreStatus", datastore_status} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List image set versions.
  """
  @spec list_image_set_versions(
          map(),
          String.t(),
          String.t(),
          list_image_set_versions_request(),
          list()
        ) ::
          {:ok, list_image_set_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_image_set_versions_errors()}
  def list_image_set_versions(
        %Client{} = client,
        datastore_id,
        image_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/datastore/#{AWS.Util.encode_uri(datastore_id)}/imageSet/#{AWS.Util.encode_uri(image_set_id)}/listImageSetVersions"

    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "runtime-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists all tags associated with a medical imaging resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Search image sets based on defined input attributes.

  `SearchImageSets` accepts a single search
  query parameter and returns a paginated response of all image sets that have the
  matching criteria. All range queries must be input as `(lowerBound,
  upperBound)`.

  `SearchImageSets` uses the `updatedAt` field for sorting
  in decreasing order from latest to oldest.
  """
  @spec search_image_sets(map(), String.t(), search_image_sets_request(), list()) ::
          {:ok, search_image_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_image_sets_errors()}
  def search_image_sets(%Client{} = client, datastore_id, input, options \\ []) do
    url_path = "/datastore/#{AWS.Util.encode_uri(datastore_id)}/searchImageSets"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "runtime-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Start importing bulk data into an `ACTIVE` data store.

  The import job imports DICOM P10 files
  found in the S3 prefix specified by the `inputS3Uri` parameter. The import job
  stores
  processing results in the file specified by the `outputS3Uri` parameter.
  """
  @spec start_d_i_c_o_m_import_job(
          map(),
          String.t(),
          start_d_i_c_o_m_import_job_request(),
          list()
        ) ::
          {:ok, start_d_i_c_o_m_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_d_i_c_o_m_import_job_errors()}
  def start_d_i_c_o_m_import_job(%Client{} = client, datastore_id, input, options \\ []) do
    url_path = "/startDICOMImportJob/datastore/#{AWS.Util.encode_uri(datastore_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds a user-specifed key and value tag to a medical imaging resource.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes tags from a medical imaging resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update image set metadata attributes.
  """
  @spec update_image_set_metadata(
          map(),
          String.t(),
          String.t(),
          update_image_set_metadata_request(),
          list()
        ) ::
          {:ok, update_image_set_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_image_set_metadata_errors()}
  def update_image_set_metadata(
        %Client{} = client,
        datastore_id,
        image_set_id,
        input,
        options \\ []
      ) do
    url_path =
      "/datastore/#{AWS.Util.encode_uri(datastore_id)}/imageSet/#{AWS.Util.encode_uri(image_set_id)}/updateImageSetMetadata"

    headers = []

    {query_params, input} =
      [
        {"latestVersionId", "latestVersion"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "runtime-")

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
