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
        optional("NextToken") => String.t(),
        required("EngagementId") => String.t()
      }
      
  """
  @type list_pages_by_engagement_request() :: %{String.t() => any()}

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
  @type recurrence_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_rotation_request() :: %{
        optional("IdempotencyToken") => String.t(),
        optional("StartTime") => non_neg_integer(),
        optional("Tags") => list(tag()),
        required("ContactIds") => list(String.t()),
        required("Name") => String.t(),
        required("Recurrence") => recurrence_settings(),
        required("TimeZoneId") => String.t()
      }
      
  """
  @type create_rotation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_engagement_result() :: %{
        "ContactArn" => String.t(),
        "Content" => String.t(),
        "EngagementArn" => String.t(),
        "IncidentId" => String.t(),
        "PublicContent" => String.t(),
        "PublicSubject" => String.t(),
        "Sender" => String.t(),
        "StartTime" => non_neg_integer(),
        "StopTime" => non_neg_integer(),
        "Subject" => String.t()
      }
      
  """
  @type describe_engagement_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stage() :: %{
        "DurationInMinutes" => integer(),
        "Targets" => list(target())
      }
      
  """
  @type stage() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_contact_channel_request() :: %{
        optional("DeferActivation") => boolean(),
        optional("IdempotencyToken") => String.t(),
        required("ContactId") => String.t(),
        required("DeliveryAddress") => contact_channel_address(),
        required("Name") => String.t(),
        required("Type") => list(any())
      }
      
  """
  @type create_contact_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_pages_by_contact_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ContactId") => String.t()
      }
      
  """
  @type list_pages_by_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_rotation_override_request() :: %{
        optional("IdempotencyToken") => String.t(),
        required("EndTime") => non_neg_integer(),
        required("NewContactIds") => list(String.t()),
        required("RotationId") => String.t(),
        required("StartTime") => non_neg_integer()
      }
      
  """
  @type create_rotation_override_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_contact_request() :: %{
        required("ContactId") => String.t()
      }
      
  """
  @type delete_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contact_target_info() :: %{
        "ContactId" => String.t(),
        "IsEssential" => boolean()
      }
      
  """
  @type contact_target_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      engagement() :: %{
        "ContactArn" => String.t(),
        "EngagementArn" => String.t(),
        "IncidentId" => String.t(),
        "Sender" => String.t(),
        "StartTime" => non_neg_integer(),
        "StopTime" => non_neg_integer()
      }
      
  """
  @type engagement() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_rotation_override_result() :: %{
        "RotationOverrideId" => String.t()
      }
      
  """
  @type create_rotation_override_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_result() :: %{}
      
  """
  @type untag_resource_result() :: %{}

  @typedoc """

  ## Example:
      
      data_encryption_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type data_encryption_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_engagement_request() :: %{
        optional("Reason") => String.t(),
        required("EngagementId") => String.t()
      }
      
  """
  @type stop_engagement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_contact_channel_request() :: %{
        required("ContactChannelId") => String.t()
      }
      
  """
  @type delete_contact_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      weekly_setting() :: %{
        "DayOfWeek" => list(any()),
        "HandOffTime" => hand_off_time()
      }
      
  """
  @type weekly_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      shift_details() :: %{
        "OverriddenContactIds" => list(String.t())
      }
      
  """
  @type shift_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_rotation_override_request() :: %{
        required("RotationId") => String.t(),
        required("RotationOverrideId") => String.t()
      }
      
  """
  @type delete_rotation_override_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      receipt() :: %{
        "ContactChannelArn" => String.t(),
        "ReceiptInfo" => String.t(),
        "ReceiptTime" => non_neg_integer(),
        "ReceiptType" => list(any())
      }
      
  """
  @type receipt() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_rotation_request() :: %{
        optional("ContactIds") => list(String.t()),
        optional("StartTime") => non_neg_integer(),
        optional("TimeZoneId") => String.t(),
        required("Recurrence") => recurrence_settings(),
        required("RotationId") => String.t()
      }
      
  """
  @type update_rotation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_page_resolutions_result() :: %{
        "NextToken" => String.t(),
        "PageResolutions" => list(resolution_contact())
      }
      
  """
  @type list_page_resolutions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("TagKeys") => list(String.t())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_contact_channel_result() :: %{
        "ContactChannelArn" => String.t()
      }
      
  """
  @type create_contact_channel_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rotation() :: %{
        "ContactIds" => list(String.t()),
        "Name" => String.t(),
        "Recurrence" => recurrence_settings(),
        "RotationArn" => String.t(),
        "StartTime" => non_neg_integer(),
        "TimeZoneId" => String.t()
      }
      
  """
  @type rotation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_engagement_request() :: %{
        optional("IdempotencyToken") => String.t(),
        optional("IncidentId") => String.t(),
        optional("PublicContent") => String.t(),
        optional("PublicSubject") => String.t(),
        required("ContactId") => String.t(),
        required("Content") => String.t(),
        required("Sender") => String.t(),
        required("Subject") => String.t()
      }
      
  """
  @type start_engagement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contact_channel() :: %{
        "ActivationStatus" => list(any()),
        "ContactArn" => String.t(),
        "ContactChannelArn" => String.t(),
        "DeliveryAddress" => contact_channel_address(),
        "Name" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type contact_channel() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rotation_override() :: %{
        "CreateTime" => non_neg_integer(),
        "EndTime" => non_neg_integer(),
        "NewContactIds" => list(String.t()),
        "RotationOverrideId" => String.t(),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type rotation_override() :: %{String.t() => any()}

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
  @type coverage_time() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monthly_setting() :: %{
        "DayOfMonth" => integer(),
        "HandOffTime" => hand_off_time()
      }
      
  """
  @type monthly_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_page_resolutions_request() :: %{
        optional("NextToken") => String.t(),
        required("PageId") => String.t()
      }
      
  """
  @type list_page_resolutions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_engagements_result() :: %{
        "Engagements" => list(engagement()),
        "NextToken" => String.t()
      }
      
  """
  @type list_engagements_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      target() :: %{
        "ChannelTargetInfo" => channel_target_info(),
        "ContactTargetInfo" => contact_target_info()
      }
      
  """
  @type target() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contact_channel_address() :: %{
        "SimpleAddress" => String.t()
      }
      
  """
  @type contact_channel_address() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_pages_by_engagement_result() :: %{
        "NextToken" => String.t(),
        "Pages" => list(page())
      }
      
  """
  @type list_pages_by_engagement_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rotations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("RotationNamePrefix") => String.t()
      }
      
  """
  @type list_rotations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_page_request() :: %{
        required("PageId") => String.t()
      }
      
  """
  @type describe_page_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_page_receipts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("PageId") => String.t()
      }
      
  """
  @type list_page_receipts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "DependentEntities" => list(dependent_entity()),
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_contacts_result() :: %{
        "Contacts" => list(contact()),
        "NextToken" => String.t()
      }
      
  """
  @type list_contacts_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_rotation_result() :: %{}
      
  """
  @type update_rotation_result() :: %{}

  @typedoc """

  ## Example:
      
      list_page_receipts_result() :: %{
        "NextToken" => String.t(),
        "Receipts" => list(receipt())
      }
      
  """
  @type list_page_receipts_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_contact_channel_request() :: %{
        optional("DeliveryAddress") => contact_channel_address(),
        optional("Name") => String.t(),
        required("ContactChannelId") => String.t()
      }
      
  """
  @type update_contact_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_pages_by_contact_result() :: %{
        "NextToken" => String.t(),
        "Pages" => list(page())
      }
      
  """
  @type list_pages_by_contact_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activate_contact_channel_request() :: %{
        required("ActivationCode") => String.t(),
        required("ContactChannelId") => String.t()
      }
      
  """
  @type activate_contact_channel_request() :: %{String.t() => any()}

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
      
      get_contact_channel_result() :: %{
        "ActivationStatus" => list(any()),
        "ContactArn" => String.t(),
        "ContactChannelArn" => String.t(),
        "DeliveryAddress" => contact_channel_address(),
        "Name" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type get_contact_channel_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t(),
        "QuotaCode" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => String.t(),
        "ServiceCode" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_rotation_override_result() :: %{
        "CreateTime" => non_neg_integer(),
        "EndTime" => non_neg_integer(),
        "NewContactIds" => list(String.t()),
        "RotationArn" => String.t(),
        "RotationOverrideId" => String.t(),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type get_rotation_override_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rotation_overrides_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("EndTime") => non_neg_integer(),
        required("RotationId") => String.t(),
        required("StartTime") => non_neg_integer()
      }
      
  """
  @type list_rotation_overrides_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_preview_rotation_shifts_result() :: %{
        "NextToken" => String.t(),
        "RotationShifts" => list(rotation_shift())
      }
      
  """
  @type list_preview_rotation_shifts_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_page_result() :: %{}
      
  """
  @type accept_page_result() :: %{}

  @typedoc """

  ## Example:
      
      get_rotation_request() :: %{
        required("RotationId") => String.t()
      }
      
  """
  @type get_rotation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_contact_channels_result() :: %{
        "ContactChannels" => list(contact_channel()),
        "NextToken" => String.t()
      }
      
  """
  @type list_contact_channels_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rotation_shifts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("StartTime") => non_neg_integer(),
        required("EndTime") => non_neg_integer(),
        required("RotationId") => String.t()
      }
      
  """
  @type list_rotation_shifts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_rotation_result() :: %{
        "ContactIds" => list(String.t()),
        "Name" => String.t(),
        "Recurrence" => recurrence_settings(),
        "RotationArn" => String.t(),
        "StartTime" => non_neg_integer(),
        "TimeZoneId" => String.t()
      }
      
  """
  @type get_rotation_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_contact_result() :: %{}
      
  """
  @type update_contact_result() :: %{}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "Message" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_activation_code_request() :: %{
        required("ContactChannelId") => String.t()
      }
      
  """
  @type send_activation_code_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      accept_page_request() :: %{
        optional("AcceptCodeValidation") => list(any()),
        optional("ContactChannelId") => String.t(),
        optional("Note") => String.t(),
        required("AcceptCode") => String.t(),
        required("AcceptType") => list(any()),
        required("PageId") => String.t()
      }
      
  """
  @type accept_page_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dependent_entity() :: %{
        "DependentResourceIds" => list(String.t()),
        "RelationType" => String.t()
      }
      
  """
  @type dependent_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      contact() :: %{
        "Alias" => String.t(),
        "ContactArn" => String.t(),
        "DisplayName" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type contact() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_engagement_result() :: %{
        "EngagementArn" => String.t()
      }
      
  """
  @type start_engagement_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_contact_result() :: %{
        "ContactArn" => String.t()
      }
      
  """
  @type create_contact_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rotation_shifts_result() :: %{
        "NextToken" => String.t(),
        "RotationShifts" => list(rotation_shift())
      }
      
  """
  @type list_rotation_shifts_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rotation_shift() :: %{
        "ContactIds" => list(String.t()),
        "EndTime" => non_neg_integer(),
        "ShiftDetails" => shift_details(),
        "StartTime" => non_neg_integer(),
        "Type" => list(any())
      }
      
  """
  @type rotation_shift() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t(),
        "RetryAfterSeconds" => integer()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_page_result() :: %{
        "ContactArn" => String.t(),
        "Content" => String.t(),
        "DeliveryTime" => non_neg_integer(),
        "EngagementArn" => String.t(),
        "IncidentId" => String.t(),
        "PageArn" => String.t(),
        "PublicContent" => String.t(),
        "PublicSubject" => String.t(),
        "ReadTime" => non_neg_integer(),
        "Sender" => String.t(),
        "SentTime" => non_neg_integer(),
        "Subject" => String.t()
      }
      
  """
  @type describe_page_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_result() :: %{
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_contact_request() :: %{
        required("ContactId") => String.t()
      }
      
  """
  @type get_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_contacts_request() :: %{
        optional("AliasPrefix") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Type") => list(any())
      }
      
  """
  @type list_contacts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rotations_result() :: %{
        "NextToken" => String.t(),
        "Rotations" => list(rotation())
      }
      
  """
  @type list_rotations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_contact_channels_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ContactId") => String.t()
      }
      
  """
  @type list_contact_channels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_contact_result() :: %{
        "Alias" => String.t(),
        "ContactArn" => String.t(),
        "DisplayName" => String.t(),
        "Plan" => plan(),
        "Type" => list(any())
      }
      
  """
  @type get_contact_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_contact_policy_request() :: %{
        required("ContactArn") => String.t()
      }
      
  """
  @type get_contact_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      time_range() :: %{
        "EndTime" => non_neg_integer(),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type time_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rotation_overrides_result() :: %{
        "NextToken" => String.t(),
        "RotationOverrides" => list(rotation_override())
      }
      
  """
  @type list_rotation_overrides_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_contact_policy_request() :: %{
        required("ContactArn") => String.t(),
        required("Policy") => String.t()
      }
      
  """
  @type put_contact_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_engagement_request() :: %{
        required("EngagementId") => String.t()
      }
      
  """
  @type describe_engagement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_contact_channel_result() :: %{}
      
  """
  @type delete_contact_channel_result() :: %{}

  @typedoc """

  ## Example:
      
      update_contact_request() :: %{
        optional("DisplayName") => String.t(),
        optional("Plan") => plan(),
        required("ContactId") => String.t()
      }
      
  """
  @type update_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_contact_result() :: %{}
      
  """
  @type delete_contact_result() :: %{}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Fields" => list(validation_exception_field()),
        "Message" => String.t(),
        "Reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t(),
        "QuotaCode" => String.t(),
        "RetryAfterSeconds" => integer(),
        "ServiceCode" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_contact_request() :: %{
        optional("DisplayName") => String.t(),
        optional("IdempotencyToken") => String.t(),
        optional("Tags") => list(tag()),
        required("Alias") => String.t(),
        required("Plan") => plan(),
        required("Type") => list(any())
      }
      
  """
  @type create_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      hand_off_time() :: %{
        "HourOfDay" => integer(),
        "MinuteOfHour" => integer()
      }
      
  """
  @type hand_off_time() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_result() :: %{}
      
  """
  @type tag_resource_result() :: %{}

  @typedoc """

  ## Example:
      
      list_preview_rotation_shifts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Overrides") => list(preview_override()),
        optional("RotationStartTime") => non_neg_integer(),
        optional("StartTime") => non_neg_integer(),
        required("EndTime") => non_neg_integer(),
        required("Members") => list(String.t()),
        required("Recurrence") => recurrence_settings(),
        required("TimeZoneId") => String.t()
      }
      
  """
  @type list_preview_rotation_shifts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deactivate_contact_channel_request() :: %{
        required("ContactChannelId") => String.t()
      }
      
  """
  @type deactivate_contact_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_rotation_override_request() :: %{
        required("RotationId") => String.t(),
        required("RotationOverrideId") => String.t()
      }
      
  """
  @type get_rotation_override_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      preview_override() :: %{
        "EndTime" => non_neg_integer(),
        "NewMembers" => list(String.t()),
        "StartTime" => non_neg_integer()
      }
      
  """
  @type preview_override() :: %{String.t() => any()}

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
        required("ContactChannelId") => String.t()
      }
      
  """
  @type get_contact_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      activate_contact_channel_result() :: %{}
      
  """
  @type activate_contact_channel_result() :: %{}

  @typedoc """

  ## Example:
      
      get_contact_policy_result() :: %{
        "ContactArn" => String.t(),
        "Policy" => String.t()
      }
      
  """
  @type get_contact_policy_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      send_activation_code_result() :: %{}
      
  """
  @type send_activation_code_result() :: %{}

  @typedoc """

  ## Example:
      
      list_engagements_request() :: %{
        optional("IncidentId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("TimeRangeValue") => time_range()
      }
      
  """
  @type list_engagements_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_target_info() :: %{
        "ContactChannelId" => String.t(),
        "RetryIntervalInMinutes" => integer()
      }
      
  """
  @type channel_target_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      page() :: %{
        "ContactArn" => String.t(),
        "DeliveryTime" => non_neg_integer(),
        "EngagementArn" => String.t(),
        "IncidentId" => String.t(),
        "PageArn" => String.t(),
        "ReadTime" => non_neg_integer(),
        "Sender" => String.t(),
        "SentTime" => non_neg_integer()
      }
      
  """
  @type page() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_rotation_result() :: %{
        "RotationArn" => String.t()
      }
      
  """
  @type create_rotation_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resolution_contact() :: %{
        "ContactArn" => String.t(),
        "StageIndex" => integer(),
        "Type" => list(any())
      }
      
  """
  @type resolution_contact() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_rotation_result() :: %{}
      
  """
  @type delete_rotation_result() :: %{}

  @typedoc """

  ## Example:
      
      delete_rotation_request() :: %{
        required("RotationId") => String.t()
      }
      
  """
  @type delete_rotation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_rotation_override_result() :: %{}
      
  """
  @type delete_rotation_override_result() :: %{}

  @typedoc """

  ## Example:
      
      plan() :: %{
        "RotationIds" => list(String.t()),
        "Stages" => list(stage())
      }
      
  """
  @type plan() :: %{String.t() => any()}

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

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
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateRotation", input, options)
  end
end
