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

  ` ## Resources

  The following resource is part of Amazon IVS Chat:

    * **Room** — The central Amazon IVS Chat resource through which
  clients connect to and exchange chat messages. See the Room endpoints for more
  information.

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

    * Authentication and generating signatures — See [Authenticating
  Requests (Amazon Web Services Signature Version
  4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html)
  in the *Amazon Web Services General Reference*.

    * Managing Amazon IVS permissions — See [Identity and Access Management](https://docs.aws.amazon.com/ivs/latest/userguide/security-iam.html)
  on the Security page of the *Amazon IVS User Guide*.

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

    * `CreateChatToken` — Creates an encrypted token that is used to
  establish an individual WebSocket connection to a room. The token is valid for
  one minute, and a connection (session) established with the token is valid for
  the specified duration.

  ## Room Endpoints

    * `CreateRoom` — Creates a room that allows clients to connect and
  pass messages.

    * `DeleteRoom` — Deletes the specified room.

    * `GetRoom` — Gets the specified room.

    * `ListRooms` — Gets summary information about all your rooms in the
  AWS region where the API request is processed.

    * `UpdateRoom` — Updates a room’s configuration.

  ## Tags Endpoints

    * `ListTagsForResource` — Gets information about AWS tags for the
  specified ARN.

    * `TagResource` — Adds or updates tags for the AWS resource with the
  specified ARN.

    * `UntagResource` — Removes tags from the resource with the
  specified ARN.

  All the above are HTTP operations. There is a separate *messaging* API for
  managing Chat resources; see the [ Amazon IVS Chat Messaging API Reference](https://docs.aws.amazon.com/ivs/latest/chatmsgapireference/chat-messaging-api.html).

  `
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
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
  Creates an encrypted token that is used to establish an individual WebSocket
  connection to a room.

  The token is valid for one minute, and a connection (session) established with
  the token is valid for the specified duration.

  Encryption keys are owned by Amazon IVS Chat and never used directly by your
  application.
  """
  def create_chat_token(%Client{} = client, input, options \\ []) do
    url_path = "/CreateChatToken"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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
  Updates a room’s configuration.
  """
  def update_room(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateRoom"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
