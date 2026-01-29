# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ConnectParticipant do
  @moduledoc """

    *

  [Participant Service actions](https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_Connect_Participant_Service.html)

    *

  [Participant Service data types](https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_Connect_Participant_Service.html)

  Amazon Connect is an easy-to-use omnichannel cloud contact center service that
  enables companies of any size to deliver superior customer service at a lower
  cost.

  Amazon Connect communications capabilities make it easy for companies to deliver
  personalized interactions across communication channels, including chat.

  Use the Amazon Connect Participant Service to manage participants (for example,
  agents, customers, and managers listening in), and to send messages and events
  within a
  chat contact. The APIs in the service enable the following: sending chat
  messages,
  attachment sharing, managing a participant's connection state and message
  events, and
  retrieving chat transcripts.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      web_r_t_cmeeting() :: %{
        "MediaPlacement" => web_r_t_cmedia_placement(),
        "MeetingFeatures" => meeting_features_configuration(),
        "MeetingId" => String.t() | atom()
      }

  """
  @type web_r_t_cmeeting() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_participant_authentication_request() :: %{
        required("ConnectionToken") => String.t() | atom(),
        required("SessionId") => String.t() | atom()
      }

  """
  @type cancel_participant_authentication_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      view() :: %{
        "Arn" => String.t() | atom(),
        "Content" => view_content(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Version" => integer()
      }

  """
  @type view() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_authentication_url_response() :: %{
        "AuthenticationUrl" => String.t() | atom()
      }

  """
  @type get_authentication_url_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disconnect_participant_response() :: %{}

  """
  @type disconnect_participant_response() :: %{}

  @typedoc """

  ## Example:

      receipt() :: %{
        "DeliveredTimestamp" => String.t() | atom(),
        "ReadTimestamp" => String.t() | atom(),
        "RecipientParticipantId" => String.t() | atom()
      }

  """
  @type receipt() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      web_r_t_cmedia_placement() :: %{
        "AudioFallbackUrl" => String.t() | atom(),
        "AudioHostUrl" => String.t() | atom(),
        "EventIngestionUrl" => String.t() | atom(),
        "SignalingUrl" => String.t() | atom()
      }

  """
  @type web_r_t_cmedia_placement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_position() :: %{
        "AbsoluteTime" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "MostRecent" => integer()
      }

  """
  @type start_position() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      websocket() :: %{
        "ConnectionExpiry" => String.t() | atom(),
        "Url" => String.t() | atom()
      }

  """
  @type websocket() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      message_processing_metadata() :: %{
        "MessageProcessingStatus" => list(any())
      }

  """
  @type message_processing_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      complete_attachment_upload_request() :: %{
        required("AttachmentIds") => list(String.t() | atom()),
        required("ClientToken") => String.t() | atom(),
        required("ConnectionToken") => String.t() | atom()
      }

  """
  @type complete_attachment_upload_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_event_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Content") => String.t() | atom(),
        required("ConnectionToken") => String.t() | atom(),
        required("ContentType") => String.t() | atom()
      }

  """
  @type send_event_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_view_response() :: %{
        "View" => view()
      }

  """
  @type describe_view_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      item() :: %{
        "AbsoluteTime" => String.t() | atom(),
        "Attachments" => list(attachment_item()),
        "ContactId" => String.t() | atom(),
        "Content" => String.t() | atom(),
        "ContentType" => String.t() | atom(),
        "DisplayName" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "MessageMetadata" => message_metadata(),
        "ParticipantId" => String.t() | atom(),
        "ParticipantRole" => list(any()),
        "RelatedContactId" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disconnect_participant_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("ConnectionToken") => String.t() | atom()
      }

  """
  @type disconnect_participant_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      view_content() :: %{
        "Actions" => list(String.t() | atom()),
        "InputSchema" => String.t() | atom(),
        "Template" => String.t() | atom()
      }

  """
  @type view_content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_participant_connection_request() :: %{
        optional("ConnectParticipant") => boolean(),
        optional("Type") => list(list(any())()),
        required("ParticipantToken") => String.t() | atom()
      }

  """
  @type create_participant_connection_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t() | atom(),
        "ResourceId" => String.t() | atom(),
        "ResourceType" => list(any())
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_event_response() :: %{
        "AbsoluteTime" => String.t() | atom(),
        "Id" => String.t() | atom()
      }

  """
  @type send_event_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      audio_features() :: %{
        "EchoReduction" => list(any())
      }

  """
  @type audio_features() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      attachment_item() :: %{
        "AttachmentId" => String.t() | atom(),
        "AttachmentName" => String.t() | atom(),
        "ContentType" => String.t() | atom(),
        "Status" => list(any())
      }

  """
  @type attachment_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_authentication_url_request() :: %{
        required("ConnectionToken") => String.t() | atom(),
        required("RedirectUri") => String.t() | atom(),
        required("SessionId") => String.t() | atom()
      }

  """
  @type get_authentication_url_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_view_request() :: %{
        required("ConnectionToken") => String.t() | atom()
      }

  """
  @type describe_view_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_attachment_response() :: %{
        "AttachmentSizeInBytes" => float(),
        "Url" => String.t() | atom(),
        "UrlExpiry" => String.t() | atom()
      }

  """
  @type get_attachment_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      web_r_t_c_connection() :: %{
        "Attendee" => attendee(),
        "Meeting" => web_r_t_cmeeting()
      }

  """
  @type web_r_t_c_connection() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      message_metadata() :: %{
        "MessageId" => String.t() | atom(),
        "MessageProcessingStatus" => list(any()),
        "Receipts" => list(receipt())
      }

  """
  @type message_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_attachment_upload_response() :: %{
        "AttachmentId" => String.t() | atom(),
        "UploadMetadata" => upload_metadata()
      }

  """
  @type start_attachment_upload_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_transcript_request() :: %{
        optional("ContactId") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ScanDirection") => list(any()),
        optional("SortOrder") => list(any()),
        optional("StartPosition") => start_position(),
        required("ConnectionToken") => String.t() | atom()
      }

  """
  @type get_transcript_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_attachment_request() :: %{
        optional("UrlExpiryInSeconds") => integer(),
        required("AttachmentId") => String.t() | atom(),
        required("ConnectionToken") => String.t() | atom()
      }

  """
  @type get_attachment_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      connection_credentials() :: %{
        "ConnectionToken" => String.t() | atom(),
        "Expiry" => String.t() | atom()
      }

  """
  @type connection_credentials() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_attachment_upload_request() :: %{
        required("AttachmentName") => String.t() | atom(),
        required("AttachmentSizeInBytes") => float(),
        required("ClientToken") => String.t() | atom(),
        required("ConnectionToken") => String.t() | atom(),
        required("ContentType") => String.t() | atom()
      }

  """
  @type start_attachment_upload_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      complete_attachment_upload_response() :: %{}

  """
  @type complete_attachment_upload_response() :: %{}

  @typedoc """

  ## Example:

      meeting_features_configuration() :: %{
        "Audio" => audio_features()
      }

  """
  @type meeting_features_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_transcript_response() :: %{
        "InitialContactId" => String.t() | atom(),
        "NextToken" => String.t() | atom(),
        "Transcript" => list(item())
      }

  """
  @type get_transcript_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_message_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("ConnectionToken") => String.t() | atom(),
        required("Content") => String.t() | atom(),
        required("ContentType") => String.t() | atom()
      }

  """
  @type send_message_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      attendee() :: %{
        "AttendeeId" => String.t() | atom(),
        "JoinToken" => String.t() | atom()
      }

  """
  @type attendee() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_participant_authentication_response() :: %{}

  """
  @type cancel_participant_authentication_response() :: %{}

  @typedoc """

  ## Example:

      send_message_response() :: %{
        "AbsoluteTime" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "MessageMetadata" => message_processing_metadata()
      }

  """
  @type send_message_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      upload_metadata() :: %{
        "HeadersToInclude" => map(),
        "Url" => String.t() | atom(),
        "UrlExpiry" => String.t() | atom()
      }

  """
  @type upload_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_participant_connection_response() :: %{
        "ConnectionCredentials" => connection_credentials(),
        "WebRTCConnection" => web_r_t_c_connection(),
        "Websocket" => websocket()
      }

  """
  @type create_participant_connection_response() :: %{(String.t() | atom()) => any()}

  @type cancel_participant_authentication_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type complete_attachment_upload_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_participant_connection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type describe_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type disconnect_participant_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_attachment_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_authentication_url_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_transcript_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type send_event_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type send_message_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type start_attachment_upload_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  def metadata do
    %{
      api_version: "2018-09-07",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "participant.connect",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "ConnectParticipant",
      signature_version: "v4",
      signing_name: "execute-api",
      target_prefix: nil
    }
  end

  @doc """
  Cancels the authentication session.

  The opted out branch of the Authenticate Customer
  flow block will be taken.

  The current supported channel is chat. This API is not supported for Apple
  Messages for Business, WhatsApp, or SMS chats.

  `ConnectionToken` is used for invoking this API instead of
  `ParticipantToken`.

  The Amazon Connect Participant Service APIs do not use [Signature Version 4 authentication](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
  """
  @spec cancel_participant_authentication(
          map(),
          cancel_participant_authentication_request(),
          list()
        ) ::
          {:ok, cancel_participant_authentication_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_participant_authentication_errors()}
  def cancel_participant_authentication(%Client{} = client, input, options \\ []) do
    url_path = "/participant/cancel-authentication"

    {headers, input} =
      [
        {"ConnectionToken", "X-Amz-Bearer"}
      ]
      |> Request.build_params(input)

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
  Allows you to confirm that the attachment has been uploaded using the pre-signed
  URL
  provided in StartAttachmentUpload API.

  A conflict exception is thrown when an attachment
  with that identifier is already being uploaded.

  For security recommendations, see [Amazon Connect Chat security best practices](https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat).

  `ConnectionToken` is used for invoking this API instead of
  `ParticipantToken`.

  The Amazon Connect Participant Service APIs do not use [Signature Version 4 authentication](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
  """
  @spec complete_attachment_upload(map(), complete_attachment_upload_request(), list()) ::
          {:ok, complete_attachment_upload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, complete_attachment_upload_errors()}
  def complete_attachment_upload(%Client{} = client, input, options \\ []) do
    url_path = "/participant/complete-attachment-upload"

    {headers, input} =
      [
        {"ConnectionToken", "X-Amz-Bearer"}
      ]
      |> Request.build_params(input)

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
  Creates the participant's connection.

  For security recommendations, see [Amazon Connect Chat security best practices](https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat).

  For WebRTC security recommendations, see [Amazon Connect WebRTC security best practices](https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-webrtc-security).

  `ParticipantToken` is used for invoking this API instead of
  `ConnectionToken`.

  The participant token is valid for the lifetime of the participant – until they
  are
  part of a contact. For WebRTC participants, if they leave or are disconnected
  for 60
  seconds, a new participant needs to be created using the
  [CreateParticipant](https://docs.aws.amazon.com/connect/latest/APIReference/API_CreateParticipant.html) API.

  **For `WEBSOCKET` Type**:

  The response URL for has a connect expiry timeout of 100s. Clients must manually
  connect to the returned websocket URL and subscribe to the desired topic.

  For chat, you need to publish the following on the established websocket
  connection:

  `{"topic":"aws/subscribe","content":{"topics":["aws/chat"]}}`

  Upon websocket URL expiry, as specified in the response ConnectionExpiry
  parameter,
  clients need to call this API again to obtain a new websocket URL and perform
  the same
  steps as before.

  The expiry time for the connection token is different than the
  `ChatDurationInMinutes`. Expiry time for the connection token is 1
  day.

  **For `WEBRTC_CONNECTION` Type**:

  The response includes connection data required for the client application to
  join the
  call using the Amazon Chime SDK client libraries. The WebRTCConnection response
  contains
  Meeting and Attendee information needed to establish the media connection.

  The attendee join token in WebRTCConnection response is valid for the lifetime
  of the
  participant in the call. If a participant leaves or is disconnected for 60
  seconds,
  their participant credentials will no longer be valid, and a new participant
  will need
  to be created to rejoin the call.

  **Message streaming support**: This API can also be used
  together with the
  [StartContactStreaming](https://docs.aws.amazon.com/connect/latest/APIReference/API_StartContactStreaming.html) API to create a participant connection for chat
  contacts that are not using a websocket. For more information about message
  streaming,
  [Enable real-time chat
  message
  streaming](https://docs.aws.amazon.com/connect/latest/adminguide/chat-message-streaming.html)
  in the *Amazon Connect Administrator
  Guide*.

  **Multi-user web, in-app, video calling support**:

  For WebRTC calls, this API is used in conjunction with the CreateParticipant API
  to
  enable multi-party calling. The StartWebRTCContact API creates the initial
  contact and
  routes it to an agent, while CreateParticipant adds additional participants to
  the
  ongoing call. For more information about multi-party WebRTC calls, see [Enable multi-user web, in-app, and video
  calling](https://docs.aws.amazon.com/connect/latest/adminguide/enable-multiuser-inapp.html)
  in the *Amazon Connect
  Administrator Guide*.

  **Feature specifications**: For information about feature
  specifications, such as the allowed number of open websocket connections per
  participant
  or maximum number of WebRTC participants, see [Feature specifications](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits)
  in the *Amazon Connect Administrator
  Guide*.

  The Amazon Connect Participant Service APIs do not use [Signature Version 4 authentication](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
  """
  @spec create_participant_connection(map(), create_participant_connection_request(), list()) ::
          {:ok, create_participant_connection_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_participant_connection_errors()}
  def create_participant_connection(%Client{} = client, input, options \\ []) do
    url_path = "/participant/connection"

    {headers, input} =
      [
        {"ParticipantToken", "X-Amz-Bearer"}
      ]
      |> Request.build_params(input)

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
  Retrieves the view for the specified view token.

  For security recommendations, see [Amazon Connect Chat security best practices](https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat).
  """
  @spec describe_view(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_view_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_view_errors()}
  def describe_view(%Client{} = client, view_token, connection_token, options \\ []) do
    url_path = "/participant/views/#{AWS.Util.encode_uri(view_token)}"
    headers = []

    headers =
      if !is_nil(connection_token) do
        [{"X-Amz-Bearer", connection_token} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Disconnects a participant.

  For security recommendations, see [Amazon Connect Chat security best practices](https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat).

  `ConnectionToken` is used for invoking this API instead of
  `ParticipantToken`.

  The Amazon Connect Participant Service APIs do not use [Signature Version 4 authentication](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
  """
  @spec disconnect_participant(map(), disconnect_participant_request(), list()) ::
          {:ok, disconnect_participant_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disconnect_participant_errors()}
  def disconnect_participant(%Client{} = client, input, options \\ []) do
    url_path = "/participant/disconnect"

    {headers, input} =
      [
        {"ConnectionToken", "X-Amz-Bearer"}
      ]
      |> Request.build_params(input)

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
  Provides a pre-signed URL for download of a completed attachment.

  This is an
  asynchronous API for use with active contacts.

  For security recommendations, see [Amazon Connect Chat security best practices](https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat).

    
  The participant role `CUSTOM_BOT` is not permitted to access
  attachments customers may upload. An `AccessDeniedException` can
  indicate that the participant may be a CUSTOM_BOT, and it doesn't have
  access to attachments.

    

  `ConnectionToken` is used for invoking this API instead of
  `ParticipantToken`.

  The Amazon Connect Participant Service APIs do not use [Signature Version 4 authentication](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
  """
  @spec get_attachment(map(), get_attachment_request(), list()) ::
          {:ok, get_attachment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_attachment_errors()}
  def get_attachment(%Client{} = client, input, options \\ []) do
    url_path = "/participant/attachment"

    {headers, input} =
      [
        {"ConnectionToken", "X-Amz-Bearer"}
      ]
      |> Request.build_params(input)

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
  Retrieves the AuthenticationUrl for the current authentication session for the
  AuthenticateCustomer flow block.

  For security recommendations, see [Amazon Connect Chat security best practices](https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat).

    
  This API can only be called within one minute of receiving the
  authenticationInitiated event.

    
  The current supported channel is chat. This API is not supported for Apple
  Messages for Business, WhatsApp, or SMS chats.

  `ConnectionToken` is used for invoking this API instead of
  `ParticipantToken`.

  The Amazon Connect Participant Service APIs do not use [Signature Version 4 authentication](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
  """
  @spec get_authentication_url(map(), get_authentication_url_request(), list()) ::
          {:ok, get_authentication_url_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_authentication_url_errors()}
  def get_authentication_url(%Client{} = client, input, options \\ []) do
    url_path = "/participant/authentication-url"

    {headers, input} =
      [
        {"ConnectionToken", "X-Amz-Bearer"}
      ]
      |> Request.build_params(input)

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
  Retrieves a transcript of the session, including details about any attachments.

  For
  information about accessing past chat contact transcripts for a persistent chat,
  see
  [Enable persistent chat](https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html).

  For security recommendations, see [Amazon Connect Chat security best practices](https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat).

  If you have a process that consumes events in the transcript of an chat that has
  ended, note that chat transcripts contain the following event content types if
  the event
  has occurred during the chat session:

    *

  `application/vnd.amazonaws.connect.event.participant.invited`

    *

  `application/vnd.amazonaws.connect.event.participant.joined`

    *

  `application/vnd.amazonaws.connect.event.participant.left`

    *

  `application/vnd.amazonaws.connect.event.chat.ended`

    *

  `application/vnd.amazonaws.connect.event.transfer.succeeded`

    *

  `application/vnd.amazonaws.connect.event.transfer.failed`

  `ConnectionToken` is used for invoking this API instead of
  `ParticipantToken`.

  The Amazon Connect Participant Service APIs do not use [Signature Version 4 authentication](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
  """
  @spec get_transcript(map(), get_transcript_request(), list()) ::
          {:ok, get_transcript_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_transcript_errors()}
  def get_transcript(%Client{} = client, input, options \\ []) do
    url_path = "/participant/transcript"

    {headers, input} =
      [
        {"ConnectionToken", "X-Amz-Bearer"}
      ]
      |> Request.build_params(input)

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

  The `application/vnd.amazonaws.connect.event.connection.acknowledged`
  ContentType is no longer maintained since December 31, 2024.

  This event has been
  migrated to the
  [CreateParticipantConnection](https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html) API using the
  `ConnectParticipant` field.

  Sends an event. Message receipts are not supported when there are more than two
  active
  participants in the chat. Using the SendEvent API for message receipts when a
  supervisor
  is barged-in will result in a conflict exception.

  For security recommendations, see [Amazon Connect Chat security best
  practices](https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat).

  `ConnectionToken` is used for invoking this API instead of
  `ParticipantToken`.

  The Amazon Connect Participant Service APIs do not use [Signature Version 4 authentication](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
  """
  @spec send_event(map(), send_event_request(), list()) ::
          {:ok, send_event_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_event_errors()}
  def send_event(%Client{} = client, input, options \\ []) do
    url_path = "/participant/event"

    {headers, input} =
      [
        {"ConnectionToken", "X-Amz-Bearer"}
      ]
      |> Request.build_params(input)

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
  Sends a message.

  For security recommendations, see [Amazon Connect Chat security best practices](https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat).

  `ConnectionToken` is used for invoking this API instead of
  `ParticipantToken`.

  The Amazon Connect Participant Service APIs do not use [Signature Version 4 authentication](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
  """
  @spec send_message(map(), send_message_request(), list()) ::
          {:ok, send_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_message_errors()}
  def send_message(%Client{} = client, input, options \\ []) do
    url_path = "/participant/message"

    {headers, input} =
      [
        {"ConnectionToken", "X-Amz-Bearer"}
      ]
      |> Request.build_params(input)

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
  Provides a pre-signed Amazon S3 URL in response for uploading the file directly
  to
  S3.

  For security recommendations, see [Amazon Connect Chat security best practices](https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat).

  `ConnectionToken` is used for invoking this API instead of
  `ParticipantToken`.

  The Amazon Connect Participant Service APIs do not use [Signature Version 4 authentication](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html).
  """
  @spec start_attachment_upload(map(), start_attachment_upload_request(), list()) ::
          {:ok, start_attachment_upload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_attachment_upload_errors()}
  def start_attachment_upload(%Client{} = client, input, options \\ []) do
    url_path = "/participant/start-attachment-upload"

    {headers, input} =
      [
        {"ConnectionToken", "X-Amz-Bearer"}
      ]
      |> Request.build_params(input)

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
end
