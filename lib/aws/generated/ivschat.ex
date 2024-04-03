# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Ivschat do
  @moduledoc """

  ## Introduction

  The Amazon IVS Chat control-plane API enables you to create and manage Amazon
  IVS Chat
  resources.

  You also need to integrate with the [ Amazon IVS Chat Messaging API](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/chat-messaging-api.html),
  to enable users to interact with chat rooms in real time.

  The API is an AWS regional service. For a list of supported regions and Amazon
  IVS Chat
  HTTPS service endpoints, see the Amazon IVS Chat information on the [Amazon IVS page](https://docs.aws.amazon.com/general/latest/gr/ivs.html) in the
  *AWS General Reference*.

  ## Notes on terminology:

    *
  You create service applications using the Amazon IVS Chat API. We refer to these
  as
  *applications*.

    *
  You create front-end client applications (browser and Android/iOS apps) using
  the
  Amazon IVS Chat Messaging API. We refer to these as *clients*.

  ## Key Concepts

    *

  **LoggingConfiguration** — A configuration that allows customers to store and
  record sent messages in a chat room.

    *

  **Room** — The central Amazon IVS Chat resource through which clients connect to
  and exchange chat messages.

  ## Tagging

  A *tag* is a metadata label that you assign to an AWS resource. A tag
  comprises a *key* and a *value*, both set by you. For
  example, you might set a tag as `topic:nature` to label a particular video
  category. See [Tagging AWS Resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) for
  more information, including restrictions that apply to
  tags and "Tag naming limits and requirements"; Amazon IVS Chat has no
  service-specific
  constraints beyond what is documented there.

  Tags can help you identify and organize your AWS resources. For example, you can
  use the
  same tag for different resources to indicate that they are related. You can also
  use tags to
  manage access (see [Access Tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html)).

  The Amazon IVS Chat API has these tag-related endpoints: `TagResource`,
  `UntagResource`, and
  `ListTagsForResource`. The following resource supports tagging: Room.

  At most 50 tags can be applied to a resource.

  ## API Access Security

  Your Amazon IVS Chat applications (service applications and clients) must be
  authenticated
  and authorized to access Amazon IVS Chat resources. Note the differences between
  these
  concepts:

    *

  *Authentication* is about verifying identity. Requests to the
  Amazon IVS Chat API must be signed to verify your identity.

    *

  *Authorization* is about granting permissions. Your IAM roles need
  to have permissions for Amazon IVS Chat API requests.

  Users (viewers) connect to a room using secure access tokens that you create
  using the
  `CreateChatToken` endpoint through the AWS SDK. You call CreateChatToken for
  every user’s chat session, passing identity and authorization information about
  the
  user.

  ## Signing API Requests

  HTTP API requests must be signed with an AWS SigV4 signature using your AWS
  security
  credentials. The AWS Command Line Interface (CLI) and the AWS SDKs take care of
  signing the
  underlying API calls for you. However, if your application calls the Amazon IVS
  Chat HTTP API
  directly, it’s your responsibility to sign the requests.

  You generate a signature using valid AWS credentials for an IAM role that has
  permission
  to perform the requested action. For example, DeleteMessage requests must be
  made using an IAM
  role that has the `ivschat:DeleteMessage` permission.

  For more information:

    *
  Authentication and generating signatures — See [Authenticating Requests (Amazon Web Services Signature Version
  4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html)
  in the *Amazon Web Services
  General Reference*.

    *
  Managing Amazon IVS permissions — See [Identity and Access Management](https://docs.aws.amazon.com/ivs/latest/userguide/security-iam.html)
  on
  the Security page of the *Amazon IVS User Guide*.

  ## Amazon Resource Names (ARNs)

  ARNs uniquely identify AWS resources. An ARN is required when you need to
  specify a
  resource unambiguously across all of AWS, such as in IAM policies and API calls.
  For more
  information, see [Amazon Resource Names](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
  in the *AWS General
  Reference*.

  ## Messaging Endpoints

    *

  `DeleteMessage` — Sends an event to a specific room which
  directs clients to delete a specific message; that is, unrender it from view and
  delete it
  from the client’s chat history. This event’s `EventName` is
  `aws:DELETE_MESSAGE`. This replicates the [
  DeleteMessage](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-deletemessage-publish.html)
  WebSocket operation in the Amazon IVS Chat Messaging API.

    *

  `DisconnectUser` — Disconnects all connections using a specified
  user ID from a room. This replicates the [
  DisconnectUser](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-disconnectuser-publish.html)
  WebSocket operation in the Amazon IVS Chat Messaging API.

    *

  `SendEvent` — Sends an event to a room. Use this within your
  application’s business logic to send events to clients of a room; e.g., to
  notify clients
  to change the way the chat UI is rendered.

  ## Chat Token Endpoint

    *

  `CreateChatToken` — Creates an encrypted token that is used by a chat
  participant to establish an
  individual WebSocket chat connection to a room. When the token is used to
  connect to chat,
  the connection is valid for the session duration specified in the request. The
  token
  becomes invalid at the token-expiration timestamp included in the response.

  ## Room Endpoints

    *

  `CreateRoom` — Creates a room that allows clients to connect and
  pass messages.

    *

  `DeleteRoom` — Deletes the specified room.

    *

  `GetRoom` — Gets the specified room.

    *

  `ListRooms` — Gets summary information about all your rooms in
  the AWS region where the API request is processed.

    *

  `UpdateRoom` — Updates a room’s configuration.

  ## Logging Configuration Endpoints

    *

  `CreateLoggingConfiguration` — Creates a logging configuration that allows
  clients to store and record sent messages.

    *

  `DeleteLoggingConfiguration` — Deletes the specified logging
  configuration.

    *

  `GetLoggingConfiguration` — Gets the specified logging
  configuration.

    *

  `ListLoggingConfigurations` — Gets summary information about all
  your logging configurations in the AWS region where the API request is
  processed.

    *

  `UpdateLoggingConfiguration` — Updates a specified logging configuration.

  ## Tags Endpoints

    *

  `ListTagsForResource` — Gets information about AWS tags for the
  specified ARN.

    *

  `TagResource` — Adds or updates tags for the AWS resource with
  the specified ARN.

    *

  `UntagResource` — Removes tags from the resource with the
  specified ARN.

  All the above are HTTP operations. There is a separate *messaging* API
  for managing Chat resources; see the [ Amazon IVS Chat Messaging API Reference](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/chat-messaging-api.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_room_request() :: %{
        required("identifier") => String.t()
      }

  """
  @type delete_room_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_message_response() :: %{
        optional("id") => String.t()
      }

  """
  @type delete_message_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_rooms_response() :: %{
        optional("nextToken") => String.t(),
        required("rooms") => list(room_summary()())
      }

  """
  @type list_rooms_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      disconnect_user_response() :: %{}

  """
  @type disconnect_user_response() :: %{}

  @typedoc """

  ## Example:

      create_chat_token_request() :: %{
        optional("attributes") => map(),
        optional("capabilities") => list(String.t()()),
        optional("sessionDurationInMinutes") => integer(),
        required("roomIdentifier") => String.t(),
        required("userId") => String.t()
      }

  """
  @type create_chat_token_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_message_request() :: %{
        optional("reason") => String.t(),
        required("id") => String.t(),
        required("roomIdentifier") => String.t()
      }

  """
  @type delete_message_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disconnect_user_request() :: %{
        optional("reason") => String.t(),
        required("roomIdentifier") => String.t(),
        required("userId") => String.t()
      }

  """
  @type disconnect_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_logging_configuration_request() :: %{
        optional("destinationConfiguration") => list(),
        optional("name") => String.t(),
        required("identifier") => String.t()
      }

  """
  @type update_logging_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_room_response() :: %{
        optional("arn") => String.t(),
        optional("createTime") => non_neg_integer(),
        optional("id") => String.t(),
        optional("loggingConfigurationIdentifiers") => list(String.t()()),
        optional("maximumMessageLength") => integer(),
        optional("maximumMessageRatePerSecond") => integer(),
        optional("messageReviewHandler") => message_review_handler(),
        optional("name") => String.t(),
        optional("tags") => map(),
        optional("updateTime") => non_neg_integer()
      }

  """
  @type update_room_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_logging_configuration_request() :: %{
        optional("name") => String.t(),
        optional("tags") => map(),
        required("destinationConfiguration") => list()
      }

  """
  @type create_logging_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_event_request() :: %{
        optional("attributes") => map(),
        required("eventName") => String.t(),
        required("roomIdentifier") => String.t()
      }

  """
  @type send_event_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_logging_configuration_response() :: %{
        optional("arn") => String.t(),
        optional("createTime") => non_neg_integer(),
        optional("destinationConfiguration") => list(),
        optional("id") => String.t(),
        optional("name") => String.t(),
        optional("state") => String.t(),
        optional("tags") => map(),
        optional("updateTime") => non_neg_integer()
      }

  """
  @type create_logging_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_event_response() :: %{
        optional("id") => String.t()
      }

  """
  @type send_event_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "limit" => integer(),
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_logging_configuration_response() :: %{
        optional("arn") => String.t(),
        optional("createTime") => non_neg_integer(),
        optional("destinationConfiguration") => list(),
        optional("id") => String.t(),
        optional("name") => String.t(),
        optional("state") => String.t(),
        optional("tags") => map(),
        optional("updateTime") => non_neg_integer()
      }

  """
  @type get_logging_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_destination_configuration() :: %{
        "bucketName" => String.t()
      }

  """
  @type s3_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        required("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_chat_token_response() :: %{
        optional("sessionExpirationTime") => non_neg_integer(),
        optional("token") => String.t(),
        optional("tokenExpirationTime") => non_neg_integer()
      }

  """
  @type create_chat_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => String.t(),
        "name" => String.t()
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_logging_configuration_request() :: %{
        required("identifier") => String.t()
      }

  """
  @type get_logging_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_room_request() :: %{
        required("identifier") => String.t()
      }

  """
  @type get_room_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_logging_configurations_response() :: %{
        optional("nextToken") => String.t(),
        required("loggingConfigurations") => list(logging_configuration_summary()())
      }

  """
  @type list_logging_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_room_response() :: %{
        optional("arn") => String.t(),
        optional("createTime") => non_neg_integer(),
        optional("id") => String.t(),
        optional("loggingConfigurationIdentifiers") => list(String.t()()),
        optional("maximumMessageLength") => integer(),
        optional("maximumMessageRatePerSecond") => integer(),
        optional("messageReviewHandler") => message_review_handler(),
        optional("name") => String.t(),
        optional("tags") => map(),
        optional("updateTime") => non_neg_integer()
      }

  """
  @type get_room_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()()),
        "message" => String.t(),
        "reason" => String.t()
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

      create_room_request() :: %{
        optional("loggingConfigurationIdentifiers") => list(String.t()()),
        optional("maximumMessageLength") => integer(),
        optional("maximumMessageRatePerSecond") => integer(),
        optional("messageReviewHandler") => message_review_handler(),
        optional("name") => String.t(),
        optional("tags") => map()
      }

  """
  @type create_room_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "limit" => integer(),
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_rooms_request() :: %{
        optional("loggingConfigurationIdentifier") => String.t(),
        optional("maxResults") => integer(),
        optional("messageReviewHandlerUri") => String.t(),
        optional("name") => String.t(),
        optional("nextToken") => String.t()
      }

  """
  @type list_rooms_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_logging_configurations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_logging_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cloud_watch_logs_destination_configuration() :: %{
        "logGroupName" => String.t()
      }

  """
  @type cloud_watch_logs_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      firehose_destination_configuration() :: %{
        "deliveryStreamName" => String.t()
      }

  """
  @type firehose_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_logging_configuration_request() :: %{
        required("identifier") => String.t()
      }

  """
  @type delete_logging_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      room_summary() :: %{
        "arn" => String.t(),
        "createTime" => non_neg_integer(),
        "id" => String.t(),
        "loggingConfigurationIdentifiers" => list(String.t()()),
        "messageReviewHandler" => message_review_handler(),
        "name" => String.t(),
        "tags" => map(),
        "updateTime" => non_neg_integer()
      }

  """
  @type room_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_logging_configuration_response() :: %{
        optional("arn") => String.t(),
        optional("createTime") => non_neg_integer(),
        optional("destinationConfiguration") => list(),
        optional("id") => String.t(),
        optional("name") => String.t(),
        optional("state") => String.t(),
        optional("tags") => map(),
        optional("updateTime") => non_neg_integer()
      }

  """
  @type update_logging_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logging_configuration_summary() :: %{
        "arn" => String.t(),
        "createTime" => non_neg_integer(),
        "destinationConfiguration" => list(),
        "id" => String.t(),
        "name" => String.t(),
        "state" => String.t(),
        "tags" => map(),
        "updateTime" => non_neg_integer()
      }

  """
  @type logging_configuration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_room_request() :: %{
        optional("loggingConfigurationIdentifiers") => list(String.t()()),
        optional("maximumMessageLength") => integer(),
        optional("maximumMessageRatePerSecond") => integer(),
        optional("messageReviewHandler") => message_review_handler(),
        optional("name") => String.t(),
        required("identifier") => String.t()
      }

  """
  @type update_room_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_room_response() :: %{
        optional("arn") => String.t(),
        optional("createTime") => non_neg_integer(),
        optional("id") => String.t(),
        optional("loggingConfigurationIdentifiers") => list(String.t()()),
        optional("maximumMessageLength") => integer(),
        optional("maximumMessageRatePerSecond") => integer(),
        optional("messageReviewHandler") => message_review_handler(),
        optional("name") => String.t(),
        optional("tags") => map(),
        optional("updateTime") => non_neg_integer()
      }

  """
  @type create_room_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pending_verification() :: %{
        "message" => String.t()
      }

  """
  @type pending_verification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      message_review_handler() :: %{
        "fallbackResult" => String.t(),
        "uri" => String.t()
      }

  """
  @type message_review_handler() :: %{String.t() => any()}

  @type create_chat_token_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type create_logging_configuration_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_room_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_logging_configuration_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_message_errors() ::
          pending_verification()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type delete_room_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type disconnect_user_errors() ::
          pending_verification()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_logging_configuration_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_room_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type list_logging_configurations_errors() :: validation_exception() | access_denied_exception()

  @type list_rooms_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type send_event_errors() ::
          pending_verification()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_logging_configuration_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_room_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2020-07-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ivschat",
      global?: false,
      protocol: "rest-json",
      service_id: "ivschat",
      signature_version: "v4",
      signing_name: "ivschat",
      target_prefix: nil
    }
  end

  @doc """
  Creates an encrypted token that is used by a chat participant to establish an
  individual
  WebSocket chat connection to a room.

  When the token is used to connect to chat, the
  connection is valid for the session duration specified in the request. The token
  becomes
  invalid at the token-expiration timestamp included in the response.

  Use the `capabilities` field to permit an end user to send messages or
  moderate a room.

  The `attributes` field securely attaches structured data to the chat session;
  the data is
  included within each message sent by the end user and received by other
  participants in the
  room. Common use cases for attributes include passing end-user profile data like
  an icon,
  display name, colors, badges, and other display features.

  Encryption keys are owned by Amazon IVS Chat and never used directly by your
  application.
  """
  @spec create_chat_token(map(), create_chat_token_request(), list()) ::
          {:ok, create_chat_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_chat_token_errors()}
  def create_chat_token(%Client{} = client, input, options \\ []) do
    url_path = "/CreateChatToken"
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
  Creates a logging configuration that allows clients to store and record sent
  messages.
  """
  @spec create_logging_configuration(map(), create_logging_configuration_request(), list()) ::
          {:ok, create_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_logging_configuration_errors()}
  def create_logging_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/CreateLoggingConfiguration"
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
  Creates a room that allows clients to connect and pass messages.
  """
  @spec create_room(map(), create_room_request(), list()) ::
          {:ok, create_room_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_room_errors()}
  def create_room(%Client{} = client, input, options \\ []) do
    url_path = "/CreateRoom"
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
  Deletes the specified logging configuration.
  """
  @spec delete_logging_configuration(map(), delete_logging_configuration_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_logging_configuration_errors()}
  def delete_logging_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteLoggingConfiguration"
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
  Sends an event to a specific room which directs clients to delete a specific
  message;
  that is, unrender it from view and delete it from the client’s chat history.

  This event’s
  `EventName` is `aws:DELETE_MESSAGE`. This replicates the [
  DeleteMessage](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-deletemessage-publish.html)
  WebSocket operation in the Amazon IVS Chat Messaging API.
  """
  @spec delete_message(map(), delete_message_request(), list()) ::
          {:ok, delete_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_message_errors()}
  def delete_message(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteMessage"
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
  Deletes the specified room.
  """
  @spec delete_room(map(), delete_room_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_room_errors()}
  def delete_room(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteRoom"
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
  Disconnects all connections using a specified user ID from a room.

  This replicates the
  [
  DisconnectUser](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-disconnectuser-publish.html)
  WebSocket operation in the Amazon IVS Chat Messaging API.
  """
  @spec disconnect_user(map(), disconnect_user_request(), list()) ::
          {:ok, disconnect_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disconnect_user_errors()}
  def disconnect_user(%Client{} = client, input, options \\ []) do
    url_path = "/DisconnectUser"
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
  Gets the specified logging configuration.
  """
  @spec get_logging_configuration(map(), get_logging_configuration_request(), list()) ::
          {:ok, get_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_logging_configuration_errors()}
  def get_logging_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/GetLoggingConfiguration"
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
  Gets the specified room.
  """
  @spec get_room(map(), get_room_request(), list()) ::
          {:ok, get_room_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_room_errors()}
  def get_room(%Client{} = client, input, options \\ []) do
    url_path = "/GetRoom"
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
  Gets summary information about all your logging configurations in the AWS region
  where
  the API request is processed.
  """
  @spec list_logging_configurations(map(), list_logging_configurations_request(), list()) ::
          {:ok, list_logging_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_logging_configurations_errors()}
  def list_logging_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/ListLoggingConfigurations"
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
  Gets summary information about all your rooms in the AWS region where the API
  request is
  processed.

  Results are sorted in descending order of `updateTime`.
  """
  @spec list_rooms(map(), list_rooms_request(), list()) ::
          {:ok, list_rooms_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_rooms_errors()}
  def list_rooms(%Client{} = client, input, options \\ []) do
    url_path = "/ListRooms"
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
  Gets information about AWS tags for the specified ARN.
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
  Sends an event to a room.

  Use this within your application’s business logic to send
  events to clients of a room; e.g., to notify clients to change the way the chat
  UI is
  rendered.
  """
  @spec send_event(map(), send_event_request(), list()) ::
          {:ok, send_event_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_event_errors()}
  def send_event(%Client{} = client, input, options \\ []) do
    url_path = "/SendEvent"
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
  Adds or updates tags for the AWS resource with the specified ARN.
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
  Removes tags from the resource with the specified ARN.
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
  Updates a specified logging configuration.
  """
  @spec update_logging_configuration(map(), update_logging_configuration_request(), list()) ::
          {:ok, update_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_logging_configuration_errors()}
  def update_logging_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateLoggingConfiguration"
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
  Updates a room’s configuration.
  """
  @spec update_room(map(), update_room_request(), list()) ::
          {:ok, update_room_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_room_errors()}
  def update_room(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateRoom"
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
end
