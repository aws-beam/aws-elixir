# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.BedrockDataAutomation do
  @moduledoc """
  Amazon Bedrock Data Automation BuildTime
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      create_blueprint_version_response() :: %{
        "blueprint" => blueprint()
      }

  """
  @type create_blueprint_version_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_data_automation_project_response() :: %{
        "projectArn" => String.t() | Atom.t(),
        "status" => list(any())
      }

  """
  @type delete_data_automation_project_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      encryption_configuration() :: %{
        "kmsEncryptionContext" => map(),
        "kmsKeyId" => String.t() | Atom.t()
      }

  """
  @type encryption_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_blueprints_request() :: %{
        optional("blueprintArn") => String.t() | Atom.t(),
        optional("blueprintStageFilter") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("projectFilter") => data_automation_project_filter(),
        optional("resourceOwner") => list(any())
      }

  """
  @type list_blueprints_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("resourceARN") => String.t() | Atom.t(),
        required("tags") => list(tag())
      }

  """
  @type tag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      video_standard_output_configuration() :: %{
        "extraction" => video_standard_extraction(),
        "generativeField" => video_standard_generative_field()
      }

  """
  @type video_standard_output_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      standard_output_configuration() :: %{
        "audio" => audio_standard_output_configuration(),
        "document" => document_standard_output_configuration(),
        "image" => image_standard_output_configuration(),
        "video" => video_standard_output_configuration()
      }

  """
  @type standard_output_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      image_override_configuration() :: %{
        "modalityProcessing" => modality_processing_configuration()
      }

  """
  @type image_override_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      data_automation_project_summary() :: %{
        "creationTime" => non_neg_integer(),
        "projectArn" => String.t() | Atom.t(),
        "projectName" => String.t() | Atom.t(),
        "projectStage" => list(any())
      }

  """
  @type data_automation_project_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      blueprint_item() :: %{
        "blueprintArn" => String.t() | Atom.t(),
        "blueprintStage" => list(any()),
        "blueprintVersion" => String.t() | Atom.t()
      }

  """
  @type blueprint_item() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      video_bounding_box() :: %{
        "state" => list(any())
      }

  """
  @type video_bounding_box() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_blueprint_response() :: %{
        "blueprint" => blueprint()
      }

  """
  @type update_blueprint_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      override_configuration() :: %{
        "audio" => audio_override_configuration(),
        "document" => document_override_configuration(),
        "image" => image_override_configuration(),
        "modalityRouting" => modality_routing_configuration(),
        "video" => video_override_configuration()
      }

  """
  @type override_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_data_automation_project_request() :: %{
        optional("customOutputConfiguration") => custom_output_configuration(),
        optional("encryptionConfiguration") => encryption_configuration(),
        optional("overrideConfiguration") => override_configuration(),
        optional("projectDescription") => String.t() | Atom.t(),
        optional("projectStage") => list(any()),
        required("standardOutputConfiguration") => standard_output_configuration()
      }

  """
  @type update_data_automation_project_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      blueprint_summary() :: %{
        "blueprintArn" => String.t() | Atom.t(),
        "blueprintName" => String.t() | Atom.t(),
        "blueprintStage" => list(any()),
        "blueprintVersion" => String.t() | Atom.t(),
        "creationTime" => non_neg_integer(),
        "lastModifiedTime" => non_neg_integer()
      }

  """
  @type blueprint_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_data_automation_projects_request() :: %{
        optional("blueprintFilter") => blueprint_filter(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("projectStageFilter") => list(any()),
        optional("resourceOwner") => list(any())
      }

  """
  @type list_data_automation_projects_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_blueprint_response() :: %{}

  """
  @type delete_blueprint_response() :: %{}

  @typedoc """

  ## Example:

      document_override_configuration() :: %{
        "modalityProcessing" => modality_processing_configuration(),
        "splitter" => splitter_configuration()
      }

  """
  @type document_override_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      video_override_configuration() :: %{
        "modalityProcessing" => modality_processing_configuration()
      }

  """
  @type video_override_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      audio_standard_output_configuration() :: %{
        "extraction" => audio_standard_extraction(),
        "generativeField" => audio_standard_generative_field()
      }

  """
  @type audio_standard_output_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      document_standard_generative_field() :: %{
        "state" => list(any())
      }

  """
  @type document_standard_generative_field() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      document_output_text_format() :: %{
        "types" => list(list(any())())
      }

  """
  @type document_output_text_format() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_data_automation_project_response() :: %{
        "projectArn" => String.t() | Atom.t(),
        "projectStage" => list(any()),
        "status" => list(any())
      }

  """
  @type create_data_automation_project_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("resourceARN") => String.t() | Atom.t(),
        required("tagKeys") => list(String.t() | Atom.t())
      }

  """
  @type untag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_blueprint_version_request() :: %{
        optional("clientToken") => String.t() | Atom.t()
      }

  """
  @type create_blueprint_version_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_blueprint_request() :: %{
        optional("blueprintStage") => list(any()),
        optional("blueprintVersion") => String.t() | Atom.t()
      }

  """
  @type get_blueprint_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      document_extraction_granularity() :: %{
        "types" => list(list(any())())
      }

  """
  @type document_extraction_granularity() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      video_standard_generative_field() :: %{
        "state" => list(any()),
        "types" => list(list(any())())
      }

  """
  @type video_standard_generative_field() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      image_standard_extraction() :: %{
        "boundingBox" => image_bounding_box(),
        "category" => image_extraction_category()
      }

  """
  @type image_standard_extraction() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      audio_standard_generative_field() :: %{
        "state" => list(any()),
        "types" => list(list(any())())
      }

  """
  @type audio_standard_generative_field() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "key" => String.t() | Atom.t(),
        "value" => String.t() | Atom.t()
      }

  """
  @type tag() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      document_output_additional_file_format() :: %{
        "state" => list(any())
      }

  """
  @type document_output_additional_file_format() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_blueprint_response() :: %{
        "blueprint" => blueprint()
      }

  """
  @type get_blueprint_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_data_automation_project_request() :: %{
        optional("clientToken") => String.t() | Atom.t(),
        optional("customOutputConfiguration") => custom_output_configuration(),
        optional("encryptionConfiguration") => encryption_configuration(),
        optional("overrideConfiguration") => override_configuration(),
        optional("projectDescription") => String.t() | Atom.t(),
        optional("projectStage") => list(any()),
        optional("tags") => list(tag()),
        required("projectName") => String.t() | Atom.t(),
        required("standardOutputConfiguration") => standard_output_configuration()
      }

  """
  @type create_data_automation_project_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => list(tag())
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_data_automation_project_response() :: %{
        "project" => data_automation_project()
      }

  """
  @type get_data_automation_project_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      video_extraction_category() :: %{
        "state" => list(any()),
        "types" => list(list(any())())
      }

  """
  @type video_extraction_category() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      audio_extraction_category() :: %{
        "state" => list(any()),
        "types" => list(list(any())())
      }

  """
  @type audio_extraction_category() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => String.t() | Atom.t(),
        "name" => String.t() | Atom.t()
      }

  """
  @type validation_exception_field() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      modality_routing_configuration() :: %{
        "jpeg" => list(any()),
        "mov" => list(any()),
        "mp4" => list(any()),
        "png" => list(any())
      }

  """
  @type modality_routing_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      blueprint() :: %{
        "blueprintArn" => String.t() | Atom.t(),
        "blueprintName" => String.t() | Atom.t(),
        "blueprintStage" => list(any()),
        "blueprintVersion" => String.t() | Atom.t(),
        "creationTime" => non_neg_integer(),
        "kmsEncryptionContext" => map(),
        "kmsKeyId" => String.t() | Atom.t(),
        "lastModifiedTime" => non_neg_integer(),
        "schema" => String.t() | Atom.t(),
        "type" => list(any())
      }

  """
  @type blueprint() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      data_automation_project() :: %{
        "creationTime" => non_neg_integer(),
        "customOutputConfiguration" => custom_output_configuration(),
        "kmsEncryptionContext" => map(),
        "kmsKeyId" => String.t() | Atom.t(),
        "lastModifiedTime" => non_neg_integer(),
        "overrideConfiguration" => override_configuration(),
        "projectArn" => String.t() | Atom.t(),
        "projectDescription" => String.t() | Atom.t(),
        "projectName" => String.t() | Atom.t(),
        "projectStage" => list(any()),
        "standardOutputConfiguration" => standard_output_configuration(),
        "status" => list(any())
      }

  """
  @type data_automation_project() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      video_standard_extraction() :: %{
        "boundingBox" => video_bounding_box(),
        "category" => video_extraction_category()
      }

  """
  @type video_standard_extraction() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      image_standard_output_configuration() :: %{
        "extraction" => image_standard_extraction(),
        "generativeField" => image_standard_generative_field()
      }

  """
  @type image_standard_output_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      splitter_configuration() :: %{
        "state" => list(any())
      }

  """
  @type splitter_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_blueprint_response() :: %{
        "blueprint" => blueprint()
      }

  """
  @type create_blueprint_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_blueprint_request() :: %{
        optional("blueprintStage") => list(any()),
        optional("encryptionConfiguration") => encryption_configuration(),
        required("schema") => String.t() | Atom.t()
      }

  """
  @type update_blueprint_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      document_standard_extraction() :: %{
        "boundingBox" => document_bounding_box(),
        "granularity" => document_extraction_granularity()
      }

  """
  @type document_standard_extraction() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      audio_standard_extraction() :: %{
        "category" => audio_extraction_category()
      }

  """
  @type audio_standard_extraction() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      document_standard_output_configuration() :: %{
        "extraction" => document_standard_extraction(),
        "generativeField" => document_standard_generative_field(),
        "outputFormat" => document_output_format()
      }

  """
  @type document_standard_output_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_data_automation_project_response() :: %{
        "projectArn" => String.t() | Atom.t(),
        "projectStage" => list(any()),
        "status" => list(any())
      }

  """
  @type update_data_automation_project_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      modality_processing_configuration() :: %{
        "state" => list(any())
      }

  """
  @type modality_processing_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => String.t() | Atom.t()
      }

  """
  @type validation_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        required("resourceARN") => String.t() | Atom.t()
      }

  """
  @type list_tags_for_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      document_bounding_box() :: %{
        "state" => list(any())
      }

  """
  @type document_bounding_box() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_blueprint_request() :: %{
        optional("blueprintVersion") => String.t() | Atom.t()
      }

  """
  @type delete_blueprint_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      image_standard_generative_field() :: %{
        "state" => list(any()),
        "types" => list(list(any())())
      }

  """
  @type image_standard_generative_field() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      audio_override_configuration() :: %{
        "modalityProcessing" => modality_processing_configuration()
      }

  """
  @type audio_override_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_blueprint_request() :: %{
        optional("blueprintStage") => list(any()),
        optional("clientToken") => String.t() | Atom.t(),
        optional("encryptionConfiguration") => encryption_configuration(),
        optional("tags") => list(tag()),
        required("blueprintName") => String.t() | Atom.t(),
        required("schema") => String.t() | Atom.t(),
        required("type") => list(any())
      }

  """
  @type create_blueprint_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_blueprints_response() :: %{
        "blueprints" => list(blueprint_summary()),
        "nextToken" => String.t() | Atom.t()
      }

  """
  @type list_blueprints_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      image_extraction_category() :: %{
        "state" => list(any()),
        "types" => list(list(any())())
      }

  """
  @type image_extraction_category() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      image_bounding_box() :: %{
        "state" => list(any())
      }

  """
  @type image_bounding_box() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      data_automation_project_filter() :: %{
        "projectArn" => String.t() | Atom.t(),
        "projectStage" => list(any())
      }

  """
  @type data_automation_project_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      custom_output_configuration() :: %{
        "blueprints" => list(blueprint_item())
      }

  """
  @type custom_output_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_data_automation_project_request() :: %{
        optional("projectStage") => list(any())
      }

  """
  @type get_data_automation_project_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_data_automation_project_request() :: %{}

  """
  @type delete_data_automation_project_request() :: %{}

  @typedoc """

  ## Example:

      list_data_automation_projects_response() :: %{
        "nextToken" => String.t() | Atom.t(),
        "projects" => list(data_automation_project_summary())
      }

  """
  @type list_data_automation_projects_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      blueprint_filter() :: %{
        "blueprintArn" => String.t() | Atom.t(),
        "blueprintStage" => list(any()),
        "blueprintVersion" => String.t() | Atom.t()
      }

  """
  @type blueprint_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      document_output_format() :: %{
        "additionalFileFormat" => document_output_additional_file_format(),
        "textFormat" => document_output_text_format()
      }

  """
  @type document_output_format() :: %{String.t() | Atom.t() => any()}

  @type create_blueprint_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_blueprint_version_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_data_automation_project_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_blueprint_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_data_automation_project_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_blueprint_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_data_automation_project_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_blueprints_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_data_automation_projects_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_blueprint_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_data_automation_project_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2023-07-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "bedrock-data-automation",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Bedrock Data Automation",
      signature_version: "v4",
      signing_name: "bedrock",
      target_prefix: nil
    }
  end

  @doc """
  Creates an Amazon Bedrock Data Automation Blueprint
  """
  @spec create_blueprint(map(), create_blueprint_request(), list()) ::
          {:ok, create_blueprint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_blueprint_errors()}
  def create_blueprint(%Client{} = client, input, options \\ []) do
    url_path = "/blueprints/"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a new version of an existing Amazon Bedrock Data Automation Blueprint
  """
  @spec create_blueprint_version(
          map(),
          String.t() | Atom.t(),
          create_blueprint_version_request(),
          list()
        ) ::
          {:ok, create_blueprint_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_blueprint_version_errors()}
  def create_blueprint_version(%Client{} = client, blueprint_arn, input, options \\ []) do
    url_path = "/blueprints/#{AWS.Util.encode_uri(blueprint_arn)}/versions/"
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
      201
    )
  end

  @doc """
  Creates an Amazon Bedrock Data Automation Project
  """
  @spec create_data_automation_project(map(), create_data_automation_project_request(), list()) ::
          {:ok, create_data_automation_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_data_automation_project_errors()}
  def create_data_automation_project(%Client{} = client, input, options \\ []) do
    url_path = "/data-automation-projects/"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Deletes an existing Amazon Bedrock Data Automation Blueprint
  """
  @spec delete_blueprint(map(), String.t() | Atom.t(), delete_blueprint_request(), list()) ::
          {:ok, delete_blueprint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_blueprint_errors()}
  def delete_blueprint(%Client{} = client, blueprint_arn, input, options \\ []) do
    url_path = "/blueprints/#{AWS.Util.encode_uri(blueprint_arn)}/"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"blueprintVersion", "blueprintVersion"}
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
  Deletes an existing Amazon Bedrock Data Automation Project
  """
  @spec delete_data_automation_project(
          map(),
          String.t() | Atom.t(),
          delete_data_automation_project_request(),
          list()
        ) ::
          {:ok, delete_data_automation_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_data_automation_project_errors()}
  def delete_data_automation_project(%Client{} = client, project_arn, input, options \\ []) do
    url_path = "/data-automation-projects/#{AWS.Util.encode_uri(project_arn)}/"
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
  Gets an existing Amazon Bedrock Data Automation Blueprint
  """
  @spec get_blueprint(map(), String.t() | Atom.t(), get_blueprint_request(), list()) ::
          {:ok, get_blueprint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_blueprint_errors()}
  def get_blueprint(%Client{} = client, blueprint_arn, input, options \\ []) do
    url_path = "/blueprints/#{AWS.Util.encode_uri(blueprint_arn)}/"
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
  Gets an existing Amazon Bedrock Data Automation Project
  """
  @spec get_data_automation_project(
          map(),
          String.t() | Atom.t(),
          get_data_automation_project_request(),
          list()
        ) ::
          {:ok, get_data_automation_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_automation_project_errors()}
  def get_data_automation_project(%Client{} = client, project_arn, input, options \\ []) do
    url_path = "/data-automation-projects/#{AWS.Util.encode_uri(project_arn)}/"
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
  Lists all existing Amazon Bedrock Data Automation Blueprints
  """
  @spec list_blueprints(map(), list_blueprints_request(), list()) ::
          {:ok, list_blueprints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_blueprints_errors()}
  def list_blueprints(%Client{} = client, input, options \\ []) do
    url_path = "/blueprints/"
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
  Lists all existing Amazon Bedrock Data Automation Projects
  """
  @spec list_data_automation_projects(map(), list_data_automation_projects_request(), list()) ::
          {:ok, list_data_automation_projects_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_automation_projects_errors()}
  def list_data_automation_projects(%Client{} = client, input, options \\ []) do
    url_path = "/data-automation-projects/"
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
  List tags for an Amazon Bedrock Data Automation resource
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    url_path = "/listTagsForResource"
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
  Tag an Amazon Bedrock Data Automation resource
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tagResource"
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
  Untag an Amazon Bedrock Data Automation resource
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/untagResource"
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
  Updates an existing Amazon Bedrock Data Automation Blueprint
  """
  @spec update_blueprint(map(), String.t() | Atom.t(), update_blueprint_request(), list()) ::
          {:ok, update_blueprint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_blueprint_errors()}
  def update_blueprint(%Client{} = client, blueprint_arn, input, options \\ []) do
    url_path = "/blueprints/#{AWS.Util.encode_uri(blueprint_arn)}/"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

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
  Updates an existing Amazon Bedrock Data Automation Project
  """
  @spec update_data_automation_project(
          map(),
          String.t() | Atom.t(),
          update_data_automation_project_request(),
          list()
        ) ::
          {:ok, update_data_automation_project_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_data_automation_project_errors()}
  def update_data_automation_project(%Client{} = client, project_arn, input, options \\ []) do
    url_path = "/data-automation-projects/#{AWS.Util.encode_uri(project_arn)}/"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

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
