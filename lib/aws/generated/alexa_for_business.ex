# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AlexaForBusiness do
  @moduledoc """
  Alexa for Business has been retired and is no longer supported.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      profile() :: %{
        "Address" => String.t(),
        "AddressBookArn" => String.t(),
        "DataRetentionOptIn" => boolean(),
        "DistanceUnit" => list(any()),
        "IsDefault" => boolean(),
        "Locale" => String.t(),
        "MaxVolumeLimit" => integer(),
        "MeetingRoomConfiguration" => meeting_room_configuration(),
        "PSTNEnabled" => boolean(),
        "ProfileArn" => String.t(),
        "ProfileName" => String.t(),
        "SetupModeDisabled" => boolean(),
        "TemperatureUnit" => list(any()),
        "Timezone" => String.t(),
        "WakeWord" => list(any())
      }
      
  """
  @type profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      gateway_group_summary() :: %{
        "Arn" => String.t(),
        "Description" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type gateway_group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_gateway_request() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        optional("SoftwareVersion") => String.t(),
        required("GatewayArn") => String.t()
      }
      
  """
  @type update_gateway_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_network_profile_request() :: %{
        optional("CertificateAuthorityArn") => String.t(),
        optional("CurrentPassword") => String.t(),
        optional("Description") => String.t(),
        optional("EapMethod") => list(any()),
        optional("NextPassword") => String.t(),
        optional("Tags") => list(tag()()),
        optional("TrustAnchors") => list(String.t()()),
        required("ClientRequestToken") => String.t(),
        required("NetworkProfileName") => String.t(),
        required("SecurityType") => list(any()),
        required("Ssid") => String.t()
      }
      
  """
  @type create_network_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      audio() :: %{
        "Locale" => list(any()),
        "Location" => String.t()
      }
      
  """
  @type audio() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      skills_store_skill() :: %{
        "IconUrl" => String.t(),
        "SampleUtterances" => list(String.t()()),
        "ShortDescription" => String.t(),
        "SkillDetails" => skill_details(),
        "SkillId" => String.t(),
        "SkillName" => String.t(),
        "SupportsLinking" => boolean()
      }
      
  """
  @type skills_store_skill() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      business_report() :: %{
        "DeliveryTime" => non_neg_integer(),
        "DownloadUrl" => String.t(),
        "FailureCode" => list(any()),
        "S3Location" => business_report_s3_location(),
        "Status" => list(any())
      }
      
  """
  @type business_report() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_network_profile_response() :: %{
        "NetworkProfile" => network_profile()
      }
      
  """
  @type get_network_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("Arn") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_room_skill_parameter_request() :: %{
        optional("RoomArn") => String.t(),
        required("RoomSkillParameter") => room_skill_parameter(),
        required("SkillId") => String.t()
      }
      
  """
  @type put_room_skill_parameter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_network_profiles_response() :: %{
        "NetworkProfiles" => list(network_profile_data()()),
        "NextToken" => String.t(),
        "TotalCount" => integer()
      }
      
  """
  @type search_network_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_device_response() :: %{}
      
  """
  @type update_device_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_contact_request() :: %{
        required("ContactArn") => String.t()
      }
      
  """
  @type delete_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_room_request() :: %{
        optional("RoomArn") => String.t()
      }
      
  """
  @type delete_room_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_address_books_response() :: %{
        "AddressBooks" => list(address_book_data()()),
        "NextToken" => String.t(),
        "TotalCount" => integer()
      }
      
  """
  @type search_address_books_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_users_response() :: %{
        "NextToken" => String.t(),
        "TotalCount" => integer(),
        "Users" => list(user_data()())
      }
      
  """
  @type search_users_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_skills_request() :: %{
        optional("EnablementType") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SkillGroupArn") => String.t(),
        optional("SkillType") => list(any())
      }
      
  """
  @type list_skills_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_skill_authorization_request() :: %{
        optional("RoomArn") => String.t(),
        required("AuthorizationResult") => map(),
        required("SkillId") => String.t()
      }
      
  """
  @type put_skill_authorization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unauthorized_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type unauthorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      room() :: %{
        "Description" => String.t(),
        "ProfileArn" => String.t(),
        "ProviderCalendarId" => String.t(),
        "RoomArn" => String.t(),
        "RoomName" => String.t()
      }
      
  """
  @type room() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      address_book() :: %{
        "AddressBookArn" => String.t(),
        "Description" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type address_book() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_device_with_room_response() :: %{}
      
  """
  @type associate_device_with_room_response() :: %{}

  @typedoc """

  ## Example:
      
      search_network_profiles_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortCriteria") => list(sort()())
      }
      
  """
  @type search_network_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_skill_with_users_response() :: %{}
      
  """
  @type associate_skill_with_users_response() :: %{}

  @typedoc """

  ## Example:
      
      associate_device_with_room_request() :: %{
        optional("DeviceArn") => String.t(),
        optional("RoomArn") => String.t()
      }
      
  """
  @type associate_device_with_room_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_skill_group_request() :: %{
        optional("Description") => String.t(),
        optional("SkillGroupArn") => String.t(),
        optional("SkillGroupName") => String.t()
      }
      
  """
  @type update_skill_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_profile_request() :: %{
        optional("ProfileArn") => String.t()
      }
      
  """
  @type delete_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_skill_group_from_room_response() :: %{}
      
  """
  @type disassociate_skill_group_from_room_response() :: %{}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      create_business_report_schedule_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Recurrence") => business_report_recurrence(),
        optional("S3BucketName") => String.t(),
        optional("S3KeyPrefix") => String.t(),
        optional("ScheduleName") => String.t(),
        optional("Tags") => list(tag()()),
        required("ContentRange") => business_report_content_range(),
        required("Format") => list(any())
      }
      
  """
  @type create_business_report_schedule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_device_request() :: %{
        optional("DeviceArn") => String.t(),
        optional("DeviceName") => String.t()
      }
      
  """
  @type update_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_end_of_meeting_reminder() :: %{
        "Enabled" => boolean(),
        "ReminderAtMinutes" => list(integer()()),
        "ReminderType" => list(any())
      }
      
  """
  @type create_end_of_meeting_reminder() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_skill_from_users_response() :: %{}
      
  """
  @type disassociate_skill_from_users_response() :: %{}

  @typedoc """

  ## Example:
      
      put_invitation_configuration_response() :: %{}
      
  """
  @type put_invitation_configuration_response() :: %{}

  @typedoc """

  ## Example:
      
      resource_in_use_exception() :: %{
        "ClientRequestToken" => String.t(),
        "Message" => String.t()
      }
      
  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_gateways_request() :: %{
        optional("GatewayGroupArn") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_gateways_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_skill_group_response() :: %{}
      
  """
  @type update_skill_group_response() :: %{}

  @typedoc """

  ## Example:
      
      skill_group_data() :: %{
        "Description" => String.t(),
        "SkillGroupArn" => String.t(),
        "SkillGroupName" => String.t()
      }
      
  """
  @type skill_group_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_skills_response() :: %{
        "NextToken" => String.t(),
        "SkillSummaries" => list(skill_summary()())
      }
      
  """
  @type list_skills_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      end_of_meeting_reminder() :: %{
        "Enabled" => boolean(),
        "ReminderAtMinutes" => list(integer()()),
        "ReminderType" => list(any())
      }
      
  """
  @type end_of_meeting_reminder() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      already_exists_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_network_profile_request() :: %{
        required("NetworkProfileArn") => String.t()
      }
      
  """
  @type delete_network_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_address_book_response() :: %{
        "AddressBook" => address_book()
      }
      
  """
  @type get_address_book_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_profile_response() :: %{}
      
  """
  @type delete_profile_response() :: %{}

  @typedoc """

  ## Example:
      
      disassociate_contact_from_address_book_request() :: %{
        required("AddressBookArn") => String.t(),
        required("ContactArn") => String.t()
      }
      
  """
  @type disassociate_contact_from_address_book_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_skills_store_categories_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_skills_store_categories_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      business_report_recurrence() :: %{
        "StartDate" => String.t()
      }
      
  """
  @type business_report_recurrence() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_device_usage_data_request() :: %{
        required("DeviceArn") => String.t(),
        required("DeviceUsageType") => list(any())
      }
      
  """
  @type delete_device_usage_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_device_sync_request() :: %{
        optional("DeviceArn") => String.t(),
        optional("RoomArn") => String.t(),
        required("Features") => list(list(any())())
      }
      
  """
  @type start_device_sync_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_address_book_request() :: %{
        required("AddressBookArn") => String.t()
      }
      
  """
  @type get_address_book_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_skill_group_with_room_response() :: %{}
      
  """
  @type associate_skill_group_with_room_response() :: %{}

  @typedoc """

  ## Example:
      
      phone_number() :: %{
        "Number" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type phone_number() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      business_report_s3_location() :: %{
        "BucketName" => String.t(),
        "Path" => String.t()
      }
      
  """
  @type business_report_s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_invitation_configuration_request() :: %{
        optional("ContactEmail") => String.t(),
        optional("PrivateSkillIds") => list(String.t()()),
        required("OrganizationName") => String.t()
      }
      
  """
  @type put_invitation_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_response() :: %{
        "NextToken" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_address_book_request() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        required("AddressBookArn") => String.t()
      }
      
  """
  @type update_address_book_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_announcement_response() :: %{
        "AnnouncementArn" => String.t()
      }
      
  """
  @type send_announcement_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conference_provider() :: %{
        "Arn" => String.t(),
        "IPDialIn" => ip_dial_in(),
        "MeetingSetting" => meeting_setting(),
        "Name" => String.t(),
        "PSTNDialIn" => p_s_t_n_dial_in(),
        "Type" => list(any())
      }
      
  """
  @type conference_provider() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_device_request() :: %{
        required("DeviceArn") => String.t()
      }
      
  """
  @type delete_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_address_book_request() :: %{
        required("AddressBookArn") => String.t()
      }
      
  """
  @type delete_address_book_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      smart_home_appliance() :: %{
        "Description" => String.t(),
        "FriendlyName" => String.t(),
        "ManufacturerName" => String.t()
      }
      
  """
  @type smart_home_appliance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_device_usage_data_response() :: %{}
      
  """
  @type delete_device_usage_data_response() :: %{}

  @typedoc """

  ## Example:
      
      list_smart_home_appliances_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("RoomArn") => String.t()
      }
      
  """
  @type list_smart_home_appliances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_network_profile_response() :: %{}
      
  """
  @type update_network_profile_response() :: %{}

  @typedoc """

  ## Example:
      
      disassociate_device_from_room_request() :: %{
        optional("DeviceArn") => String.t()
      }
      
  """
  @type disassociate_device_from_room_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_room_response() :: %{}
      
  """
  @type delete_room_response() :: %{}

  @typedoc """

  ## Example:
      
      update_room_response() :: %{}
      
  """
  @type update_room_response() :: %{}

  @typedoc """

  ## Example:
      
      room_data() :: %{
        "Description" => String.t(),
        "ProfileArn" => String.t(),
        "ProfileName" => String.t(),
        "ProviderCalendarId" => String.t(),
        "RoomArn" => String.t(),
        "RoomName" => String.t()
      }
      
  """
  @type room_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_gateway_groups_response() :: %{
        "GatewayGroups" => list(gateway_group_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_gateway_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("Arn") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_invitation_response() :: %{}
      
  """
  @type send_invitation_response() :: %{}

  @typedoc """

  ## Example:
      
      revoke_invitation_request() :: %{
        optional("EnrollmentId") => String.t(),
        optional("UserArn") => String.t()
      }
      
  """
  @type revoke_invitation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_skill_group_response() :: %{}
      
  """
  @type delete_skill_group_response() :: %{}

  @typedoc """

  ## Example:
      
      invalid_service_linked_role_state_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_service_linked_role_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sip_address() :: %{
        "Type" => list(any()),
        "Uri" => String.t()
      }
      
  """
  @type sip_address() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_skills_store_skills_by_category_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("CategoryId") => float()
      }
      
  """
  @type list_skills_store_skills_by_category_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_conference_providers_response() :: %{
        "ConferenceProviders" => list(conference_provider()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_conference_providers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_profile() :: %{
        "CertificateAuthorityArn" => String.t(),
        "CurrentPassword" => String.t(),
        "Description" => String.t(),
        "EapMethod" => list(any()),
        "NetworkProfileArn" => String.t(),
        "NetworkProfileName" => String.t(),
        "NextPassword" => String.t(),
        "SecurityType" => list(any()),
        "Ssid" => String.t(),
        "TrustAnchors" => list(String.t()())
      }
      
  """
  @type network_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_address_book_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Description") => String.t(),
        optional("Tags") => list(tag()()),
        required("Name") => String.t()
      }
      
  """
  @type create_address_book_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      gateway_group() :: %{
        "Arn" => String.t(),
        "Description" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type gateway_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_conference_provider_request() :: %{
        optional("IPDialIn") => ip_dial_in(),
        optional("PSTNDialIn") => p_s_t_n_dial_in(),
        required("ConferenceProviderArn") => String.t(),
        required("ConferenceProviderType") => list(any()),
        required("MeetingSetting") => meeting_setting()
      }
      
  """
  @type update_conference_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      gateway() :: %{
        "Arn" => String.t(),
        "Description" => String.t(),
        "GatewayGroupArn" => String.t(),
        "Name" => String.t(),
        "SoftwareVersion" => String.t()
      }
      
  """
  @type gateway() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      name_in_use_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type name_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_contact_response() :: %{
        "ContactArn" => String.t()
      }
      
  """
  @type create_contact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_address_books_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortCriteria") => list(sort()())
      }
      
  """
  @type search_address_books_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_conference_provider_request() :: %{
        required("ConferenceProviderArn") => String.t()
      }
      
  """
  @type get_conference_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_data() :: %{
        "Email" => String.t(),
        "EnrollmentId" => String.t(),
        "EnrollmentStatus" => list(any()),
        "FirstName" => String.t(),
        "LastName" => String.t(),
        "UserArn" => String.t()
      }
      
  """
  @type user_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_address_book_response() :: %{}
      
  """
  @type delete_address_book_response() :: %{}

  @typedoc """

  ## Example:
      
      gateway_summary() :: %{
        "Arn" => String.t(),
        "Description" => String.t(),
        "GatewayGroupArn" => String.t(),
        "Name" => String.t(),
        "SoftwareVersion" => String.t()
      }
      
  """
  @type gateway_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_address_book_response() :: %{}
      
  """
  @type update_address_book_response() :: %{}

  @typedoc """

  ## Example:
      
      update_meeting_room_configuration() :: %{
        "EndOfMeetingReminder" => update_end_of_meeting_reminder(),
        "InstantBooking" => update_instant_booking(),
        "ProactiveJoin" => update_proactive_join(),
        "RequireCheckIn" => update_require_check_in(),
        "RoomUtilizationMetricsEnabled" => boolean()
      }
      
  """
  @type update_meeting_room_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_skill_group_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Description") => String.t(),
        optional("Tags") => list(tag()()),
        required("SkillGroupName") => String.t()
      }
      
  """
  @type create_skill_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_profile_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("DataRetentionOptIn") => boolean(),
        optional("Locale") => String.t(),
        optional("MaxVolumeLimit") => integer(),
        optional("MeetingRoomConfiguration") => create_meeting_room_configuration(),
        optional("PSTNEnabled") => boolean(),
        optional("SetupModeDisabled") => boolean(),
        optional("Tags") => list(tag()()),
        required("Address") => String.t(),
        required("DistanceUnit") => list(any()),
        required("ProfileName") => String.t(),
        required("TemperatureUnit") => list(any()),
        required("Timezone") => String.t(),
        required("WakeWord") => list(any())
      }
      
  """
  @type create_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_device_events_response() :: %{
        "DeviceEvents" => list(device_event()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_device_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_network_profile_request() :: %{
        required("NetworkProfileArn") => String.t()
      }
      
  """
  @type get_network_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_device_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_device_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conference_preference() :: %{
        "DefaultConferenceProviderArn" => String.t()
      }
      
  """
  @type conference_preference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_conference_provider_response() :: %{}
      
  """
  @type update_conference_provider_response() :: %{}

  @typedoc """

  ## Example:
      
      create_business_report_schedule_response() :: %{
        "ScheduleArn" => String.t()
      }
      
  """
  @type create_business_report_schedule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_announcement_request() :: %{
        optional("TimeToLiveInSeconds") => integer(),
        required("ClientRequestToken") => String.t(),
        required("Content") => content(),
        required("RoomFilters") => list(filter()())
      }
      
  """
  @type send_announcement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_invitation_configuration_request() :: %{}
      
  """
  @type get_invitation_configuration_request() :: %{}

  @typedoc """

  ## Example:
      
      create_network_profile_response() :: %{
        "NetworkProfileArn" => String.t()
      }
      
  """
  @type create_network_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      require_check_in() :: %{
        "Enabled" => boolean(),
        "ReleaseAfterMinutes" => integer()
      }
      
  """
  @type require_check_in() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_gateway_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_gateway_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_skill_group_response() :: %{
        "SkillGroupArn" => String.t()
      }
      
  """
  @type create_skill_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_profile_request() :: %{
        optional("Address") => String.t(),
        optional("DataRetentionOptIn") => boolean(),
        optional("DistanceUnit") => list(any()),
        optional("IsDefault") => boolean(),
        optional("Locale") => String.t(),
        optional("MaxVolumeLimit") => integer(),
        optional("MeetingRoomConfiguration") => update_meeting_room_configuration(),
        optional("PSTNEnabled") => boolean(),
        optional("ProfileArn") => String.t(),
        optional("ProfileName") => String.t(),
        optional("SetupModeDisabled") => boolean(),
        optional("TemperatureUnit") => list(any()),
        optional("Timezone") => String.t(),
        optional("WakeWord") => list(any())
      }
      
  """
  @type update_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_gateway_response() :: %{
        "Gateway" => gateway()
      }
      
  """
  @type get_gateway_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      approve_skill_response() :: %{}
      
  """
  @type approve_skill_response() :: %{}

  @typedoc """

  ## Example:
      
      create_conference_provider_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("IPDialIn") => ip_dial_in(),
        optional("PSTNDialIn") => p_s_t_n_dial_in(),
        optional("Tags") => list(tag()()),
        required("ConferenceProviderName") => String.t(),
        required("ConferenceProviderType") => list(any()),
        required("MeetingSetting") => meeting_setting()
      }
      
  """
  @type create_conference_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_device_events_request() :: %{
        optional("EventType") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("DeviceArn") => String.t()
      }
      
  """
  @type list_device_events_request() :: %{String.t() => any()}

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
      
      search_rooms_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortCriteria") => list(sort()())
      }
      
  """
  @type search_rooms_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_contact_response() :: %{}
      
  """
  @type update_contact_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_skill_authorization_request() :: %{
        optional("RoomArn") => String.t(),
        required("SkillId") => String.t()
      }
      
  """
  @type delete_skill_authorization_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contact_data() :: %{
        "ContactArn" => String.t(),
        "DisplayName" => String.t(),
        "FirstName" => String.t(),
        "LastName" => String.t(),
        "PhoneNumber" => String.t(),
        "PhoneNumbers" => list(phone_number()()),
        "SipAddresses" => list(sip_address()())
      }
      
  """
  @type contact_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_network_profile_response() :: %{}
      
  """
  @type delete_network_profile_response() :: %{}

  @typedoc """

  ## Example:
      
      forget_smart_home_appliances_request() :: %{
        required("RoomArn") => String.t()
      }
      
  """
  @type forget_smart_home_appliances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_conference_provider_response() :: %{
        "ConferenceProvider" => conference_provider()
      }
      
  """
  @type get_conference_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_skill_from_skill_group_response() :: %{}
      
  """
  @type disassociate_skill_from_skill_group_response() :: %{}

  @typedoc """

  ## Example:
      
      get_profile_response() :: %{
        "Profile" => profile()
      }
      
  """
  @type get_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_conference_providers_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_conference_providers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_proactive_join() :: %{
        required("EnabledByMotion") => boolean()
      }
      
  """
  @type update_proactive_join() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_profile_response() :: %{
        "ProfileArn" => String.t()
      }
      
  """
  @type create_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_invitation_configuration_response() :: %{
        "ContactEmail" => String.t(),
        "OrganizationName" => String.t(),
        "PrivateSkillIds" => list(String.t()())
      }
      
  """
  @type get_invitation_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_room_skill_parameter_response() :: %{}
      
  """
  @type put_room_skill_parameter_response() :: %{}

  @typedoc """

  ## Example:
      
      developer_info() :: %{
        "DeveloperName" => String.t(),
        "Email" => String.t(),
        "PrivacyPolicy" => String.t(),
        "Url" => String.t()
      }
      
  """
  @type developer_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_skill_from_users_request() :: %{
        required("SkillId") => String.t()
      }
      
  """
  @type disassociate_skill_from_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_data() :: %{
        "CreatedTime" => non_neg_integer(),
        "DeviceArn" => String.t(),
        "DeviceName" => String.t(),
        "DeviceSerialNumber" => String.t(),
        "DeviceStatus" => list(any()),
        "DeviceStatusInfo" => device_status_info(),
        "DeviceType" => String.t(),
        "MacAddress" => String.t(),
        "NetworkProfileArn" => String.t(),
        "NetworkProfileName" => String.t(),
        "RoomArn" => String.t(),
        "RoomName" => String.t(),
        "SoftwareVersion" => String.t()
      }
      
  """
  @type device_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_business_report_schedules_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_business_report_schedules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_contacts_response() :: %{
        "Contacts" => list(contact_data()()),
        "NextToken" => String.t(),
        "TotalCount" => integer()
      }
      
  """
  @type search_contacts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_skill_authorization_response() :: %{}
      
  """
  @type put_skill_authorization_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_skill_authorization_response() :: %{}
      
  """
  @type delete_skill_authorization_response() :: %{}

  @typedoc """

  ## Example:
      
      update_require_check_in() :: %{
        "Enabled" => boolean(),
        "ReleaseAfterMinutes" => integer()
      }
      
  """
  @type update_require_check_in() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_status_info() :: %{
        "ConnectionStatus" => list(any()),
        "ConnectionStatusUpdatedTime" => non_neg_integer(),
        "DeviceStatusDetails" => list(device_status_detail()())
      }
      
  """
  @type device_status_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      skill_summary() :: %{
        "EnablementType" => list(any()),
        "SkillId" => String.t(),
        "SkillName" => String.t(),
        "SkillType" => list(any()),
        "SupportsLinking" => boolean()
      }
      
  """
  @type skill_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_require_check_in() :: %{
        "Enabled" => boolean(),
        "ReleaseAfterMinutes" => integer()
      }
      
  """
  @type create_require_check_in() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_skill_request() :: %{
        required("SkillId") => String.t()
      }
      
  """
  @type reject_skill_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_users_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortCriteria") => list(sort()())
      }
      
  """
  @type search_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_skill_group_response() :: %{
        "SkillGroup" => skill_group()
      }
      
  """
  @type get_skill_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_skill_with_users_request() :: %{
        required("SkillId") => String.t()
      }
      
  """
  @type associate_skill_with_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_invitation_request() :: %{
        optional("UserArn") => String.t()
      }
      
  """
  @type send_invitation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_room_skill_parameter_response() :: %{}
      
  """
  @type delete_room_skill_parameter_response() :: %{}

  @typedoc """

  ## Example:
      
      invalid_user_status_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_user_status_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_gateway_group_response() :: %{}
      
  """
  @type delete_gateway_group_response() :: %{}

  @typedoc """

  ## Example:
      
      update_gateway_response() :: %{}
      
  """
  @type update_gateway_response() :: %{}

  @typedoc """

  ## Example:
      
      search_devices_response() :: %{
        "Devices" => list(device_data()()),
        "NextToken" => String.t(),
        "TotalCount" => integer()
      }
      
  """
  @type search_devices_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_request() :: %{
        optional("UserArn") => String.t(),
        required("EnrollmentId") => String.t()
      }
      
  """
  @type delete_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      filter() :: %{
        "Key" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sort() :: %{
        "Key" => String.t(),
        "Value" => list(any())
      }
      
  """
  @type sort() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_instant_booking() :: %{
        "DurationInMinutes" => integer(),
        "Enabled" => boolean()
      }
      
  """
  @type update_instant_booking() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contact() :: %{
        "ContactArn" => String.t(),
        "DisplayName" => String.t(),
        "FirstName" => String.t(),
        "LastName" => String.t(),
        "PhoneNumber" => String.t(),
        "PhoneNumbers" => list(phone_number()()),
        "SipAddresses" => list(sip_address()())
      }
      
  """
  @type contact() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      room_skill_parameter() :: %{
        "ParameterKey" => String.t(),
        "ParameterValue" => String.t()
      }
      
  """
  @type room_skill_parameter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_rooms_response() :: %{
        "NextToken" => String.t(),
        "Rooms" => list(room_data()()),
        "TotalCount" => integer()
      }
      
  """
  @type search_rooms_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_network_profile_info() :: %{
        "CertificateArn" => String.t(),
        "CertificateExpirationTime" => non_neg_integer(),
        "NetworkProfileArn" => String.t()
      }
      
  """
  @type device_network_profile_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_device_request() :: %{
        optional("DeviceArn") => String.t()
      }
      
  """
  @type get_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_response() :: %{}
      
  """
  @type delete_user_response() :: %{}

  @typedoc """

  ## Example:
      
      disassociate_contact_from_address_book_response() :: %{}
      
  """
  @type disassociate_contact_from_address_book_response() :: %{}

  @typedoc """

  ## Example:
      
      device_status_detail() :: %{
        "Code" => list(any()),
        "Feature" => list(any())
      }
      
  """
  @type device_status_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_business_report_schedule_response() :: %{}
      
  """
  @type update_business_report_schedule_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_device_response() :: %{}
      
  """
  @type delete_device_response() :: %{}

  @typedoc """

  ## Example:
      
      search_profiles_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortCriteria") => list(sort()())
      }
      
  """
  @type search_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      text() :: %{
        "Locale" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type text() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_device_with_network_profile_response() :: %{}
      
  """
  @type associate_device_with_network_profile_response() :: %{}

  @typedoc """

  ## Example:
      
      skill_group() :: %{
        "Description" => String.t(),
        "SkillGroupArn" => String.t(),
        "SkillGroupName" => String.t()
      }
      
  """
  @type skill_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_room_request() :: %{
        optional("RoomArn") => String.t()
      }
      
  """
  @type get_room_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_contact_request() :: %{
        required("ContactArn") => String.t()
      }
      
  """
  @type get_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      forget_smart_home_appliances_response() :: %{}
      
  """
  @type forget_smart_home_appliances_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_contact_response() :: %{}
      
  """
  @type delete_contact_response() :: %{}

  @typedoc """

  ## Example:
      
      register_avs_device_request() :: %{
        optional("DeviceSerialNumber") => String.t(),
        optional("RoomArn") => String.t(),
        optional("Tags") => list(tag()()),
        required("AmazonId") => String.t(),
        required("ClientId") => String.t(),
        required("ProductId") => String.t(),
        required("UserCode") => String.t()
      }
      
  """
  @type register_avs_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ip_dial_in() :: %{
        "CommsProtocol" => list(any()),
        "Endpoint" => String.t()
      }
      
  """
  @type ip_dial_in() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reject_skill_response() :: %{}
      
  """
  @type reject_skill_response() :: %{}

  @typedoc """

  ## Example:
      
      device_not_registered_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type device_not_registered_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_profiles_response() :: %{
        "NextToken" => String.t(),
        "Profiles" => list(profile_data()()),
        "TotalCount" => integer()
      }
      
  """
  @type search_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_gateway_group_response() :: %{
        "GatewayGroupArn" => String.t()
      }
      
  """
  @type create_gateway_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_conference_preference_response() :: %{}
      
  """
  @type put_conference_preference_response() :: %{}

  @typedoc """

  ## Example:
      
      disassociate_skill_group_from_room_request() :: %{
        optional("RoomArn") => String.t(),
        optional("SkillGroupArn") => String.t()
      }
      
  """
  @type disassociate_skill_group_from_room_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_room_response() :: %{
        "Room" => room()
      }
      
  """
  @type get_room_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_skill_groups_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortCriteria") => list(sort()())
      }
      
  """
  @type search_skill_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      instant_booking() :: %{
        "DurationInMinutes" => integer(),
        "Enabled" => boolean()
      }
      
  """
  @type instant_booking() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_contact_with_address_book_request() :: %{
        required("AddressBookArn") => String.t(),
        required("ContactArn") => String.t()
      }
      
  """
  @type associate_contact_with_address_book_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_end_of_meeting_reminder() :: %{
        "Enabled" => boolean(),
        "ReminderAtMinutes" => list(integer()()),
        "ReminderType" => list(any())
      }
      
  """
  @type update_end_of_meeting_reminder() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_conference_preference_request() :: %{
        required("ConferencePreference") => conference_preference()
      }
      
  """
  @type put_conference_preference_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_certificate_authority_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_certificate_authority_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_meeting_room_configuration() :: %{
        "EndOfMeetingReminder" => create_end_of_meeting_reminder(),
        "InstantBooking" => create_instant_booking(),
        "ProactiveJoin" => create_proactive_join(),
        "RequireCheckIn" => create_require_check_in(),
        "RoomUtilizationMetricsEnabled" => boolean()
      }
      
  """
  @type create_meeting_room_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_smart_home_appliances_response() :: %{
        "NextToken" => String.t(),
        "SmartHomeAppliances" => list(smart_home_appliance()())
      }
      
  """
  @type list_smart_home_appliances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_profile_data() :: %{
        "CertificateAuthorityArn" => String.t(),
        "Description" => String.t(),
        "EapMethod" => list(any()),
        "NetworkProfileArn" => String.t(),
        "NetworkProfileName" => String.t(),
        "SecurityType" => list(any()),
        "Ssid" => String.t()
      }
      
  """
  @type network_profile_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_profile_response() :: %{}
      
  """
  @type update_profile_response() :: %{}

  @typedoc """

  ## Example:
      
      get_profile_request() :: %{
        optional("ProfileArn") => String.t()
      }
      
  """
  @type get_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      meeting_room_configuration() :: %{
        "EndOfMeetingReminder" => end_of_meeting_reminder(),
        "InstantBooking" => instant_booking(),
        "ProactiveJoin" => proactive_join(),
        "RequireCheckIn" => require_check_in(),
        "RoomUtilizationMetricsEnabled" => boolean()
      }
      
  """
  @type meeting_room_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_address_book_response() :: %{
        "AddressBookArn" => String.t()
      }
      
  """
  @type create_address_book_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_network_profile_request() :: %{
        optional("CertificateAuthorityArn") => String.t(),
        optional("CurrentPassword") => String.t(),
        optional("Description") => String.t(),
        optional("NetworkProfileName") => String.t(),
        optional("NextPassword") => String.t(),
        optional("TrustAnchors") => list(String.t()()),
        required("NetworkProfileArn") => String.t()
      }
      
  """
  @type update_network_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_contact_request() :: %{
        optional("DisplayName") => String.t(),
        optional("FirstName") => String.t(),
        optional("LastName") => String.t(),
        optional("PhoneNumber") => String.t(),
        optional("PhoneNumbers") => list(phone_number()()),
        optional("SipAddresses") => list(sip_address()()),
        required("ContactArn") => String.t()
      }
      
  """
  @type update_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_associated_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_associated_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_event() :: %{
        "Timestamp" => non_neg_integer(),
        "Type" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type device_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_proactive_join() :: %{
        required("EnabledByMotion") => boolean()
      }
      
  """
  @type create_proactive_join() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_contacts_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortCriteria") => list(sort()())
      }
      
  """
  @type search_contacts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      proactive_join() :: %{
        optional("EnabledByMotion") => boolean()
      }
      
  """
  @type proactive_join() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_room_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Description") => String.t(),
        optional("ProfileArn") => String.t(),
        optional("ProviderCalendarId") => String.t(),
        optional("Tags") => list(tag()()),
        required("RoomName") => String.t()
      }
      
  """
  @type create_room_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_business_report_schedules_response() :: %{
        "BusinessReportSchedules" => list(business_report_schedule()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_business_report_schedules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_conference_provider_response() :: %{
        "ConferenceProviderArn" => String.t()
      }
      
  """
  @type create_conference_provider_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      business_report_schedule() :: %{
        "ContentRange" => business_report_content_range(),
        "Format" => list(any()),
        "LastBusinessReport" => business_report(),
        "Recurrence" => business_report_recurrence(),
        "S3BucketName" => String.t(),
        "S3KeyPrefix" => String.t(),
        "ScheduleArn" => String.t(),
        "ScheduleName" => String.t()
      }
      
  """
  @type business_report_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      address_book_data() :: %{
        "AddressBookArn" => String.t(),
        "Description" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type address_book_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_gateway_group_response() :: %{}
      
  """
  @type update_gateway_group_response() :: %{}

  @typedoc """

  ## Example:
      
      create_contact_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("DisplayName") => String.t(),
        optional("LastName") => String.t(),
        optional("PhoneNumber") => String.t(),
        optional("PhoneNumbers") => list(phone_number()()),
        optional("SipAddresses") => list(sip_address()()),
        optional("Tags") => list(tag()()),
        required("FirstName") => String.t()
      }
      
  """
  @type create_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_business_report_schedule_request() :: %{
        required("ScheduleArn") => String.t()
      }
      
  """
  @type delete_business_report_schedule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_gateway_group_request() :: %{
        required("GatewayGroupArn") => String.t()
      }
      
  """
  @type delete_gateway_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_conference_provider_request() :: %{
        required("ConferenceProviderArn") => String.t()
      }
      
  """
  @type delete_conference_provider_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_gateway_group_request() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        required("GatewayGroupArn") => String.t()
      }
      
  """
  @type update_gateway_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      business_report_content_range() :: %{
        "Interval" => list(any())
      }
      
  """
  @type business_report_content_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      category() :: %{
        "CategoryId" => float(),
        "CategoryName" => String.t()
      }
      
  """
  @type category() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_skill_with_skill_group_response() :: %{}
      
  """
  @type associate_skill_with_skill_group_response() :: %{}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_skill_groups_response() :: %{
        "NextToken" => String.t(),
        "SkillGroups" => list(skill_group_data()()),
        "TotalCount" => integer()
      }
      
  """
  @type search_skill_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      skill_not_linked_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type skill_not_linked_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_smart_home_appliance_discovery_response() :: %{}
      
  """
  @type start_smart_home_appliance_discovery_response() :: %{}

  @typedoc """

  ## Example:
      
      resolve_room_response() :: %{
        "RoomArn" => String.t(),
        "RoomName" => String.t(),
        "RoomSkillParameters" => list(room_skill_parameter()())
      }
      
  """
  @type resolve_room_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_skill_with_skill_group_request() :: %{
        optional("SkillGroupArn") => String.t(),
        required("SkillId") => String.t()
      }
      
  """
  @type associate_skill_with_skill_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_skill_group_with_room_request() :: %{
        optional("RoomArn") => String.t(),
        optional("SkillGroupArn") => String.t()
      }
      
  """
  @type associate_skill_group_with_room_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_skills_store_skills_by_category_response() :: %{
        "NextToken" => String.t(),
        "SkillsStoreSkills" => list(skills_store_skill()())
      }
      
  """
  @type list_skills_store_skills_by_category_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      skill_details() :: %{
        "BulletPoints" => list(String.t()()),
        "DeveloperInfo" => developer_info(),
        "EndUserLicenseAgreement" => String.t(),
        "GenericKeywords" => list(String.t()()),
        "InvocationPhrase" => String.t(),
        "NewInThisVersionBulletPoints" => list(String.t()()),
        "ProductDescription" => String.t(),
        "ReleaseDate" => String.t(),
        "Reviews" => map(),
        "SkillTypes" => list(String.t()())
      }
      
  """
  @type skill_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      content() :: %{
        "AudioList" => list(audio()()),
        "SsmlList" => list(ssml()()),
        "TextList" => list(text()())
      }
      
  """
  @type content() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_avs_device_response() :: %{
        "DeviceArn" => String.t()
      }
      
  """
  @type register_avs_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_device_from_room_response() :: %{}
      
  """
  @type disassociate_device_from_room_response() :: %{}

  @typedoc """

  ## Example:
      
      start_device_sync_response() :: %{}
      
  """
  @type start_device_sync_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_conference_provider_response() :: %{}
      
  """
  @type delete_conference_provider_response() :: %{}

  @typedoc """

  ## Example:
      
      revoke_invitation_response() :: %{}
      
  """
  @type revoke_invitation_response() :: %{}

  @typedoc """

  ## Example:
      
      meeting_setting() :: %{
        "RequirePin" => list(any())
      }
      
  """
  @type meeting_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_skill_group_request() :: %{
        optional("SkillGroupArn") => String.t()
      }
      
  """
  @type delete_skill_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ssml() :: %{
        "Locale" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type ssml() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device() :: %{
        "DeviceArn" => String.t(),
        "DeviceName" => String.t(),
        "DeviceSerialNumber" => String.t(),
        "DeviceStatus" => list(any()),
        "DeviceStatusInfo" => device_status_info(),
        "DeviceType" => String.t(),
        "MacAddress" => String.t(),
        "NetworkProfileInfo" => device_network_profile_info(),
        "RoomArn" => String.t(),
        "SoftwareVersion" => String.t()
      }
      
  """
  @type device() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Arn") => String.t()
      }
      
  """
  @type list_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_device_with_network_profile_request() :: %{
        required("DeviceArn") => String.t(),
        required("NetworkProfileArn") => String.t()
      }
      
  """
  @type associate_device_with_network_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_business_report_schedule_response() :: %{}
      
  """
  @type delete_business_report_schedule_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_room_skill_parameter_request() :: %{
        optional("RoomArn") => String.t(),
        required("ParameterKey") => String.t(),
        required("SkillId") => String.t()
      }
      
  """
  @type delete_room_skill_parameter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resolve_room_request() :: %{
        required("SkillId") => String.t(),
        required("UserId") => String.t()
      }
      
  """
  @type resolve_room_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_skills_store_categories_response() :: %{
        "CategoryList" => list(category()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_skills_store_categories_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_room_skill_parameter_request() :: %{
        optional("RoomArn") => String.t(),
        required("ParameterKey") => String.t(),
        required("SkillId") => String.t()
      }
      
  """
  @type get_room_skill_parameter_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_contact_response() :: %{
        "Contact" => contact()
      }
      
  """
  @type get_contact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_gateways_response() :: %{
        "Gateways" => list(gateway_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_gateways_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_room_request() :: %{
        optional("Description") => String.t(),
        optional("ProfileArn") => String.t(),
        optional("ProviderCalendarId") => String.t(),
        optional("RoomArn") => String.t(),
        optional("RoomName") => String.t()
      }
      
  """
  @type update_room_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_conference_preference_request() :: %{}
      
  """
  @type get_conference_preference_request() :: %{}

  @typedoc """

  ## Example:
      
      get_gateway_group_response() :: %{
        "GatewayGroup" => gateway_group()
      }
      
  """
  @type get_gateway_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_response() :: %{
        "UserArn" => String.t()
      }
      
  """
  @type create_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_gateway_group_request() :: %{
        optional("Description") => String.t(),
        optional("Tags") => list(tag()()),
        required("ClientRequestToken") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type create_gateway_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_conference_preference_response() :: %{
        "Preference" => conference_preference()
      }
      
  """
  @type get_conference_preference_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      profile_data() :: %{
        "Address" => String.t(),
        "DistanceUnit" => list(any()),
        "IsDefault" => boolean(),
        "Locale" => String.t(),
        "ProfileArn" => String.t(),
        "ProfileName" => String.t(),
        "TemperatureUnit" => list(any()),
        "Timezone" => String.t(),
        "WakeWord" => list(any())
      }
      
  """
  @type profile_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_contact_with_address_book_response() :: %{}
      
  """
  @type associate_contact_with_address_book_response() :: %{}

  @typedoc """

  ## Example:
      
      create_instant_booking() :: %{
        "DurationInMinutes" => integer(),
        "Enabled" => boolean()
      }
      
  """
  @type create_instant_booking() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_smart_home_appliance_discovery_request() :: %{
        required("RoomArn") => String.t()
      }
      
  """
  @type start_smart_home_appliance_discovery_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_room_skill_parameter_response() :: %{
        "RoomSkillParameter" => room_skill_parameter()
      }
      
  """
  @type get_room_skill_parameter_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      approve_skill_request() :: %{
        required("SkillId") => String.t()
      }
      
  """
  @type approve_skill_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      p_s_t_n_dial_in() :: %{
        "CountryCode" => String.t(),
        "OneClickIdDelay" => String.t(),
        "OneClickPinDelay" => String.t(),
        "PhoneNumber" => String.t()
      }
      
  """
  @type p_s_t_n_dial_in() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_secrets_manager_resource_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_secrets_manager_resource_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_skill_from_skill_group_request() :: %{
        optional("SkillGroupArn") => String.t(),
        required("SkillId") => String.t()
      }
      
  """
  @type disassociate_skill_from_skill_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_gateway_group_request() :: %{
        required("GatewayGroupArn") => String.t()
      }
      
  """
  @type get_gateway_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_room_response() :: %{
        "RoomArn" => String.t()
      }
      
  """
  @type create_room_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_devices_request() :: %{
        optional("Filters") => list(filter()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortCriteria") => list(sort()())
      }
      
  """
  @type search_devices_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_gateway_request() :: %{
        required("GatewayArn") => String.t()
      }
      
  """
  @type get_gateway_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("Email") => String.t(),
        optional("FirstName") => String.t(),
        optional("LastName") => String.t(),
        optional("Tags") => list(tag()()),
        required("UserId") => String.t()
      }
      
  """
  @type create_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_device_response() :: %{
        "Device" => device()
      }
      
  """
  @type get_device_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_skill_group_request() :: %{
        optional("SkillGroupArn") => String.t()
      }
      
  """
  @type get_skill_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_business_report_schedule_request() :: %{
        optional("Format") => list(any()),
        optional("Recurrence") => business_report_recurrence(),
        optional("S3BucketName") => String.t(),
        optional("S3KeyPrefix") => String.t(),
        optional("ScheduleName") => String.t(),
        required("ScheduleArn") => String.t()
      }
      
  """
  @type update_business_report_schedule_request() :: %{String.t() => any()}

  @type approve_skill_errors() ::
          limit_exceeded_exception() | concurrent_modification_exception() | not_found_exception()

  @type associate_contact_with_address_book_errors() :: limit_exceeded_exception()

  @type associate_device_with_network_profile_errors() ::
          concurrent_modification_exception()
          | device_not_registered_exception()
          | not_found_exception()

  @type associate_device_with_room_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | device_not_registered_exception()

  @type associate_skill_group_with_room_errors() :: concurrent_modification_exception()

  @type associate_skill_with_skill_group_errors() ::
          skill_not_linked_exception()
          | concurrent_modification_exception()
          | not_found_exception()

  @type associate_skill_with_users_errors() ::
          concurrent_modification_exception() | not_found_exception()

  @type create_address_book_errors() :: limit_exceeded_exception() | already_exists_exception()

  @type create_business_report_schedule_errors() :: already_exists_exception()

  @type create_conference_provider_errors() :: already_exists_exception()

  @type create_contact_errors() :: limit_exceeded_exception() | already_exists_exception()

  @type create_gateway_group_errors() :: limit_exceeded_exception() | already_exists_exception()

  @type create_network_profile_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | invalid_certificate_authority_exception()
          | invalid_service_linked_role_state_exception()
          | already_exists_exception()

  @type create_profile_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | already_exists_exception()

  @type create_room_errors() :: limit_exceeded_exception() | already_exists_exception()

  @type create_skill_group_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | already_exists_exception()

  @type create_user_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | resource_in_use_exception()

  @type delete_address_book_errors() ::
          concurrent_modification_exception() | not_found_exception()

  @type delete_business_report_schedule_errors() ::
          concurrent_modification_exception() | not_found_exception()

  @type delete_conference_provider_errors() :: not_found_exception()

  @type delete_contact_errors() :: concurrent_modification_exception() | not_found_exception()

  @type delete_device_errors() ::
          concurrent_modification_exception()
          | invalid_certificate_authority_exception()
          | not_found_exception()

  @type delete_device_usage_data_errors() ::
          limit_exceeded_exception() | device_not_registered_exception() | not_found_exception()

  @type delete_gateway_group_errors() :: resource_associated_exception()

  @type delete_network_profile_errors() ::
          concurrent_modification_exception()
          | not_found_exception()
          | resource_in_use_exception()

  @type delete_profile_errors() :: concurrent_modification_exception() | not_found_exception()

  @type delete_room_errors() :: concurrent_modification_exception() | not_found_exception()

  @type delete_room_skill_parameter_errors() :: concurrent_modification_exception()

  @type delete_skill_authorization_errors() ::
          concurrent_modification_exception() | not_found_exception()

  @type delete_skill_group_errors() :: concurrent_modification_exception() | not_found_exception()

  @type delete_user_errors() :: concurrent_modification_exception() | not_found_exception()

  @type disassociate_device_from_room_errors() ::
          concurrent_modification_exception() | device_not_registered_exception()

  @type disassociate_skill_from_skill_group_errors() ::
          concurrent_modification_exception() | not_found_exception()

  @type disassociate_skill_from_users_errors() ::
          concurrent_modification_exception() | not_found_exception()

  @type disassociate_skill_group_from_room_errors() :: concurrent_modification_exception()

  @type forget_smart_home_appliances_errors() :: not_found_exception()

  @type get_address_book_errors() :: not_found_exception()

  @type get_conference_preference_errors() :: not_found_exception()

  @type get_conference_provider_errors() :: not_found_exception()

  @type get_contact_errors() :: not_found_exception()

  @type get_device_errors() :: not_found_exception()

  @type get_gateway_errors() :: not_found_exception()

  @type get_gateway_group_errors() :: not_found_exception()

  @type get_invitation_configuration_errors() :: not_found_exception()

  @type get_network_profile_errors() ::
          invalid_secrets_manager_resource_exception() | not_found_exception()

  @type get_profile_errors() :: not_found_exception()

  @type get_room_errors() :: not_found_exception()

  @type get_room_skill_parameter_errors() :: not_found_exception()

  @type get_skill_group_errors() :: not_found_exception()

  @type list_device_events_errors() :: not_found_exception()

  @type list_smart_home_appliances_errors() :: not_found_exception()

  @type list_tags_errors() :: not_found_exception()

  @type put_conference_preference_errors() :: not_found_exception()

  @type put_invitation_configuration_errors() ::
          concurrent_modification_exception() | not_found_exception()

  @type put_room_skill_parameter_errors() :: concurrent_modification_exception()

  @type put_skill_authorization_errors() ::
          concurrent_modification_exception() | unauthorized_exception()

  @type register_avs_device_errors() ::
          limit_exceeded_exception()
          | concurrent_modification_exception()
          | not_found_exception()
          | invalid_device_exception()

  @type reject_skill_errors() :: concurrent_modification_exception() | not_found_exception()

  @type resolve_room_errors() :: not_found_exception()

  @type revoke_invitation_errors() :: concurrent_modification_exception() | not_found_exception()

  @type send_announcement_errors() :: limit_exceeded_exception() | already_exists_exception()

  @type send_invitation_errors() ::
          concurrent_modification_exception()
          | invalid_user_status_exception()
          | not_found_exception()

  @type start_device_sync_errors() :: device_not_registered_exception()

  @type start_smart_home_appliance_discovery_errors() :: not_found_exception()

  @type tag_resource_errors() :: not_found_exception()

  @type untag_resource_errors() :: not_found_exception()

  @type update_address_book_errors() ::
          concurrent_modification_exception() | not_found_exception() | name_in_use_exception()

  @type update_business_report_schedule_errors() ::
          concurrent_modification_exception() | not_found_exception()

  @type update_conference_provider_errors() :: not_found_exception()

  @type update_contact_errors() :: concurrent_modification_exception() | not_found_exception()

  @type update_device_errors() ::
          concurrent_modification_exception()
          | device_not_registered_exception()
          | not_found_exception()

  @type update_gateway_errors() :: not_found_exception() | name_in_use_exception()

  @type update_gateway_group_errors() :: not_found_exception() | name_in_use_exception()

  @type update_network_profile_errors() ::
          invalid_secrets_manager_resource_exception()
          | concurrent_modification_exception()
          | invalid_certificate_authority_exception()
          | not_found_exception()
          | name_in_use_exception()

  @type update_profile_errors() ::
          concurrent_modification_exception() | not_found_exception() | name_in_use_exception()

  @type update_room_errors() :: not_found_exception() | name_in_use_exception()

  @type update_skill_group_errors() ::
          concurrent_modification_exception() | not_found_exception() | name_in_use_exception()

  def metadata do
    %{
      api_version: "2017-11-09",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "a4b",
      global?: false,
      protocol: "json",
      service_id: "Alexa For Business",
      signature_version: "v4",
      signing_name: "a4b",
      target_prefix: "AlexaForBusiness"
    }
  end

  @doc """
  Associates a skill with the organization under the customer's AWS account.

  If a skill
  is private, the user implicitly accepts access to this skill during enablement.
  """
  @spec approve_skill(map(), approve_skill_request(), list()) ::
          {:ok, approve_skill_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, approve_skill_errors()}
  def approve_skill(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ApproveSkill", input, options)
  end

  @doc """
  Associates a contact with a given address book.
  """
  @spec associate_contact_with_address_book(
          map(),
          associate_contact_with_address_book_request(),
          list()
        ) ::
          {:ok, associate_contact_with_address_book_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_contact_with_address_book_errors()}
  def associate_contact_with_address_book(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateContactWithAddressBook", input, options)
  end

  @doc """
  Associates a device with the specified network profile.
  """
  @spec associate_device_with_network_profile(
          map(),
          associate_device_with_network_profile_request(),
          list()
        ) ::
          {:ok, associate_device_with_network_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_device_with_network_profile_errors()}
  def associate_device_with_network_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateDeviceWithNetworkProfile", input, options)
  end

  @doc """
  Associates a device with a given room.

  This applies all the settings from the room
  profile to the device, and all the skills in any skill groups added to that
  room. This
  operation requires the device to be online, or else a manual sync is required.
  """
  @spec associate_device_with_room(map(), associate_device_with_room_request(), list()) ::
          {:ok, associate_device_with_room_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_device_with_room_errors()}
  def associate_device_with_room(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateDeviceWithRoom", input, options)
  end

  @doc """
  Associates a skill group with a given room.

  This enables all skills in the associated
  skill group on all devices in the room.
  """
  @spec associate_skill_group_with_room(map(), associate_skill_group_with_room_request(), list()) ::
          {:ok, associate_skill_group_with_room_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_skill_group_with_room_errors()}
  def associate_skill_group_with_room(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateSkillGroupWithRoom", input, options)
  end

  @doc """
  Associates a skill with a skill group.
  """
  @spec associate_skill_with_skill_group(
          map(),
          associate_skill_with_skill_group_request(),
          list()
        ) ::
          {:ok, associate_skill_with_skill_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_skill_with_skill_group_errors()}
  def associate_skill_with_skill_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateSkillWithSkillGroup", input, options)
  end

  @doc """
  Makes a private skill available for enrolled users to enable on their devices.
  """
  @spec associate_skill_with_users(map(), associate_skill_with_users_request(), list()) ::
          {:ok, associate_skill_with_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_skill_with_users_errors()}
  def associate_skill_with_users(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateSkillWithUsers", input, options)
  end

  @doc """
  Creates an address book with the specified details.
  """
  @spec create_address_book(map(), create_address_book_request(), list()) ::
          {:ok, create_address_book_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_address_book_errors()}
  def create_address_book(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAddressBook", input, options)
  end

  @doc """
  Creates a recurring schedule for usage reports to deliver to the specified S3
  location with a specified daily or weekly interval.
  """
  @spec create_business_report_schedule(map(), create_business_report_schedule_request(), list()) ::
          {:ok, create_business_report_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_business_report_schedule_errors()}
  def create_business_report_schedule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateBusinessReportSchedule", input, options)
  end

  @doc """
  Adds a new conference provider under the user's AWS account.
  """
  @spec create_conference_provider(map(), create_conference_provider_request(), list()) ::
          {:ok, create_conference_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_conference_provider_errors()}
  def create_conference_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateConferenceProvider", input, options)
  end

  @doc """
  Creates a contact with the specified details.
  """
  @spec create_contact(map(), create_contact_request(), list()) ::
          {:ok, create_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_contact_errors()}
  def create_contact(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateContact", input, options)
  end

  @doc """
  Creates a gateway group with the specified details.
  """
  @spec create_gateway_group(map(), create_gateway_group_request(), list()) ::
          {:ok, create_gateway_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_gateway_group_errors()}
  def create_gateway_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateGatewayGroup", input, options)
  end

  @doc """
  Creates a network profile with the specified details.
  """
  @spec create_network_profile(map(), create_network_profile_request(), list()) ::
          {:ok, create_network_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_network_profile_errors()}
  def create_network_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateNetworkProfile", input, options)
  end

  @doc """
  Creates a new room profile with the specified details.
  """
  @spec create_profile(map(), create_profile_request(), list()) ::
          {:ok, create_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_profile_errors()}
  def create_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateProfile", input, options)
  end

  @doc """
  Creates a room with the specified details.
  """
  @spec create_room(map(), create_room_request(), list()) ::
          {:ok, create_room_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_room_errors()}
  def create_room(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRoom", input, options)
  end

  @doc """
  Creates a skill group with a specified name and description.
  """
  @spec create_skill_group(map(), create_skill_group_request(), list()) ::
          {:ok, create_skill_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_skill_group_errors()}
  def create_skill_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSkillGroup", input, options)
  end

  @doc """
  Creates a user.
  """
  @spec create_user(map(), create_user_request(), list()) ::
          {:ok, create_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_user_errors()}
  def create_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateUser", input, options)
  end

  @doc """
  Deletes an address book by the address book ARN.
  """
  @spec delete_address_book(map(), delete_address_book_request(), list()) ::
          {:ok, delete_address_book_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_address_book_errors()}
  def delete_address_book(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteAddressBook", input, options)
  end

  @doc """
  Deletes the recurring report delivery schedule with the specified schedule
  ARN.
  """
  @spec delete_business_report_schedule(map(), delete_business_report_schedule_request(), list()) ::
          {:ok, delete_business_report_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_business_report_schedule_errors()}
  def delete_business_report_schedule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteBusinessReportSchedule", input, options)
  end

  @doc """
  Deletes a conference provider.
  """
  @spec delete_conference_provider(map(), delete_conference_provider_request(), list()) ::
          {:ok, delete_conference_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_conference_provider_errors()}
  def delete_conference_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteConferenceProvider", input, options)
  end

  @doc """
  Deletes a contact by the contact ARN.
  """
  @spec delete_contact(map(), delete_contact_request(), list()) ::
          {:ok, delete_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_contact_errors()}
  def delete_contact(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteContact", input, options)
  end

  @doc """
  Removes a device from Alexa For Business.
  """
  @spec delete_device(map(), delete_device_request(), list()) ::
          {:ok, delete_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_device_errors()}
  def delete_device(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDevice", input, options)
  end

  @doc """
  When this action is called for a specified shared device, it allows authorized
  users to
  delete the device's entire previous history of voice input data and associated
  response
  data.

  This action can be called once every 24 hours for a specific shared device.
  """
  @spec delete_device_usage_data(map(), delete_device_usage_data_request(), list()) ::
          {:ok, delete_device_usage_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_device_usage_data_errors()}
  def delete_device_usage_data(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDeviceUsageData", input, options)
  end

  @doc """
  Deletes a gateway group.
  """
  @spec delete_gateway_group(map(), delete_gateway_group_request(), list()) ::
          {:ok, delete_gateway_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_gateway_group_errors()}
  def delete_gateway_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteGatewayGroup", input, options)
  end

  @doc """
  Deletes a network profile by the network profile ARN.
  """
  @spec delete_network_profile(map(), delete_network_profile_request(), list()) ::
          {:ok, delete_network_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_network_profile_errors()}
  def delete_network_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteNetworkProfile", input, options)
  end

  @doc """
  Deletes a room profile by the profile ARN.
  """
  @spec delete_profile(map(), delete_profile_request(), list()) ::
          {:ok, delete_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_profile_errors()}
  def delete_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteProfile", input, options)
  end

  @doc """
  Deletes a room by the room ARN.
  """
  @spec delete_room(map(), delete_room_request(), list()) ::
          {:ok, delete_room_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_room_errors()}
  def delete_room(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRoom", input, options)
  end

  @doc """
  Deletes room skill parameter details by room, skill, and parameter key ID.
  """
  @spec delete_room_skill_parameter(map(), delete_room_skill_parameter_request(), list()) ::
          {:ok, delete_room_skill_parameter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_room_skill_parameter_errors()}
  def delete_room_skill_parameter(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRoomSkillParameter", input, options)
  end

  @doc """
  Unlinks a third-party account from a skill.
  """
  @spec delete_skill_authorization(map(), delete_skill_authorization_request(), list()) ::
          {:ok, delete_skill_authorization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_skill_authorization_errors()}
  def delete_skill_authorization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSkillAuthorization", input, options)
  end

  @doc """
  Deletes a skill group by skill group ARN.
  """
  @spec delete_skill_group(map(), delete_skill_group_request(), list()) ::
          {:ok, delete_skill_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_skill_group_errors()}
  def delete_skill_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSkillGroup", input, options)
  end

  @doc """
  Deletes a specified user by user ARN and enrollment ARN.
  """
  @spec delete_user(map(), delete_user_request(), list()) ::
          {:ok, delete_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_user_errors()}
  def delete_user(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteUser", input, options)
  end

  @doc """
  Disassociates a contact from a given address book.
  """
  @spec disassociate_contact_from_address_book(
          map(),
          disassociate_contact_from_address_book_request(),
          list()
        ) ::
          {:ok, disassociate_contact_from_address_book_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def disassociate_contact_from_address_book(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateContactFromAddressBook", input, options)
  end

  @doc """
  Disassociates a device from its current room.

  The device continues to be connected to
  the Wi-Fi network and is still registered to the account. The device settings
  and skills
  are removed from the room.
  """
  @spec disassociate_device_from_room(map(), disassociate_device_from_room_request(), list()) ::
          {:ok, disassociate_device_from_room_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_device_from_room_errors()}
  def disassociate_device_from_room(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateDeviceFromRoom", input, options)
  end

  @doc """
  Disassociates a skill from a skill group.
  """
  @spec disassociate_skill_from_skill_group(
          map(),
          disassociate_skill_from_skill_group_request(),
          list()
        ) ::
          {:ok, disassociate_skill_from_skill_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_skill_from_skill_group_errors()}
  def disassociate_skill_from_skill_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateSkillFromSkillGroup", input, options)
  end

  @doc """
  Makes a private skill unavailable for enrolled users and prevents them from
  enabling it
  on their devices.
  """
  @spec disassociate_skill_from_users(map(), disassociate_skill_from_users_request(), list()) ::
          {:ok, disassociate_skill_from_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_skill_from_users_errors()}
  def disassociate_skill_from_users(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateSkillFromUsers", input, options)
  end

  @doc """
  Disassociates a skill group from a specified room.

  This disables all skills in the
  skill group on all devices in the room.
  """
  @spec disassociate_skill_group_from_room(
          map(),
          disassociate_skill_group_from_room_request(),
          list()
        ) ::
          {:ok, disassociate_skill_group_from_room_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_skill_group_from_room_errors()}
  def disassociate_skill_group_from_room(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateSkillGroupFromRoom", input, options)
  end

  @doc """
  Forgets smart home appliances associated to a room.
  """
  @spec forget_smart_home_appliances(map(), forget_smart_home_appliances_request(), list()) ::
          {:ok, forget_smart_home_appliances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, forget_smart_home_appliances_errors()}
  def forget_smart_home_appliances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ForgetSmartHomeAppliances", input, options)
  end

  @doc """
  Gets address the book details by the address book ARN.
  """
  @spec get_address_book(map(), get_address_book_request(), list()) ::
          {:ok, get_address_book_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_address_book_errors()}
  def get_address_book(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAddressBook", input, options)
  end

  @doc """
  Retrieves the existing conference preferences.
  """
  @spec get_conference_preference(map(), get_conference_preference_request(), list()) ::
          {:ok, get_conference_preference_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_conference_preference_errors()}
  def get_conference_preference(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetConferencePreference", input, options)
  end

  @doc """
  Gets details about a specific conference provider.
  """
  @spec get_conference_provider(map(), get_conference_provider_request(), list()) ::
          {:ok, get_conference_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_conference_provider_errors()}
  def get_conference_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetConferenceProvider", input, options)
  end

  @doc """
  Gets the contact details by the contact ARN.
  """
  @spec get_contact(map(), get_contact_request(), list()) ::
          {:ok, get_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_contact_errors()}
  def get_contact(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetContact", input, options)
  end

  @doc """
  Gets the details of a device by device ARN.
  """
  @spec get_device(map(), get_device_request(), list()) ::
          {:ok, get_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_device_errors()}
  def get_device(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDevice", input, options)
  end

  @doc """
  Retrieves the details of a gateway.
  """
  @spec get_gateway(map(), get_gateway_request(), list()) ::
          {:ok, get_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_gateway_errors()}
  def get_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetGateway", input, options)
  end

  @doc """
  Retrieves the details of a gateway group.
  """
  @spec get_gateway_group(map(), get_gateway_group_request(), list()) ::
          {:ok, get_gateway_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_gateway_group_errors()}
  def get_gateway_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetGatewayGroup", input, options)
  end

  @doc """
  Retrieves the configured values for the user enrollment invitation email
  template.
  """
  @spec get_invitation_configuration(map(), get_invitation_configuration_request(), list()) ::
          {:ok, get_invitation_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_invitation_configuration_errors()}
  def get_invitation_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetInvitationConfiguration", input, options)
  end

  @doc """
  Gets the network profile details by the network profile ARN.
  """
  @spec get_network_profile(map(), get_network_profile_request(), list()) ::
          {:ok, get_network_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_network_profile_errors()}
  def get_network_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetNetworkProfile", input, options)
  end

  @doc """
  Gets the details of a room profile by profile ARN.
  """
  @spec get_profile(map(), get_profile_request(), list()) ::
          {:ok, get_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_profile_errors()}
  def get_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetProfile", input, options)
  end

  @doc """
  Gets room details by room ARN.
  """
  @spec get_room(map(), get_room_request(), list()) ::
          {:ok, get_room_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_room_errors()}
  def get_room(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRoom", input, options)
  end

  @doc """
  Gets room skill parameter details by room, skill, and parameter key ARN.
  """
  @spec get_room_skill_parameter(map(), get_room_skill_parameter_request(), list()) ::
          {:ok, get_room_skill_parameter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_room_skill_parameter_errors()}
  def get_room_skill_parameter(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRoomSkillParameter", input, options)
  end

  @doc """
  Gets skill group details by skill group ARN.
  """
  @spec get_skill_group(map(), get_skill_group_request(), list()) ::
          {:ok, get_skill_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_skill_group_errors()}
  def get_skill_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSkillGroup", input, options)
  end

  @doc """
  Lists the details of the schedules that a user configured.

  A download URL of the report associated with each schedule is returned every
  time this action is called. A new download URL is returned each time, and is
  valid for 24 hours.
  """
  @spec list_business_report_schedules(map(), list_business_report_schedules_request(), list()) ::
          {:ok, list_business_report_schedules_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_business_report_schedules(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListBusinessReportSchedules", input, options)
  end

  @doc """
  Lists conference providers under a specific AWS account.
  """
  @spec list_conference_providers(map(), list_conference_providers_request(), list()) ::
          {:ok, list_conference_providers_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_conference_providers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListConferenceProviders", input, options)
  end

  @doc """
  Lists the device event history, including device connection status, for up to 30
  days.
  """
  @spec list_device_events(map(), list_device_events_request(), list()) ::
          {:ok, list_device_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_device_events_errors()}
  def list_device_events(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDeviceEvents", input, options)
  end

  @doc """
  Retrieves a list of gateway group summaries.

  Use GetGatewayGroup to retrieve details of
  a specific gateway group.
  """
  @spec list_gateway_groups(map(), list_gateway_groups_request(), list()) ::
          {:ok, list_gateway_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_gateway_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListGatewayGroups", input, options)
  end

  @doc """
  Retrieves a list of gateway summaries.

  Use GetGateway to retrieve details of a specific
  gateway. An optional gateway group ARN can be provided to only retrieve gateway
  summaries
  of gateways that are associated with that gateway group ARN.
  """
  @spec list_gateways(map(), list_gateways_request(), list()) ::
          {:ok, list_gateways_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_gateways(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListGateways", input, options)
  end

  @doc """
  Lists all enabled skills in a specific skill group.
  """
  @spec list_skills(map(), list_skills_request(), list()) ::
          {:ok, list_skills_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_skills(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSkills", input, options)
  end

  @doc """
  Lists all categories in the Alexa skill store.
  """
  @spec list_skills_store_categories(map(), list_skills_store_categories_request(), list()) ::
          {:ok, list_skills_store_categories_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_skills_store_categories(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSkillsStoreCategories", input, options)
  end

  @doc """
  Lists all skills in the Alexa skill store by category.
  """
  @spec list_skills_store_skills_by_category(
          map(),
          list_skills_store_skills_by_category_request(),
          list()
        ) ::
          {:ok, list_skills_store_skills_by_category_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_skills_store_skills_by_category(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSkillsStoreSkillsByCategory", input, options)
  end

  @doc """
  Lists all of the smart home appliances associated with a room.
  """
  @spec list_smart_home_appliances(map(), list_smart_home_appliances_request(), list()) ::
          {:ok, list_smart_home_appliances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_smart_home_appliances_errors()}
  def list_smart_home_appliances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSmartHomeAppliances", input, options)
  end

  @doc """
  Lists all tags for the specified resource.
  """
  @spec list_tags(map(), list_tags_request(), list()) ::
          {:ok, list_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_errors()}
  def list_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTags", input, options)
  end

  @doc """
  Sets the conference preferences on a specific conference provider at the account
  level.
  """
  @spec put_conference_preference(map(), put_conference_preference_request(), list()) ::
          {:ok, put_conference_preference_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_conference_preference_errors()}
  def put_conference_preference(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutConferencePreference", input, options)
  end

  @doc """
  Configures the email template for the user enrollment invitation with the
  specified
  attributes.
  """
  @spec put_invitation_configuration(map(), put_invitation_configuration_request(), list()) ::
          {:ok, put_invitation_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_invitation_configuration_errors()}
  def put_invitation_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutInvitationConfiguration", input, options)
  end

  @doc """
  Updates room skill parameter details by room, skill, and parameter key ID.

  Not all
  skills have a room skill parameter.
  """
  @spec put_room_skill_parameter(map(), put_room_skill_parameter_request(), list()) ::
          {:ok, put_room_skill_parameter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_room_skill_parameter_errors()}
  def put_room_skill_parameter(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutRoomSkillParameter", input, options)
  end

  @doc """
  Links a user's account to a third-party skill provider.

  If this API operation is
  called by an assumed IAM role, the skill being linked must be a private skill.
  Also, the
  skill must be owned by the AWS account that assumed the IAM role.
  """
  @spec put_skill_authorization(map(), put_skill_authorization_request(), list()) ::
          {:ok, put_skill_authorization_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_skill_authorization_errors()}
  def put_skill_authorization(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutSkillAuthorization", input, options)
  end

  @doc """
  Registers an Alexa-enabled device built by an Original Equipment Manufacturer
  (OEM)
  using Alexa Voice Service (AVS).
  """
  @spec register_avs_device(map(), register_avs_device_request(), list()) ::
          {:ok, register_avs_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, register_avs_device_errors()}
  def register_avs_device(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterAVSDevice", input, options)
  end

  @doc """
  Disassociates a skill from the organization under a user's AWS account.

  If the skill
  is a private skill, it moves to an AcceptStatus of PENDING. Any private or
  public skill
  that is rejected can be added later by calling the ApproveSkill API.
  """
  @spec reject_skill(map(), reject_skill_request(), list()) ::
          {:ok, reject_skill_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reject_skill_errors()}
  def reject_skill(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RejectSkill", input, options)
  end

  @doc """
  Determines the details for the room from which a skill request was invoked.

  This
  operation is used by skill developers.

  To query ResolveRoom from an Alexa skill, the skill ID needs to be authorized.
  When
  the skill is using an AWS Lambda function, the skill is automatically authorized
  when you
  publish your skill as a private skill to your AWS account. Skills that are
  hosted using a
  custom web service must be manually authorized. To get your skill authorized,
  contact AWS
  Support with your AWS account ID that queries the ResolveRoom API and skill ID.
  """
  @spec resolve_room(map(), resolve_room_request(), list()) ::
          {:ok, resolve_room_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resolve_room_errors()}
  def resolve_room(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResolveRoom", input, options)
  end

  @doc """
  Revokes an invitation and invalidates the enrollment URL.
  """
  @spec revoke_invitation(map(), revoke_invitation_request(), list()) ::
          {:ok, revoke_invitation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, revoke_invitation_errors()}
  def revoke_invitation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RevokeInvitation", input, options)
  end

  @doc """
  Searches address books and lists the ones that meet a set of filter and sort
  criteria.
  """
  @spec search_address_books(map(), search_address_books_request(), list()) ::
          {:ok, search_address_books_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def search_address_books(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SearchAddressBooks", input, options)
  end

  @doc """
  Searches contacts and lists the ones that meet a set of filter and sort
  criteria.
  """
  @spec search_contacts(map(), search_contacts_request(), list()) ::
          {:ok, search_contacts_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def search_contacts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SearchContacts", input, options)
  end

  @doc """
  Searches devices and lists the ones that meet a set of filter criteria.
  """
  @spec search_devices(map(), search_devices_request(), list()) ::
          {:ok, search_devices_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def search_devices(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SearchDevices", input, options)
  end

  @doc """
  Searches network profiles and lists the ones that meet a set of filter and sort
  criteria.
  """
  @spec search_network_profiles(map(), search_network_profiles_request(), list()) ::
          {:ok, search_network_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def search_network_profiles(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SearchNetworkProfiles", input, options)
  end

  @doc """
  Searches room profiles and lists the ones that meet a set of filter
  criteria.
  """
  @spec search_profiles(map(), search_profiles_request(), list()) ::
          {:ok, search_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def search_profiles(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SearchProfiles", input, options)
  end

  @doc """
  Searches rooms and lists the ones that meet a set of filter and sort
  criteria.
  """
  @spec search_rooms(map(), search_rooms_request(), list()) ::
          {:ok, search_rooms_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def search_rooms(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SearchRooms", input, options)
  end

  @doc """
  Searches skill groups and lists the ones that meet a set of filter and sort
  criteria.
  """
  @spec search_skill_groups(map(), search_skill_groups_request(), list()) ::
          {:ok, search_skill_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def search_skill_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SearchSkillGroups", input, options)
  end

  @doc """
  Searches users and lists the ones that meet a set of filter and sort
  criteria.
  """
  @spec search_users(map(), search_users_request(), list()) ::
          {:ok, search_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def search_users(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SearchUsers", input, options)
  end

  @doc """
  Triggers an asynchronous flow to send text, SSML, or audio announcements to
  rooms that
  are identified by a search or filter.
  """
  @spec send_announcement(map(), send_announcement_request(), list()) ::
          {:ok, send_announcement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_announcement_errors()}
  def send_announcement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendAnnouncement", input, options)
  end

  @doc """
  Sends an enrollment invitation email with a URL to a user.

  The URL is valid for 30
  days or until you call this operation again, whichever comes first.
  """
  @spec send_invitation(map(), send_invitation_request(), list()) ::
          {:ok, send_invitation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_invitation_errors()}
  def send_invitation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendInvitation", input, options)
  end

  @doc """
  Resets a device and its account to the known default settings.

  This clears all
  information and settings set by previous users in the following ways:

    *
  Bluetooth - This unpairs all bluetooth devices paired with your echo
  device.

    *
  Volume - This resets the echo device's volume to the default value.

    *
  Notifications - This clears all notifications from your echo device.

    *
  Lists - This clears all to-do items from your echo device.

    *
  Settings - This internally syncs the room's profile (if the device is assigned
  to
  a room), contacts, address books, delegation access for account linking, and
  communications (if enabled on the room profile).
  """
  @spec start_device_sync(map(), start_device_sync_request(), list()) ::
          {:ok, start_device_sync_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_device_sync_errors()}
  def start_device_sync(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartDeviceSync", input, options)
  end

  @doc """
  Initiates the discovery of any smart home appliances associated with the
  room.
  """
  @spec start_smart_home_appliance_discovery(
          map(),
          start_smart_home_appliance_discovery_request(),
          list()
        ) ::
          {:ok, start_smart_home_appliance_discovery_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_smart_home_appliance_discovery_errors()}
  def start_smart_home_appliance_discovery(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartSmartHomeApplianceDiscovery", input, options)
  end

  @doc """
  Adds metadata tags to a specified resource.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes metadata tags from a specified resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates address book details by the address book ARN.
  """
  @spec update_address_book(map(), update_address_book_request(), list()) ::
          {:ok, update_address_book_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_address_book_errors()}
  def update_address_book(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateAddressBook", input, options)
  end

  @doc """
  Updates the configuration of the report delivery schedule with the specified
  schedule
  ARN.
  """
  @spec update_business_report_schedule(map(), update_business_report_schedule_request(), list()) ::
          {:ok, update_business_report_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_business_report_schedule_errors()}
  def update_business_report_schedule(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateBusinessReportSchedule", input, options)
  end

  @doc """
  Updates an existing conference provider's settings.
  """
  @spec update_conference_provider(map(), update_conference_provider_request(), list()) ::
          {:ok, update_conference_provider_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_conference_provider_errors()}
  def update_conference_provider(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateConferenceProvider", input, options)
  end

  @doc """
  Updates the contact details by the contact ARN.
  """
  @spec update_contact(map(), update_contact_request(), list()) ::
          {:ok, update_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_contact_errors()}
  def update_contact(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateContact", input, options)
  end

  @doc """
  Updates the device name by device ARN.
  """
  @spec update_device(map(), update_device_request(), list()) ::
          {:ok, update_device_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_device_errors()}
  def update_device(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDevice", input, options)
  end

  @doc """
  Updates the details of a gateway.

  If any optional field is not provided, the existing
  corresponding value is left unmodified.
  """
  @spec update_gateway(map(), update_gateway_request(), list()) ::
          {:ok, update_gateway_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_gateway_errors()}
  def update_gateway(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateGateway", input, options)
  end

  @doc """
  Updates the details of a gateway group.

  If any optional field is not provided, the
  existing corresponding value is left unmodified.
  """
  @spec update_gateway_group(map(), update_gateway_group_request(), list()) ::
          {:ok, update_gateway_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_gateway_group_errors()}
  def update_gateway_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateGatewayGroup", input, options)
  end

  @doc """
  Updates a network profile by the network profile ARN.
  """
  @spec update_network_profile(map(), update_network_profile_request(), list()) ::
          {:ok, update_network_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_network_profile_errors()}
  def update_network_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateNetworkProfile", input, options)
  end

  @doc """
  Updates an existing room profile by room profile ARN.
  """
  @spec update_profile(map(), update_profile_request(), list()) ::
          {:ok, update_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_profile_errors()}
  def update_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateProfile", input, options)
  end

  @doc """
  Updates room details by room ARN.
  """
  @spec update_room(map(), update_room_request(), list()) ::
          {:ok, update_room_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_room_errors()}
  def update_room(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRoom", input, options)
  end

  @doc """
  Updates skill group details by skill group ARN.
  """
  @spec update_skill_group(map(), update_skill_group_request(), list()) ::
          {:ok, update_skill_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_skill_group_errors()}
  def update_skill_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSkillGroup", input, options)
  end
end
