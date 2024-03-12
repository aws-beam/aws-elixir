# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ChimeSDKMeetings do
  @moduledoc """
  The Amazon Chime SDK meetings APIs in this section allow software developers to
  create Amazon Chime SDK meetings, set the Amazon Web Services Regions for
  meetings, create and manage users, and send and
  receive meeting notifications.

  For more information about the meeting APIs, see
  [Amazon Chime SDK meetings](https://docs.aws.amazon.com/chime/latest/APIReference/API_Operations_Amazon_Chime_SDK_Meetings.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  update_attendee_capabilities_response() :: %{
    "Attendee" => attendee()
  }
  """
  @type update_attendee_capabilities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  notifications_configuration() :: %{
    "LambdaFunctionArn" => String.t(),
    "SnsTopicArn" => String.t(),
    "SqsQueueArn" => String.t()
  }
  """
  @type notifications_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_request() :: %{
    required("ResourceARN") => String.t(),
    required("Tags") => list(tag()())
  }
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_attendee_response() :: %{
    "Attendee" => attendee()
  }
  """
  @type get_attendee_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  unauthorized_exception() :: %{
    "Code" => String.t(),
    "Message" => String.t(),
    "RequestId" => String.t()
  }
  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_response() :: %{

  }
  """
  @type untag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_meeting_with_attendees_request() :: %{
    optional("MeetingFeatures") => meeting_features_configuration(),
    optional("MeetingHostId") => String.t(),
    optional("NotificationsConfiguration") => notifications_configuration(),
    optional("PrimaryMeetingId") => String.t(),
    optional("Tags") => list(tag()()),
    optional("TenantIds") => list(String.t()()),
    required("Attendees") => list(create_attendee_request_item()()),
    required("ClientRequestToken") => String.t(),
    required("ExternalMeetingId") => String.t(),
    required("MediaRegion") => String.t()
  }
  """
  @type create_meeting_with_attendees_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_failure_exception() :: %{
    "Code" => String.t(),
    "Message" => String.t(),
    "RequestId" => String.t()
  }
  """
  @type service_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  forbidden_exception() :: %{
    "Code" => String.t(),
    "Message" => String.t(),
    "RequestId" => String.t()
  }
  """
  @type forbidden_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  meeting() :: %{
    "ExternalMeetingId" => String.t(),
    "MediaPlacement" => media_placement(),
    "MediaRegion" => String.t(),
    "MeetingArn" => String.t(),
    "MeetingFeatures" => meeting_features_configuration(),
    "MeetingHostId" => String.t(),
    "MeetingId" => String.t(),
    "PrimaryMeetingId" => String.t(),
    "TenantIds" => list(String.t()())
  }
  """
  @type meeting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_meeting_response() :: %{
    "Meeting" => meeting()
  }
  """
  @type create_meeting_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_meeting_response() :: %{
    "Meeting" => meeting()
  }
  """
  @type get_meeting_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_request() :: %{
    required("ResourceARN") => String.t(),
    required("TagKeys") => list(String.t()())
  }
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  stop_meeting_transcription_request() :: %{

  }
  """
  @type stop_meeting_transcription_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  attendee_features() :: %{
    "MaxCount" => integer()
  }
  """
  @type attendee_features() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  engine_transcribe_settings() :: %{
    "ContentIdentificationType" => list(any()),
    "ContentRedactionType" => list(any()),
    "EnablePartialResultsStabilization" => boolean(),
    "IdentifyLanguage" => boolean(),
    "LanguageCode" => list(any()),
    "LanguageModelName" => String.t(),
    "LanguageOptions" => String.t(),
    "PartialResultsStability" => list(any()),
    "PiiEntityTypes" => String.t(),
    "PreferredLanguage" => list(any()),
    "Region" => list(any()),
    "VocabularyFilterMethod" => list(any()),
    "VocabularyFilterName" => String.t(),
    "VocabularyFilterNames" => String.t(),
    "VocabularyName" => String.t(),
    "VocabularyNames" => String.t()
  }
  """
  @type engine_transcribe_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_attendees_response() :: %{
    "Attendees" => list(attendee()()),
    "NextToken" => String.t()
  }
  """
  @type list_attendees_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_meeting_with_attendees_response() :: %{
    "Attendees" => list(attendee()()),
    "Errors" => list(create_attendee_error()()),
    "Meeting" => meeting()
  }
  """
  @type create_meeting_with_attendees_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  transcription_configuration() :: %{
    "EngineTranscribeMedicalSettings" => engine_transcribe_medical_settings(),
    "EngineTranscribeSettings" => engine_transcribe_settings()
  }
  """
  @type transcription_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  conflict_exception() :: %{
    "Code" => String.t(),
    "Message" => String.t(),
    "RequestId" => String.t()
  }
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_meeting_request() :: %{

  }
  """
  @type delete_meeting_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_not_found_exception() :: %{
    "Code" => String.t(),
    "Message" => String.t(),
    "RequestId" => String.t(),
    "ResourceName" => String.t()
  }
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

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
  audio_features() :: %{
    "EchoReduction" => list(any())
  }
  """
  @type audio_features() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  engine_transcribe_medical_settings() :: %{
    "ContentIdentificationType" => list(any()),
    "LanguageCode" => list(any()),
    "Region" => list(any()),
    "Specialty" => list(any()),
    "Type" => list(any()),
    "VocabularyName" => String.t()
  }
  """
  @type engine_transcribe_medical_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_meeting_request() :: %{
    optional("MeetingFeatures") => meeting_features_configuration(),
    optional("MeetingHostId") => String.t(),
    optional("NotificationsConfiguration") => notifications_configuration(),
    optional("PrimaryMeetingId") => String.t(),
    optional("Tags") => list(tag()()),
    optional("TenantIds") => list(String.t()()),
    required("ClientRequestToken") => String.t(),
    required("ExternalMeetingId") => String.t(),
    required("MediaRegion") => String.t()
  }
  """
  @type create_meeting_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  not_found_exception() :: %{
    "Code" => String.t(),
    "Message" => String.t(),
    "RequestId" => String.t()
  }
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_attendee_request_item() :: %{
    "Capabilities" => attendee_capabilities(),
    "ExternalUserId" => String.t()
  }
  """
  @type create_attendee_request_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_attendee_response() :: %{
    "Attendee" => attendee()
  }
  """
  @type create_attendee_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_response() :: %{
    "Tags" => list(tag()())
  }
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  attendee_capabilities() :: %{
    "Audio" => list(any()),
    "Content" => list(any()),
    "Video" => list(any())
  }
  """
  @type attendee_capabilities() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  service_unavailable_exception() :: %{
    "Code" => String.t(),
    "Message" => String.t(),
    "RequestId" => String.t(),
    "RetryAfterSeconds" => String.t()
  }
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_meeting_request() :: %{

  }
  """
  @type get_meeting_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_attendee_error() :: %{
    "ErrorCode" => String.t(),
    "ErrorMessage" => String.t(),
    "ExternalUserId" => String.t()
  }
  """
  @type create_attendee_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  unprocessable_entity_exception() :: %{
    "Code" => String.t(),
    "Message" => String.t(),
    "RequestId" => String.t()
  }
  """
  @type unprocessable_entity_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_response() :: %{

  }
  """
  @type tag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_attendee_request() :: %{

  }
  """
  @type get_attendee_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  attendee_id_item() :: %{
    "AttendeeId" => String.t()
  }
  """
  @type attendee_id_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  meeting_features_configuration() :: %{
    "Attendee" => attendee_features(),
    "Audio" => audio_features(),
    "Content" => content_features(),
    "Video" => video_features()
  }
  """
  @type meeting_features_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_request() :: %{
    required("ResourceARN") => String.t()
  }
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  content_features() :: %{
    "MaxResolution" => list(any())
  }
  """
  @type content_features() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_attendee_capabilities_request() :: %{
    required("Capabilities") => attendee_capabilities()
  }
  """
  @type update_attendee_capabilities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  start_meeting_transcription_request() :: %{
    required("TranscriptionConfiguration") => transcription_configuration()
  }
  """
  @type start_meeting_transcription_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  throttling_exception() :: %{
    "Code" => String.t(),
    "Message" => String.t(),
    "RequestId" => String.t()
  }
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_create_attendee_request() :: %{
    required("Attendees") => list(create_attendee_request_item()())
  }
  """
  @type batch_create_attendee_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_create_attendee_response() :: %{
    "Attendees" => list(attendee()()),
    "Errors" => list(create_attendee_error()())
  }
  """
  @type batch_create_attendee_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_attendees_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_attendees_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_update_attendee_capabilities_except_request() :: %{
    required("Capabilities") => attendee_capabilities(),
    required("ExcludedAttendeeIds") => list(attendee_id_item()())
  }
  """
  @type batch_update_attendee_capabilities_except_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  limit_exceeded_exception() :: %{
    "Code" => String.t(),
    "Message" => String.t(),
    "RequestId" => String.t()
  }
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  video_features() :: %{
    "MaxResolution" => list(any())
  }
  """
  @type video_features() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  attendee() :: %{
    "AttendeeId" => String.t(),
    "Capabilities" => attendee_capabilities(),
    "ExternalUserId" => String.t(),
    "JoinToken" => String.t()
  }
  """
  @type attendee() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  bad_request_exception() :: %{
    "Code" => String.t(),
    "Message" => String.t(),
    "RequestId" => String.t()
  }
  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_attendee_request() :: %{
    optional("Capabilities") => attendee_capabilities(),
    required("ExternalUserId") => String.t()
  }
  """
  @type create_attendee_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  media_placement() :: %{
    "AudioFallbackUrl" => String.t(),
    "AudioHostUrl" => String.t(),
    "EventIngestionUrl" => String.t(),
    "ScreenDataUrl" => String.t(),
    "ScreenSharingUrl" => String.t(),
    "ScreenViewingUrl" => String.t(),
    "SignalingUrl" => String.t(),
    "TurnControlUrl" => String.t()
  }
  """
  @type media_placement() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  too_many_tags_exception() :: %{
    "Code" => String.t(),
    "Message" => String.t(),
    "RequestId" => String.t(),
    "ResourceName" => String.t()
  }
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_attendee_request() :: %{

  }
  """
  @type delete_attendee_request() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2021-07-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "meetings-chime",
      global?: false,
      protocol: "rest-json",
      service_id: "Chime SDK Meetings",
      signature_version: "v4",
      signing_name: "chime",
      target_prefix: nil
    }
  end

  @doc """
  Creates up to 100 attendees for an active Amazon Chime SDK meeting.

  For more information about the Amazon Chime SDK, see
  [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
  *Amazon Chime Developer Guide*.
  """
  @spec batch_create_attendee(map(), String.t(), batch_create_attendee_request(), list()) ::
          {:ok, batch_create_attendee_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, not_found_exception()}
          | {:error, service_failure_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, throttling_exception()}
          | {:error, unauthorized_exception()}
          | {:error, unprocessable_entity_exception()}
  def batch_create_attendee(%Client{} = client, meeting_id, input, options \\ []) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}/attendees?operation=batch-create"
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
  Updates `AttendeeCapabilities` except the capabilities listed in an
  `ExcludedAttendeeIds` table.

  You use the capabilities with a set of values that control what the capabilities
  can do, such as `SendReceive` data. For more information about those values, see
  .

  When using capabilities, be aware of these corner cases:

    *
  If you specify `MeetingFeatures:Video:MaxResolution:None` when you create a
  meeting, all API requests
  that include `SendReceive`, `Send`, or `Receive` for
  `AttendeeCapabilities:Video` will be rejected with `ValidationError 400`.

    *
  If you specify `MeetingFeatures:Content:MaxResolution:None` when you create a
  meeting, all API requests that include `SendReceive`, `Send`, or
  `Receive` for `AttendeeCapabilities:Content` will be rejected with
  `ValidationError 400`.

    *
  You can't set `content` capabilities to `SendReceive` or `Receive` unless you
  also set `video` capabilities to `SendReceive`
  or `Receive`. If you don't set the `video` capability to receive, the response
  will contain an HTTP 400 Bad Request status code. However, you can set your
  `video` capability
  to receive and you set your `content` capability to not receive.

    *
  When you change an `audio` capability from `None` or `Receive` to `Send` or
  `SendReceive` ,
  and if the attendee left their microphone unmuted, audio will flow from the
  attendee to the other meeting participants.

    *
  When you change a `video` or `content` capability from `None` or `Receive` to
  `Send` or `SendReceive` ,
  and if the attendee turned on their video or content streams, remote attendees
  can receive those streams, but only after media renegotiation between the client
  and the Amazon Chime back-end server.
  """
  @spec batch_update_attendee_capabilities_except(
          map(),
          String.t(),
          batch_update_attendee_capabilities_except_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, conflict_exception()}
          | {:error, forbidden_exception()}
          | {:error, not_found_exception()}
          | {:error, service_failure_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, throttling_exception()}
          | {:error, unauthorized_exception()}
  def batch_update_attendee_capabilities_except(
        %Client{} = client,
        meeting_id,
        input,
        options \\ []
      ) do
    url_path =
      "/meetings/#{AWS.Util.encode_uri(meeting_id)}/attendees/capabilities?operation=batch-update-except"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """

  Creates a new attendee for an active Amazon Chime SDK meeting.

  For more information about the Amazon Chime SDK, see
  [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html)
  in the
  *Amazon Chime Developer Guide*.
  """
  @spec create_attendee(map(), String.t(), create_attendee_request(), list()) ::
          {:ok, create_attendee_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, not_found_exception()}
          | {:error, service_failure_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, throttling_exception()}
          | {:error, unauthorized_exception()}
          | {:error, unprocessable_entity_exception()}
  def create_attendee(%Client{} = client, meeting_id, input, options \\ []) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}/attendees"
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
  Creates a new Amazon Chime SDK meeting in the specified media Region with no
  initial attendees.

  For more information about specifying media Regions, see
  [Amazon Chime SDK Media Regions](https://docs.aws.amazon.com/chime/latest/dg/chime-sdk-meetings-regions.html)
  in the *Amazon Chime Developer Guide*. For more information about the Amazon
  Chime SDK, see
  [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html)
  in the
  *Amazon Chime Developer Guide*.
  """
  @spec create_meeting(map(), create_meeting_request(), list()) ::
          {:ok, create_meeting_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, conflict_exception()}
          | {:error, forbidden_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, service_failure_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, throttling_exception()}
          | {:error, unauthorized_exception()}
  def create_meeting(%Client{} = client, input, options \\ []) do
    url_path = "/meetings"
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

  Creates a new Amazon Chime SDK meeting in the specified media Region, with
  attendees.

  For more information about specifying media Regions, see
  [Amazon Chime SDK Media Regions](https://docs.aws.amazon.com/chime/latest/dg/chime-sdk-meetings-regions.html)
  in the *Amazon Chime Developer Guide*. For more information about the Amazon
  Chime SDK, see
  [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html)
  in the *Amazon Chime Developer Guide*.
  """
  @spec create_meeting_with_attendees(map(), create_meeting_with_attendees_request(), list()) ::
          {:ok, create_meeting_with_attendees_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, conflict_exception()}
          | {:error, forbidden_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, service_failure_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, throttling_exception()}
          | {:error, unauthorized_exception()}
  def create_meeting_with_attendees(%Client{} = client, input, options \\ []) do
    url_path = "/meetings?operation=create-attendees"
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
  Deletes an attendee from the specified Amazon Chime SDK meeting and deletes
  their
  `JoinToken`.

  Attendees are automatically deleted when a Amazon Chime SDK meeting is deleted.
  For more information about the Amazon Chime SDK, see
  [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html)
  in the *Amazon Chime Developer Guide*.
  """
  @spec delete_attendee(map(), String.t(), String.t(), delete_attendee_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, not_found_exception()}
          | {:error, service_failure_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, throttling_exception()}
          | {:error, unauthorized_exception()}
  def delete_attendee(%Client{} = client, attendee_id, meeting_id, input, options \\ []) do
    url_path =
      "/meetings/#{AWS.Util.encode_uri(meeting_id)}/attendees/#{AWS.Util.encode_uri(attendee_id)}"

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
      204
    )
  end

  @doc """
  Deletes the specified Amazon Chime SDK meeting.

  The operation deletes all attendees, disconnects all clients, and prevents new
  clients from
  joining the meeting. For more information about the Amazon Chime SDK, see
  [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
  *Amazon Chime Developer Guide*.
  """
  @spec delete_meeting(map(), String.t(), delete_meeting_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, not_found_exception()}
          | {:error, service_failure_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, throttling_exception()}
          | {:error, unauthorized_exception()}
  def delete_meeting(%Client{} = client, meeting_id, input, options \\ []) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}"
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
      204
    )
  end

  @doc """

  Gets the Amazon Chime SDK attendee details for a specified meeting ID and
  attendee ID.

  For more information about the Amazon Chime SDK, see
  [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html)
  in the *Amazon Chime Developer Guide*.
  """
  @spec get_attendee(map(), String.t(), String.t(), list()) ::
          {:ok, get_attendee_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, not_found_exception()}
          | {:error, service_failure_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, throttling_exception()}
          | {:error, unauthorized_exception()}
  def get_attendee(%Client{} = client, attendee_id, meeting_id, options \\ []) do
    url_path =
      "/meetings/#{AWS.Util.encode_uri(meeting_id)}/attendees/#{AWS.Util.encode_uri(attendee_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the Amazon Chime SDK meeting details for the specified meeting ID.

  For more information about the Amazon Chime SDK, see
  [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html)
  in the *Amazon Chime Developer Guide*.
  """
  @spec get_meeting(map(), String.t(), list()) ::
          {:ok, get_meeting_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, not_found_exception()}
          | {:error, service_failure_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, throttling_exception()}
          | {:error, unauthorized_exception()}
  def get_meeting(%Client{} = client, meeting_id, options \\ []) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Lists the attendees for the specified Amazon Chime SDK meeting.

  For more information about the Amazon Chime SDK, see
  [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html)
  in the *Amazon Chime Developer Guide*.
  """
  @spec list_attendees(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_attendees_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, not_found_exception()}
          | {:error, service_failure_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, throttling_exception()}
          | {:error, unauthorized_exception()}
  def list_attendees(
        %Client{} = client,
        meeting_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}/attendees"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of the tags available for the specified resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_failure_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, throttling_exception()}
          | {:error, unauthorized_exception()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"arn", resource_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts transcription for the specified `meetingId`.

  For more information, refer to [
  Using Amazon Chime SDK live transcription
  ](https://docs.aws.amazon.com/chime-sdk/latest/dg/meeting-transcription.html) in
  the *Amazon Chime SDK Developer Guide*.

  If you specify an invalid configuration, a `TranscriptFailed` event will be sent
  with the contents of the `BadRequestException` generated by Amazon Transcribe.
  For more information on each parameter and which combinations are valid, refer
  to the
  [StartStreamTranscription](https://docs.aws.amazon.com/transcribe/latest/APIReference/API_streaming_StartStreamTranscription.html) API in the
  *Amazon Transcribe Developer Guide*.

  By default, Amazon Transcribe may use and store audio content processed by the
  service to develop and improve Amazon Web Services AI/ML services as
  further described in section 50 of the [Amazon Web Services Service
  Terms](https://aws.amazon.com/service-terms/). Using Amazon Transcribe
  may be subject to federal and state laws or regulations regarding the recording
  or interception of electronic communications. It is your and your end users’
  responsibility to comply with all applicable laws regarding the recording,
  including properly notifying all participants in a recorded session or
  communication
  that the session or communication is being recorded, and obtaining all necessary
  consents. You can opt out from Amazon Web Services using audio content to
  develop and
  improve AWS AI/ML services by configuring an AI services opt out policy using
  Amazon Web Services Organizations.
  """
  @spec start_meeting_transcription(
          map(),
          String.t(),
          start_meeting_transcription_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, not_found_exception()}
          | {:error, service_failure_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, throttling_exception()}
          | {:error, unauthorized_exception()}
          | {:error, unprocessable_entity_exception()}
  def start_meeting_transcription(%Client{} = client, meeting_id, input, options \\ []) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}/transcription?operation=start"
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
  Stops transcription for the specified `meetingId`.

  For more information, refer to [
  Using Amazon Chime SDK live transcription
  ](https://docs.aws.amazon.com/chime-sdk/latest/dg/meeting-transcription.html) in
  the *Amazon Chime SDK Developer Guide*.

  By default, Amazon Transcribe may use and store audio content processed by the
  service to develop and improve Amazon Web Services AI/ML services as
  further described in section 50 of the [Amazon Web Services Service Terms](https://aws.amazon.com/service-terms/). Using Amazon Transcribe
  may be subject to federal and state laws or regulations regarding the recording
  or interception of electronic communications. It is your and your end users’
  responsibility to comply with all applicable laws regarding the recording,
  including properly notifying all participants in a recorded session or
  communication
  that the session or communication is being recorded, and obtaining all necessary
  consents. You can opt out from Amazon Web Services using audio content to
  develop and
  improve Amazon Web Services AI/ML services by configuring an AI services opt out
  policy using Amazon Web Services Organizations.
  """
  @spec stop_meeting_transcription(
          map(),
          String.t(),
          stop_meeting_transcription_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, not_found_exception()}
          | {:error, service_failure_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, throttling_exception()}
          | {:error, unauthorized_exception()}
          | {:error, unprocessable_entity_exception()}
  def stop_meeting_transcription(%Client{} = client, meeting_id, input, options \\ []) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}/transcription?operation=stop"
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
  The resource that supports tags.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_failure_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, throttling_exception()}
          | {:error, too_many_tags_exception()}
          | {:error, unauthorized_exception()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags?operation=tag-resource"
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
      204
    )
  end

  @doc """
  Removes the specified tags from the specified resources.

  When you specify a tag key, the action removes both that key and its associated
  value. The operation succeeds even if you
  attempt to remove tags from a resource that were already removed. Note the
  following:

    *
  To remove tags from a resource, you need the necessary permissions for the
  service that the resource belongs to as well as permissions for removing tags.
  For more information,
  see the documentation for the service whose resource you want to untag.

    *
  You can only tag resources that are located in the specified Amazon Web Services
  Region for the calling Amazon Web Services account.

  ## Minimum permissions

  In addition to the `tag:UntagResources` permission required by this operation,
  you must also have the remove tags permission defined by the service that
  created the resource.
  For example, to remove the tags from an Amazon EC2 instance using the
  `UntagResources` operation, you must have both of the following permissions:

  `tag:UntagResource`

  `ChimeSDKMeetings:DeleteTags`
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, forbidden_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, service_failure_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, throttling_exception()}
          | {:error, unauthorized_exception()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags?operation=untag-resource"
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
      204
    )
  end

  @doc """
  The capabilities that you want to update.

  You use the capabilities with a set of values that control what the capabilities
  can do, such as `SendReceive` data. For more information about those values, see
  .

  When using capabilities, be aware of these corner cases:

    *
  If you specify `MeetingFeatures:Video:MaxResolution:None` when you create a
  meeting, all API requests
  that include `SendReceive`, `Send`, or `Receive` for
  `AttendeeCapabilities:Video` will be rejected with `ValidationError 400`.

    *
  If you specify `MeetingFeatures:Content:MaxResolution:None` when you create a
  meeting, all API requests that include `SendReceive`, `Send`, or
  `Receive` for `AttendeeCapabilities:Content` will be rejected with
  `ValidationError 400`.

    *
  You can't set `content` capabilities to `SendReceive` or `Receive` unless you
  also set `video` capabilities to `SendReceive`
  or `Receive`. If you don't set the `video` capability to receive, the response
  will contain an HTTP 400 Bad Request status code. However, you can set your
  `video` capability
  to receive and you set your `content` capability to not receive.

    *
  When you change an `audio` capability from `None` or `Receive` to `Send` or
  `SendReceive` ,
  and if the attendee left their microphone unmuted, audio will flow from the
  attendee to the other meeting participants.

    *
  When you change a `video` or `content` capability from `None` or `Receive` to
  `Send` or `SendReceive` ,
  and if the attendee turned on their video or content streams, remote attendees
  can receive those streams, but only after media renegotiation between the client
  and the Amazon Chime back-end server.
  """
  @spec update_attendee_capabilities(
          map(),
          String.t(),
          String.t(),
          update_attendee_capabilities_request(),
          list()
        ) ::
          {:ok, update_attendee_capabilities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, bad_request_exception()}
          | {:error, conflict_exception()}
          | {:error, forbidden_exception()}
          | {:error, not_found_exception()}
          | {:error, service_failure_exception()}
          | {:error, service_unavailable_exception()}
          | {:error, throttling_exception()}
          | {:error, unauthorized_exception()}
  def update_attendee_capabilities(
        %Client{} = client,
        attendee_id,
        meeting_id,
        input,
        options \\ []
      ) do
    url_path =
      "/meetings/#{AWS.Util.encode_uri(meeting_id)}/attendees/#{AWS.Util.encode_uri(attendee_id)}/capabilities"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
