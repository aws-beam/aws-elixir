# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ConnectCampaignsV2 do
  @moduledoc """
  Provide APIs to create and manage Amazon Connect Campaigns.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      answer_machine_detection_config() :: %{
        "awaitAnswerMachinePrompt" => [boolean()],
        "enableAnswerMachineDetection" => [boolean()]
      }

  """
  @type answer_machine_detection_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      q_connect_integration_summary() :: %{
        "knowledgeBaseArn" => String.t()
      }

  """
  @type q_connect_integration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_campaign_response() :: %{
        "campaign" => campaign()
      }

  """
  @type describe_campaign_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      encryption_config() :: %{
        "enabled" => boolean(),
        "encryptionType" => String.t(),
        "keyArn" => String.t()
      }

  """
  @type encryption_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      email_channel_subtype_config() :: %{
        "capacity" => float(),
        "defaultOutboundConfig" => email_outbound_config(),
        "outboundMode" => list()
      }

  """
  @type email_channel_subtype_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      campaign() :: %{
        "arn" => String.t(),
        "channelSubtypeConfig" => channel_subtype_config(),
        "communicationLimitsOverride" => communication_limits_config(),
        "communicationTimeConfig" => communication_time_config(),
        "connectCampaignFlowArn" => String.t(),
        "connectInstanceId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "schedule" => schedule(),
        "source" => list(),
        "tags" => map()
      }

  """
  @type campaign() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      customer_profiles_integration_config() :: %{
        "domainArn" => String.t(),
        "objectTypeNames" => map()
      }

  """
  @type customer_profiles_integration_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      successful_request() :: %{
        "clientToken" => String.t(),
        "id" => String.t()
      }

  """
  @type successful_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sms_outbound_config() :: %{
        "connectSourcePhoneNumberArn" => String.t(),
        "wisdomTemplateArn" => String.t()
      }

  """
  @type sms_outbound_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_instance_onboarding_job_request() :: %{}

  """
  @type delete_instance_onboarding_job_request() :: %{}

  @typedoc """

  ## Example:

      customer_profiles_integration_summary() :: %{
        "domainArn" => String.t(),
        "objectTypeNames" => map()
      }

  """
  @type customer_profiles_integration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_connect_instance_config_request() :: %{
        optional("campaignDeletionPolicy") => String.t()
      }

  """
  @type delete_connect_instance_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_campaign_channel_subtype_config_request() :: %{
        required("channelSubtype") => String.t()
      }

  """
  @type delete_campaign_channel_subtype_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_campaign_state_batch_response() :: %{
        "failedRequests" => list(failed_campaign_state_response()()),
        "successfulRequests" => list(successful_campaign_state_response()())
      }

  """
  @type get_campaign_state_batch_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      instance_onboarding_job_status() :: %{
        "connectInstanceId" => String.t(),
        "failureCode" => String.t(),
        "status" => String.t()
      }

  """
  @type instance_onboarding_job_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_outbound_request_batch_response() :: %{
        "failedRequests" => list(failed_request()()),
        "successfulRequests" => list(successful_request()())
      }

  """
  @type put_outbound_request_batch_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_connect_instance_integration_request() :: %{
        required("integrationIdentifier") => list()
      }

  """
  @type delete_connect_instance_integration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_campaigns_response() :: %{
        "campaignSummaryList" => list(campaign_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_campaigns_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_campaign_state_response() :: %{
        "state" => String.t()
      }

  """
  @type get_campaign_state_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_campaign_request() :: %{}

  """
  @type delete_campaign_request() :: %{}

  @typedoc """

  ## Example:

      update_campaign_source_request() :: %{
        required("source") => list()
      }

  """
  @type update_campaign_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      local_time_zone_config() :: %{
        "defaultTimeZone" => String.t(),
        "localTimeZoneDetection" => list(String.t()())
      }

  """
  @type local_time_zone_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_campaign_request() :: %{}

  """
  @type describe_campaign_request() :: %{}

  @typedoc """

  ## Example:

      failed_profile_outbound_request() :: %{
        "clientToken" => String.t(),
        "failureCode" => String.t(),
        "id" => String.t()
      }

  """
  @type failed_profile_outbound_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_campaign_communication_time_request() :: %{
        required("config") => String.t()
      }

  """
  @type delete_campaign_communication_time_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_state_exception() :: %{
        "message" => [String.t()],
        "xAmzErrorType" => String.t()
      }

  """
  @type invalid_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_campaign_communication_limits_request() :: %{
        required("config") => String.t()
      }

  """
  @type delete_campaign_communication_limits_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_campaign_schedule_request() :: %{
        required("schedule") => schedule()
      }

  """
  @type update_campaign_schedule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      instance_id_filter() :: %{
        "operator" => String.t(),
        "value" => String.t()
      }

  """
  @type instance_id_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_profile_outbound_request_batch_response() :: %{
        "failedRequests" => list(failed_profile_outbound_request()()),
        "successfulRequests" => list(successful_profile_outbound_request()())
      }

  """
  @type put_profile_outbound_request_batch_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_campaign_state_exception() :: %{
        "message" => [String.t()],
        "state" => String.t(),
        "xAmzErrorType" => String.t()
      }

  """
  @type invalid_campaign_state_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      successful_profile_outbound_request() :: %{
        "clientToken" => String.t(),
        "id" => String.t()
      }

  """
  @type successful_profile_outbound_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_campaigns_request() :: %{
        optional("filters") => campaign_filters(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_campaigns_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_campaign_flow_association_request() :: %{
        required("connectCampaignFlowArn") => String.t()
      }

  """
  @type update_campaign_flow_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_campaign_name_request() :: %{
        required("name") => String.t()
      }

  """
  @type update_campaign_name_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_instance_onboarding_job_response() :: %{
        "connectInstanceOnboardingJobStatus" => instance_onboarding_job_status()
      }

  """
  @type start_instance_onboarding_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t()],
        "xAmzErrorType" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()],
        "xAmzErrorType" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      telephony_channel_subtype_config() :: %{
        "capacity" => float(),
        "connectQueueId" => String.t(),
        "defaultOutboundConfig" => telephony_outbound_config(),
        "outboundMode" => list()
      }

  """
  @type telephony_channel_subtype_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      time_window() :: %{
        "openHours" => list(),
        "restrictedPeriods" => list()
      }

  """
  @type time_window() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_campaign_state_request() :: %{}

  """
  @type get_campaign_state_request() :: %{}

  @typedoc """

  ## Example:

      put_profile_outbound_request_batch_request() :: %{
        required("profileOutboundRequests") => list(profile_outbound_request()())
      }

  """
  @type put_profile_outbound_request_batch_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      q_connect_integration_config() :: %{
        "knowledgeBaseArn" => String.t()
      }

  """
  @type q_connect_integration_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()],
        "xAmzErrorType" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      progressive_config() :: %{
        "bandwidthAllocation" => float()
      }

  """
  @type progressive_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resume_campaign_request() :: %{}

  """
  @type resume_campaign_request() :: %{}

  @typedoc """

  ## Example:

      get_connect_instance_config_request() :: %{}

  """
  @type get_connect_instance_config_request() :: %{}

  @typedoc """

  ## Example:

      update_campaign_communication_limits_request() :: %{
        required("communicationLimitsOverride") => communication_limits_config()
      }

  """
  @type update_campaign_communication_limits_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_campaign_state_batch_request() :: %{
        required("campaignIds") => list(String.t()())
      }

  """
  @type get_campaign_state_batch_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_connect_instance_integrations_response() :: %{
        "integrationSummaryList" => list(list()()),
        "nextToken" => String.t()
      }

  """
  @type list_connect_instance_integrations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      telephony_channel_subtype_parameters() :: %{
        "answerMachineDetectionConfig" => answer_machine_detection_config(),
        "attributes" => map(),
        "connectSourcePhoneNumber" => String.t(),
        "destinationPhoneNumber" => String.t()
      }

  """
  @type telephony_channel_subtype_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      customer_profiles_integration_identifier() :: %{
        "domainArn" => String.t()
      }

  """
  @type customer_profiles_integration_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      communication_limit() :: %{
        "frequency" => [integer()],
        "maxCountPerRecipient" => [integer()],
        "unit" => String.t()
      }

  """
  @type communication_limit() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      outbound_request() :: %{
        "channelSubtypeParameters" => list(),
        "clientToken" => String.t(),
        "expirationTime" => non_neg_integer()
      }

  """
  @type outbound_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      communication_limits_config() :: %{
        "allChannelSubtypes" => list()
      }

  """
  @type communication_limits_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      agentless_config() :: %{}

  """
  @type agentless_config() :: %{}

  @typedoc """

  ## Example:

      event_trigger() :: %{
        "customerProfilesDomainArn" => String.t()
      }

  """
  @type event_trigger() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()],
        "xAmzErrorType" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schedule() :: %{
        "endTime" => non_neg_integer(),
        "refreshFrequency" => String.t(),
        "startTime" => non_neg_integer()
      }

  """
  @type schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel_subtype_config() :: %{
        "email" => email_channel_subtype_config(),
        "sms" => sms_channel_subtype_config(),
        "telephony" => telephony_channel_subtype_config()
      }

  """
  @type channel_subtype_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_campaign_request() :: %{}

  """
  @type stop_campaign_request() :: %{}

  @typedoc """

  ## Example:

      sms_channel_subtype_parameters() :: %{
        "connectSourcePhoneNumberArn" => String.t(),
        "destinationPhoneNumber" => String.t(),
        "templateArn" => String.t(),
        "templateParameters" => map()
      }

  """
  @type sms_channel_subtype_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      email_outbound_config() :: %{
        "connectSourceEmailAddress" => String.t(),
        "sourceEmailAddressDisplayName" => String.t(),
        "wisdomTemplateArn" => String.t()
      }

  """
  @type email_outbound_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      communication_time_config() :: %{
        "email" => time_window(),
        "localTimeZoneConfig" => local_time_zone_config(),
        "sms" => time_window(),
        "telephony" => time_window()
      }

  """
  @type communication_time_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      time_range() :: %{
        "endTime" => String.t(),
        "startTime" => String.t()
      }

  """
  @type time_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pause_campaign_request() :: %{}

  """
  @type pause_campaign_request() :: %{}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()],
        "xAmzErrorType" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_campaign_request() :: %{}

  """
  @type start_campaign_request() :: %{}

  @typedoc """

  ## Example:

      create_campaign_request() :: %{
        optional("communicationLimitsOverride") => communication_limits_config(),
        optional("communicationTimeConfig") => communication_time_config(),
        optional("connectCampaignFlowArn") => String.t(),
        optional("schedule") => schedule(),
        optional("source") => list(),
        optional("tags") => map(),
        required("channelSubtypeConfig") => channel_subtype_config(),
        required("connectInstanceId") => String.t(),
        required("name") => String.t()
      }

  """
  @type create_campaign_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_instance_onboarding_job_status_response() :: %{
        "connectInstanceOnboardingJobStatus" => instance_onboarding_job_status()
      }

  """
  @type get_instance_onboarding_job_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t()],
        "xAmzErrorType" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      get_connect_instance_config_response() :: %{
        "connectInstanceConfig" => instance_config()
      }

  """
  @type get_connect_instance_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      instance_config() :: %{
        "connectInstanceId" => String.t(),
        "encryptionConfig" => encryption_config(),
        "serviceLinkedRoleArn" => String.t()
      }

  """
  @type instance_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sms_channel_subtype_config() :: %{
        "capacity" => float(),
        "defaultOutboundConfig" => sms_outbound_config(),
        "outboundMode" => list()
      }

  """
  @type sms_channel_subtype_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_campaign_communication_time_request() :: %{
        required("communicationTimeConfig") => communication_time_config()
      }

  """
  @type update_campaign_communication_time_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()],
        "xAmzErrorType" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      telephony_outbound_config() :: %{
        "answerMachineDetectionConfig" => answer_machine_detection_config(),
        "connectContactFlowId" => String.t(),
        "connectSourcePhoneNumber" => String.t()
      }

  """
  @type telephony_outbound_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_campaign_channel_subtype_config_request() :: %{
        required("channelSubtypeConfig") => channel_subtype_config()
      }

  """
  @type update_campaign_channel_subtype_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_connect_instance_integration_request() :: %{
        required("integrationConfig") => list()
      }

  """
  @type put_connect_instance_integration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      q_connect_integration_identifier() :: %{
        "knowledgeBaseArn" => String.t()
      }

  """
  @type q_connect_integration_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      profile_outbound_request() :: %{
        "clientToken" => String.t(),
        "expirationTime" => non_neg_integer(),
        "profileId" => String.t()
      }

  """
  @type profile_outbound_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      failed_request() :: %{
        "clientToken" => String.t(),
        "failureCode" => String.t(),
        "id" => String.t()
      }

  """
  @type failed_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_connect_instance_integrations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_connect_instance_integrations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      predictive_config() :: %{
        "bandwidthAllocation" => float()
      }

  """
  @type predictive_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      email_channel_subtype_parameters() :: %{
        "connectSourceEmailAddress" => String.t(),
        "destinationEmailAddress" => String.t(),
        "templateArn" => String.t(),
        "templateParameters" => map()
      }

  """
  @type email_channel_subtype_parameters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_outbound_request_batch_request() :: %{
        required("outboundRequests") => list(outbound_request()())
      }

  """
  @type put_outbound_request_batch_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_campaign_response() :: %{
        "arn" => String.t(),
        "id" => String.t(),
        "tags" => map()
      }

  """
  @type create_campaign_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      successful_campaign_state_response() :: %{
        "campaignId" => String.t(),
        "state" => String.t()
      }

  """
  @type successful_campaign_state_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      campaign_summary() :: %{
        "arn" => String.t(),
        "channelSubtypes" => list(String.t()()),
        "connectCampaignFlowArn" => String.t(),
        "connectInstanceId" => String.t(),
        "id" => String.t(),
        "name" => String.t(),
        "schedule" => schedule()
      }

  """
  @type campaign_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_instance_onboarding_job_status_request() :: %{}

  """
  @type get_instance_onboarding_job_status_request() :: %{}

  @typedoc """

  ## Example:

      failed_campaign_state_response() :: %{
        "campaignId" => String.t(),
        "failureCode" => String.t()
      }

  """
  @type failed_campaign_state_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_instance_onboarding_job_request() :: %{
        required("encryptionConfig") => encryption_config()
      }

  """
  @type start_instance_onboarding_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      campaign_filters() :: %{
        "instanceIdFilter" => instance_id_filter()
      }

  """
  @type campaign_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      restricted_period() :: %{
        "endDate" => String.t(),
        "name" => String.t(),
        "startDate" => String.t()
      }

  """
  @type restricted_period() :: %{String.t() => any()}

  @type create_campaign_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_campaign_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_campaign_channel_subtype_config_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_campaign_communication_limits_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | invalid_campaign_state_exception()

  @type delete_campaign_communication_time_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | invalid_campaign_state_exception()

  @type delete_connect_instance_config_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | invalid_state_exception()

  @type delete_connect_instance_integration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_instance_onboarding_job_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | invalid_state_exception()

  @type describe_campaign_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_campaign_state_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_campaign_state_batch_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_connect_instance_config_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_instance_onboarding_job_status_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_campaigns_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_connect_instance_integrations_errors() ::
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

  @type pause_campaign_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | invalid_campaign_state_exception()

  @type put_connect_instance_integration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type put_outbound_request_batch_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | invalid_campaign_state_exception()

  @type put_profile_outbound_request_batch_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | invalid_campaign_state_exception()

  @type resume_campaign_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | invalid_campaign_state_exception()

  @type start_campaign_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | invalid_campaign_state_exception()

  @type start_instance_onboarding_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_campaign_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | invalid_campaign_state_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_campaign_channel_subtype_config_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_campaign_communication_limits_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | invalid_campaign_state_exception()

  @type update_campaign_communication_time_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | invalid_campaign_state_exception()

  @type update_campaign_flow_association_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | invalid_campaign_state_exception()

  @type update_campaign_name_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_campaign_schedule_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | invalid_campaign_state_exception()

  @type update_campaign_source_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | invalid_campaign_state_exception()

  def metadata do
    %{
      api_version: "2024-04-23",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "connect-campaigns",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "ConnectCampaignsV2",
      signature_version: "v4",
      signing_name: "connect-campaigns",
      target_prefix: nil
    }
  end

  @doc """
  Creates a campaign for the specified Amazon Connect account.

  This API is idempotent.
  """
  @spec create_campaign(map(), create_campaign_request(), list()) ::
          {:ok, create_campaign_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_campaign_errors()}
  def create_campaign(%Client{} = client, input, options \\ []) do
    url_path = "/v2/campaigns"
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
  Deletes a campaign from the specified Amazon Connect account.
  """
  @spec delete_campaign(map(), String.t(), delete_campaign_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_campaign_errors()}
  def delete_campaign(%Client{} = client, id, input, options \\ []) do
    url_path = "/v2/campaigns/#{AWS.Util.encode_uri(id)}"
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
      200
    )
  end

  @doc """
  Deletes the channel subtype config of a campaign.

  This API is idempotent.
  """
  @spec delete_campaign_channel_subtype_config(
          map(),
          String.t(),
          delete_campaign_channel_subtype_config_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_campaign_channel_subtype_config_errors()}
  def delete_campaign_channel_subtype_config(%Client{} = client, id, input, options \\ []) do
    url_path = "/v2/campaigns/#{AWS.Util.encode_uri(id)}/channel-subtype-config"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"channelSubtype", "channelSubtype"}
      ]
      |> Request.build_params(input)

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
      200
    )
  end

  @doc """
  Deletes the communication limits config for a campaign.

  This API is idempotent.
  """
  @spec delete_campaign_communication_limits(
          map(),
          String.t(),
          delete_campaign_communication_limits_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_campaign_communication_limits_errors()}
  def delete_campaign_communication_limits(%Client{} = client, id, input, options \\ []) do
    url_path = "/v2/campaigns/#{AWS.Util.encode_uri(id)}/communication-limits"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"config", "config"}
      ]
      |> Request.build_params(input)

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
      200
    )
  end

  @doc """
  Deletes the communication time config for a campaign.

  This API is idempotent.
  """
  @spec delete_campaign_communication_time(
          map(),
          String.t(),
          delete_campaign_communication_time_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_campaign_communication_time_errors()}
  def delete_campaign_communication_time(%Client{} = client, id, input, options \\ []) do
    url_path = "/v2/campaigns/#{AWS.Util.encode_uri(id)}/communication-time"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"config", "config"}
      ]
      |> Request.build_params(input)

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
      200
    )
  end

  @doc """
  Deletes a connect instance config from the specified AWS account.
  """
  @spec delete_connect_instance_config(
          map(),
          String.t(),
          delete_connect_instance_config_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_connect_instance_config_errors()}
  def delete_connect_instance_config(
        %Client{} = client,
        connect_instance_id,
        input,
        options \\ []
      ) do
    url_path = "/v2/connect-instance/#{AWS.Util.encode_uri(connect_instance_id)}/config"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"campaignDeletionPolicy", "campaignDeletionPolicy"}
      ]
      |> Request.build_params(input)

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
      200
    )
  end

  @doc """
  Delete the integration for the specified Amazon Connect instance.
  """
  @spec delete_connect_instance_integration(
          map(),
          String.t(),
          delete_connect_instance_integration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_connect_instance_integration_errors()}
  def delete_connect_instance_integration(
        %Client{} = client,
        connect_instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/v2/connect-instance/#{AWS.Util.encode_uri(connect_instance_id)}/integrations/delete"

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
  Delete the Connect Campaigns onboarding job for the specified Amazon Connect
  instance.
  """
  @spec delete_instance_onboarding_job(
          map(),
          String.t(),
          delete_instance_onboarding_job_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_instance_onboarding_job_errors()}
  def delete_instance_onboarding_job(
        %Client{} = client,
        connect_instance_id,
        input,
        options \\ []
      ) do
    url_path = "/v2/connect-instance/#{AWS.Util.encode_uri(connect_instance_id)}/onboarding"
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
      200
    )
  end

  @doc """
  Describes the specific campaign.
  """
  @spec describe_campaign(map(), String.t(), list()) ::
          {:ok, describe_campaign_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_campaign_errors()}
  def describe_campaign(%Client{} = client, id, options \\ []) do
    url_path = "/v2/campaigns/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get state of a campaign for the specified Amazon Connect account.
  """
  @spec get_campaign_state(map(), String.t(), list()) ::
          {:ok, get_campaign_state_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_campaign_state_errors()}
  def get_campaign_state(%Client{} = client, id, options \\ []) do
    url_path = "/v2/campaigns/#{AWS.Util.encode_uri(id)}/state"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get state of campaigns for the specified Amazon Connect account.
  """
  @spec get_campaign_state_batch(map(), get_campaign_state_batch_request(), list()) ::
          {:ok, get_campaign_state_batch_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_campaign_state_batch_errors()}
  def get_campaign_state_batch(%Client{} = client, input, options \\ []) do
    url_path = "/v2/campaigns-state"
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
  Get the specific Connect instance config.
  """
  @spec get_connect_instance_config(map(), String.t(), list()) ::
          {:ok, get_connect_instance_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_connect_instance_config_errors()}
  def get_connect_instance_config(%Client{} = client, connect_instance_id, options \\ []) do
    url_path = "/v2/connect-instance/#{AWS.Util.encode_uri(connect_instance_id)}/config"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the specific instance onboarding job status.
  """
  @spec get_instance_onboarding_job_status(map(), String.t(), list()) ::
          {:ok, get_instance_onboarding_job_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_instance_onboarding_job_status_errors()}
  def get_instance_onboarding_job_status(%Client{} = client, connect_instance_id, options \\ []) do
    url_path = "/v2/connect-instance/#{AWS.Util.encode_uri(connect_instance_id)}/onboarding"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides summary information about the campaigns under the specified Amazon
  Connect account.
  """
  @spec list_campaigns(map(), list_campaigns_request(), list()) ::
          {:ok, list_campaigns_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_campaigns_errors()}
  def list_campaigns(%Client{} = client, input, options \\ []) do
    url_path = "/v2/campaigns-summary"
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
  Provides summary information about the integration under the specified Connect
  instance.
  """
  @spec list_connect_instance_integrations(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_connect_instance_integrations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_connect_instance_integrations_errors()}
  def list_connect_instance_integrations(
        %Client{} = client,
        connect_instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v2/connect-instance/#{AWS.Util.encode_uri(connect_instance_id)}/integrations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List tags for a resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, arn, options \\ []) do
    url_path = "/v2/tags/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Pauses a campaign for the specified Amazon Connect account.
  """
  @spec pause_campaign(map(), String.t(), pause_campaign_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, pause_campaign_errors()}
  def pause_campaign(%Client{} = client, id, input, options \\ []) do
    url_path = "/v2/campaigns/#{AWS.Util.encode_uri(id)}/pause"
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
  Put or update the integration for the specified Amazon Connect instance.
  """
  @spec put_connect_instance_integration(
          map(),
          String.t(),
          put_connect_instance_integration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_connect_instance_integration_errors()}
  def put_connect_instance_integration(
        %Client{} = client,
        connect_instance_id,
        input,
        options \\ []
      ) do
    url_path = "/v2/connect-instance/#{AWS.Util.encode_uri(connect_instance_id)}/integrations"
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
  Creates outbound requests for the specified campaign Amazon Connect account.

  This API is idempotent.
  """
  @spec put_outbound_request_batch(
          map(),
          String.t(),
          put_outbound_request_batch_request(),
          list()
        ) ::
          {:ok, put_outbound_request_batch_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_outbound_request_batch_errors()}
  def put_outbound_request_batch(%Client{} = client, id, input, options \\ []) do
    url_path = "/v2/campaigns/#{AWS.Util.encode_uri(id)}/outbound-requests"
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
  Takes in a list of profile outbound requests to be placed as part of an outbound
  campaign.

  This API is idempotent.
  """
  @spec put_profile_outbound_request_batch(
          map(),
          String.t(),
          put_profile_outbound_request_batch_request(),
          list()
        ) ::
          {:ok, put_profile_outbound_request_batch_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_profile_outbound_request_batch_errors()}
  def put_profile_outbound_request_batch(%Client{} = client, id, input, options \\ []) do
    url_path = "/v2/campaigns/#{AWS.Util.encode_uri(id)}/profile-outbound-requests"
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
  Stops a campaign for the specified Amazon Connect account.
  """
  @spec resume_campaign(map(), String.t(), resume_campaign_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, resume_campaign_errors()}
  def resume_campaign(%Client{} = client, id, input, options \\ []) do
    url_path = "/v2/campaigns/#{AWS.Util.encode_uri(id)}/resume"
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
  Starts a campaign for the specified Amazon Connect account.
  """
  @spec start_campaign(map(), String.t(), start_campaign_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_campaign_errors()}
  def start_campaign(%Client{} = client, id, input, options \\ []) do
    url_path = "/v2/campaigns/#{AWS.Util.encode_uri(id)}/start"
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
  Onboard the specific Amazon Connect instance to Connect Campaigns.
  """
  @spec start_instance_onboarding_job(
          map(),
          String.t(),
          start_instance_onboarding_job_request(),
          list()
        ) ::
          {:ok, start_instance_onboarding_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_instance_onboarding_job_errors()}
  def start_instance_onboarding_job(%Client{} = client, connect_instance_id, input, options \\ []) do
    url_path = "/v2/connect-instance/#{AWS.Util.encode_uri(connect_instance_id)}/onboarding"
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
  Stops a campaign for the specified Amazon Connect account.
  """
  @spec stop_campaign(map(), String.t(), stop_campaign_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_campaign_errors()}
  def stop_campaign(%Client{} = client, id, input, options \\ []) do
    url_path = "/v2/campaigns/#{AWS.Util.encode_uri(id)}/stop"
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
  Tag a resource.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, arn, input, options \\ []) do
    url_path = "/v2/tags/#{AWS.Util.encode_uri(arn)}"
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
  Untag a resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, arn, input, options \\ []) do
    url_path = "/v2/tags/#{AWS.Util.encode_uri(arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

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
      200
    )
  end

  @doc """
  Updates the channel subtype config of a campaign.

  This API is idempotent.
  """
  @spec update_campaign_channel_subtype_config(
          map(),
          String.t(),
          update_campaign_channel_subtype_config_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_campaign_channel_subtype_config_errors()}
  def update_campaign_channel_subtype_config(%Client{} = client, id, input, options \\ []) do
    url_path = "/v2/campaigns/#{AWS.Util.encode_uri(id)}/channel-subtype-config"
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
  Updates the communication limits config for a campaign.

  This API is idempotent.
  """
  @spec update_campaign_communication_limits(
          map(),
          String.t(),
          update_campaign_communication_limits_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_campaign_communication_limits_errors()}
  def update_campaign_communication_limits(%Client{} = client, id, input, options \\ []) do
    url_path = "/v2/campaigns/#{AWS.Util.encode_uri(id)}/communication-limits"
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
  Updates the communication time config for a campaign.

  This API is idempotent.
  """
  @spec update_campaign_communication_time(
          map(),
          String.t(),
          update_campaign_communication_time_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_campaign_communication_time_errors()}
  def update_campaign_communication_time(%Client{} = client, id, input, options \\ []) do
    url_path = "/v2/campaigns/#{AWS.Util.encode_uri(id)}/communication-time"
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
  Updates the campaign flow associated with a campaign.

  This API is idempotent.
  """
  @spec update_campaign_flow_association(
          map(),
          String.t(),
          update_campaign_flow_association_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_campaign_flow_association_errors()}
  def update_campaign_flow_association(%Client{} = client, id, input, options \\ []) do
    url_path = "/v2/campaigns/#{AWS.Util.encode_uri(id)}/flow"
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
  Updates the name of a campaign.

  This API is idempotent.
  """
  @spec update_campaign_name(map(), String.t(), update_campaign_name_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_campaign_name_errors()}
  def update_campaign_name(%Client{} = client, id, input, options \\ []) do
    url_path = "/v2/campaigns/#{AWS.Util.encode_uri(id)}/name"
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
  Updates the schedule for a campaign.

  This API is idempotent.
  """
  @spec update_campaign_schedule(map(), String.t(), update_campaign_schedule_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_campaign_schedule_errors()}
  def update_campaign_schedule(%Client{} = client, id, input, options \\ []) do
    url_path = "/v2/campaigns/#{AWS.Util.encode_uri(id)}/schedule"
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
  Updates the campaign source with a campaign.

  This API is idempotent.
  """
  @spec update_campaign_source(map(), String.t(), update_campaign_source_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_campaign_source_errors()}
  def update_campaign_source(%Client{} = client, id, input, options \\ []) do
    url_path = "/v2/campaigns/#{AWS.Util.encode_uri(id)}/source"
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
end
