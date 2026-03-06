# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ConnectHealth do
  @moduledoc """
  Health Agent for healthcare providers and patient engagement
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      fhir_server() :: %{
        "fhirEndpoint" => String.t() | atom(),
        "oauthToken" => String.t() | atom()
      }

  """
  @type fhir_server() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_source() :: %{
        "uri" => String.t() | atom()
      }

  """
  @type s3_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_patient_insights_job_request() :: %{
        optional("clientToken") => String.t() | atom(),
        required("encounterContext") => patient_insights_encounter_context(),
        required("inputDataConfig") => input_data_config(),
        required("insightsContext") => insights_context(),
        required("outputDataConfig") => output_data_config(),
        required("patientContext") => patient_insights_patient_context(),
        required("userContext") => user_context()
      }

  """
  @type start_patient_insights_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_domain_input() :: %{}

  """
  @type get_domain_input() :: %{}

  @typedoc """

  ## Example:

      medical_scribe_audio_event() :: %{
        "audioChunk" => binary()
      }

  """
  @type medical_scribe_audio_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      medical_scribe_post_stream_action_settings() :: %{
        "clinicalNoteGenerationSettings" => clinical_note_generation_settings(),
        "outputS3Uri" => String.t() | atom()
      }

  """
  @type medical_scribe_post_stream_action_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      input_data_config() :: %{
        "fhirServer" => fhir_server(),
        "s3Sources" => list(s3_source())
      }

  """
  @type input_data_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_subscription_input() :: %{}

  """
  @type create_subscription_input() :: %{}

  @typedoc """

  ## Example:

      patient_insights_patient_context() :: %{
        "dateOfBirth" => String.t() | atom(),
        "patientId" => String.t() | atom(),
        "pronouns" => list(any())
      }

  """
  @type patient_insights_patient_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      medical_scribe_post_stream_action_settings_response() :: %{
        "clinicalNoteGenerationSettings" => clinical_note_generation_settings_response(),
        "outputS3Uri" => String.t() | atom()
      }

  """
  @type medical_scribe_post_stream_action_settings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      domain_summary() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "domainId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type domain_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      clinical_note_generation_settings() :: %{
        "noteTemplateSettings" => list()
      }

  """
  @type clinical_note_generation_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_medical_scribe_listening_session_output() :: %{
        "domainId" => String.t() | atom(),
        "languageCode" => list(any()),
        "mediaEncoding" => list(any()),
        "mediaSampleRateHertz" => integer(),
        "requestId" => String.t() | atom(),
        "responseStream" => list(),
        "sessionId" => String.t() | atom(),
        "subscriptionId" => String.t() | atom()
      }

  """
  @type start_medical_scribe_listening_session_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      managed_template() :: %{
        "templateType" => list(any())
      }

  """
  @type managed_template() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_subscriptions_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()]
      }

  """
  @type list_subscriptions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      custom_template() :: %{
        "templateInstructions" => list(template_section_instruction()),
        "templateType" => list(any())
      }

  """
  @type custom_template() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      medical_scribe_configuration_event() :: %{
        "channelDefinitions" => list(medical_scribe_channel_definition()),
        "encounterContext" => encounter_context(),
        "postStreamActionSettings" => medical_scribe_post_stream_action_settings()
      }

  """
  @type medical_scribe_configuration_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      activate_subscription_input() :: %{}

  """
  @type activate_subscription_input() :: %{}

  @typedoc """

  ## Example:

      medical_scribe_transcript_event() :: %{
        "transcriptSegment" => medical_scribe_transcript_segment()
      }

  """
  @type medical_scribe_transcript_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      medical_scribe_post_stream_actions_result() :: %{
        "clinicalNoteGenerationResult" => clinical_note_generation_result()
      }

  """
  @type medical_scribe_post_stream_actions_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      activate_subscription_output() :: %{
        "subscription" => subscription_description()
      }

  """
  @type activate_subscription_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_domain_input() :: %{
        optional("kmsKeyArn") => String.t() | atom(),
        optional("tags") => map(),
        optional("webAppSetupConfiguration") => create_web_app_configuration(),
        required("name") => String.t() | atom()
      }

  """
  @type create_domain_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_medical_scribe_listening_session_output() :: %{
        "medicalScribeListeningSessionDetails" => medical_scribe_listening_session_details()
      }

  """
  @type get_medical_scribe_listening_session_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_domain_input() :: %{}

  """
  @type delete_domain_input() :: %{}

  @typedoc """

  ## Example:

      get_medical_scribe_listening_session_input() :: %{}

  """
  @type get_medical_scribe_listening_session_input() :: %{}

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

      list_domains_output() :: %{
        "domains" => list(domain_summary()),
        "nextToken" => [String.t() | atom()]
      }

  """
  @type list_domains_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      custom_template_response() :: %{
        "templateType" => list(any())
      }

  """
  @type custom_template_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      medical_scribe_listening_session_details() :: %{
        "channelDefinitions" => list(medical_scribe_channel_definition()),
        "domainId" => String.t() | atom(),
        "encounterContextProvided" => boolean(),
        "languageCode" => list(any()),
        "mediaEncoding" => list(any()),
        "mediaSampleRateHertz" => integer(),
        "postStreamActionResult" => medical_scribe_post_stream_actions_result(),
        "postStreamActionSettings" => medical_scribe_post_stream_action_settings_response(),
        "sessionId" => String.t() | atom(),
        "streamCreationTime" => [non_neg_integer()],
        "streamEndTime" => [non_neg_integer()],
        "streamStatus" => list(any()),
        "subscriptionId" => String.t() | atom()
      }

  """
  @type medical_scribe_listening_session_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_domain_output() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "domainId" => String.t() | atom(),
        "encryptionContext" => encryption_context(),
        "kmsKeyArn" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "tags" => map(),
        "webAppConfiguration" => web_app_configuration(),
        "webAppUrl" => String.t() | atom()
      }

  """
  @type get_domain_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_medical_scribe_listening_session_input() :: %{
        optional("inputStream") => list(),
        required("domainId") => String.t() | atom(),
        required("languageCode") => list(any()),
        required("mediaEncoding") => list(any()),
        required("mediaSampleRateHertz") => integer(),
        required("sessionId") => String.t() | atom(),
        required("subscriptionId") => String.t() | atom()
      }

  """
  @type start_medical_scribe_listening_session_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      insights_output() :: %{
        "uri" => String.t() | atom()
      }

  """
  @type insights_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      encryption_context() :: %{
        "encryptionType" => list(any()),
        "kmsKeyArn" => String.t() | atom()
      }

  """
  @type encryption_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_web_app_configuration() :: %{
        "ehrRole" => [String.t() | atom()],
        "idcInstanceId" => [String.t() | atom()],
        "idcRegion" => [String.t() | atom()]
      }

  """
  @type create_web_app_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_patient_insights_job_request() :: %{}

  """
  @type get_patient_insights_job_request() :: %{}

  @typedoc """

  ## Example:

      start_patient_insights_job_response() :: %{
        "creationTime" => [non_neg_integer()],
        "jobArn" => String.t() | atom(),
        "jobId" => String.t() | atom()
      }

  """
  @type start_patient_insights_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      clinical_note_generation_settings_response() :: %{
        "noteTemplateSettings" => list()
      }

  """
  @type clinical_note_generation_settings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      encounter_context() :: %{
        "unstructuredContext" => String.t() | atom()
      }

  """
  @type encounter_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      web_app_configuration() :: %{
        "ehrRole" => [String.t() | atom()],
        "idcApplicationId" => [String.t() | atom()],
        "idcRegion" => [String.t() | atom()]
      }

  """
  @type web_app_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deactivate_subscription_output() :: %{
        "subscription" => subscription_description()
      }

  """
  @type deactivate_subscription_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_domain_output() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "domainId" => String.t() | atom(),
        "encryptionContext" => encryption_context(),
        "kmsKeyArn" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "webAppConfiguration" => web_app_configuration(),
        "webAppUrl" => String.t() | atom()
      }

  """
  @type create_domain_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_subscription_output() :: %{
        "activatedAt" => [non_neg_integer()],
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "deactivatedAt" => [non_neg_integer()],
        "domainId" => String.t() | atom(),
        "lastUpdatedAt" => [non_neg_integer()],
        "status" => list(any()),
        "subscriptionId" => String.t() | atom()
      }

  """
  @type create_subscription_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      insights_context() :: %{
        "insightsType" => list(any())
      }

  """
  @type insights_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_patient_insights_job_response() :: %{
        "creationTime" => [non_neg_integer()],
        "encounterContext" => patient_insights_encounter_context(),
        "inputDataConfig" => input_data_config(),
        "insightsContext" => insights_context(),
        "insightsOutput" => insights_output(),
        "jobArn" => String.t() | atom(),
        "jobId" => String.t() | atom(),
        "jobStatus" => list(any()),
        "outputDataConfig" => output_data_config(),
        "patientContext" => patient_insights_patient_context(),
        "statusDetails" => String.t() | atom(),
        "updatedTime" => [non_neg_integer()],
        "userContext" => user_context()
      }

  """
  @type get_patient_insights_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deactivate_subscription_input() :: %{}

  """
  @type deactivate_subscription_input() :: %{}

  @typedoc """

  ## Example:

      artifact_details() :: %{
        "failureReason" => String.t() | atom(),
        "outputLocation" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type artifact_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_input() :: %{}

  """
  @type list_tags_for_resource_input() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      template_section_instruction() :: %{
        "sectionHeader" => String.t() | atom(),
        "sectionInstruction" => String.t() | atom()
      }

  """
  @type template_section_instruction() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      output_data_config() :: %{
        "s3OutputPath" => String.t() | atom()
      }

  """
  @type output_data_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      medical_scribe_session_control_event() :: %{
        "type" => list(any())
      }

  """
  @type medical_scribe_session_control_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_subscription_output() :: %{
        "subscription" => subscription_description()
      }

  """
  @type get_subscription_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_context() :: %{
        "role" => list(any()),
        "specialty" => list(any()),
        "userId" => String.t() | atom()
      }

  """
  @type user_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      medical_scribe_transcript_segment() :: %{
        "audioBeginOffset" => float(),
        "audioEndOffset" => float(),
        "channelId" => [String.t() | atom()],
        "content" => [String.t() | atom()],
        "isPartial" => boolean(),
        "segmentId" => [String.t() | atom()]
      }

  """
  @type medical_scribe_transcript_segment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_domain_output() :: %{
        "arn" => String.t() | atom(),
        "domainId" => String.t() | atom(),
        "status" => list(any())
      }

  """
  @type delete_domain_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      patient_insights_encounter_context() :: %{
        "encounterReason" => String.t() | atom()
      }

  """
  @type patient_insights_encounter_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_domains_input() :: %{
        optional("maxResults") => [integer()],
        optional("nextToken") => [String.t() | atom()],
        optional("status") => list(any())
      }

  """
  @type list_domains_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      medical_scribe_channel_definition() :: %{
        "channelId" => integer(),
        "participantRole" => list(any())
      }

  """
  @type medical_scribe_channel_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      managed_template_response() :: %{
        "templateType" => list(any())
      }

  """
  @type managed_template_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      clinical_note_generation_result() :: %{
        "afterVisitSummaryResult" => artifact_details(),
        "noteResult" => artifact_details(),
        "transcriptResult" => artifact_details()
      }

  """
  @type clinical_note_generation_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      subscription_description() :: %{
        "activatedAt" => [non_neg_integer()],
        "arn" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "deactivatedAt" => [non_neg_integer()],
        "domainId" => String.t() | atom(),
        "lastUpdatedAt" => [non_neg_integer()],
        "status" => list(any()),
        "subscriptionId" => String.t() | atom()
      }

  """
  @type subscription_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_subscription_input() :: %{}

  """
  @type get_subscription_input() :: %{}

  @typedoc """

  ## Example:

      list_subscriptions_output() :: %{
        "nextToken" => [String.t() | atom()],
        "subscriptions" => list(subscription_description())
      }

  """
  @type list_subscriptions_output() :: %{(String.t() | atom()) => any()}

  @type activate_subscription_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_domain_errors() :: service_quota_exceeded_exception()

  @type create_subscription_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type deactivate_subscription_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_domain_errors() :: resource_not_found_exception()

  @type get_domain_errors() :: resource_not_found_exception()

  @type get_medical_scribe_listening_session_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type get_patient_insights_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_subscription_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_subscriptions_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_medical_scribe_listening_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type start_patient_insights_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2025-01-29",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "health-agent",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "ConnectHealth",
      signature_version: "v4",
      signing_name: "health-agent",
      target_prefix: nil
    }
  end

  @doc """
  Activates a Subscription to enable billing for a user.
  """
  @spec activate_subscription(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          activate_subscription_input(),
          list()
        ) ::
          {:ok, activate_subscription_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, activate_subscription_errors()}
  def activate_subscription(%Client{} = client, domain_id, subscription_id, input, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_id)}/subscriptions/#{AWS.Util.encode_uri(subscription_id)}/activate"

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
  Creates a new Domain for managing HealthAgent resources.
  """
  @spec create_domain(map(), create_domain_input(), list()) ::
          {:ok, create_domain_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_domain_errors()}
  def create_domain(%Client{} = client, input, options \\ []) do
    url_path = "/domain"
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
  Creates a new Subscription within a Domain for billing and user management.
  """
  @spec create_subscription(map(), String.t() | atom(), create_subscription_input(), list()) ::
          {:ok, create_subscription_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_subscription_errors()}
  def create_subscription(%Client{} = client, domain_id, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/subscriptions"
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
  Deactivates a Subscription to stop billing for a user.
  """
  @spec deactivate_subscription(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          deactivate_subscription_input(),
          list()
        ) ::
          {:ok, deactivate_subscription_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deactivate_subscription_errors()}
  def deactivate_subscription(
        %Client{} = client,
        domain_id,
        subscription_id,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_id)}/subscriptions/#{AWS.Util.encode_uri(subscription_id)}/deactivate"

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
  Deletes a Domain and all associated resources.
  """
  @spec delete_domain(map(), String.t() | atom(), delete_domain_input(), list()) ::
          {:ok, delete_domain_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_domain_errors()}
  def delete_domain(%Client{} = client, domain_id, input, options \\ []) do
    url_path = "/domain/#{AWS.Util.encode_uri(domain_id)}"
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
  Retrieves information about a Domain.
  """
  @spec get_domain(map(), String.t() | atom(), list()) ::
          {:ok, get_domain_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_domain_errors()}
  def get_domain(%Client{} = client, domain_id, options \\ []) do
    url_path = "/domain/#{AWS.Util.encode_uri(domain_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves details about an existing Medical Scribe listening session
  """
  @spec get_medical_scribe_listening_session(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_medical_scribe_listening_session_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_medical_scribe_listening_session_errors()}
  def get_medical_scribe_listening_session(
        %Client{} = client,
        domain_id,
        session_id,
        subscription_id,
        options \\ []
      ) do
    url_path =
      "/medical-scribe-stream/domain/#{AWS.Util.encode_uri(domain_id)}/subscription/#{AWS.Util.encode_uri(subscription_id)}/session/#{AWS.Util.encode_uri(session_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "streaming.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get details of a started patient insights job.
  """
  @spec get_patient_insights_job(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_patient_insights_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_patient_insights_job_errors()}
  def get_patient_insights_job(%Client{} = client, domain_id, job_id, options \\ []) do
    url_path =
      "/domain/#{AWS.Util.encode_uri(domain_id)}/patient-insights-job/#{AWS.Util.encode_uri(job_id)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "runtime.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a Subscription.
  """
  @spec get_subscription(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_subscription_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_subscription_errors()}
  def get_subscription(%Client{} = client, domain_id, subscription_id, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_id)}/subscriptions/#{AWS.Util.encode_uri(subscription_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists Domains for a given account.
  """
  @spec list_domains(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_domains_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_domains(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/domain"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all Subscriptions within a Domain.
  """
  @spec list_subscriptions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_subscriptions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_subscriptions_errors()}
  def list_subscriptions(
        %Client{} = client,
        domain_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_id)}/subscriptions"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags associated with the specified resource
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts a new Medical Scribe listening session for real-time audio transcription
  """
  @spec start_medical_scribe_listening_session(
          map(),
          start_medical_scribe_listening_session_input(),
          list()
        ) ::
          {:ok, start_medical_scribe_listening_session_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_medical_scribe_listening_session_errors()}
  def start_medical_scribe_listening_session(%Client{} = client, input, options \\ []) do
    url_path = "/medical-scribe-stream/"

    {headers, input} =
      [
        {"domainId", "x-amzn-medscribe-domain-id"},
        {"languageCode", "x-amzn-medscribe-language-code"},
        {"mediaEncoding", "x-amzn-medscribe-media-encoding"},
        {"mediaSampleRateHertz", "x-amzn-medscribe-sample-rate"},
        {"sessionId", "x-amzn-medscribe-session-id"},
        {"subscriptionId", "x-amzn-medscribe-subscription-id"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [
          {"x-amzn-medscribe-domain-id", "domainId"},
          {"x-amzn-medscribe-language-code", "languageCode"},
          {"x-amzn-medscribe-media-encoding", "mediaEncoding"},
          {"x-amzn-medscribe-sample-rate", "mediaSampleRateHertz"},
          {"x-amzn-request-id", "requestId"},
          {"x-amzn-medscribe-session-id", "sessionId"},
          {"x-amzn-medscribe-subscription-id", "subscriptionId"}
        ]
      )

    meta = metadata() |> Map.put_new(:host_prefix, "streaming.")

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
  Starts a new patient insights job.
  """
  @spec start_patient_insights_job(
          map(),
          String.t() | atom(),
          start_patient_insights_job_request(),
          list()
        ) ::
          {:ok, start_patient_insights_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_patient_insights_job_errors()}
  def start_patient_insights_job(%Client{} = client, domain_id, input, options \\ []) do
    url_path = "/domain/#{AWS.Util.encode_uri(domain_id)}/patient-insights-job"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "runtime.")

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
  Associates the specified tags with the specified resource
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
      204
    )
  end

  @doc """
  Removes the specified tags from the specified resource
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
      204
    )
  end
end
