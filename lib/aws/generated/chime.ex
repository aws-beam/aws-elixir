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

  @typedoc """

  ## Example:

      create_media_capture_pipeline_response() :: %{
        "MediaCapturePipeline" => media_capture_pipeline()
      }

  """
  @type create_media_capture_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_meeting_dial_out_response() :: %{
        "TransactionId" => String.t()
      }

  """
  @type create_meeting_dial_out_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      events_configuration() :: %{
        "BotId" => String.t(),
        "LambdaFunctionArn" => String.t(),
        "OutboundEventsHTTPSEndpoint" => String.t()
      }

  """
  @type events_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      streaming_configuration() :: %{
        "DataRetentionInHours" => integer(),
        "Disabled" => boolean(),
        "StreamingNotificationTargets" => list(streaming_notification_target()())
      }

  """
  @type streaming_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_channel_memberships_for_app_instance_user_request() :: %{
        optional("AppInstanceUserArn") => String.t(),
        optional("ChimeBearer") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_channel_memberships_for_app_instance_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      business_calling_settings() :: %{
        "CdrBucket" => String.t()
      }

  """
  @type business_calling_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_channel_request() :: %{
        optional("ChimeBearer") => String.t()
      }

  """
  @type delete_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_phone_number_request() :: %{
        required("PhoneNumberIds") => list(String.t()())
      }

  """
  @type batch_delete_phone_number_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_instances_response() :: %{
        "AppInstances" => list(app_instance_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_app_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_channel_bans_request() :: %{
        optional("ChimeBearer") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_channel_bans_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_voice_connector_termination_credentials_request() :: %{
        optional("Credentials") => list(credential()())
      }

  """
  @type put_voice_connector_termination_credentials_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_sip_rule_request() :: %{
        optional("Disabled") => boolean(),
        optional("TargetApplications") => list(sip_rule_target_application()()),
        required("Name") => String.t()
      }

  """
  @type update_sip_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sip_rule() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "Disabled" => boolean(),
        "Name" => String.t(),
        "SipRuleId" => String.t(),
        "TargetApplications" => list(sip_rule_target_application()()),
        "TriggerType" => list(any()),
        "TriggerValue" => String.t(),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type sip_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_channel_moderated_by_app_instance_user_request() :: %{
        optional("ChimeBearer") => String.t(),
        required("AppInstanceUserArn") => String.t()
      }

  """
  @type describe_channel_moderated_by_app_instance_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_phone_number_order_response() :: %{
        "PhoneNumberOrder" => phone_number_order()
      }

  """
  @type create_phone_number_order_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_app_instance_admin_request() :: %{}

  """
  @type delete_app_instance_admin_request() :: %{}

  @typedoc """

  ## Example:

      describe_channel_moderator_response() :: %{
        "ChannelModerator" => channel_moderator()
      }

  """
  @type describe_channel_moderator_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_update_user_response() :: %{
        "UserErrors" => list(user_error()())
      }

  """
  @type batch_update_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_sip_media_application_request() :: %{
        required("AwsRegion") => String.t(),
        required("Endpoints") => list(sip_media_application_endpoint()()),
        required("Name") => String.t()
      }

  """
  @type create_sip_media_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_app_instance_user_request() :: %{}

  """
  @type delete_app_instance_user_request() :: %{}

  @typedoc """

  ## Example:

      update_sip_media_application_call_response() :: %{
        "SipMediaApplicationCall" => sip_media_application_call()
      }

  """
  @type update_sip_media_application_call_response() :: %{String.t() => any()}

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

      batch_create_room_membership_response() :: %{
        "Errors" => list(member_error()())
      }

  """
  @type batch_create_room_membership_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_instance_admins_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_app_instance_admins_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member_error() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t(),
        "MemberId" => String.t()
      }

  """
  @type member_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_sip_media_application_logging_configuration_request() :: %{
        optional("SipMediaApplicationLoggingConfiguration") => sip_media_application_logging_configuration()
      }

  """
  @type put_sip_media_application_logging_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      proxy() :: %{
        "DefaultSessionExpiryMinutes" => integer(),
        "Disabled" => boolean(),
        "FallBackPhoneNumber" => String.t(),
        "PhoneNumberCountries" => list(String.t()())
      }

  """
  @type proxy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_proxy_session_request() :: %{
        optional("ExpiryMinutes") => integer(),
        required("Capabilities") => list(list(any())())
      }

  """
  @type update_proxy_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      redact_room_message_request() :: %{}

  """
  @type redact_room_message_request() :: %{}

  @typedoc """

  ## Example:

      batch_update_phone_number_response() :: %{
        "PhoneNumberErrors" => list(phone_number_error()())
      }

  """
  @type batch_update_phone_number_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_account_response() :: %{
        "Account" => account()
      }

  """
  @type get_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      redact_channel_message_response() :: %{
        "ChannelArn" => String.t(),
        "MessageId" => String.t()
      }

  """
  @type redact_channel_message_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_termination_health_request() :: %{}

  """
  @type get_voice_connector_termination_health_request() :: %{}

  @typedoc """

  ## Example:

      validate_e911_address_response() :: %{
        "Address" => address(),
        "AddressExternalId" => String.t(),
        "CandidateAddressList" => list(candidate_address()()),
        "ValidationResult" => integer()
      }

  """
  @type validate_e911_address_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_attendee_response() :: %{
        "Attendee" => attendee()
      }

  """
  @type get_attendee_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_room_request() :: %{}

  """
  @type delete_room_request() :: %{}

  @typedoc """

  ## Example:

      reset_personal_pin_request() :: %{}

  """
  @type reset_personal_pin_request() :: %{}

  @typedoc """

  ## Example:

      create_channel_moderator_response() :: %{
        "ChannelArn" => String.t(),
        "ChannelModerator" => identity()
      }

  """
  @type create_channel_moderator_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_voice_connector_response() :: %{
        "VoiceConnector" => voice_connector()
      }

  """
  @type update_voice_connector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_phone_number_orders_response() :: %{
        "NextToken" => String.t(),
        "PhoneNumberOrders" => list(phone_number_order()())
      }

  """
  @type list_phone_number_orders_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      termination_health() :: %{
        "Source" => String.t(),
        "Timestamp" => non_neg_integer()
      }

  """
  @type termination_health() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_channel_moderator_request() :: %{
        optional("ChimeBearer") => String.t()
      }

  """
  @type delete_channel_moderator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      redact_conversation_message_response() :: %{}

  """
  @type redact_conversation_message_response() :: %{}

  @typedoc """

  ## Example:

      room() :: %{
        "AccountId" => String.t(),
        "CreatedBy" => String.t(),
        "CreatedTimestamp" => non_neg_integer(),
        "Name" => String.t(),
        "RoomId" => String.t(),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type room() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_channel_response() :: %{
        "ChannelArn" => String.t()
      }

  """
  @type create_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_app_instance_response() :: %{
        "AppInstanceArn" => String.t()
      }

  """
  @type create_app_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_app_instance_response() :: %{
        "AppInstanceArn" => String.t()
      }

  """
  @type update_app_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel_membership_for_app_instance_user_summary() :: %{
        "AppInstanceUserMembershipSummary" => app_instance_user_membership_summary(),
        "ChannelSummary" => channel_summary()
      }

  """
  @type channel_membership_for_app_instance_user_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      participant() :: %{
        "PhoneNumber" => String.t(),
        "ProxyPhoneNumber" => String.t()
      }

  """
  @type participant() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_sip_media_application_request() :: %{
        optional("Endpoints") => list(sip_media_application_endpoint()()),
        optional("Name") => String.t()
      }

  """
  @type update_sip_media_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_unsuspend_user_response() :: %{
        "UserErrors" => list(user_error()())
      }

  """
  @type batch_unsuspend_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_voice_connector_group_request() :: %{}

  """
  @type delete_voice_connector_group_request() :: %{}

  @typedoc """

  ## Example:

      origination() :: %{
        "Disabled" => boolean(),
        "Routes" => list(origination_route()())
      }

  """
  @type origination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_room_memberships_response() :: %{
        "NextToken" => String.t(),
        "RoomMemberships" => list(room_membership()())
      }

  """
  @type list_room_memberships_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_voice_connectors_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_voice_connectors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_user_response() :: %{
        "User" => user()
      }

  """
  @type update_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      phone_number_country() :: %{
        "CountryCode" => String.t(),
        "SupportedPhoneNumberTypes" => list(list(any())())
      }

  """
  @type phone_number_country() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_meetings_response() :: %{
        "Meetings" => list(meeting()()),
        "NextToken" => String.t()
      }

  """
  @type list_meetings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      geo_match_params() :: %{
        "AreaCode" => String.t(),
        "Country" => String.t()
      }

  """
  @type geo_match_params() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_available_phone_numbers_response() :: %{
        "E164PhoneNumbers" => list(String.t()()),
        "NextToken" => String.t()
      }

  """
  @type search_available_phone_numbers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_request() :: %{}

  """
  @type get_voice_connector_request() :: %{}

  @typedoc """

  ## Example:

      put_voice_connector_origination_response() :: %{
        "Origination" => origination()
      }

  """
  @type put_voice_connector_origination_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_channel_messages_response() :: %{
        "ChannelArn" => String.t(),
        "ChannelMessages" => list(channel_message_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_channel_messages_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_meeting_request() :: %{
        required("Tags") => list(tag()())
      }

  """
  @type tag_meeting_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_attendee_request() :: %{
        required("Tags") => list(tag()())
      }

  """
  @type tag_attendee_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_rooms_response() :: %{
        "NextToken" => String.t(),
        "Rooms" => list(room()())
      }

  """
  @type list_rooms_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_sip_rule_response() :: %{
        "SipRule" => sip_rule()
      }

  """
  @type create_sip_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_phone_numbers_with_voice_connector_group_request() :: %{
        optional("ForceAssociate") => boolean(),
        required("E164PhoneNumbers") => list(String.t()())
      }

  """
  @type associate_phone_numbers_with_voice_connector_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_create_channel_membership_response() :: %{
        "BatchChannelMemberships" => batch_channel_memberships(),
        "Errors" => list(batch_create_channel_membership_error()())
      }

  """
  @type batch_create_channel_membership_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_media_capture_pipeline_response() :: %{
        "MediaCapturePipeline" => media_capture_pipeline()
      }

  """
  @type get_media_capture_pipeline_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_voice_connector_group_response() :: %{
        "VoiceConnectorGroup" => voice_connector_group()
      }

  """
  @type create_voice_connector_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_voice_connector_termination_credentials_request() :: %{}

  """
  @type list_voice_connector_termination_credentials_request() :: %{}

  @typedoc """

  ## Example:

      get_account_settings_request() :: %{}

  """
  @type get_account_settings_request() :: %{}

  @typedoc """

  ## Example:

      create_meeting_with_attendees_request() :: %{
        optional("Attendees") => list(create_attendee_request_item()()),
        optional("ExternalMeetingId") => String.t(),
        optional("MediaRegion") => String.t(),
        optional("MeetingHostId") => String.t(),
        optional("NotificationsConfiguration") => meeting_notification_configuration(),
        optional("Tags") => list(tag()()),
        required("ClientRequestToken") => String.t()
      }

  """
  @type create_meeting_with_attendees_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_phone_number_settings_request() :: %{
        required("CallingName") => String.t()
      }

  """
  @type update_phone_number_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      video_artifacts_configuration() :: %{
        "MuxType" => list(any()),
        "State" => list(any())
      }

  """
  @type video_artifacts_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_proxy_response() :: %{
        "Proxy" => proxy()
      }

  """
  @type get_voice_connector_proxy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_instance_admins_response() :: %{
        "AppInstanceAdmins" => list(app_instance_admin_summary()()),
        "AppInstanceArn" => String.t(),
        "NextToken" => String.t()
      }

  """
  @type list_app_instance_admins_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_bot_request() :: %{}

  """
  @type get_bot_request() :: %{}

  @typedoc """

  ## Example:

      get_voice_connector_logging_configuration_request() :: %{}

  """
  @type get_voice_connector_logging_configuration_request() :: %{}

  @typedoc """

  ## Example:

      service_failure_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }

  """
  @type service_failure_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_account_settings_response() :: %{
        "AccountSettings" => account_settings()
      }

  """
  @type get_account_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_sip_rule_request() :: %{}

  """
  @type delete_sip_rule_request() :: %{}

  @typedoc """

  ## Example:

      get_voice_connector_emergency_calling_configuration_request() :: %{}

  """
  @type get_voice_connector_emergency_calling_configuration_request() :: %{}

  @typedoc """

  ## Example:

      restore_phone_number_request() :: %{}

  """
  @type restore_phone_number_request() :: %{}

  @typedoc """

  ## Example:

      start_meeting_transcription_response() :: %{}

  """
  @type start_meeting_transcription_response() :: %{}

  @typedoc """

  ## Example:

      identity() :: %{
        "Arn" => String.t(),
        "Name" => String.t()
      }

  """
  @type identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_voice_connector_emergency_calling_configuration_request() :: %{
        required("EmergencyCallingConfiguration") => emergency_calling_configuration()
      }

  """
  @type put_voice_connector_emergency_calling_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }

  """
  @type forbidden_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      meeting() :: %{
        "ExternalMeetingId" => String.t(),
        "MediaPlacement" => media_placement(),
        "MediaRegion" => String.t(),
        "MeetingId" => String.t()
      }

  """
  @type meeting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_media_capture_pipeline_request() :: %{}

  """
  @type get_media_capture_pipeline_request() :: %{}

  @typedoc """

  ## Example:

      get_voice_connector_response() :: %{
        "VoiceConnector" => voice_connector()
      }

  """
  @type get_voice_connector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_bot_response() :: %{
        "Bot" => bot()
      }

  """
  @type get_bot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_proxy_session_response() :: %{
        "ProxySession" => proxy_session()
      }

  """
  @type create_proxy_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_voice_connector_termination_request() :: %{
        required("Termination") => termination()
      }

  """
  @type put_voice_connector_termination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_channel_moderated_by_app_instance_user_response() :: %{
        "Channel" => channel_moderated_by_app_instance_user_summary()
      }

  """
  @type describe_channel_moderated_by_app_instance_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logout_user_request() :: %{}

  """
  @type logout_user_request() :: %{}

  @typedoc """

  ## Example:

      update_account_settings_response() :: %{}

  """
  @type update_account_settings_response() :: %{}

  @typedoc """

  ## Example:

      channel_membership() :: %{
        "ChannelArn" => String.t(),
        "CreatedTimestamp" => non_neg_integer(),
        "InvitedBy" => identity(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "Member" => identity(),
        "Type" => list(any())
      }

  """
  @type channel_membership() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      selected_video_streams() :: %{
        "AttendeeIds" => list(String.t()()),
        "ExternalUserIds" => list(String.t()())
      }

  """
  @type selected_video_streams() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      telephony_settings() :: %{
        "InboundCalling" => boolean(),
        "OutboundCalling" => boolean(),
        "SMS" => boolean()
      }

  """
  @type telephony_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      phone_number_association() :: %{
        "AssociatedTimestamp" => non_neg_integer(),
        "Name" => list(any()),
        "Value" => String.t()
      }

  """
  @type phone_number_association() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_user_response() :: %{
        "User" => user()
      }

  """
  @type get_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unauthorized_client_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }

  """
  @type unauthorized_client_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_streaming_configuration_request() :: %{}

  """
  @type get_voice_connector_streaming_configuration_request() :: %{}

  @typedoc """

  ## Example:

      phone_number() :: %{
        "Associations" => list(phone_number_association()()),
        "CallingName" => String.t(),
        "CallingNameStatus" => list(any()),
        "Capabilities" => phone_number_capabilities(),
        "Country" => String.t(),
        "CreatedTimestamp" => non_neg_integer(),
        "DeletionTimestamp" => non_neg_integer(),
        "E164PhoneNumber" => String.t(),
        "PhoneNumberId" => String.t(),
        "ProductType" => list(any()),
        "Status" => list(any()),
        "Type" => list(any()),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type phone_number() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      redact_channel_message_request() :: %{
        optional("ChimeBearer") => String.t()
      }

  """
  @type redact_channel_message_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_instance_request() :: %{}

  """
  @type describe_app_instance_request() :: %{}

  @typedoc """

  ## Example:

      delete_app_instance_streaming_configurations_request() :: %{}

  """
  @type delete_app_instance_streaming_configurations_request() :: %{}

  @typedoc """

  ## Example:

      termination() :: %{
        "CallingRegions" => list(String.t()()),
        "CidrAllowedList" => list(String.t()()),
        "CpsLimit" => integer(),
        "DefaultPhoneNumber" => String.t(),
        "Disabled" => boolean()
      }

  """
  @type termination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_phone_number_order_request() :: %{}

  """
  @type get_phone_number_order_request() :: %{}

  @typedoc """

  ## Example:

      list_app_instances_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_app_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_channel_message_request() :: %{
        optional("ChimeBearer") => String.t(),
        optional("Content") => String.t(),
        optional("Metadata") => String.t()
      }

  """
  @type update_channel_message_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_room_membership_request() :: %{}

  """
  @type delete_room_membership_request() :: %{}

  @typedoc """

  ## Example:

      update_phone_number_response() :: %{
        "PhoneNumber" => phone_number()
      }

  """
  @type update_phone_number_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_channel_moderator_request() :: %{
        optional("ChimeBearer") => String.t(),
        required("ChannelModeratorArn") => String.t()
      }

  """
  @type create_channel_moderator_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_app_instance_request() :: %{
        optional("Metadata") => String.t(),
        required("Name") => String.t()
      }

  """
  @type update_app_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      content_artifacts_configuration() :: %{
        "MuxType" => list(any()),
        "State" => list(any())
      }

  """
  @type content_artifacts_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttled_client_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }

  """
  @type throttled_client_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_events_configuration_request() :: %{}

  """
  @type delete_events_configuration_request() :: %{}

  @typedoc """

  ## Example:

      signin_delegate_group() :: %{
        "GroupName" => String.t()
      }

  """
  @type signin_delegate_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_channel_membership_response() :: %{
        "ChannelMembership" => channel_membership()
      }

  """
  @type describe_channel_membership_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_room_response() :: %{
        "Room" => room()
      }

  """
  @type update_room_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_termination_health_response() :: %{
        "TerminationHealth" => termination_health()
      }

  """
  @type get_voice_connector_termination_health_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_phone_numbers_with_voice_connector_request() :: %{
        optional("ForceAssociate") => boolean(),
        required("E164PhoneNumbers") => list(String.t()())
      }

  """
  @type associate_phone_numbers_with_voice_connector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_user_settings_response() :: %{
        "UserSettings" => user_settings()
      }

  """
  @type get_user_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_channel_ban_request() :: %{
        optional("ChimeBearer") => String.t(),
        required("MemberArn") => String.t()
      }

  """
  @type create_channel_ban_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_voice_connector_origination_request() :: %{}

  """
  @type delete_voice_connector_origination_request() :: %{}

  @typedoc """

  ## Example:

      create_meeting_response() :: %{
        "Meeting" => meeting()
      }

  """
  @type create_meeting_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_instance_user_membership_summary() :: %{
        "ReadMarkerTimestamp" => non_neg_integer(),
        "Type" => list(any())
      }

  """
  @type app_instance_user_membership_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_meeting_tags_response() :: %{
        "Tags" => list(tag()())
      }

  """
  @type list_meeting_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_meeting_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_meeting_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_instance_users_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("AppInstanceArn") => String.t()
      }

  """
  @type list_app_instance_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_media_capture_pipelines_response() :: %{
        "MediaCapturePipelines" => list(media_capture_pipeline()()),
        "NextToken" => String.t()
      }

  """
  @type list_media_capture_pipelines_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_channel_message_response() :: %{
        "ChannelArn" => String.t(),
        "MessageId" => String.t()
      }

  """
  @type send_channel_message_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_meeting_response() :: %{
        "Meeting" => meeting()
      }

  """
  @type get_meeting_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sip_media_applications_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_sip_media_applications_request() :: %{String.t() => any()}

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

      ordered_phone_number() :: %{
        "E164PhoneNumber" => String.t(),
        "Status" => list(any())
      }

  """
  @type ordered_phone_number() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_app_instance_retention_settings_request() :: %{
        required("AppInstanceRetentionSettings") => app_instance_retention_settings()
      }

  """
  @type put_app_instance_retention_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sip_media_application_logging_configuration_response() :: %{
        "SipMediaApplicationLoggingConfiguration" => sip_media_application_logging_configuration()
      }

  """
  @type get_sip_media_application_logging_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_proxy_session_response() :: %{
        "ProxySession" => proxy_session()
      }

  """
  @type update_proxy_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_phone_number_order_request() :: %{
        required("E164PhoneNumbers") => list(String.t()()),
        required("ProductType") => list(any())
      }

  """
  @type create_phone_number_order_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_sip_media_application_request() :: %{}

  """
  @type delete_sip_media_application_request() :: %{}

  @typedoc """

  ## Example:

      get_sip_media_application_response() :: %{
        "SipMediaApplication" => sip_media_application()
      }

  """
  @type get_sip_media_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_meeting_transcription_request() :: %{}

  """
  @type stop_meeting_transcription_request() :: %{}

  @typedoc """

  ## Example:

      get_sip_rule_response() :: %{
        "SipRule" => sip_rule()
      }

  """
  @type get_sip_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      voice_connector_settings() :: %{
        "CdrBucket" => String.t()
      }

  """
  @type voice_connector_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_proxy_session_request() :: %{}

  """
  @type delete_proxy_session_request() :: %{}

  @typedoc """

  ## Example:

      logging_configuration() :: %{
        "EnableMediaMetricLogs" => boolean(),
        "EnableSIPLogs" => boolean()
      }

  """
  @type logging_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_app_instance_streaming_configurations_request() :: %{}

  """
  @type get_app_instance_streaming_configurations_request() :: %{}

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

      delete_media_capture_pipeline_request() :: %{}

  """
  @type delete_media_capture_pipeline_request() :: %{}

  @typedoc """

  ## Example:

      restore_phone_number_response() :: %{
        "PhoneNumber" => phone_number()
      }

  """
  @type restore_phone_number_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_phone_number_orders_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_phone_number_orders_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      meeting_notification_configuration() :: %{
        "SnsTopicArn" => String.t(),
        "SqsQueueArn" => String.t()
      }

  """
  @type meeting_notification_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_channels_moderated_by_app_instance_user_response() :: %{
        "Channels" => list(channel_moderated_by_app_instance_user_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_channels_moderated_by_app_instance_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_voice_connector_termination_response() :: %{
        "Termination" => termination()
      }

  """
  @type put_voice_connector_termination_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_retention_settings_response() :: %{
        "InitiateDeletionTimestamp" => non_neg_integer(),
        "RetentionSettings" => retention_settings()
      }

  """
  @type put_retention_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_voice_connector_group_request() :: %{
        required("Name") => String.t(),
        required("VoiceConnectorItems") => list(voice_connector_item()())
      }

  """
  @type update_voice_connector_group_request() :: %{String.t() => any()}

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

      list_supported_phone_number_countries_response() :: %{
        "PhoneNumberCountries" => list(phone_number_country()())
      }

  """
  @type list_supported_phone_number_countries_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_sip_media_application_response() :: %{
        "SipMediaApplication" => sip_media_application()
      }

  """
  @type update_sip_media_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_channels_moderated_by_app_instance_user_request() :: %{
        optional("AppInstanceUserArn") => String.t(),
        optional("ChimeBearer") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_channels_moderated_by_app_instance_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      d_n_i_s_emergency_calling_configuration() :: %{
        "CallingCountry" => String.t(),
        "EmergencyPhoneNumber" => String.t(),
        "TestPhoneNumber" => String.t()
      }

  """
  @type d_n_i_s_emergency_calling_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_logging_configuration_response() :: %{
        "LoggingConfiguration" => logging_configuration()
      }

  """
  @type get_voice_connector_logging_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_create_room_membership_request() :: %{
        required("MembershipItemList") => list(membership_item()())
      }

  """
  @type batch_create_room_membership_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_app_instance_streaming_configurations_response() :: %{
        "AppInstanceStreamingConfigurations" => list(app_instance_streaming_configuration()())
      }

  """
  @type get_app_instance_streaming_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      retention_settings() :: %{
        "ConversationRetentionSettings" => conversation_retention_settings(),
        "RoomRetentionSettings" => room_retention_settings()
      }

  """
  @type retention_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_phone_numbers_from_voice_connector_request() :: %{
        required("E164PhoneNumbers") => list(String.t()())
      }

  """
  @type disassociate_phone_numbers_from_voice_connector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_voice_connector_proxy_request() :: %{}

  """
  @type delete_voice_connector_proxy_request() :: %{}

  @typedoc """

  ## Example:

      list_voice_connector_groups_response() :: %{
        "NextToken" => String.t(),
        "VoiceConnectorGroups" => list(voice_connector_group()())
      }

  """
  @type list_voice_connector_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_phone_number_with_user_response() :: %{}

  """
  @type associate_phone_number_with_user_response() :: %{}

  @typedoc """

  ## Example:

      list_sip_rules_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SipMediaApplicationId") => String.t()
      }

  """
  @type list_sip_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_channel_moderator_request() :: %{
        optional("ChimeBearer") => String.t()
      }

  """
  @type describe_channel_moderator_request() :: %{String.t() => any()}

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

      room_membership() :: %{
        "InvitedBy" => String.t(),
        "Member" => member(),
        "Role" => list(any()),
        "RoomId" => String.t(),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type room_membership() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel_summary() :: %{
        "ChannelArn" => String.t(),
        "LastMessageTimestamp" => non_neg_integer(),
        "Metadata" => String.t(),
        "Mode" => list(any()),
        "Name" => String.t(),
        "Privacy" => list(any())
      }

  """
  @type channel_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_app_instance_retention_settings_request() :: %{}

  """
  @type get_app_instance_retention_settings_request() :: %{}

  @typedoc """

  ## Example:

      media_capture_pipeline() :: %{
        "ChimeSdkMeetingConfiguration" => chime_sdk_meeting_configuration(),
        "CreatedTimestamp" => non_neg_integer(),
        "MediaPipelineId" => String.t(),
        "SinkArn" => String.t(),
        "SinkType" => list(any()),
        "SourceArn" => String.t(),
        "SourceType" => list(any()),
        "Status" => list(any()),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type media_capture_pipeline() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_channel_message_response() :: %{
        "ChannelMessage" => channel_message()
      }

  """
  @type get_channel_message_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_proxy_sessions_response() :: %{
        "NextToken" => String.t(),
        "ProxySessions" => list(proxy_session()())
      }

  """
  @type list_proxy_sessions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bots_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_bots_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_channel_membership_request() :: %{
        optional("ChimeBearer") => String.t()
      }

  """
  @type describe_channel_membership_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_meeting_request() :: %{}

  """
  @type delete_meeting_request() :: %{}

  @typedoc """

  ## Example:

      list_room_memberships_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_room_memberships_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_accounts_response() :: %{
        "Accounts" => list(account()()),
        "NextToken" => String.t()
      }

  """
  @type list_accounts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_voice_connector_streaming_configuration_response() :: %{
        "StreamingConfiguration" => streaming_configuration()
      }

  """
  @type put_voice_connector_streaming_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validate_e911_address_request() :: %{
        required("AwsAccountId") => String.t(),
        required("City") => String.t(),
        required("Country") => String.t(),
        required("PostalCode") => String.t(),
        required("State") => String.t(),
        required("StreetInfo") => String.t(),
        required("StreetNumber") => String.t()
      }

  """
  @type validate_e911_address_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_user_request() :: %{}

  """
  @type get_user_request() :: %{}

  @typedoc """

  ## Example:

      list_voice_connector_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_voice_connector_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_phone_numbers_from_voice_connector_response() :: %{
        "PhoneNumberErrors" => list(phone_number_error()())
      }

  """
  @type disassociate_phone_numbers_from_voice_connector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_termination_request() :: %{}

  """
  @type get_voice_connector_termination_request() :: %{}

  @typedoc """

  ## Example:

      list_sip_rules_response() :: %{
        "NextToken" => String.t(),
        "SipRules" => list(sip_rule()())
      }

  """
  @type list_sip_rules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_phone_number_with_user_request() :: %{
        required("E164PhoneNumber") => String.t()
      }

  """
  @type associate_phone_number_with_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_phone_numbers_from_voice_connector_group_request() :: %{
        required("E164PhoneNumbers") => list(String.t()())
      }

  """
  @type disassociate_phone_numbers_from_voice_connector_group_request() :: %{String.t() => any()}

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

      describe_app_instance_user_response() :: %{
        "AppInstanceUser" => app_instance_user()
      }

  """
  @type describe_app_instance_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_sip_rule_request() :: %{
        optional("Disabled") => boolean(),
        required("Name") => String.t(),
        required("TargetApplications") => list(sip_rule_target_application()()),
        required("TriggerType") => list(any()),
        required("TriggerValue") => String.t()
      }

  """
  @type create_sip_rule_request() :: %{String.t() => any()}

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

      get_user_settings_request() :: %{}

  """
  @type get_user_settings_request() :: %{}

  @typedoc """

  ## Example:

      channel_ban_summary() :: %{
        "Member" => identity()
      }

  """
  @type channel_ban_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_voice_connector_streaming_configuration_request() :: %{
        required("StreamingConfiguration") => streaming_configuration()
      }

  """
  @type put_voice_connector_streaming_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_phone_number_response() :: %{
        "PhoneNumberErrors" => list(phone_number_error()())
      }

  """
  @type batch_delete_phone_number_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_streaming_configuration_response() :: %{
        "StreamingConfiguration" => streaming_configuration()
      }

  """
  @type get_voice_connector_streaming_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      proxy_session() :: %{
        "Capabilities" => list(list(any())()),
        "CreatedTimestamp" => non_neg_integer(),
        "EndedTimestamp" => non_neg_integer(),
        "ExpiryMinutes" => integer(),
        "GeoMatchLevel" => list(any()),
        "GeoMatchParams" => geo_match_params(),
        "Name" => String.t(),
        "NumberSelectionBehavior" => list(any()),
        "Participants" => list(participant()()),
        "ProxySessionId" => String.t(),
        "Status" => list(any()),
        "UpdatedTimestamp" => non_neg_integer(),
        "VoiceConnectorId" => String.t()
      }

  """
  @type proxy_session() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_phone_number_order_response() :: %{
        "PhoneNumberOrder" => phone_number_order()
      }

  """
  @type get_phone_number_order_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_instance_response() :: %{
        "AppInstance" => app_instance()
      }

  """
  @type describe_app_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_channel_response() :: %{
        "Channel" => channel()
      }

  """
  @type describe_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_meeting_tags_request() :: %{}

  """
  @type list_meeting_tags_request() :: %{}

  @typedoc """

  ## Example:

      delete_channel_ban_request() :: %{
        optional("ChimeBearer") => String.t()
      }

  """
  @type delete_channel_ban_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_app_instance_user_response() :: %{
        "AppInstanceUserArn" => String.t()
      }

  """
  @type update_app_instance_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_room_membership_response() :: %{
        "RoomMembership" => room_membership()
      }

  """
  @type create_room_membership_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_app_instance_users_response() :: %{
        "AppInstanceArn" => String.t(),
        "AppInstanceUsers" => list(app_instance_user_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_app_instance_users_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_phone_numbers_request() :: %{
        optional("FilterName") => list(any()),
        optional("FilterValue") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ProductType") => list(any()),
        optional("Status") => list(any())
      }

  """
  @type list_phone_numbers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_limit_exceeded_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }

  """
  @type resource_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_instance_summary() :: %{
        "AppInstanceArn" => String.t(),
        "Metadata" => String.t(),
        "Name" => String.t()
      }

  """
  @type app_instance_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_voice_connector_request() :: %{
        optional("AwsRegion") => list(any()),
        required("Name") => String.t(),
        required("RequireEncryption") => boolean()
      }

  """
  @type create_voice_connector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_phone_number_request() :: %{}

  """
  @type get_phone_number_request() :: %{}

  @typedoc """

  ## Example:

      list_channel_bans_response() :: %{
        "ChannelArn" => String.t(),
        "ChannelBans" => list(channel_ban_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_channel_bans_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_users_response() :: %{
        "NextToken" => String.t(),
        "Users" => list(user()())
      }

  """
  @type list_users_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_meeting_request() :: %{
        optional("ExternalMeetingId") => String.t(),
        optional("MediaRegion") => String.t(),
        optional("MeetingHostId") => String.t(),
        optional("NotificationsConfiguration") => meeting_notification_configuration(),
        optional("Tags") => list(tag()()),
        required("ClientRequestToken") => String.t()
      }

  """
  @type create_meeting_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }

  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_channel_request() :: %{
        optional("ChimeBearer") => String.t()
      }

  """
  @type describe_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      account() :: %{
        "AccountId" => String.t(),
        "AccountStatus" => list(any()),
        "AccountType" => list(any()),
        "AwsAccountId" => String.t(),
        "CreatedTimestamp" => non_neg_integer(),
        "DefaultLicense" => list(any()),
        "Name" => String.t(),
        "SigninDelegateGroups" => list(signin_delegate_group()()),
        "SupportedLicenses" => list(list(any())())
      }

  """
  @type account() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_app_instance_streaming_configurations_response() :: %{
        "AppInstanceStreamingConfigurations" => list(app_instance_streaming_configuration()())
      }

  """
  @type put_app_instance_streaming_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_voice_connector_proxy_request() :: %{
        optional("Disabled") => boolean(),
        optional("FallBackPhoneNumber") => String.t(),
        required("DefaultSessionExpiryMinutes") => integer(),
        required("PhoneNumberPoolCountries") => list(String.t()())
      }

  """
  @type put_voice_connector_proxy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_phone_numbers_with_voice_connector_response() :: %{
        "PhoneNumberErrors" => list(phone_number_error()())
      }

  """
  @type associate_phone_numbers_with_voice_connector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_voice_connector_logging_configuration_request() :: %{
        required("LoggingConfiguration") => logging_configuration()
      }

  """
  @type put_voice_connector_logging_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_channel_memberships_request() :: %{
        optional("ChimeBearer") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Type") => list(any())
      }

  """
  @type list_channel_memberships_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel_membership_summary() :: %{
        "Member" => identity()
      }

  """
  @type channel_membership_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      phone_number_order() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "OrderedPhoneNumbers" => list(ordered_phone_number()()),
        "PhoneNumberOrderId" => String.t(),
        "ProductType" => list(any()),
        "Status" => list(any()),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type phone_number_order() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_instance_user() :: %{
        "AppInstanceUserArn" => String.t(),
        "CreatedTimestamp" => non_neg_integer(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "Metadata" => String.t(),
        "Name" => String.t()
      }

  """
  @type app_instance_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_attendee_request_item() :: %{
        "ExternalUserId" => String.t(),
        "Tags" => list(tag()())
      }

  """
  @type create_attendee_request_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_channel_request() :: %{
        optional("ChimeBearer") => String.t(),
        optional("Metadata") => String.t(),
        optional("Mode") => list(any()),
        optional("Privacy") => list(any()),
        optional("Tags") => list(tag()()),
        required("AppInstanceArn") => String.t(),
        required("ClientRequestToken") => String.t(),
        required("Name") => String.t()
      }

  """
  @type create_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_artifacts_configuration() :: %{
        "MuxType" => list(any())
      }

  """
  @type audio_artifacts_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_messaging_session_endpoint_request() :: %{}

  """
  @type get_messaging_session_endpoint_request() :: %{}

  @typedoc """

  ## Example:

      list_media_capture_pipelines_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_media_capture_pipelines_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_retention_settings_request() :: %{
        required("RetentionSettings") => retention_settings()
      }

  """
  @type put_retention_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_phone_number_request() :: %{}

  """
  @type delete_phone_number_request() :: %{}

  @typedoc """

  ## Example:

      create_attendee_response() :: %{
        "Attendee" => attendee()
      }

  """
  @type create_attendee_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_instance_streaming_configuration() :: %{
        "AppInstanceDataType" => list(any()),
        "ResourceArn" => String.t()
      }

  """
  @type app_instance_streaming_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_signin_delegate_groups_from_account_request() :: %{
        required("GroupNames") => list(String.t()())
      }

  """
  @type disassociate_signin_delegate_groups_from_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_room_membership_request() :: %{
        optional("Role") => list(any())
      }

  """
  @type update_room_membership_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sip_media_application_endpoint() :: %{
        "LambdaArn" => String.t()
      }

  """
  @type sip_media_application_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_phone_numbers_from_voice_connector_group_response() :: %{
        "PhoneNumberErrors" => list(phone_number_error()())
      }

  """
  @type disassociate_phone_numbers_from_voice_connector_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel_retention_settings() :: %{
        "RetentionDays" => integer()
      }

  """
  @type channel_retention_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_global_settings_response() :: %{
        "BusinessCalling" => business_calling_settings(),
        "VoiceConnector" => voice_connector_settings()
      }

  """
  @type get_global_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      voice_connector() :: %{
        "AwsRegion" => list(any()),
        "CreatedTimestamp" => non_neg_integer(),
        "Name" => String.t(),
        "OutboundHostName" => String.t(),
        "RequireEncryption" => boolean(),
        "UpdatedTimestamp" => non_neg_integer(),
        "VoiceConnectorArn" => String.t(),
        "VoiceConnectorId" => String.t()
      }

  """
  @type voice_connector() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_proxy_sessions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any())
      }

  """
  @type list_proxy_sessions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      source_configuration() :: %{
        "SelectedVideoStreams" => selected_video_streams()
      }

  """
  @type source_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      origination_route() :: %{
        "Host" => String.t(),
        "Port" => integer(),
        "Priority" => integer(),
        "Protocol" => list(any()),
        "Weight" => integer()
      }

  """
  @type origination_route() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_account_settings_request() :: %{
        required("AccountSettings") => account_settings()
      }

  """
  @type update_account_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }

  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_channel_memberships_for_app_instance_user_response() :: %{
        "ChannelMemberships" => list(channel_membership_for_app_instance_user_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_channel_memberships_for_app_instance_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_signin_delegate_groups_with_account_response() :: %{}

  """
  @type associate_signin_delegate_groups_with_account_response() :: %{}

  @typedoc """

  ## Example:

      streaming_notification_target() :: %{
        "NotificationTarget" => list(any())
      }

  """
  @type streaming_notification_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      voice_connector_item() :: %{
        "Priority" => integer(),
        "VoiceConnectorId" => String.t()
      }

  """
  @type voice_connector_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_app_instance_retention_settings_response() :: %{
        "AppInstanceRetentionSettings" => app_instance_retention_settings(),
        "InitiateDeletionTimestamp" => non_neg_integer()
      }

  """
  @type get_app_instance_retention_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_channels_response() :: %{
        "Channels" => list(channel_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_channels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_channel_membership_request() :: %{
        optional("ChimeBearer") => String.t(),
        required("MemberArn") => String.t(),
        required("Type") => list(any())
      }

  """
  @type create_channel_membership_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_sip_media_application_logging_configuration_response() :: %{
        "SipMediaApplicationLoggingConfiguration" => sip_media_application_logging_configuration()
      }

  """
  @type put_sip_media_application_logging_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_voice_connector_group_response() :: %{
        "VoiceConnectorGroup" => voice_connector_group()
      }

  """
  @type update_voice_connector_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      chime_sdk_meeting_configuration() :: %{
        "ArtifactsConfiguration" => artifacts_configuration(),
        "SourceConfiguration" => source_configuration()
      }

  """
  @type chime_sdk_meeting_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_phone_number_response() :: %{
        "PhoneNumber" => phone_number()
      }

  """
  @type get_phone_number_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_messaging_session_endpoint_response() :: %{
        "Endpoint" => messaging_session_endpoint()
      }

  """
  @type get_messaging_session_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_voice_connector_termination_credentials_response() :: %{
        "Usernames" => list(String.t()())
      }

  """
  @type list_voice_connector_termination_credentials_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_channel_request() :: %{
        optional("ChimeBearer") => String.t(),
        optional("Metadata") => String.t(),
        required("Mode") => list(any()),
        required("Name") => String.t()
      }

  """
  @type update_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_global_settings_request() :: %{
        optional("BusinessCalling") => business_calling_settings(),
        optional("VoiceConnector") => voice_connector_settings()
      }

  """
  @type update_global_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_channel_read_marker_request() :: %{
        optional("ChimeBearer") => String.t()
      }

  """
  @type update_channel_read_marker_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_user_settings_request() :: %{
        required("UserSettings") => user_settings()
      }

  """
  @type update_user_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_account_request() :: %{
        optional("DefaultLicense") => list(any()),
        optional("Name") => String.t()
      }

  """
  @type update_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_meeting_request() :: %{}

  """
  @type get_meeting_request() :: %{}

  @typedoc """

  ## Example:

      user_error() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t(),
        "UserId" => String.t()
      }

  """
  @type user_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_instance_admin() :: %{
        "Admin" => identity(),
        "AppInstanceArn" => String.t(),
        "CreatedTimestamp" => non_neg_integer()
      }

  """
  @type app_instance_admin() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel_moderated_by_app_instance_user_summary() :: %{
        "ChannelSummary" => channel_summary()
      }

  """
  @type channel_moderated_by_app_instance_user_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_proxy_session_request() :: %{
        optional("ExpiryMinutes") => integer(),
        optional("GeoMatchLevel") => list(any()),
        optional("GeoMatchParams") => geo_match_params(),
        optional("Name") => String.t(),
        optional("NumberSelectionBehavior") => list(any()),
        required("Capabilities") => list(list(any())()),
        required("ParticipantPhoneNumbers") => list(String.t()())
      }

  """
  @type create_proxy_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      candidate_address() :: %{
        "city" => String.t(),
        "country" => String.t(),
        "postalCode" => String.t(),
        "postalCodePlus4" => String.t(),
        "state" => String.t(),
        "streetInfo" => String.t(),
        "streetNumber" => String.t()
      }

  """
  @type candidate_address() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sip_rule_request() :: %{}

  """
  @type get_sip_rule_request() :: %{}

  @typedoc """

  ## Example:

      channel_message() :: %{
        "ChannelArn" => String.t(),
        "Content" => String.t(),
        "CreatedTimestamp" => non_neg_integer(),
        "LastEditedTimestamp" => non_neg_integer(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "MessageId" => String.t(),
        "Metadata" => String.t(),
        "Persistence" => list(any()),
        "Redacted" => boolean(),
        "Sender" => identity(),
        "Type" => list(any())
      }

  """
  @type channel_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_proxy_request() :: %{}

  """
  @type get_voice_connector_proxy_request() :: %{}

  @typedoc """

  ## Example:

      delete_account_request() :: %{}

  """
  @type delete_account_request() :: %{}

  @typedoc """

  ## Example:

      redact_conversation_message_request() :: %{}

  """
  @type redact_conversation_message_request() :: %{}

  @typedoc """

  ## Example:

      messaging_session_endpoint() :: %{
        "Url" => String.t()
      }

  """
  @type messaging_session_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_channel_message_response() :: %{
        "ChannelArn" => String.t(),
        "MessageId" => String.t()
      }

  """
  @type update_channel_message_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_sip_media_applications_response() :: %{
        "NextToken" => String.t(),
        "SipMediaApplications" => list(sip_media_application()())
      }

  """
  @type list_sip_media_applications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_account_response() :: %{}

  """
  @type delete_account_response() :: %{}

  @typedoc """

  ## Example:

      alexa_for_business_metadata() :: %{
        "AlexaForBusinessRoomArn" => String.t(),
        "IsAlexaForBusinessEnabled" => boolean()
      }

  """
  @type alexa_for_business_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sip_media_application_logging_configuration_request() :: %{}

  """
  @type get_sip_media_application_logging_configuration_request() :: %{}

  @typedoc """

  ## Example:

      create_account_request() :: %{
        required("Name") => String.t()
      }

  """
  @type create_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invite_users_response() :: %{
        "Invites" => list(invite()())
      }

  """
  @type invite_users_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_meeting_transcription_response() :: %{}

  """
  @type stop_meeting_transcription_response() :: %{}

  @typedoc """

  ## Example:

      get_room_request() :: %{}

  """
  @type get_room_request() :: %{}

  @typedoc """

  ## Example:

      sip_media_application_logging_configuration() :: %{
        "EnableSipMediaApplicationMessageLogs" => boolean()
      }

  """
  @type sip_media_application_logging_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bots_response() :: %{
        "Bots" => list(bot()()),
        "NextToken" => String.t()
      }

  """
  @type list_bots_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_proxy_session_response() :: %{
        "ProxySession" => proxy_session()
      }

  """
  @type get_proxy_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_attendee_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_attendee_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_channel_message_request() :: %{
        optional("ChimeBearer") => String.t()
      }

  """
  @type delete_channel_message_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_sip_rule_response() :: %{
        "SipRule" => sip_rule()
      }

  """
  @type update_sip_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_phone_number_from_user_request() :: %{}

  """
  @type disassociate_phone_number_from_user_request() :: %{}

  @typedoc """

  ## Example:

      put_app_instance_streaming_configurations_request() :: %{
        required("AppInstanceStreamingConfigurations") => list(app_instance_streaming_configuration()())
      }

  """
  @type put_app_instance_streaming_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_channel_moderators_request() :: %{
        optional("ChimeBearer") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_channel_moderators_request() :: %{String.t() => any()}

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
        "Code" => list(any()),
        "Message" => String.t()
      }

  """
  @type unprocessable_entity_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_voice_connector_group_request() :: %{
        optional("VoiceConnectorItems") => list(voice_connector_item()()),
        required("Name") => String.t()
      }

  """
  @type create_voice_connector_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_create_channel_membership_request() :: %{
        optional("ChimeBearer") => String.t(),
        optional("Type") => list(any()),
        required("MemberArns") => list(String.t()())
      }

  """
  @type batch_create_channel_membership_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_room_response() :: %{
        "Room" => room()
      }

  """
  @type get_room_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_app_instance_user_request() :: %{
        optional("Metadata") => String.t(),
        required("Name") => String.t()
      }

  """
  @type update_app_instance_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_instance_admin_response() :: %{
        "AppInstanceAdmin" => app_instance_admin()
      }

  """
  @type describe_app_instance_admin_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_sip_media_application_call_response() :: %{
        "SipMediaApplicationCall" => sip_media_application_call()
      }

  """
  @type create_sip_media_application_call_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_media_capture_pipeline_request() :: %{
        optional("ChimeSdkMeetingConfiguration") => chime_sdk_meeting_configuration(),
        optional("ClientRequestToken") => String.t(),
        required("SinkArn") => String.t(),
        required("SinkType") => list(any()),
        required("SourceArn") => String.t(),
        required("SourceType") => list(any())
      }

  """
  @type create_media_capture_pipeline_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_app_instance_request() :: %{
        optional("Metadata") => String.t(),
        optional("Tags") => list(tag()()),
        required("ClientRequestToken") => String.t(),
        required("Name") => String.t()
      }

  """
  @type create_app_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      phone_number_error() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t(),
        "PhoneNumberId" => String.t()
      }

  """
  @type phone_number_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_attendee_request() :: %{}

  """
  @type get_attendee_request() :: %{}

  @typedoc """

  ## Example:

      update_phone_number_request_item() :: %{
        "CallingName" => String.t(),
        "PhoneNumberId" => String.t(),
        "ProductType" => list(any())
      }

  """
  @type update_phone_number_request_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_channel_membership_for_app_instance_user_request() :: %{
        optional("ChimeBearer") => String.t(),
        required("AppInstanceUserArn") => String.t()
      }

  """
  @type describe_channel_membership_for_app_instance_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_channel_membership_request() :: %{
        optional("ChimeBearer") => String.t()
      }

  """
  @type delete_channel_membership_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      account_settings() :: %{
        "DisableRemoteControl" => boolean(),
        "EnableDialOut" => boolean()
      }

  """
  @type account_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_attendee_tags_request() :: %{}

  """
  @type list_attendee_tags_request() :: %{}

  @typedoc """

  ## Example:

      app_instance_admin_summary() :: %{
        "Admin" => identity()
      }

  """
  @type app_instance_admin_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_suspend_user_request() :: %{
        required("UserIdList") => list(String.t()())
      }

  """
  @type batch_suspend_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_channel_messages_request() :: %{
        optional("ChimeBearer") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("NotAfter") => non_neg_integer(),
        optional("NotBefore") => non_neg_integer(),
        optional("SortOrder") => list(any())
      }

  """
  @type list_channel_messages_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_phone_numbers_with_voice_connector_group_response() :: %{
        "PhoneNumberErrors" => list(phone_number_error()())
      }

  """
  @type associate_phone_numbers_with_voice_connector_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_bot_request() :: %{
        optional("Disabled") => boolean()
      }

  """
  @type update_bot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_channel_message_request() :: %{
        optional("ChimeBearer") => String.t(),
        optional("Metadata") => String.t(),
        required("ClientRequestToken") => String.t(),
        required("Content") => String.t(),
        required("Persistence") => list(any()),
        required("Type") => list(any())
      }

  """
  @type send_channel_message_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_user_request() :: %{
        optional("AlexaForBusinessMetadata") => alexa_for_business_metadata(),
        optional("LicenseType") => list(any()),
        optional("UserType") => list(any())
      }

  """
  @type update_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_user_request_item() :: %{
        "AlexaForBusinessMetadata" => alexa_for_business_metadata(),
        "LicenseType" => list(any()),
        "UserId" => String.t(),
        "UserType" => list(any())
      }

  """
  @type update_user_request_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_events_configuration_request() :: %{}

  """
  @type get_events_configuration_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t()
      }

  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_voice_connector_origination_request() :: %{
        required("Origination") => origination()
      }

  """
  @type put_voice_connector_origination_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_voice_connector_termination_credentials_request() :: %{
        required("Usernames") => list(String.t()())
      }

  """
  @type delete_voice_connector_termination_credentials_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_channel_moderators_response() :: %{
        "ChannelArn" => String.t(),
        "ChannelModerators" => list(channel_moderator_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_channel_moderators_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_room_membership_request() :: %{
        optional("Role") => list(any()),
        required("MemberId") => String.t()
      }

  """
  @type create_room_membership_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_room_request() :: %{
        optional("ClientRequestToken") => String.t(),
        required("Name") => String.t()
      }

  """
  @type create_room_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_voice_connectors_response() :: %{
        "NextToken" => String.t(),
        "VoiceConnectors" => list(voice_connector()())
      }

  """
  @type list_voice_connectors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_channel_message_request() :: %{
        optional("ChimeBearer") => String.t()
      }

  """
  @type get_channel_message_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_unsuspend_user_request() :: %{
        required("UserIdList") => list(String.t()())
      }

  """
  @type batch_unsuspend_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_channel_ban_response() :: %{
        "ChannelBan" => channel_ban()
      }

  """
  @type describe_channel_ban_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_group_request() :: %{}

  """
  @type get_voice_connector_group_request() :: %{}

  @typedoc """

  ## Example:

      voice_connector_group() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "Name" => String.t(),
        "UpdatedTimestamp" => non_neg_integer(),
        "VoiceConnectorGroupArn" => String.t(),
        "VoiceConnectorGroupId" => String.t(),
        "VoiceConnectorItems" => list(voice_connector_item()())
      }

  """
  @type voice_connector_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_meeting_transcription_request() :: %{
        required("TranscriptionConfiguration") => transcription_configuration()
      }

  """
  @type start_meeting_transcription_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel_ban() :: %{
        "ChannelArn" => String.t(),
        "CreatedBy" => identity(),
        "CreatedTimestamp" => non_neg_integer(),
        "Member" => identity()
      }

  """
  @type channel_ban() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_rooms_request() :: %{
        optional("MaxResults") => integer(),
        optional("MemberId") => String.t(),
        optional("NextToken") => String.t()
      }

  """
  @type list_rooms_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_origination_response() :: %{
        "Origination" => origination()
      }

  """
  @type get_voice_connector_origination_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user() :: %{
        "AccountId" => String.t(),
        "AlexaForBusinessMetadata" => alexa_for_business_metadata(),
        "DisplayName" => String.t(),
        "InvitedOn" => non_neg_integer(),
        "LicenseType" => list(any()),
        "PersonalPIN" => String.t(),
        "PrimaryEmail" => String.t(),
        "PrimaryProvisionedNumber" => String.t(),
        "RegisteredOn" => non_neg_integer(),
        "UserId" => String.t(),
        "UserInvitationStatus" => list(any()),
        "UserRegistrationStatus" => list(any()),
        "UserType" => list(any())
      }

  """
  @type user() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invite_users_request() :: %{
        optional("UserType") => list(any()),
        required("UserEmailList") => list(String.t()())
      }

  """
  @type invite_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_create_attendee_request() :: %{
        required("Attendees") => list(create_attendee_request_item()())
      }

  """
  @type batch_create_attendee_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel() :: %{
        "ChannelArn" => String.t(),
        "CreatedBy" => identity(),
        "CreatedTimestamp" => non_neg_integer(),
        "LastMessageTimestamp" => non_neg_integer(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "Metadata" => String.t(),
        "Mode" => list(any()),
        "Name" => String.t(),
        "Privacy" => list(any())
      }

  """
  @type channel() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_phone_number_settings_response() :: %{
        "CallingName" => String.t(),
        "CallingNameUpdatedTimestamp" => non_neg_integer()
      }

  """
  @type get_phone_number_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      membership_item() :: %{
        "MemberId" => String.t(),
        "Role" => list(any())
      }

  """
  @type membership_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_bot_request() :: %{
        optional("Domain") => String.t(),
        required("DisplayName") => String.t()
      }

  """
  @type create_bot_request() :: %{String.t() => any()}

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

      create_app_instance_admin_response() :: %{
        "AppInstanceAdmin" => identity(),
        "AppInstanceArn" => String.t()
      }

  """
  @type create_app_instance_admin_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      regenerate_security_token_response() :: %{
        "Bot" => bot()
      }

  """
  @type regenerate_security_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_app_instance_retention_settings_response() :: %{
        "AppInstanceRetentionSettings" => app_instance_retention_settings(),
        "InitiateDeletionTimestamp" => non_neg_integer()
      }

  """
  @type put_app_instance_retention_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_channel_memberships_response() :: %{
        "ChannelArn" => String.t(),
        "ChannelMemberships" => list(channel_membership_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_channel_memberships_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_sip_media_application_call_request() :: %{
        optional("SipHeaders") => map(),
        required("FromPhoneNumber") => String.t(),
        required("ToPhoneNumber") => String.t()
      }

  """
  @type create_sip_media_application_call_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_sip_media_application_call_request() :: %{
        required("Arguments") => map()
      }

  """
  @type update_sip_media_application_call_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_attendee_tags_response() :: %{
        "Tags" => list(tag()())
      }

  """
  @type list_attendee_tags_response() :: %{String.t() => any()}

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

      app_instance_retention_settings() :: %{
        "ChannelRetentionSettings" => channel_retention_settings()
      }

  """
  @type app_instance_retention_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member() :: %{
        "AccountId" => String.t(),
        "Email" => String.t(),
        "FullName" => String.t(),
        "MemberId" => String.t(),
        "MemberType" => list(any())
      }

  """
  @type member() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_users_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("UserEmail") => String.t(),
        optional("UserType") => list(any())
      }

  """
  @type list_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_voice_connector_termination_request() :: %{}

  """
  @type delete_voice_connector_termination_request() :: %{}

  @typedoc """

  ## Example:

      get_voice_connector_group_response() :: %{
        "VoiceConnectorGroup" => voice_connector_group()
      }

  """
  @type get_voice_connector_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_events_configuration_response() :: %{
        "EventsConfiguration" => events_configuration()
      }

  """
  @type get_events_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel_moderator() :: %{
        "ChannelArn" => String.t(),
        "CreatedBy" => identity(),
        "CreatedTimestamp" => non_neg_integer(),
        "Moderator" => identity()
      }

  """
  @type channel_moderator() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attendee() :: %{
        "AttendeeId" => String.t(),
        "ExternalUserId" => String.t(),
        "JoinToken" => String.t()
      }

  """
  @type attendee() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_voice_connector_logging_configuration_response() :: %{
        "LoggingConfiguration" => logging_configuration()
      }

  """
  @type put_voice_connector_logging_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_channel_ban_response() :: %{
        "ChannelArn" => String.t(),
        "Member" => identity()
      }

  """
  @type create_channel_ban_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_bot_response() :: %{
        "Bot" => bot()
      }

  """
  @type create_bot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_account_response() :: %{
        "Account" => account()
      }

  """
  @type create_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_voice_connector_response() :: %{
        "VoiceConnector" => voice_connector()
      }

  """
  @type create_voice_connector_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_create_channel_membership_error() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t(),
        "MemberArn" => String.t()
      }

  """
  @type batch_create_channel_membership_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_proxy_session_request() :: %{}

  """
  @type get_proxy_session_request() :: %{}

  @typedoc """

  ## Example:

      create_app_instance_admin_request() :: %{
        required("AppInstanceAdminArn") => String.t()
      }

  """
  @type create_app_instance_admin_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sip_media_application_call() :: %{
        "TransactionId" => String.t()
      }

  """
  @type sip_media_application_call() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reset_personal_pin_response() :: %{
        "User" => user()
      }

  """
  @type reset_personal_pin_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t()
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_instance_admin_request() :: %{}

  """
  @type describe_app_instance_admin_request() :: %{}

  @typedoc """

  ## Example:

      list_phone_numbers_response() :: %{
        "NextToken" => String.t(),
        "PhoneNumbers" => list(phone_number()())
      }

  """
  @type list_phone_numbers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_voice_connector_request() :: %{
        required("Name") => String.t(),
        required("RequireEncryption") => boolean()
      }

  """
  @type update_voice_connector_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invite() :: %{
        "EmailAddress" => String.t(),
        "EmailStatus" => list(any()),
        "InviteId" => String.t(),
        "Status" => list(any())
      }

  """
  @type invite() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_settings() :: %{
        "Telephony" => telephony_settings()
      }

  """
  @type user_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_channel_read_marker_response() :: %{
        "ChannelArn" => String.t()
      }

  """
  @type update_channel_read_marker_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel_moderator_summary() :: %{
        "Moderator" => identity()
      }

  """
  @type channel_moderator_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_channel_memberships() :: %{
        "ChannelArn" => String.t(),
        "InvitedBy" => identity(),
        "Members" => list(identity()()),
        "Type" => list(any())
      }

  """
  @type batch_channel_memberships() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      credential() :: %{
        "Password" => String.t(),
        "Username" => String.t()
      }

  """
  @type credential() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_room_membership_response() :: %{
        "RoomMembership" => room_membership()
      }

  """
  @type update_room_membership_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logout_user_response() :: %{}

  """
  @type logout_user_response() :: %{}

  @typedoc """

  ## Example:

      disassociate_phone_number_from_user_response() :: %{}

  """
  @type disassociate_phone_number_from_user_response() :: %{}

  @typedoc """

  ## Example:

      associate_signin_delegate_groups_with_account_request() :: %{
        required("SigninDelegateGroups") => list(signin_delegate_group()())
      }

  """
  @type associate_signin_delegate_groups_with_account_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_channel_response() :: %{
        "ChannelArn" => String.t()
      }

  """
  @type update_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_app_instance_request() :: %{}

  """
  @type delete_app_instance_request() :: %{}

  @typedoc """

  ## Example:

      app_instance_user_summary() :: %{
        "AppInstanceUserArn" => String.t(),
        "Metadata" => String.t(),
        "Name" => String.t()
      }

  """
  @type app_instance_user_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      phone_number_capabilities() :: %{
        "InboundCall" => boolean(),
        "InboundMMS" => boolean(),
        "InboundSMS" => boolean(),
        "OutboundCall" => boolean(),
        "OutboundMMS" => boolean(),
        "OutboundSMS" => boolean()
      }

  """
  @type phone_number_capabilities() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_channel_ban_request() :: %{
        optional("ChimeBearer") => String.t()
      }

  """
  @type describe_channel_ban_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_meetings_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_meetings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_voice_connector_streaming_configuration_request() :: %{}

  """
  @type delete_voice_connector_streaming_configuration_request() :: %{}

  @typedoc """

  ## Example:

      delete_voice_connector_emergency_calling_configuration_request() :: %{}

  """
  @type delete_voice_connector_emergency_calling_configuration_request() :: %{}

  @typedoc """

  ## Example:

      get_sip_media_application_request() :: %{}

  """
  @type get_sip_media_application_request() :: %{}

  @typedoc """

  ## Example:

      describe_channel_membership_for_app_instance_user_response() :: %{
        "ChannelMembership" => channel_membership_for_app_instance_user_summary()
      }

  """
  @type describe_channel_membership_for_app_instance_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_sip_media_application_response() :: %{
        "SipMediaApplication" => sip_media_application()
      }

  """
  @type create_sip_media_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_voice_connector_proxy_response() :: %{
        "Proxy" => proxy()
      }

  """
  @type put_voice_connector_proxy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bot() :: %{
        "BotEmail" => String.t(),
        "BotId" => String.t(),
        "BotType" => list(any()),
        "CreatedTimestamp" => non_neg_integer(),
        "Disabled" => boolean(),
        "DisplayName" => String.t(),
        "SecurityToken" => String.t(),
        "UpdatedTimestamp" => non_neg_integer(),
        "UserId" => String.t()
      }

  """
  @type bot() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      address() :: %{
        "city" => String.t(),
        "country" => String.t(),
        "postDirectional" => String.t(),
        "postalCode" => String.t(),
        "postalCodePlus4" => String.t(),
        "preDirectional" => String.t(),
        "state" => String.t(),
        "streetName" => String.t(),
        "streetNumber" => String.t(),
        "streetSuffix" => String.t()
      }

  """
  @type address() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sip_rule_target_application() :: %{
        "AwsRegion" => String.t(),
        "Priority" => integer(),
        "SipMediaApplicationId" => String.t()
      }

  """
  @type sip_rule_target_application() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_emergency_calling_configuration_response() :: %{
        "EmergencyCallingConfiguration" => emergency_calling_configuration()
      }

  """
  @type get_voice_connector_emergency_calling_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_voice_connector_request() :: %{}

  """
  @type delete_voice_connector_request() :: %{}

  @typedoc """

  ## Example:

      list_accounts_request() :: %{
        optional("MaxResults") => integer(),
        optional("Name") => String.t(),
        optional("NextToken") => String.t(),
        optional("UserEmail") => String.t()
      }

  """
  @type list_accounts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_phone_number_request() :: %{
        optional("CallingName") => String.t(),
        optional("ProductType") => list(any())
      }

  """
  @type update_phone_number_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_account_request() :: %{}

  """
  @type get_account_request() :: %{}

  @typedoc """

  ## Example:

      redact_room_message_response() :: %{}

  """
  @type redact_room_message_response() :: %{}

  @typedoc """

  ## Example:

      put_events_configuration_request() :: %{
        optional("LambdaFunctionArn") => String.t(),
        optional("OutboundEventsHTTPSEndpoint") => String.t()
      }

  """
  @type put_events_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_retention_settings_response() :: %{
        "InitiateDeletionTimestamp" => non_neg_integer(),
        "RetentionSettings" => retention_settings()
      }

  """
  @type get_retention_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_origination_request() :: %{}

  """
  @type get_voice_connector_origination_request() :: %{}

  @typedoc """

  ## Example:

      put_voice_connector_emergency_calling_configuration_response() :: %{
        "EmergencyCallingConfiguration" => emergency_calling_configuration()
      }

  """
  @type put_voice_connector_emergency_calling_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_connector_termination_response() :: %{
        "Termination" => termination()
      }

  """
  @type get_voice_connector_termination_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_attendee_request() :: %{
        optional("Tags") => list(tag()()),
        required("ExternalUserId") => String.t()
      }

  """
  @type create_attendee_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_room_request() :: %{
        optional("Name") => String.t()
      }

  """
  @type update_room_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_channels_request() :: %{
        optional("ChimeBearer") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Privacy") => list(any()),
        required("AppInstanceArn") => String.t()
      }

  """
  @type list_channels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_app_instance_user_request() :: %{}

  """
  @type describe_app_instance_user_request() :: %{}

  @typedoc """

  ## Example:

      get_retention_settings_request() :: %{}

  """
  @type get_retention_settings_request() :: %{}

  @typedoc """

  ## Example:

      update_account_response() :: %{
        "Account" => account()
      }

  """
  @type update_account_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_user_response() :: %{
        "User" => user()
      }

  """
  @type create_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_bot_response() :: %{
        "Bot" => bot()
      }

  """
  @type update_bot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_suspend_user_response() :: %{
        "UserErrors" => list(user_error()())
      }

  """
  @type batch_suspend_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_update_phone_number_request() :: %{
        required("UpdatePhoneNumberRequestItems") => list(update_phone_number_request_item()())
      }

  """
  @type batch_update_phone_number_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      artifacts_configuration() :: %{
        "Audio" => audio_artifacts_configuration(),
        "Content" => content_artifacts_configuration(),
        "Video" => video_artifacts_configuration()
      }

  """
  @type artifacts_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel_message_summary() :: %{
        "Content" => String.t(),
        "CreatedTimestamp" => non_neg_integer(),
        "LastEditedTimestamp" => non_neg_integer(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "MessageId" => String.t(),
        "Metadata" => String.t(),
        "Redacted" => boolean(),
        "Sender" => identity(),
        "Type" => list(any())
      }

  """
  @type channel_message_summary() :: %{String.t() => any()}

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

      sip_media_application() :: %{
        "AwsRegion" => String.t(),
        "CreatedTimestamp" => non_neg_integer(),
        "Endpoints" => list(sip_media_application_endpoint()()),
        "Name" => String.t(),
        "SipMediaApplicationId" => String.t(),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type sip_media_application() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_available_phone_numbers_request() :: %{
        optional("AreaCode") => String.t(),
        optional("City") => String.t(),
        optional("Country") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("PhoneNumberType") => list(any()),
        optional("State") => String.t(),
        optional("TollFreePrefix") => String.t()
      }

  """
  @type search_available_phone_numbers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_events_configuration_response() :: %{
        "EventsConfiguration" => events_configuration()
      }

  """
  @type put_events_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_meeting_dial_out_request() :: %{
        required("FromPhoneNumber") => String.t(),
        required("JoinToken") => String.t(),
        required("ToPhoneNumber") => String.t()
      }

  """
  @type create_meeting_dial_out_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_attendee_request() :: %{}

  """
  @type delete_attendee_request() :: %{}

  @typedoc """

  ## Example:

      create_room_response() :: %{
        "Room" => room()
      }

  """
  @type create_room_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_app_instance_user_request() :: %{
        optional("Metadata") => String.t(),
        optional("Tags") => list(tag()()),
        required("AppInstanceArn") => String.t(),
        required("AppInstanceUserId") => String.t(),
        required("ClientRequestToken") => String.t(),
        required("Name") => String.t()
      }

  """
  @type create_app_instance_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      room_retention_settings() :: %{
        "RetentionDays" => integer()
      }

  """
  @type room_retention_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_supported_phone_number_countries_request() :: %{
        required("ProductType") => list(any())
      }

  """
  @type list_supported_phone_number_countries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      app_instance() :: %{
        "AppInstanceArn" => String.t(),
        "CreatedTimestamp" => non_neg_integer(),
        "LastUpdatedTimestamp" => non_neg_integer(),
        "Metadata" => String.t(),
        "Name" => String.t()
      }

  """
  @type app_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conversation_retention_settings() :: %{
        "RetentionDays" => integer()
      }

  """
  @type conversation_retention_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      emergency_calling_configuration() :: %{
        "DNIS" => list(d_n_i_s_emergency_calling_configuration()())
      }

  """
  @type emergency_calling_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_user_request() :: %{
        optional("Email") => String.t(),
        optional("UserType") => list(any()),
        optional("Username") => String.t()
      }

  """
  @type create_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_update_user_request() :: %{
        required("UpdateUserRequestItems") => list(update_user_request_item()())
      }

  """
  @type batch_update_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      regenerate_security_token_request() :: %{}

  """
  @type regenerate_security_token_request() :: %{}

  @typedoc """

  ## Example:

      disassociate_signin_delegate_groups_from_account_response() :: %{}

  """
  @type disassociate_signin_delegate_groups_from_account_response() :: %{}

  @typedoc """

  ## Example:

      create_channel_membership_response() :: %{
        "ChannelArn" => String.t(),
        "Member" => identity()
      }

  """
  @type create_channel_membership_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_app_instance_user_response() :: %{
        "AppInstanceUserArn" => String.t()
      }

  """
  @type create_app_instance_user_response() :: %{String.t() => any()}

  @type associate_phone_number_with_user_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type associate_phone_numbers_with_voice_connector_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type associate_phone_numbers_with_voice_connector_group_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type associate_signin_delegate_groups_with_account_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type batch_create_attendee_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type batch_create_channel_membership_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type batch_create_room_membership_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type batch_delete_phone_number_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type batch_suspend_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type batch_unsuspend_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type batch_update_phone_number_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type batch_update_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_account_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_app_instance_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_app_instance_admin_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_app_instance_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_attendee_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_bot_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_channel_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_channel_ban_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_channel_membership_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_channel_moderator_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_media_capture_pipeline_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_meeting_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_meeting_dial_out_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_meeting_with_attendees_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_phone_number_order_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_proxy_session_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_room_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_room_membership_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_sip_media_application_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_sip_media_application_call_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_sip_rule_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_voice_connector_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_voice_connector_group_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_account_errors() ::
          bad_request_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_app_instance_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_app_instance_admin_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_app_instance_streaming_configurations_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_app_instance_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_attendee_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_channel_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_channel_ban_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_channel_membership_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_channel_message_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_channel_moderator_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_events_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_media_capture_pipeline_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_meeting_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_phone_number_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_proxy_session_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_room_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_room_membership_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_sip_media_application_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_sip_rule_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_voice_connector_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_voice_connector_emergency_calling_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_voice_connector_group_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_voice_connector_origination_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_voice_connector_proxy_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_voice_connector_streaming_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_voice_connector_termination_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_voice_connector_termination_credentials_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type describe_app_instance_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type describe_app_instance_admin_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type describe_app_instance_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type describe_channel_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type describe_channel_ban_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type describe_channel_membership_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type describe_channel_membership_for_app_instance_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type describe_channel_moderated_by_app_instance_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type describe_channel_moderator_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type disassociate_phone_number_from_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type disassociate_phone_numbers_from_voice_connector_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type disassociate_phone_numbers_from_voice_connector_group_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type disassociate_signin_delegate_groups_from_account_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_account_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_account_settings_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_app_instance_retention_settings_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_app_instance_streaming_configurations_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_attendee_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_bot_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_channel_message_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_events_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_global_settings_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_media_capture_pipeline_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_meeting_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_messaging_session_endpoint_errors() ::
          service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_phone_number_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_phone_number_order_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_phone_number_settings_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_proxy_session_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_retention_settings_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_room_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_sip_media_application_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_sip_media_application_logging_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_sip_rule_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_user_settings_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_voice_connector_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_voice_connector_emergency_calling_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_voice_connector_group_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_voice_connector_logging_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_voice_connector_origination_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_voice_connector_proxy_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_voice_connector_streaming_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_voice_connector_termination_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_voice_connector_termination_health_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type invite_users_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_accounts_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_app_instance_admins_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_app_instance_users_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_app_instances_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_attendee_tags_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_attendees_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_bots_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_channel_bans_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_channel_memberships_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_channel_memberships_for_app_instance_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_channel_messages_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_channel_moderators_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_channels_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_channels_moderated_by_app_instance_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_media_capture_pipelines_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_meeting_tags_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_meetings_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_phone_number_orders_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_phone_numbers_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_proxy_sessions_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_room_memberships_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_rooms_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_sip_media_applications_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_sip_rules_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_supported_phone_number_countries_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_users_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_voice_connector_groups_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_voice_connector_termination_credentials_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_voice_connectors_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type logout_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_app_instance_retention_settings_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_app_instance_streaming_configurations_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_events_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_retention_settings_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_sip_media_application_logging_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_voice_connector_emergency_calling_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_voice_connector_logging_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_voice_connector_origination_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_voice_connector_proxy_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_voice_connector_streaming_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_voice_connector_termination_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_voice_connector_termination_credentials_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type redact_channel_message_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type redact_conversation_message_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type redact_room_message_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type regenerate_security_token_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type reset_personal_pin_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type restore_phone_number_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type search_available_phone_numbers_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type send_channel_message_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type start_meeting_transcription_errors() ::
          bad_request_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type stop_meeting_transcription_errors() ::
          bad_request_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type tag_attendee_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type tag_meeting_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type untag_attendee_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type untag_meeting_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_account_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_account_settings_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_app_instance_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_app_instance_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_bot_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_channel_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_channel_message_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_channel_read_marker_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_global_settings_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_phone_number_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_phone_number_settings_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_proxy_session_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_room_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_room_membership_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_sip_media_application_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_sip_media_application_call_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_sip_rule_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_user_settings_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_voice_connector_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_voice_connector_group_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type validate_e911_address_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  def metadata do
    %{
      api_version: "2018-05-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: "us-east-1",
      endpoint_prefix: "chime",
      global?: true,
      hostname: "chime.us-east-1.amazonaws.com",
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
  @spec associate_phone_number_with_user(
          map(),
          String.t(),
          String.t(),
          associate_phone_number_with_user_request(),
          list()
        ) ::
          {:ok, associate_phone_number_with_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_phone_number_with_user_errors()}
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
  @spec associate_phone_numbers_with_voice_connector(
          map(),
          String.t(),
          associate_phone_numbers_with_voice_connector_request(),
          list()
        ) ::
          {:ok, associate_phone_numbers_with_voice_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_phone_numbers_with_voice_connector_errors()}
  def associate_phone_numbers_with_voice_connector(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}?operation=associate-phone-numbers"

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
  @spec associate_phone_numbers_with_voice_connector_group(
          map(),
          String.t(),
          associate_phone_numbers_with_voice_connector_group_request(),
          list()
        ) ::
          {:ok, associate_phone_numbers_with_voice_connector_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_phone_numbers_with_voice_connector_group_errors()}
  def associate_phone_numbers_with_voice_connector_group(
        %Client{} = client,
        voice_connector_group_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connector-groups/#{AWS.Util.encode_uri(voice_connector_group_id)}?operation=associate-phone-numbers"

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
  Associates the specified sign-in delegate groups with the specified Amazon Chime
  account.
  """
  @spec associate_signin_delegate_groups_with_account(
          map(),
          String.t(),
          associate_signin_delegate_groups_with_account_request(),
          list()
        ) ::
          {:ok, associate_signin_delegate_groups_with_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_signin_delegate_groups_with_account_errors()}
  def associate_signin_delegate_groups_with_account(
        %Client{} = client,
        account_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}?operation=associate-signin-delegate-groups"

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
  @spec batch_create_attendee(map(), String.t(), batch_create_attendee_request(), list()) ::
          {:ok, batch_create_attendee_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_create_attendee_errors()}
  def batch_create_attendee(%Client{} = client, meeting_id, input, options \\ []) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}/attendees?operation=batch-create"
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
  @spec batch_create_channel_membership(
          map(),
          String.t(),
          batch_create_channel_membership_request(),
          list()
        ) ::
          {:ok, batch_create_channel_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_create_channel_membership_errors()}
  def batch_create_channel_membership(%Client{} = client, channel_arn, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/memberships?operation=batch-create"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

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
  Adds up to 50 members to a chat room in an Amazon Chime Enterprise account.

  Members can be users or bots. The member role designates whether the member is a
  chat room administrator or a general chat room member.
  """
  @spec batch_create_room_membership(
          map(),
          String.t(),
          String.t(),
          batch_create_room_membership_request(),
          list()
        ) ::
          {:ok, batch_create_room_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_create_room_membership_errors()}
  def batch_create_room_membership(%Client{} = client, account_id, room_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/rooms/#{AWS.Util.encode_uri(room_id)}/memberships?operation=batch-create"

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

  Moves phone numbers into the
  **Deletion queue**.

  Phone numbers must be disassociated from any users or Amazon Chime Voice
  Connectors before they can be deleted.

  Phone numbers remain in the
  **Deletion queue** for 7 days before they are deleted permanently.
  """
  @spec batch_delete_phone_number(map(), batch_delete_phone_number_request(), list()) ::
          {:ok, batch_delete_phone_number_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_delete_phone_number_errors()}
  def batch_delete_phone_number(%Client{} = client, input, options \\ []) do
    url_path = "/phone-numbers?operation=batch-delete"
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
  @spec batch_suspend_user(map(), String.t(), batch_suspend_user_request(), list()) ::
          {:ok, batch_suspend_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_suspend_user_errors()}
  def batch_suspend_user(%Client{} = client, account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/users?operation=suspend"
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
  @spec batch_unsuspend_user(map(), String.t(), batch_unsuspend_user_request(), list()) ::
          {:ok, batch_unsuspend_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_unsuspend_user_errors()}
  def batch_unsuspend_user(%Client{} = client, account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/users?operation=unsuspend"
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
  @spec batch_update_phone_number(map(), batch_update_phone_number_request(), list()) ::
          {:ok, batch_update_phone_number_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_update_phone_number_errors()}
  def batch_update_phone_number(%Client{} = client, input, options \\ []) do
    url_path = "/phone-numbers?operation=batch-update"
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
  Updates user details within the `UpdateUserRequestItem` object for up to 20
  users for the specified Amazon Chime account.

  Currently, only `LicenseType` updates are supported for this action.
  """
  @spec batch_update_user(map(), String.t(), batch_update_user_request(), list()) ::
          {:ok, batch_update_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_update_user_errors()}
  def batch_update_user(%Client{} = client, account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/users"
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
  Creates an Amazon Chime account under the administrator's AWS account.

  Only `Team`
  account types are currently supported for this action. For more information
  about different account types, see
  [Managing Your Amazon Chime Accounts](https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html)
  in the *Amazon Chime
  Administration Guide*.
  """
  @spec create_account(map(), create_account_request(), list()) ::
          {:ok, create_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_account_errors()}
  def create_account(%Client{} = client, input, options \\ []) do
    url_path = "/accounts"
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
  @spec create_app_instance(map(), create_app_instance_request(), list()) ::
          {:ok, create_app_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_app_instance_errors()}
  def create_app_instance(%Client{} = client, input, options \\ []) do
    url_path = "/app-instances"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "identity-")

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
  @spec create_app_instance_admin(map(), String.t(), create_app_instance_admin_request(), list()) ::
          {:ok, create_app_instance_admin_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_app_instance_admin_errors()}
  def create_app_instance_admin(%Client{} = client, app_instance_arn, input, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/admins"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "identity-")

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
  @spec create_app_instance_user(map(), create_app_instance_user_request(), list()) ::
          {:ok, create_app_instance_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_app_instance_user_errors()}
  def create_app_instance_user(%Client{} = client, input, options \\ []) do
    url_path = "/app-instance-users"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "identity-")

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
  @spec create_attendee(map(), String.t(), create_attendee_request(), list()) ::
          {:ok, create_attendee_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_attendee_errors()}
  def create_attendee(%Client{} = client, meeting_id, input, options \\ []) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}/attendees"
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
  Creates a bot for an Amazon Chime Enterprise account.
  """
  @spec create_bot(map(), String.t(), create_bot_request(), list()) ::
          {:ok, create_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_bot_errors()}
  def create_bot(%Client{} = client, account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/bots"
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
  @spec create_channel(map(), create_channel_request(), list()) ::
          {:ok, create_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_channel_errors()}
  def create_channel(%Client{} = client, input, options \\ []) do
    url_path = "/channels"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

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
  @spec create_channel_ban(map(), String.t(), create_channel_ban_request(), list()) ::
          {:ok, create_channel_ban_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_channel_ban_errors()}
  def create_channel_ban(%Client{} = client, channel_arn, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/bans"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

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
  @spec create_channel_membership(map(), String.t(), create_channel_membership_request(), list()) ::
          {:ok, create_channel_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_channel_membership_errors()}
  def create_channel_membership(%Client{} = client, channel_arn, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/memberships"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

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
  @spec create_channel_moderator(map(), String.t(), create_channel_moderator_request(), list()) ::
          {:ok, create_channel_moderator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_channel_moderator_errors()}
  def create_channel_moderator(%Client{} = client, channel_arn, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/moderators"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

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
  @spec create_media_capture_pipeline(map(), create_media_capture_pipeline_request(), list()) ::
          {:ok, create_media_capture_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_media_capture_pipeline_errors()}
  def create_media_capture_pipeline(%Client{} = client, input, options \\ []) do
    url_path = "/media-capture-pipelines"
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
  @spec create_meeting(map(), create_meeting_request(), list()) ::
          {:ok, create_meeting_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_meeting_errors()}
  def create_meeting(%Client{} = client, input, options \\ []) do
    url_path = "/meetings"
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
  Uses the join token and call metadata in a meeting request (From number, To
  number, and so forth) to initiate an outbound call to a public
  switched telephone network (PSTN) and join them into a Chime meeting.

  Also ensures that the From number belongs to the customer.

  To play welcome audio or implement an interactive voice response (IVR), use the
  `CreateSipMediaApplicationCall` action with the corresponding SIP media
  application ID.

  ## This API is is not available in a dedicated namespace.
  """
  @spec create_meeting_dial_out(map(), String.t(), create_meeting_dial_out_request(), list()) ::
          {:ok, create_meeting_dial_out_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_meeting_dial_out_errors()}
  def create_meeting_dial_out(%Client{} = client, meeting_id, input, options \\ []) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}/dial-outs"
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
  @spec create_meeting_with_attendees(map(), create_meeting_with_attendees_request(), list()) ::
          {:ok, create_meeting_with_attendees_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_meeting_with_attendees_errors()}
  def create_meeting_with_attendees(%Client{} = client, input, options \\ []) do
    url_path = "/meetings?operation=create-attendees"
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
  Creates an order for phone numbers to be provisioned.

  For toll-free numbers, you cannot use the Amazon Chime Business Calling product
  type.
  For numbers outside the U.S., you must use the Amazon Chime SIP Media
  Application Dial-In product type.
  """
  @spec create_phone_number_order(map(), create_phone_number_order_request(), list()) ::
          {:ok, create_phone_number_order_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_phone_number_order_errors()}
  def create_phone_number_order(%Client{} = client, input, options \\ []) do
    url_path = "/phone-number-orders"
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
  @spec create_proxy_session(map(), String.t(), create_proxy_session_request(), list()) ::
          {:ok, create_proxy_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_proxy_session_errors()}
  def create_proxy_session(%Client{} = client, voice_connector_id, input, options \\ []) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/proxy-sessions"
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
  Creates a chat room for the specified Amazon Chime Enterprise account.
  """
  @spec create_room(map(), String.t(), create_room_request(), list()) ::
          {:ok, create_room_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_room_errors()}
  def create_room(%Client{} = client, account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/rooms"
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
  Adds a member to a chat room in an Amazon Chime Enterprise account.

  A member can be either a user or a bot. The member role designates whether the
  member is a chat room administrator or a general chat room member.
  """
  @spec create_room_membership(
          map(),
          String.t(),
          String.t(),
          create_room_membership_request(),
          list()
        ) ::
          {:ok, create_room_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_room_membership_errors()}
  def create_room_membership(%Client{} = client, account_id, room_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/rooms/#{AWS.Util.encode_uri(room_id)}/memberships"

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
  @spec create_sip_media_application(map(), create_sip_media_application_request(), list()) ::
          {:ok, create_sip_media_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_sip_media_application_errors()}
  def create_sip_media_application(%Client{} = client, input, options \\ []) do
    url_path = "/sip-media-applications"
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
  @spec create_sip_media_application_call(
          map(),
          String.t(),
          create_sip_media_application_call_request(),
          list()
        ) ::
          {:ok, create_sip_media_application_call_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_sip_media_application_call_errors()}
  def create_sip_media_application_call(
        %Client{} = client,
        sip_media_application_id,
        input,
        options \\ []
      ) do
    url_path = "/sip-media-applications/#{AWS.Util.encode_uri(sip_media_application_id)}/calls"
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
  @spec create_sip_rule(map(), create_sip_rule_request(), list()) ::
          {:ok, create_sip_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_sip_rule_errors()}
  def create_sip_rule(%Client{} = client, input, options \\ []) do
    url_path = "/sip-rules"
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
  Creates a user under the specified Amazon Chime account.
  """
  @spec create_user(map(), String.t(), create_user_request(), list()) ::
          {:ok, create_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_user_errors()}
  def create_user(%Client{} = client, account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/users?operation=create"
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
  @spec create_voice_connector(map(), create_voice_connector_request(), list()) ::
          {:ok, create_voice_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_voice_connector_errors()}
  def create_voice_connector(%Client{} = client, input, options \\ []) do
    url_path = "/voice-connectors"
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
  @spec create_voice_connector_group(map(), create_voice_connector_group_request(), list()) ::
          {:ok, create_voice_connector_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_voice_connector_group_errors()}
  def create_voice_connector_group(%Client{} = client, input, options \\ []) do
    url_path = "/voice-connector-groups"
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
  @spec delete_account(map(), String.t(), delete_account_request(), list()) ::
          {:ok, delete_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_account_errors()}
  def delete_account(%Client{} = client, account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}"
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
  @spec delete_app_instance(map(), String.t(), delete_app_instance_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_app_instance_errors()}
  def delete_app_instance(%Client{} = client, app_instance_arn, input, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "identity-")

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
  @spec delete_app_instance_admin(
          map(),
          String.t(),
          String.t(),
          delete_app_instance_admin_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_app_instance_admin_errors()}
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
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "identity-")

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
  @spec delete_app_instance_streaming_configurations(
          map(),
          String.t(),
          delete_app_instance_streaming_configurations_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_app_instance_streaming_configurations_errors()}
  def delete_app_instance_streaming_configurations(
        %Client{} = client,
        app_instance_arn,
        input,
        options \\ []
      ) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/streaming-configurations"
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
  @spec delete_app_instance_user(map(), String.t(), delete_app_instance_user_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_app_instance_user_errors()}
  def delete_app_instance_user(%Client{} = client, app_instance_user_arn, input, options \\ []) do
    url_path = "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "identity-")

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
  @spec delete_attendee(map(), String.t(), String.t(), delete_attendee_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_attendee_errors()}
  def delete_attendee(%Client{} = client, attendee_id, meeting_id, input, options \\ []) do
    url_path =
      "/meetings/#{AWS.Util.encode_uri(meeting_id)}/attendees/#{AWS.Util.encode_uri(attendee_id)}"

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
  @spec delete_channel(map(), String.t(), delete_channel_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_channel_errors()}
  def delete_channel(%Client{} = client, channel_arn, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

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
  @spec delete_channel_ban(map(), String.t(), String.t(), delete_channel_ban_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_channel_ban_errors()}
  def delete_channel_ban(%Client{} = client, channel_arn, member_arn, input, options \\ []) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/bans/#{AWS.Util.encode_uri(member_arn)}"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

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
  @spec delete_channel_membership(
          map(),
          String.t(),
          String.t(),
          delete_channel_membership_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_channel_membership_errors()}
  def delete_channel_membership(%Client{} = client, channel_arn, member_arn, input, options \\ []) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/memberships/#{AWS.Util.encode_uri(member_arn)}"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

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
  @spec delete_channel_message(
          map(),
          String.t(),
          String.t(),
          delete_channel_message_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_channel_message_errors()}
  def delete_channel_message(%Client{} = client, channel_arn, message_id, input, options \\ []) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/messages/#{AWS.Util.encode_uri(message_id)}"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

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
  @spec delete_channel_moderator(
          map(),
          String.t(),
          String.t(),
          delete_channel_moderator_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_channel_moderator_errors()}
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

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

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

  @doc """
  Deletes the events configuration that allows a bot to receive outgoing events.
  """
  @spec delete_events_configuration(
          map(),
          String.t(),
          String.t(),
          delete_events_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_events_configuration_errors()}
  def delete_events_configuration(%Client{} = client, account_id, bot_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/bots/#{AWS.Util.encode_uri(bot_id)}/events-configuration"

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
  @spec delete_media_capture_pipeline(
          map(),
          String.t(),
          delete_media_capture_pipeline_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_media_capture_pipeline_errors()}
  def delete_media_capture_pipeline(%Client{} = client, media_pipeline_id, input, options \\ []) do
    url_path = "/media-capture-pipelines/#{AWS.Util.encode_uri(media_pipeline_id)}"
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
  @spec delete_meeting(map(), String.t(), delete_meeting_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_meeting_errors()}
  def delete_meeting(%Client{} = client, meeting_id, input, options \\ []) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}"
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
  @spec delete_phone_number(map(), String.t(), delete_phone_number_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_phone_number_errors()}
  def delete_phone_number(%Client{} = client, phone_number_id, input, options \\ []) do
    url_path = "/phone-numbers/#{AWS.Util.encode_uri(phone_number_id)}"
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
  @spec delete_proxy_session(
          map(),
          String.t(),
          String.t(),
          delete_proxy_session_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_proxy_session_errors()}
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
      204
    )
  end

  @doc """
  Deletes a chat room in an Amazon Chime Enterprise account.
  """
  @spec delete_room(map(), String.t(), String.t(), delete_room_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_room_errors()}
  def delete_room(%Client{} = client, account_id, room_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/rooms/#{AWS.Util.encode_uri(room_id)}"

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
      204
    )
  end

  @doc """
  Removes a member from a chat room in an Amazon Chime Enterprise account.
  """
  @spec delete_room_membership(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_room_membership_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_room_membership_errors()}
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
  @spec delete_sip_media_application(
          map(),
          String.t(),
          delete_sip_media_application_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_sip_media_application_errors()}
  def delete_sip_media_application(
        %Client{} = client,
        sip_media_application_id,
        input,
        options \\ []
      ) do
    url_path = "/sip-media-applications/#{AWS.Util.encode_uri(sip_media_application_id)}"
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
  @spec delete_sip_rule(map(), String.t(), delete_sip_rule_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_sip_rule_errors()}
  def delete_sip_rule(%Client{} = client, sip_rule_id, input, options \\ []) do
    url_path = "/sip-rules/#{AWS.Util.encode_uri(sip_rule_id)}"
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
  @spec delete_voice_connector(map(), String.t(), delete_voice_connector_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_voice_connector_errors()}
  def delete_voice_connector(%Client{} = client, voice_connector_id, input, options \\ []) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}"
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
  @spec delete_voice_connector_emergency_calling_configuration(
          map(),
          String.t(),
          delete_voice_connector_emergency_calling_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_voice_connector_emergency_calling_configuration_errors()}
  def delete_voice_connector_emergency_calling_configuration(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/emergency-calling-configuration"

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
  @spec delete_voice_connector_group(
          map(),
          String.t(),
          delete_voice_connector_group_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_voice_connector_group_errors()}
  def delete_voice_connector_group(
        %Client{} = client,
        voice_connector_group_id,
        input,
        options \\ []
      ) do
    url_path = "/voice-connector-groups/#{AWS.Util.encode_uri(voice_connector_group_id)}"
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
  @spec delete_voice_connector_origination(
          map(),
          String.t(),
          delete_voice_connector_origination_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_voice_connector_origination_errors()}
  def delete_voice_connector_origination(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/origination"
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
  @spec delete_voice_connector_proxy(
          map(),
          String.t(),
          delete_voice_connector_proxy_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_voice_connector_proxy_errors()}
  def delete_voice_connector_proxy(%Client{} = client, voice_connector_id, input, options \\ []) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/programmable-numbers/proxy"

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
  @spec delete_voice_connector_streaming_configuration(
          map(),
          String.t(),
          delete_voice_connector_streaming_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_voice_connector_streaming_configuration_errors()}
  def delete_voice_connector_streaming_configuration(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/streaming-configuration"

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
  @spec delete_voice_connector_termination(
          map(),
          String.t(),
          delete_voice_connector_termination_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_voice_connector_termination_errors()}
  def delete_voice_connector_termination(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/termination"
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
  @spec delete_voice_connector_termination_credentials(
          map(),
          String.t(),
          delete_voice_connector_termination_credentials_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_voice_connector_termination_credentials_errors()}
  def delete_voice_connector_termination_credentials(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/termination/credentials?operation=delete"

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
  @spec describe_app_instance(map(), String.t(), list()) ::
          {:ok, describe_app_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_app_instance_errors()}
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
  @spec describe_app_instance_admin(map(), String.t(), String.t(), list()) ::
          {:ok, describe_app_instance_admin_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_app_instance_admin_errors()}
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
  @spec describe_app_instance_user(map(), String.t(), list()) ::
          {:ok, describe_app_instance_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_app_instance_user_errors()}
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
  @spec describe_channel(map(), String.t(), String.t() | nil, list()) ::
          {:ok, describe_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_channel_errors()}
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
  @spec describe_channel_ban(map(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, describe_channel_ban_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_channel_ban_errors()}
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
  @spec describe_channel_membership(map(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, describe_channel_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_channel_membership_errors()}
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
  @spec describe_channel_membership_for_app_instance_user(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          list()
        ) ::
          {:ok, describe_channel_membership_for_app_instance_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_channel_membership_for_app_instance_user_errors()}
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
  @spec describe_channel_moderated_by_app_instance_user(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          list()
        ) ::
          {:ok, describe_channel_moderated_by_app_instance_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_channel_moderated_by_app_instance_user_errors()}
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
  @spec describe_channel_moderator(map(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, describe_channel_moderator_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_channel_moderator_errors()}
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
  @spec disassociate_phone_number_from_user(
          map(),
          String.t(),
          String.t(),
          disassociate_phone_number_from_user_request(),
          list()
        ) ::
          {:ok, disassociate_phone_number_from_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_phone_number_from_user_errors()}
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
  @spec disassociate_phone_numbers_from_voice_connector(
          map(),
          String.t(),
          disassociate_phone_numbers_from_voice_connector_request(),
          list()
        ) ::
          {:ok, disassociate_phone_numbers_from_voice_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_phone_numbers_from_voice_connector_errors()}
  def disassociate_phone_numbers_from_voice_connector(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}?operation=disassociate-phone-numbers"

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
  @spec disassociate_phone_numbers_from_voice_connector_group(
          map(),
          String.t(),
          disassociate_phone_numbers_from_voice_connector_group_request(),
          list()
        ) ::
          {:ok, disassociate_phone_numbers_from_voice_connector_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_phone_numbers_from_voice_connector_group_errors()}
  def disassociate_phone_numbers_from_voice_connector_group(
        %Client{} = client,
        voice_connector_group_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connector-groups/#{AWS.Util.encode_uri(voice_connector_group_id)}?operation=disassociate-phone-numbers"

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
  Disassociates the specified sign-in delegate groups from the specified Amazon
  Chime account.
  """
  @spec disassociate_signin_delegate_groups_from_account(
          map(),
          String.t(),
          disassociate_signin_delegate_groups_from_account_request(),
          list()
        ) ::
          {:ok, disassociate_signin_delegate_groups_from_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_signin_delegate_groups_from_account_errors()}
  def disassociate_signin_delegate_groups_from_account(
        %Client{} = client,
        account_id,
        input,
        options \\ []
      ) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}?operation=disassociate-signin-delegate-groups"

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
  Retrieves details for the specified Amazon Chime account, such as account type
  and supported
  licenses.
  """
  @spec get_account(map(), String.t(), list()) ::
          {:ok, get_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_account_errors()}
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
  @spec get_account_settings(map(), String.t(), list()) ::
          {:ok, get_account_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_account_settings_errors()}
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
  @spec get_app_instance_retention_settings(map(), String.t(), list()) ::
          {:ok, get_app_instance_retention_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_app_instance_retention_settings_errors()}
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
  @spec get_app_instance_streaming_configurations(map(), String.t(), list()) ::
          {:ok, get_app_instance_streaming_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_app_instance_streaming_configurations_errors()}
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
  @spec get_attendee(map(), String.t(), String.t(), list()) ::
          {:ok, get_attendee_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_attendee_errors()}
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
  @spec get_bot(map(), String.t(), String.t(), list()) ::
          {:ok, get_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_bot_errors()}
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
  @spec get_channel_message(map(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, get_channel_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_channel_message_errors()}
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
  @spec get_events_configuration(map(), String.t(), String.t(), list()) ::
          {:ok, get_events_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_events_configuration_errors()}
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
  @spec get_global_settings(map(), list()) ::
          {:ok, get_global_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_global_settings_errors()}
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
  @spec get_media_capture_pipeline(map(), String.t(), list()) ::
          {:ok, get_media_capture_pipeline_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_media_capture_pipeline_errors()}
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
  @spec get_meeting(map(), String.t(), list()) ::
          {:ok, get_meeting_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_meeting_errors()}
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
  @spec get_messaging_session_endpoint(map(), list()) ::
          {:ok, get_messaging_session_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_messaging_session_endpoint_errors()}
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
  @spec get_phone_number(map(), String.t(), list()) ::
          {:ok, get_phone_number_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_phone_number_errors()}
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
  @spec get_phone_number_order(map(), String.t(), list()) ::
          {:ok, get_phone_number_order_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_phone_number_order_errors()}
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
  @spec get_phone_number_settings(map(), list()) ::
          {:ok, get_phone_number_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_phone_number_settings_errors()}
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
  @spec get_proxy_session(map(), String.t(), String.t(), list()) ::
          {:ok, get_proxy_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_proxy_session_errors()}
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
  @spec get_retention_settings(map(), String.t(), list()) ::
          {:ok, get_retention_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_retention_settings_errors()}
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
  @spec get_room(map(), String.t(), String.t(), list()) ::
          {:ok, get_room_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_room_errors()}
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
  @spec get_sip_media_application(map(), String.t(), list()) ::
          {:ok, get_sip_media_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sip_media_application_errors()}
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
  @spec get_sip_media_application_logging_configuration(map(), String.t(), list()) ::
          {:ok, get_sip_media_application_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sip_media_application_logging_configuration_errors()}
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
  @spec get_sip_rule(map(), String.t(), list()) ::
          {:ok, get_sip_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sip_rule_errors()}
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
  @spec get_user(map(), String.t(), String.t(), list()) ::
          {:ok, get_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_user_errors()}
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
  @spec get_user_settings(map(), String.t(), String.t(), list()) ::
          {:ok, get_user_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_user_settings_errors()}
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
  @spec get_voice_connector(map(), String.t(), list()) ::
          {:ok, get_voice_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_voice_connector_errors()}
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
  @spec get_voice_connector_emergency_calling_configuration(map(), String.t(), list()) ::
          {:ok, get_voice_connector_emergency_calling_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_voice_connector_emergency_calling_configuration_errors()}
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
  @spec get_voice_connector_group(map(), String.t(), list()) ::
          {:ok, get_voice_connector_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_voice_connector_group_errors()}
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
  @spec get_voice_connector_logging_configuration(map(), String.t(), list()) ::
          {:ok, get_voice_connector_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_voice_connector_logging_configuration_errors()}
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
  @spec get_voice_connector_origination(map(), String.t(), list()) ::
          {:ok, get_voice_connector_origination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_voice_connector_origination_errors()}
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
  @spec get_voice_connector_proxy(map(), String.t(), list()) ::
          {:ok, get_voice_connector_proxy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_voice_connector_proxy_errors()}
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
  @spec get_voice_connector_streaming_configuration(map(), String.t(), list()) ::
          {:ok, get_voice_connector_streaming_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_voice_connector_streaming_configuration_errors()}
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
  @spec get_voice_connector_termination(map(), String.t(), list()) ::
          {:ok, get_voice_connector_termination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_voice_connector_termination_errors()}
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
  @spec get_voice_connector_termination_health(map(), String.t(), list()) ::
          {:ok, get_voice_connector_termination_health_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_voice_connector_termination_health_errors()}
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
  @spec invite_users(map(), String.t(), invite_users_request(), list()) ::
          {:ok, invite_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, invite_users_errors()}
  def invite_users(%Client{} = client, account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/users?operation=add"
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
  Lists the Amazon Chime accounts under the administrator's AWS account.

  You can filter accounts
  by account name prefix. To find out which Amazon Chime account a user belongs
  to, you can
  filter by the user's email address, which returns one account result.
  """
  @spec list_accounts(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_accounts_errors()}
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
  @spec list_app_instance_admins(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_app_instance_admins_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_app_instance_admins_errors()}
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
  @spec list_app_instance_users(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_app_instance_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_app_instance_users_errors()}
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
  @spec list_app_instances(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_app_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_app_instances_errors()}
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
  @spec list_attendee_tags(map(), String.t(), String.t(), list()) ::
          {:ok, list_attendee_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_attendee_tags_errors()}
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
  @spec list_attendees(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_attendees_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_attendees_errors()}
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
  @spec list_bots(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_bots_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_bots_errors()}
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
  @spec list_channel_bans(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_channel_bans_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_channel_bans_errors()}
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
  @spec list_channel_memberships(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_channel_memberships_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_channel_memberships_errors()}
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
  @spec list_channel_memberships_for_app_instance_user(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_channel_memberships_for_app_instance_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_channel_memberships_for_app_instance_user_errors()}
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
  @spec list_channel_messages(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_channel_messages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_channel_messages_errors()}
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
  @spec list_channel_moderators(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_channel_moderators_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_channel_moderators_errors()}
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
  @spec list_channels(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_channels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_channels_errors()}
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
  @spec list_channels_moderated_by_app_instance_user(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_channels_moderated_by_app_instance_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_channels_moderated_by_app_instance_user_errors()}
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
  @spec list_media_capture_pipelines(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_media_capture_pipelines_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_media_capture_pipelines_errors()}
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
  @spec list_meeting_tags(map(), String.t(), list()) ::
          {:ok, list_meeting_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_meeting_tags_errors()}
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
  @spec list_meetings(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_meetings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_meetings_errors()}
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
  @spec list_phone_number_orders(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_phone_number_orders_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_phone_number_orders_errors()}
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
  @spec list_phone_numbers(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_phone_numbers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_phone_numbers_errors()}
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
  @spec list_proxy_sessions(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_proxy_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_proxy_sessions_errors()}
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
  @spec list_room_memberships(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_room_memberships_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_room_memberships_errors()}
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
  @spec list_rooms(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_rooms_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_rooms_errors()}
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
  @spec list_sip_media_applications(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_sip_media_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_sip_media_applications_errors()}
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
  @spec list_sip_rules(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_sip_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_sip_rules_errors()}
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
  @spec list_supported_phone_number_countries(map(), String.t(), list()) ::
          {:ok, list_supported_phone_number_countries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_supported_phone_number_countries_errors()}
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
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
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
  @spec list_users(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_users_errors()}
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
  @spec list_voice_connector_groups(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_voice_connector_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_voice_connector_groups_errors()}
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
  @spec list_voice_connector_termination_credentials(map(), String.t(), list()) ::
          {:ok, list_voice_connector_termination_credentials_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_voice_connector_termination_credentials_errors()}
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
  @spec list_voice_connectors(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_voice_connectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_voice_connectors_errors()}
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
  @spec logout_user(map(), String.t(), String.t(), logout_user_request(), list()) ::
          {:ok, logout_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, logout_user_errors()}
  def logout_user(%Client{} = client, account_id, user_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/users/#{AWS.Util.encode_uri(user_id)}?operation=logout"

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
  @spec put_app_instance_retention_settings(
          map(),
          String.t(),
          put_app_instance_retention_settings_request(),
          list()
        ) ::
          {:ok, put_app_instance_retention_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_app_instance_retention_settings_errors()}
  def put_app_instance_retention_settings(
        %Client{} = client,
        app_instance_arn,
        input,
        options \\ []
      ) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/retention-settings"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "identity-")

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
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
  @spec put_app_instance_streaming_configurations(
          map(),
          String.t(),
          put_app_instance_streaming_configurations_request(),
          list()
        ) ::
          {:ok, put_app_instance_streaming_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_app_instance_streaming_configurations_errors()}
  def put_app_instance_streaming_configurations(
        %Client{} = client,
        app_instance_arn,
        input,
        options \\ []
      ) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}/streaming-configurations"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates an events configuration that allows a bot to receive outgoing events
  sent by Amazon
  Chime.

  Choose either an HTTPS endpoint or a Lambda function ARN. For more information,
  see `Bot`.
  """
  @spec put_events_configuration(
          map(),
          String.t(),
          String.t(),
          put_events_configuration_request(),
          list()
        ) ::
          {:ok, put_events_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_events_configuration_errors()}
  def put_events_configuration(%Client{} = client, account_id, bot_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/bots/#{AWS.Util.encode_uri(bot_id)}/events-configuration"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
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
  @spec put_retention_settings(map(), String.t(), put_retention_settings_request(), list()) ::
          {:ok, put_retention_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_retention_settings_errors()}
  def put_retention_settings(%Client{} = client, account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/retention-settings"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
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
  @spec put_sip_media_application_logging_configuration(
          map(),
          String.t(),
          put_sip_media_application_logging_configuration_request(),
          list()
        ) ::
          {:ok, put_sip_media_application_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_sip_media_application_logging_configuration_errors()}
  def put_sip_media_application_logging_configuration(
        %Client{} = client,
        sip_media_application_id,
        input,
        options \\ []
      ) do
    url_path =
      "/sip-media-applications/#{AWS.Util.encode_uri(sip_media_application_id)}/logging-configuration"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
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
  @spec put_voice_connector_emergency_calling_configuration(
          map(),
          String.t(),
          put_voice_connector_emergency_calling_configuration_request(),
          list()
        ) ::
          {:ok, put_voice_connector_emergency_calling_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_voice_connector_emergency_calling_configuration_errors()}
  def put_voice_connector_emergency_calling_configuration(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/emergency-calling-configuration"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
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
  @spec put_voice_connector_logging_configuration(
          map(),
          String.t(),
          put_voice_connector_logging_configuration_request(),
          list()
        ) ::
          {:ok, put_voice_connector_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_voice_connector_logging_configuration_errors()}
  def put_voice_connector_logging_configuration(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/logging-configuration"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
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
  @spec put_voice_connector_origination(
          map(),
          String.t(),
          put_voice_connector_origination_request(),
          list()
        ) ::
          {:ok, put_voice_connector_origination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_voice_connector_origination_errors()}
  def put_voice_connector_origination(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/origination"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
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
  @spec put_voice_connector_proxy(map(), String.t(), put_voice_connector_proxy_request(), list()) ::
          {:ok, put_voice_connector_proxy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_voice_connector_proxy_errors()}
  def put_voice_connector_proxy(%Client{} = client, voice_connector_id, input, options \\ []) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/programmable-numbers/proxy"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
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
  @spec put_voice_connector_streaming_configuration(
          map(),
          String.t(),
          put_voice_connector_streaming_configuration_request(),
          list()
        ) ::
          {:ok, put_voice_connector_streaming_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_voice_connector_streaming_configuration_errors()}
  def put_voice_connector_streaming_configuration(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/streaming-configuration"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
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
  @spec put_voice_connector_termination(
          map(),
          String.t(),
          put_voice_connector_termination_request(),
          list()
        ) ::
          {:ok, put_voice_connector_termination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_voice_connector_termination_errors()}
  def put_voice_connector_termination(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/termination"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
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
  @spec put_voice_connector_termination_credentials(
          map(),
          String.t(),
          put_voice_connector_termination_credentials_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_voice_connector_termination_credentials_errors()}
  def put_voice_connector_termination_credentials(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/termination/credentials?operation=put"

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
  @spec redact_channel_message(
          map(),
          String.t(),
          String.t(),
          redact_channel_message_request(),
          list()
        ) ::
          {:ok, redact_channel_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, redact_channel_message_errors()}
  def redact_channel_message(%Client{} = client, channel_arn, message_id, input, options \\ []) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/messages/#{AWS.Util.encode_uri(message_id)}?operation=redact"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

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
  Redacts the specified message from the specified Amazon Chime conversation.
  """
  @spec redact_conversation_message(
          map(),
          String.t(),
          String.t(),
          String.t(),
          redact_conversation_message_request(),
          list()
        ) ::
          {:ok, redact_conversation_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, redact_conversation_message_errors()}
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
  Redacts the specified message from the specified Amazon Chime channel.
  """
  @spec redact_room_message(
          map(),
          String.t(),
          String.t(),
          String.t(),
          redact_room_message_request(),
          list()
        ) ::
          {:ok, redact_room_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, redact_room_message_errors()}
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
  Regenerates the security token for a bot.
  """
  @spec regenerate_security_token(
          map(),
          String.t(),
          String.t(),
          regenerate_security_token_request(),
          list()
        ) ::
          {:ok, regenerate_security_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, regenerate_security_token_errors()}
  def regenerate_security_token(%Client{} = client, account_id, bot_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/bots/#{AWS.Util.encode_uri(bot_id)}?operation=regenerate-security-token"

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
  Resets the personal meeting PIN for the specified user on an Amazon Chime
  account.

  Returns
  the `User` object with the updated personal meeting PIN.
  """
  @spec reset_personal_pin(map(), String.t(), String.t(), reset_personal_pin_request(), list()) ::
          {:ok, reset_personal_pin_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reset_personal_pin_errors()}
  def reset_personal_pin(%Client{} = client, account_id, user_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/users/#{AWS.Util.encode_uri(user_id)}?operation=reset-personal-pin"

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
  Moves a phone number from the **Deletion queue** back into the
  phone number **Inventory**.
  """
  @spec restore_phone_number(map(), String.t(), restore_phone_number_request(), list()) ::
          {:ok, restore_phone_number_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, restore_phone_number_errors()}
  def restore_phone_number(%Client{} = client, phone_number_id, input, options \\ []) do
    url_path = "/phone-numbers/#{AWS.Util.encode_uri(phone_number_id)}?operation=restore"
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
  Searches for phone numbers that can be ordered.

  For US numbers, provide at least one of
  the following search filters: `AreaCode`, `City`,
  `State`, or `TollFreePrefix`. If you provide
  `City`, you must also provide `State`. Numbers outside the US only
  support the `PhoneNumberType` filter, which you must use.
  """
  @spec search_available_phone_numbers(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, search_available_phone_numbers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_available_phone_numbers_errors()}
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
  @spec send_channel_message(map(), String.t(), send_channel_message_request(), list()) ::
          {:ok, send_channel_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_channel_message_errors()}
  def send_channel_message(%Client{} = client, channel_arn, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/messages"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

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
  @spec start_meeting_transcription(
          map(),
          String.t(),
          start_meeting_transcription_request(),
          list()
        ) ::
          {:ok, start_meeting_transcription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_meeting_transcription_errors()}
  def start_meeting_transcription(%Client{} = client, meeting_id, input, options \\ []) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}/transcription?operation=start"
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
  @spec stop_meeting_transcription(
          map(),
          String.t(),
          stop_meeting_transcription_request(),
          list()
        ) ::
          {:ok, stop_meeting_transcription_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_meeting_transcription_errors()}
  def stop_meeting_transcription(%Client{} = client, meeting_id, input, options \\ []) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}/transcription?operation=stop"
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
  Applies the specified tags to the specified Amazon Chime attendee.

  TagAttendee is not supported in the Amazon Chime SDK Meetings Namespace. Update
  your application to remove calls to this API.
  """
  @spec tag_attendee(map(), String.t(), String.t(), tag_attendee_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_attendee_errors()}
  def tag_attendee(%Client{} = client, attendee_id, meeting_id, input, options \\ []) do
    url_path =
      "/meetings/#{AWS.Util.encode_uri(meeting_id)}/attendees/#{AWS.Util.encode_uri(attendee_id)}/tags?operation=add"

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
  @spec tag_meeting(map(), String.t(), tag_meeting_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_meeting_errors()}
  def tag_meeting(%Client{} = client, meeting_id, input, options \\ []) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}/tags?operation=add"
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
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags?operation=tag-resource"
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
  Untags the specified tags from the specified Amazon Chime SDK attendee.

  UntagAttendee is not supported in the Amazon Chime SDK Meetings Namespace.
  Update your application to remove calls to this API.
  """
  @spec untag_attendee(map(), String.t(), String.t(), untag_attendee_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_attendee_errors()}
  def untag_attendee(%Client{} = client, attendee_id, meeting_id, input, options \\ []) do
    url_path =
      "/meetings/#{AWS.Util.encode_uri(meeting_id)}/attendees/#{AWS.Util.encode_uri(attendee_id)}/tags?operation=delete"

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
  @spec untag_meeting(map(), String.t(), untag_meeting_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_meeting_errors()}
  def untag_meeting(%Client{} = client, meeting_id, input, options \\ []) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}/tags?operation=delete"
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
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags?operation=untag-resource"
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
  Updates account details for the specified Amazon Chime account.

  Currently, only account name and default license updates are supported for this
  action.
  """
  @spec update_account(map(), String.t(), update_account_request(), list()) ::
          {:ok, update_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_account_errors()}
  def update_account(%Client{} = client, account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}"
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
  Updates the settings for the specified Amazon Chime account.

  You can update settings for
  remote control of shared screens, or for the dial-out option. For more
  information about
  these settings, see [Use the Policies Page](https://docs.aws.amazon.com/chime/latest/ag/policies.html) in
  the *Amazon Chime Administration
  Guide*.
  """
  @spec update_account_settings(map(), String.t(), update_account_settings_request(), list()) ::
          {:ok, update_account_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_account_settings_errors()}
  def update_account_settings(%Client{} = client, account_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/settings"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
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
  @spec update_app_instance(map(), String.t(), update_app_instance_request(), list()) ::
          {:ok, update_app_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_app_instance_errors()}
  def update_app_instance(%Client{} = client, app_instance_arn, input, options \\ []) do
    url_path = "/app-instances/#{AWS.Util.encode_uri(app_instance_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "identity-")

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
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
  @spec update_app_instance_user(map(), String.t(), update_app_instance_user_request(), list()) ::
          {:ok, update_app_instance_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_app_instance_user_errors()}
  def update_app_instance_user(%Client{} = client, app_instance_user_arn, input, options \\ []) do
    url_path = "/app-instance-users/#{AWS.Util.encode_uri(app_instance_user_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "identity-")

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the status of the specified bot, such as starting or stopping the bot
  from running in your Amazon Chime Enterprise account.
  """
  @spec update_bot(map(), String.t(), String.t(), update_bot_request(), list()) ::
          {:ok, update_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_bot_errors()}
  def update_bot(%Client{} = client, account_id, bot_id, input, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/bots/#{AWS.Util.encode_uri(bot_id)}"
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
  @spec update_channel(map(), String.t(), update_channel_request(), list()) ::
          {:ok, update_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_channel_errors()}
  def update_channel(%Client{} = client, channel_arn, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
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
  @spec update_channel_message(
          map(),
          String.t(),
          String.t(),
          update_channel_message_request(),
          list()
        ) ::
          {:ok, update_channel_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_channel_message_errors()}
  def update_channel_message(%Client{} = client, channel_arn, message_id, input, options \\ []) do
    url_path =
      "/channels/#{AWS.Util.encode_uri(channel_arn)}/messages/#{AWS.Util.encode_uri(message_id)}"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
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
  @spec update_channel_read_marker(
          map(),
          String.t(),
          update_channel_read_marker_request(),
          list()
        ) ::
          {:ok, update_channel_read_marker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_channel_read_marker_errors()}
  def update_channel_read_marker(%Client{} = client, channel_arn, input, options \\ []) do
    url_path = "/channels/#{AWS.Util.encode_uri(channel_arn)}/readMarker"

    {headers, input} =
      [
        {"ChimeBearer", "x-amz-chime-bearer"}
      ]
      |> Request.build_params(input)

    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "messaging-")

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates global settings for the administrator's AWS account, such as Amazon
  Chime Business Calling and Amazon Chime Voice Connector settings.
  """
  @spec update_global_settings(map(), update_global_settings_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_global_settings_errors()}
  def update_global_settings(%Client{} = client, input, options \\ []) do
    url_path = "/settings"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
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
  @spec update_phone_number(map(), String.t(), update_phone_number_request(), list()) ::
          {:ok, update_phone_number_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_phone_number_errors()}
  def update_phone_number(%Client{} = client, phone_number_id, input, options \\ []) do
    url_path = "/phone-numbers/#{AWS.Util.encode_uri(phone_number_id)}"
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
  Updates the phone number settings for the administrator's AWS account, such as
  the default
  outbound calling name.

  You can update the default outbound calling name once every seven
  days. Outbound calling names can take up to 72 hours to update.
  """
  @spec update_phone_number_settings(map(), update_phone_number_settings_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_phone_number_settings_errors()}
  def update_phone_number_settings(%Client{} = client, input, options \\ []) do
    url_path = "/settings/phone-number"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
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
  @spec update_proxy_session(
          map(),
          String.t(),
          String.t(),
          update_proxy_session_request(),
          list()
        ) ::
          {:ok, update_proxy_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_proxy_session_errors()}
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
  Updates room details, such as the room name, for a room in an Amazon Chime
  Enterprise account.
  """
  @spec update_room(map(), String.t(), String.t(), update_room_request(), list()) ::
          {:ok, update_room_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_room_errors()}
  def update_room(%Client{} = client, account_id, room_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/rooms/#{AWS.Util.encode_uri(room_id)}"

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
  Updates room membership details, such as the member role, for a room in an
  Amazon Chime
  Enterprise account.

  The member role designates whether the member is a chat room
  administrator or a general chat room member. The member role can be updated only
  for
  user IDs.
  """
  @spec update_room_membership(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_room_membership_request(),
          list()
        ) ::
          {:ok, update_room_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_room_membership_errors()}
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
  @spec update_sip_media_application(
          map(),
          String.t(),
          update_sip_media_application_request(),
          list()
        ) ::
          {:ok, update_sip_media_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_sip_media_application_errors()}
  def update_sip_media_application(
        %Client{} = client,
        sip_media_application_id,
        input,
        options \\ []
      ) do
    url_path = "/sip-media-applications/#{AWS.Util.encode_uri(sip_media_application_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
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
  @spec update_sip_media_application_call(
          map(),
          String.t(),
          String.t(),
          update_sip_media_application_call_request(),
          list()
        ) ::
          {:ok, update_sip_media_application_call_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_sip_media_application_call_errors()}
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
  @spec update_sip_rule(map(), String.t(), update_sip_rule_request(), list()) ::
          {:ok, update_sip_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_sip_rule_errors()}
  def update_sip_rule(%Client{} = client, sip_rule_id, input, options \\ []) do
    url_path = "/sip-rules/#{AWS.Util.encode_uri(sip_rule_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  Updates user details for a specified user ID.

  Currently, only `LicenseType` updates are supported for this action.
  """
  @spec update_user(map(), String.t(), String.t(), update_user_request(), list()) ::
          {:ok, update_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_errors()}
  def update_user(%Client{} = client, account_id, user_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/users/#{AWS.Util.encode_uri(user_id)}"

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
  Updates the settings for the specified user, such as phone number settings.
  """
  @spec update_user_settings(
          map(),
          String.t(),
          String.t(),
          update_user_settings_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_settings_errors()}
  def update_user_settings(%Client{} = client, account_id, user_id, input, options \\ []) do
    url_path =
      "/accounts/#{AWS.Util.encode_uri(account_id)}/users/#{AWS.Util.encode_uri(user_id)}/settings"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
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
  @spec update_voice_connector(map(), String.t(), update_voice_connector_request(), list()) ::
          {:ok, update_voice_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_voice_connector_errors()}
  def update_voice_connector(%Client{} = client, voice_connector_id, input, options \\ []) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
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
  @spec update_voice_connector_group(
          map(),
          String.t(),
          update_voice_connector_group_request(),
          list()
        ) ::
          {:ok, update_voice_connector_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_voice_connector_group_errors()}
  def update_voice_connector_group(
        %Client{} = client,
        voice_connector_group_id,
        input,
        options \\ []
      ) do
    url_path = "/voice-connector-groups/#{AWS.Util.encode_uri(voice_connector_group_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
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
  @spec validate_e911_address(map(), validate_e911_address_request(), list()) ::
          {:ok, validate_e911_address_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, validate_e911_address_errors()}
  def validate_e911_address(%Client{} = client, input, options \\ []) do
    url_path = "/emergency-calling/address"
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
      202
    )
  end
end
