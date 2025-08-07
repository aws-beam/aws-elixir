# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SSMContacts do
  @moduledoc """
  Systems Manager Incident Manager is an incident management console designed to
  help users
  mitigate and recover from incidents affecting their Amazon Web Services-hosted
  applications.

  An incident is any unplanned interruption or reduction in quality of services.

  Incident Manager increases incident resolution by notifying responders of
  impact, highlighting relevant troubleshooting data, and providing collaboration
  tools to
  get services back up and running. To achieve the primary goal of reducing the
  time-to-resolution of critical incidents, Incident Manager automates response
  plans
  and enables responder team escalation.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      stop_engagement_result() :: %{}
      
  """
  @type stop_engagement_result() :: %{}

  @typedoc """

  ## Example:
      
      list_pages_by_engagement_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("EngagementId") => String.t() | atom()
      }
      
  """
  @type list_pages_by_engagement_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      recurrence_settings() :: %{
        "DailySettings" => list(hand_off_time()),
        "MonthlySettings" => list(monthly_setting()),
        "NumberOfOnCalls" => integer(),
        "RecurrenceMultiplier" => integer(),
        "ShiftCoverages" => map(),
        "WeeklySettings" => list(weekly_setting())
      }
      
  """
  @type recurrence_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_rotation_request() :: %{
        optional("IdempotencyToken") => String.t() | atom(),
        optional("StartTime") => non_neg_integer(),
        optional("Tags") => list(tag()),
        required("ContactIds") => list(String.t() | atom()),
        required("Name") => String.t() | atom(),
        required("Recurrence") => recurrence_settings(),
        required("TimeZoneId") => String.t() | atom()
      }
      
  """
  @type create_rotation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_engagement_result() :: %{
        "ContactArn" => String.t() | atom(),
        "Content" => String.t() | atom(),
        "EngagementArn" => String.t() | atom(),
        "IncidentId" => String.t() | atom(),
        "PublicContent" => String.t() | atom(),
        "PublicSubject" => String.t() | atom(),
        "Sender" => String.t() | atom(),
        "StartTime" => non_neg_integer(),
        "StopTime" => non_neg_integer(),
        "Subject" => String.t() | atom()
      }
      
  """
  @type describe_engagement_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stage() :: %{
        "DurationInMinutes" => integer(),
        "Targets" => list(target())
      }
      
  """
  @type stage() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_contact_channel_request() :: %{
        optional("DeferActivation") => boolean(),
        optional("IdempotencyToken") => String.t() | atom(),
        required("ContactId") => String.t() | atom(),
        required("DeliveryAddress") => contact_channel_address(),
        required("Name") => String.t() | atom(),
        required("Type") => list(any())
      }
      
  """
  @type create_contact_channel_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_pages_by_contact_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("ContactId") => String.t() | atom()
      }
      
  """
  @type list_pages_by_contact_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_rotation_override_request() :: %{
        optional("IdempotencyToken") => String.t() | atom(),
        required("EndTime") => non_neg_integer(),
        required("NewContactIds") => list(String.t() | atom()),
        required("RotationId") => String.t() | atom(),
        required("StartTime") => non_neg_integer()
      }
      
  """
  @type create_rotation_override_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_contact_request() :: %{
        required("ContactId") => String.t() | atom()
      }
      
  """
  @type delete_contact_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      contact_target_info() :: %{
        "ContactId" => String.t() | atom(),
        "IsEssential" => boolean()
      }
      
  """
  @type contact_target_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      engagement() :: %{
        "ContactArn" => String.t() | atom(),
        "EngagementArn" => String.t() | atom(),
        "IncidentId" => String.t() | atom(),
        "Sender" => String.t() | atom(),
        "StartTime" => non_neg_integer(),
        "StopTime" => non_neg_integer()
      }
      
  """
  @type engagement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_rotation_override_result() :: %{
        "RotationOverrideId" => String.t() | atom()
      }
      
  """
  @type create_rotation_override_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_result() :: %{}
      
  """
  @type untag_resource_result() :: %{}

  @typedoc """

  ## Example:
      
      data_encryption_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type data_encryption_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      stop_engagement_request() :: %{
        optional("Reason") => String.t() | atom(),
        required("EngagementId") => String.t() | atom()
      }
      
  """
  @type stop_engagement_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_contact_channel_request() :: %{
        required("ContactChannelId") => String.t() | atom()
      }
      
  """
  @type delete_contact_channel_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      weekly_setting() :: %{
        "DayOfWeek" => list(any()),
        "HandOffTime" => hand_off_time()
      }
      
  """
  @type weekly_setting() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      shift_details() :: %{
        "OverriddenContactIds" => list(String.t() | atom())
      }
      
  """
  @type shift_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_rotation_override_request() :: %{
        required("RotationId") => String.t() | atom(),
        required("RotationOverrideId") => String.t() | atom()
      }
      
  """
  @type delete_rotation_override_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      receipt() :: %{
        "ContactChannelArn" => String.t() | atom(),
        "ReceiptInfo" => String.t() | atom(),
        "ReceiptTime" => non_neg_integer(),
        "ReceiptType" => list(any())
      }
      
  """
  @type receipt() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_rotation_request() :: %{
        optional("ContactIds") => list(String.t() | atom()),
        optional("StartTime") => non_neg_integer(),
        optional("TimeZoneId") => String.t() | atom(),
        required("Recurrence") => recurrence_settings(),
        required("RotationId") => String.t() | atom()
      }
      
  """
  @type update_rotation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_page_resolutions_result() :: %{
        "NextToken" => String.t() | atom(),
        "PageResolutions" => list(resolution_contact())
      }
      
  """
  @type list_page_resolutions_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_contact_channel_result() :: %{
        "ContactChannelArn" => String.t() | atom()
      }
      
  """
  @type create_contact_channel_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rotation() :: %{
        "ContactIds" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "Recurrence" => recurrence_settings(),
        "RotationArn" => String.t() | atom(),
        "StartTime" => non_neg_integer(),
        "TimeZoneId" => String.t() | atom()
      }
      
  """
  @type rotation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_engagement_request() :: %{
        optional("IdempotencyToken") => String.t() | atom(),
        optional("IncidentId") => String.t() | atom(),
        optional("PublicContent") => String.t() | atom(),
        optional("PublicSubject") => String.t() | atom(),
        required("ContactId") => String.t() | atom(),
        required("Content") => String.t() | atom(),
        required("Sender") => String.t() | atom(),
        required("Subject") => String.t() | atom()
      }
      
  """
  @type start_engagement_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      contact_channel() :: %{
        "ActivationStatus" => list(any()),
        "ContactArn" => String.t() | atom(),
        "ContactChannelArn" => String.t() | atom(),
        "DeliveryAddress" => contact_channel_address(),
        "Name" => String.t() | atom(),
        "Type" => list(any())
      }
      
  """
  @type contact_channel() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rotation_override() :: %{
        "CreateTime" => non_neg_integer(),
        "EndTime" => non_neg_integer(),
        "NewContactIds" => list(String.t() | atom()),
        "RotationOverrideId" => String.t() | atom(),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type rotation_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_contact_policy_result() :: %{}
      
  """
  @type put_contact_policy_result() :: %{}

  @typedoc """

  ## Example:
      
      coverage_time() :: %{
        "End" => hand_off_time(),
        "Start" => hand_off_time()
      }
      
  """
  @type coverage_time() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      monthly_setting() :: %{
        "DayOfMonth" => integer(),
        "HandOffTime" => hand_off_time()
      }
      
  """
  @type monthly_setting() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_page_resolutions_request() :: %{
        optional("NextToken") => String.t() | atom(),
        required("PageId") => String.t() | atom()
      }
      
  """
  @type list_page_resolutions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_engagements_result() :: %{
        "Engagements" => list(engagement()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_engagements_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      target() :: %{
        "ChannelTargetInfo" => channel_target_info(),
        "ContactTargetInfo" => contact_target_info()
      }
      
  """
  @type target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      contact_channel_address() :: %{
        "SimpleAddress" => String.t() | atom()
      }
      
  """
  @type contact_channel_address() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_pages_by_engagement_result() :: %{
        "NextToken" => String.t() | atom(),
        "Pages" => list(page())
      }
      
  """
  @type list_pages_by_engagement_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_rotations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("RotationNamePrefix") => String.t() | atom()
      }
      
  """
  @type list_rotations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_page_request() :: %{
        required("PageId") => String.t() | atom()
      }
      
  """
  @type describe_page_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_page_receipts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("PageId") => String.t() | atom()
      }
      
  """
  @type list_page_receipts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "DependentEntities" => list(dependent_entity()),
        "Message" => String.t() | atom(),
        "ResourceId" => String.t() | atom(),
        "ResourceType" => String.t() | atom()
      }
      
  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_contacts_result() :: %{
        "Contacts" => list(contact()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_contacts_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t() | atom(),
        "ResourceId" => String.t() | atom(),
        "ResourceType" => String.t() | atom()
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_rotation_result() :: %{}
      
  """
  @type update_rotation_result() :: %{}

  @typedoc """

  ## Example:
      
      list_page_receipts_result() :: %{
        "NextToken" => String.t() | atom(),
        "Receipts" => list(receipt())
      }
      
  """
  @type list_page_receipts_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_contact_channel_request() :: %{
        optional("DeliveryAddress") => contact_channel_address(),
        optional("Name") => String.t() | atom(),
        required("ContactChannelId") => String.t() | atom()
      }
      
  """
  @type update_contact_channel_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_pages_by_contact_result() :: %{
        "NextToken" => String.t() | atom(),
        "Pages" => list(page())
      }
      
  """
  @type list_pages_by_contact_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      activate_contact_channel_request() :: %{
        required("ActivationCode") => String.t() | atom(),
        required("ContactChannelId") => String.t() | atom()
      }
      
  """
  @type activate_contact_channel_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_contact_channel_result() :: %{
        "ActivationStatus" => list(any()),
        "ContactArn" => String.t() | atom(),
        "ContactChannelArn" => String.t() | atom(),
        "DeliveryAddress" => contact_channel_address(),
        "Name" => String.t() | atom(),
        "Type" => list(any())
      }
      
  """
  @type get_contact_channel_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t() | atom(),
        "QuotaCode" => String.t() | atom(),
        "ResourceId" => String.t() | atom(),
        "ResourceType" => String.t() | atom(),
        "ServiceCode" => String.t() | atom()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_rotation_override_result() :: %{
        "CreateTime" => non_neg_integer(),
        "EndTime" => non_neg_integer(),
        "NewContactIds" => list(String.t() | atom()),
        "RotationArn" => String.t() | atom(),
        "RotationOverrideId" => String.t() | atom(),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type get_rotation_override_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_rotation_overrides_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("EndTime") => non_neg_integer(),
        required("RotationId") => String.t() | atom(),
        required("StartTime") => non_neg_integer()
      }
      
  """
  @type list_rotation_overrides_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_preview_rotation_shifts_result() :: %{
        "NextToken" => String.t() | atom(),
        "RotationShifts" => list(rotation_shift())
      }
      
  """
  @type list_preview_rotation_shifts_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      accept_page_result() :: %{}
      
  """
  @type accept_page_result() :: %{}

  @typedoc """

  ## Example:
      
      get_rotation_request() :: %{
        required("RotationId") => String.t() | atom()
      }
      
  """
  @type get_rotation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_contact_channels_result() :: %{
        "ContactChannels" => list(contact_channel()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_contact_channels_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_rotation_shifts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("StartTime") => non_neg_integer(),
        required("EndTime") => non_neg_integer(),
        required("RotationId") => String.t() | atom()
      }
      
  """
  @type list_rotation_shifts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_rotation_result() :: %{
        "ContactIds" => list(String.t() | atom()),
        "Name" => String.t() | atom(),
        "Recurrence" => recurrence_settings(),
        "RotationArn" => String.t() | atom(),
        "StartTime" => non_neg_integer(),
        "TimeZoneId" => String.t() | atom()
      }
      
  """
  @type get_rotation_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_contact_result() :: %{}
      
  """
  @type update_contact_result() :: %{}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "Message" => String.t() | atom(),
        "Name" => String.t() | atom()
      }
      
  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      send_activation_code_request() :: %{
        required("ContactChannelId") => String.t() | atom()
      }
      
  """
  @type send_activation_code_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      accept_page_request() :: %{
        optional("AcceptCodeValidation") => list(any()),
        optional("ContactChannelId") => String.t() | atom(),
        optional("Note") => String.t() | atom(),
        required("AcceptCode") => String.t() | atom(),
        required("AcceptType") => list(any()),
        required("PageId") => String.t() | atom()
      }
      
  """
  @type accept_page_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      dependent_entity() :: %{
        "DependentResourceIds" => list(String.t() | atom()),
        "RelationType" => String.t() | atom()
      }
      
  """
  @type dependent_entity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      contact() :: %{
        "Alias" => String.t() | atom(),
        "ContactArn" => String.t() | atom(),
        "DisplayName" => String.t() | atom(),
        "Type" => list(any())
      }
      
  """
  @type contact() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_engagement_result() :: %{
        "EngagementArn" => String.t() | atom()
      }
      
  """
  @type start_engagement_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_contact_result() :: %{
        "ContactArn" => String.t() | atom()
      }
      
  """
  @type create_contact_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_rotation_shifts_result() :: %{
        "NextToken" => String.t() | atom(),
        "RotationShifts" => list(rotation_shift())
      }
      
  """
  @type list_rotation_shifts_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      rotation_shift() :: %{
        "ContactIds" => list(String.t() | atom()),
        "EndTime" => non_neg_integer(),
        "ShiftDetails" => shift_details(),
        "StartTime" => non_neg_integer(),
        "Type" => list(any())
      }
      
  """
  @type rotation_shift() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t() | atom(),
        "RetryAfterSeconds" => integer()
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_page_result() :: %{
        "ContactArn" => String.t() | atom(),
        "Content" => String.t() | atom(),
        "DeliveryTime" => non_neg_integer(),
        "EngagementArn" => String.t() | atom(),
        "IncidentId" => String.t() | atom(),
        "PageArn" => String.t() | atom(),
        "PublicContent" => String.t() | atom(),
        "PublicSubject" => String.t() | atom(),
        "ReadTime" => non_neg_integer(),
        "Sender" => String.t() | atom(),
        "SentTime" => non_neg_integer(),
        "Subject" => String.t() | atom()
      }
      
  """
  @type describe_page_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_result() :: %{
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_contact_request() :: %{
        required("ContactId") => String.t() | atom()
      }
      
  """
  @type get_contact_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_contacts_request() :: %{
        optional("AliasPrefix") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Type") => list(any())
      }
      
  """
  @type list_contacts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_rotations_result() :: %{
        "NextToken" => String.t() | atom(),
        "Rotations" => list(rotation())
      }
      
  """
  @type list_rotations_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_contact_channels_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("ContactId") => String.t() | atom()
      }
      
  """
  @type list_contact_channels_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_contact_result() :: %{
        "Alias" => String.t() | atom(),
        "ContactArn" => String.t() | atom(),
        "DisplayName" => String.t() | atom(),
        "Plan" => plan(),
        "Type" => list(any())
      }
      
  """
  @type get_contact_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_contact_policy_request() :: %{
        required("ContactArn") => String.t() | atom()
      }
      
  """
  @type get_contact_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      time_range() :: %{
        "EndTime" => non_neg_integer(),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type time_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_rotation_overrides_result() :: %{
        "NextToken" => String.t() | atom(),
        "RotationOverrides" => list(rotation_override())
      }
      
  """
  @type list_rotation_overrides_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      put_contact_policy_request() :: %{
        required("ContactArn") => String.t() | atom(),
        required("Policy") => String.t() | atom()
      }
      
  """
  @type put_contact_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_engagement_request() :: %{
        required("EngagementId") => String.t() | atom()
      }
      
  """
  @type describe_engagement_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_contact_channel_result() :: %{}
      
  """
  @type delete_contact_channel_result() :: %{}

  @typedoc """

  ## Example:
      
      update_contact_request() :: %{
        optional("DisplayName") => String.t() | atom(),
        optional("Plan") => plan(),
        required("ContactId") => String.t() | atom()
      }
      
  """
  @type update_contact_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_contact_result() :: %{}
      
  """
  @type delete_contact_result() :: %{}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Fields" => list(validation_exception_field()),
        "Message" => String.t() | atom(),
        "Reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t() | atom(),
        "QuotaCode" => String.t() | atom(),
        "RetryAfterSeconds" => integer(),
        "ServiceCode" => String.t() | atom()
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_contact_request() :: %{
        optional("DisplayName") => String.t() | atom(),
        optional("IdempotencyToken") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("Alias") => String.t() | atom(),
        required("Plan") => plan(),
        required("Type") => list(any())
      }
      
  """
  @type create_contact_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      hand_off_time() :: %{
        "HourOfDay" => integer(),
        "MinuteOfHour" => integer()
      }
      
  """
  @type hand_off_time() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_result() :: %{}
      
  """
  @type tag_resource_result() :: %{}

  @typedoc """

  ## Example:
      
      list_preview_rotation_shifts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Overrides") => list(preview_override()),
        optional("RotationStartTime") => non_neg_integer(),
        optional("StartTime") => non_neg_integer(),
        required("EndTime") => non_neg_integer(),
        required("Members") => list(String.t() | atom()),
        required("Recurrence") => recurrence_settings(),
        required("TimeZoneId") => String.t() | atom()
      }
      
  """
  @type list_preview_rotation_shifts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      deactivate_contact_channel_request() :: %{
        required("ContactChannelId") => String.t() | atom()
      }
      
  """
  @type deactivate_contact_channel_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_rotation_override_request() :: %{
        required("RotationId") => String.t() | atom(),
        required("RotationOverrideId") => String.t() | atom()
      }
      
  """
  @type get_rotation_override_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      preview_override() :: %{
        "EndTime" => non_neg_integer(),
        "NewMembers" => list(String.t() | atom()),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type preview_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_contact_channel_result() :: %{}
      
  """
  @type update_contact_channel_result() :: %{}

  @typedoc """

  ## Example:
      
      deactivate_contact_channel_result() :: %{}
      
  """
  @type deactivate_contact_channel_result() :: %{}

  @typedoc """

  ## Example:
      
      get_contact_channel_request() :: %{
        required("ContactChannelId") => String.t() | atom()
      }
      
  """
  @type get_contact_channel_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      activate_contact_channel_result() :: %{}
      
  """
  @type activate_contact_channel_result() :: %{}

  @typedoc """

  ## Example:
      
      get_contact_policy_result() :: %{
        "ContactArn" => String.t() | atom(),
        "Policy" => String.t() | atom()
      }
      
  """
  @type get_contact_policy_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      send_activation_code_result() :: %{}
      
  """
  @type send_activation_code_result() :: %{}

  @typedoc """

  ## Example:
      
      list_engagements_request() :: %{
        optional("IncidentId") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("TimeRangeValue") => time_range()
      }
      
  """
  @type list_engagements_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      channel_target_info() :: %{
        "ContactChannelId" => String.t() | atom(),
        "RetryIntervalInMinutes" => integer()
      }
      
  """
  @type channel_target_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      page() :: %{
        "ContactArn" => String.t() | atom(),
        "DeliveryTime" => non_neg_integer(),
        "EngagementArn" => String.t() | atom(),
        "IncidentId" => String.t() | atom(),
        "PageArn" => String.t() | atom(),
        "ReadTime" => non_neg_integer(),
        "Sender" => String.t() | atom(),
        "SentTime" => non_neg_integer()
      }
      
  """
  @type page() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_rotation_result() :: %{
        "RotationArn" => String.t() | atom()
      }
      
  """
  @type create_rotation_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resolution_contact() :: %{
        "ContactArn" => String.t() | atom(),
        "StageIndex" => integer(),
        "Type" => list(any())
      }
      
  """
  @type resolution_contact() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_rotation_result() :: %{}
      
  """
  @type delete_rotation_result() :: %{}

  @typedoc """

  ## Example:
      
      delete_rotation_request() :: %{
        required("RotationId") => String.t() | atom()
      }
      
  """
  @type delete_rotation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_rotation_override_result() :: %{}
      
  """
  @type delete_rotation_override_result() :: %{}

  @typedoc """

  ## Example:
      
      plan() :: %{
        "RotationIds" => list(String.t() | atom()),
        "Stages" => list(stage())
      }
      
  """
  @type plan() :: %{(String.t() | atom()) => any()}

  @type accept_page_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type activate_contact_channel_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_contact_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | data_encryption_exception()

  @type create_contact_channel_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()
          | data_encryption_exception()

  @type create_rotation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_rotation_override_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type deactivate_contact_channel_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_contact_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_contact_channel_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_rotation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_rotation_override_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_engagement_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | data_encryption_exception()

  @type describe_page_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | data_encryption_exception()

  @type get_contact_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | data_encryption_exception()

  @type get_contact_channel_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | data_encryption_exception()

  @type get_contact_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_rotation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_rotation_override_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_contact_channels_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | data_encryption_exception()

  @type list_contacts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_engagements_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_page_receipts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_page_resolutions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_pages_by_contact_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_pages_by_engagement_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_preview_rotation_shifts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_rotation_overrides_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_rotation_shifts_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_rotations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_contact_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type send_activation_code_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | data_encryption_exception()

  @type start_engagement_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | data_encryption_exception()

  @type stop_engagement_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_contact_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | data_encryption_exception()

  @type update_contact_channel_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | data_encryption_exception()

  @type update_rotation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2021-05-03",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ssm-contacts",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "SSM Contacts",
      signature_version: "v4",
      signing_name: "ssm-contacts",
      target_prefix: "SSMContacts"
    }
  end

  @doc """
  Used to acknowledge an engagement to a contact channel during an incident.
  """
  @spec accept_page(map(), accept_page_request(), list()) ::
          {:ok, accept_page_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, accept_page_errors()}
  def accept_page(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AcceptPage", input, options)
  end

  @doc """
  Activates a contact's contact channel.

  Incident Manager can't engage a contact until the
  contact channel has been activated.
  """
  @spec activate_contact_channel(map(), activate_contact_channel_request(), list()) ::
          {:ok, activate_contact_channel_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, activate_contact_channel_errors()}
  def activate_contact_channel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ActivateContactChannel", input, options)
  end

  @doc """
  Contacts are either the contacts that Incident Manager engages during an
  incident or the
  escalation plans that Incident Manager uses to engage contacts in phases during
  an
  incident.
  """
  @spec create_contact(map(), create_contact_request(), list()) ::
          {:ok, create_contact_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_contact_errors()}
  def create_contact(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateContact", input, options)
  end

  @doc """
  A contact channel is the method that Incident Manager uses to engage your
  contact.
  """
  @spec create_contact_channel(map(), create_contact_channel_request(), list()) ::
          {:ok, create_contact_channel_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_contact_channel_errors()}
  def create_contact_channel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateContactChannel", input, options)
  end

  @doc """
  Creates a rotation in an on-call schedule.
  """
  @spec create_rotation(map(), create_rotation_request(), list()) ::
          {:ok, create_rotation_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_rotation_errors()}
  def create_rotation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRotation", input, options)
  end

  @doc """
  Creates an override for a rotation in an on-call schedule.
  """
  @spec create_rotation_override(map(), create_rotation_override_request(), list()) ::
          {:ok, create_rotation_override_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_rotation_override_errors()}
  def create_rotation_override(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRotationOverride", input, options)
  end

  @doc """
  To no longer receive Incident Manager engagements to a contact channel, you can
  deactivate
  the channel.
  """
  @spec deactivate_contact_channel(map(), deactivate_contact_channel_request(), list()) ::
          {:ok, deactivate_contact_channel_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deactivate_contact_channel_errors()}
  def deactivate_contact_channel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeactivateContactChannel", input, options)
  end

  @doc """
  To remove a contact from Incident Manager, you can delete the contact.

  Deleting a contact
  removes them from all escalation plans and related response plans. Deleting an
  escalation
  plan removes it from all related response plans. You will have to recreate the
  contact and
  its contact channels before you can use it again.
  """
  @spec delete_contact(map(), delete_contact_request(), list()) ::
          {:ok, delete_contact_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_contact_errors()}
  def delete_contact(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteContact", input, options)
  end

  @doc """
  To no longer receive engagements on a contact channel, you can delete the
  channel from a
  contact.

  Deleting the contact channel removes it from the contact's engagement plan. If
  you
  delete the only contact channel for a contact, you won't be able to engage that
  contact
  during an incident.
  """
  @spec delete_contact_channel(map(), delete_contact_channel_request(), list()) ::
          {:ok, delete_contact_channel_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_contact_channel_errors()}
  def delete_contact_channel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteContactChannel", input, options)
  end

  @doc """
  Deletes a rotation from the system.

  If a rotation belongs to more than one on-call
  schedule, this operation deletes it from all of them.
  """
  @spec delete_rotation(map(), delete_rotation_request(), list()) ::
          {:ok, delete_rotation_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_rotation_errors()}
  def delete_rotation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRotation", input, options)
  end

  @doc """
  Deletes an existing override for an on-call rotation.
  """
  @spec delete_rotation_override(map(), delete_rotation_override_request(), list()) ::
          {:ok, delete_rotation_override_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_rotation_override_errors()}
  def delete_rotation_override(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRotationOverride", input, options)
  end

  @doc """
  Incident Manager uses engagements to engage contacts and escalation plans during
  an incident.

  Use this command to describe the engagement that occurred during an incident.
  """
  @spec describe_engagement(map(), describe_engagement_request(), list()) ::
          {:ok, describe_engagement_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_engagement_errors()}
  def describe_engagement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEngagement", input, options)
  end

  @doc """
  Lists details of the engagement to a contact channel.
  """
  @spec describe_page(map(), describe_page_request(), list()) ::
          {:ok, describe_page_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_page_errors()}
  def describe_page(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePage", input, options)
  end

  @doc """
  Retrieves information about the specified contact or escalation plan.
  """
  @spec get_contact(map(), get_contact_request(), list()) ::
          {:ok, get_contact_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_contact_errors()}
  def get_contact(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetContact", input, options)
  end

  @doc """
  List details about a specific contact channel.
  """
  @spec get_contact_channel(map(), get_contact_channel_request(), list()) ::
          {:ok, get_contact_channel_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_contact_channel_errors()}
  def get_contact_channel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetContactChannel", input, options)
  end

  @doc """
  Retrieves the resource policies attached to the specified contact or escalation
  plan.
  """
  @spec get_contact_policy(map(), get_contact_policy_request(), list()) ::
          {:ok, get_contact_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_contact_policy_errors()}
  def get_contact_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetContactPolicy", input, options)
  end

  @doc """
  Retrieves information about an on-call rotation.
  """
  @spec get_rotation(map(), get_rotation_request(), list()) ::
          {:ok, get_rotation_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_rotation_errors()}
  def get_rotation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRotation", input, options)
  end

  @doc """
  Retrieves information about an override to an on-call rotation.
  """
  @spec get_rotation_override(map(), get_rotation_override_request(), list()) ::
          {:ok, get_rotation_override_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_rotation_override_errors()}
  def get_rotation_override(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRotationOverride", input, options)
  end

  @doc """
  Lists all contact channels for the specified contact.
  """
  @spec list_contact_channels(map(), list_contact_channels_request(), list()) ::
          {:ok, list_contact_channels_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_contact_channels_errors()}
  def list_contact_channels(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListContactChannels", input, options)
  end

  @doc """
  Lists all contacts and escalation plans in Incident Manager.
  """
  @spec list_contacts(map(), list_contacts_request(), list()) ::
          {:ok, list_contacts_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_contacts_errors()}
  def list_contacts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListContacts", input, options)
  end

  @doc """
  Lists all engagements that have happened in an incident.
  """
  @spec list_engagements(map(), list_engagements_request(), list()) ::
          {:ok, list_engagements_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_engagements_errors()}
  def list_engagements(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEngagements", input, options)
  end

  @doc """
  Lists all of the engagements to contact channels that have been acknowledged.
  """
  @spec list_page_receipts(map(), list_page_receipts_request(), list()) ::
          {:ok, list_page_receipts_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_page_receipts_errors()}
  def list_page_receipts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPageReceipts", input, options)
  end

  @doc """
  Returns the resolution path of an engagement.

  For example, the escalation plan engaged
  in an incident might target an on-call schedule that includes several contacts
  in a
  rotation, but just one contact on-call when the incident starts. The resolution
  path
  indicates the hierarchy of *escalation plan > on-call schedule >
  contact*.
  """
  @spec list_page_resolutions(map(), list_page_resolutions_request(), list()) ::
          {:ok, list_page_resolutions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_page_resolutions_errors()}
  def list_page_resolutions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPageResolutions", input, options)
  end

  @doc """
  Lists the engagements to a contact's contact channels.
  """
  @spec list_pages_by_contact(map(), list_pages_by_contact_request(), list()) ::
          {:ok, list_pages_by_contact_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_pages_by_contact_errors()}
  def list_pages_by_contact(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPagesByContact", input, options)
  end

  @doc """
  Lists the engagements to contact channels that occurred by engaging a contact.
  """
  @spec list_pages_by_engagement(map(), list_pages_by_engagement_request(), list()) ::
          {:ok, list_pages_by_engagement_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_pages_by_engagement_errors()}
  def list_pages_by_engagement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPagesByEngagement", input, options)
  end

  @doc """
  Returns a list of shifts based on rotation configuration parameters.

  The Incident Manager primarily uses this operation to populate the ## Preview
  calendar. It is not typically run by end users.
  """
  @spec list_preview_rotation_shifts(map(), list_preview_rotation_shifts_request(), list()) ::
          {:ok, list_preview_rotation_shifts_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_preview_rotation_shifts_errors()}
  def list_preview_rotation_shifts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPreviewRotationShifts", input, options)
  end

  @doc """
  Retrieves a list of overrides currently specified for an on-call rotation.
  """
  @spec list_rotation_overrides(map(), list_rotation_overrides_request(), list()) ::
          {:ok, list_rotation_overrides_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_rotation_overrides_errors()}
  def list_rotation_overrides(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRotationOverrides", input, options)
  end

  @doc """
  Returns a list of shifts generated by an existing rotation in the system.
  """
  @spec list_rotation_shifts(map(), list_rotation_shifts_request(), list()) ::
          {:ok, list_rotation_shifts_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_rotation_shifts_errors()}
  def list_rotation_shifts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRotationShifts", input, options)
  end

  @doc """
  Retrieves a list of on-call rotations.
  """
  @spec list_rotations(map(), list_rotations_request(), list()) ::
          {:ok, list_rotations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_rotations_errors()}
  def list_rotations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRotations", input, options)
  end

  @doc """
  Lists the tags of an escalation plan or contact.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Adds a resource policy to the specified contact or escalation plan.

  The resource policy
  is used to share the contact or escalation plan using Resource Access Manager
  (RAM). For more information about cross-account sharing, see [Setting up cross-account
  functionality](https://docs.aws.amazon.com/incident-manager/latest/userguide/xa.html).
  """
  @spec put_contact_policy(map(), put_contact_policy_request(), list()) ::
          {:ok, put_contact_policy_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_contact_policy_errors()}
  def put_contact_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutContactPolicy", input, options)
  end

  @doc """
  Sends an activation code to a contact channel.

  The contact can use this code to activate
  the contact channel in the console or with the `ActivateChannel` operation.
  Incident Manager can't engage a contact channel until it has been activated.
  """
  @spec send_activation_code(map(), send_activation_code_request(), list()) ::
          {:ok, send_activation_code_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_activation_code_errors()}
  def send_activation_code(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SendActivationCode", input, options)
  end

  @doc """
  Starts an engagement to a contact or escalation plan.

  The engagement engages each
  contact specified in the incident.
  """
  @spec start_engagement(map(), start_engagement_request(), list()) ::
          {:ok, start_engagement_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_engagement_errors()}
  def start_engagement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartEngagement", input, options)
  end

  @doc """
  Stops an engagement before it finishes the final stage of the escalation plan or
  engagement plan.

  Further contacts aren't engaged.
  """
  @spec stop_engagement(map(), stop_engagement_request(), list()) ::
          {:ok, stop_engagement_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_engagement_errors()}
  def stop_engagement(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopEngagement", input, options)
  end

  @doc """
  Tags a contact or escalation plan.

  You can tag only contacts and escalation plans in the
  first region of your replication set.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes tags from the specified resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates the contact or escalation plan specified.
  """
  @spec update_contact(map(), update_contact_request(), list()) ::
          {:ok, update_contact_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_contact_errors()}
  def update_contact(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateContact", input, options)
  end

  @doc """
  Updates a contact's contact channel.
  """
  @spec update_contact_channel(map(), update_contact_channel_request(), list()) ::
          {:ok, update_contact_channel_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_contact_channel_errors()}
  def update_contact_channel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateContactChannel", input, options)
  end

  @doc """
  Updates the information specified for an on-call rotation.
  """
  @spec update_rotation(map(), update_rotation_request(), list()) ::
          {:ok, update_rotation_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_rotation_errors()}
  def update_rotation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRotation", input, options)
  end
end
