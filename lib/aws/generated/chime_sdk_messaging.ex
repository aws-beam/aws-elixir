# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ChimeSDKMessaging do
  @moduledoc """
  The Amazon Chime SDK Messaging APIs in this section allow software developers to
  send and receive messages in custom messaging applications.

  These APIs depend on the frameworks provided by the Amazon Chime SDK Identity
  APIs. For more information about the messaging APIs, see [Amazon Chime SDK messaging](https://docs.aws.amazon.com/chime/latest/APIReference/API_Operations_Amazon_Chime_SDK_Messaging.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2021-05-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "messaging-chime",
      global?: false,
      protocol: "rest-json",
      service_id: "Chime SDK Messaging",
      signature_version: "v4",
      signing_name: "chime",
      target_prefix: nil
    }
  end

  @doc """
  Associates a channel flow with a channel.

  Once associated, all messages to that channel go through channel flow
  processors. To stop processing, use the `DisassociateChannelFlow` API.

  Only administrators or channel moderators can associate a channel flow. The
  `x-amz-chime-bearer` request header is mandatory. Use the `AppInstanceUserArn`
  of the user that makes the API call as the value in the header.
  """
  def associate_channel_flow(%Client{} = client, channel_arn, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/channel-flow"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds a specified number of users to a channel.
  """
  def batch_create_channel_membership(%Client{} = client, channel_arn, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/memberships?operation=batch-create"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

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
  Calls back Chime SDK Messaging with a processing response message.

  This should be invoked from the processor Lambda. This is a developer API.

  You can return one of the following processing responses:

    * Update message content or metadata

    * Deny a message

    * Make no changes to the message
  """
  def channel_flow_callback(%Client{} = client, channel_arn, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}?operation=channel-flow-callback"
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
  Creates a channel to which you can add users and send messages.

  **Restriction**: You can't change a channel's privacy.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header.
  """
  def create_channel(%Client{} = client, input, options \\ []) do
    url_path = "/channels"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

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
      201
    )
  end

  @doc """
  Permanently bans a member from a channel.

  Moderators can't add banned members to a channel. To undo a ban, you first have
  to `DeleteChannelBan`, and then `CreateChannelMembership`. Bans are cleaned up
  when you delete users or channels.

  If you ban a user who is already part of a channel, that user is automatically
  kicked from the channel.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header.
  """
  def create_channel_ban(%Client{} = client, channel_arn, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/bans"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

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
      201
    )
  end

  @doc """
  Creates a channel flow, a container for processors.

  Processors are AWS Lambda functions that perform actions on chat messages, such
  as stripping out profanity. You can associate channel flows with channels, and
  the processors in the channel flow then take action on all messages sent to that
  channel. This is a developer API.

  Channel flows process the following items:

    1. New and updated messages

    2. Persistent and non-persistent messages

    3. The Standard message type

  Channel flows don't process Control or System messages. For more information
  about the message types provided by Chime SDK Messaging, refer to [Message types](https://docs.aws.amazon.com/chime/latest/dg/using-the-messaging-sdk.html#msg-types)
  in the *Amazon Chime developer guide*.
  """
  def create_channel_flow(%Client{} = client, input, options \\ []) do
    url_path = "/channel-flows"
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
      201
    )
  end

  @doc """
  Adds a user to a channel.

  The `InvitedBy` field in `ChannelMembership` is derived from the request header.
  A channel member can:

    * List messages

    * Send messages

    * Receive messages

    * Edit their own messages

    * Leave the channel

  Privacy settings impact this action as follows:

    * Public Channels: You do not need to be a member to list messages,
  but you must be a member to send messages.

    * Private Channels: You must be a member to list or send messages.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header.
  """
  def create_channel_membership(%Client{} = client, channel_arn, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/memberships"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

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
      201
    )
  end

  @doc """
  Creates a new `ChannelModerator`.

  A channel moderator can:

    * Add and remove other members of the channel.

    * Add and remove other moderators of the channel.

    * Add and remove user bans for the channel.

    * Redact messages in the channel.

    * List messages in the channel.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header.
  """
  def create_channel_moderator(%Client{} = client, channel_arn, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/moderators"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

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
      201
    )
  end

  @doc """
  Immediately makes a channel and its memberships inaccessible and marks them for
  deletion.

  This is an irreversible process.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header.
  """
  def delete_channel(%Client{} = client, channel_arn, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Removes a user from a channel's ban list.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header.
  """
  def delete_channel_ban(%Client{} = client, channel_arn, member_arn, input, options \\ []) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/bans/#{AWS.Util.encode_uri(member_arn)}"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Deletes a channel flow, an irreversible process.

  This is a developer API.

  This API works only when the channel flow is not associated with any channel. To
  get a list of all channels that a channel flow is associated with, use the
  `ListChannelsAssociatedWithChannelFlow` API. Use the `DisassociateChannelFlow`
  API to disassociate a channel flow from all channels.
  """
  def delete_channel_flow(%Client{} = client, channel_flow_arn, input, options \\ []) do
    url_path = "/channel-flows/#{AWS.Util.encode_uri(channel_flow_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Removes a member from a channel.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header.
  """
  def delete_channel_membership(%Client{} = client, channel_arn, member_arn, input, options \\ []) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/memberships/#{AWS.Util.encode_uri(member_arn)}"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Deletes a channel message.

  Only admins can perform this action. Deletion makes messages inaccessible
  immediately. A background process deletes any revisions created by
  `UpdateChannelMessage`.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header.
  """
  def delete_channel_message(%Client{} = client, channel_arn, message_id, input, options \\ []) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/messages/#{AWS.Util.encode_uri(message_id)}"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Deletes a channel moderator.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header.
  """
  def delete_channel_moderator(
        %Client{} = client,
        channel_arn,
        channel_moderator_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/moderators/#{AWS.Util.encode_uri(channel_moderator_arn)}"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Returns the full details of a channel in an Amazon Chime `AppInstance`.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header.
  """
  def describe_channel(%Client{} = client, channel_arn, chime_bearer, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}"
    headers = []

    headers =
      if !is_nil(chime_bearer) do
        [{"x-amz-chime-bearer", chime_bearer} | headers]
      else
        headers
      end

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
  Returns the full details of a channel ban.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header.
  """
  def describe_channel_ban(
        %Client{} = client,
        channel_arn,
        member_arn,
        chime_bearer,
        options \\ []
      ) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/bans/#{AWS.Util.encode_uri(member_arn)}"

    headers = []

    headers =
      if !is_nil(chime_bearer) do
        [{"x-amz-chime-bearer", chime_bearer} | headers]
      else
        headers
      end

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
  Returns the full details of a channel flow in an Amazon Chime `AppInstance`.

  This is a developer API.
  """
  def describe_channel_flow(%Client{} = client, channel_flow_arn, options \\ []) do
    url_path = "/channel-flows/#{AWS.Util.encode_uri(channel_flow_arn)}"
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
  Returns the full details of a user's channel membership.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header.
  """
  def describe_channel_membership(
        %Client{} = client,
        channel_arn,
        member_arn,
        chime_bearer,
        options \\ []
      ) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/memberships/#{AWS.Util.encode_uri(member_arn)}"

    headers = []

    headers =
      if !is_nil(chime_bearer) do
        [{"x-amz-chime-bearer", chime_bearer} | headers]
      else
        headers
      end

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
  Returns the details of a channel based on the membership of the specified
  `AppInstanceUser`.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header.
  """
  def describe_channel_membership_for_app_instance_user(
        %Client{} = client,
        channel_arn,
        app_instance_user_arn,
        chime_bearer,
        options \\ []
      ) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}?scope=app-instance-user-membership"
    headers = []

    headers =
      if !is_nil(chime_bearer) do
        [{"x-amz-chime-bearer", chime_bearer} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(app_instance_user_arn) do
        [{"app-instance-user-arn", app_instance_user_arn} | query_params]
      else
        query_params
      end

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
  Returns the full details of a channel moderated by the specified
  `AppInstanceUser`.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header.
  """
  def describe_channel_moderated_by_app_instance_user(
        %Client{} = client,
        channel_arn,
        app_instance_user_arn,
        chime_bearer,
        options \\ []
      ) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}?scope=app-instance-user-moderated-channel"

    headers = []

    headers =
      if !is_nil(chime_bearer) do
        [{"x-amz-chime-bearer", chime_bearer} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(app_instance_user_arn) do
        [{"app-instance-user-arn", app_instance_user_arn} | query_params]
      else
        query_params
      end

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
  Returns the full details of a single ChannelModerator.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header.
  """
  def describe_channel_moderator(
        %Client{} = client,
        channel_arn,
        channel_moderator_arn,
        chime_bearer,
        options \\ []
      ) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/moderators/#{AWS.Util.encode_uri(channel_moderator_arn)}"

    headers = []

    headers =
      if !is_nil(chime_bearer) do
        [{"x-amz-chime-bearer", chime_bearer} | headers]
      else
        headers
      end

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
  Disassociates a channel flow from all its channels.

  Once disassociated, all messages to that channel stop going through the channel
  flow processor.

  Only administrators or channel moderators can disassociate a channel flow. The
  `x-amz-chime-bearer` request header is mandatory. Use the `AppInstanceUserArn`
  of the user that makes the API call as the value in the header.
  """
  def disassociate_channel_flow(
        %Client{} = client,
        channel_arn,
        channel_flow_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/channel-flow/#{AWS.Util.encode_uri(channel_flow_arn)}"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Gets the membership preferences of an `AppInstanceUser` for the specified
  channel.

  The `AppInstanceUser` must be a member of the channel. Only the
  `AppInstanceUser` who owns the membership can retrieve preferences. Users in the
  `AppInstanceAdmin` and channel moderator roles can't retrieve preferences for
  other users. Banned users can't retrieve membership preferences for the channel
  from which they are banned.
  """
  def get_channel_membership_preferences(
        %Client{} = client,
        channel_arn,
        member_arn,
        chime_bearer,
        options \\ []
      ) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/memberships/#{AWS.Util.encode_uri(member_arn)}/preferences"

    headers = []

    headers =
      if !is_nil(chime_bearer) do
        [{"x-amz-chime-bearer", chime_bearer} | headers]
      else
        headers
      end

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
  Gets the full details of a channel message.

  The x-amz-chime-bearer request header is mandatory. Use the `AppInstanceUserArn`
  of the user that makes the API call as the value in the header.
  """
  def get_channel_message(
        %Client{} = client,
        channel_arn,
        message_id,
        chime_bearer,
        options \\ []
      ) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/messages/#{AWS.Util.encode_uri(message_id)}"

    headers = []

    headers =
      if !is_nil(chime_bearer) do
        [{"x-amz-chime-bearer", chime_bearer} | headers]
      else
        headers
      end

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
  Gets message status for a specified `messageId`.

  Use this API to determine the intermediate status of messages going through
  channel flow processing. The API provides an alternative to retrieving message
  status if the event was not received because a client wasn't connected to a
  websocket.

  Messages can have any one of these statuses.

  ## Definitions

  ### SENT

  Message processed successfully

  ### PENDING

  Ongoing processing

  ### FAILED

  Processing failed

  ### DENIED

  Messasge denied by the processor

     This API does not return statuses for denied messages, because we
  don't store them once the processor denies them.

     Only the message sender can invoke this API.

     The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header
  """
  def get_channel_message_status(
        %Client{} = client,
        channel_arn,
        message_id,
        chime_bearer,
        options \\ []
      ) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/messages/#{AWS.Util.encode_uri(message_id)}?scope=message-status"

    headers = []

    headers =
      if !is_nil(chime_bearer) do
        [{"x-amz-chime-bearer", chime_bearer} | headers]
      else
        headers
      end

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
  The details of the endpoint for the messaging session.
  """
  def get_messaging_session_endpoint(%Client{} = client, options \\ []) do
    url_path = "/endpoints/messaging-session"
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
  Lists all the users banned from a particular channel.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header.
  """
  def list_channel_bans(
        %Client{} = client,
        channel_arn,
        max_results \\ nil,
        next_token \\ nil,
        chime_bearer,
        options \\ []
      ) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/bans"
    headers = []

    headers =
      if !is_nil(chime_bearer) do
        [{"x-amz-chime-bearer", chime_bearer} | headers]
      else
        headers
      end

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
  Returns a paginated lists of all the channel flows created under a single Chime.

  This is a developer API.
  """
  def list_channel_flows(
        %Client{} = client,
        app_instance_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/channel-flows"
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

    query_params =
      if !is_nil(app_instance_arn) do
        [{"app-instance-arn", app_instance_arn} | query_params]
      else
        query_params
      end

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
  Lists all channel memberships in a channel.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header.

  If you want to list the channels to which a specific app instance user belongs,
  see the
  [ListChannelMembershipsForAppInstanceUser](https://docs.aws.amazon.com/chime/latest/APIReference/API_messaging-chime_ListChannelMembershipsForAppInstanceUser.html)
  API.
  """
  def list_channel_memberships(
        %Client{} = client,
        channel_arn,
        max_results \\ nil,
        next_token \\ nil,
        type \\ nil,
        chime_bearer,
        options \\ []
      ) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/memberships"
    headers = []

    headers =
      if !is_nil(chime_bearer) do
        [{"x-amz-chime-bearer", chime_bearer} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

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
  Lists all channels that a particular `AppInstanceUser` is a part of.

  Only an `AppInstanceAdmin` can call the API with a user ARN that is not their
  own.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header.
  """
  def list_channel_memberships_for_app_instance_user(
        %Client{} = client,
        app_instance_user_arn \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        chime_bearer,
        options \\ []
      ) do
    url_path = "/channels?scope=app-instance-user-memberships"
    headers = []

    headers =
      if !is_nil(chime_bearer) do
        [{"x-amz-chime-bearer", chime_bearer} | headers]
      else
        headers
      end

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

    query_params =
      if !is_nil(app_instance_user_arn) do
        [{"app-instance-user-arn", app_instance_user_arn} | query_params]
      else
        query_params
      end

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
  List all the messages in a channel.

  Returns a paginated list of `ChannelMessages`. By default, sorted by creation
  timestamp in descending order.

  Redacted messages appear in the results as empty, since they are only redacted,
  not deleted. Deleted messages do not appear in the results. This action always
  returns the latest version of an edited message.

  Also, the x-amz-chime-bearer request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header.
  """
  def list_channel_messages(
        %Client{} = client,
        channel_arn,
        max_results \\ nil,
        next_token \\ nil,
        not_after \\ nil,
        not_before \\ nil,
        sort_order \\ nil,
        chime_bearer,
        options \\ []
      ) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/messages"
    headers = []

    headers =
      if !is_nil(chime_bearer) do
        [{"x-amz-chime-bearer", chime_bearer} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(sort_order) do
        [{"sort-order", sort_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(not_before) do
        [{"not-before", not_before} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(not_after) do
        [{"not-after", not_after} | query_params]
      else
        query_params
      end

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
  Lists all the moderators for a channel.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header.
  """
  def list_channel_moderators(
        %Client{} = client,
        channel_arn,
        max_results \\ nil,
        next_token \\ nil,
        chime_bearer,
        options \\ []
      ) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/moderators"
    headers = []

    headers =
      if !is_nil(chime_bearer) do
        [{"x-amz-chime-bearer", chime_bearer} | headers]
      else
        headers
      end

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
  Lists all Channels created under a single Chime App as a paginated list.

  You can specify filters to narrow results.

  ## Functionality & restrictions

    * Use privacy = `PUBLIC` to retrieve all public channels in the
  account.

    * Only an `AppInstanceAdmin` can set privacy = `PRIVATE` to list the
  private channels in an account.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header.
  """
  def list_channels(
        %Client{} = client,
        app_instance_arn,
        max_results \\ nil,
        next_token \\ nil,
        privacy \\ nil,
        chime_bearer,
        options \\ []
      ) do
    url_path = "/channels"
    headers = []

    headers =
      if !is_nil(chime_bearer) do
        [{"x-amz-chime-bearer", chime_bearer} | headers]
      else
        headers
      end

    query_params = []

    query_params =
      if !is_nil(privacy) do
        [{"privacy", privacy} | query_params]
      else
        query_params
      end

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

    query_params =
      if !is_nil(app_instance_arn) do
        [{"app-instance-arn", app_instance_arn} | query_params]
      else
        query_params
      end

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
  Lists all channels associated with a specified channel flow.

  You can associate a channel flow with multiple channels, but you can only
  associate a channel with one channel flow. This is a developer API.
  """
  def list_channels_associated_with_channel_flow(
        %Client{} = client,
        channel_flow_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/channels?scope=channel-flow-associations"
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

    query_params =
      if !is_nil(channel_flow_arn) do
        [{"channel-flow-arn", channel_flow_arn} | query_params]
      else
        query_params
      end

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
  A list of the channels moderated by an `AppInstanceUser`.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header.
  """
  def list_channels_moderated_by_app_instance_user(
        %Client{} = client,
        app_instance_user_arn \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        chime_bearer,
        options \\ []
      ) do
    url_path = "/channels?scope=app-instance-user-moderated-channels"
    headers = []

    headers =
      if !is_nil(chime_bearer) do
        [{"x-amz-chime-bearer", chime_bearer} | headers]
      else
        headers
      end

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

    query_params =
      if !is_nil(app_instance_user_arn) do
        [{"app-instance-user-arn", app_instance_user_arn} | query_params]
      else
        query_params
      end

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
  Lists the tags applied to an Amazon Chime SDK messaging resource.
  """
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
  Sets the membership preferences of an `AppInstanceUser` for the specified
  channel.

  The `AppInstanceUser` must be a member of the channel. Only the
  `AppInstanceUser` who owns the membership can set preferences. Users in the
  `AppInstanceAdmin` and channel moderator roles can't set preferences for other
  users. Banned users can't set membership preferences for the channel from which
  they are banned.
  """
  def put_channel_membership_preferences(
        %Client{} = client,
        channel_arn,
        member_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/memberships/#{AWS.Util.encode_uri(member_arn)}/preferences"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Redacts message content, but not metadata.

  The message exists in the back end, but the action returns null content, and the
  state shows as redacted.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header.
  """
  def redact_channel_message(%Client{} = client, channel_arn, message_id, input, options \\ []) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/messages/#{AWS.Util.encode_uri(message_id)}?operation=redact"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

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
  Allows an `AppInstanceUser` to search the channels that they belong to.

  The `AppInstanceUser` can search by membership or external ID. An
  `AppInstanceAdmin` can search across all channels within the `AppInstance`.
  """
  def search_channels(%Client{} = client, input, options \\ []) do
    url_path = "/channels?operation=search"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    {query_params, input} =
      [
        {"MaxResults", "max-results"},
        {"NextToken", "next-token"}
      ]
      |> Request.build_params(input)

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
  Sends a message to a particular channel that the member is a part of.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header.

  Also, `STANDARD` messages can contain 4KB of data and the 1KB of metadata.
  `CONTROL` messages can contain 30 bytes of data and no metadata.
  """
  def send_channel_message(%Client{} = client, channel_arn, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/messages"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

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
      201
    )
  end

  @doc """
  Applies the specified tags to the specified Amazon Chime SDK messaging resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags?operation=tag-resource"
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
  Removes the specified tags from the specified Amazon Chime SDK messaging
  resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags?operation=untag-resource"
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
  Update a channel's attributes.

  **Restriction**: You can't change a channel's privacy.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header.
  """
  def update_channel(%Client{} = client, channel_arn, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates channel flow attributes.

  This is a developer API.
  """
  def update_channel_flow(%Client{} = client, channel_flow_arn, input, options \\ []) do
    url_path = "/channel-flows/#{AWS.Util.encode_uri(channel_flow_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the content of a message.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header.
  """
  def update_channel_message(%Client{} = client, channel_arn, message_id, input, options \\ []) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/messages/#{AWS.Util.encode_uri(message_id)}"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  The details of the time when a user last read messages in a channel.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in the
  header.
  """
  def update_channel_read_marker(%Client{} = client, channel_arn, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/readMarker"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
