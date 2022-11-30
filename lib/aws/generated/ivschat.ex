# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Ivschat do
  @moduledoc """
  ## Introduction

  The Amazon IVS Chat control-plane API enables you to create and manage Amazon
  IVS Chat resources.

  You also need to integrate with the [ Amazon IVS Chat Messaging API](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/chat-messaging-api.html),
  to enable users to interact with chat rooms in real time.

  The API is an AWS regional service. For a list of supported regions and Amazon
  IVS Chat HTTPS service endpoints, see the Amazon IVS Chat information on the
  [Amazon IVS page](https://docs.aws.amazon.com/general/latest/gr/ivs.html) in the *AWS General Reference*.

  ## Notes on terminology:

    * You create service applications using the Amazon IVS Chat API. We
  refer to these as *applications*.

    * You create front-end client applications (browser and Android/iOS
  apps) using the Amazon IVS Chat Messaging API. We refer to these as *clients*.

  ## Resources

  The following resources are part of Amazon IVS Chat:

    * **LoggingConfiguration** — A configuration that allows customers
  to store and record sent messages in a chat room. See the Logging Configuration
  endpoints for more information.

    * **Room** — The central Amazon IVS Chat resource through which
  clients connect to and exchange chat messages. See the Room endpoints for more
  information.

  ## Tagging

  A *tag* is a metadata label that you assign to an AWS resource. A tag comprises
  a *key* and a *value*, both set by you. For example, you might set a tag as
  `topic:nature` to label a particular video category. See [Tagging AWS
  Resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) for
  more information, including restrictions that apply to tags and "Tag naming
  limits and requirements"; Amazon IVS Chat has no service-specific constraints
  beyond what is documented there.

  Tags can help you identify and organize your AWS resources. For example, you can
  use the same tag for different resources to indicate that they are related. You
  can also use tags to manage access (see [Access Tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html)).

  The Amazon IVS Chat API has these tag-related endpoints: `TagResource`,
  `UntagResource`, and `ListTagsForResource`. The following resource supports
  tagging: Room.

  At most 50 tags can be applied to a resource.

  ## API Access Security

  Your Amazon IVS Chat applications (service applications and clients) must be
  authenticated and authorized to access Amazon IVS Chat resources. Note the
  differences between these concepts:

    * *Authentication* is about verifying identity. Requests to the
  Amazon IVS Chat API must be signed to verify your identity.

    * *Authorization* is about granting permissions. Your IAM roles need
  to have permissions for Amazon IVS Chat API requests.

  Users (viewers) connect to a room using secure access tokens that you create
  using the `CreateChatToken` endpoint through the AWS SDK. You call
  CreateChatToken for every user’s chat session, passing identity and
  authorization information about the user.

  ## Signing API Requests

  HTTP API requests must be signed with an AWS SigV4 signature using your AWS
  security credentials. The AWS Command Line Interface (CLI) and the AWS SDKs take
  care of signing the underlying API calls for you. However, if your application
  calls the Amazon IVS Chat HTTP API directly, it’s your responsibility to sign
  the requests.

  You generate a signature using valid AWS credentials for an IAM role that has
  permission to perform the requested action. For example, DeleteMessage requests
  must be made using an IAM role that has the `ivschat:DeleteMessage` permission.

  For more information:

    * Authentication and generating signatures — See [Authenticating Requests (Amazon Web Services Signature Version
  4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html)
  in the *Amazon Web Services General Reference*.

    * Managing Amazon IVS permissions — See [Identity and Access Management](https://docs.aws.amazon.com/ivs/latest/userguide/security-iam.html)
  on the Security page of the *Amazon IVS User Guide*.

  ## Amazon Resource Names (ARNs)

  ARNs uniquely identify AWS resources. An ARN is required when you need to
  specify a resource unambiguously across all of AWS, such as in IAM policies and
  API calls. For more information, see [Amazon Resource Names](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
  in the *AWS General Reference*.

  ## Messaging Endpoints

    * `DeleteMessage` — Sends an event to a specific room which directs
  clients to delete a specific message; that is, unrender it from view and delete
  it from the client’s chat history. This event’s `EventName` is
  `aws:DELETE_MESSAGE`. This replicates the [
  DeleteMessage](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-deletemessage-publish.html)
  WebSocket operation in the Amazon IVS Chat Messaging API.

    * `DisconnectUser` — Disconnects all connections using a specified
  user ID from a room. This replicates the [
  DisconnectUser](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-disconnectuser-publish.html)
  WebSocket operation in the Amazon IVS Chat Messaging API.

    * `SendEvent` — Sends an event to a room. Use this within your
  application’s business logic to send events to clients of a room; e.g., to
  notify clients to change the way the chat UI is rendered.

  ## Chat Token Endpoint

    * `CreateChatToken` — Creates an encrypted token that is used by a
  chat participant to establish an individual WebSocket chat connection to a room.
  When the token is used to connect to chat, the connection is valid for the
  session duration specified in the request. The token becomes invalid at the
  token-expiration timestamp included in the response.

  ## Room Endpoints

    * `CreateRoom` — Creates a room that allows clients to connect and
  pass messages.

    * `DeleteRoom` — Deletes the specified room.

    * `GetRoom` — Gets the specified room.

    * `ListRooms` — Gets summary information about all your rooms in the
  AWS region where the API request is processed.

    * `UpdateRoom` — Updates a room’s configuration.

  ## Logging Configuration Endpoints

    * `CreateLoggingConfiguration` — Creates a logging configuration
  that allows clients to store and record sent messages.

    * `DeleteLoggingConfiguration` — Deletes the specified logging
  configuration.

    * `GetLoggingConfiguration` — Gets the specified logging
  configuration.

    * `ListLoggingConfigurations` — Gets summary information about all
  your logging configurations in the AWS region where the API request is
  processed.

    * `UpdateLoggingConfiguration` — Updates a specified logging
  configuration.

  ## Tags Endpoints

    * `ListTagsForResource` — Gets information about AWS tags for the
  specified ARN.

    * `TagResource` — Adds or updates tags for the AWS resource with the
  specified ARN.

    * `UntagResource` — Removes tags from the resource with the
  specified ARN.

  All the above are HTTP operations. There is a separate *messaging* API for
  managing Chat resources; see the [ Amazon IVS Chat Messaging API Reference](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/chat-messaging-api.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
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
  individual WebSocket chat connection to a room.

  When the token is used to connect to chat, the connection is valid for the
  session duration specified in the request. The token becomes invalid at the
  token-expiration timestamp included in the response.

  Use the `capabilities` field to permit an end user to send messages or moderate
  a room.

  The `attributes` field securely attaches structured data to the chat session;
  the data is included within each message sent by the end user and received by
  other participants in the room. Common use cases for attributes include passing
  end-user profile data like an icon, display name, colors, badges, and other
  display features.

  Encryption keys are owned by Amazon IVS Chat and never used directly by your
  application.
  """
  def create_chat_token(%Client{} = client, input, options \\ []) do
    url_path = "/CreateChatToken"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateChatToken",
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
  def create_logging_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/CreateLoggingConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateLoggingConfiguration",
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
  def create_room(%Client{} = client, input, options \\ []) do
    url_path = "/CreateRoom"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateRoom",
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
  def delete_logging_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteLoggingConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteLoggingConfiguration",
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
  message; that is, unrender it from view and delete it from the client’s chat
  history.

  This event’s `EventName` is `aws:DELETE_MESSAGE`. This replicates the [
  DeleteMessage](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-deletemessage-publish.html)
  WebSocket operation in the Amazon IVS Chat Messaging API.
  """
  def delete_message(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteMessage"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteMessage",
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
  def delete_room(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteRoom"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteRoom",
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

  This replicates the [
  DisconnectUser](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/actions-disconnectuser-publish.html)
  WebSocket operation in the Amazon IVS Chat Messaging API.
  """
  def disconnect_user(%Client{} = client, input, options \\ []) do
    url_path = "/DisconnectUser"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DisconnectUser",
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
  def get_logging_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/GetLoggingConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetLoggingConfiguration",
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
  def get_room(%Client{} = client, input, options \\ []) do
    url_path = "/GetRoom"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetRoom",
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
  where the API request is processed.
  """
  def list_logging_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/ListLoggingConfigurations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListLoggingConfigurations",
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
  request is processed.

  Results are sorted in descending order of `updateTime`.
  """
  def list_rooms(%Client{} = client, input, options \\ []) do
    url_path = "/ListRooms"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListRooms",
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
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListTagsForResource",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Sends an event to a room.

  Use this within your application’s business logic to send events to clients of a
  room; e.g., to notify clients to change the way the chat UI is rendered.
  """
  def send_event(%Client{} = client, input, options \\ []) do
    url_path = "/SendEvent"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "SendEvent",
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
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "TagResource",
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
      "UntagResource",
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
  def update_logging_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateLoggingConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateLoggingConfiguration",
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
  def update_room(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateRoom"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateRoom",
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
