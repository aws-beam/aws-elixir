# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Chime do
  @moduledoc """
  The Amazon Chime API (application programming interface) is designed for
  developers to perform key tasks, such as creating and managing Amazon Chime
  accounts, users, and Voice Connectors. This guide provides detailed
  information about the Amazon Chime API, including operations, types, inputs
  and outputs, and error codes. It also includes some server-side API actions
  to use with the Amazon Chime SDK. For more information about the Amazon
  Chime SDK, see [Using the Amazon Chime
  SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
  *Amazon Chime Developer Guide*.

  You can use an AWS SDK, the AWS Command Line Interface (AWS CLI), or the
  REST API to make API calls. We recommend using an AWS SDK or the AWS CLI.
  Each API operation includes links to information about using it with a
  language-specific AWS SDK or the AWS CLI.

  <dl> <dt>Using an AWS SDK</dt> <dd> You don't need to write code to
  calculate a signature for request authentication. The SDK clients
  authenticate your requests by using access keys that you provide. For more
  information about AWS SDKs, see the [AWS Developer
  Center](http://aws.amazon.com/developer/).

  </dd> <dt>Using the AWS CLI</dt> <dd> Use your access keys with the AWS CLI
  to make API calls. For information about setting up the AWS CLI, see
  [Installing the AWS Command Line
  Interface](https://docs.aws.amazon.com/cli/latest/userguide/installing.html)
  in the *AWS Command Line Interface User Guide*. For a list of available
  Amazon Chime commands, see the [Amazon Chime
  commands](https://docs.aws.amazon.com/cli/latest/reference/chime/index.html)
  in the *AWS CLI Command Reference*.

  </dd> <dt>Using REST API</dt> <dd> If you use REST to make API calls, you
  must authenticate your request by providing a signature. Amazon Chime
  supports signature version 4. For more information, see [Signature Version
  4 Signing
  Process](https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html)
  in the *Amazon Web Services General Reference*.

  When making REST API calls, use the service name `chime` and REST endpoint
  `https://service.chime.aws.amazon.com`.

  </dd> </dl> Administrative permissions are controlled using AWS Identity
  and Access Management (IAM). For more information, see [Identity and Access
  Management for Amazon
  Chime](https://docs.aws.amazon.com/chime/latest/ag/security-iam.html) in
  the *Amazon Chime Administration Guide*.
  """

  @doc """
  Associates a phone number with the specified Amazon Chime user.
  """
  def associate_phone_number_with_user(client, account_id, user_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/users/#{URI.encode(user_id)}?operation=associate-phone-number"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Associates phone numbers with the specified Amazon Chime Voice Connector.
  """
  def associate_phone_numbers_with_voice_connector(client, voice_connector_id, input, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}?operation=associate-phone-numbers"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Associates phone numbers with the specified Amazon Chime Voice Connector
  group.
  """
  def associate_phone_numbers_with_voice_connector_group(client, voice_connector_group_id, input, options \\ []) do
    path_ = "/voice-connector-groups/#{URI.encode(voice_connector_group_id)}?operation=associate-phone-numbers"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Associates the specified sign-in delegate groups with the specified Amazon
  Chime account.
  """
  def associate_signin_delegate_groups_with_account(client, account_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}?operation=associate-signin-delegate-groups"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates up to 100 new attendees for an active Amazon Chime SDK meeting. For
  more information about the Amazon Chime SDK, see [Using the Amazon Chime
  SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
  *Amazon Chime Developer Guide*.
  """
  def batch_create_attendee(client, meeting_id, input, options \\ []) do
    path_ = "/meetings/#{URI.encode(meeting_id)}/attendees?operation=batch-create"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Adds up to 50 members to a chat room in an Amazon Chime Enterprise account.
  Members can be either users or bots. The member role designates whether the
  member is a chat room administrator or a general chat room member.
  """
  def batch_create_room_membership(client, account_id, room_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/rooms/#{URI.encode(room_id)}/memberships?operation=batch-create"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Moves phone numbers into the **Deletion queue**. Phone numbers must be
  disassociated from any users or Amazon Chime Voice Connectors before they
  can be deleted.

  Phone numbers remain in the **Deletion queue** for 7 days before they are
  deleted permanently.
  """
  def batch_delete_phone_number(client, input, options \\ []) do
    path_ = "/phone-numbers?operation=batch-delete"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Suspends up to 50 users from a `Team` or `EnterpriseLWA` Amazon Chime
  account. For more information about different account types, see [Managing
  Your Amazon Chime
  Accounts](https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html)
  in the *Amazon Chime Administration Guide*.

  Users suspended from a `Team` account are disassociated from the account,
  but they can continue to use Amazon Chime as free users. To remove the
  suspension from suspended `Team` account users, invite them to the `Team`
  account again. You can use the `InviteUsers` action to do so.

  Users suspended from an `EnterpriseLWA` account are immediately signed out
  of Amazon Chime and can no longer sign in. To remove the suspension from
  suspended `EnterpriseLWA` account users, use the `BatchUnsuspendUser`
  action.

  To sign out users without suspending them, use the `LogoutUser` action.
  """
  def batch_suspend_user(client, account_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/users?operation=suspend"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Removes the suspension from up to 50 previously suspended users for the
  specified Amazon Chime `EnterpriseLWA` account. Only users on
  `EnterpriseLWA` accounts can be unsuspended using this action. For more
  information about different account types, see [Managing Your Amazon Chime
  Accounts](https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html)
  in the *Amazon Chime Administration Guide*.

  Previously suspended users who are unsuspended using this action are
  returned to `Registered` status. Users who are not previously suspended are
  ignored.
  """
  def batch_unsuspend_user(client, account_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/users?operation=unsuspend"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates phone number product types or calling names. You can update one
  attribute at a time for each `UpdatePhoneNumberRequestItem`. For example,
  you can update either the product type or the calling name.

  For product types, choose from Amazon Chime Business Calling and Amazon
  Chime Voice Connector. For toll-free numbers, you must use the Amazon Chime
  Voice Connector product type.

  Updates to outbound calling names can take up to 72 hours to complete.
  Pending updates to outbound calling names must be complete before you can
  request another update.
  """
  def batch_update_phone_number(client, input, options \\ []) do
    path_ = "/phone-numbers?operation=batch-update"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates user details within the `UpdateUserRequestItem` object for up to 20
  users for the specified Amazon Chime account. Currently, only `LicenseType`
  updates are supported for this action.
  """
  def batch_update_user(client, account_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/users"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates an Amazon Chime account under the administrator's AWS account. Only
  `Team` account types are currently supported for this action. For more
  information about different account types, see [Managing Your Amazon Chime
  Accounts](https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html)
  in the *Amazon Chime Administration Guide*.
  """
  def create_account(client, input, options \\ []) do
    path_ = "/accounts"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a new attendee for an active Amazon Chime SDK meeting. For more
  information about the Amazon Chime SDK, see [Using the Amazon Chime
  SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
  *Amazon Chime Developer Guide*.
  """
  def create_attendee(client, meeting_id, input, options \\ []) do
    path_ = "/meetings/#{URI.encode(meeting_id)}/attendees"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a bot for an Amazon Chime Enterprise account.
  """
  def create_bot(client, account_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/bots"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a new Amazon Chime SDK meeting in the specified media Region with
  no initial attendees. For more information about specifying media Regions,
  see [Amazon Chime SDK Media
  Regions](https://docs.aws.amazon.com/chime/latest/dg/chime-sdk-meetings-regions.html)
  in the *Amazon Chime Developer Guide*. For more information about the
  Amazon Chime SDK, see [Using the Amazon Chime
  SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
  *Amazon Chime Developer Guide*.
  """
  def create_meeting(client, input, options \\ []) do
    path_ = "/meetings"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a new Amazon Chime SDK meeting in the specified media Region, with
  attendees. For more information about specifying media Regions, see [Amazon
  Chime SDK Media
  Regions](https://docs.aws.amazon.com/chime/latest/dg/chime-sdk-meetings-regions.html)
  in the *Amazon Chime Developer Guide*. For more information about the
  Amazon Chime SDK, see [Using the Amazon Chime
  SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
  *Amazon Chime Developer Guide*.
  """
  def create_meeting_with_attendees(client, input, options \\ []) do
    path_ = "/meetings?operation=create-attendees"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates an order for phone numbers to be provisioned. Choose from Amazon
  Chime Business Calling and Amazon Chime Voice Connector product types. For
  toll-free numbers, you must use the Amazon Chime Voice Connector product
  type.
  """
  def create_phone_number_order(client, input, options \\ []) do
    path_ = "/phone-number-orders"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a proxy session on the specified Amazon Chime Voice Connector for
  the specified participant phone numbers.
  """
  def create_proxy_session(client, voice_connector_id, input, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}/proxy-sessions"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a chat room for the specified Amazon Chime Enterprise account.
  """
  def create_room(client, account_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/rooms"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Adds a member to a chat room in an Amazon Chime Enterprise account. A
  member can be either a user or a bot. The member role designates whether
  the member is a chat room administrator or a general chat room member.
  """
  def create_room_membership(client, account_id, room_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/rooms/#{URI.encode(room_id)}/memberships"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a user under the specified Amazon Chime account.
  """
  def create_user(client, account_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/users?operation=create"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates an Amazon Chime Voice Connector under the administrator's AWS
  account. You can choose to create an Amazon Chime Voice Connector in a
  specific AWS Region.

  Enabling `CreateVoiceConnectorRequest$RequireEncryption` configures your
  Amazon Chime Voice Connector to use TLS transport for SIP signaling and
  Secure RTP (SRTP) for media. Inbound calls use TLS transport, and
  unencrypted outbound calls are blocked.
  """
  def create_voice_connector(client, input, options \\ []) do
    path_ = "/voice-connectors"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates an Amazon Chime Voice Connector group under the administrator's AWS
  account. You can associate Amazon Chime Voice Connectors with the Amazon
  Chime Voice Connector group by including `VoiceConnectorItems` in the
  request.

  You can include Amazon Chime Voice Connectors from different AWS Regions in
  your group. This creates a fault tolerant mechanism for fallback in case of
  availability events.
  """
  def create_voice_connector_group(client, input, options \\ []) do
    path_ = "/voice-connector-groups"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Deletes the specified Amazon Chime account. You must suspend all users
  before deleting a `Team` account. You can use the `BatchSuspendUser` action
  to do so.

  For `EnterpriseLWA` and `EnterpriseAD` accounts, you must release the
  claimed domains for your Amazon Chime account before deletion. As soon as
  you release the domain, all users under that account are suspended.

  Deleted accounts appear in your `Disabled` accounts list for 90 days. To
  restore a deleted account from your `Disabled` accounts list, you must
  contact AWS Support.

  After 90 days, deleted accounts are permanently removed from your
  `Disabled` accounts list.
  """
  def delete_account(client, account_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes an attendee from the specified Amazon Chime SDK meeting and deletes
  their `JoinToken`. Attendees are automatically deleted when a Amazon Chime
  SDK meeting is deleted. For more information about the Amazon Chime SDK,
  see [Using the Amazon Chime
  SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
  *Amazon Chime Developer Guide*.
  """
  def delete_attendee(client, attendee_id, meeting_id, input, options \\ []) do
    path_ = "/meetings/#{URI.encode(meeting_id)}/attendees/#{URI.encode(attendee_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes the events configuration that allows a bot to receive outgoing
  events.
  """
  def delete_events_configuration(client, account_id, bot_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/bots/#{URI.encode(bot_id)}/events-configuration"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes the specified Amazon Chime SDK meeting. When a meeting is deleted,
  its attendees are also deleted and clients can no longer join it. For more
  information about the Amazon Chime SDK, see [Using the Amazon Chime
  SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
  *Amazon Chime Developer Guide*.
  """
  def delete_meeting(client, meeting_id, input, options \\ []) do
    path_ = "/meetings/#{URI.encode(meeting_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Moves the specified phone number into the **Deletion queue**. A phone
  number must be disassociated from any users or Amazon Chime Voice
  Connectors before it can be deleted.

  Deleted phone numbers remain in the **Deletion queue** for 7 days before
  they are deleted permanently.
  """
  def delete_phone_number(client, phone_number_id, input, options \\ []) do
    path_ = "/phone-numbers/#{URI.encode(phone_number_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes the specified proxy session from the specified Amazon Chime Voice
  Connector.
  """
  def delete_proxy_session(client, proxy_session_id, voice_connector_id, input, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}/proxy-sessions/#{URI.encode(proxy_session_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes a chat room in an Amazon Chime Enterprise account.
  """
  def delete_room(client, account_id, room_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/rooms/#{URI.encode(room_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Removes a member from a chat room in an Amazon Chime Enterprise account.
  """
  def delete_room_membership(client, account_id, member_id, room_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/rooms/#{URI.encode(room_id)}/memberships/#{URI.encode(member_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes the specified Amazon Chime Voice Connector. Any phone numbers
  associated with the Amazon Chime Voice Connector must be disassociated from
  it before it can be deleted.
  """
  def delete_voice_connector(client, voice_connector_id, input, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes the emergency calling configuration details from the specified
  Amazon Chime Voice Connector.
  """
  def delete_voice_connector_emergency_calling_configuration(client, voice_connector_id, input, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}/emergency-calling-configuration"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes the specified Amazon Chime Voice Connector group. Any
  `VoiceConnectorItems` and phone numbers associated with the group must be
  removed before it can be deleted.
  """
  def delete_voice_connector_group(client, voice_connector_group_id, input, options \\ []) do
    path_ = "/voice-connector-groups/#{URI.encode(voice_connector_group_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes the origination settings for the specified Amazon Chime Voice
  Connector.

  <note> If emergency calling is configured for the Amazon Chime Voice
  Connector, it must be deleted prior to deleting the origination settings.

  </note>
  """
  def delete_voice_connector_origination(client, voice_connector_id, input, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}/origination"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes the proxy configuration from the specified Amazon Chime Voice
  Connector.
  """
  def delete_voice_connector_proxy(client, voice_connector_id, input, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}/programmable-numbers/proxy"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes the streaming configuration for the specified Amazon Chime Voice
  Connector.
  """
  def delete_voice_connector_streaming_configuration(client, voice_connector_id, input, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}/streaming-configuration"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes the termination settings for the specified Amazon Chime Voice
  Connector.

  <note> If emergency calling is configured for the Amazon Chime Voice
  Connector, it must be deleted prior to deleting the termination settings.

  </note>
  """
  def delete_voice_connector_termination(client, voice_connector_id, input, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}/termination"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes the specified SIP credentials used by your equipment to
  authenticate during call termination.
  """
  def delete_voice_connector_termination_credentials(client, voice_connector_id, input, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}/termination/credentials?operation=delete"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """
  Disassociates the primary provisioned phone number from the specified
  Amazon Chime user.
  """
  def disassociate_phone_number_from_user(client, account_id, user_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/users/#{URI.encode(user_id)}?operation=disassociate-phone-number"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Disassociates the specified phone numbers from the specified Amazon Chime
  Voice Connector.
  """
  def disassociate_phone_numbers_from_voice_connector(client, voice_connector_id, input, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}?operation=disassociate-phone-numbers"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Disassociates the specified phone numbers from the specified Amazon Chime
  Voice Connector group.
  """
  def disassociate_phone_numbers_from_voice_connector_group(client, voice_connector_group_id, input, options \\ []) do
    path_ = "/voice-connector-groups/#{URI.encode(voice_connector_group_id)}?operation=disassociate-phone-numbers"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Disassociates the specified sign-in delegate groups from the specified
  Amazon Chime account.
  """
  def disassociate_signin_delegate_groups_from_account(client, account_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}?operation=disassociate-signin-delegate-groups"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Retrieves details for the specified Amazon Chime account, such as account
  type and supported licenses.
  """
  def get_account(client, account_id, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves account settings for the specified Amazon Chime account ID, such
  as remote control and dial out settings. For more information about these
  settings, see [Use the Policies
  Page](https://docs.aws.amazon.com/chime/latest/ag/policies.html) in the
  *Amazon Chime Administration Guide*.
  """
  def get_account_settings(client, account_id, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/settings"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Gets the Amazon Chime SDK attendee details for a specified meeting ID and
  attendee ID. For more information about the Amazon Chime SDK, see [Using
  the Amazon Chime
  SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
  *Amazon Chime Developer Guide*.
  """
  def get_attendee(client, attendee_id, meeting_id, options \\ []) do
    path_ = "/meetings/#{URI.encode(meeting_id)}/attendees/#{URI.encode(attendee_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves details for the specified bot, such as bot email address, bot
  type, status, and display name.
  """
  def get_bot(client, account_id, bot_id, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/bots/#{URI.encode(bot_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets details for an events configuration that allows a bot to receive
  outgoing events, such as an HTTPS endpoint or Lambda function ARN.
  """
  def get_events_configuration(client, account_id, bot_id, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/bots/#{URI.encode(bot_id)}/events-configuration"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves global settings for the administrator's AWS account, such as
  Amazon Chime Business Calling and Amazon Chime Voice Connector settings.
  """
  def get_global_settings(client, options \\ []) do
    path_ = "/settings"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets the Amazon Chime SDK meeting details for the specified meeting ID. For
  more information about the Amazon Chime SDK, see [Using the Amazon Chime
  SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
  *Amazon Chime Developer Guide*.
  """
  def get_meeting(client, meeting_id, options \\ []) do
    path_ = "/meetings/#{URI.encode(meeting_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves details for the specified phone number ID, such as associations,
  capabilities, and product type.
  """
  def get_phone_number(client, phone_number_id, options \\ []) do
    path_ = "/phone-numbers/#{URI.encode(phone_number_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves details for the specified phone number order, such as order
  creation timestamp, phone numbers in E.164 format, product type, and order
  status.
  """
  def get_phone_number_order(client, phone_number_order_id, options \\ []) do
    path_ = "/phone-number-orders/#{URI.encode(phone_number_order_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves the phone number settings for the administrator's AWS account,
  such as the default outbound calling name.
  """
  def get_phone_number_settings(client, options \\ []) do
    path_ = "/settings/phone-number"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets the specified proxy session details for the specified Amazon Chime
  Voice Connector.
  """
  def get_proxy_session(client, proxy_session_id, voice_connector_id, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}/proxy-sessions/#{URI.encode(proxy_session_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets the retention settings for the specified Amazon Chime Enterprise
  account. For more information about retention settings, see [Managing Chat
  Retention
  Policies](https://docs.aws.amazon.com/chime/latest/ag/chat-retention.html)
  in the *Amazon Chime Administration Guide*.
  """
  def get_retention_settings(client, account_id, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/retention-settings"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves room details, such as the room name, for a room in an Amazon
  Chime Enterprise account.
  """
  def get_room(client, account_id, room_id, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/rooms/#{URI.encode(room_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves details for the specified user ID, such as primary email address,
  license type, and personal meeting PIN.

  To retrieve user details with an email address instead of a user ID, use
  the `ListUsers` action, and then filter by email address.
  """
  def get_user(client, account_id, user_id, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/users/#{URI.encode(user_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves settings for the specified user ID, such as any associated phone
  number settings.
  """
  def get_user_settings(client, account_id, user_id, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/users/#{URI.encode(user_id)}/settings"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves details for the specified Amazon Chime Voice Connector, such as
  timestamps, name, outbound host, and encryption requirements.
  """
  def get_voice_connector(client, voice_connector_id, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets the emergency calling configuration details for the specified Amazon
  Chime Voice Connector.
  """
  def get_voice_connector_emergency_calling_configuration(client, voice_connector_id, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}/emergency-calling-configuration"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves details for the specified Amazon Chime Voice Connector group,
  such as timestamps, name, and associated `VoiceConnectorItems`.
  """
  def get_voice_connector_group(client, voice_connector_group_id, options \\ []) do
    path_ = "/voice-connector-groups/#{URI.encode(voice_connector_group_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves the logging configuration details for the specified Amazon Chime
  Voice Connector. Shows whether SIP message logs are enabled for sending to
  Amazon CloudWatch Logs.
  """
  def get_voice_connector_logging_configuration(client, voice_connector_id, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}/logging-configuration"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves origination setting details for the specified Amazon Chime Voice
  Connector.
  """
  def get_voice_connector_origination(client, voice_connector_id, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}/origination"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Gets the proxy configuration details for the specified Amazon Chime Voice
  Connector.
  """
  def get_voice_connector_proxy(client, voice_connector_id, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}/programmable-numbers/proxy"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves the streaming configuration details for the specified Amazon
  Chime Voice Connector. Shows whether media streaming is enabled for sending
  to Amazon Kinesis. It also shows the retention period, in hours, for the
  Amazon Kinesis data.
  """
  def get_voice_connector_streaming_configuration(client, voice_connector_id, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}/streaming-configuration"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves termination setting details for the specified Amazon Chime Voice
  Connector.
  """
  def get_voice_connector_termination(client, voice_connector_id, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}/termination"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the last time a SIP `OPTIONS` ping was received
  from your SIP infrastructure for the specified Amazon Chime Voice
  Connector.
  """
  def get_voice_connector_termination_health(client, voice_connector_id, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}/termination/health"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Sends email to a maximum of 50 users, inviting them to the specified Amazon
  Chime `Team` account. Only `Team` account types are currently supported for
  this action.
  """
  def invite_users(client, account_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/users?operation=add"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Lists the Amazon Chime accounts under the administrator's AWS account. You
  can filter accounts by account name prefix. To find out which Amazon Chime
  account a user belongs to, you can filter by the user's email address,
  which returns one account result.
  """
  def list_accounts(client, max_results \\ nil, name \\ nil, next_token \\ nil, user_email \\ nil, options \\ []) do
    path_ = "/accounts"
    headers = []
    query_ = []
    query_ = if !is_nil(user_email) do
      [{"user-email", user_email} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(name) do
      [{"name", name} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the tags applied to an Amazon Chime SDK attendee resource.
  """
  def list_attendee_tags(client, attendee_id, meeting_id, options \\ []) do
    path_ = "/meetings/#{URI.encode(meeting_id)}/attendees/#{URI.encode(attendee_id)}/tags"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists the attendees for the specified Amazon Chime SDK meeting. For more
  information about the Amazon Chime SDK, see [Using the Amazon Chime
  SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
  *Amazon Chime Developer Guide*.
  """
  def list_attendees(client, meeting_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/meetings/#{URI.encode(meeting_id)}/attendees"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists the bots associated with the administrator's Amazon Chime Enterprise
  account ID.
  """
  def list_bots(client, account_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/bots"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists the tags applied to an Amazon Chime SDK meeting resource.
  """
  def list_meeting_tags(client, meeting_id, options \\ []) do
    path_ = "/meetings/#{URI.encode(meeting_id)}/tags"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists up to 100 active Amazon Chime SDK meetings. For more information
  about the Amazon Chime SDK, see [Using the Amazon Chime
  SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
  *Amazon Chime Developer Guide*.
  """
  def list_meetings(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/meetings"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists the phone number orders for the administrator's Amazon Chime account.
  """
  def list_phone_number_orders(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/phone-number-orders"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists the phone numbers for the specified Amazon Chime account, Amazon
  Chime user, Amazon Chime Voice Connector, or Amazon Chime Voice Connector
  group.
  """
  def list_phone_numbers(client, filter_name \\ nil, filter_value \\ nil, max_results \\ nil, next_token \\ nil, product_type \\ nil, status \\ nil, options \\ []) do
    path_ = "/phone-numbers"
    headers = []
    query_ = []
    query_ = if !is_nil(status) do
      [{"status", status} | query_]
    else
      query_
    end
    query_ = if !is_nil(product_type) do
      [{"product-type", product_type} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(filter_value) do
      [{"filter-value", filter_value} | query_]
    else
      query_
    end
    query_ = if !is_nil(filter_name) do
      [{"filter-name", filter_name} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the proxy sessions for the specified Amazon Chime Voice Connector.
  """
  def list_proxy_sessions(client, voice_connector_id, max_results \\ nil, next_token \\ nil, status \\ nil, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}/proxy-sessions"
    headers = []
    query_ = []
    query_ = if !is_nil(status) do
      [{"status", status} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists the membership details for the specified room in an Amazon Chime
  Enterprise account, such as the members' IDs, email addresses, and names.
  """
  def list_room_memberships(client, account_id, room_id, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/rooms/#{URI.encode(room_id)}/memberships"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists the room details for the specified Amazon Chime Enterprise account.
  Optionally, filter the results by a member ID (user ID or bot ID) to see a
  list of rooms that the member belongs to.
  """
  def list_rooms(client, account_id, max_results \\ nil, member_id \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/rooms"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(member_id) do
      [{"member-id", member_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists the tags applied to an Amazon Chime SDK meeting resource.
  """
  def list_tags_for_resource(client, resource_a_r_n, options \\ []) do
    path_ = "/tags"
    headers = []
    query_ = []
    query_ = if !is_nil(resource_a_r_n) do
      [{"arn", resource_a_r_n} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists the users that belong to the specified Amazon Chime account. You can
  specify an email address to list only the user that the email address
  belongs to.
  """
  def list_users(client, account_id, max_results \\ nil, next_token \\ nil, user_email \\ nil, user_type \\ nil, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/users"
    headers = []
    query_ = []
    query_ = if !is_nil(user_type) do
      [{"user-type", user_type} | query_]
    else
      query_
    end
    query_ = if !is_nil(user_email) do
      [{"user-email", user_email} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists the Amazon Chime Voice Connector groups for the administrator's AWS
  account.
  """
  def list_voice_connector_groups(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/voice-connector-groups"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists the SIP credentials for the specified Amazon Chime Voice Connector.
  """
  def list_voice_connector_termination_credentials(client, voice_connector_id, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}/termination/credentials"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Lists the Amazon Chime Voice Connectors for the administrator's AWS
  account.
  """
  def list_voice_connectors(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/voice-connectors"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Logs out the specified user from all of the devices they are currently
  logged into.
  """
  def logout_user(client, account_id, user_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/users/#{URI.encode(user_id)}?operation=logout"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """
  Creates an events configuration that allows a bot to receive outgoing
  events sent by Amazon Chime. Choose either an HTTPS endpoint or a Lambda
  function ARN. For more information, see `Bot`.
  """
  def put_events_configuration(client, account_id, bot_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/bots/#{URI.encode(bot_id)}/events-configuration"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 201)
  end

  @doc """
  Puts retention settings for the specified Amazon Chime Enterprise account.
  We recommend using AWS CloudTrail to monitor usage of this API for your
  account. For more information, see [Logging Amazon Chime API Calls with AWS
  CloudTrail](https://docs.aws.amazon.com/chime/latest/ag/cloudtrail.html) in
  the *Amazon Chime Administration Guide*.

  To turn off existing retention settings, remove the number of days from the
  corresponding **RetentionDays** field in the **RetentionSettings** object.
  For more information about retention settings, see [Managing Chat Retention
  Policies](https://docs.aws.amazon.com/chime/latest/ag/chat-retention.html)
  in the *Amazon Chime Administration Guide*.
  """
  def put_retention_settings(client, account_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/retention-settings"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 204)
  end

  @doc """
  Puts emergency calling configuration details to the specified Amazon Chime
  Voice Connector, such as emergency phone numbers and calling countries.
  Origination and termination settings must be enabled for the Amazon Chime
  Voice Connector before emergency calling can be configured.
  """
  def put_voice_connector_emergency_calling_configuration(client, voice_connector_id, input, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}/emergency-calling-configuration"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Adds a logging configuration for the specified Amazon Chime Voice
  Connector. The logging configuration specifies whether SIP message logs are
  enabled for sending to Amazon CloudWatch Logs.
  """
  def put_voice_connector_logging_configuration(client, voice_connector_id, input, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}/logging-configuration"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Adds origination settings for the specified Amazon Chime Voice Connector.

  <note> If emergency calling is configured for the Amazon Chime Voice
  Connector, it must be deleted prior to turning off origination settings.

  </note>
  """
  def put_voice_connector_origination(client, voice_connector_id, input, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}/origination"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Puts the specified proxy configuration to the specified Amazon Chime Voice
  Connector.
  """
  def put_voice_connector_proxy(client, voice_connector_id, input, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}/programmable-numbers/proxy"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Adds a streaming configuration for the specified Amazon Chime Voice
  Connector. The streaming configuration specifies whether media streaming is
  enabled for sending to Amazon Kinesis. It also sets the retention period,
  in hours, for the Amazon Kinesis data.
  """
  def put_voice_connector_streaming_configuration(client, voice_connector_id, input, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}/streaming-configuration"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Adds termination settings for the specified Amazon Chime Voice Connector.

  <note> If emergency calling is configured for the Amazon Chime Voice
  Connector, it must be deleted prior to turning off termination settings.

  </note>
  """
  def put_voice_connector_termination(client, voice_connector_id, input, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}/termination"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Adds termination SIP credentials for the specified Amazon Chime Voice
  Connector.
  """
  def put_voice_connector_termination_credentials(client, voice_connector_id, input, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}/termination/credentials?operation=put"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """
  Redacts the specified message from the specified Amazon Chime conversation.
  """
  def redact_conversation_message(client, account_id, conversation_id, message_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/conversations/#{URI.encode(conversation_id)}/messages/#{URI.encode(message_id)}?operation=redact"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Redacts the specified message from the specified Amazon Chime chat room.
  """
  def redact_room_message(client, account_id, message_id, room_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/rooms/#{URI.encode(room_id)}/messages/#{URI.encode(message_id)}?operation=redact"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Regenerates the security token for a bot.
  """
  def regenerate_security_token(client, account_id, bot_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/bots/#{URI.encode(bot_id)}?operation=regenerate-security-token"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Resets the personal meeting PIN for the specified user on an Amazon Chime
  account. Returns the `User` object with the updated personal meeting PIN.
  """
  def reset_personal_p_i_n(client, account_id, user_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/users/#{URI.encode(user_id)}?operation=reset-personal-pin"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Moves a phone number from the **Deletion queue** back into the phone number
  **Inventory**.
  """
  def restore_phone_number(client, phone_number_id, input, options \\ []) do
    path_ = "/phone-numbers/#{URI.encode(phone_number_id)}?operation=restore"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Searches phone numbers that can be ordered.
  """
  def search_available_phone_numbers(client, area_code \\ nil, city \\ nil, country \\ nil, max_results \\ nil, next_token \\ nil, state \\ nil, toll_free_prefix \\ nil, options \\ []) do
    path_ = "/search?type=phone-numbers"
    headers = []
    query_ = []
    query_ = if !is_nil(toll_free_prefix) do
      [{"toll-free-prefix", toll_free_prefix} | query_]
    else
      query_
    end
    query_ = if !is_nil(state) do
      [{"state", state} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"next-token", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"max-results", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(country) do
      [{"country", country} | query_]
    else
      query_
    end
    query_ = if !is_nil(city) do
      [{"city", city} | query_]
    else
      query_
    end
    query_ = if !is_nil(area_code) do
      [{"area-code", area_code} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Applies the specified tags to the specified Amazon Chime SDK attendee.
  """
  def tag_attendee(client, attendee_id, meeting_id, input, options \\ []) do
    path_ = "/meetings/#{URI.encode(meeting_id)}/attendees/#{URI.encode(attendee_id)}/tags?operation=add"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """
  Applies the specified tags to the specified Amazon Chime SDK meeting.
  """
  def tag_meeting(client, meeting_id, input, options \\ []) do
    path_ = "/meetings/#{URI.encode(meeting_id)}/tags?operation=add"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """
  Applies the specified tags to the specified Amazon Chime SDK meeting
  resource.
  """
  def tag_resource(client, input, options \\ []) do
    path_ = "/tags?operation=tag-resource"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """
  Untags the specified tags from the specified Amazon Chime SDK attendee.
  """
  def untag_attendee(client, attendee_id, meeting_id, input, options \\ []) do
    path_ = "/meetings/#{URI.encode(meeting_id)}/attendees/#{URI.encode(attendee_id)}/tags?operation=delete"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """
  Untags the specified tags from the specified Amazon Chime SDK meeting.
  """
  def untag_meeting(client, meeting_id, input, options \\ []) do
    path_ = "/meetings/#{URI.encode(meeting_id)}/tags?operation=delete"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """
  Untags the specified tags from the specified Amazon Chime SDK meeting
  resource.
  """
  def untag_resource(client, input, options \\ []) do
    path_ = "/tags?operation=untag-resource"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """
  Updates account details for the specified Amazon Chime account. Currently,
  only account name updates are supported for this action.
  """
  def update_account(client, account_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates the settings for the specified Amazon Chime account. You can update
  settings for remote control of shared screens, or for the dial-out option.
  For more information about these settings, see [Use the Policies
  Page](https://docs.aws.amazon.com/chime/latest/ag/policies.html) in the
  *Amazon Chime Administration Guide*.
  """
  def update_account_settings(client, account_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/settings"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 204)
  end

  @doc """
  Updates the status of the specified bot, such as starting or stopping the
  bot from running in your Amazon Chime Enterprise account.
  """
  def update_bot(client, account_id, bot_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/bots/#{URI.encode(bot_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates global settings for the administrator's AWS account, such as Amazon
  Chime Business Calling and Amazon Chime Voice Connector settings.
  """
  def update_global_settings(client, input, options \\ []) do
    path_ = "/settings"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 204)
  end

  @doc """
  Updates phone number details, such as product type or calling name, for the
  specified phone number ID. You can update one phone number detail at a
  time. For example, you can update either the product type or the calling
  name in one action.

  For toll-free numbers, you must use the Amazon Chime Voice Connector
  product type.

  Updates to outbound calling names can take up to 72 hours to complete.
  Pending updates to outbound calling names must be complete before you can
  request another update.
  """
  def update_phone_number(client, phone_number_id, input, options \\ []) do
    path_ = "/phone-numbers/#{URI.encode(phone_number_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates the phone number settings for the administrator's AWS account, such
  as the default outbound calling name. You can update the default outbound
  calling name once every seven days. Outbound calling names can take up to
  72 hours to update.
  """
  def update_phone_number_settings(client, input, options \\ []) do
    path_ = "/settings/phone-number"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 204)
  end

  @doc """
  Updates the specified proxy session details, such as voice or SMS
  capabilities.
  """
  def update_proxy_session(client, proxy_session_id, voice_connector_id, input, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}/proxy-sessions/#{URI.encode(proxy_session_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Updates room details, such as the room name, for a room in an Amazon Chime
  Enterprise account.
  """
  def update_room(client, account_id, room_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/rooms/#{URI.encode(room_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates room membership details, such as the member role, for a room in an
  Amazon Chime Enterprise account. The member role designates whether the
  member is a chat room administrator or a general chat room member. The
  member role can be updated only for user IDs.
  """
  def update_room_membership(client, account_id, member_id, room_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/rooms/#{URI.encode(room_id)}/memberships/#{URI.encode(member_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates user details for a specified user ID. Currently, only `LicenseType`
  updates are supported for this action.
  """
  def update_user(client, account_id, user_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/users/#{URI.encode(user_id)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates the settings for the specified user, such as phone number settings.
  """
  def update_user_settings(client, account_id, user_id, input, options \\ []) do
    path_ = "/accounts/#{URI.encode(account_id)}/users/#{URI.encode(user_id)}/settings"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 204)
  end

  @doc """
  Updates details for the specified Amazon Chime Voice Connector.
  """
  def update_voice_connector(client, voice_connector_id, input, options \\ []) do
    path_ = "/voice-connectors/#{URI.encode(voice_connector_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates details for the specified Amazon Chime Voice Connector group, such
  as the name and Amazon Chime Voice Connector priority ranking.
  """
  def update_voice_connector_group(client, voice_connector_group_id, input, options \\ []) do
    path_ = "/voice-connector-groups/#{URI.encode(voice_connector_group_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 202)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "chime",
                        region:  "us-east-1"}
    host = build_host("chime", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    {client, fun} = Application.get_env(:aws_elixir, :http_client, {Aws.Internal.HttpClient, :request})
    apply(client, fun, [method, url, payload, headers, options, success_status_code])
  end



  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{endpoint: endpoint}) do
    "#{endpoint_prefix}.#{endpoint}"
  end

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: encode!(input), else: ""
  end

  defp encode!(input) do
    {encoder, fun} = Application.get_env(:aws_elixir, :json_encoder, {Poison, :encode!})
    apply(encoder, fun, [input])
  end
end
