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

      cancel_participant_authentication_request() :: %{
        required("ConnectionToken") => String.t(),
        required("SessionId") => String.t()
      }

  """
  @type cancel_participant_authentication_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      view() :: %{
        "Arn" => String.t(),
        "Content" => view_content(),
        "Id" => String.t(),
        "Name" => String.t(),
        "Version" => integer()
      }

  """
  @type view() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_authentication_url_response() :: %{
        "AuthenticationUrl" => String.t()
      }

  """
  @type get_authentication_url_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disconnect_participant_response() :: %{}

  """
  @type disconnect_participant_response() :: %{}

  @typedoc """

  ## Example:

      receipt() :: %{
        "DeliveredTimestamp" => String.t(),
        "ReadTimestamp" => String.t(),
        "RecipientParticipantId" => String.t()
      }

  """
  @type receipt() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_position() :: %{
        "AbsoluteTime" => String.t(),
        "Id" => String.t(),
        "MostRecent" => integer()
      }

  """
  @type start_position() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      websocket() :: %{
        "ConnectionExpiry" => String.t(),
        "Url" => String.t()
      }

  """
  @type websocket() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      complete_attachment_upload_request() :: %{
        required("AttachmentIds") => list(String.t()),
        required("ClientToken") => String.t(),
        required("ConnectionToken") => String.t()
      }

  """
  @type complete_attachment_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_event_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Content") => String.t(),
        required("ConnectionToken") => String.t(),
        required("ContentType") => String.t()
      }

  """
  @type send_event_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_view_response() :: %{
        "View" => view()
      }

  """
  @type describe_view_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      item() :: %{
        "AbsoluteTime" => String.t(),
        "Attachments" => list(attachment_item()),
        "ContactId" => String.t(),
        "Content" => String.t(),
        "ContentType" => String.t(),
        "DisplayName" => String.t(),
        "Id" => String.t(),
        "MessageMetadata" => message_metadata(),
        "ParticipantId" => String.t(),
        "ParticipantRole" => list(any()),
        "RelatedContactId" => String.t(),
        "Type" => list(any())
      }

  """
  @type item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disconnect_participant_request() :: %{
        optional("ClientToken") => String.t(),
        required("ConnectionToken") => String.t()
      }

  """
  @type disconnect_participant_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      view_content() :: %{
        "Actions" => list(String.t()),
        "InputSchema" => String.t(),
        "Template" => String.t()
      }

  """
  @type view_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_participant_connection_request() :: %{
        optional("ConnectParticipant") => boolean(),
        optional("Type") => list(list(any())()),
        required("ParticipantToken") => String.t()
      }

  """
  @type create_participant_connection_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => list(any())
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_event_response() :: %{
        "AbsoluteTime" => String.t(),
        "Id" => String.t()
      }

  """
  @type send_event_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attachment_item() :: %{
        "AttachmentId" => String.t(),
        "AttachmentName" => String.t(),
        "ContentType" => String.t(),
        "Status" => list(any())
      }

  """
  @type attachment_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_authentication_url_request() :: %{
        required("ConnectionToken") => String.t(),
        required("RedirectUri") => String.t(),
        required("SessionId") => String.t()
      }

  """
  @type get_authentication_url_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_view_request() :: %{
        required("ConnectionToken") => String.t()
      }

  """
  @type describe_view_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_attachment_response() :: %{
        "AttachmentSizeInBytes" => float(),
        "Url" => String.t(),
        "UrlExpiry" => String.t()
      }

  """
  @type get_attachment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      message_metadata() :: %{
        "MessageId" => String.t(),
        "Receipts" => list(receipt())
      }

  """
  @type message_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_attachment_upload_response() :: %{
        "AttachmentId" => String.t(),
        "UploadMetadata" => upload_metadata()
      }

  """
  @type start_attachment_upload_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_transcript_request() :: %{
        optional("ContactId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ScanDirection") => list(any()),
        optional("SortOrder") => list(any()),
        optional("StartPosition") => start_position(),
        required("ConnectionToken") => String.t()
      }

  """
  @type get_transcript_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_attachment_request() :: %{
        optional("UrlExpiryInSeconds") => integer(),
        required("AttachmentId") => String.t(),
        required("ConnectionToken") => String.t()
      }

  """
  @type get_attachment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connection_credentials() :: %{
        "ConnectionToken" => String.t(),
        "Expiry" => String.t()
      }

  """
  @type connection_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_attachment_upload_request() :: %{
        required("AttachmentName") => String.t(),
        required("AttachmentSizeInBytes") => float(),
        required("ClientToken") => String.t(),
        required("ConnectionToken") => String.t(),
        required("ContentType") => String.t()
      }

  """
  @type start_attachment_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      complete_attachment_upload_response() :: %{}

  """
  @type complete_attachment_upload_response() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_transcript_response() :: %{
        "InitialContactId" => String.t(),
        "NextToken" => String.t(),
        "Transcript" => list(item())
      }

  """
  @type get_transcript_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_message_request() :: %{
        optional("ClientToken") => String.t(),
        required("ConnectionToken") => String.t(),
        required("Content") => String.t(),
        required("ContentType") => String.t()
      }

  """
  @type send_message_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_participant_authentication_response() :: %{}

  """
  @type cancel_participant_authentication_response() :: %{}

  @typedoc """

  ## Example:

      send_message_response() :: %{
        "AbsoluteTime" => String.t(),
        "Id" => String.t()
      }

  """
  @type send_message_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      upload_metadata() :: %{
        "HeadersToInclude" => map(),
        "Url" => String.t(),
        "UrlExpiry" => String.t()
      }

  """
  @type upload_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_participant_connection_response() :: %{
        "ConnectionCredentials" => connection_credentials(),
        "Websocket" => websocket()
      }

  """
  @type create_participant_connection_response() :: %{String.t() => any()}

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

  `ParticipantToken` is used for invoking this API instead of
  `ConnectionToken`.

  The participant token is valid for the lifetime of the participant – until they
  are
  part of a contact.

  The response URL for `WEBSOCKET` Type has a connect expiry timeout of 100s.
  Clients must manually connect to the returned websocket URL and subscribe to the
  desired
  topic.

  For chat, you need to publish the following on the established websocket
  connection:

  `{"topic":"aws/subscribe","content":{"topics":["aws/chat"]}}` 
  Upon websocket URL expiry, as specified in the response ConnectionExpiry
  parameter,
  clients need to call this API again to obtain a new websocket URL and perform
  the same
  steps as before.

  **Message streaming support**: This API can also be used
  together with the
  [StartContactStreaming](https://docs.aws.amazon.com/connect/latest/APIReference/API_StartContactStreaming.html)
  API to create a participant connection for chat
  contacts that are not using a websocket. For more information about message
  streaming,
  [Enable real-time chat message
  streaming](https://docs.aws.amazon.com/connect/latest/adminguide/chat-message-streaming.html)
  in the *Amazon Connect Administrator
  Guide*.

  **Feature specifications**: For information about feature
  specifications, such as the allowed number of open websocket connections per
  participant, see [Feature specifications](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits)
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
  @spec describe_view(map(), String.t(), String.t(), list()) ::
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

  `application/vnd.amazonaws.connect.event.participant.left`

    *

  `application/vnd.amazonaws.connect.event.participant.joined`

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
  ContentType will no longer be supported starting December 31, 2024.

  This event has
  been migrated to the
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
