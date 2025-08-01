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

      create_meeting_dial_out_response() :: %{
        "TransactionId" => String.t() | Atom.t()
      }

  """
  @type create_meeting_dial_out_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      events_configuration() :: %{
        "BotId" => String.t() | Atom.t(),
        "LambdaFunctionArn" => String.t() | Atom.t(),
        "OutboundEventsHTTPSEndpoint" => String.t() | Atom.t()
      }

  """
  @type events_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      business_calling_settings() :: %{
        "CdrBucket" => String.t() | Atom.t()
      }

  """
  @type business_calling_settings() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_phone_number_request() :: %{
        required("PhoneNumberIds") => list(String.t() | Atom.t())
      }

  """
  @type batch_delete_phone_number_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_phone_number_order_response() :: %{
        "PhoneNumberOrder" => phone_number_order()
      }

  """
  @type create_phone_number_order_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_update_user_response() :: %{
        "UserErrors" => list(user_error())
      }

  """
  @type batch_update_user_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_create_room_membership_response() :: %{
        "Errors" => list(member_error())
      }

  """
  @type batch_create_room_membership_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      member_error() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t() | Atom.t(),
        "MemberId" => String.t() | Atom.t()
      }

  """
  @type member_error() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      redact_room_message_request() :: %{}

  """
  @type redact_room_message_request() :: %{}

  @typedoc """

  ## Example:

      batch_update_phone_number_response() :: %{
        "PhoneNumberErrors" => list(phone_number_error())
      }

  """
  @type batch_update_phone_number_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_account_response() :: %{
        "Account" => account()
      }

  """
  @type get_account_response() :: %{String.t() | Atom.t() => any()}

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

      list_phone_number_orders_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "PhoneNumberOrders" => list(phone_number_order())
      }

  """
  @type list_phone_number_orders_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      redact_conversation_message_response() :: %{}

  """
  @type redact_conversation_message_response() :: %{}

  @typedoc """

  ## Example:

      room() :: %{
        "AccountId" => String.t() | Atom.t(),
        "CreatedBy" => String.t() | Atom.t(),
        "CreatedTimestamp" => non_neg_integer(),
        "Name" => String.t() | Atom.t(),
        "RoomId" => String.t() | Atom.t(),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type room() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_unsuspend_user_response() :: %{
        "UserErrors" => list(user_error())
      }

  """
  @type batch_unsuspend_user_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_room_memberships_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "RoomMemberships" => list(room_membership())
      }

  """
  @type list_room_memberships_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_user_response() :: %{
        "User" => user()
      }

  """
  @type update_user_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      phone_number_country() :: %{
        "CountryCode" => String.t() | Atom.t(),
        "SupportedPhoneNumberTypes" => list(list(any())())
      }

  """
  @type phone_number_country() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      search_available_phone_numbers_response() :: %{
        "E164PhoneNumbers" => list(String.t() | Atom.t()),
        "NextToken" => String.t() | Atom.t()
      }

  """
  @type search_available_phone_numbers_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_rooms_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "Rooms" => list(room())
      }

  """
  @type list_rooms_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_account_settings_request() :: %{}

  """
  @type get_account_settings_request() :: %{}

  @typedoc """

  ## Example:

      update_phone_number_settings_request() :: %{
        required("CallingName") => String.t() | Atom.t()
      }

  """
  @type update_phone_number_settings_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_bot_request() :: %{}

  """
  @type get_bot_request() :: %{}

  @typedoc """

  ## Example:

      service_failure_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | Atom.t()
      }

  """
  @type service_failure_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_account_settings_response() :: %{
        "AccountSettings" => account_settings()
      }

  """
  @type get_account_settings_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      restore_phone_number_request() :: %{}

  """
  @type restore_phone_number_request() :: %{}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | Atom.t()
      }

  """
  @type forbidden_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_bot_response() :: %{
        "Bot" => bot()
      }

  """
  @type get_bot_response() :: %{String.t() | Atom.t() => any()}

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

      telephony_settings() :: %{
        "InboundCalling" => boolean(),
        "OutboundCalling" => boolean(),
        "SMS" => boolean()
      }

  """
  @type telephony_settings() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      phone_number_association() :: %{
        "AssociatedTimestamp" => non_neg_integer(),
        "Name" => list(any()),
        "Value" => String.t() | Atom.t()
      }

  """
  @type phone_number_association() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_user_response() :: %{
        "User" => user()
      }

  """
  @type get_user_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      unauthorized_client_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | Atom.t()
      }

  """
  @type unauthorized_client_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      phone_number() :: %{
        "Associations" => list(phone_number_association()),
        "CallingName" => String.t() | Atom.t(),
        "CallingNameStatus" => list(any()),
        "Capabilities" => phone_number_capabilities(),
        "Country" => String.t() | Atom.t(),
        "CreatedTimestamp" => non_neg_integer(),
        "DeletionTimestamp" => non_neg_integer(),
        "E164PhoneNumber" => String.t() | Atom.t(),
        "PhoneNumberId" => String.t() | Atom.t(),
        "ProductType" => list(any()),
        "Status" => list(any()),
        "Type" => list(any()),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type phone_number() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_phone_number_order_request() :: %{}

  """
  @type get_phone_number_order_request() :: %{}

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
  @type update_phone_number_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      throttled_client_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | Atom.t()
      }

  """
  @type throttled_client_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_events_configuration_request() :: %{}

  """
  @type delete_events_configuration_request() :: %{}

  @typedoc """

  ## Example:

      signin_delegate_group() :: %{
        "GroupName" => String.t() | Atom.t()
      }

  """
  @type signin_delegate_group() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_room_response() :: %{
        "Room" => room()
      }

  """
  @type update_room_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_user_settings_response() :: %{
        "UserSettings" => user_settings()
      }

  """
  @type get_user_settings_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      ordered_phone_number() :: %{
        "E164PhoneNumber" => String.t() | Atom.t(),
        "Status" => list(any())
      }

  """
  @type ordered_phone_number() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_phone_number_order_request() :: %{
        required("E164PhoneNumbers") => list(String.t() | Atom.t()),
        required("ProductType") => list(any())
      }

  """
  @type create_phone_number_order_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      voice_connector_settings() :: %{
        "CdrBucket" => String.t() | Atom.t()
      }

  """
  @type voice_connector_settings() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      restore_phone_number_response() :: %{
        "PhoneNumber" => phone_number()
      }

  """
  @type restore_phone_number_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_phone_number_orders_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_phone_number_orders_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      put_retention_settings_response() :: %{
        "InitiateDeletionTimestamp" => non_neg_integer(),
        "RetentionSettings" => retention_settings()
      }

  """
  @type put_retention_settings_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_supported_phone_number_countries_response() :: %{
        "PhoneNumberCountries" => list(phone_number_country())
      }

  """
  @type list_supported_phone_number_countries_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_create_room_membership_request() :: %{
        required("MembershipItemList") => list(membership_item())
      }

  """
  @type batch_create_room_membership_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      retention_settings() :: %{
        "ConversationRetentionSettings" => conversation_retention_settings(),
        "RoomRetentionSettings" => room_retention_settings()
      }

  """
  @type retention_settings() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      associate_phone_number_with_user_response() :: %{}

  """
  @type associate_phone_number_with_user_response() :: %{}

  @typedoc """

  ## Example:

      room_membership() :: %{
        "InvitedBy" => String.t() | Atom.t(),
        "Member" => member(),
        "Role" => list(any()),
        "RoomId" => String.t() | Atom.t(),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type room_membership() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_bots_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_bots_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | Atom.t()
      }

  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_room_memberships_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_room_memberships_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_accounts_response() :: %{
        "Accounts" => list(account()),
        "NextToken" => String.t() | Atom.t()
      }

  """
  @type list_accounts_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_user_request() :: %{}

  """
  @type get_user_request() :: %{}

  @typedoc """

  ## Example:

      associate_phone_number_with_user_request() :: %{
        required("E164PhoneNumber") => String.t() | Atom.t()
      }

  """
  @type associate_phone_number_with_user_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_user_settings_request() :: %{}

  """
  @type get_user_settings_request() :: %{}

  @typedoc """

  ## Example:

      batch_delete_phone_number_response() :: %{
        "PhoneNumberErrors" => list(phone_number_error())
      }

  """
  @type batch_delete_phone_number_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_phone_number_order_response() :: %{
        "PhoneNumberOrder" => phone_number_order()
      }

  """
  @type get_phone_number_order_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_room_membership_response() :: %{
        "RoomMembership" => room_membership()
      }

  """
  @type create_room_membership_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_phone_numbers_request() :: %{
        optional("FilterName") => list(any()),
        optional("FilterValue") => String.t() | Atom.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("ProductType") => list(any()),
        optional("Status") => list(any())
      }

  """
  @type list_phone_numbers_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_limit_exceeded_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | Atom.t()
      }

  """
  @type resource_limit_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_phone_number_request() :: %{}

  """
  @type get_phone_number_request() :: %{}

  @typedoc """

  ## Example:

      list_users_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "Users" => list(user())
      }

  """
  @type list_users_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | Atom.t()
      }

  """
  @type not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      account() :: %{
        "AccountId" => String.t() | Atom.t(),
        "AccountStatus" => list(any()),
        "AccountType" => list(any()),
        "AwsAccountId" => String.t() | Atom.t(),
        "CreatedTimestamp" => non_neg_integer(),
        "DefaultLicense" => list(any()),
        "Name" => String.t() | Atom.t(),
        "SigninDelegateGroups" => list(signin_delegate_group()),
        "SupportedLicenses" => list(list(any())())
      }

  """
  @type account() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      phone_number_order() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "OrderedPhoneNumbers" => list(ordered_phone_number()),
        "PhoneNumberOrderId" => String.t() | Atom.t(),
        "ProductType" => list(any()),
        "Status" => list(any()),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type phone_number_order() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      put_retention_settings_request() :: %{
        required("RetentionSettings") => retention_settings()
      }

  """
  @type put_retention_settings_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_phone_number_request() :: %{}

  """
  @type delete_phone_number_request() :: %{}

  @typedoc """

  ## Example:

      disassociate_signin_delegate_groups_from_account_request() :: %{
        required("GroupNames") => list(String.t() | Atom.t())
      }

  """
  @type disassociate_signin_delegate_groups_from_account_request() :: %{
          String.t()
          | Atom.t() => any()
        }

  @typedoc """

  ## Example:

      update_room_membership_request() :: %{
        optional("Role") => list(any())
      }

  """
  @type update_room_membership_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_global_settings_response() :: %{
        "BusinessCalling" => business_calling_settings(),
        "VoiceConnector" => voice_connector_settings()
      }

  """
  @type get_global_settings_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_account_settings_request() :: %{
        required("AccountSettings") => account_settings()
      }

  """
  @type update_account_settings_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | Atom.t()
      }

  """
  @type service_unavailable_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      associate_signin_delegate_groups_with_account_response() :: %{}

  """
  @type associate_signin_delegate_groups_with_account_response() :: %{}

  @typedoc """

  ## Example:

      get_phone_number_response() :: %{
        "PhoneNumber" => phone_number()
      }

  """
  @type get_phone_number_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_global_settings_request() :: %{
        optional("BusinessCalling") => business_calling_settings(),
        optional("VoiceConnector") => voice_connector_settings()
      }

  """
  @type update_global_settings_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_user_settings_request() :: %{
        required("UserSettings") => user_settings()
      }

  """
  @type update_user_settings_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_account_request() :: %{
        optional("DefaultLicense") => list(any()),
        optional("Name") => String.t() | Atom.t()
      }

  """
  @type update_account_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      user_error() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t() | Atom.t(),
        "UserId" => String.t() | Atom.t()
      }

  """
  @type user_error() :: %{String.t() | Atom.t() => any()}

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

      delete_account_response() :: %{}

  """
  @type delete_account_response() :: %{}

  @typedoc """

  ## Example:

      alexa_for_business_metadata() :: %{
        "AlexaForBusinessRoomArn" => String.t() | Atom.t(),
        "IsAlexaForBusinessEnabled" => boolean()
      }

  """
  @type alexa_for_business_metadata() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_account_request() :: %{
        required("Name") => String.t() | Atom.t()
      }

  """
  @type create_account_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      invite_users_response() :: %{
        "Invites" => list(invite())
      }

  """
  @type invite_users_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_room_request() :: %{}

  """
  @type get_room_request() :: %{}

  @typedoc """

  ## Example:

      list_bots_response() :: %{
        "Bots" => list(bot()),
        "NextToken" => String.t() | Atom.t()
      }

  """
  @type list_bots_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      disassociate_phone_number_from_user_request() :: %{}

  """
  @type disassociate_phone_number_from_user_request() :: %{}

  @typedoc """

  ## Example:

      unprocessable_entity_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | Atom.t()
      }

  """
  @type unprocessable_entity_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | Atom.t()
      }

  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_room_response() :: %{
        "Room" => room()
      }

  """
  @type get_room_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      phone_number_error() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t() | Atom.t(),
        "PhoneNumberId" => String.t() | Atom.t()
      }

  """
  @type phone_number_error() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_phone_number_request_item() :: %{
        "CallingName" => String.t() | Atom.t(),
        "PhoneNumberId" => String.t() | Atom.t(),
        "ProductType" => list(any())
      }

  """
  @type update_phone_number_request_item() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      account_settings() :: %{
        "DisableRemoteControl" => boolean(),
        "EnableDialOut" => boolean()
      }

  """
  @type account_settings() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_suspend_user_request() :: %{
        required("UserIdList") => list(String.t() | Atom.t())
      }

  """
  @type batch_suspend_user_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_bot_request() :: %{
        optional("Disabled") => boolean()
      }

  """
  @type update_bot_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_user_request() :: %{
        optional("AlexaForBusinessMetadata") => alexa_for_business_metadata(),
        optional("LicenseType") => list(any()),
        optional("UserType") => list(any())
      }

  """
  @type update_user_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_user_request_item() :: %{
        "AlexaForBusinessMetadata" => alexa_for_business_metadata(),
        "LicenseType" => list(any()),
        "UserId" => String.t() | Atom.t(),
        "UserType" => list(any())
      }

  """
  @type update_user_request_item() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_events_configuration_request() :: %{}

  """
  @type get_events_configuration_request() :: %{}

  @typedoc """

  ## Example:

      create_room_membership_request() :: %{
        optional("Role") => list(any()),
        required("MemberId") => String.t() | Atom.t()
      }

  """
  @type create_room_membership_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_room_request() :: %{
        optional("ClientRequestToken") => String.t() | Atom.t(),
        required("Name") => String.t() | Atom.t()
      }

  """
  @type create_room_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_unsuspend_user_request() :: %{
        required("UserIdList") => list(String.t() | Atom.t())
      }

  """
  @type batch_unsuspend_user_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_rooms_request() :: %{
        optional("MaxResults") => integer(),
        optional("MemberId") => String.t() | Atom.t(),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type list_rooms_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      user() :: %{
        "AccountId" => String.t() | Atom.t(),
        "AlexaForBusinessMetadata" => alexa_for_business_metadata(),
        "DisplayName" => String.t() | Atom.t(),
        "InvitedOn" => non_neg_integer(),
        "LicenseType" => list(any()),
        "PersonalPIN" => String.t() | Atom.t(),
        "PrimaryEmail" => String.t() | Atom.t(),
        "PrimaryProvisionedNumber" => String.t() | Atom.t(),
        "RegisteredOn" => non_neg_integer(),
        "UserId" => String.t() | Atom.t(),
        "UserInvitationStatus" => list(any()),
        "UserRegistrationStatus" => list(any()),
        "UserType" => list(any())
      }

  """
  @type user() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      invite_users_request() :: %{
        optional("UserType") => list(any()),
        required("UserEmailList") => list(String.t() | Atom.t())
      }

  """
  @type invite_users_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_phone_number_settings_response() :: %{
        "CallingName" => String.t() | Atom.t(),
        "CallingNameUpdatedTimestamp" => non_neg_integer()
      }

  """
  @type get_phone_number_settings_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      membership_item() :: %{
        "MemberId" => String.t() | Atom.t(),
        "Role" => list(any())
      }

  """
  @type membership_item() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_bot_request() :: %{
        optional("Domain") => String.t() | Atom.t(),
        required("DisplayName") => String.t() | Atom.t()
      }

  """
  @type create_bot_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      regenerate_security_token_response() :: %{
        "Bot" => bot()
      }

  """
  @type regenerate_security_token_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      member() :: %{
        "AccountId" => String.t() | Atom.t(),
        "Email" => String.t() | Atom.t(),
        "FullName" => String.t() | Atom.t(),
        "MemberId" => String.t() | Atom.t(),
        "MemberType" => list(any())
      }

  """
  @type member() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_users_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("UserEmail") => String.t() | Atom.t(),
        optional("UserType") => list(any())
      }

  """
  @type list_users_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_events_configuration_response() :: %{
        "EventsConfiguration" => events_configuration()
      }

  """
  @type get_events_configuration_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_bot_response() :: %{
        "Bot" => bot()
      }

  """
  @type create_bot_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_account_response() :: %{
        "Account" => account()
      }

  """
  @type create_account_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      reset_personal_pin_response() :: %{
        "User" => user()
      }

  """
  @type reset_personal_pin_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | Atom.t()
      }

  """
  @type bad_request_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_phone_numbers_response() :: %{
        "NextToken" => String.t() | Atom.t(),
        "PhoneNumbers" => list(phone_number())
      }

  """
  @type list_phone_numbers_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      invite() :: %{
        "EmailAddress" => String.t() | Atom.t(),
        "EmailStatus" => list(any()),
        "InviteId" => String.t() | Atom.t(),
        "Status" => list(any())
      }

  """
  @type invite() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      user_settings() :: %{
        "Telephony" => telephony_settings()
      }

  """
  @type user_settings() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_room_membership_response() :: %{
        "RoomMembership" => room_membership()
      }

  """
  @type update_room_membership_response() :: %{String.t() | Atom.t() => any()}

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
        required("SigninDelegateGroups") => list(signin_delegate_group())
      }

  """
  @type associate_signin_delegate_groups_with_account_request() :: %{
          String.t()
          | Atom.t() => any()
        }

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
  @type phone_number_capabilities() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      bot() :: %{
        "BotEmail" => String.t() | Atom.t(),
        "BotId" => String.t() | Atom.t(),
        "BotType" => list(any()),
        "CreatedTimestamp" => non_neg_integer(),
        "Disabled" => boolean(),
        "DisplayName" => String.t() | Atom.t(),
        "SecurityToken" => String.t() | Atom.t(),
        "UpdatedTimestamp" => non_neg_integer(),
        "UserId" => String.t() | Atom.t()
      }

  """
  @type bot() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_accounts_request() :: %{
        optional("MaxResults") => integer(),
        optional("Name") => String.t() | Atom.t(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("UserEmail") => String.t() | Atom.t()
      }

  """
  @type list_accounts_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_phone_number_request() :: %{
        optional("CallingName") => String.t() | Atom.t(),
        optional("ProductType") => list(any())
      }

  """
  @type update_phone_number_request() :: %{String.t() | Atom.t() => any()}

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
        optional("LambdaFunctionArn") => String.t() | Atom.t(),
        optional("OutboundEventsHTTPSEndpoint") => String.t() | Atom.t()
      }

  """
  @type put_events_configuration_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_retention_settings_response() :: %{
        "InitiateDeletionTimestamp" => non_neg_integer(),
        "RetentionSettings" => retention_settings()
      }

  """
  @type get_retention_settings_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_room_request() :: %{
        optional("Name") => String.t() | Atom.t()
      }

  """
  @type update_room_request() :: %{String.t() | Atom.t() => any()}

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
  @type update_account_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_user_response() :: %{
        "User" => user()
      }

  """
  @type create_user_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_bot_response() :: %{
        "Bot" => bot()
      }

  """
  @type update_bot_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_suspend_user_response() :: %{
        "UserErrors" => list(user_error())
      }

  """
  @type batch_suspend_user_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_update_phone_number_request() :: %{
        required("UpdatePhoneNumberRequestItems") => list(update_phone_number_request_item())
      }

  """
  @type batch_update_phone_number_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      search_available_phone_numbers_request() :: %{
        optional("AreaCode") => String.t() | Atom.t(),
        optional("City") => String.t() | Atom.t(),
        optional("Country") => String.t() | Atom.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("PhoneNumberType") => list(any()),
        optional("State") => String.t() | Atom.t(),
        optional("TollFreePrefix") => String.t() | Atom.t()
      }

  """
  @type search_available_phone_numbers_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      put_events_configuration_response() :: %{
        "EventsConfiguration" => events_configuration()
      }

  """
  @type put_events_configuration_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_meeting_dial_out_request() :: %{
        required("FromPhoneNumber") => String.t() | Atom.t(),
        required("JoinToken") => String.t() | Atom.t(),
        required("ToPhoneNumber") => String.t() | Atom.t()
      }

  """
  @type create_meeting_dial_out_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_room_response() :: %{
        "Room" => room()
      }

  """
  @type create_room_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      room_retention_settings() :: %{
        "RetentionDays" => integer()
      }

  """
  @type room_retention_settings() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_supported_phone_number_countries_request() :: %{
        required("ProductType") => list(any())
      }

  """
  @type list_supported_phone_number_countries_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      conversation_retention_settings() :: %{
        "RetentionDays" => integer()
      }

  """
  @type conversation_retention_settings() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_user_request() :: %{
        optional("Email") => String.t() | Atom.t(),
        optional("UserType") => list(any()),
        optional("Username") => String.t() | Atom.t()
      }

  """
  @type create_user_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_update_user_request() :: %{
        required("UpdateUserRequestItems") => list(update_user_request_item())
      }

  """
  @type batch_update_user_request() :: %{String.t() | Atom.t() => any()}

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

  @type associate_phone_number_with_user_errors() ::
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

  @type create_bot_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
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

  @type create_phone_number_order_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
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

  @type create_user_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
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

  @type delete_events_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
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

  @type disassociate_phone_number_from_user_errors() ::
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

  @type get_bot_errors() ::
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

  @type list_bots_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
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

  @type list_supported_phone_number_countries_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | throttled_client_exception()
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

  @type logout_user_errors() ::
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

  @type update_bot_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
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
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          associate_phone_number_with_user_request(),
          list()
        ) ::
          {:ok, associate_phone_number_with_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Associates the specified sign-in delegate groups with the specified Amazon Chime
  account.
  """
  @spec associate_signin_delegate_groups_with_account(
          map(),
          String.t() | Atom.t(),
          associate_signin_delegate_groups_with_account_request(),
          list()
        ) ::
          {:ok, associate_signin_delegate_groups_with_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Adds up to 50 members to a chat room in an Amazon Chime Enterprise account.

  Members can be users or bots. The member role designates whether the member is a
  chat room administrator or a general chat room member.
  """
  @spec batch_create_room_membership(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          batch_create_room_membership_request(),
          list()
        ) ::
          {:ok, batch_create_room_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          | {:error, term()}
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
  @spec batch_suspend_user(map(), String.t() | Atom.t(), batch_suspend_user_request(), list()) ::
          {:ok, batch_suspend_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec batch_unsuspend_user(map(), String.t() | Atom.t(), batch_unsuspend_user_request(), list()) ::
          {:ok, batch_unsuspend_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          | {:error, term()}
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
  @spec batch_update_user(map(), String.t() | Atom.t(), batch_update_user_request(), list()) ::
          {:ok, batch_update_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          | {:error, term()}
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
  Creates a bot for an Amazon Chime Enterprise account.
  """
  @spec create_bot(map(), String.t() | Atom.t(), create_bot_request(), list()) ::
          {:ok, create_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Uses the join token and call metadata in a meeting request (From number, To
  number, and so forth) to initiate an outbound call to a public
  switched telephone network (PSTN) and join them into a Chime meeting.

  Also ensures that the From number belongs to the customer.

  To play welcome audio or implement an interactive voice response (IVR), use the
  `CreateSipMediaApplicationCall` action with the corresponding SIP media
  application ID.

  ## This API is not available in a dedicated namespace.
  """
  @spec create_meeting_dial_out(
          map(),
          String.t() | Atom.t(),
          create_meeting_dial_out_request(),
          list()
        ) ::
          {:ok, create_meeting_dial_out_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Creates an order for phone numbers to be provisioned.

  For toll-free numbers, you cannot use the Amazon Chime Business Calling product
  type.
  For numbers outside the U.S., you must use the Amazon Chime SIP Media
  Application Dial-In product type.
  """
  @spec create_phone_number_order(map(), create_phone_number_order_request(), list()) ::
          {:ok, create_phone_number_order_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Creates a chat room for the specified Amazon Chime Enterprise account.
  """
  @spec create_room(map(), String.t() | Atom.t(), create_room_request(), list()) ::
          {:ok, create_room_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          create_room_membership_request(),
          list()
        ) ::
          {:ok, create_room_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Creates a user under the specified Amazon Chime account.
  """
  @spec create_user(map(), String.t() | Atom.t(), create_user_request(), list()) ::
          {:ok, create_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec delete_account(map(), String.t() | Atom.t(), delete_account_request(), list()) ::
          {:ok, delete_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Deletes the events configuration that allows a bot to receive outgoing events.
  """
  @spec delete_events_configuration(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          delete_events_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Moves the specified phone number into the **Deletion queue**.

  A
  phone number must be disassociated from any users or Amazon Chime Voice
  Connectors
  before it can be deleted.

  Deleted phone numbers remain in the
  ## Deletion queue
  for 7 days before they are deleted permanently.
  """
  @spec delete_phone_number(map(), String.t() | Atom.t(), delete_phone_number_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Deletes a chat room in an Amazon Chime Enterprise account.
  """
  @spec delete_room(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          delete_room_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          delete_room_membership_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Disassociates the primary provisioned phone number from the specified Amazon
  Chime user.
  """
  @spec disassociate_phone_number_from_user(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          disassociate_phone_number_from_user_request(),
          list()
        ) ::
          {:ok, disassociate_phone_number_from_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Disassociates the specified sign-in delegate groups from the specified Amazon
  Chime account.
  """
  @spec disassociate_signin_delegate_groups_from_account(
          map(),
          String.t() | Atom.t(),
          disassociate_signin_delegate_groups_from_account_request(),
          list()
        ) ::
          {:ok, disassociate_signin_delegate_groups_from_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_account(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_account_settings(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_account_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_account_settings_errors()}
  def get_account_settings(%Client{} = client, account_id, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves details for the specified bot, such as bot email address, bot type,
  status, and display name.
  """
  @spec get_bot(map(), String.t() | Atom.t(), String.t() | Atom.t(), list()) ::
          {:ok, get_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_bot_errors()}
  def get_bot(%Client{} = client, account_id, bot_id, options \\ []) do
    url_path = "/accounts/#{AWS.Util.encode_uri(account_id)}/bots/#{AWS.Util.encode_uri(bot_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets details for an events configuration that allows a bot to receive outgoing
  events, such as an HTTPS endpoint or Lambda function ARN.
  """
  @spec get_events_configuration(map(), String.t() | Atom.t(), String.t() | Atom.t(), list()) ::
          {:ok, get_events_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          | {:error, term()}
          | {:error, get_global_settings_errors()}
  def get_global_settings(%Client{} = client, options \\ []) do
    url_path = "/settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves details for the specified phone number ID, such as associations,
  capabilities, and product type.
  """
  @spec get_phone_number(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_phone_number_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_phone_number_order(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_phone_number_order_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          | {:error, term()}
          | {:error, get_phone_number_settings_errors()}
  def get_phone_number_settings(%Client{} = client, options \\ []) do
    url_path = "/settings/phone-number"
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
  @spec get_retention_settings(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_retention_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_room(map(), String.t() | Atom.t(), String.t() | Atom.t(), list()) ::
          {:ok, get_room_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Retrieves details for the specified user ID, such as primary email address,
  license type,and personal meeting PIN.

  To retrieve user details with an email address instead of a user ID, use the
  `ListUsers` action, and then filter by email address.
  """
  @spec get_user(map(), String.t() | Atom.t(), String.t() | Atom.t(), list()) ::
          {:ok, get_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec get_user_settings(map(), String.t() | Atom.t(), String.t() | Atom.t(), list()) ::
          {:ok, get_user_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Sends email to a maximum of 50 users, inviting them to the specified Amazon
  Chime
  `Team` account.

  Only `Team` account types are currently
  supported for this action.
  """
  @spec invite_users(map(), String.t() | Atom.t(), invite_users_request(), list()) ::
          {:ok, invite_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_accounts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Lists the bots associated with the administrator's Amazon Chime Enterprise
  account ID.
  """
  @spec list_bots(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_bots_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Lists the phone number orders for the administrator's Amazon Chime account.
  """
  @spec list_phone_number_orders(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_phone_number_orders_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_phone_numbers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Lists the membership details for the specified room in an Amazon Chime
  Enterprise account,
  such as the members' IDs, email addresses, and names.
  """
  @spec list_room_memberships(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_room_memberships_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          String.t() | Atom.t(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_rooms_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Lists supported phone number countries.
  """
  @spec list_supported_phone_number_countries(map(), String.t() | Atom.t(), list()) ::
          {:ok, list_supported_phone_number_countries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Lists the users that belong to the specified Amazon Chime account.

  You can specify an email
  address to list only the user that the email address belongs to.
  """
  @spec list_users(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Logs out the specified user from all of the devices they are currently logged
  into.
  """
  @spec logout_user(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          logout_user_request(),
          list()
        ) ::
          {:ok, logout_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Creates an events configuration that allows a bot to receive outgoing events
  sent by Amazon
  Chime.

  Choose either an HTTPS endpoint or a Lambda function ARN. For more information,
  see `Bot`.
  """
  @spec put_events_configuration(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          put_events_configuration_request(),
          list()
        ) ::
          {:ok, put_events_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec put_retention_settings(
          map(),
          String.t() | Atom.t(),
          put_retention_settings_request(),
          list()
        ) ::
          {:ok, put_retention_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Redacts the specified message from the specified Amazon Chime conversation.
  """
  @spec redact_conversation_message(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          redact_conversation_message_request(),
          list()
        ) ::
          {:ok, redact_conversation_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          redact_room_message_request(),
          list()
        ) ::
          {:ok, redact_room_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          regenerate_security_token_request(),
          list()
        ) ::
          {:ok, regenerate_security_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec reset_personal_pin(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          reset_personal_pin_request(),
          list()
        ) ::
          {:ok, reset_personal_pin_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec restore_phone_number(map(), String.t() | Atom.t(), restore_phone_number_request(), list()) ::
          {:ok, restore_phone_number_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, search_available_phone_numbers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Updates account details for the specified Amazon Chime account.

  Currently, only account name and default license updates are supported for this
  action.
  """
  @spec update_account(map(), String.t() | Atom.t(), update_account_request(), list()) ::
          {:ok, update_account_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec update_account_settings(
          map(),
          String.t() | Atom.t(),
          update_account_settings_request(),
          list()
        ) ::
          {:ok, update_account_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Updates the status of the specified bot, such as starting or stopping the bot
  from running in your Amazon Chime Enterprise account.
  """
  @spec update_bot(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          update_bot_request(),
          list()
        ) ::
          {:ok, update_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Updates global settings for the administrator's AWS account, such as Amazon
  Chime Business Calling and Amazon Chime Voice Connector settings.
  """
  @spec update_global_settings(map(), update_global_settings_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec update_phone_number(map(), String.t() | Atom.t(), update_phone_number_request(), list()) ::
          {:ok, update_phone_number_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          | {:error, term()}
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
  Updates room details, such as the room name, for a room in an Amazon Chime
  Enterprise account.
  """
  @spec update_room(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          update_room_request(),
          list()
        ) ::
          {:ok, update_room_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          update_room_membership_request(),
          list()
        ) ::
          {:ok, update_room_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Updates user details for a specified user ID.

  Currently, only `LicenseType` updates are supported for this action.
  """
  @spec update_user(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          update_user_request(),
          list()
        ) ::
          {:ok, update_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          update_user_settings_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
end
