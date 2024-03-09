# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Chime do
  @moduledoc """


  **Most of these APIs are no longer supported and will not be updated.** We
  recommend using the latest versions in the
  [Amazon Chime SDK API reference](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/welcome.html),
  in the Amazon Chime SDK.

  Using the latest versions requires migrating to dedicated namespaces. For more
  information, refer to
  [Migrating from the Amazon Chime namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.

  The Amazon Chime application programming interface (API) is designed so
  administrators can
  perform key tasks, such as creating and managing Amazon Chime accounts, users,
  and Voice
  Connectors. This guide provides detailed information about the Amazon Chime API,
  including operations, types, inputs and outputs, and error codes.

  You can use an AWS SDK, the AWS Command Line Interface (AWS CLI), or the REST
  API to make API calls for Amazon Chime. We recommend using an AWS SDK or the
  AWS CLI. The page for each API action contains a *See Also* section that
  includes links to information about using the action with a language-specific
  AWS SDK or the AWS CLI.

  ## Definitions

  ### Using an AWS SDK

  You don't need to write code to calculate a signature for request
  authentication. The SDK clients authenticate your requests by using access keys
  that you provide. For more information about AWS SDKs, see the
  [AWS Developer Center](http://aws.amazon.com/developer/). 

  ### Using the AWS CLI

  Use your access keys with the AWS CLI to make API calls. For information about
  setting up the AWS CLI, see
  [Installing the AWS Command Line
  Interface](https://docs.aws.amazon.com/cli/latest/userguide/installing.html)
  in the *AWS Command Line Interface User Guide*. For a list of available Amazon
  Chime commands, see the
  [Amazon Chime commands](https://docs.aws.amazon.com/cli/latest/reference/chime/index.html) in
  the
  *AWS CLI Command Reference*.

  ### Using REST APIs

  If you use REST to make API calls, you must authenticate your request by
  providing a signature. Amazon Chime supports Signature Version 4. For more
  information, see
  [Signature Version 4 Signing Process](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html)
  in the *Amazon Web Services General Reference*.

  When making REST API calls, use the service name `chime` and REST endpoint
  `https://service.chime.aws.amazon.com`.

  Administrative permissions are controlled using AWS Identity and Access
  Management (IAM). For more information, see
  [Identity and Access Management for Amazon Chime](https://docs.aws.amazon.com/chime/latest/ag/security-iam.html)
  in the *Amazon Chime Administration Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2018-05-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: "us-east-1",
      endpoint_prefix: "chime",
      global?: true,
      protocol: "rest-json",
      service_id: "Chime",
      signature_version: "v4",
      signing_name: "chime",
      target_prefix: nil
    }
  end

  @doc """
  Associates a phone number with the specified Amazon Chime user.
  """
  def associate_phone_number_with_user(
        %Client{} = client,
        account_id,
        user_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/users/#{AWS.Util.encode_uri(user_id)}?operation=associate-phone-number"

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
  Associates phone numbers with the specified Amazon Chime Voice Connector.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [AssociatePhoneNumbersWithVoiceConnector](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_AssociatePhoneNumbersWithVoiceConnector.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def associate_phone_numbers_with_voice_connector(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}?operation=associate-phone-numbers"

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
  Associates phone numbers with the specified Amazon Chime Voice Connector group.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [AssociatePhoneNumbersWithVoiceConnectorGroup](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_AssociatePhoneNumbersWithVoiceConnectorGroup.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def associate_phone_numbers_with_voice_connector_group(
        %Client{} = client,
        voice_connector_group_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connector-groups/#{AWS.Util.encode_uri(voice_connector_group_id)}?operation=associate-phone-numbers"

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
  Associates the specified sign-in delegate groups with the specified Amazon Chime
  account.
  """
  def associate_signin_delegate_groups_with_account(
        %Client{} = client,
        account_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}?operation=associate-signin-delegate-groups"

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
  Creates up to 100 new attendees for an active Amazon Chime SDK meeting.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [BatchCreateAttendee](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_BatchCreateAttendee.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.

  For more information about the Amazon Chime SDK, see
  [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
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
      201
    )
  end

  @doc """
  Adds a specified number of users to a channel.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [BatchCreateChannelMembership](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_BatchCreateChannelMembership.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def batch_create_channel_membership(%Client{} = client, channel_arn, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/memberships?operation=batch-create"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

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
  Adds up to 50 members to a chat room in an Amazon Chime Enterprise account.

  Members can be users or bots. The member role designates whether the member is a
  chat room administrator or a general chat room member.
  """
  def batch_create_room_membership(%Client{} = client, account_id, room_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/rooms/#{AWS.Util.encode_uri(room_id)}/memberships?operation=batch-create"

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
      201
    )
  end

  @doc """

  Moves phone numbers into the
  **Deletion queue**.

  Phone numbers must be disassociated from any users or Amazon Chime Voice
  Connectors before they can be deleted.

  Phone numbers remain in the
  **Deletion queue** for 7 days before they are deleted permanently.
  """
  def batch_delete_phone_number(%Client{} = client, input, options \\ []) do
    url_path = "/phone-numbers?operation=batch-delete"
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
  Suspends up to 50 users from a `Team` or `EnterpriseLWA` Amazon Chime
  account.

  For more information about different account types, see [Managing Your Amazon Chime
  Accounts](https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html)
  in the *Amazon Chime Administration
  Guide*.

  Users suspended from a `Team` account are disassociated from the account,but
  they
  can continue to use Amazon Chime as free users. To remove the suspension from
  suspended
  `Team` account users, invite them to the `Team` account again.
  You can use the `InviteUsers` action to do so.

  Users suspended from an `EnterpriseLWA` account are immediately signed out of
  Amazon Chime and can no longer sign in. To remove the suspension from suspended
  `EnterpriseLWA` account users, use the
  `BatchUnsuspendUser` action.

  To sign out users without suspending them, use the
  `LogoutUser` action.
  """
  def batch_suspend_user(%Client{} = client, account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/users?operation=suspend"
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
  Removes the suspension from up to 50 previously suspended users for the
  specified Amazon
  Chime `EnterpriseLWA` account.

  Only users on `EnterpriseLWA`
  accounts can be unsuspended using this action. For more information about
  different account types, see
  [
  Managing Your Amazon Chime Accounts
  ](https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html) in the
  account types, in the *Amazon Chime Administration Guide*.

  Previously suspended users who are unsuspended using this action are returned to
  `Registered`
  status. Users who are not previously suspended are ignored.
  """
  def batch_unsuspend_user(%Client{} = client, account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/users?operation=unsuspend"
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
  Updates phone number product types or calling names.

  You can update one attribute at a time for each `UpdatePhoneNumberRequestItem`.
  For example, you can update the product type or the calling name.

  For toll-free numbers, you cannot use the Amazon Chime Business Calling product
  type. For numbers outside the U.S., you must use the Amazon Chime SIP Media
  Application Dial-In product type.

  Updates to outbound calling names can take up to 72 hours to complete. Pending
  updates to outbound calling names must be complete before you can request
  another update.
  """
  def batch_update_phone_number(%Client{} = client, input, options \\ []) do
    url_path = "/phone-numbers?operation=batch-update"
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
  Updates user details within the `UpdateUserRequestItem` object for up to 20
  users for the specified Amazon Chime account.

  Currently, only `LicenseType` updates are supported for this action.
  """
  def batch_update_user(%Client{} = client, account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/users"
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
  Creates an Amazon Chime account under the administrator's AWS account.

  Only `Team`
  account types are currently supported for this action. For more information
  about different account types, see
  [Managing Your Amazon Chime Accounts](https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html)
  in the *Amazon Chime
  Administration Guide*.
  """
  def create_account(%Client{} = client, input, options \\ []) do
    url_path = "/accounts"
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
      201
    )
  end

  @doc """
  Creates an Amazon Chime SDK messaging `AppInstance` under an AWS account.

  Only SDK messaging customers use this API.
  `CreateAppInstance` supports idempotency behavior as described in the AWS API
  Standard.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [CreateAppInstance](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_CreateAppInstance.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def create_app_instance(%Client{} = client, input, options \\ []) do
    url_path = "/app-instances"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "identity-")

    Request.request_rest(
      client,
      meta,
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
  Promotes an `AppInstanceUser` to an `AppInstanceAdmin`.

  The promoted user can perform the following actions.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [CreateAppInstanceAdmin](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_CreateAppInstanceAdmin.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.

    *

  `ChannelModerator` actions across all channels in the `AppInstance`.

    *

  `DeleteChannelMessage` actions.

  Only an `AppInstanceUser` can be promoted to an `AppInstanceAdmin` role.
  """
  def create_app_instance_admin(%Client{} = client, app_instance_arn, input, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/admins"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "identity-")

    Request.request_rest(
      client,
      meta,
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
  Creates a user under an Amazon Chime `AppInstance`.

  The request consists of a unique `appInstanceUserId` and
  `Name` for that user.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [CreateAppInstanceUser](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_CreateAppInstanceUser.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def create_app_instance_user(%Client{} = client, input, options \\ []) do
    url_path = "/app-instance-users"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "identity-")

    Request.request_rest(
      client,
      meta,
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

  Creates a new attendee for an active Amazon Chime SDK meeting.

  For more information about the Amazon Chime SDK, see
  [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html)
  in the
  *Amazon Chime SDK Developer Guide*.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [CreateAttendee](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_CreateAttendee.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
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
      201
    )
  end

  @doc """
  Creates a bot for an Amazon Chime Enterprise account.
  """
  def create_bot(%Client{} = client, account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/bots"
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
      201
    )
  end

  @doc """
  Creates a channel to which you can add users and send messages.

  **Restriction**: You can't change a channel's
  privacy.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [CreateChannel](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_CreateChannel.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def create_channel(%Client{} = client, input, options \\ []) do
    url_path = "/channels"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

    Request.request_rest(
      client,
      meta,
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

  Moderators can't add banned members to a
  channel. To undo a ban, you first have to `DeleteChannelBan`, and then
  `CreateChannelMembership`. Bans are cleaned up when you delete users or
  channels.

  If you ban a user who is already part of a channel, that user is automatically
  kicked
  from the channel.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [CreateChannelBan](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_CreateChannelBan.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def create_channel_ban(%Client{} = client, channel_arn, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/bans"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

    Request.request_rest(
      client,
      meta,
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

  The `InvitedBy` response field is derived from the
  request header. A channel member can:

    *
  List messages

    *
  Send messages

    *
  Receive messages

    *
  Edit their own messages

    *
  Leave the channel

  Privacy settings impact this action as follows:

    *
  Public Channels: You do not need to be a member to list messages, but you must
  be
  a member to send messages.

    *
  Private Channels: You must be a member to list or send messages.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [CreateChannelMembership](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_CreateChannelMembership.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def create_channel_membership(%Client{} = client, channel_arn, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/memberships"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

    Request.request_rest(
      client,
      meta,
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

    *
  Add and remove other members of the channel.

    *
  Add and remove other moderators of the channel.

    *
  Add and remove user bans for the channel.

    *
  Redact messages in the channel.

    *
  List messages in the channel.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [CreateChannelModerator](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_CreateChannelModerator.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def create_channel_moderator(%Client{} = client, channel_arn, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/moderators"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

    Request.request_rest(
      client,
      meta,
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
  Creates a media capture pipeline.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [CreateMediaCapturePipeline](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_media-pipelines-chime_CreateMediaCapturePipeline), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def create_media_capture_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/media-capture-pipelines"
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
      201
    )
  end

  @doc """
  Creates a new Amazon Chime SDK meeting in the specified media Region with no
  initial attendees.

  For more information about specifying media Regions, see
  [Amazon Chime SDK Media Regions](https://docs.aws.amazon.com/chime-sdk/latest/dg/chime-sdk-meetings-regions.html)
  in the *Amazon Chime SDK Developer Guide*
  . For more information about the Amazon Chime SDK, see
  [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html)
  in the *Amazon Chime SDK Developer Guide*.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [CreateMeeting](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_CreateMeeting.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
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
      201
    )
  end

  @doc """
  Uses the join token and call metadata in a meeting request (From number, To
  number, and so forth) to initiate an outbound call to a public
  switched telephone network (PSTN) and join them into a Chime meeting.

  Also ensures that the From number belongs to the customer.

  To play welcome audio or implement an interactive voice response (IVR), use the
  `CreateSipMediaApplicationCall` action with the corresponding SIP media
  application ID.

  ## This API is is not available in a dedicated namespace.
  """
  def create_meeting_dial_out(%Client{} = client, meeting_id, input, options \\ []) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}/dial-outs"
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
      201
    )
  end

  @doc """

  Creates a new Amazon Chime SDK meeting in the specified media Region, with
  attendees.

  For more information about specifying media Regions, see
  [Amazon Chime SDK Media Regions](https://docs.aws.amazon.com/chime-sdk/latest/dg/chime-sdk-meetings-regions.html)
  in the
  *Amazon Chime SDK Developer Guide*
  . For more information about the Amazon Chime SDK, see
  [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html)
  in the
  *Amazon Chime SDK Developer Guide*
  .

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [CreateMeetingWithAttendees](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_CreateMeetingWithAttendees.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
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
      201
    )
  end

  @doc """
  Creates an order for phone numbers to be provisioned.

  For toll-free numbers, you cannot use the Amazon Chime Business Calling product
  type.
  For numbers outside the U.S., you must use the Amazon Chime SIP Media
  Application Dial-In product type.
  """
  def create_phone_number_order(%Client{} = client, input, options \\ []) do
    url_path = "/phone-number-orders"
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
      201
    )
  end

  @doc """
  Creates a proxy session on the specified Amazon Chime Voice Connector for the
  specified participant phone numbers.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [CreateProxySession](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_CreateProxySession.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def create_proxy_session(%Client{} = client, voice_connector_id, input, options \\ []) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/proxy-sessions"
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
      201
    )
  end

  @doc """
  Creates a chat room for the specified Amazon Chime Enterprise account.
  """
  def create_room(%Client{} = client, account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/rooms"
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
      201
    )
  end

  @doc """
  Adds a member to a chat room in an Amazon Chime Enterprise account.

  A member can be either a user or a bot. The member role designates whether the
  member is a chat room administrator or a general chat room member.
  """
  def create_room_membership(%Client{} = client, account_id, room_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/rooms/#{AWS.Util.encode_uri(room_id)}/memberships"

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
      201
    )
  end

  @doc """
  Creates a SIP media application.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [CreateSipMediaApplication](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_CreateSipMediaApplication.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def create_sip_media_application(%Client{} = client, input, options \\ []) do
    url_path = "/sip-media-applications"
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
      201
    )
  end

  @doc """
  Creates an outbound call to a phone number from the phone number specified in
  the request, and it invokes the endpoint of the specified
  `sipMediaApplicationId`.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [CreateSipMediaApplicationCall](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_CreateSipMediaApplicationCall.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def create_sip_media_application_call(
        %Client{} = client,
        sip_media_application_id,
        input,
        options \\ []
      ) do
    url_path = "/sip-media-applications/#{AWS.Util.encode_uri(sip_media_application_id)}/calls"
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
      201
    )
  end

  @doc """
  Creates a SIP rule which can be used to run a SIP media application as a target
  for a specific trigger type.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [CreateSipRule](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_CreateSipRule.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def create_sip_rule(%Client{} = client, input, options \\ []) do
    url_path = "/sip-rules"
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
      201
    )
  end

  @doc """
  Creates a user under the specified Amazon Chime account.
  """
  def create_user(%Client{} = client, account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/users?operation=create"
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
      201
    )
  end

  @doc """
  Creates an Amazon Chime Voice Connector under the administrator's AWS account.

  You can choose to create an Amazon Chime Voice Connector in a specific AWS
  Region.

  Enabling `CreateVoiceConnectorRequest$RequireEncryption`
  configures your Amazon Chime Voice Connector to use TLS transport for SIP
  signaling and Secure RTP (SRTP) for media. Inbound calls use TLS transport, and
  unencrypted outbound calls are blocked.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [CreateVoiceConnector](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_CreateVoiceConnector.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def create_voice_connector(%Client{} = client, input, options \\ []) do
    url_path = "/voice-connectors"
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
      201
    )
  end

  @doc """
  Creates an Amazon Chime Voice Connector group under the administrator's AWS
  account.

  You can
  associate Amazon Chime Voice Connectors with the Amazon Chime Voice Connector
  group by
  including `VoiceConnectorItems` in the request.

  You can include Amazon Chime Voice Connectors from different AWS Regions in your
  group. This
  creates a fault tolerant mechanism for fallback in case of availability events.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [CreateVoiceConnectorGroup](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_CreateVoiceConnectorGroup.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def create_voice_connector_group(%Client{} = client, input, options \\ []) do
    url_path = "/voice-connector-groups"
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
      201
    )
  end

  @doc """
  Deletes the specified Amazon Chime account.

  You must suspend all users before deleting
  `Team` account. You can use the `BatchSuspendUser` action
  to dodo.

  For `EnterpriseLWA` and `EnterpriseAD` accounts, you must release the
  claimed domains for your Amazon Chime account before deletion. As soon as you
  release
  the domain, all users under that account are suspended.

  Deleted accounts appear in your `Disabled` accounts list for 90 days. To restore
  deleted account from your `Disabled` accounts list, you must contact AWS
  Support.

  After 90 days, deleted accounts are permanently removed from your
  `Disabled` accounts list.
  """
  def delete_account(%Client{} = client, account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}"
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
  Deletes an `AppInstance` and all associated data asynchronously.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DeleteAppInstance](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_DeleteAppInstance.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def delete_app_instance(%Client{} = client, app_instance_arn, input, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "identity-")

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
  Demotes an `AppInstanceAdmin` to an `AppInstanceUser`.

  This action does not delete the user.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DeleteAppInstanceAdmin](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_DeleteAppInstanceAdmin.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def delete_app_instance_admin(
        %Client{} = client,
        app_instance_admin_arn,
        app_instance_arn,
        input,
        options \\ []
      ) do
    url_path =
      "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/admins/#{AWS.Util.encode_uri(app_instance_admin_arn)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "identity-")

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
  Deletes the streaming configurations of an `AppInstance`.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DeleteAppInstanceStreamingConfigurations](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_DeleteAppInstanceStreamingConfigurations.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def delete_app_instance_streaming_configurations(
        %Client{} = client,
        app_instance_arn,
        input,
        options \\ []
      ) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/streaming-configurations"
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
  Deletes an `AppInstanceUser`.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DeleteAppInstanceUser](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_DeleteAppInstanceUser.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def delete_app_instance_user(%Client{} = client, app_instance_user_arn, input, options \\ []) do
    url_path = "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "identity-")

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
  Deletes an attendee from the specified Amazon Chime SDK meeting and deletes
  their
  `JoinToken`.

  Attendees are automatically deleted when a Amazon Chime SDK meeting is deleted.
  For more information about the Amazon Chime SDK, see
  [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html)
  in the *Amazon Chime SDK Developer Guide*.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DeleteAttendee](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_DeleteAttendee.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
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
  Immediately makes a channel and its memberships inaccessible and marks them for
  deletion.

  This is an irreversible process.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DeleteChannel](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DeleteChannel.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def delete_channel(%Client{} = client, channel_arn, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

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
  Removes a user from a channel's ban list.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DeleteChannelBan](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DeleteChannelBan.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
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

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

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
  Removes a member from a channel.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DeleteChannelMembership](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DeleteChannelMembership.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
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

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

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
  Deletes a channel message.

  Only admins can perform this action. Deletion makes messages
  inaccessible immediately. A background process deletes any revisions created by
  `UpdateChannelMessage`.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DeleteChannelMessage](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DeleteChannelMessage.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
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

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

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
  Deletes a channel moderator.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DeleteChannelModerator](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DeleteChannelModerator.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
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

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

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
  Deletes the events configuration that allows a bot to receive outgoing events.
  """
  def delete_events_configuration(%Client{} = client, account_id, bot_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/bots/#{AWS.Util.encode_uri(bot_id)}/events-configuration"

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
  Deletes the media capture pipeline.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DeleteMediaCapturePipeline](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_media-pipelines-chime_DeleteMediaCapturePipeline.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def delete_media_capture_pipeline(%Client{} = client, media_pipeline_id, input, options \\ []) do
    url_path = "/media-capture-pipelines/#{AWS.Util.encode_uri(media_pipeline_id)}"
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
  [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html) in the
  *Amazon Chime SDK Developer Guide*.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DeleteMeeting](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_DeleteMeeting.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
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
  Moves the specified phone number into the **Deletion queue**.

  A
  phone number must be disassociated from any users or Amazon Chime Voice
  Connectors
  before it can be deleted.

  Deleted phone numbers remain in the
  ## Deletion queue
  for 7 days before they are deleted permanently.
  """
  def delete_phone_number(%Client{} = client, phone_number_id, input, options \\ []) do
    url_path = "/phone-numbers/#{AWS.Util.encode_uri(phone_number_id)}"
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
  Deletes the specified proxy session from the specified Amazon Chime Voice
  Connector.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DeleteProxySession](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteProxySession.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def delete_proxy_session(
        %Client{} = client,
        proxy_session_id,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/proxy-sessions/#{AWS.Util.encode_uri(proxy_session_id)}"

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
  Deletes a chat room in an Amazon Chime Enterprise account.
  """
  def delete_room(%Client{} = client, account_id, room_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/rooms/#{AWS.Util.encode_uri(room_id)}"

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
  Removes a member from a chat room in an Amazon Chime Enterprise account.
  """
  def delete_room_membership(
        %Client{} = client,
        account_id,
        member_id,
        room_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/rooms/#{AWS.Util.encode_uri(room_id)}/memberships/#{AWS.Util.encode_uri(member_id)}"

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
  Deletes a SIP media application.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DeleteSipMediaApplication](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteSipMediaApplication.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def delete_sip_media_application(
        %Client{} = client,
        sip_media_application_id,
        input,
        options \\ []
      ) do
    url_path = "/sip-media-applications/#{AWS.Util.encode_uri(sip_media_application_id)}"
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
  Deletes a SIP rule.

  You must disable a SIP rule before you can delete it.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DeleteSipRule](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteSipRule.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def delete_sip_rule(%Client{} = client, sip_rule_id, input, options \\ []) do
    url_path = "/sip-rules/#{AWS.Util.encode_uri(sip_rule_id)}"
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
  Deletes the specified Amazon Chime Voice Connector.

  Any phone numbers associated with the
  Amazon Chime Voice Connector must be disassociated from it before it can be
  deleted.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DeleteVoiceConnector](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteVoiceConnector.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def delete_voice_connector(%Client{} = client, voice_connector_id, input, options \\ []) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}"
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
  Deletes the emergency calling configuration details from the specified Amazon
  Chime Voice Connector.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DeleteVoiceConnectorEmergencyCallingConfiguration](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteVoiceConnectorEmergencyCallingConfiguration.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def delete_voice_connector_emergency_calling_configuration(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/emergency-calling-configuration"

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
  Deletes the specified Amazon Chime Voice Connector group.

  Any
  `VoiceConnectorItems`
  and phone numbers associated with the group must be removed before it can be
  deleted.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DeleteVoiceConnectorGroup](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteVoiceConnectorGroup.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def delete_voice_connector_group(
        %Client{} = client,
        voice_connector_group_id,
        input,
        options \\ []
      ) do
    url_path = "/voice-connector-groups/#{AWS.Util.encode_uri(voice_connector_group_id)}"
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
  Deletes the origination settings for the specified Amazon Chime Voice Connector.

  If emergency calling is configured for the Amazon Chime Voice Connector, it must
  be deleted prior to deleting the origination settings.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DeleteVoiceConnectorOrigination](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteVoiceConnectorOrigination.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def delete_voice_connector_origination(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/origination"
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
  Deletes the proxy configuration from the specified Amazon Chime Voice Connector.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DeleteVoiceProxy](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteVoiceConnectorProxy.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def delete_voice_connector_proxy(%Client{} = client, voice_connector_id, input, options \\ []) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/programmable-numbers/proxy"

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
  Deletes the streaming configuration for the specified Amazon Chime Voice
  Connector.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DeleteVoiceConnectorStreamingConfiguration](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteVoiceConnectorStreamingConfiguration.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def delete_voice_connector_streaming_configuration(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/streaming-configuration"

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
  Deletes the termination settings for the specified Amazon Chime Voice Connector.

  If emergency calling is configured for the Amazon Chime Voice Connector, it must
  be deleted prior to deleting the termination settings.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DeleteVoiceConnectorTermination](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteVoiceConnectorTermination.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def delete_voice_connector_termination(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/termination"
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
  Deletes the specified SIP credentials used by your equipment to authenticate
  during call termination.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DeleteVoiceConnectorTerminationCredentials](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DeleteVoiceConnectorTerminationCredentials.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def delete_voice_connector_termination_credentials(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/termination/credentials?operation=delete"

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
  Returns the full details of an `AppInstance`.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DescribeAppInstance](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_DescribeAppInstance.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def describe_app_instance(%Client{} = client, app_instance_arn, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "identity-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the full details of an `AppInstanceAdmin`.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DescribeAppInstanceAdmin](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_DescribeAppInstanceAdmin.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def describe_app_instance_admin(
        %Client{} = client,
        app_instance_admin_arn,
        app_instance_arn,
        options \\ []
      ) do
    url_path =
      "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/admins/#{AWS.Util.encode_uri(app_instance_admin_arn)}"

    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "identity-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the full details of an `AppInstanceUser`.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DescribeAppInstanceUser](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_DescribeAppInstanceUser.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def describe_app_instance_user(%Client{} = client, app_instance_user_arn, options \\ []) do
    url_path = "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "identity-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the full details of a channel in an Amazon Chime
  `AppInstance`.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DescribeChannel](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DescribeChannel.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def describe_channel(%Client{} = client, channel_arn, chime_bearer \\ nil, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}"
    headers = []

    headers =
      if !is_nil(chime_bearer) do
        [{"x-amz-chime-bearer", chime_bearer} | headers]
      else
        headers
      end

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the full details of a channel ban.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DescribeChannelBan](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DescribeChannelBan.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def describe_channel_ban(
        %Client{} = client,
        channel_arn,
        member_arn,
        chime_bearer \\ nil,
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

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the full details of a user's channel membership.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DescribeChannelMembership](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DescribeChannelMembership.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def describe_channel_membership(
        %Client{} = client,
        channel_arn,
        member_arn,
        chime_bearer \\ nil,
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

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the details of a channel based on the membership of the specified
  `AppInstanceUser`.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DescribeChannelMembershipForAppInstanceUser](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DescribeChannelMembershipForAppInstanceUser.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def describe_channel_membership_for_app_instance_user(
        %Client{} = client,
        channel_arn,
        app_instance_user_arn,
        chime_bearer \\ nil,
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

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the full details of a channel moderated by the specified
  `AppInstanceUser`.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DescribeChannelModeratedByAppInstanceUser](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DescribeChannelModeratedByAppInstanceUser.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def describe_channel_moderated_by_app_instance_user(
        %Client{} = client,
        channel_arn,
        app_instance_user_arn,
        chime_bearer \\ nil,
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

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the full details of a single ChannelModerator.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DescribeChannelModerator](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_DescribeChannelModerator.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def describe_channel_moderator(
        %Client{} = client,
        channel_arn,
        channel_moderator_arn,
        chime_bearer \\ nil,
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

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Disassociates the primary provisioned phone number from the specified Amazon
  Chime user.
  """
  def disassociate_phone_number_from_user(
        %Client{} = client,
        account_id,
        user_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/users/#{AWS.Util.encode_uri(user_id)}?operation=disassociate-phone-number"

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
  Disassociates the specified phone numbers from the specified Amazon Chime Voice
  Connector.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DisassociatePhoneNumbersFromVoiceConnector](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DisassociatePhoneNumbersFromVoiceConnector.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def disassociate_phone_numbers_from_voice_connector(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}?operation=disassociate-phone-numbers"

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
  Disassociates the specified phone numbers from the specified Amazon Chime Voice
  Connector group.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [DisassociatePhoneNumbersFromVoiceConnectorGroup](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_DisassociatePhoneNumbersFromVoiceConnectorGroup.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def disassociate_phone_numbers_from_voice_connector_group(
        %Client{} = client,
        voice_connector_group_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connector-groups/#{AWS.Util.encode_uri(voice_connector_group_id)}?operation=disassociate-phone-numbers"

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
  Disassociates the specified sign-in delegate groups from the specified Amazon
  Chime account.
  """
  def disassociate_signin_delegate_groups_from_account(
        %Client{} = client,
        account_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}?operation=disassociate-signin-delegate-groups"

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
  Retrieves details for the specified Amazon Chime account, such as account type
  and supported
  licenses.
  """
  def get_account(%Client{} = client, account_id, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves account settings for the specified Amazon Chime account ID, such as
  remote control
  and dialout settings.

  For more information about these settings, see
  [Use the Policies Page](https://docs.aws.amazon.com/chime/latest/ag/policies.html) in the *Amazon
  Chime Administration Guide*.
  """
  def get_account_settings(%Client{} = client, account_id, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the retention settings for an `AppInstance`.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [GetMessagingRetentionSettings](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_GetAppInstanceRetentionSettings.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def get_app_instance_retention_settings(%Client{} = client, app_instance_arn, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/retention-settings"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "identity-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the streaming settings for an `AppInstance`.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [GetMessagingStreamingConfigurations](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_GetMessagingStreamingConfigurations.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def get_app_instance_streaming_configurations(
        %Client{} = client,
        app_instance_arn,
        options \\ []
      ) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/streaming-configurations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Gets the Amazon Chime SDK attendee details for a specified meeting ID and
  attendee ID.

  For more information about the Amazon Chime SDK, see
  [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html)
  in the *Amazon Chime SDK Developer Guide*.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [GetAttendee](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_GetAttendee.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def get_attendee(%Client{} = client, attendee_id, meeting_id, options \\ []) do
    url_path =
      "/meetings/#{AWS.Util.encode_uri(meeting_id)}/attendees/#{AWS.Util.encode_uri(attendee_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves details for the specified bot, such as bot email address, bot type,
  status, and display name.
  """
  def get_bot(%Client{} = client, account_id, bot_id, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/bots/#{AWS.Util.encode_uri(bot_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the full details of a channel message.

  The x-amz-chime-bearer request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [GetChannelMessage](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_GetChannelMessage.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def get_channel_message(
        %Client{} = client,
        channel_arn,
        message_id,
        chime_bearer \\ nil,
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

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets details for an events configuration that allows a bot to receive outgoing
  events, such as an HTTPS endpoint or Lambda function ARN.
  """
  def get_events_configuration(%Client{} = client, account_id, bot_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/bots/#{AWS.Util.encode_uri(bot_id)}/events-configuration"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves global settings for the administrator's AWS account, such as Amazon
  Chime Business
  Calling and Amazon Chime Voice Connector settings.
  """
  def get_global_settings(%Client{} = client, options \\ []) do
    url_path = "/settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets an existing media capture pipeline.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [GetMediaCapturePipeline](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_media-pipelines-chime_GetMediaCapturePipeline.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def get_media_capture_pipeline(%Client{} = client, media_pipeline_id, options \\ []) do
    url_path = "/media-capture-pipelines/#{AWS.Util.encode_uri(media_pipeline_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """


  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [GetMeeting](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_GetMeeting.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.

  Gets the Amazon Chime SDK meeting details for the specified meeting ID. For more
  information about the Amazon Chime SDK, see
  [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html)
  in the
  *Amazon Chime SDK Developer Guide*
  .
  """
  def get_meeting(%Client{} = client, meeting_id, options \\ []) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The details of the endpoint for the messaging session.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [GetMessagingSessionEndpoint](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_GetMessagingSessionEndpoint.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def get_messaging_session_endpoint(%Client{} = client, options \\ []) do
    url_path = "/endpoints/messaging-session"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves details for the specified phone number ID, such as associations,
  capabilities, and product type.
  """
  def get_phone_number(%Client{} = client, phone_number_id, options \\ []) do
    url_path = "/phone-numbers/#{AWS.Util.encode_uri(phone_number_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves details for the specified phone number order, such as the order
  creation timestamp, phone
  numbers in E.164 format, product type, and order status.
  """
  def get_phone_number_order(%Client{} = client, phone_number_order_id, options \\ []) do
    url_path = "/phone-number-orders/#{AWS.Util.encode_uri(phone_number_order_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the phone number settings for the administrator's AWS account, such as
  the default outbound calling name.
  """
  def get_phone_number_settings(%Client{} = client, options \\ []) do
    url_path = "/settings/phone-number"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the specified proxy session details for the specified Amazon Chime Voice
  Connector.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [GetProxySession](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetProxySession.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def get_proxy_session(%Client{} = client, proxy_session_id, voice_connector_id, options \\ []) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/proxy-sessions/#{AWS.Util.encode_uri(proxy_session_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Gets the retention settings for the specified Amazon Chime Enterprise account.

  For more information about retention settings, see
  [Managing Chat Retention Policies](https://docs.aws.amazon.com/chime/latest/ag/chat-retention.html) in
  the *Amazon Chime Administration Guide*.
  """
  def get_retention_settings(%Client{} = client, account_id, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/retention-settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves room details, such as the room name, for a room in an Amazon Chime
  Enterprise account.
  """
  def get_room(%Client{} = client, account_id, room_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/rooms/#{AWS.Util.encode_uri(room_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the information for a SIP media application, including name, AWS
  Region, and endpoints.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [GetSipMediaApplication](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetSipMediaApplication.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def get_sip_media_application(%Client{} = client, sip_media_application_id, options \\ []) do
    url_path = "/sip-media-applications/#{AWS.Util.encode_uri(sip_media_application_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the logging configuration for the specified SIP media application.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [GetSipMediaApplicationLoggingConfiguration](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetSipMediaApplicationLoggingConfiguration.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def get_sip_media_application_logging_configuration(
        %Client{} = client,
        sip_media_application_id,
        options \\ []
      ) do
    url_path =
      "/sip-media-applications/#{AWS.Util.encode_uri(sip_media_application_id)}/logging-configuration"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the details of a SIP rule, such as the rule ID, name, triggers, and
  target endpoints.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [GetSipRule](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetSipRule.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def get_sip_rule(%Client{} = client, sip_rule_id, options \\ []) do
    url_path = "/sip-rules/#{AWS.Util.encode_uri(sip_rule_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves details for the specified user ID, such as primary email address,
  license type,and personal meeting PIN.

  To retrieve user details with an email address instead of a user ID, use the
  `ListUsers` action, and then filter by email address.
  """
  def get_user(%Client{} = client, account_id, user_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/users/#{AWS.Util.encode_uri(user_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves settings for the specified user ID, such as any associated phone
  number settings.
  """
  def get_user_settings(%Client{} = client, account_id, user_id, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/users/#{AWS.Util.encode_uri(user_id)}/settings"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves details for the specified Amazon Chime Voice Connector, such as
  timestamps,name, outbound host, and encryption requirements.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [GetVoiceConnector](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetVoiceConnector.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def get_voice_connector(%Client{} = client, voice_connector_id, options \\ []) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the emergency calling configuration details for the specified Amazon Chime
  Voice Connector.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [GetVoiceConnectorEmergencyCallingConfiguration](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetVoiceConnectorEmergencyCallingConfiguration.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def get_voice_connector_emergency_calling_configuration(
        %Client{} = client,
        voice_connector_id,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/emergency-calling-configuration"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Retrieves details for the specified Amazon Chime Voice Connector group, such as
  timestamps,name, and associated `VoiceConnectorItems`.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [GetVoiceConnectorGroup](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetVoiceConnectorGroup.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def get_voice_connector_group(%Client{} = client, voice_connector_group_id, options \\ []) do
    url_path = "/voice-connector-groups/#{AWS.Util.encode_uri(voice_connector_group_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the logging configuration details for the specified Amazon Chime Voice
  Connector.

  Shows whether SIP message logs are enabled for sending to
  Amazon CloudWatch Logs.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [GetVoiceConnectorLoggingConfiguration](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetVoiceConnectorLoggingConfiguration.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def get_voice_connector_logging_configuration(
        %Client{} = client,
        voice_connector_id,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/logging-configuration"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves origination setting details for the specified Amazon Chime Voice
  Connector.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [GetVoiceConnectorOrigination](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetVoiceConnectorOrigination.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def get_voice_connector_origination(%Client{} = client, voice_connector_id, options \\ []) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/origination"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the proxy configuration details for the specified Amazon Chime Voice
  Connector.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [GetVoiceConnectorProxy](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetVoiceConnectorProxy.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def get_voice_connector_proxy(%Client{} = client, voice_connector_id, options \\ []) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/programmable-numbers/proxy"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the streaming configuration details for the specified Amazon Chime
  Voice Connector.

  Shows whether media streaming is enabled for sending to Amazon Kinesis. It also
  shows
  the retention period, in hours, for the Amazon Kinesis data.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [GetVoiceConnectorStreamingConfiguration](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetVoiceConnectorStreamingConfiguration.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def get_voice_connector_streaming_configuration(
        %Client{} = client,
        voice_connector_id,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/streaming-configuration"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves termination setting details for the specified Amazon Chime Voice
  Connector.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [GetVoiceConnectorTermination](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetVoiceConnectorTermination.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def get_voice_connector_termination(%Client{} = client, voice_connector_id, options \\ []) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/termination"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """


  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [GetVoiceConnectorTerminationHealth](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_GetVoiceConnectorTerminationHealth.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.

  Retrieves information about the last time a SIP `OPTIONS` ping was received from
  your SIP infrastructure for the specified Amazon Chime Voice Connector.
  """
  def get_voice_connector_termination_health(
        %Client{} = client,
        voice_connector_id,
        options \\ []
      ) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/termination/health"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Sends email to a maximum of 50 users, inviting them to the specified Amazon
  Chime
  `Team` account.

  Only `Team` account types are currently
  supported for this action.
  """
  def invite_users(%Client{} = client, account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/users?operation=add"
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
      201
    )
  end

  @doc """
  Lists the Amazon Chime accounts under the administrator's AWS account.

  You can filter accounts
  by account name prefix. To find out which Amazon Chime account a user belongs
  to, you can
  filter by the user's email address, which returns one account result.
  """
  def list_accounts(
        %Client{} = client,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        user_email \\ nil,
        options \\ []
      ) do
    url_path = "/accounts"
    headers = []
    query_params = []

    query_params =
      if !is_nil(user_email) do
        [{"user-email", user_email} | query_params]
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
      if !is_nil(name) do
        [{"name", name} | query_params]
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
  Returns a list of the administrators in the `AppInstance`.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [ListAppInstanceAdmins](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_ListAppInstanceAdmins.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def list_app_instance_admins(
        %Client{} = client,
        app_instance_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/admins"
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

    meta = metadata() |> Map.put_new(:host_prefix, "identity-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List all `AppInstanceUsers`
  created under a single `AppInstance`.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [ListAppInstanceUsers](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_ListAppInstanceUsers.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def list_app_instance_users(
        %Client{} = client,
        app_instance_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/app-instance-users"
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

    meta = metadata() |> Map.put_new(:host_prefix, "identity-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all Amazon Chime `AppInstance`s created under a single AWS account.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [ListAppInstances](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_ListAppInstances.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def list_app_instances(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/app-instances"
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

    meta = metadata() |> Map.put_new(:host_prefix, "identity-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags applied to an Amazon Chime SDK attendee resource.

  ListAttendeeTags is not supported in the Amazon Chime SDK Meetings Namespace.
  Update your application to remove calls to this API.
  """
  def list_attendee_tags(%Client{} = client, attendee_id, meeting_id, options \\ []) do
    url_path =
      "/meetings/#{AWS.Util.encode_uri(meeting_id)}/attendees/#{AWS.Util.encode_uri(attendee_id)}/tags"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  Lists the attendees for the specified Amazon Chime SDK meeting.

  For more information about the Amazon Chime SDK, see
  [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html)
  in the *Amazon Chime SDK Developer Guide*.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [ListAttendees](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_ListAttendees.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
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
  Lists the bots associated with the administrator's Amazon Chime Enterprise
  account ID.
  """
  def list_bots(
        %Client{} = client,
        account_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/bots"
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
  Lists all the users banned from a particular channel.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [ListChannelBans](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_ListChannelBans.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def list_channel_bans(
        %Client{} = client,
        channel_arn,
        max_results \\ nil,
        next_token \\ nil,
        chime_bearer \\ nil,
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

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all channel memberships in a channel.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [ListChannelMemberships](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_ListChannelMemberships.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def list_channel_memberships(
        %Client{} = client,
        channel_arn,
        max_results \\ nil,
        next_token \\ nil,
        type \\ nil,
        chime_bearer \\ nil,
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

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all channels that a particular `AppInstanceUser` is a part of.

  Only an
  `AppInstanceAdmin` can call the API with a user ARN that is not their own.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [ListChannelMembershipsForAppInstanceUser](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_ListChannelMembershipsForAppInstanceUser.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def list_channel_memberships_for_app_instance_user(
        %Client{} = client,
        app_instance_user_arn \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        chime_bearer \\ nil,
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

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List all the messages in a channel.

  Returns a paginated list of
  `ChannelMessages`. By default, sorted by creation timestamp in descending
  order.

  Redacted messages appear in the results as empty, since they are only redacted,
  not
  deleted. Deleted messages do not appear in the results. This action always
  returns the
  latest version of an edited message.

  Also, the x-amz-chime-bearer request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [ListChannelMessages](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_ListChannelMessages.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def list_channel_messages(
        %Client{} = client,
        channel_arn,
        max_results \\ nil,
        next_token \\ nil,
        not_after \\ nil,
        not_before \\ nil,
        sort_order \\ nil,
        chime_bearer \\ nil,
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

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the moderators for a channel.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [ListChannelModerators](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_ListChannelModerators.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def list_channel_moderators(
        %Client{} = client,
        channel_arn,
        max_results \\ nil,
        next_token \\ nil,
        chime_bearer \\ nil,
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

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all Channels created under a single Chime App as a paginated list.

  You can specify
  filters to narrow results.

  ## Functionality & restrictions

    *
  Use privacy = `PUBLIC` to retrieve all public channels in the
  account.

    *
  Only an `AppInstanceAdmin` can set privacy = `PRIVATE` to
  list the private channels in an account.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [ListChannels](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_ListChannels.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def list_channels(
        %Client{} = client,
        app_instance_arn,
        max_results \\ nil,
        next_token \\ nil,
        privacy \\ nil,
        chime_bearer \\ nil,
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

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  A list of the channels moderated by an `AppInstanceUser`.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [ListChannelsModeratedByAppInstanceUser](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_ListChannelsModeratedByAppInstanceUser.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def list_channels_moderated_by_app_instance_user(
        %Client{} = client,
        app_instance_user_arn \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        chime_bearer \\ nil,
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

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of media capture pipelines.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [ListMediaCapturePipelines](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_media-pipelines-chime_ListMediaCapturePipelines.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def list_media_capture_pipelines(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/media-capture-pipelines"
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
  Lists the tags applied to an Amazon Chime SDK meeting resource.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [ListTagsForResource](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_ListTagsForResource.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def list_meeting_tags(%Client{} = client, meeting_id, options \\ []) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}/tags"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists up to 100 active Amazon Chime SDK meetings.

  ListMeetings is not supported in the Amazon Chime SDK Meetings Namespace. Update
  your application to remove calls to this API.

  For more information about the Amazon Chime SDK, see
  [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime-sdk/latest/dg/meetings-sdk.html)
  in the *Amazon Chime SDK Developer Guide*.
  """
  def list_meetings(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/meetings"
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
  Lists the phone number orders for the administrator's Amazon Chime account.
  """
  def list_phone_number_orders(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/phone-number-orders"
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
  Lists the phone numbers for the specified Amazon Chime account, Amazon Chime
  user, Amazon Chime Voice Connector, or Amazon Chime Voice Connector group.
  """
  def list_phone_numbers(
        %Client{} = client,
        filter_name \\ nil,
        filter_value \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        product_type \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/phone-numbers"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(product_type) do
        [{"product-type", product_type} | query_params]
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
      if !is_nil(filter_value) do
        [{"filter-value", filter_value} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(filter_name) do
        [{"filter-name", filter_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the proxy sessions for the specified Amazon Chime Voice Connector.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [ListProxySessions](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_ListProxySessions.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def list_proxy_sessions(
        %Client{} = client,
        voice_connector_id,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/proxy-sessions"
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
  Lists the membership details for the specified room in an Amazon Chime
  Enterprise account,
  such as the members' IDs, email addresses, and names.
  """
  def list_room_memberships(
        %Client{} = client,
        account_id,
        room_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/rooms/#{AWS.Util.encode_uri(room_id)}/memberships"

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
  Lists the room details for the specified Amazon Chime Enterprise account.

  Optionally, filter the results by a member ID (user ID or bot ID) to see a list
  of rooms that the member belongs to.
  """
  def list_rooms(
        %Client{} = client,
        account_id,
        max_results \\ nil,
        member_id \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/rooms"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(member_id) do
        [{"member-id", member_id} | query_params]
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
  Lists the SIP media applications under the administrator's AWS account.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [ListSipMediaApplications](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_ListSipMediaApplications.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def list_sip_media_applications(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/sip-media-applications"
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
  Lists the SIP rules under the administrator's AWS account.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [ListSipRules](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_ListSipRules.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def list_sip_rules(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        sip_media_application_id \\ nil,
        options \\ []
      ) do
    url_path = "/sip-rules"
    headers = []
    query_params = []

    query_params =
      if !is_nil(sip_media_application_id) do
        [{"sip-media-application", sip_media_application_id} | query_params]
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists supported phone number countries.
  """
  def list_supported_phone_number_countries(%Client{} = client, product_type, options \\ []) do
    url_path = "/phone-number-countries"
    headers = []
    query_params = []

    query_params =
      if !is_nil(product_type) do
        [{"product-type", product_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags applied to an Amazon Chime SDK meeting and messaging resources.

  **This API is is no longer supported and will not be updated.** We recommend
  using the applicable latest version in the Amazon Chime SDK.

    
  For meetings:
  [ListTagsForResource](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_ListTagsForResource.html). 
    
  For messaging:
  [ListTagsForResource](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_ListTagsForResource.html).

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the users that belong to the specified Amazon Chime account.

  You can specify an email
  address to list only the user that the email address belongs to.
  """
  def list_users(
        %Client{} = client,
        account_id,
        max_results \\ nil,
        next_token \\ nil,
        user_email \\ nil,
        user_type \\ nil,
        options \\ []
      ) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/users"
    headers = []
    query_params = []

    query_params =
      if !is_nil(user_type) do
        [{"user-type", user_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(user_email) do
        [{"user-email", user_email} | query_params]
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Amazon Chime Voice Connector groups for the administrator's AWS
  account.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [ListVoiceConnectorGroups](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_ListVoiceConnectorGroups.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def list_voice_connector_groups(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/voice-connector-groups"
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
  Lists the SIP credentials for the specified Amazon Chime Voice Connector.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [ListVoiceConnectorTerminationCredentials](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_ListVoiceConnectorTerminationCredentials.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def list_voice_connector_termination_credentials(
        %Client{} = client,
        voice_connector_id,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/termination/credentials"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Amazon Chime Voice Connectors for the administrator's AWS account.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [ListVoiceConnectors](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_ListVoiceConnectors.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def list_voice_connectors(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/voice-connectors"
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
  Logs out the specified user from all of the devices they are currently logged
  into.
  """
  def logout_user(%Client{} = client, account_id, user_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/users/#{AWS.Util.encode_uri(user_id)}?operation=logout"

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
  Sets the amount of time in days that a given `AppInstance` retains data.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [PutAppInstanceRetentionSettings](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_PutAppInstanceRetentionSettings.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def put_app_instance_retention_settings(
        %Client{} = client,
        app_instance_arn,
        input,
        options \\ []
      ) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/retention-settings"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "identity-")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  The data streaming configurations of an `AppInstance`.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [PutMessagingStreamingConfigurations](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_PutMessagingStreamingConfigurations.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def put_app_instance_streaming_configurations(
        %Client{} = client,
        app_instance_arn,
        input,
        options \\ []
      ) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/streaming-configurations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates an events configuration that allows a bot to receive outgoing events
  sent by Amazon
  Chime.

  Choose either an HTTPS endpoint or a Lambda function ARN. For more information,
  see `Bot`.
  """
  def put_events_configuration(%Client{} = client, account_id, bot_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/bots/#{AWS.Util.encode_uri(bot_id)}/events-configuration"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 201)
  end

  @doc """

  Puts retention settings for the specified Amazon Chime Enterprise account.

  We recommend using AWS CloudTrail to monitor usage of this API for your account.
  For more information, see
  [Logging Amazon Chime API Calls with AWS CloudTrail](https://docs.aws.amazon.com/chime/latest/ag/cloudtrail.html)
  in the *Amazon Chime Administration Guide*.

  To turn off existing retention settings, remove the number of days from the
  corresponding
  ## RetentionDays
  field in the
  ## RetentionSettings
  object. For more information about retention settings, see
  [Managing Chat Retention Policies](https://docs.aws.amazon.com/chime/latest/ag/chat-retention.html)
  in the *Amazon Chime Administration Guide*.
  """
  def put_retention_settings(%Client{} = client, account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/retention-settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 204)
  end

  @doc """
  Updates the logging configuration for the specified SIP media application.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [PutSipMediaApplicationLoggingConfiguration](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_PutSipMediaApplicationLoggingConfiguration.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def put_sip_media_application_logging_configuration(
        %Client{} = client,
        sip_media_application_id,
        input,
        options \\ []
      ) do
    url_path =
      "/sip-media-applications/#{AWS.Util.encode_uri(sip_media_application_id)}/logging-configuration"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Puts emergency calling configuration details to the specified Amazon Chime Voice
  Connector, such as emergency phone numbers and calling countries.

  Origination and termination settings must be enabled for
  the Amazon Chime Voice Connector before emergency calling can be configured.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [PutVoiceConnectorEmergencyCallingConfiguration](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_PutVoiceConnectorEmergencyCallingConfiguration.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def put_voice_connector_emergency_calling_configuration(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/emergency-calling-configuration"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Adds a logging configuration for the specified Amazon Chime Voice Connector.

  The logging configuration specifies whether SIP message logs are enabled for
  sending to
  Amazon CloudWatch Logs.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [PutVoiceConnectorLoggingConfiguration](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_PutVoiceConnectorLoggingConfiguration.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def put_voice_connector_logging_configuration(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/logging-configuration"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Adds origination settings for the specified Amazon Chime Voice Connector.

  If emergency calling is configured for the Amazon Chime Voice Connector, it must
  be deleted prior to turning off origination settings.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [PutVoiceConnectorOrigination](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_PutVoiceConnectorOrigination.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def put_voice_connector_origination(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/origination"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Puts the specified proxy configuration to the specified Amazon Chime Voice
  Connector.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [PutVoiceConnectorProxy](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_PutVoiceConnectorProxy.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def put_voice_connector_proxy(%Client{} = client, voice_connector_id, input, options \\ []) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/programmable-numbers/proxy"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Adds a streaming configuration for the specified Amazon Chime Voice Connector.

  The streaming
  configuration specifies whether media streaming is enabled for sending to
  Kinesis.
  It also sets the retention period, in hours, for the Amazon Kinesis data.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [PutVoiceConnectorStreamingConfiguration](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_PutVoiceConnectorStreamingConfiguration.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def put_voice_connector_streaming_configuration(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/streaming-configuration"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Adds termination settings for the specified Amazon Chime Voice Connector.

  If emergency calling is configured for the Amazon Chime Voice Connector, it must
  be deleted prior to turning off termination settings.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [PutVoiceConnectorTermination](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_PutVoiceConnectorTermination.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def put_voice_connector_termination(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/termination"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Adds termination SIP credentials for the specified Amazon Chime Voice Connector.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [PutVoiceConnectorTerminationCredentials](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_PutVoiceConnectorTerminationCredentials.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def put_voice_connector_termination_credentials(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/termination/credentials?operation=put"

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
  Redacts message content, but not metadata.

  The message exists in the back end, but the
  action returns null content, and the state shows as redacted.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [RedactChannelMessage](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_RedactChannelMessage.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
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

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

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
  Redacts the specified message from the specified Amazon Chime conversation.
  """
  def redact_conversation_message(
        %Client{} = client,
        account_id,
        conversation_id,
        message_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/conversations/#{AWS.Util.encode_uri(conversation_id)}/messages/#{AWS.Util.encode_uri(message_id)}?operation=redact"

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
  Redacts the specified message from the specified Amazon Chime channel.
  """
  def redact_room_message(
        %Client{} = client,
        account_id,
        message_id,
        room_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/rooms/#{AWS.Util.encode_uri(room_id)}/messages/#{AWS.Util.encode_uri(message_id)}?operation=redact"

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
  Regenerates the security token for a bot.
  """
  def regenerate_security_token(%Client{} = client, account_id, bot_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/bots/#{AWS.Util.encode_uri(bot_id)}?operation=regenerate-security-token"

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
  Resets the personal meeting PIN for the specified user on an Amazon Chime
  account.

  Returns
  the `User` object with the updated personal meeting PIN.
  """
  def reset_personal_pin(%Client{} = client, account_id, user_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/users/#{AWS.Util.encode_uri(user_id)}?operation=reset-personal-pin"

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
  Moves a phone number from the **Deletion queue** back into the
  phone number **Inventory**.
  """
  def restore_phone_number(%Client{} = client, phone_number_id, input, options \\ []) do
    url_path = "/phone-numbers/#{AWS.Util.encode_uri(phone_number_id)}?operation=restore"
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
  Searches for phone numbers that can be ordered.

  For US numbers, provide at least one of
  the following search filters: `AreaCode`, `City`,
  `State`, or `TollFreePrefix`. If you provide
  `City`, you must also provide `State`. Numbers outside the US only
  support the `PhoneNumberType` filter, which you must use.
  """
  def search_available_phone_numbers(
        %Client{} = client,
        area_code \\ nil,
        city \\ nil,
        country \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        phone_number_type \\ nil,
        state \\ nil,
        toll_free_prefix \\ nil,
        options \\ []
      ) do
    url_path = "/search?type=phone-numbers"
    headers = []
    query_params = []

    query_params =
      if !is_nil(toll_free_prefix) do
        [{"toll-free-prefix", toll_free_prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(state) do
        [{"state", state} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(phone_number_type) do
        [{"phone-number-type", phone_number_type} | query_params]
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
      if !is_nil(country) do
        [{"country", country} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(city) do
        [{"city", city} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(area_code) do
        [{"area-code", area_code} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Sends a message to a particular channel that the member is a part of.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  Also, `STANDARD` messages can contain 4KB of data and the 1KB of metadata.
  `CONTROL` messages can contain 30 bytes of data and no metadata.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [SendChannelMessage](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_SendChannelMessage.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def send_channel_message(%Client{} = client, channel_arn, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/messages"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

    Request.request_rest(
      client,
      meta,
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

  Amazon Chime SDK live transcription is powered by Amazon Transcribe. Use of
  Amazon Transcribe is subject to the
  [AWS Service Terms](https://aws.amazon.com/service-terms/), including the terms
  specific to the AWS Machine Learning and Artificial
  Intelligence Services.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [StartMeetingTranscription](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_StartMeetingTranscription.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
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

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [StopMeetingTranscription](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_StopMeetingTranscription.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
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
  Applies the specified tags to the specified Amazon Chime attendee.

  TagAttendee is not supported in the Amazon Chime SDK Meetings Namespace. Update
  your application to remove calls to this API.
  """
  def tag_attendee(%Client{} = client, attendee_id, meeting_id, input, options \\ []) do
    url_path =
      "/meetings/#{AWS.Util.encode_uri(meeting_id)}/attendees/#{AWS.Util.encode_uri(attendee_id)}/tags?operation=add"

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
  Applies the specified tags to the specified Amazon Chime SDK meeting.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [TagResource](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_TagResource.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def tag_meeting(%Client{} = client, meeting_id, input, options \\ []) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}/tags?operation=add"
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
  Applies the specified tags to the specified Amazon Chime SDK meeting resource.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [TagResource](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_TagResource.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
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
  Untags the specified tags from the specified Amazon Chime SDK attendee.

  UntagAttendee is not supported in the Amazon Chime SDK Meetings Namespace.
  Update your application to remove calls to this API.
  """
  def untag_attendee(%Client{} = client, attendee_id, meeting_id, input, options \\ []) do
    url_path =
      "/meetings/#{AWS.Util.encode_uri(meeting_id)}/attendees/#{AWS.Util.encode_uri(attendee_id)}/tags?operation=delete"

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
  Untags the specified tags from the specified Amazon Chime SDK meeting.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [UntagResource](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_UntagResource.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def untag_meeting(%Client{} = client, meeting_id, input, options \\ []) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}/tags?operation=delete"
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
  Untags the specified tags from the specified Amazon Chime SDK meeting resource.

  Applies the specified tags to the specified Amazon Chime SDK meeting resource.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [UntagResource](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_meeting-chime_UntagResource.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
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
  Updates account details for the specified Amazon Chime account.

  Currently, only account name and default license updates are supported for this
  action.
  """
  def update_account(%Client{} = client, account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}"
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
  Updates the settings for the specified Amazon Chime account.

  You can update settings for
  remote control of shared screens, or for the dial-out option. For more
  information about
  these settings, see [Use the Policies Page](https://docs.aws.amazon.com/chime/latest/ag/policies.html) in
  the *Amazon Chime Administration
  Guide*.
  """
  def update_account_settings(%Client{} = client, account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 204)
  end

  @doc """
  Updates `AppInstance` metadata.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [UpdateAppInstance](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_UpdateAppInstance.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def update_app_instance(%Client{} = client, app_instance_arn, input, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "identity-")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the details of an `AppInstanceUser`.

  You can update names and metadata.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [UpdateAppInstanceUser](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_identity-chime_UpdateAppInstanceUser.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def update_app_instance_user(%Client{} = client, app_instance_user_arn, input, options \\ []) do
    url_path = "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "identity-")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the status of the specified bot, such as starting or stopping the bot
  from running in your Amazon Chime Enterprise account.
  """
  def update_bot(%Client{} = client, account_id, bot_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/bots/#{AWS.Util.encode_uri(bot_id)}"
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
  Update a channel's attributes.

  **Restriction**: You can't change a channel's privacy.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [UpdateChannel](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_UpdateChannel.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def update_channel(%Client{} = client, channel_arn, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the content of a message.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [UpdateChannelMessage](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_UpdateChannelMessage.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
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

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  The details of the time when a user last read messages in a channel.

  The `x-amz-chime-bearer` request header is mandatory. Use the
  `AppInstanceUserArn` of the user that makes the API call as the value in
  the header.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [UpdateChannelReadMarker](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_messaging-chime_UpdateChannelReadMarker.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def update_channel_read_marker(%Client{} = client, channel_arn, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/readMarker"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates global settings for the administrator's AWS account, such as Amazon
  Chime Business Calling and Amazon Chime Voice Connector settings.
  """
  def update_global_settings(%Client{} = client, input, options \\ []) do
    url_path = "/settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 204)
  end

  @doc """
  Updates phone number details, such as product type or calling name, for the
  specified phone number ID.

  You can update one phone number detail at a time. For example, you can update
  either the product type or the calling name in one action.

  For toll-free numbers, you cannot use the Amazon Chime Business Calling product
  type. For numbers outside the U.S., you must use the Amazon Chime SIP Media
  Application Dial-In product type.

  Updates to outbound calling names can take 72 hours to complete. Pending updates
  to outbound calling names must be complete before you can request another
  update.
  """
  def update_phone_number(%Client{} = client, phone_number_id, input, options \\ []) do
    url_path = "/phone-numbers/#{AWS.Util.encode_uri(phone_number_id)}"
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
  Updates the phone number settings for the administrator's AWS account, such as
  the default
  outbound calling name.

  You can update the default outbound calling name once every seven
  days. Outbound calling names can take up to 72 hours to update.
  """
  def update_phone_number_settings(%Client{} = client, input, options \\ []) do
    url_path = "/settings/phone-number"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 204)
  end

  @doc """
  Updates the specified proxy session details, such as voice or SMS capabilities.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [UpdateProxySession](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_UpdateProxySession.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def update_proxy_session(
        %Client{} = client,
        proxy_session_id,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/proxy-sessions/#{AWS.Util.encode_uri(proxy_session_id)}"

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
      201
    )
  end

  @doc """
  Updates room details, such as the room name, for a room in an Amazon Chime
  Enterprise account.
  """
  def update_room(%Client{} = client, account_id, room_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/rooms/#{AWS.Util.encode_uri(room_id)}"

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
  Updates room membership details, such as the member role, for a room in an
  Amazon Chime
  Enterprise account.

  The member role designates whether the member is a chat room
  administrator or a general chat room member. The member role can be updated only
  for
  user IDs.
  """
  def update_room_membership(
        %Client{} = client,
        account_id,
        member_id,
        room_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/rooms/#{AWS.Util.encode_uri(room_id)}/memberships/#{AWS.Util.encode_uri(member_id)}"

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
  Updates the details of the specified SIP media application.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [UpdateSipMediaApplication](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_UpdateSipMediaApplication.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def update_sip_media_application(
        %Client{} = client,
        sip_media_application_id,
        input,
        options \\ []
      ) do
    url_path = "/sip-media-applications/#{AWS.Util.encode_uri(sip_media_application_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Invokes the AWS Lambda function associated with the SIP media application and
  transaction ID in an update request.

  The Lambda function can then return a new set of actions.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [UpdateSipMediaApplicationCall](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_UpdateSipMediaApplicationCall.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def update_sip_media_application_call(
        %Client{} = client,
        sip_media_application_id,
        transaction_id,
        input,
        options \\ []
      ) do
    url_path =
      "/sip-media-applications/#{AWS.Util.encode_uri(sip_media_application_id)}/calls/#{AWS.Util.encode_uri(transaction_id)}"

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
      202
    )
  end

  @doc """
  Updates the details of the specified SIP rule.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [UpdateSipRule](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_UpdateSipRule.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def update_sip_rule(%Client{} = client, sip_rule_id, input, options \\ []) do
    url_path = "/sip-rules/#{AWS.Util.encode_uri(sip_rule_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates user details for a specified user ID.

  Currently, only `LicenseType` updates are supported for this action.
  """
  def update_user(%Client{} = client, account_id, user_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/users/#{AWS.Util.encode_uri(user_id)}"

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
  Updates the settings for the specified user, such as phone number settings.
  """
  def update_user_settings(%Client{} = client, account_id, user_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/users/#{AWS.Util.encode_uri(user_id)}/settings"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 204)
  end

  @doc """
  Updates details for the specified Amazon Chime Voice Connector.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [UpdateVoiceConnector](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_UpdateVoiceConnector.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def update_voice_connector(%Client{} = client, voice_connector_id, input, options \\ []) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates details of the specified Amazon Chime Voice Connector group, such as the
  name and
  Amazon Chime Voice Connector priority ranking.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [UpdateVoiceConnectorGroup](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_UpdateVoiceConnectorGroup.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def update_voice_connector_group(
        %Client{} = client,
        voice_connector_group_id,
        input,
        options \\ []
      ) do
    url_path = "/voice-connector-groups/#{AWS.Util.encode_uri(voice_connector_group_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Validates an address to be used for 911 calls made with Amazon
  Chime Voice Connectors.

  You can use validated addresses
  in a Presence Information Data Format Location Object file that you include in
  SIP requests.
  That helps ensure that addresses are routed to the appropriate Public Safety
  Answering Point.

  **This API is is no longer supported and will not be updated.** We recommend
  using the latest version,
  [ValidateE911Address](https://docs.aws.amazon.com/chime-sdk/latest/APIReference/API_voice-chime_ValidateE911Address.html), in the Amazon Chime SDK.

  Using the latest version requires migrating to a dedicated namespace. For more
  information, refer to
  [Migrating from the Amazon Chime
  namespace](https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
  in the
  *Amazon Chime SDK Developer Guide*.
  """
  def validate_e911_address(%Client{} = client, input, options \\ []) do
    url_path = "/emergency-calling/address"
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
      202
    )
  end
end
