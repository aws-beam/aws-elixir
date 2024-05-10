# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Pinpoint do
  @moduledoc """
  Doc Engage API - Amazon Pinpoint API
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      campaign_response() :: %{
        "AdditionalTreatments" => list(treatment_resource()()),
        "ApplicationId" => String.t(),
        "Arn" => String.t(),
        "CreationDate" => String.t(),
        "CustomDeliveryConfiguration" => custom_delivery_configuration(),
        "DefaultState" => campaign_state(),
        "Description" => String.t(),
        "HoldoutPercent" => integer(),
        "Hook" => campaign_hook(),
        "Id" => String.t(),
        "IsPaused" => boolean(),
        "LastModifiedDate" => String.t(),
        "Limits" => campaign_limits(),
        "MessageConfiguration" => message_configuration(),
        "Name" => String.t(),
        "Priority" => integer(),
        "Schedule" => schedule(),
        "SegmentId" => String.t(),
        "SegmentVersion" => integer(),
        "State" => campaign_state(),
        "TemplateConfiguration" => template_configuration(),
        "TreatmentDescription" => String.t(),
        "TreatmentName" => String.t(),
        "Version" => integer(),
        "tags" => map()
      }

  """
  @type campaign_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_journey_request() :: %{}

  """
  @type delete_journey_request() :: %{}

  @typedoc """

  ## Example:

      journey_response() :: %{
        "Activities" => map(),
        "ApplicationId" => String.t(),
        "ClosedDays" => closed_days(),
        "CreationDate" => String.t(),
        "Id" => String.t(),
        "JourneyChannelSettings" => journey_channel_settings(),
        "LastModifiedDate" => String.t(),
        "Limits" => journey_limits(),
        "LocalTime" => boolean(),
        "Name" => String.t(),
        "OpenHours" => open_hours(),
        "QuietTime" => quiet_time(),
        "RefreshFrequency" => String.t(),
        "RefreshOnSegmentUpdate" => boolean(),
        "Schedule" => journey_schedule(),
        "SendingSchedule" => boolean(),
        "StartActivity" => String.t(),
        "StartCondition" => start_condition(),
        "State" => list(any()),
        "TimezoneEstimationMethods" => list(list(any())()),
        "WaitForQuietTime" => boolean(),
        "tags" => map()
      }

  """
  @type journey_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      treatment_resource() :: %{
        "CustomDeliveryConfiguration" => custom_delivery_configuration(),
        "Id" => String.t(),
        "MessageConfiguration" => message_configuration(),
        "Schedule" => schedule(),
        "SizePercent" => integer(),
        "State" => campaign_state(),
        "TemplateConfiguration" => template_configuration(),
        "TreatmentDescription" => String.t(),
        "TreatmentName" => String.t()
      }

  """
  @type treatment_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_user_endpoints_response() :: %{
        "EndpointsResponse" => endpoints_response()
      }

  """
  @type delete_user_endpoints_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      verify_o_t_p_message_request() :: %{
        required("VerifyOTPMessageRequestParameters") => verify_o_t_p_message_request_parameters()
      }

  """
  @type verify_o_t_p_message_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_campaign_activities_response() :: %{
        "ActivitiesResponse" => activities_response()
      }

  """
  @type get_campaign_activities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      wait_time() :: %{
        "WaitFor" => String.t(),
        "WaitUntil" => String.t()
      }

  """
  @type wait_time() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_import_job_response() :: %{
        "ImportJobResponse" => import_job_response()
      }

  """
  @type create_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_template_active_version_request() :: %{
        required("TemplateActiveVersionRequest") => template_active_version_request()
      }

  """
  @type update_template_active_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      verify_o_t_p_message_request_parameters() :: %{
        "DestinationIdentity" => String.t(),
        "Otp" => String.t(),
        "ReferenceId" => String.t()
      }

  """
  @type verify_o_t_p_message_request_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      in_app_campaign_schedule() :: %{
        "EndDate" => String.t(),
        "EventFilter" => campaign_event_filter(),
        "QuietTime" => quiet_time()
      }

  """
  @type in_app_campaign_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      application_date_range_kpi_response() :: %{
        "ApplicationId" => String.t(),
        "EndTime" => non_neg_integer(),
        "KpiName" => String.t(),
        "KpiResult" => base_kpi_result(),
        "NextToken" => String.t(),
        "StartTime" => non_neg_integer()
      }

  """
  @type application_date_range_kpi_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_channels_request() :: %{}

  """
  @type get_channels_request() :: %{}

  @typedoc """

  ## Example:

      get_application_date_range_kpi_request() :: %{
        optional("EndTime") => non_neg_integer(),
        optional("NextToken") => String.t(),
        optional("PageSize") => String.t(),
        optional("StartTime") => non_neg_integer()
      }

  """
  @type get_application_date_range_kpi_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      campaign_limits() :: %{
        "Daily" => integer(),
        "MaximumDuration" => integer(),
        "MessagesPerSecond" => integer(),
        "Session" => integer(),
        "Total" => integer()
      }

  """
  @type campaign_limits() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      campaign_state() :: %{
        "CampaignStatus" => list(any())
      }

  """
  @type campaign_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      message_configuration() :: %{
        "ADMMessage" => message(),
        "APNSMessage" => message(),
        "BaiduMessage" => message(),
        "CustomMessage" => campaign_custom_message(),
        "DefaultMessage" => message(),
        "EmailMessage" => campaign_email_message(),
        "GCMMessage" => message(),
        "InAppMessage" => campaign_in_app_message(),
        "SMSMessage" => campaign_sms_message()
      }

  """
  @type message_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_push_template_response() :: %{
        "CreateTemplateMessageBody" => create_template_message_body()
      }

  """
  @type create_push_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_apns_voip_sandbox_channel_response() :: %{
        "APNSVoipSandboxChannelResponse" => a_p_n_s_voip_sandbox_channel_response()
      }

  """
  @type get_apns_voip_sandbox_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_campaign_response() :: %{
        "CampaignResponse" => campaign_response()
      }

  """
  @type update_campaign_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("TagsModel") => tags_model()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      endpoints_response() :: %{
        "Item" => list(endpoint_response()())
      }

  """
  @type endpoints_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      push_notification_template_response() :: %{
        "ADM" => android_push_notification_template(),
        "APNS" => a_p_n_s_push_notification_template(),
        "Arn" => String.t(),
        "Baidu" => android_push_notification_template(),
        "CreationDate" => String.t(),
        "Default" => default_push_notification_template(),
        "DefaultSubstitutions" => String.t(),
        "GCM" => android_push_notification_template(),
        "LastModifiedDate" => String.t(),
        "RecommenderId" => String.t(),
        "TemplateDescription" => String.t(),
        "TemplateName" => String.t(),
        "TemplateType" => list(any()),
        "Version" => String.t(),
        "tags" => map()
      }

  """
  @type push_notification_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_import_job_request() :: %{
        required("ImportJobRequest") => import_job_request()
      }

  """
  @type create_import_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_push_template_response() :: %{
        "PushNotificationTemplateResponse" => push_notification_template_response()
      }

  """
  @type get_push_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_campaign_versions_response() :: %{
        "CampaignsResponse" => campaigns_response()
      }

  """
  @type get_campaign_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_apps_request() :: %{
        optional("PageSize") => String.t(),
        optional("Token") => String.t()
      }

  """
  @type get_apps_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      baidu_message() :: %{
        "Action" => list(any()),
        "Body" => String.t(),
        "Data" => map(),
        "IconReference" => String.t(),
        "ImageIconUrl" => String.t(),
        "ImageUrl" => String.t(),
        "RawContent" => String.t(),
        "SilentPush" => boolean(),
        "SmallImageIconUrl" => String.t(),
        "Sound" => String.t(),
        "Substitutions" => map(),
        "TimeToLive" => integer(),
        "Title" => String.t(),
        "Url" => String.t()
      }

  """
  @type baidu_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel_response() :: %{
        "ApplicationId" => String.t(),
        "CreationDate" => String.t(),
        "Enabled" => boolean(),
        "HasCredential" => boolean(),
        "Id" => String.t(),
        "IsArchived" => boolean(),
        "LastModifiedBy" => String.t(),
        "LastModifiedDate" => String.t(),
        "Version" => integer()
      }

  """
  @type channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_campaign_version_request() :: %{}

  """
  @type get_campaign_version_request() :: %{}

  @typedoc """

  ## Example:

      get_journey_request() :: %{}

  """
  @type get_journey_request() :: %{}

  @typedoc """

  ## Example:

      get_campaign_request() :: %{}

  """
  @type get_campaign_request() :: %{}

  @typedoc """

  ## Example:

      recency_dimension() :: %{
        "Duration" => list(any()),
        "RecencyType" => list(any())
      }

  """
  @type recency_dimension() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_voice_template_request() :: %{
        required("VoiceTemplateRequest") => voice_template_request()
      }

  """
  @type create_voice_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      simple_condition() :: %{
        "EventCondition" => event_condition(),
        "SegmentCondition" => segment_condition(),
        "SegmentDimensions" => segment_dimensions()
      }

  """
  @type simple_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      email_template_request() :: %{
        "DefaultSubstitutions" => String.t(),
        "Headers" => list(message_header()()),
        "HtmlPart" => String.t(),
        "RecommenderId" => String.t(),
        "Subject" => String.t(),
        "TemplateDescription" => String.t(),
        "TextPart" => String.t(),
        "tags" => map()
      }

  """
  @type email_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      event_condition() :: %{
        "Dimensions" => event_dimensions(),
        "MessageActivity" => String.t()
      }

  """
  @type event_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_push_template_response() :: %{
        "MessageBody" => message_body()
      }

  """
  @type update_push_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      verification_response() :: %{
        "Valid" => boolean()
      }

  """
  @type verification_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_app_request() :: %{
        required("CreateApplicationRequest") => create_application_request()
      }

  """
  @type create_app_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_jobs_response() :: %{
        "Item" => list(export_job_response()()),
        "NextToken" => String.t()
      }

  """
  @type export_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_app_response() :: %{
        "ApplicationResponse" => application_response()
      }

  """
  @type delete_app_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conditional_split_activity() :: %{
        "Condition" => condition(),
        "EvaluationWaitTime" => wait_time(),
        "FalseActivity" => String.t(),
        "TrueActivity" => String.t()
      }

  """
  @type conditional_split_activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      campaign_hook() :: %{
        "LambdaFunctionName" => String.t(),
        "Mode" => list(any()),
        "WebUrl" => String.t()
      }

  """
  @type campaign_hook() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_apns_sandbox_channel_request() :: %{}

  """
  @type delete_apns_sandbox_channel_request() :: %{}

  @typedoc """

  ## Example:

      get_email_channel_response() :: %{
        "EmailChannelResponse" => email_channel_response()
      }

  """
  @type get_email_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_endpoint_response() :: %{
        "MessageBody" => message_body()
      }

  """
  @type update_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      a_p_n_s_channel_request() :: %{
        "BundleId" => String.t(),
        "Certificate" => String.t(),
        "DefaultAuthenticationMethod" => String.t(),
        "Enabled" => boolean(),
        "PrivateKey" => String.t(),
        "TeamId" => String.t(),
        "TokenKey" => String.t(),
        "TokenKeyId" => String.t()
      }

  """
  @type a_p_n_s_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      open_hours_rule() :: %{
        "EndTime" => String.t(),
        "StartTime" => String.t()
      }

  """
  @type open_hours_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      campaigns_response() :: %{
        "Item" => list(campaign_response()()),
        "NextToken" => String.t()
      }

  """
  @type campaigns_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_email_template_request() :: %{
        optional("CreateNewVersion") => boolean(),
        optional("Version") => String.t(),
        required("EmailTemplateRequest") => email_template_request()
      }

  """
  @type update_email_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      push_notification_template_request() :: %{
        "ADM" => android_push_notification_template(),
        "APNS" => a_p_n_s_push_notification_template(),
        "Baidu" => android_push_notification_template(),
        "Default" => default_push_notification_template(),
        "DefaultSubstitutions" => String.t(),
        "GCM" => android_push_notification_template(),
        "RecommenderId" => String.t(),
        "TemplateDescription" => String.t(),
        "tags" => map()
      }

  """
  @type push_notification_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_in_app_template_response() :: %{
        "TemplateCreateMessageBody" => template_create_message_body()
      }

  """
  @type create_in_app_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      result_row_value() :: %{
        "Key" => String.t(),
        "Type" => String.t(),
        "Value" => String.t()
      }

  """
  @type result_row_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      journey_custom_message() :: %{
        "Data" => String.t()
      }

  """
  @type journey_custom_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      number_validate_request() :: %{
        "IsoCountryCode" => String.t(),
        "PhoneNumber" => String.t()
      }

  """
  @type number_validate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      endpoint_batch_item() :: %{
        "Address" => String.t(),
        "Attributes" => map(),
        "ChannelType" => list(any()),
        "Demographic" => endpoint_demographic(),
        "EffectiveDate" => String.t(),
        "EndpointStatus" => String.t(),
        "Id" => String.t(),
        "Location" => endpoint_location(),
        "Metrics" => map(),
        "OptOut" => String.t(),
        "RequestId" => String.t(),
        "User" => endpoint_user()
      }

  """
  @type endpoint_batch_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_email_channel_response() :: %{
        "EmailChannelResponse" => email_channel_response()
      }

  """
  @type update_email_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      base_kpi_result() :: %{
        "Rows" => list(result_row()())
      }

  """
  @type base_kpi_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_baidu_channel_response() :: %{
        "BaiduChannelResponse" => baidu_channel_response()
      }

  """
  @type delete_baidu_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_journey_state_request() :: %{
        required("JourneyStateRequest") => journey_state_request()
      }

  """
  @type update_journey_state_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      endpoint_batch_request() :: %{
        "Item" => list(endpoint_batch_item()())
      }

  """
  @type endpoint_batch_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      g_p_s_point_dimension() :: %{
        "Coordinates" => g_p_s_coordinates(),
        "RangeInKilometers" => float()
      }

  """
  @type g_p_s_point_dimension() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      quiet_time() :: %{
        "End" => String.t(),
        "Start" => String.t()
      }

  """
  @type quiet_time() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_sms_channel_request() :: %{
        required("SMSChannelRequest") => sms_channel_request()
      }

  """
  @type update_sms_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_templates_request() :: %{
        optional("NextToken") => String.t(),
        optional("PageSize") => String.t(),
        optional("Prefix") => String.t(),
        optional("TemplateType") => String.t()
      }

  """
  @type list_templates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      random_split_entry() :: %{
        "NextActivity" => String.t(),
        "Percentage" => integer()
      }

  """
  @type random_split_entry() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      campaign_event_filter() :: %{
        "Dimensions" => event_dimensions(),
        "FilterType" => list(any())
      }

  """
  @type campaign_event_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_event_stream_request() :: %{
        required("WriteEventStream") => write_event_stream()
      }

  """
  @type put_event_stream_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      push_message_activity() :: %{
        "MessageConfig" => journey_push_message(),
        "NextActivity" => String.t(),
        "TemplateName" => String.t(),
        "TemplateVersion" => String.t()
      }

  """
  @type push_message_activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      voice_message() :: %{
        "Body" => String.t(),
        "LanguageCode" => String.t(),
        "OriginationNumber" => String.t(),
        "Substitutions" => map(),
        "VoiceId" => String.t()
      }

  """
  @type voice_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_segment_version_request() :: %{}

  """
  @type get_segment_version_request() :: %{}

  @typedoc """

  ## Example:

      get_in_app_messages_request() :: %{}

  """
  @type get_in_app_messages_request() :: %{}

  @typedoc """

  ## Example:

      get_segment_request() :: %{}

  """
  @type get_segment_request() :: %{}

  @typedoc """

  ## Example:

      get_voice_channel_response() :: %{
        "VoiceChannelResponse" => voice_channel_response()
      }

  """
  @type get_voice_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_segment_versions_response() :: %{
        "SegmentsResponse" => segments_response()
      }

  """
  @type get_segment_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{
        "Message" => String.t(),
        "RequestID" => String.t()
      }

  """
  @type forbidden_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_users_message_request() :: %{
        "Context" => map(),
        "MessageConfiguration" => direct_message_configuration(),
        "TemplateConfiguration" => template_configuration(),
        "TraceId" => String.t(),
        "Users" => map()
      }

  """
  @type send_users_message_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      event_item_response() :: %{
        "Message" => String.t(),
        "StatusCode" => integer()
      }

  """
  @type event_item_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      in_app_message_header_config() :: %{
        "Alignment" => list(any()),
        "Header" => String.t(),
        "TextColor" => String.t()
      }

  """
  @type in_app_message_header_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      event_start_condition() :: %{
        "EventFilter" => event_filter(),
        "SegmentId" => String.t()
      }

  """
  @type event_start_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_email_channel_request() :: %{
        required("EmailChannelRequest") => email_channel_request()
      }

  """
  @type update_email_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      campaign_date_range_kpi_response() :: %{
        "ApplicationId" => String.t(),
        "CampaignId" => String.t(),
        "EndTime" => non_neg_integer(),
        "KpiName" => String.t(),
        "KpiResult" => base_kpi_result(),
        "NextToken" => String.t(),
        "StartTime" => non_neg_integer()
      }

  """
  @type campaign_date_range_kpi_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      template_create_message_body() :: %{
        "Arn" => String.t(),
        "Message" => String.t(),
        "RequestID" => String.t()
      }

  """
  @type template_create_message_body() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      events_batch() :: %{
        "Endpoint" => public_endpoint(),
        "Events" => map()
      }

  """
  @type events_batch() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_export_job_response() :: %{
        "ExportJobResponse" => export_job_response()
      }

  """
  @type create_export_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      a_p_n_s_voip_channel_request() :: %{
        "BundleId" => String.t(),
        "Certificate" => String.t(),
        "DefaultAuthenticationMethod" => String.t(),
        "Enabled" => boolean(),
        "PrivateKey" => String.t(),
        "TeamId" => String.t(),
        "TokenKey" => String.t(),
        "TokenKeyId" => String.t()
      }

  """
  @type a_p_n_s_voip_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      method_not_allowed_exception() :: %{
        "Message" => String.t(),
        "RequestID" => String.t()
      }

  """
  @type method_not_allowed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_channels_response() :: %{
        "ChannelsResponse" => channels_response()
      }

  """
  @type get_channels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_gcm_channel_request() :: %{
        required("GCMChannelRequest") => g_cm_channel_request()
      }

  """
  @type update_gcm_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sms_channel_request() :: %{}

  """
  @type get_sms_channel_request() :: %{}

  @typedoc """

  ## Example:

      get_export_jobs_response() :: %{
        "ExportJobsResponse" => export_jobs_response()
      }

  """
  @type get_export_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_o_t_p_message_request_parameters() :: %{
        "AllowedAttempts" => integer(),
        "BrandName" => String.t(),
        "Channel" => String.t(),
        "CodeLength" => integer(),
        "DestinationIdentity" => String.t(),
        "EntityId" => String.t(),
        "Language" => String.t(),
        "OriginationIdentity" => String.t(),
        "ReferenceId" => String.t(),
        "TemplateId" => String.t(),
        "ValidityPeriod" => integer()
      }

  """
  @type send_o_t_p_message_request_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_apns_sandbox_channel_response() :: %{
        "APNSSandboxChannelResponse" => a_p_n_s_sandbox_channel_response()
      }

  """
  @type delete_apns_sandbox_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      journey_run_execution_activity_metrics_response() :: %{
        "ActivityType" => String.t(),
        "ApplicationId" => String.t(),
        "JourneyActivityId" => String.t(),
        "JourneyId" => String.t(),
        "LastEvaluatedTime" => String.t(),
        "Metrics" => map(),
        "RunId" => String.t()
      }

  """
  @type journey_run_execution_activity_metrics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_apns_sandbox_channel_request() :: %{
        required("APNSSandboxChannelRequest") => a_p_n_s_sandbox_channel_request()
      }

  """
  @type update_apns_sandbox_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_gcm_channel_response() :: %{
        "GCMChannelResponse" => g_cm_channel_response()
      }

  """
  @type delete_gcm_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      templates_response() :: %{
        "Item" => list(template_response()()),
        "NextToken" => String.t()
      }

  """
  @type templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_sms_channel_response() :: %{
        "SMSChannelResponse" => sms_channel_response()
      }

  """
  @type update_sms_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attributes_resource() :: %{
        "ApplicationId" => String.t(),
        "AttributeType" => String.t(),
        "Attributes" => list(String.t()())
      }

  """
  @type attributes_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_recommender_configuration_response() :: %{
        "RecommenderConfigurationResponse" => recommender_configuration_response()
      }

  """
  @type delete_recommender_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_voice_channel_request() :: %{
        required("VoiceChannelRequest") => voice_channel_request()
      }

  """
  @type update_voice_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_in_app_template_request() :: %{
        optional("CreateNewVersion") => boolean(),
        optional("Version") => String.t(),
        required("InAppTemplateRequest") => in_app_template_request()
      }

  """
  @type update_in_app_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      message_body() :: %{
        "Message" => String.t(),
        "RequestID" => String.t()
      }

  """
  @type message_body() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      write_journey_request() :: %{
        "Activities" => map(),
        "ClosedDays" => closed_days(),
        "CreationDate" => String.t(),
        "JourneyChannelSettings" => journey_channel_settings(),
        "LastModifiedDate" => String.t(),
        "Limits" => journey_limits(),
        "LocalTime" => boolean(),
        "Name" => String.t(),
        "OpenHours" => open_hours(),
        "QuietTime" => quiet_time(),
        "RefreshFrequency" => String.t(),
        "RefreshOnSegmentUpdate" => boolean(),
        "Schedule" => journey_schedule(),
        "SendingSchedule" => boolean(),
        "StartActivity" => String.t(),
        "StartCondition" => start_condition(),
        "State" => list(any()),
        "TimezoneEstimationMethods" => list(list(any())()),
        "WaitForQuietTime" => boolean()
      }

  """
  @type write_journey_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      raw_email() :: %{
        "Data" => binary()
      }

  """
  @type raw_email() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_apns_voip_channel_response() :: %{
        "APNSVoipChannelResponse" => a_p_n_s_voip_channel_response()
      }

  """
  @type get_apns_voip_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      activity_response() :: %{
        "ApplicationId" => String.t(),
        "CampaignId" => String.t(),
        "End" => String.t(),
        "ExecutionMetrics" => map(),
        "Id" => String.t(),
        "Result" => String.t(),
        "ScheduledStart" => String.t(),
        "Start" => String.t(),
        "State" => String.t(),
        "SuccessfulEndpointCount" => integer(),
        "TimezonesCompletedCount" => integer(),
        "TimezonesTotalCount" => integer(),
        "TotalEndpointCount" => integer(),
        "TreatmentId" => String.t()
      }

  """
  @type activity_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_in_app_template_response() :: %{
        "MessageBody" => message_body()
      }

  """
  @type delete_in_app_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_apns_channel_response() :: %{
        "APNSChannelResponse" => a_p_n_s_channel_response()
      }

  """
  @type update_apns_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      open_hours() :: %{
        "CUSTOM" => map(),
        "EMAIL" => map(),
        "PUSH" => map(),
        "SMS" => map(),
        "VOICE" => map()
      }

  """
  @type open_hours() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_baidu_channel_request() :: %{}

  """
  @type get_baidu_channel_request() :: %{}

  @typedoc """

  ## Example:

      delete_campaign_request() :: %{}

  """
  @type delete_campaign_request() :: %{}

  @typedoc """

  ## Example:

      sms_message() :: %{
        "Body" => String.t(),
        "EntityId" => String.t(),
        "Keyword" => String.t(),
        "MediaUrl" => String.t(),
        "MessageType" => list(any()),
        "OriginationNumber" => String.t(),
        "SenderId" => String.t(),
        "Substitutions" => map(),
        "TemplateId" => String.t()
      }

  """
  @type sms_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sms_message_activity() :: %{
        "MessageConfig" => journey_sms_message(),
        "NextActivity" => String.t(),
        "TemplateName" => String.t(),
        "TemplateVersion" => String.t()
      }

  """
  @type sms_message_activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      template_response() :: %{
        "Arn" => String.t(),
        "CreationDate" => String.t(),
        "DefaultSubstitutions" => String.t(),
        "LastModifiedDate" => String.t(),
        "TemplateDescription" => String.t(),
        "TemplateName" => String.t(),
        "TemplateType" => list(any()),
        "Version" => String.t(),
        "tags" => map()
      }

  """
  @type template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_endpoint_request() :: %{
        required("EndpointRequest") => endpoint_request()
      }

  """
  @type update_endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      endpoint_send_configuration() :: %{
        "BodyOverride" => String.t(),
        "Context" => map(),
        "RawContent" => String.t(),
        "Substitutions" => map(),
        "TitleOverride" => String.t()
      }

  """
  @type endpoint_send_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_events_response() :: %{
        "EventsResponse" => events_response()
      }

  """
  @type put_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      journeys_response() :: %{
        "Item" => list(journey_response()()),
        "NextToken" => String.t()
      }

  """
  @type journeys_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      events_request() :: %{
        "BatchItem" => map()
      }

  """
  @type events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      message_result() :: %{
        "DeliveryStatus" => list(any()),
        "MessageId" => String.t(),
        "StatusCode" => integer(),
        "StatusMessage" => String.t(),
        "UpdatedToken" => String.t()
      }

  """
  @type message_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_journey_execution_metrics_request() :: %{
        optional("NextToken") => String.t(),
        optional("PageSize") => String.t()
      }

  """
  @type get_journey_execution_metrics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_import_jobs_response() :: %{
        "ImportJobsResponse" => import_jobs_response()
      }

  """
  @type get_import_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_voice_template_response() :: %{
        "MessageBody" => message_body()
      }

  """
  @type update_voice_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_apns_voip_channel_response() :: %{
        "APNSVoipChannelResponse" => a_p_n_s_voip_channel_response()
      }

  """
  @type update_apns_voip_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      application_settings_resource() :: %{
        "ApplicationId" => String.t(),
        "CampaignHook" => campaign_hook(),
        "JourneyLimits" => application_settings_journey_limits(),
        "LastModifiedDate" => String.t(),
        "Limits" => campaign_limits(),
        "QuietTime" => quiet_time()
      }

  """
  @type application_settings_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_recommender_configuration_response() :: %{
        "RecommenderConfigurationResponse" => recommender_configuration_response()
      }

  """
  @type create_recommender_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      template_version_response() :: %{
        "CreationDate" => String.t(),
        "DefaultSubstitutions" => String.t(),
        "LastModifiedDate" => String.t(),
        "TemplateDescription" => String.t(),
        "TemplateName" => String.t(),
        "TemplateType" => String.t(),
        "Version" => String.t()
      }

  """
  @type template_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "Message" => String.t(),
        "RequestID" => String.t()
      }

  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_push_template_request() :: %{
        optional("Version") => String.t()
      }

  """
  @type get_push_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_apns_voip_sandbox_channel_request() :: %{
        required("APNSVoipSandboxChannelRequest") => a_p_n_s_voip_sandbox_channel_request()
      }

  """
  @type update_apns_voip_sandbox_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      phone_number_validate_response() :: %{
        "NumberValidateResponse" => number_validate_response()
      }

  """
  @type phone_number_validate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      holdout_activity() :: %{
        "NextActivity" => String.t(),
        "Percentage" => integer()
      }

  """
  @type holdout_activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_sms_template_response() :: %{
        "MessageBody" => message_body()
      }

  """
  @type update_sms_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_email_template_request() :: %{
        optional("Version") => String.t()
      }

  """
  @type delete_email_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      segment_reference() :: %{
        "Id" => String.t(),
        "Version" => integer()
      }

  """
  @type segment_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_recommender_configuration_request() :: %{}

  """
  @type get_recommender_configuration_request() :: %{}

  @typedoc """

  ## Example:

      ad_m_channel_response() :: %{
        "ApplicationId" => String.t(),
        "CreationDate" => String.t(),
        "Enabled" => boolean(),
        "HasCredential" => boolean(),
        "Id" => String.t(),
        "IsArchived" => boolean(),
        "LastModifiedBy" => String.t(),
        "LastModifiedDate" => String.t(),
        "Platform" => String.t(),
        "Version" => integer()
      }

  """
  @type ad_m_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_baidu_channel_request() :: %{
        required("BaiduChannelRequest") => baidu_channel_request()
      }

  """
  @type update_baidu_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_email_channel_request() :: %{}

  """
  @type delete_email_channel_request() :: %{}

  @typedoc """

  ## Example:

      get_sms_template_request() :: %{
        optional("Version") => String.t()
      }

  """
  @type get_sms_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_voice_template_request() :: %{
        optional("Version") => String.t()
      }

  """
  @type delete_voice_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      contact_center_activity() :: %{
        optional("NextActivity") => String.t()
      }

  """
  @type contact_center_activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_push_template_request() :: %{
        optional("Version") => String.t()
      }

  """
  @type delete_push_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      baidu_channel_request() :: %{
        "ApiKey" => String.t(),
        "Enabled" => boolean(),
        "SecretKey" => String.t()
      }

  """
  @type baidu_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      import_job_resource() :: %{
        "DefineSegment" => boolean(),
        "ExternalId" => String.t(),
        "Format" => list(any()),
        "RegisterEndpoints" => boolean(),
        "RoleArn" => String.t(),
        "S3Url" => String.t(),
        "SegmentId" => String.t(),
        "SegmentName" => String.t()
      }

  """
  @type import_job_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      segment_condition() :: %{
        "SegmentId" => String.t()
      }

  """
  @type segment_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_gcm_channel_response() :: %{
        "GCMChannelResponse" => g_cm_channel_response()
      }

  """
  @type update_gcm_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_email_template_request() :: %{
        required("EmailTemplateRequest") => email_template_request()
      }

  """
  @type create_email_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      import_job_response() :: %{
        "ApplicationId" => String.t(),
        "CompletedPieces" => integer(),
        "CompletionDate" => String.t(),
        "CreationDate" => String.t(),
        "Definition" => import_job_resource(),
        "FailedPieces" => integer(),
        "Failures" => list(String.t()()),
        "Id" => String.t(),
        "JobStatus" => list(any()),
        "TotalFailures" => integer(),
        "TotalPieces" => integer(),
        "TotalProcessed" => integer(),
        "Type" => String.t()
      }

  """
  @type import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_segment_request() :: %{
        required("WriteSegmentRequest") => write_segment_request()
      }

  """
  @type update_segment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_template_active_version_response() :: %{
        "MessageBody" => message_body()
      }

  """
  @type update_template_active_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      address_configuration() :: %{
        "BodyOverride" => String.t(),
        "ChannelType" => list(any()),
        "Context" => map(),
        "RawContent" => String.t(),
        "Substitutions" => map(),
        "TitleOverride" => String.t()
      }

  """
  @type address_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      email_channel_response() :: %{
        "ApplicationId" => String.t(),
        "ConfigurationSet" => String.t(),
        "CreationDate" => String.t(),
        "Enabled" => boolean(),
        "FromAddress" => String.t(),
        "HasCredential" => boolean(),
        "Id" => String.t(),
        "Identity" => String.t(),
        "IsArchived" => boolean(),
        "LastModifiedBy" => String.t(),
        "LastModifiedDate" => String.t(),
        "MessagesPerSecond" => integer(),
        "OrchestrationSendingRoleArn" => String.t(),
        "Platform" => String.t(),
        "RoleArn" => String.t(),
        "Version" => integer()
      }

  """
  @type email_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      result_row() :: %{
        "GroupedBys" => list(result_row_value()()),
        "Values" => list(result_row_value()())
      }

  """
  @type result_row() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_delivery_configuration() :: %{
        "DeliveryUri" => String.t(),
        "EndpointTypes" => list(list(any())())
      }

  """
  @type custom_delivery_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_baidu_channel_response() :: %{
        "BaiduChannelResponse" => baidu_channel_response()
      }

  """
  @type update_baidu_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      phone_number_validate_request() :: %{
        required("NumberValidateRequest") => number_validate_request()
      }

  """
  @type phone_number_validate_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_segment_response() :: %{
        "SegmentResponse" => segment_response()
      }

  """
  @type create_segment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      g_cm_channel_response() :: %{
        "ApplicationId" => String.t(),
        "CreationDate" => String.t(),
        "Credential" => String.t(),
        "DefaultAuthenticationMethod" => String.t(),
        "Enabled" => boolean(),
        "HasCredential" => boolean(),
        "HasFcmServiceCredentials" => boolean(),
        "Id" => String.t(),
        "IsArchived" => boolean(),
        "LastModifiedBy" => String.t(),
        "LastModifiedDate" => String.t(),
        "Platform" => String.t(),
        "Version" => integer()
      }

  """
  @type g_cm_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_application_settings_response() :: %{
        "ApplicationSettingsResource" => application_settings_resource()
      }

  """
  @type get_application_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_journey_state_response() :: %{
        "JourneyResponse" => journey_response()
      }

  """
  @type update_journey_state_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_app_request() :: %{}

  """
  @type get_app_request() :: %{}

  @typedoc """

  ## Example:

      default_push_notification_template() :: %{
        "Action" => list(any()),
        "Body" => String.t(),
        "Sound" => String.t(),
        "Title" => String.t(),
        "Url" => String.t()
      }

  """
  @type default_push_notification_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_messages_request() :: %{
        required("MessageRequest") => message_request()
      }

  """
  @type send_messages_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      closed_days_rule() :: %{
        "EndDateTime" => String.t(),
        "Name" => String.t(),
        "StartDateTime" => String.t()
      }

  """
  @type closed_days_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_recommender_configuration_response() :: %{
        "RecommenderConfigurationResponse" => recommender_configuration_response()
      }

  """
  @type get_recommender_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_journey_request() :: %{
        required("WriteJourneyRequest") => write_journey_request()
      }

  """
  @type update_journey_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_application_date_range_kpi_response() :: %{
        "ApplicationDateRangeKpiResponse" => application_date_range_kpi_response()
      }

  """
  @type get_application_date_range_kpi_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      campaign_sms_message() :: %{
        "Body" => String.t(),
        "EntityId" => String.t(),
        "MessageType" => list(any()),
        "OriginationNumber" => String.t(),
        "SenderId" => String.t(),
        "TemplateId" => String.t()
      }

  """
  @type campaign_sms_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      a_p_n_s_channel_response() :: %{
        "ApplicationId" => String.t(),
        "CreationDate" => String.t(),
        "DefaultAuthenticationMethod" => String.t(),
        "Enabled" => boolean(),
        "HasCredential" => boolean(),
        "HasTokenKey" => boolean(),
        "Id" => String.t(),
        "IsArchived" => boolean(),
        "LastModifiedBy" => String.t(),
        "LastModifiedDate" => String.t(),
        "Platform" => String.t(),
        "Version" => integer()
      }

  """
  @type a_p_n_s_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_push_template_request() :: %{
        required("PushNotificationTemplateRequest") => push_notification_template_request()
      }

  """
  @type create_push_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      a_p_n_s_voip_sandbox_channel_response() :: %{
        "ApplicationId" => String.t(),
        "CreationDate" => String.t(),
        "DefaultAuthenticationMethod" => String.t(),
        "Enabled" => boolean(),
        "HasCredential" => boolean(),
        "HasTokenKey" => boolean(),
        "Id" => String.t(),
        "IsArchived" => boolean(),
        "LastModifiedBy" => String.t(),
        "LastModifiedDate" => String.t(),
        "Platform" => String.t(),
        "Version" => integer()
      }

  """
  @type a_p_n_s_voip_sandbox_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_o_t_p_message_request() :: %{
        required("SendOTPMessageRequestParameters") => send_o_t_p_message_request_parameters()
      }

  """
  @type send_o_t_p_message_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      journey_execution_metrics_response() :: %{
        "ApplicationId" => String.t(),
        "JourneyId" => String.t(),
        "LastEvaluatedTime" => String.t(),
        "Metrics" => map()
      }

  """
  @type journey_execution_metrics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_attributes_request() :: %{
        "Blacklist" => list(String.t()())
      }

  """
  @type update_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_channel_request() :: %{}

  """
  @type get_voice_channel_request() :: %{}

  @typedoc """

  ## Example:

      update_recommender_configuration_shape() :: %{
        "Attributes" => map(),
        "Description" => String.t(),
        "Name" => String.t(),
        "RecommendationProviderIdType" => String.t(),
        "RecommendationProviderRoleArn" => String.t(),
        "RecommendationProviderUri" => String.t(),
        "RecommendationTransformerUri" => String.t(),
        "RecommendationsDisplayName" => String.t(),
        "RecommendationsPerMessage" => integer()
      }

  """
  @type update_recommender_configuration_shape() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      application_settings_journey_limits() :: %{
        "DailyCap" => integer(),
        "TimeframeCap" => journey_timeframe_cap(),
        "TotalCap" => integer()
      }

  """
  @type application_settings_journey_limits() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_voice_template_response() :: %{
        "MessageBody" => message_body()
      }

  """
  @type delete_voice_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      baidu_channel_response() :: %{
        "ApplicationId" => String.t(),
        "CreationDate" => String.t(),
        "Credential" => String.t(),
        "Enabled" => boolean(),
        "HasCredential" => boolean(),
        "Id" => String.t(),
        "IsArchived" => boolean(),
        "LastModifiedBy" => String.t(),
        "LastModifiedDate" => String.t(),
        "Platform" => String.t(),
        "Version" => integer()
      }

  """
  @type baidu_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_gcm_channel_request() :: %{}

  """
  @type delete_gcm_channel_request() :: %{}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t(),
        "RequestID" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      write_segment_request() :: %{
        "Dimensions" => segment_dimensions(),
        "Name" => String.t(),
        "SegmentGroups" => segment_group_list(),
        "tags" => map()
      }

  """
  @type write_segment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_apns_voip_sandbox_channel_request() :: %{}

  """
  @type delete_apns_voip_sandbox_channel_request() :: %{}

  @typedoc """

  ## Example:

      get_export_job_request() :: %{}

  """
  @type get_export_job_request() :: %{}

  @typedoc """

  ## Example:

      get_in_app_template_response() :: %{
        "InAppTemplateResponse" => in_app_template_response()
      }

  """
  @type get_in_app_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      message_header() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }

  """
  @type message_header() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_campaign_response() :: %{
        "CampaignResponse" => campaign_response()
      }

  """
  @type delete_campaign_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      import_job_request() :: %{
        "DefineSegment" => boolean(),
        "ExternalId" => String.t(),
        "Format" => list(any()),
        "RegisterEndpoints" => boolean(),
        "RoleArn" => String.t(),
        "S3Url" => String.t(),
        "SegmentId" => String.t(),
        "SegmentName" => String.t()
      }

  """
  @type import_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_endpoint_response() :: %{
        "EndpointResponse" => endpoint_response()
      }

  """
  @type get_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      activity() :: %{
        "CUSTOM" => custom_message_activity(),
        "ConditionalSplit" => conditional_split_activity(),
        "ContactCenter" => contact_center_activity(),
        "Description" => String.t(),
        "EMAIL" => email_message_activity(),
        "Holdout" => holdout_activity(),
        "MultiCondition" => multi_conditional_split_activity(),
        "PUSH" => push_message_activity(),
        "RandomSplit" => random_split_activity(),
        "SMS" => sms_message_activity(),
        "Wait" => wait_activity()
      }

  """
  @type activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      journey_run_execution_metrics_response() :: %{
        "ApplicationId" => String.t(),
        "JourneyId" => String.t(),
        "LastEvaluatedTime" => String.t(),
        "Metrics" => map(),
        "RunId" => String.t()
      }

  """
  @type journey_run_execution_metrics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      voice_channel_request() :: %{
        "Enabled" => boolean()
      }

  """
  @type voice_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      a_p_n_s_push_notification_template() :: %{
        "Action" => list(any()),
        "Body" => String.t(),
        "MediaUrl" => String.t(),
        "RawContent" => String.t(),
        "Sound" => String.t(),
        "Title" => String.t(),
        "Url" => String.t()
      }

  """
  @type a_p_n_s_push_notification_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_apns_channel_request() :: %{}

  """
  @type get_apns_channel_request() :: %{}

  @typedoc """

  ## Example:

      get_apps_response() :: %{
        "ApplicationsResponse" => applications_response()
      }

  """
  @type get_apps_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_o_t_p_message_response() :: %{
        "MessageResponse" => message_response()
      }

  """
  @type send_o_t_p_message_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_apns_voip_sandbox_channel_response() :: %{
        "APNSVoipSandboxChannelResponse" => a_p_n_s_voip_sandbox_channel_response()
      }

  """
  @type delete_apns_voip_sandbox_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_export_job_response() :: %{
        "ExportJobResponse" => export_job_response()
      }

  """
  @type get_export_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      payload_too_large_exception() :: %{
        "Message" => String.t(),
        "RequestID" => String.t()
      }

  """
  @type payload_too_large_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_endpoint_response() :: %{
        "EndpointResponse" => endpoint_response()
      }

  """
  @type delete_endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_apns_voip_channel_request() :: %{}

  """
  @type delete_apns_voip_channel_request() :: %{}

  @typedoc """

  ## Example:

      update_voice_template_request() :: %{
        optional("CreateNewVersion") => boolean(),
        optional("Version") => String.t(),
        required("VoiceTemplateRequest") => voice_template_request()
      }

  """
  @type update_voice_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      endpoint_message_result() :: %{
        "Address" => String.t(),
        "DeliveryStatus" => list(any()),
        "MessageId" => String.t(),
        "StatusCode" => integer(),
        "StatusMessage" => String.t(),
        "UpdatedToken" => String.t()
      }

  """
  @type endpoint_message_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      write_event_stream() :: %{
        "DestinationStreamArn" => String.t(),
        "RoleArn" => String.t()
      }

  """
  @type write_event_stream() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_events_request() :: %{
        required("EventsRequest") => events_request()
      }

  """
  @type put_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      segment_dimensions() :: %{
        "Attributes" => map(),
        "Behavior" => segment_behaviors(),
        "Demographic" => segment_demographics(),
        "Location" => segment_location(),
        "Metrics" => map(),
        "UserAttributes" => map()
      }

  """
  @type segment_dimensions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_apns_voip_sandbox_channel_request() :: %{}

  """
  @type get_apns_voip_sandbox_channel_request() :: %{}

  @typedoc """

  ## Example:

      voice_channel_response() :: %{
        "ApplicationId" => String.t(),
        "CreationDate" => String.t(),
        "Enabled" => boolean(),
        "HasCredential" => boolean(),
        "Id" => String.t(),
        "IsArchived" => boolean(),
        "LastModifiedBy" => String.t(),
        "LastModifiedDate" => String.t(),
        "Platform" => String.t(),
        "Version" => integer()
      }

  """
  @type voice_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_segment_export_jobs_response() :: %{
        "ExportJobsResponse" => export_jobs_response()
      }

  """
  @type get_segment_export_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      a_p_n_s_message() :: %{
        "APNSPushType" => String.t(),
        "Action" => list(any()),
        "Badge" => integer(),
        "Body" => String.t(),
        "Category" => String.t(),
        "CollapseId" => String.t(),
        "Data" => map(),
        "MediaUrl" => String.t(),
        "PreferredAuthenticationMethod" => String.t(),
        "Priority" => String.t(),
        "RawContent" => String.t(),
        "SilentPush" => boolean(),
        "Sound" => String.t(),
        "Substitutions" => map(),
        "ThreadId" => String.t(),
        "TimeToLive" => integer(),
        "Title" => String.t(),
        "Url" => String.t()
      }

  """
  @type a_p_n_s_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      template_active_version_request() :: %{
        "Version" => String.t()
      }

  """
  @type template_active_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_import_job_request() :: %{}

  """
  @type get_import_job_request() :: %{}

  @typedoc """

  ## Example:

      in_app_message_content() :: %{
        "BackgroundColor" => String.t(),
        "BodyConfig" => in_app_message_body_config(),
        "HeaderConfig" => in_app_message_header_config(),
        "ImageUrl" => String.t(),
        "PrimaryBtn" => in_app_message_button(),
        "SecondaryBtn" => in_app_message_button()
      }

  """
  @type in_app_message_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_template_versions_request() :: %{
        optional("NextToken") => String.t(),
        optional("PageSize") => String.t()
      }

  """
  @type list_template_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      message_response() :: %{
        "ApplicationId" => String.t(),
        "EndpointResult" => map(),
        "RequestId" => String.t(),
        "Result" => map()
      }

  """
  @type message_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_journey_response() :: %{
        "JourneyResponse" => journey_response()
      }

  """
  @type get_journey_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_apns_voip_channel_request() :: %{}

  """
  @type get_apns_voip_channel_request() :: %{}

  @typedoc """

  ## Example:

      journey_schedule() :: %{
        "EndTime" => non_neg_integer(),
        "StartTime" => non_neg_integer(),
        "Timezone" => String.t()
      }

  """
  @type journey_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_email_template_response() :: %{
        "MessageBody" => message_body()
      }

  """
  @type delete_email_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_job_response() :: %{
        "ApplicationId" => String.t(),
        "CompletedPieces" => integer(),
        "CompletionDate" => String.t(),
        "CreationDate" => String.t(),
        "Definition" => export_job_resource(),
        "FailedPieces" => integer(),
        "Failures" => list(String.t()()),
        "Id" => String.t(),
        "JobStatus" => list(any()),
        "TotalFailures" => integer(),
        "TotalPieces" => integer(),
        "TotalProcessed" => integer(),
        "Type" => String.t()
      }

  """
  @type export_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      applications_response() :: %{
        "Item" => list(application_response()()),
        "NextToken" => String.t()
      }

  """
  @type applications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sms_channel_response() :: %{
        "ApplicationId" => String.t(),
        "CreationDate" => String.t(),
        "Enabled" => boolean(),
        "HasCredential" => boolean(),
        "Id" => String.t(),
        "IsArchived" => boolean(),
        "LastModifiedBy" => String.t(),
        "LastModifiedDate" => String.t(),
        "Platform" => String.t(),
        "PromotionalMessagesPerSecond" => integer(),
        "SenderId" => String.t(),
        "ShortCode" => String.t(),
        "TransactionalMessagesPerSecond" => integer(),
        "Version" => integer()
      }

  """
  @type sms_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "Message" => String.t(),
        "RequestID" => String.t()
      }

  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_journey_response() :: %{
        "JourneyResponse" => journey_response()
      }

  """
  @type update_journey_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      in_app_message_body_config() :: %{
        "Alignment" => list(any()),
        "Body" => String.t(),
        "TextColor" => String.t()
      }

  """
  @type in_app_message_body_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_push_template_request() :: %{
        optional("CreateNewVersion") => boolean(),
        optional("Version") => String.t(),
        required("PushNotificationTemplateRequest") => push_notification_template_request()
      }

  """
  @type update_push_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_user_endpoints_request() :: %{}

  """
  @type get_user_endpoints_request() :: %{}

  @typedoc """

  ## Example:

      get_campaign_version_response() :: %{
        "CampaignResponse" => campaign_response()
      }

  """
  @type get_campaign_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_campaign_activities_request() :: %{
        optional("PageSize") => String.t(),
        optional("Token") => String.t()
      }

  """
  @type get_campaign_activities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_import_jobs_request() :: %{
        optional("PageSize") => String.t(),
        optional("Token") => String.t()
      }

  """
  @type get_import_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_template_versions_response() :: %{
        "TemplateVersionsResponse" => template_versions_response()
      }

  """
  @type list_template_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      journey_push_message() :: %{
        "TimeToLive" => String.t()
      }

  """
  @type journey_push_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_segments_response() :: %{
        "SegmentsResponse" => segments_response()
      }

  """
  @type get_segments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_event_stream_response() :: %{
        "EventStream" => event_stream()
      }

  """
  @type get_event_stream_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_event_stream_response() :: %{
        "EventStream" => event_stream()
      }

  """
  @type put_event_stream_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_campaign_date_range_kpi_request() :: %{
        optional("EndTime") => non_neg_integer(),
        optional("NextToken") => String.t(),
        optional("PageSize") => String.t(),
        optional("StartTime") => non_neg_integer()
      }

  """
  @type get_campaign_date_range_kpi_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_apns_voip_channel_response() :: %{
        "APNSVoipChannelResponse" => a_p_n_s_voip_channel_response()
      }

  """
  @type delete_apns_voip_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_segment_import_jobs_response() :: %{
        "ImportJobsResponse" => import_jobs_response()
      }

  """
  @type get_segment_import_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_endpoints_batch_request() :: %{
        required("EndpointBatchRequest") => endpoint_batch_request()
      }

  """
  @type update_endpoints_batch_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      template_versions_response() :: %{
        "Item" => list(template_version_response()()),
        "Message" => String.t(),
        "NextToken" => String.t(),
        "RequestID" => String.t()
      }

  """
  @type template_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_baidu_channel_request() :: %{}

  """
  @type delete_baidu_channel_request() :: %{}

  @typedoc """

  ## Example:

      get_sms_channel_response() :: %{
        "SMSChannelResponse" => sms_channel_response()
      }

  """
  @type get_sms_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_voice_channel_response() :: %{
        "VoiceChannelResponse" => voice_channel_response()
      }

  """
  @type delete_voice_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "TagsModel" => tags_model()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_email_channel_response() :: %{
        "EmailChannelResponse" => email_channel_response()
      }

  """
  @type delete_email_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_application_request() :: %{
        "Name" => String.t(),
        "tags" => map()
      }

  """
  @type create_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_adm_channel_response() :: %{
        "ADMChannelResponse" => ad_m_channel_response()
      }

  """
  @type update_adm_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_user_endpoints_response() :: %{
        "EndpointsResponse" => endpoints_response()
      }

  """
  @type get_user_endpoints_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_journey_run_execution_metrics_response() :: %{
        "JourneyRunExecutionMetricsResponse" => journey_run_execution_metrics_response()
      }

  """
  @type get_journey_run_execution_metrics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      in_app_message() :: %{
        "Content" => list(in_app_message_content()()),
        "CustomConfig" => map(),
        "Layout" => list(any())
      }

  """
  @type in_app_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      segment_location() :: %{
        "Country" => set_dimension(),
        "GPSPoint" => g_p_s_point_dimension()
      }

  """
  @type segment_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remove_attributes_request() :: %{
        required("UpdateAttributesRequest") => update_attributes_request()
      }

  """
  @type remove_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_campaign_date_range_kpi_response() :: %{
        "CampaignDateRangeKpiResponse" => campaign_date_range_kpi_response()
      }

  """
  @type get_campaign_date_range_kpi_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_endpoints_batch_response() :: %{
        "MessageBody" => message_body()
      }

  """
  @type update_endpoints_batch_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_journey_execution_metrics_response() :: %{
        "JourneyExecutionMetricsResponse" => journey_execution_metrics_response()
      }

  """
  @type get_journey_execution_metrics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_adm_channel_response() :: %{
        "ADMChannelResponse" => ad_m_channel_response()
      }

  """
  @type get_adm_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      simple_email_part() :: %{
        "Charset" => String.t(),
        "Data" => String.t()
      }

  """
  @type simple_email_part() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      import_jobs_response() :: %{
        "Item" => list(import_job_response()()),
        "NextToken" => String.t()
      }

  """
  @type import_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      condition() :: %{
        "Conditions" => list(simple_condition()()),
        "Operator" => list(any())
      }

  """
  @type condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      journey_run_response() :: %{
        "CreationTime" => String.t(),
        "LastUpdateTime" => String.t(),
        "RunId" => String.t(),
        "Status" => list(any())
      }

  """
  @type journey_run_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_journey_runs_response() :: %{
        "JourneyRunsResponse" => journey_runs_response()
      }

  """
  @type get_journey_runs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      campaign_in_app_message() :: %{
        "Body" => String.t(),
        "Content" => list(in_app_message_content()()),
        "CustomConfig" => map(),
        "Layout" => list(any())
      }

  """
  @type campaign_in_app_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_segment_response() :: %{
        "SegmentResponse" => segment_response()
      }

  """
  @type get_segment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      session() :: %{
        "Duration" => integer(),
        "Id" => String.t(),
        "StartTimestamp" => String.t(),
        "StopTimestamp" => String.t()
      }

  """
  @type session() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      event_filter() :: %{
        "Dimensions" => event_dimensions(),
        "FilterType" => list(any())
      }

  """
  @type event_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_segment_request() :: %{
        required("WriteSegmentRequest") => write_segment_request()
      }

  """
  @type create_segment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      endpoint_location() :: %{
        "City" => String.t(),
        "Country" => String.t(),
        "Latitude" => float(),
        "Longitude" => float(),
        "PostalCode" => String.t(),
        "Region" => String.t()
      }

  """
  @type endpoint_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      journey_execution_activity_metrics_response() :: %{
        "ActivityType" => String.t(),
        "ApplicationId" => String.t(),
        "JourneyActivityId" => String.t(),
        "JourneyId" => String.t(),
        "LastEvaluatedTime" => String.t(),
        "Metrics" => map()
      }

  """
  @type journey_execution_activity_metrics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      direct_message_configuration() :: %{
        "ADMMessage" => ad_m_message(),
        "APNSMessage" => a_p_n_s_message(),
        "BaiduMessage" => baidu_message(),
        "DefaultMessage" => default_message(),
        "DefaultPushNotificationMessage" => default_push_notification_message(),
        "EmailMessage" => email_message(),
        "GCMMessage" => g_cm_message(),
        "SMSMessage" => sms_message(),
        "VoiceMessage" => voice_message()
      }

  """
  @type direct_message_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_recommender_configurations_response() :: %{
        "Item" => list(recommender_configuration_response()()),
        "NextToken" => String.t()
      }

  """
  @type list_recommender_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metric_dimension() :: %{
        "ComparisonOperator" => String.t(),
        "Value" => float()
      }

  """
  @type metric_dimension() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_apns_channel_response() :: %{
        "APNSChannelResponse" => a_p_n_s_channel_response()
      }

  """
  @type get_apns_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      journey_timeframe_cap() :: %{
        "Cap" => integer(),
        "Days" => integer()
      }

  """
  @type journey_timeframe_cap() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      event_dimensions() :: %{
        "Attributes" => map(),
        "EventType" => set_dimension(),
        "Metrics" => map()
      }

  """
  @type event_dimensions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      g_cm_channel_request() :: %{
        "ApiKey" => String.t(),
        "DefaultAuthenticationMethod" => String.t(),
        "Enabled" => boolean(),
        "ServiceJson" => String.t()
      }

  """
  @type g_cm_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      voice_template_request() :: %{
        "Body" => String.t(),
        "DefaultSubstitutions" => String.t(),
        "LanguageCode" => String.t(),
        "TemplateDescription" => String.t(),
        "VoiceId" => String.t(),
        "tags" => map()
      }

  """
  @type voice_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      email_message() :: %{
        "Body" => String.t(),
        "FeedbackForwardingAddress" => String.t(),
        "FromAddress" => String.t(),
        "RawEmail" => raw_email(),
        "ReplyToAddresses" => list(String.t()()),
        "SimpleEmail" => simple_email(),
        "Substitutions" => map()
      }

  """
  @type email_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_segment_response() :: %{
        "SegmentResponse" => segment_response()
      }

  """
  @type delete_segment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_sms_template_response() :: %{
        "CreateTemplateMessageBody" => create_template_message_body()
      }

  """
  @type create_sms_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_export_job_request() :: %{
        required("ExportJobRequest") => export_job_request()
      }

  """
  @type create_export_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      segment_import_resource() :: %{
        "ChannelCounts" => map(),
        "ExternalId" => String.t(),
        "Format" => list(any()),
        "RoleArn" => String.t(),
        "S3Url" => String.t(),
        "Size" => integer()
      }

  """
  @type segment_import_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_adm_channel_request() :: %{}

  """
  @type delete_adm_channel_request() :: %{}

  @typedoc """

  ## Example:

      delete_recommender_configuration_request() :: %{}

  """
  @type delete_recommender_configuration_request() :: %{}

  @typedoc """

  ## Example:

      update_apns_voip_sandbox_channel_response() :: %{
        "APNSVoipSandboxChannelResponse" => a_p_n_s_voip_sandbox_channel_response()
      }

  """
  @type update_apns_voip_sandbox_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      journey_email_message() :: %{
        "FromAddress" => String.t()
      }

  """
  @type journey_email_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_apns_channel_response() :: %{
        "APNSChannelResponse" => a_p_n_s_channel_response()
      }

  """
  @type delete_apns_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      a_p_n_s_sandbox_channel_request() :: %{
        "BundleId" => String.t(),
        "Certificate" => String.t(),
        "DefaultAuthenticationMethod" => String.t(),
        "Enabled" => boolean(),
        "PrivateKey" => String.t(),
        "TeamId" => String.t(),
        "TokenKey" => String.t(),
        "TokenKeyId" => String.t()
      }

  """
  @type a_p_n_s_sandbox_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      segment_group() :: %{
        "Dimensions" => list(segment_dimensions()()),
        "SourceSegments" => list(segment_reference()()),
        "SourceType" => list(any()),
        "Type" => list(any())
      }

  """
  @type segment_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      journey_sms_message() :: %{
        "EntityId" => String.t(),
        "MessageType" => list(any()),
        "OriginationNumber" => String.t(),
        "SenderId" => String.t(),
        "TemplateId" => String.t()
      }

  """
  @type journey_sms_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      g_p_s_coordinates() :: %{
        "Latitude" => float(),
        "Longitude" => float()
      }

  """
  @type g_p_s_coordinates() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_app_response() :: %{
        "ApplicationResponse" => application_response()
      }

  """
  @type get_app_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      email_message_activity() :: %{
        "MessageConfig" => journey_email_message(),
        "NextActivity" => String.t(),
        "TemplateName" => String.t(),
        "TemplateVersion" => String.t()
      }

  """
  @type email_message_activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_event_stream_request() :: %{}

  """
  @type get_event_stream_request() :: %{}

  @typedoc """

  ## Example:

      get_recommender_configurations_response() :: %{
        "ListRecommenderConfigurationsResponse" => list_recommender_configurations_response()
      }

  """
  @type get_recommender_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schedule() :: %{
        "EndTime" => String.t(),
        "EventFilter" => campaign_event_filter(),
        "Frequency" => list(any()),
        "IsLocalTime" => boolean(),
        "QuietTime" => quiet_time(),
        "StartTime" => String.t(),
        "Timezone" => String.t()
      }

  """
  @type schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_push_template_response() :: %{
        "MessageBody" => message_body()
      }

  """
  @type delete_push_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      a_p_n_s_voip_channel_response() :: %{
        "ApplicationId" => String.t(),
        "CreationDate" => String.t(),
        "DefaultAuthenticationMethod" => String.t(),
        "Enabled" => boolean(),
        "HasCredential" => boolean(),
        "HasTokenKey" => boolean(),
        "Id" => String.t(),
        "IsArchived" => boolean(),
        "LastModifiedBy" => String.t(),
        "LastModifiedDate" => String.t(),
        "Platform" => String.t(),
        "Version" => integer()
      }

  """
  @type a_p_n_s_voip_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_user_endpoints_request() :: %{}

  """
  @type delete_user_endpoints_request() :: %{}

  @typedoc """

  ## Example:

      list_journeys_request() :: %{
        optional("PageSize") => String.t(),
        optional("Token") => String.t()
      }

  """
  @type list_journeys_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      email_template_response() :: %{
        "Arn" => String.t(),
        "CreationDate" => String.t(),
        "DefaultSubstitutions" => String.t(),
        "Headers" => list(message_header()()),
        "HtmlPart" => String.t(),
        "LastModifiedDate" => String.t(),
        "RecommenderId" => String.t(),
        "Subject" => String.t(),
        "TemplateDescription" => String.t(),
        "TemplateName" => String.t(),
        "TemplateType" => list(any()),
        "TextPart" => String.t(),
        "Version" => String.t(),
        "tags" => map()
      }

  """
  @type email_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_sms_template_request() :: %{
        optional("CreateNewVersion") => boolean(),
        optional("Version") => String.t(),
        required("SMSTemplateRequest") => sms_template_request()
      }

  """
  @type update_sms_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_journey_execution_activity_metrics_request() :: %{
        optional("NextToken") => String.t(),
        optional("PageSize") => String.t()
      }

  """
  @type get_journey_execution_activity_metrics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      event() :: %{
        "AppPackageName" => String.t(),
        "AppTitle" => String.t(),
        "AppVersionCode" => String.t(),
        "Attributes" => map(),
        "ClientSdkVersion" => String.t(),
        "EventType" => String.t(),
        "Metrics" => map(),
        "SdkName" => String.t(),
        "Session" => session(),
        "Timestamp" => String.t()
      }

  """
  @type event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      a_p_n_s_sandbox_channel_response() :: %{
        "ApplicationId" => String.t(),
        "CreationDate" => String.t(),
        "DefaultAuthenticationMethod" => String.t(),
        "Enabled" => boolean(),
        "HasCredential" => boolean(),
        "HasTokenKey" => boolean(),
        "Id" => String.t(),
        "IsArchived" => boolean(),
        "LastModifiedBy" => String.t(),
        "LastModifiedDate" => String.t(),
        "Platform" => String.t(),
        "Version" => integer()
      }

  """
  @type a_p_n_s_sandbox_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      activities_response() :: %{
        "Item" => list(activity_response()()),
        "NextToken" => String.t()
      }

  """
  @type activities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_app_request() :: %{}

  """
  @type delete_app_request() :: %{}

  @typedoc """

  ## Example:

      send_messages_response() :: %{
        "MessageResponse" => message_response()
      }

  """
  @type send_messages_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      in_app_messages_response() :: %{
        "InAppMessageCampaigns" => list(in_app_message_campaign()())
      }

  """
  @type in_app_messages_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_endpoint_request() :: %{}

  """
  @type delete_endpoint_request() :: %{}

  @typedoc """

  ## Example:

      get_voice_template_response() :: %{
        "VoiceTemplateResponse" => voice_template_response()
      }

  """
  @type get_voice_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_template_message_body() :: %{
        "Arn" => String.t(),
        "Message" => String.t(),
        "RequestID" => String.t()
      }

  """
  @type create_template_message_body() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      voice_template_response() :: %{
        "Arn" => String.t(),
        "Body" => String.t(),
        "CreationDate" => String.t(),
        "DefaultSubstitutions" => String.t(),
        "LanguageCode" => String.t(),
        "LastModifiedDate" => String.t(),
        "TemplateDescription" => String.t(),
        "TemplateName" => String.t(),
        "TemplateType" => list(any()),
        "Version" => String.t(),
        "VoiceId" => String.t(),
        "tags" => map()
      }

  """
  @type voice_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_adm_channel_request() :: %{}

  """
  @type get_adm_channel_request() :: %{}

  @typedoc """

  ## Example:

      update_apns_sandbox_channel_response() :: %{
        "APNSSandboxChannelResponse" => a_p_n_s_sandbox_channel_response()
      }

  """
  @type update_apns_sandbox_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_import_job_response() :: %{
        "ImportJobResponse" => import_job_response()
      }

  """
  @type get_import_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_journey_run_execution_activity_metrics_response() :: %{
        "JourneyRunExecutionActivityMetricsResponse" => journey_run_execution_activity_metrics_response()
      }

  """
  @type get_journey_run_execution_activity_metrics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_users_messages_request() :: %{
        required("SendUsersMessageRequest") => send_users_message_request()
      }

  """
  @type send_users_messages_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_job_request() :: %{
        "RoleArn" => String.t(),
        "S3UrlPrefix" => String.t(),
        "SegmentId" => String.t(),
        "SegmentVersion" => integer()
      }

  """
  @type export_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      write_campaign_request() :: %{
        "AdditionalTreatments" => list(write_treatment_resource()()),
        "CustomDeliveryConfiguration" => custom_delivery_configuration(),
        "Description" => String.t(),
        "HoldoutPercent" => integer(),
        "Hook" => campaign_hook(),
        "IsPaused" => boolean(),
        "Limits" => campaign_limits(),
        "MessageConfiguration" => message_configuration(),
        "Name" => String.t(),
        "Priority" => integer(),
        "Schedule" => schedule(),
        "SegmentId" => String.t(),
        "SegmentVersion" => integer(),
        "TemplateConfiguration" => template_configuration(),
        "TreatmentDescription" => String.t(),
        "TreatmentName" => String.t(),
        "tags" => map()
      }

  """
  @type write_campaign_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_baidu_channel_response() :: %{
        "BaiduChannelResponse" => baidu_channel_response()
      }

  """
  @type get_baidu_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      campaign_custom_message() :: %{
        "Data" => String.t()
      }

  """
  @type campaign_custom_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      email_channel_request() :: %{
        "ConfigurationSet" => String.t(),
        "Enabled" => boolean(),
        "FromAddress" => String.t(),
        "Identity" => String.t(),
        "OrchestrationSendingRoleArn" => String.t(),
        "RoleArn" => String.t()
      }

  """
  @type email_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_campaign_request() :: %{
        required("WriteCampaignRequest") => write_campaign_request()
      }

  """
  @type create_campaign_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      events_response() :: %{
        "Results" => map()
      }

  """
  @type events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      default_button_configuration() :: %{
        "BackgroundColor" => String.t(),
        "BorderRadius" => integer(),
        "ButtonAction" => list(any()),
        "Link" => String.t(),
        "Text" => String.t(),
        "TextColor" => String.t()
      }

  """
  @type default_button_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      journey_runs_response() :: %{
        "Item" => list(journey_run_response()()),
        "NextToken" => String.t()
      }

  """
  @type journey_runs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sms_template_response() :: %{
        "Arn" => String.t(),
        "Body" => String.t(),
        "CreationDate" => String.t(),
        "DefaultSubstitutions" => String.t(),
        "LastModifiedDate" => String.t(),
        "RecommenderId" => String.t(),
        "TemplateDescription" => String.t(),
        "TemplateName" => String.t(),
        "TemplateType" => list(any()),
        "Version" => String.t(),
        "tags" => map()
      }

  """
  @type sms_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      segments_response() :: %{
        "Item" => list(segment_response()()),
        "NextToken" => String.t()
      }

  """
  @type segments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      closed_days() :: %{
        "CUSTOM" => list(closed_days_rule()()),
        "EMAIL" => list(closed_days_rule()()),
        "PUSH" => list(closed_days_rule()()),
        "SMS" => list(closed_days_rule()()),
        "VOICE" => list(closed_days_rule()())
      }

  """
  @type closed_days() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_event_stream_response() :: %{
        "EventStream" => event_stream()
      }

  """
  @type delete_event_stream_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_sms_template_response() :: %{
        "MessageBody" => message_body()
      }

  """
  @type delete_sms_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_segment_versions_request() :: %{
        optional("PageSize") => String.t(),
        optional("Token") => String.t()
      }

  """
  @type get_segment_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channels_response() :: %{
        "Channels" => map()
      }

  """
  @type channels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_recommender_configurations_request() :: %{
        optional("PageSize") => String.t(),
        optional("Token") => String.t()
      }

  """
  @type get_recommender_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_journey_date_range_kpi_response() :: %{
        "JourneyDateRangeKpiResponse" => journey_date_range_kpi_response()
      }

  """
  @type get_journey_date_range_kpi_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_journey_request() :: %{
        required("WriteJourneyRequest") => write_journey_request()
      }

  """
  @type create_journey_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_sms_template_response() :: %{
        "SMSTemplateResponse" => sms_template_response()
      }

  """
  @type get_sms_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      segment_demographics() :: %{
        "AppVersion" => set_dimension(),
        "Channel" => set_dimension(),
        "DeviceType" => set_dimension(),
        "Make" => set_dimension(),
        "Model" => set_dimension(),
        "Platform" => set_dimension()
      }

  """
  @type segment_demographics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      application_response() :: %{
        "Arn" => String.t(),
        "CreationDate" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "tags" => map()
      }

  """
  @type application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_voice_channel_response() :: %{
        "VoiceChannelResponse" => voice_channel_response()
      }

  """
  @type update_voice_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_users_messages_response() :: %{
        "SendUsersMessageResponse" => send_users_message_response()
      }

  """
  @type send_users_messages_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_templates_response() :: %{
        "TemplatesResponse" => templates_response()
      }

  """
  @type list_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      default_message() :: %{
        "Body" => String.t(),
        "Substitutions" => map()
      }

  """
  @type default_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remove_attributes_response() :: %{
        "AttributesResource" => attributes_resource()
      }

  """
  @type remove_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_export_jobs_request() :: %{
        optional("PageSize") => String.t(),
        optional("Token") => String.t()
      }

  """
  @type get_export_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      campaign_email_message() :: %{
        "Body" => String.t(),
        "FromAddress" => String.t(),
        "Headers" => list(message_header()()),
        "HtmlBody" => String.t(),
        "Title" => String.t()
      }

  """
  @type campaign_email_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ad_m_channel_request() :: %{
        "ClientId" => String.t(),
        "ClientSecret" => String.t(),
        "Enabled" => boolean()
      }

  """
  @type ad_m_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_apns_voip_channel_request() :: %{
        required("APNSVoipChannelRequest") => a_p_n_s_voip_channel_request()
      }

  """
  @type update_apns_voip_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      create_sms_template_request() :: %{
        required("SMSTemplateRequest") => sms_template_request()
      }

  """
  @type create_sms_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sms_template_request() :: %{
        "Body" => String.t(),
        "DefaultSubstitutions" => String.t(),
        "RecommenderId" => String.t(),
        "TemplateDescription" => String.t(),
        "tags" => map()
      }

  """
  @type sms_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      segment_behaviors() :: %{
        "Recency" => recency_dimension()
      }

  """
  @type segment_behaviors() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      a_p_n_s_voip_sandbox_channel_request() :: %{
        "BundleId" => String.t(),
        "Certificate" => String.t(),
        "DefaultAuthenticationMethod" => String.t(),
        "Enabled" => boolean(),
        "PrivateKey" => String.t(),
        "TeamId" => String.t(),
        "TokenKey" => String.t(),
        "TokenKeyId" => String.t()
      }

  """
  @type a_p_n_s_voip_sandbox_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_voice_template_response() :: %{
        "CreateTemplateMessageBody" => create_template_message_body()
      }

  """
  @type create_voice_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      template_configuration() :: %{
        "EmailTemplate" => template(),
        "InAppTemplate" => template(),
        "PushTemplate" => template(),
        "SMSTemplate" => template(),
        "VoiceTemplate" => template()
      }

  """
  @type template_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_application_settings_request() :: %{}

  """
  @type get_application_settings_request() :: %{}

  @typedoc """

  ## Example:

      create_recommender_configuration_request() :: %{
        required("CreateRecommenderConfiguration") => create_recommender_configuration_shape()
      }

  """
  @type create_recommender_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      item_response() :: %{
        "EndpointItemResponse" => endpoint_item_response(),
        "EventsItemResponse" => map()
      }

  """
  @type item_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_error_exception() :: %{
        "Message" => String.t(),
        "RequestID" => String.t()
      }

  """
  @type internal_server_error_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      override_button_configuration() :: %{
        "ButtonAction" => list(any()),
        "Link" => String.t()
      }

  """
  @type override_button_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_condition() :: %{
        "Description" => String.t(),
        "EventStartCondition" => event_start_condition(),
        "SegmentStartCondition" => segment_condition()
      }

  """
  @type start_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      endpoint_demographic() :: %{
        "AppVersion" => String.t(),
        "Locale" => String.t(),
        "Make" => String.t(),
        "Model" => String.t(),
        "ModelVersion" => String.t(),
        "Platform" => String.t(),
        "PlatformVersion" => String.t(),
        "Timezone" => String.t()
      }

  """
  @type endpoint_demographic() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_segment_export_jobs_request() :: %{
        optional("PageSize") => String.t(),
        optional("Token") => String.t()
      }

  """
  @type get_segment_export_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      message_request() :: %{
        "Addresses" => map(),
        "Context" => map(),
        "Endpoints" => map(),
        "MessageConfiguration" => direct_message_configuration(),
        "TemplateConfiguration" => template_configuration(),
        "TraceId" => String.t()
      }

  """
  @type message_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      endpoint_request() :: %{
        "Address" => String.t(),
        "Attributes" => map(),
        "ChannelType" => list(any()),
        "Demographic" => endpoint_demographic(),
        "EffectiveDate" => String.t(),
        "EndpointStatus" => String.t(),
        "Location" => endpoint_location(),
        "Metrics" => map(),
        "OptOut" => String.t(),
        "RequestId" => String.t(),
        "User" => endpoint_user()
      }

  """
  @type endpoint_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_campaign_response() :: %{
        "CampaignResponse" => campaign_response()
      }

  """
  @type get_campaign_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attribute_dimension() :: %{
        "AttributeType" => list(any()),
        "Values" => list(String.t()())
      }

  """
  @type attribute_dimension() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      event_stream() :: %{
        "ApplicationId" => String.t(),
        "DestinationStreamArn" => String.t(),
        "ExternalId" => String.t(),
        "LastModifiedDate" => String.t(),
        "LastUpdatedBy" => String.t(),
        "RoleArn" => String.t()
      }

  """
  @type event_stream() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_apns_channel_request() :: %{}

  """
  @type delete_apns_channel_request() :: %{}

  @typedoc """

  ## Example:

      sms_channel_request() :: %{
        "Enabled" => boolean(),
        "SenderId" => String.t(),
        "ShortCode" => String.t()
      }

  """
  @type sms_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_campaign_versions_request() :: %{
        optional("PageSize") => String.t(),
        optional("Token") => String.t()
      }

  """
  @type get_campaign_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_recommender_configuration_response() :: %{
        "RecommenderConfigurationResponse" => recommender_configuration_response()
      }

  """
  @type update_recommender_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      set_dimension() :: %{
        "DimensionType" => list(any()),
        "Values" => list(String.t()())
      }

  """
  @type set_dimension() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_adm_channel_request() :: %{
        required("ADMChannelRequest") => ad_m_channel_request()
      }

  """
  @type update_adm_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      write_treatment_resource() :: %{
        "CustomDeliveryConfiguration" => custom_delivery_configuration(),
        "MessageConfiguration" => message_configuration(),
        "Schedule" => schedule(),
        "SizePercent" => integer(),
        "TemplateConfiguration" => template_configuration(),
        "TreatmentDescription" => String.t(),
        "TreatmentName" => String.t()
      }

  """
  @type write_treatment_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_segment_response() :: %{
        "SegmentResponse" => segment_response()
      }

  """
  @type update_segment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_journey_runs_request() :: %{
        optional("PageSize") => String.t(),
        optional("Token") => String.t()
      }

  """
  @type get_journey_runs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      simple_email() :: %{
        "Headers" => list(message_header()()),
        "HtmlPart" => simple_email_part(),
        "Subject" => simple_email_part(),
        "TextPart" => simple_email_part()
      }

  """
  @type simple_email() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_campaigns_request() :: %{
        optional("PageSize") => String.t(),
        optional("Token") => String.t()
      }

  """
  @type get_campaigns_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_voice_template_request() :: %{
        optional("Version") => String.t()
      }

  """
  @type get_voice_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_application_settings_request() :: %{
        required("WriteApplicationSettingsRequest") => write_application_settings_request()
      }

  """
  @type update_application_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_segment_import_jobs_request() :: %{
        optional("PageSize") => String.t(),
        optional("Token") => String.t()
      }

  """
  @type get_segment_import_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      endpoint_response() :: %{
        "Address" => String.t(),
        "ApplicationId" => String.t(),
        "Attributes" => map(),
        "ChannelType" => list(any()),
        "CohortId" => String.t(),
        "CreationDate" => String.t(),
        "Demographic" => endpoint_demographic(),
        "EffectiveDate" => String.t(),
        "EndpointStatus" => String.t(),
        "Id" => String.t(),
        "Location" => endpoint_location(),
        "Metrics" => map(),
        "OptOut" => String.t(),
        "RequestId" => String.t(),
        "User" => endpoint_user()
      }

  """
  @type endpoint_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      multi_conditional_split_activity() :: %{
        "Branches" => list(multi_conditional_branch()()),
        "DefaultActivity" => String.t(),
        "EvaluationWaitTime" => wait_time()
      }

  """
  @type multi_conditional_split_activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_voice_channel_request() :: %{}

  """
  @type delete_voice_channel_request() :: %{}

  @typedoc """

  ## Example:

      journey_limits() :: %{
        "DailyCap" => integer(),
        "EndpointReentryCap" => integer(),
        "EndpointReentryInterval" => String.t(),
        "MessagesPerSecond" => integer(),
        "TimeframeCap" => journey_timeframe_cap(),
        "TotalCap" => integer()
      }

  """
  @type journey_limits() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_segment_request() :: %{}

  """
  @type delete_segment_request() :: %{}

  @typedoc """

  ## Example:

      write_application_settings_request() :: %{
        "CampaignHook" => campaign_hook(),
        "CloudWatchMetricsEnabled" => boolean(),
        "EventTaggingEnabled" => boolean(),
        "JourneyLimits" => application_settings_journey_limits(),
        "Limits" => campaign_limits(),
        "QuietTime" => quiet_time()
      }

  """
  @type write_application_settings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_in_app_messages_response() :: %{
        "InAppMessagesResponse" => in_app_messages_response()
      }

  """
  @type get_in_app_messages_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      default_push_notification_message() :: %{
        "Action" => list(any()),
        "Body" => String.t(),
        "Data" => map(),
        "SilentPush" => boolean(),
        "Substitutions" => map(),
        "Title" => String.t(),
        "Url" => String.t()
      }

  """
  @type default_push_notification_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_segment_version_response() :: %{
        "SegmentResponse" => segment_response()
      }

  """
  @type get_segment_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Message" => String.t(),
        "RequestID" => String.t()
      }

  """
  @type bad_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tags_model() :: %{
        "tags" => map()
      }

  """
  @type tags_model() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      segment_response() :: %{
        "ApplicationId" => String.t(),
        "Arn" => String.t(),
        "CreationDate" => String.t(),
        "Dimensions" => segment_dimensions(),
        "Id" => String.t(),
        "ImportDefinition" => segment_import_resource(),
        "LastModifiedDate" => String.t(),
        "Name" => String.t(),
        "SegmentGroups" => segment_group_list(),
        "SegmentType" => list(any()),
        "Version" => integer(),
        "tags" => map()
      }

  """
  @type segment_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_email_template_response() :: %{
        "EmailTemplateResponse" => email_template_response()
      }

  """
  @type get_email_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_campaigns_response() :: %{
        "CampaignsResponse" => campaigns_response()
      }

  """
  @type get_campaigns_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      verify_o_t_p_message_response() :: %{
        "VerificationResponse" => verification_response()
      }

  """
  @type verify_o_t_p_message_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      in_app_message_campaign() :: %{
        "CampaignId" => String.t(),
        "DailyCap" => integer(),
        "InAppMessage" => in_app_message(),
        "Priority" => integer(),
        "Schedule" => in_app_campaign_schedule(),
        "SessionCap" => integer(),
        "TotalCap" => integer(),
        "TreatmentId" => String.t()
      }

  """
  @type in_app_message_campaign() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_recommender_configuration_shape() :: %{
        "Attributes" => map(),
        "Description" => String.t(),
        "Name" => String.t(),
        "RecommendationProviderIdType" => String.t(),
        "RecommendationProviderRoleArn" => String.t(),
        "RecommendationProviderUri" => String.t(),
        "RecommendationTransformerUri" => String.t(),
        "RecommendationsDisplayName" => String.t(),
        "RecommendationsPerMessage" => integer()
      }

  """
  @type create_recommender_configuration_shape() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_email_template_request() :: %{
        optional("Version") => String.t()
      }

  """
  @type get_email_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_campaign_request() :: %{
        required("WriteCampaignRequest") => write_campaign_request()
      }

  """
  @type update_campaign_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      journey_state_request() :: %{
        "State" => list(any())
      }

  """
  @type journey_state_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_email_template_response() :: %{
        "MessageBody" => message_body()
      }

  """
  @type update_email_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      android_push_notification_template() :: %{
        "Action" => list(any()),
        "Body" => String.t(),
        "ImageIconUrl" => String.t(),
        "ImageUrl" => String.t(),
        "RawContent" => String.t(),
        "SmallImageIconUrl" => String.t(),
        "Sound" => String.t(),
        "Title" => String.t(),
        "Url" => String.t()
      }

  """
  @type android_push_notification_template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_job_resource() :: %{
        "RoleArn" => String.t(),
        "S3UrlPrefix" => String.t(),
        "SegmentId" => String.t(),
        "SegmentVersion" => integer()
      }

  """
  @type export_job_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      template() :: %{
        "Name" => String.t(),
        "Version" => String.t()
      }

  """
  @type template() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_journey_response() :: %{
        "JourneyResponse" => journey_response()
      }

  """
  @type delete_journey_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      multi_conditional_branch() :: %{
        "Condition" => simple_condition(),
        "NextActivity" => String.t()
      }

  """
  @type multi_conditional_branch() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_event_stream_request() :: %{}

  """
  @type delete_event_stream_request() :: %{}

  @typedoc """

  ## Example:

      update_application_settings_response() :: %{
        "ApplicationSettingsResource" => application_settings_resource()
      }

  """
  @type update_application_settings_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_in_app_template_request() :: %{
        optional("Version") => String.t()
      }

  """
  @type get_in_app_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_adm_channel_response() :: %{
        "ADMChannelResponse" => ad_m_channel_response()
      }

  """
  @type delete_adm_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_in_app_template_response() :: %{
        "MessageBody" => message_body()
      }

  """
  @type update_in_app_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_apns_sandbox_channel_request() :: %{}

  """
  @type get_apns_sandbox_channel_request() :: %{}

  @typedoc """

  ## Example:

      create_journey_response() :: %{
        "JourneyResponse" => journey_response()
      }

  """
  @type create_journey_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_users_message_response() :: %{
        "ApplicationId" => String.t(),
        "RequestId" => String.t(),
        "Result" => map()
      }

  """
  @type send_users_message_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_journey_date_range_kpi_request() :: %{
        optional("EndTime") => non_neg_integer(),
        optional("NextToken") => String.t(),
        optional("PageSize") => String.t(),
        optional("StartTime") => non_neg_integer()
      }

  """
  @type get_journey_date_range_kpi_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_app_response() :: %{
        "ApplicationResponse" => application_response()
      }

  """
  @type create_app_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_apns_sandbox_channel_response() :: %{
        "APNSSandboxChannelResponse" => a_p_n_s_sandbox_channel_response()
      }

  """
  @type get_apns_sandbox_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      random_split_activity() :: %{
        "Branches" => list(random_split_entry()())
      }

  """
  @type random_split_activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_journey_execution_activity_metrics_response() :: %{
        "JourneyExecutionActivityMetricsResponse" => journey_execution_activity_metrics_response()
      }

  """
  @type get_journey_execution_activity_metrics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      segment_group_list() :: %{
        "Groups" => list(segment_group()()),
        "Include" => list(any())
      }

  """
  @type segment_group_list() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      in_app_template_request() :: %{
        "Content" => list(in_app_message_content()()),
        "CustomConfig" => map(),
        "Layout" => list(any()),
        "TemplateDescription" => String.t(),
        "tags" => map()
      }

  """
  @type in_app_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_campaign_response() :: %{
        "CampaignResponse" => campaign_response()
      }

  """
  @type create_campaign_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_endpoint_request() :: %{}

  """
  @type get_endpoint_request() :: %{}

  @typedoc """

  ## Example:

      get_email_channel_request() :: %{}

  """
  @type get_email_channel_request() :: %{}

  @typedoc """

  ## Example:

      journey_channel_settings() :: %{
        "ConnectCampaignArn" => String.t(),
        "ConnectCampaignExecutionRoleArn" => String.t()
      }

  """
  @type journey_channel_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      number_validate_response() :: %{
        "Carrier" => String.t(),
        "City" => String.t(),
        "CleansedPhoneNumberE164" => String.t(),
        "CleansedPhoneNumberNational" => String.t(),
        "Country" => String.t(),
        "CountryCodeIso2" => String.t(),
        "CountryCodeNumeric" => String.t(),
        "County" => String.t(),
        "OriginalCountryCodeIso2" => String.t(),
        "OriginalPhoneNumber" => String.t(),
        "PhoneType" => String.t(),
        "PhoneTypeCode" => integer(),
        "Timezone" => String.t(),
        "ZipCode" => String.t()
      }

  """
  @type number_validate_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_sms_channel_response() :: %{
        "SMSChannelResponse" => sms_channel_response()
      }

  """
  @type delete_sms_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      g_cm_message() :: %{
        "Action" => list(any()),
        "Body" => String.t(),
        "CollapseKey" => String.t(),
        "Data" => map(),
        "IconReference" => String.t(),
        "ImageIconUrl" => String.t(),
        "ImageUrl" => String.t(),
        "PreferredAuthenticationMethod" => String.t(),
        "Priority" => String.t(),
        "RawContent" => String.t(),
        "RestrictedPackageName" => String.t(),
        "SilentPush" => boolean(),
        "SmallImageIconUrl" => String.t(),
        "Sound" => String.t(),
        "Substitutions" => map(),
        "TimeToLive" => integer(),
        "Title" => String.t(),
        "Url" => String.t()
      }

  """
  @type g_cm_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_sms_channel_request() :: %{}

  """
  @type delete_sms_channel_request() :: %{}

  @typedoc """

  ## Example:

      list_journeys_response() :: %{
        "JourneysResponse" => journeys_response()
      }

  """
  @type list_journeys_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_gcm_channel_response() :: %{
        "GCMChannelResponse" => g_cm_channel_response()
      }

  """
  @type get_gcm_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      in_app_message_button() :: %{
        "Android" => override_button_configuration(),
        "DefaultConfig" => default_button_configuration(),
        "IOS" => override_button_configuration(),
        "Web" => override_button_configuration()
      }

  """
  @type in_app_message_button() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      wait_activity() :: %{
        "NextActivity" => String.t(),
        "WaitTime" => wait_time()
      }

  """
  @type wait_activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      journey_date_range_kpi_response() :: %{
        "ApplicationId" => String.t(),
        "EndTime" => non_neg_integer(),
        "JourneyId" => String.t(),
        "KpiName" => String.t(),
        "KpiResult" => base_kpi_result(),
        "NextToken" => String.t(),
        "StartTime" => non_neg_integer()
      }

  """
  @type journey_date_range_kpi_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_journey_run_execution_metrics_request() :: %{
        optional("NextToken") => String.t(),
        optional("PageSize") => String.t()
      }

  """
  @type get_journey_run_execution_metrics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      endpoint_item_response() :: %{
        "Message" => String.t(),
        "StatusCode" => integer()
      }

  """
  @type endpoint_item_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_journey_run_execution_activity_metrics_request() :: %{
        optional("NextToken") => String.t(),
        optional("PageSize") => String.t()
      }

  """
  @type get_journey_run_execution_activity_metrics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_in_app_template_request() :: %{
        optional("Version") => String.t()
      }

  """
  @type delete_in_app_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_apns_channel_request() :: %{
        required("APNSChannelRequest") => a_p_n_s_channel_request()
      }

  """
  @type update_apns_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_recommender_configuration_request() :: %{
        required("UpdateRecommenderConfiguration") => update_recommender_configuration_shape()
      }

  """
  @type update_recommender_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_email_template_response() :: %{
        "CreateTemplateMessageBody" => create_template_message_body()
      }

  """
  @type create_email_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_in_app_template_request() :: %{
        required("InAppTemplateRequest") => in_app_template_request()
      }

  """
  @type create_in_app_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_sms_template_request() :: %{
        optional("Version") => String.t()
      }

  """
  @type delete_sms_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_gcm_channel_request() :: %{}

  """
  @type get_gcm_channel_request() :: %{}

  @typedoc """

  ## Example:

      endpoint_user() :: %{
        "UserAttributes" => map(),
        "UserId" => String.t()
      }

  """
  @type endpoint_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_message_activity() :: %{
        "DeliveryUri" => String.t(),
        "EndpointTypes" => list(list(any())()),
        "MessageConfig" => journey_custom_message(),
        "NextActivity" => String.t(),
        "TemplateName" => String.t(),
        "TemplateVersion" => String.t()
      }

  """
  @type custom_message_activity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ad_m_message() :: %{
        "Action" => list(any()),
        "Body" => String.t(),
        "ConsolidationKey" => String.t(),
        "Data" => map(),
        "ExpiresAfter" => String.t(),
        "IconReference" => String.t(),
        "ImageIconUrl" => String.t(),
        "ImageUrl" => String.t(),
        "MD5" => String.t(),
        "RawContent" => String.t(),
        "SilentPush" => boolean(),
        "SmallImageIconUrl" => String.t(),
        "Sound" => String.t(),
        "Substitutions" => map(),
        "Title" => String.t(),
        "Url" => String.t()
      }

  """
  @type ad_m_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_segments_request() :: %{
        optional("PageSize") => String.t(),
        optional("Token") => String.t()
      }

  """
  @type get_segments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      in_app_template_response() :: %{
        "Arn" => String.t(),
        "Content" => list(in_app_message_content()()),
        "CreationDate" => String.t(),
        "CustomConfig" => map(),
        "LastModifiedDate" => String.t(),
        "Layout" => list(any()),
        "TemplateDescription" => String.t(),
        "TemplateName" => String.t(),
        "TemplateType" => list(any()),
        "Version" => String.t(),
        "tags" => map()
      }

  """
  @type in_app_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      message() :: %{
        "Action" => list(any()),
        "Body" => String.t(),
        "ImageIconUrl" => String.t(),
        "ImageSmallIconUrl" => String.t(),
        "ImageUrl" => String.t(),
        "JsonBody" => String.t(),
        "MediaUrl" => String.t(),
        "RawContent" => String.t(),
        "SilentPush" => boolean(),
        "TimeToLive" => integer(),
        "Title" => String.t(),
        "Url" => String.t()
      }

  """
  @type message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      public_endpoint() :: %{
        "Address" => String.t(),
        "Attributes" => map(),
        "ChannelType" => list(any()),
        "Demographic" => endpoint_demographic(),
        "EffectiveDate" => String.t(),
        "EndpointStatus" => String.t(),
        "Location" => endpoint_location(),
        "Metrics" => map(),
        "OptOut" => String.t(),
        "RequestId" => String.t(),
        "User" => endpoint_user()
      }

  """
  @type public_endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      recommender_configuration_response() :: %{
        "Attributes" => map(),
        "CreationDate" => String.t(),
        "Description" => String.t(),
        "Id" => String.t(),
        "LastModifiedDate" => String.t(),
        "Name" => String.t(),
        "RecommendationProviderIdType" => String.t(),
        "RecommendationProviderRoleArn" => String.t(),
        "RecommendationProviderUri" => String.t(),
        "RecommendationTransformerUri" => String.t(),
        "RecommendationsDisplayName" => String.t(),
        "RecommendationsPerMessage" => integer()
      }

  """
  @type recommender_configuration_response() :: %{String.t() => any()}

  @type create_app_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type create_campaign_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type create_email_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type create_export_job_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type create_import_job_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type create_in_app_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type create_journey_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type create_push_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type create_recommender_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type create_segment_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type create_sms_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type create_voice_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type delete_adm_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type delete_apns_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type delete_apns_sandbox_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type delete_apns_voip_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type delete_apns_voip_sandbox_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type delete_app_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type delete_baidu_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type delete_campaign_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type delete_email_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type delete_email_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type delete_endpoint_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type delete_event_stream_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type delete_gcm_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type delete_in_app_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type delete_journey_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type delete_push_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type delete_recommender_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type delete_segment_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type delete_sms_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type delete_sms_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type delete_user_endpoints_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type delete_voice_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type delete_voice_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_adm_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_apns_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_apns_sandbox_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_apns_voip_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_apns_voip_sandbox_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_app_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_application_date_range_kpi_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_application_settings_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_apps_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_baidu_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_campaign_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_campaign_activities_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_campaign_date_range_kpi_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_campaign_version_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_campaign_versions_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_campaigns_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_channels_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_email_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_email_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_endpoint_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_event_stream_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_export_job_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_export_jobs_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_gcm_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_import_job_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_import_jobs_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_in_app_messages_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_in_app_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_journey_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_journey_date_range_kpi_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_journey_execution_activity_metrics_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_journey_execution_metrics_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_journey_run_execution_activity_metrics_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_journey_run_execution_metrics_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_journey_runs_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_push_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_recommender_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_recommender_configurations_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_segment_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_segment_export_jobs_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_segment_import_jobs_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_segment_version_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_segment_versions_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_segments_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_sms_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_sms_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_user_endpoints_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_voice_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type get_voice_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type list_journeys_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type list_template_versions_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type list_templates_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type phone_number_validate_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type put_event_stream_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type put_events_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type remove_attributes_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type send_messages_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type send_o_t_p_message_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type send_users_messages_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_adm_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_apns_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_apns_sandbox_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_apns_voip_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_apns_voip_sandbox_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_application_settings_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_baidu_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_campaign_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_email_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_email_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_endpoint_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_endpoints_batch_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_gcm_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_in_app_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_journey_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | conflict_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_journey_state_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_push_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_recommender_configuration_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_segment_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_sms_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_sms_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_template_active_version_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_voice_channel_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type update_voice_template_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  @type verify_o_t_p_message_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | payload_too_large_exception()
          | too_many_requests_exception()
          | method_not_allowed_exception()
          | forbidden_exception()

  def metadata do
    %{
      api_version: "2016-12-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "pinpoint",
      global?: false,
      protocol: "rest-json",
      service_id: "Pinpoint",
      signature_version: "v4",
      signing_name: "mobiletargeting",
      target_prefix: nil
    }
  end

  @doc """
  Creates an application.
  """
  @spec create_app(map(), create_app_request(), list()) ::
          {:ok, create_app_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_app_errors()}
  def create_app(%Client{} = client, input, options \\ []) do
    url_path = "/v1/apps"
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
  Creates a new campaign for an application or updates the settings of an existing
  campaign for an application.
  """
  @spec create_campaign(map(), String.t(), create_campaign_request(), list()) ::
          {:ok, create_campaign_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_campaign_errors()}
  def create_campaign(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/campaigns"
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
  Creates a message template for messages that are sent through the email channel.
  """
  @spec create_email_template(map(), String.t(), create_email_template_request(), list()) ::
          {:ok, create_email_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_email_template_errors()}
  def create_email_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/email"
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
  Creates an export job for an application.
  """
  @spec create_export_job(map(), String.t(), create_export_job_request(), list()) ::
          {:ok, create_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_export_job_errors()}
  def create_export_job(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/jobs/export"
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
  Creates an import job for an application.
  """
  @spec create_import_job(map(), String.t(), create_import_job_request(), list()) ::
          {:ok, create_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_import_job_errors()}
  def create_import_job(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/jobs/import"
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
  Creates a new message template for messages using the in-app message channel.
  """
  @spec create_in_app_template(map(), String.t(), create_in_app_template_request(), list()) ::
          {:ok, create_in_app_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_in_app_template_errors()}
  def create_in_app_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/inapp"
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
  Creates a journey for an application.
  """
  @spec create_journey(map(), String.t(), create_journey_request(), list()) ::
          {:ok, create_journey_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_journey_errors()}
  def create_journey(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/journeys"
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
  Creates a message template for messages that are sent through a push
  notification channel.
  """
  @spec create_push_template(map(), String.t(), create_push_template_request(), list()) ::
          {:ok, create_push_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_push_template_errors()}
  def create_push_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/push"
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
  Creates an Amazon Pinpoint configuration for a recommender model.
  """
  @spec create_recommender_configuration(
          map(),
          create_recommender_configuration_request(),
          list()
        ) ::
          {:ok, create_recommender_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_recommender_configuration_errors()}
  def create_recommender_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/v1/recommenders"
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
  Creates a new segment for an application or updates the configuration,
  dimension, and other settings for an existing segment that's associated with an
  application.
  """
  @spec create_segment(map(), String.t(), create_segment_request(), list()) ::
          {:ok, create_segment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_segment_errors()}
  def create_segment(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/segments"
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
  Creates a message template for messages that are sent through the SMS channel.
  """
  @spec create_sms_template(map(), String.t(), create_sms_template_request(), list()) ::
          {:ok, create_sms_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_sms_template_errors()}
  def create_sms_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/sms"
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
  Creates a message template for messages that are sent through the voice channel.
  """
  @spec create_voice_template(map(), String.t(), create_voice_template_request(), list()) ::
          {:ok, create_voice_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_voice_template_errors()}
  def create_voice_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/voice"
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
  Disables the ADM channel for an application and deletes any existing settings
  for the channel.
  """
  @spec delete_adm_channel(map(), String.t(), delete_adm_channel_request(), list()) ::
          {:ok, delete_adm_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_adm_channel_errors()}
  def delete_adm_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/adm"
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
      200
    )
  end

  @doc """
  Disables the APNs channel for an application and deletes any existing settings
  for the channel.
  """
  @spec delete_apns_channel(map(), String.t(), delete_apns_channel_request(), list()) ::
          {:ok, delete_apns_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_apns_channel_errors()}
  def delete_apns_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/apns"
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
      200
    )
  end

  @doc """
  Disables the APNs sandbox channel for an application and deletes any existing
  settings for the channel.
  """
  @spec delete_apns_sandbox_channel(
          map(),
          String.t(),
          delete_apns_sandbox_channel_request(),
          list()
        ) ::
          {:ok, delete_apns_sandbox_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_apns_sandbox_channel_errors()}
  def delete_apns_sandbox_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/apns_sandbox"
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
      200
    )
  end

  @doc """
  Disables the APNs VoIP channel for an application and deletes any existing
  settings for the channel.
  """
  @spec delete_apns_voip_channel(map(), String.t(), delete_apns_voip_channel_request(), list()) ::
          {:ok, delete_apns_voip_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_apns_voip_channel_errors()}
  def delete_apns_voip_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/apns_voip"
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
      200
    )
  end

  @doc """
  Disables the APNs VoIP sandbox channel for an application and deletes any
  existing settings for the channel.
  """
  @spec delete_apns_voip_sandbox_channel(
          map(),
          String.t(),
          delete_apns_voip_sandbox_channel_request(),
          list()
        ) ::
          {:ok, delete_apns_voip_sandbox_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_apns_voip_sandbox_channel_errors()}
  def delete_apns_voip_sandbox_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/apns_voip_sandbox"
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
      200
    )
  end

  @doc """
  Deletes an application.
  """
  @spec delete_app(map(), String.t(), delete_app_request(), list()) ::
          {:ok, delete_app_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_app_errors()}
  def delete_app(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}"
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
      200
    )
  end

  @doc """
  Disables the Baidu channel for an application and deletes any existing settings
  for the channel.
  """
  @spec delete_baidu_channel(map(), String.t(), delete_baidu_channel_request(), list()) ::
          {:ok, delete_baidu_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_baidu_channel_errors()}
  def delete_baidu_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/baidu"
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
      200
    )
  end

  @doc """
  Deletes a campaign from an application.
  """
  @spec delete_campaign(map(), String.t(), String.t(), delete_campaign_request(), list()) ::
          {:ok, delete_campaign_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_campaign_errors()}
  def delete_campaign(%Client{} = client, application_id, campaign_id, input, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/campaigns/#{AWS.Util.encode_uri(campaign_id)}"

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
      200
    )
  end

  @doc """
  Disables the email channel for an application and deletes any existing settings
  for the channel.
  """
  @spec delete_email_channel(map(), String.t(), delete_email_channel_request(), list()) ::
          {:ok, delete_email_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_email_channel_errors()}
  def delete_email_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/email"
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
      200
    )
  end

  @doc """
  Deletes a message template for messages that were sent through the email
  channel.
  """
  @spec delete_email_template(map(), String.t(), delete_email_template_request(), list()) ::
          {:ok, delete_email_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_email_template_errors()}
  def delete_email_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/email"
    headers = []

    {query_params, input} =
      [
        {"Version", "version"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end

  @doc """
  Deletes an endpoint from an application.
  """
  @spec delete_endpoint(map(), String.t(), String.t(), delete_endpoint_request(), list()) ::
          {:ok, delete_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_endpoint_errors()}
  def delete_endpoint(%Client{} = client, application_id, endpoint_id, input, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/endpoints/#{AWS.Util.encode_uri(endpoint_id)}"

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
      202
    )
  end

  @doc """
  Deletes the event stream for an application.
  """
  @spec delete_event_stream(map(), String.t(), delete_event_stream_request(), list()) ::
          {:ok, delete_event_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_event_stream_errors()}
  def delete_event_stream(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/eventstream"
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
      200
    )
  end

  @doc """
  Disables the GCM channel for an application and deletes any existing settings
  for the channel.
  """
  @spec delete_gcm_channel(map(), String.t(), delete_gcm_channel_request(), list()) ::
          {:ok, delete_gcm_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_gcm_channel_errors()}
  def delete_gcm_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/gcm"
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
      200
    )
  end

  @doc """
  Deletes a message template for messages sent using the in-app message channel.
  """
  @spec delete_in_app_template(map(), String.t(), delete_in_app_template_request(), list()) ::
          {:ok, delete_in_app_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_in_app_template_errors()}
  def delete_in_app_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/inapp"
    headers = []

    {query_params, input} =
      [
        {"Version", "version"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end

  @doc """
  Deletes a journey from an application.
  """
  @spec delete_journey(map(), String.t(), String.t(), delete_journey_request(), list()) ::
          {:ok, delete_journey_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_journey_errors()}
  def delete_journey(%Client{} = client, application_id, journey_id, input, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/journeys/#{AWS.Util.encode_uri(journey_id)}"

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
      200
    )
  end

  @doc """
  Deletes a message template for messages that were sent through a push
  notification channel.
  """
  @spec delete_push_template(map(), String.t(), delete_push_template_request(), list()) ::
          {:ok, delete_push_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_push_template_errors()}
  def delete_push_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/push"
    headers = []

    {query_params, input} =
      [
        {"Version", "version"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end

  @doc """
  Deletes an Amazon Pinpoint configuration for a recommender model.
  """
  @spec delete_recommender_configuration(
          map(),
          String.t(),
          delete_recommender_configuration_request(),
          list()
        ) ::
          {:ok, delete_recommender_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_recommender_configuration_errors()}
  def delete_recommender_configuration(%Client{} = client, recommender_id, input, options \\ []) do
    url_path = "/v1/recommenders/#{AWS.Util.encode_uri(recommender_id)}"
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
      200
    )
  end

  @doc """
  Deletes a segment from an application.
  """
  @spec delete_segment(map(), String.t(), String.t(), delete_segment_request(), list()) ::
          {:ok, delete_segment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_segment_errors()}
  def delete_segment(%Client{} = client, application_id, segment_id, input, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/segments/#{AWS.Util.encode_uri(segment_id)}"

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
      200
    )
  end

  @doc """
  Disables the SMS channel for an application and deletes any existing settings
  for the channel.
  """
  @spec delete_sms_channel(map(), String.t(), delete_sms_channel_request(), list()) ::
          {:ok, delete_sms_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_sms_channel_errors()}
  def delete_sms_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/sms"
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
      200
    )
  end

  @doc """
  Deletes a message template for messages that were sent through the SMS channel.
  """
  @spec delete_sms_template(map(), String.t(), delete_sms_template_request(), list()) ::
          {:ok, delete_sms_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_sms_template_errors()}
  def delete_sms_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/sms"
    headers = []

    {query_params, input} =
      [
        {"Version", "version"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end

  @doc """
  Deletes all the endpoints that are associated with a specific user ID.
  """
  @spec delete_user_endpoints(
          map(),
          String.t(),
          String.t(),
          delete_user_endpoints_request(),
          list()
        ) ::
          {:ok, delete_user_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_user_endpoints_errors()}
  def delete_user_endpoints(%Client{} = client, application_id, user_id, input, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/users/#{AWS.Util.encode_uri(user_id)}"

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
      202
    )
  end

  @doc """
  Disables the voice channel for an application and deletes any existing settings
  for the channel.
  """
  @spec delete_voice_channel(map(), String.t(), delete_voice_channel_request(), list()) ::
          {:ok, delete_voice_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_voice_channel_errors()}
  def delete_voice_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/voice"
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
      200
    )
  end

  @doc """
  Deletes a message template for messages that were sent through the voice
  channel.
  """
  @spec delete_voice_template(map(), String.t(), delete_voice_template_request(), list()) ::
          {:ok, delete_voice_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_voice_template_errors()}
  def delete_voice_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/voice"
    headers = []

    {query_params, input} =
      [
        {"Version", "version"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end

  @doc """
  Retrieves information about the status and settings of the ADM channel for an
  application.
  """
  @spec get_adm_channel(map(), String.t(), list()) ::
          {:ok, get_adm_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_adm_channel_errors()}
  def get_adm_channel(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/adm"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the APNs channel for an
  application.
  """
  @spec get_apns_channel(map(), String.t(), list()) ::
          {:ok, get_apns_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_apns_channel_errors()}
  def get_apns_channel(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/apns"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the APNs sandbox channel
  for an application.
  """
  @spec get_apns_sandbox_channel(map(), String.t(), list()) ::
          {:ok, get_apns_sandbox_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_apns_sandbox_channel_errors()}
  def get_apns_sandbox_channel(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/apns_sandbox"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the APNs VoIP channel for
  an application.
  """
  @spec get_apns_voip_channel(map(), String.t(), list()) ::
          {:ok, get_apns_voip_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_apns_voip_channel_errors()}
  def get_apns_voip_channel(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/apns_voip"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the APNs VoIP sandbox
  channel for an application.
  """
  @spec get_apns_voip_sandbox_channel(map(), String.t(), list()) ::
          {:ok, get_apns_voip_sandbox_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_apns_voip_sandbox_channel_errors()}
  def get_apns_voip_sandbox_channel(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/apns_voip_sandbox"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an application.
  """
  @spec get_app(map(), String.t(), list()) ::
          {:ok, get_app_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_app_errors()}
  def get_app(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) pre-aggregated data for a standard metric that applies to an
  application.
  """
  @spec get_application_date_range_kpi(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_application_date_range_kpi_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_application_date_range_kpi_errors()}
  def get_application_date_range_kpi(
        %Client{} = client,
        application_id,
        kpi_name,
        end_time \\ nil,
        next_token \\ nil,
        page_size \\ nil,
        start_time \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/kpis/daterange/#{AWS.Util.encode_uri(kpi_name)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(start_time) do
        [{"start-time", start_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
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
      if !is_nil(end_time) do
        [{"end-time", end_time} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the settings for an application.
  """
  @spec get_application_settings(map(), String.t(), list()) ::
          {:ok, get_application_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_application_settings_errors()}
  def get_application_settings(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about all the applications that are associated with your
  Amazon Pinpoint account.
  """
  @spec get_apps(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_apps_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_apps_errors()}
  def get_apps(%Client{} = client, page_size \\ nil, token \\ nil, options \\ []) do
    url_path = "/v1/apps"
    headers = []
    query_params = []

    query_params =
      if !is_nil(token) do
        [{"token", token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the Baidu channel for an
  application.
  """
  @spec get_baidu_channel(map(), String.t(), list()) ::
          {:ok, get_baidu_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_baidu_channel_errors()}
  def get_baidu_channel(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/baidu"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status, configuration, and other settings for a
  campaign.
  """
  @spec get_campaign(map(), String.t(), String.t(), list()) ::
          {:ok, get_campaign_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_campaign_errors()}
  def get_campaign(%Client{} = client, application_id, campaign_id, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/campaigns/#{AWS.Util.encode_uri(campaign_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about all the activities for a campaign.
  """
  @spec get_campaign_activities(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_campaign_activities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_campaign_activities_errors()}
  def get_campaign_activities(
        %Client{} = client,
        application_id,
        campaign_id,
        page_size \\ nil,
        token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/campaigns/#{AWS.Util.encode_uri(campaign_id)}/activities"

    headers = []
    query_params = []

    query_params =
      if !is_nil(token) do
        [{"token", token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) pre-aggregated data for a standard metric that applies to a
  campaign.
  """
  @spec get_campaign_date_range_kpi(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_campaign_date_range_kpi_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_campaign_date_range_kpi_errors()}
  def get_campaign_date_range_kpi(
        %Client{} = client,
        application_id,
        campaign_id,
        kpi_name,
        end_time \\ nil,
        next_token \\ nil,
        page_size \\ nil,
        start_time \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/campaigns/#{AWS.Util.encode_uri(campaign_id)}/kpis/daterange/#{AWS.Util.encode_uri(kpi_name)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(start_time) do
        [{"start-time", start_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
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
      if !is_nil(end_time) do
        [{"end-time", end_time} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status, configuration, and other settings for a
  specific version of a campaign.
  """
  @spec get_campaign_version(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_campaign_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_campaign_version_errors()}
  def get_campaign_version(
        %Client{} = client,
        application_id,
        campaign_id,
        version,
        options \\ []
      ) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/campaigns/#{AWS.Util.encode_uri(campaign_id)}/versions/#{AWS.Util.encode_uri(version)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status, configuration, and other settings for
  all versions of a campaign.
  """
  @spec get_campaign_versions(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_campaign_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_campaign_versions_errors()}
  def get_campaign_versions(
        %Client{} = client,
        application_id,
        campaign_id,
        page_size \\ nil,
        token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/campaigns/#{AWS.Util.encode_uri(campaign_id)}/versions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(token) do
        [{"token", token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status, configuration, and other settings for
  all the campaigns that are associated with an application.
  """
  @spec get_campaigns(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_campaigns_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_campaigns_errors()}
  def get_campaigns(
        %Client{} = client,
        application_id,
        page_size \\ nil,
        token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/campaigns"
    headers = []
    query_params = []

    query_params =
      if !is_nil(token) do
        [{"token", token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the history and status of each channel for an
  application.
  """
  @spec get_channels(map(), String.t(), list()) ::
          {:ok, get_channels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_channels_errors()}
  def get_channels(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the email channel for an
  application.
  """
  @spec get_email_channel(map(), String.t(), list()) ::
          {:ok, get_email_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_email_channel_errors()}
  def get_email_channel(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/email"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the content and settings of a message template for messages that are
  sent through the email channel.
  """
  @spec get_email_template(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_email_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_email_template_errors()}
  def get_email_template(%Client{} = client, template_name, version \\ nil, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/email"
    headers = []
    query_params = []

    query_params =
      if !is_nil(version) do
        [{"version", version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the settings and attributes of a specific endpoint
  for an application.
  """
  @spec get_endpoint(map(), String.t(), String.t(), list()) ::
          {:ok, get_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_endpoint_errors()}
  def get_endpoint(%Client{} = client, application_id, endpoint_id, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/endpoints/#{AWS.Util.encode_uri(endpoint_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the event stream settings for an application.
  """
  @spec get_event_stream(map(), String.t(), list()) ::
          {:ok, get_event_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_event_stream_errors()}
  def get_event_stream(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/eventstream"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of a specific export job for
  an application.
  """
  @spec get_export_job(map(), String.t(), String.t(), list()) ::
          {:ok, get_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_export_job_errors()}
  def get_export_job(%Client{} = client, application_id, job_id, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/jobs/export/#{AWS.Util.encode_uri(job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of all the export jobs for
  an application.
  """
  @spec get_export_jobs(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_export_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_export_jobs_errors()}
  def get_export_jobs(
        %Client{} = client,
        application_id,
        page_size \\ nil,
        token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/jobs/export"
    headers = []
    query_params = []

    query_params =
      if !is_nil(token) do
        [{"token", token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the GCM channel for an
  application.
  """
  @spec get_gcm_channel(map(), String.t(), list()) ::
          {:ok, get_gcm_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_gcm_channel_errors()}
  def get_gcm_channel(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/gcm"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of a specific import job for
  an application.
  """
  @spec get_import_job(map(), String.t(), String.t(), list()) ::
          {:ok, get_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_import_job_errors()}
  def get_import_job(%Client{} = client, application_id, job_id, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/jobs/import/#{AWS.Util.encode_uri(job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of all the import jobs for
  an application.
  """
  @spec get_import_jobs(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_import_jobs_errors()}
  def get_import_jobs(
        %Client{} = client,
        application_id,
        page_size \\ nil,
        token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/jobs/import"
    headers = []
    query_params = []

    query_params =
      if !is_nil(token) do
        [{"token", token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the in-app messages targeted for the provided endpoint ID.
  """
  @spec get_in_app_messages(map(), String.t(), String.t(), list()) ::
          {:ok, get_in_app_messages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_in_app_messages_errors()}
  def get_in_app_messages(%Client{} = client, application_id, endpoint_id, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/endpoints/#{AWS.Util.encode_uri(endpoint_id)}/inappmessages"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the content and settings of a message template for messages sent
  through the in-app channel.
  """
  @spec get_in_app_template(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_in_app_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_in_app_template_errors()}
  def get_in_app_template(%Client{} = client, template_name, version \\ nil, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/inapp"
    headers = []
    query_params = []

    query_params =
      if !is_nil(version) do
        [{"version", version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status, configuration, and other settings for a
  journey.
  """
  @spec get_journey(map(), String.t(), String.t(), list()) ::
          {:ok, get_journey_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_journey_errors()}
  def get_journey(%Client{} = client, application_id, journey_id, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/journeys/#{AWS.Util.encode_uri(journey_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) pre-aggregated data for a standard engagement metric that
  applies to a journey.
  """
  @spec get_journey_date_range_kpi(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_journey_date_range_kpi_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_journey_date_range_kpi_errors()}
  def get_journey_date_range_kpi(
        %Client{} = client,
        application_id,
        journey_id,
        kpi_name,
        end_time \\ nil,
        next_token \\ nil,
        page_size \\ nil,
        start_time \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/journeys/#{AWS.Util.encode_uri(journey_id)}/kpis/daterange/#{AWS.Util.encode_uri(kpi_name)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(start_time) do
        [{"start-time", start_time} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
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
      if !is_nil(end_time) do
        [{"end-time", end_time} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) pre-aggregated data for a standard execution metric that
  applies to a journey activity.
  """
  @spec get_journey_execution_activity_metrics(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_journey_execution_activity_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_journey_execution_activity_metrics_errors()}
  def get_journey_execution_activity_metrics(
        %Client{} = client,
        application_id,
        journey_activity_id,
        journey_id,
        next_token \\ nil,
        page_size \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/journeys/#{AWS.Util.encode_uri(journey_id)}/activities/#{AWS.Util.encode_uri(journey_activity_id)}/execution-metrics"

    headers = []
    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) pre-aggregated data for a standard execution metric that
  applies to a journey.
  """
  @spec get_journey_execution_metrics(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_journey_execution_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_journey_execution_metrics_errors()}
  def get_journey_execution_metrics(
        %Client{} = client,
        application_id,
        journey_id,
        next_token \\ nil,
        page_size \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/journeys/#{AWS.Util.encode_uri(journey_id)}/execution-metrics"

    headers = []
    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) pre-aggregated data for a standard run execution metric that
  applies to a journey activity.
  """
  @spec get_journey_run_execution_activity_metrics(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_journey_run_execution_activity_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_journey_run_execution_activity_metrics_errors()}
  def get_journey_run_execution_activity_metrics(
        %Client{} = client,
        application_id,
        journey_activity_id,
        journey_id,
        run_id,
        next_token \\ nil,
        page_size \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/journeys/#{AWS.Util.encode_uri(journey_id)}/runs/#{AWS.Util.encode_uri(run_id)}/activities/#{AWS.Util.encode_uri(journey_activity_id)}/execution-metrics"

    headers = []
    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves (queries) pre-aggregated data for a standard run execution metric that
  applies to a journey.
  """
  @spec get_journey_run_execution_metrics(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_journey_run_execution_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_journey_run_execution_metrics_errors()}
  def get_journey_run_execution_metrics(
        %Client{} = client,
        application_id,
        journey_id,
        run_id,
        next_token \\ nil,
        page_size \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/journeys/#{AWS.Util.encode_uri(journey_id)}/runs/#{AWS.Util.encode_uri(run_id)}/execution-metrics"

    headers = []
    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides information about the runs of a journey.
  """
  @spec get_journey_runs(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_journey_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_journey_runs_errors()}
  def get_journey_runs(
        %Client{} = client,
        application_id,
        journey_id,
        page_size \\ nil,
        token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/journeys/#{AWS.Util.encode_uri(journey_id)}/runs"

    headers = []
    query_params = []

    query_params =
      if !is_nil(token) do
        [{"token", token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the content and settings of a message template for messages that are
  sent through a push notification channel.
  """
  @spec get_push_template(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_push_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_push_template_errors()}
  def get_push_template(%Client{} = client, template_name, version \\ nil, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/push"
    headers = []
    query_params = []

    query_params =
      if !is_nil(version) do
        [{"version", version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about an Amazon Pinpoint configuration for a recommender
  model.
  """
  @spec get_recommender_configuration(map(), String.t(), list()) ::
          {:ok, get_recommender_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_recommender_configuration_errors()}
  def get_recommender_configuration(%Client{} = client, recommender_id, options \\ []) do
    url_path = "/v1/recommenders/#{AWS.Util.encode_uri(recommender_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about all the recommender model configurations that are
  associated with your Amazon Pinpoint account.
  """
  @spec get_recommender_configurations(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_recommender_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_recommender_configurations_errors()}
  def get_recommender_configurations(
        %Client{} = client,
        page_size \\ nil,
        token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/recommenders"
    headers = []
    query_params = []

    query_params =
      if !is_nil(token) do
        [{"token", token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the configuration, dimension, and other settings for
  a specific segment that's associated with an application.
  """
  @spec get_segment(map(), String.t(), String.t(), list()) ::
          {:ok, get_segment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_segment_errors()}
  def get_segment(%Client{} = client, application_id, segment_id, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/segments/#{AWS.Util.encode_uri(segment_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the export jobs for a
  segment.
  """
  @spec get_segment_export_jobs(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_segment_export_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_segment_export_jobs_errors()}
  def get_segment_export_jobs(
        %Client{} = client,
        application_id,
        segment_id,
        page_size \\ nil,
        token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/segments/#{AWS.Util.encode_uri(segment_id)}/jobs/export"

    headers = []
    query_params = []

    query_params =
      if !is_nil(token) do
        [{"token", token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the import jobs for a
  segment.
  """
  @spec get_segment_import_jobs(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_segment_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_segment_import_jobs_errors()}
  def get_segment_import_jobs(
        %Client{} = client,
        application_id,
        segment_id,
        page_size \\ nil,
        token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/segments/#{AWS.Util.encode_uri(segment_id)}/jobs/import"

    headers = []
    query_params = []

    query_params =
      if !is_nil(token) do
        [{"token", token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the configuration, dimension, and other settings for
  a specific version of a segment that's associated with an application.
  """
  @spec get_segment_version(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_segment_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_segment_version_errors()}
  def get_segment_version(%Client{} = client, application_id, segment_id, version, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/segments/#{AWS.Util.encode_uri(segment_id)}/versions/#{AWS.Util.encode_uri(version)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the configuration, dimension, and other settings for
  all the versions of a specific segment that's associated with an application.
  """
  @spec get_segment_versions(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_segment_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_segment_versions_errors()}
  def get_segment_versions(
        %Client{} = client,
        application_id,
        segment_id,
        page_size \\ nil,
        token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/segments/#{AWS.Util.encode_uri(segment_id)}/versions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(token) do
        [{"token", token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the configuration, dimension, and other settings for
  all the segments that are associated with an application.
  """
  @spec get_segments(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, get_segments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_segments_errors()}
  def get_segments(
        %Client{} = client,
        application_id,
        page_size \\ nil,
        token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/segments"
    headers = []
    query_params = []

    query_params =
      if !is_nil(token) do
        [{"token", token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the SMS channel for an
  application.
  """
  @spec get_sms_channel(map(), String.t(), list()) ::
          {:ok, get_sms_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sms_channel_errors()}
  def get_sms_channel(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/sms"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the content and settings of a message template for messages that are
  sent through the SMS channel.
  """
  @spec get_sms_template(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_sms_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_sms_template_errors()}
  def get_sms_template(%Client{} = client, template_name, version \\ nil, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/sms"
    headers = []
    query_params = []

    query_params =
      if !is_nil(version) do
        [{"version", version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about all the endpoints that are associated with a
  specific user ID.
  """
  @spec get_user_endpoints(map(), String.t(), String.t(), list()) ::
          {:ok, get_user_endpoints_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_user_endpoints_errors()}
  def get_user_endpoints(%Client{} = client, application_id, user_id, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/users/#{AWS.Util.encode_uri(user_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status and settings of the voice channel for an
  application.
  """
  @spec get_voice_channel(map(), String.t(), list()) ::
          {:ok, get_voice_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_voice_channel_errors()}
  def get_voice_channel(%Client{} = client, application_id, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/voice"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the content and settings of a message template for messages that are
  sent through the voice channel.
  """
  @spec get_voice_template(map(), String.t(), String.t() | nil, list()) ::
          {:ok, get_voice_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_voice_template_errors()}
  def get_voice_template(%Client{} = client, template_name, version \\ nil, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/voice"
    headers = []
    query_params = []

    query_params =
      if !is_nil(version) do
        [{"version", version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the status, configuration, and other settings for
  all the journeys that are associated with an application.
  """
  @spec list_journeys(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_journeys_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_journeys_errors()}
  def list_journeys(
        %Client{} = client,
        application_id,
        page_size \\ nil,
        token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/journeys"
    headers = []
    query_params = []

    query_params =
      if !is_nil(token) do
        [{"token", token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves all the tags (keys and values) that are associated with an
  application, campaign, message template, or segment.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about all the versions of a specific message template.
  """
  @spec list_template_versions(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_template_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_template_versions_errors()}
  def list_template_versions(
        %Client{} = client,
        template_name,
        template_type,
        next_token \\ nil,
        page_size \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/templates/#{AWS.Util.encode_uri(template_name)}/#{AWS.Util.encode_uri(template_type)}/versions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about all the message templates that are associated with
  your Amazon Pinpoint account.
  """
  @spec list_templates(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_templates_errors()}
  def list_templates(
        %Client{} = client,
        next_token \\ nil,
        page_size \\ nil,
        prefix \\ nil,
        template_type \\ nil,
        options \\ []
      ) do
    url_path = "/v1/templates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(template_type) do
        [{"template-type", template_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(prefix) do
        [{"prefix", prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(page_size) do
        [{"page-size", page_size} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about a phone number.
  """
  @spec phone_number_validate(map(), phone_number_validate_request(), list()) ::
          {:ok, phone_number_validate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, phone_number_validate_errors()}
  def phone_number_validate(%Client{} = client, input, options \\ []) do
    url_path = "/v1/phone/number/validate"
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
  Creates a new event stream for an application or updates the settings of an
  existing event stream for an application.
  """
  @spec put_event_stream(map(), String.t(), put_event_stream_request(), list()) ::
          {:ok, put_event_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_event_stream_errors()}
  def put_event_stream(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/eventstream"
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
  Creates a new event to record for endpoints, or creates or updates endpoint data
  that existing events are associated with.
  """
  @spec put_events(map(), String.t(), put_events_request(), list()) ::
          {:ok, put_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_events_errors()}
  def put_events(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/events"
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
  Removes one or more custom attributes, of the same attribute type, from the
  application.

  Existing endpoints still have the attributes but Amazon Pinpoint will stop
  capturing new or changed values for these attributes.
  """
  @spec remove_attributes(map(), String.t(), String.t(), remove_attributes_request(), list()) ::
          {:ok, remove_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, remove_attributes_errors()}
  def remove_attributes(%Client{} = client, application_id, attribute_type, input, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/attributes/#{AWS.Util.encode_uri(attribute_type)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates and sends a direct message.
  """
  @spec send_messages(map(), String.t(), send_messages_request(), list()) ::
          {:ok, send_messages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_messages_errors()}
  def send_messages(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/messages"
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
  Send an OTP message
  """
  @spec send_o_t_p_message(map(), String.t(), send_o_t_p_message_request(), list()) ::
          {:ok, send_o_t_p_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_o_t_p_message_errors()}
  def send_o_t_p_message(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/otp"
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
  Creates and sends a message to a list of users.
  """
  @spec send_users_messages(map(), String.t(), send_users_messages_request(), list()) ::
          {:ok, send_users_messages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_users_messages_errors()}
  def send_users_messages(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/users-messages"
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
  Adds one or more tags (keys and values) to an application, campaign, message
  template, or segment.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Removes one or more tags (keys and values) from an application, campaign,
  message template, or segment.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

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
  Enables the ADM channel for an application or updates the status and settings of
  the ADM channel for an application.
  """
  @spec update_adm_channel(map(), String.t(), update_adm_channel_request(), list()) ::
          {:ok, update_adm_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_adm_channel_errors()}
  def update_adm_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/adm"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Enables the APNs channel for an application or updates the status and settings
  of the APNs channel for an application.
  """
  @spec update_apns_channel(map(), String.t(), update_apns_channel_request(), list()) ::
          {:ok, update_apns_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_apns_channel_errors()}
  def update_apns_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/apns"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Enables the APNs sandbox channel for an application or updates the status and
  settings of the APNs sandbox channel for an application.
  """
  @spec update_apns_sandbox_channel(
          map(),
          String.t(),
          update_apns_sandbox_channel_request(),
          list()
        ) ::
          {:ok, update_apns_sandbox_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_apns_sandbox_channel_errors()}
  def update_apns_sandbox_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/apns_sandbox"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Enables the APNs VoIP channel for an application or updates the status and
  settings of the APNs VoIP channel for an application.
  """
  @spec update_apns_voip_channel(map(), String.t(), update_apns_voip_channel_request(), list()) ::
          {:ok, update_apns_voip_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_apns_voip_channel_errors()}
  def update_apns_voip_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/apns_voip"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Enables the APNs VoIP sandbox channel for an application or updates the status
  and settings of the APNs VoIP sandbox channel for an application.
  """
  @spec update_apns_voip_sandbox_channel(
          map(),
          String.t(),
          update_apns_voip_sandbox_channel_request(),
          list()
        ) ::
          {:ok, update_apns_voip_sandbox_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_apns_voip_sandbox_channel_errors()}
  def update_apns_voip_sandbox_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/apns_voip_sandbox"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the settings for an application.
  """
  @spec update_application_settings(
          map(),
          String.t(),
          update_application_settings_request(),
          list()
        ) ::
          {:ok, update_application_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_application_settings_errors()}
  def update_application_settings(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/settings"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Enables the Baidu channel for an application or updates the status and settings
  of the Baidu channel for an application.
  """
  @spec update_baidu_channel(map(), String.t(), update_baidu_channel_request(), list()) ::
          {:ok, update_baidu_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_baidu_channel_errors()}
  def update_baidu_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/baidu"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the configuration and other settings for a campaign.
  """
  @spec update_campaign(map(), String.t(), String.t(), update_campaign_request(), list()) ::
          {:ok, update_campaign_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_campaign_errors()}
  def update_campaign(%Client{} = client, application_id, campaign_id, input, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/campaigns/#{AWS.Util.encode_uri(campaign_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Enables the email channel for an application or updates the status and settings
  of the email channel for an application.
  """
  @spec update_email_channel(map(), String.t(), update_email_channel_request(), list()) ::
          {:ok, update_email_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_email_channel_errors()}
  def update_email_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/email"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing message template for messages that are sent through the
  email channel.
  """
  @spec update_email_template(map(), String.t(), update_email_template_request(), list()) ::
          {:ok, update_email_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_email_template_errors()}
  def update_email_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/email"
    headers = []

    {query_params, input} =
      [
        {"CreateNewVersion", "create-new-version"},
        {"Version", "version"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Creates a new endpoint for an application or updates the settings and attributes
  of an existing endpoint for an application.

  You can also use this operation to define custom attributes for an endpoint. If
  an update includes one or more values for a custom attribute, Amazon Pinpoint
  replaces (overwrites) any existing values with the new values.
  """
  @spec update_endpoint(map(), String.t(), String.t(), update_endpoint_request(), list()) ::
          {:ok, update_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_endpoint_errors()}
  def update_endpoint(%Client{} = client, application_id, endpoint_id, input, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/endpoints/#{AWS.Util.encode_uri(endpoint_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Creates a new batch of endpoints for an application or updates the settings and
  attributes of a batch of existing endpoints for an application.

  You can also use this operation to define custom attributes for a batch of
  endpoints. If an update includes one or more values for a custom attribute,
  Amazon Pinpoint replaces (overwrites) any existing values with the new values.
  """
  @spec update_endpoints_batch(map(), String.t(), update_endpoints_batch_request(), list()) ::
          {:ok, update_endpoints_batch_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_endpoints_batch_errors()}
  def update_endpoints_batch(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/endpoints"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Enables the GCM channel for an application or updates the status and settings of
  the GCM channel for an application.
  """
  @spec update_gcm_channel(map(), String.t(), update_gcm_channel_request(), list()) ::
          {:ok, update_gcm_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_gcm_channel_errors()}
  def update_gcm_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/gcm"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing message template for messages sent through the in-app
  message channel.
  """
  @spec update_in_app_template(map(), String.t(), update_in_app_template_request(), list()) ::
          {:ok, update_in_app_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_in_app_template_errors()}
  def update_in_app_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/inapp"
    headers = []

    {query_params, input} =
      [
        {"CreateNewVersion", "create-new-version"},
        {"Version", "version"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates the configuration and other settings for a journey.
  """
  @spec update_journey(map(), String.t(), String.t(), update_journey_request(), list()) ::
          {:ok, update_journey_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_journey_errors()}
  def update_journey(%Client{} = client, application_id, journey_id, input, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/journeys/#{AWS.Util.encode_uri(journey_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Cancels (stops) an active journey.
  """
  @spec update_journey_state(
          map(),
          String.t(),
          String.t(),
          update_journey_state_request(),
          list()
        ) ::
          {:ok, update_journey_state_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_journey_state_errors()}
  def update_journey_state(%Client{} = client, application_id, journey_id, input, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/journeys/#{AWS.Util.encode_uri(journey_id)}/state"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing message template for messages that are sent through a push
  notification channel.
  """
  @spec update_push_template(map(), String.t(), update_push_template_request(), list()) ::
          {:ok, update_push_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_push_template_errors()}
  def update_push_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/push"
    headers = []

    {query_params, input} =
      [
        {"CreateNewVersion", "create-new-version"},
        {"Version", "version"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates an Amazon Pinpoint configuration for a recommender model.
  """
  @spec update_recommender_configuration(
          map(),
          String.t(),
          update_recommender_configuration_request(),
          list()
        ) ::
          {:ok, update_recommender_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_recommender_configuration_errors()}
  def update_recommender_configuration(%Client{} = client, recommender_id, input, options \\ []) do
    url_path = "/v1/recommenders/#{AWS.Util.encode_uri(recommender_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a new segment for an application or updates the configuration,
  dimension, and other settings for an existing segment that's associated with an
  application.
  """
  @spec update_segment(map(), String.t(), String.t(), update_segment_request(), list()) ::
          {:ok, update_segment_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_segment_errors()}
  def update_segment(%Client{} = client, application_id, segment_id, input, options \\ []) do
    url_path =
      "/v1/apps/#{AWS.Util.encode_uri(application_id)}/segments/#{AWS.Util.encode_uri(segment_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Enables the SMS channel for an application or updates the status and settings of
  the SMS channel for an application.
  """
  @spec update_sms_channel(map(), String.t(), update_sms_channel_request(), list()) ::
          {:ok, update_sms_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_sms_channel_errors()}
  def update_sms_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/sms"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing message template for messages that are sent through the SMS
  channel.
  """
  @spec update_sms_template(map(), String.t(), update_sms_template_request(), list()) ::
          {:ok, update_sms_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_sms_template_errors()}
  def update_sms_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/sms"
    headers = []

    {query_params, input} =
      [
        {"CreateNewVersion", "create-new-version"},
        {"Version", "version"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Changes the status of a specific version of a message template to *active*.
  """
  @spec update_template_active_version(
          map(),
          String.t(),
          String.t(),
          update_template_active_version_request(),
          list()
        ) ::
          {:ok, update_template_active_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_template_active_version_errors()}
  def update_template_active_version(
        %Client{} = client,
        template_name,
        template_type,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/templates/#{AWS.Util.encode_uri(template_name)}/#{AWS.Util.encode_uri(template_type)}/active-version"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Enables the voice channel for an application or updates the status and settings
  of the voice channel for an application.
  """
  @spec update_voice_channel(map(), String.t(), update_voice_channel_request(), list()) ::
          {:ok, update_voice_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_voice_channel_errors()}
  def update_voice_channel(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/channels/voice"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing message template for messages that are sent through the
  voice channel.
  """
  @spec update_voice_template(map(), String.t(), update_voice_template_request(), list()) ::
          {:ok, update_voice_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_voice_template_errors()}
  def update_voice_template(%Client{} = client, template_name, input, options \\ []) do
    url_path = "/v1/templates/#{AWS.Util.encode_uri(template_name)}/voice"
    headers = []

    {query_params, input} =
      [
        {"CreateNewVersion", "create-new-version"},
        {"Version", "version"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Verify an OTP
  """
  @spec verify_o_t_p_message(map(), String.t(), verify_o_t_p_message_request(), list()) ::
          {:ok, verify_o_t_p_message_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, verify_o_t_p_message_errors()}
  def verify_o_t_p_message(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/v1/apps/#{AWS.Util.encode_uri(application_id)}/verify-otp"
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
end
