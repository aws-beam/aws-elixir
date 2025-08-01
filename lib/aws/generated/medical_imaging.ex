# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MedicalImaging do
  @moduledoc """
  This is the *AWS HealthImaging API Reference*.

  For an introduction to the service, see [What is AWS HealthImaging?](https://docs.aws.amazon.com/healthimaging/latest/devguide/what-is.html)
  in the *AWS HealthImaging Developer Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      get_image_set_metadata_request() :: %{
        optional("versionId") => String.t() | atom()
      }

  """
  @type get_image_set_metadata_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      metadata_copies() :: %{
        "copiableAttributes" => String.t() | atom()
      }

  """
  @type metadata_copies() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_d_i_c_o_m_import_job_request() :: %{
        optional("inputOwnerAccountId") => String.t() | atom(),
        optional("jobName") => String.t() | atom(),
        required("clientToken") => String.t() | atom(),
        required("dataAccessRoleArn") => String.t() | atom(),
        required("inputS3Uri") => String.t() | atom(),
        required("outputS3Uri") => String.t() | atom()
      }

  """
  @type start_d_i_c_o_m_import_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_image_sets_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom(),
        optional("searchCriteria") => search_criteria()
      }

  """
  @type search_image_sets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      overrides() :: %{
        "forced" => [boolean()]
      }

  """
  @type overrides() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image_sets_metadata_summary() :: %{
        "DICOMTags" => d_i_c_o_m_tags(),
        "createdAt" => non_neg_integer(),
        "imageSetId" => String.t() | atom(),
        "isPrimary" => [boolean()],
        "updatedAt" => non_neg_integer(),
        "version" => [integer()]
      }

  """
  @type image_sets_metadata_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      copy_image_set_request() :: %{
        optional("force") => [boolean()],
        optional("promoteToPrimary") => [boolean()],
        required("copyImageSetInformation") => copy_image_set_information()
      }

  """
  @type copy_image_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      copy_source_image_set_information() :: %{
        "DICOMCopies" => metadata_copies(),
        "latestVersionId" => String.t() | atom()
      }

  """
  @type copy_source_image_set_information() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      copy_source_image_set_properties() :: %{
        "createdAt" => non_neg_integer(),
        "imageSetArn" => String.t() | atom(),
        "imageSetId" => String.t() | atom(),
        "imageSetState" => list(any()),
        "imageSetWorkflowStatus" => list(any()),
        "latestVersionId" => String.t() | atom(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type copy_source_image_set_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_datastore_request() :: %{}

  """
  @type get_datastore_request() :: %{}

  @typedoc """

  ## Example:

      list_image_set_versions_request() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_image_set_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      d_i_c_o_m_import_job_summary() :: %{
        "dataAccessRoleArn" => String.t() | atom(),
        "datastoreId" => String.t() | atom(),
        "endedAt" => non_neg_integer(),
        "jobId" => String.t() | atom(),
        "jobName" => String.t() | atom(),
        "jobStatus" => list(any()),
        "message" => String.t() | atom(),
        "submittedAt" => non_neg_integer()
      }

  """
  @type d_i_c_o_m_import_job_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image_set_properties() :: %{
        "ImageSetWorkflowStatus" => list(any()),
        "createdAt" => non_neg_integer(),
        "deletedAt" => non_neg_integer(),
        "imageSetId" => String.t() | atom(),
        "imageSetState" => list(any()),
        "isPrimary" => [boolean()],
        "message" => String.t() | atom(),
        "overrides" => overrides(),
        "updatedAt" => non_neg_integer(),
        "versionId" => String.t() | atom()
      }

  """
  @type image_set_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      image_frame_information() :: %{
        "imageFrameId" => String.t() | atom()
      }

  """
  @type image_frame_information() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_filter() :: %{
        "operator" => list(any()),
        "values" => list(list())
      }

  """
  @type search_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_d_i_c_o_m_import_job_request() :: %{}

  """
  @type get_d_i_c_o_m_import_job_request() :: %{}

  @typedoc """

  ## Example:

      get_image_set_response() :: %{
        "createdAt" => non_neg_integer(),
        "datastoreId" => String.t() | atom(),
        "deletedAt" => non_neg_integer(),
        "imageSetArn" => String.t() | atom(),
        "imageSetId" => String.t() | atom(),
        "imageSetState" => list(any()),
        "imageSetWorkflowStatus" => list(any()),
        "isPrimary" => [boolean()],
        "message" => String.t() | atom(),
        "overrides" => overrides(),
        "updatedAt" => non_neg_integer(),
        "versionId" => String.t() | atom()
      }

  """
  @type get_image_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_datastore_response() :: %{
        "datastoreId" => String.t() | atom(),
        "datastoreStatus" => list(any())
      }

  """
  @type delete_datastore_response() :: %{(String.t() | atom()) => any()}

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

      get_image_set_request() :: %{
        optional("versionId") => String.t() | atom()
      }

  """
  @type get_image_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_image_sets_response() :: %{
        "imageSetsMetadataSummaries" => list(image_sets_metadata_summary()),
        "nextToken" => String.t() | atom(),
        "sort" => sort()
      }

  """
  @type search_image_sets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_image_set_metadata_request() :: %{
        optional("force") => [boolean()],
        required("latestVersionId") => String.t() | atom(),
        required("updateImageSetMetadataUpdates") => list()
      }

  """
  @type update_image_set_metadata_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      copy_image_set_response() :: %{
        "datastoreId" => String.t() | atom(),
        "destinationImageSetProperties" => copy_destination_image_set_properties(),
        "sourceImageSetProperties" => copy_source_image_set_properties()
      }

  """
  @type copy_image_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_datastore_response() :: %{
        "datastoreProperties" => datastore_properties()
      }

  """
  @type get_datastore_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_datastores_response() :: %{
        "datastoreSummaries" => list(datastore_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_datastores_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_d_i_c_o_m_import_job_response() :: %{
        "datastoreId" => String.t() | atom(),
        "jobId" => String.t() | atom(),
        "jobStatus" => list(any()),
        "submittedAt" => non_neg_integer()
      }

  """
  @type start_d_i_c_o_m_import_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_image_frame_request() :: %{
        required("imageFrameInformation") => image_frame_information()
      }

  """
  @type get_image_frame_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      d_i_c_o_m_import_job_properties() :: %{
        "dataAccessRoleArn" => String.t() | atom(),
        "datastoreId" => String.t() | atom(),
        "endedAt" => non_neg_integer(),
        "inputS3Uri" => String.t() | atom(),
        "jobId" => String.t() | atom(),
        "jobName" => String.t() | atom(),
        "jobStatus" => list(any()),
        "message" => String.t() | atom(),
        "outputS3Uri" => String.t() | atom(),
        "submittedAt" => non_neg_integer()
      }

  """
  @type d_i_c_o_m_import_job_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_datastores_request() :: %{
        optional("datastoreStatus") => list(any()),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_datastores_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      datastore_properties() :: %{
        "createdAt" => non_neg_integer(),
        "datastoreArn" => String.t() | atom(),
        "datastoreId" => String.t() | atom(),
        "datastoreName" => String.t() | atom(),
        "datastoreStatus" => list(any()),
        "kmsKeyArn" => String.t() | atom(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type datastore_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sort() :: %{
        "sortField" => list(any()),
        "sortOrder" => list(any())
      }

  """
  @type sort() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      d_i_c_o_m_tags() :: %{
        "DICOMAccessionNumber" => String.t() | atom(),
        "DICOMNumberOfStudyRelatedInstances" => integer(),
        "DICOMNumberOfStudyRelatedSeries" => integer(),
        "DICOMPatientBirthDate" => String.t() | atom(),
        "DICOMPatientId" => String.t() | atom(),
        "DICOMPatientName" => String.t() | atom(),
        "DICOMPatientSex" => String.t() | atom(),
        "DICOMSeriesBodyPart" => String.t() | atom(),
        "DICOMSeriesInstanceUID" => String.t() | atom(),
        "DICOMSeriesModality" => String.t() | atom(),
        "DICOMSeriesNumber" => integer(),
        "DICOMStudyDate" => String.t() | atom(),
        "DICOMStudyDescription" => String.t() | atom(),
        "DICOMStudyId" => String.t() | atom(),
        "DICOMStudyInstanceUID" => String.t() | atom(),
        "DICOMStudyTime" => String.t() | atom()
      }

  """
  @type d_i_c_o_m_tags() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      copy_destination_image_set_properties() :: %{
        "createdAt" => non_neg_integer(),
        "imageSetArn" => String.t() | atom(),
        "imageSetId" => String.t() | atom(),
        "imageSetState" => list(any()),
        "imageSetWorkflowStatus" => list(any()),
        "latestVersionId" => String.t() | atom(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type copy_destination_image_set_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      datastore_summary() :: %{
        "createdAt" => non_neg_integer(),
        "datastoreArn" => String.t() | atom(),
        "datastoreId" => String.t() | atom(),
        "datastoreName" => String.t() | atom(),
        "datastoreStatus" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type datastore_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      d_i_c_o_m_updates() :: %{
        "removableAttributes" => binary(),
        "updatableAttributes" => binary()
      }

  """
  @type d_i_c_o_m_updates() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_image_set_versions_response() :: %{
        "imageSetPropertiesList" => list(image_set_properties()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_image_set_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      copy_destination_image_set() :: %{
        "imageSetId" => String.t() | atom(),
        "latestVersionId" => String.t() | atom()
      }

  """
  @type copy_destination_image_set() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_d_i_c_o_m_import_jobs_request() :: %{
        optional("jobStatus") => list(any()),
        optional("maxResults") => [integer()],
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_d_i_c_o_m_import_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_image_set_request() :: %{}

  """
  @type delete_image_set_request() :: %{}

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

      throttling_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_datastore_request() :: %{
        optional("datastoreName") => String.t() | atom(),
        optional("kmsKeyArn") => String.t() | atom(),
        optional("tags") => map(),
        required("clientToken") => String.t() | atom()
      }

  """
  @type create_datastore_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_image_set_metadata_response() :: %{
        "contentEncoding" => [String.t() | atom()],
        "contentType" => [String.t() | atom()],
        "imageSetMetadataBlob" => binary()
      }

  """
  @type get_image_set_metadata_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_image_set_metadata_response() :: %{
        "createdAt" => non_neg_integer(),
        "datastoreId" => String.t() | atom(),
        "imageSetId" => String.t() | atom(),
        "imageSetState" => list(any()),
        "imageSetWorkflowStatus" => list(any()),
        "latestVersionId" => String.t() | atom(),
        "message" => String.t() | atom(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type update_image_set_metadata_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      d_i_c_o_m_study_date_and_time() :: %{
        "DICOMStudyDate" => String.t() | atom(),
        "DICOMStudyTime" => String.t() | atom()
      }

  """
  @type d_i_c_o_m_study_date_and_time() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_datastore_response() :: %{
        "datastoreId" => String.t() | atom(),
        "datastoreStatus" => list(any())
      }

  """
  @type create_datastore_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      copy_image_set_information() :: %{
        "destinationImageSet" => copy_destination_image_set(),
        "sourceImageSet" => copy_source_image_set_information()
      }

  """
  @type copy_image_set_information() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_image_set_response() :: %{
        "datastoreId" => String.t() | atom(),
        "imageSetId" => String.t() | atom(),
        "imageSetState" => list(any()),
        "imageSetWorkflowStatus" => list(any())
      }

  """
  @type delete_image_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_criteria() :: %{
        "filters" => list(search_filter()),
        "sort" => sort()
      }

  """
  @type search_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_image_frame_response() :: %{
        "contentType" => [String.t() | atom()],
        "imageFrameBlob" => binary()
      }

  """
  @type get_image_frame_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_d_i_c_o_m_import_jobs_response() :: %{
        "jobSummaries" => list(d_i_c_o_m_import_job_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_d_i_c_o_m_import_jobs_response() :: %{(String.t() | atom()) => any()}

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
  @type get_d_i_c_o_m_import_job_response() :: %{(String.t() | atom()) => any()}

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
      hostname: nil,
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
  @spec copy_image_set(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          copy_image_set_request(),
          list()
        ) ::
          {:ok, copy_image_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, copy_image_set_errors()}
  def copy_image_set(%Client{} = client, datastore_id, source_image_set_id, input, options \\ []) do
    url_path =
      "/datastore/#{AWS.Util.encode_uri(datastore_id)}/imageSet/#{AWS.Util.encode_uri(source_image_set_id)}/copyImageSet"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"force", "force"},
        {"promoteToPrimary", "promoteToPrimary"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "runtime-")

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
  Create a data store.
  """
  @spec create_datastore(map(), create_datastore_request(), list()) ::
          {:ok, create_datastore_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_datastore_errors()}
  def create_datastore(%Client{} = client, input, options \\ []) do
    url_path = "/datastore"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

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
  Delete a data store.

  Before a data store can be deleted, you must first delete all image sets within
  it.
  """
  @spec delete_datastore(map(), String.t() | atom(), delete_datastore_request(), list()) ::
          {:ok, delete_datastore_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_datastore_errors()}
  def delete_datastore(%Client{} = client, datastore_id, input, options \\ []) do
    url_path = "/datastore/#{AWS.Util.encode_uri(datastore_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

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
  Delete an image set.
  """
  @spec delete_image_set(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_image_set_request(),
          list()
        ) ::
          {:ok, delete_image_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_image_set_errors()}
  def delete_image_set(%Client{} = client, datastore_id, image_set_id, input, options \\ []) do
    url_path =
      "/datastore/#{AWS.Util.encode_uri(datastore_id)}/imageSet/#{AWS.Util.encode_uri(image_set_id)}/deleteImageSet"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "runtime-")

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
  Get the import job properties to learn more about the job or job progress.

  The `jobStatus` refers to the execution of the import job. Therefore, an import
  job can return a `jobStatus` as `COMPLETED` even if validation issues are
  discovered during the import process. If a `jobStatus` returns as `COMPLETED`,
  we still recommend you review the output manifests written to S3, as they
  provide details on the success or failure of individual P10 object imports.
  """
  @spec get_d_i_c_o_m_import_job(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_d_i_c_o_m_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_datastore(map(), String.t() | atom(), list()) ::
          {:ok, get_datastore_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_image_frame(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          get_image_frame_request(),
          list()
        ) ::
          {:ok, get_image_frame_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_image_frame_errors()}
  def get_image_frame(%Client{} = client, datastore_id, image_set_id, input, options \\ []) do
    url_path =
      "/datastore/#{AWS.Util.encode_uri(datastore_id)}/imageSet/#{AWS.Util.encode_uri(image_set_id)}/getImageFrame"

    headers = []
    custom_headers = []
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
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Get image set properties.
  """
  @spec get_image_set(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          get_image_set_request(),
          list()
        ) ::
          {:ok, get_image_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_image_set_errors()}
  def get_image_set(%Client{} = client, datastore_id, image_set_id, input, options \\ []) do
    url_path =
      "/datastore/#{AWS.Util.encode_uri(datastore_id)}/imageSet/#{AWS.Util.encode_uri(image_set_id)}/getImageSet"

    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
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
          String.t() | atom(),
          String.t() | atom(),
          get_image_set_metadata_request(),
          list()
        ) ::
          {:ok, get_image_set_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_image_set_metadata_errors()}
  def get_image_set_metadata(%Client{} = client, datastore_id, image_set_id, input, options \\ []) do
    url_path =
      "/datastore/#{AWS.Util.encode_uri(datastore_id)}/imageSet/#{AWS.Util.encode_uri(image_set_id)}/getImageSetMetadata"

    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
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
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_d_i_c_o_m_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec list_datastores(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_datastores_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          String.t() | atom(),
          String.t() | atom(),
          list_image_set_versions_request(),
          list()
        ) ::
          {:ok, list_image_set_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
    custom_headers = []

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
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists all tags associated with a medical imaging resource.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Search image sets based on defined input attributes.

  `SearchImageSets` accepts a single search query parameter and returns a
  paginated response of all image sets that have the matching criteria. All date
  range queries must be input as `(lowerBound, upperBound)`.

  By default, `SearchImageSets` uses the `updatedAt` field for sorting in
  descending order from newest to oldest.
  """
  @spec search_image_sets(map(), String.t() | atom(), search_image_sets_request(), list()) ::
          {:ok, search_image_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_image_sets_errors()}
  def search_image_sets(%Client{} = client, datastore_id, input, options \\ []) do
    url_path = "/datastore/#{AWS.Util.encode_uri(datastore_id)}/searchImageSets"
    headers = []
    custom_headers = []

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
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Start importing bulk data into an `ACTIVE` data store.

  The import job imports DICOM P10 files found in the S3 prefix specified by the
  `inputS3Uri` parameter. The import job stores processing results in the file
  specified by the `outputS3Uri` parameter.
  """
  @spec start_d_i_c_o_m_import_job(
          map(),
          String.t() | atom(),
          start_d_i_c_o_m_import_job_request(),
          list()
        ) ::
          {:ok, start_d_i_c_o_m_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_d_i_c_o_m_import_job_errors()}
  def start_d_i_c_o_m_import_job(%Client{} = client, datastore_id, input, options \\ []) do
    url_path = "/startDICOMImportJob/datastore/#{AWS.Util.encode_uri(datastore_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

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
  Adds a user-specifed key and value tag to a medical imaging resource.
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

    meta = metadata()

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
  Removes tags from a medical imaging resource.
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

    meta = metadata()

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
  Update image set metadata attributes.
  """
  @spec update_image_set_metadata(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_image_set_metadata_request(),
          list()
        ) ::
          {:ok, update_image_set_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
    custom_headers = []

    {query_params, input} =
      [
        {"force", "force"},
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
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
