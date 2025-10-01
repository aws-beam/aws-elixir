# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ChimeSDKVoice do
  @moduledoc """
  The Amazon Chime SDK telephony APIs in this section enable developers to create
  PSTN calling solutions that use Amazon Chime SDK Voice Connectors, and Amazon
  Chime SDK SIP media applications.

  Developers can
  also order and manage phone numbers, create and manage Voice Connectors and SIP
  media applications, and run voice analytics.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      put_voice_connector_external_systems_configuration_request() :: %{
        optional("ContactCenterSystemTypes") => list(list(any())()),
        optional("SessionBorderControllerTypes") => list(list(any())())
      }

  """
  @type put_voice_connector_external_systems_configuration_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      streaming_configuration() :: %{
        "DataRetentionInHours" => integer(),
        "Disabled" => boolean(),
        "MediaInsightsConfiguration" => media_insights_configuration(),
        "StreamingNotificationTargets" => list(streaming_notification_target())
      }

  """
  @type streaming_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_phone_number_request() :: %{
        required("PhoneNumberIds") => list(String.t() | atom())
      }

  """
  @type batch_delete_phone_number_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_voice_connector_termination_credentials_request() :: %{
        optional("Credentials") => list(credential())
      }

  """
  @type put_voice_connector_termination_credentials_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_sip_rule_request() :: %{
        optional("Disabled") => boolean(),
        optional("TargetApplications") => list(sip_rule_target_application()),
        required("Name") => String.t() | atom()
      }

  """
  @type update_sip_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sip_rule() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "Disabled" => boolean(),
        "Name" => String.t() | atom(),
        "SipRuleId" => String.t() | atom(),
        "TargetApplications" => list(sip_rule_target_application()),
        "TriggerType" => list(any()),
        "TriggerValue" => String.t() | atom(),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type sip_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      call_details() :: %{
        "IsCaller" => boolean(),
        "TransactionId" => String.t() | atom(),
        "VoiceConnectorId" => String.t() | atom()
      }

  """
  @type call_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_phone_number_order_response() :: %{
        "PhoneNumberOrder" => phone_number_order()
      }

  """
  @type create_phone_number_order_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_sip_media_application_request() :: %{
        optional("Tags") => list(tag()),
        required("AwsRegion") => String.t() | atom(),
        required("Endpoints") => list(sip_media_application_endpoint()),
        required("Name") => String.t() | atom()
      }

  """
  @type create_sip_media_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_sip_media_application_call_response() :: %{
        "SipMediaApplicationCall" => sip_media_application_call()
      }

  """
  @type update_sip_media_application_call_response() :: %{(String.t() | atom()) => any()}

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

      put_sip_media_application_logging_configuration_request() :: %{
        optional("SipMediaApplicationLoggingConfiguration") => sip_media_application_logging_configuration()
      }

  """
  @type put_sip_media_application_logging_configuration_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      proxy() :: %{
        "DefaultSessionExpiryMinutes" => integer(),
        "Disabled" => boolean(),
        "FallBackPhoneNumber" => String.t() | atom(),
        "PhoneNumberCountries" => list(String.t() | atom())
      }

  """
  @type proxy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_proxy_session_request() :: %{
        optional("ExpiryMinutes") => integer(),
        required("Capabilities") => list(list(any())())
      }

  """
  @type update_proxy_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_update_phone_number_response() :: %{
        "PhoneNumberErrors" => list(phone_number_error())
      }

  """
  @type batch_update_phone_number_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_voice_connector_termination_health_request() :: %{}

  """
  @type get_voice_connector_termination_health_request() :: %{}

  @typedoc """

  ## Example:

      validate_e911_address_response() :: %{
        "Address" => address(),
        "AddressExternalId" => String.t() | atom(),
        "CandidateAddressList" => list(candidate_address()),
        "ValidationResult" => integer()
      }

  """
  @type validate_e911_address_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_voice_connector_response() :: %{
        "VoiceConnector" => voice_connector()
      }

  """
  @type update_voice_connector_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_phone_number_orders_response() :: %{
        "NextToken" => String.t() | atom(),
        "PhoneNumberOrders" => list(phone_number_order())
      }

  """
  @type list_phone_number_orders_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_voice_tone_analysis_task_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        required("LanguageCode") => list(any()),
        required("TransactionId") => String.t() | atom()
      }

  """
  @type start_voice_tone_analysis_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      speaker_search_result() :: %{
        "ConfidenceScore" => float(),
        "VoiceProfileId" => String.t() | atom()
      }

  """
  @type speaker_search_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      termination_health() :: %{
        "Source" => String.t() | atom(),
        "Timestamp" => non_neg_integer()
      }

  """
  @type termination_health() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      participant() :: %{
        "PhoneNumber" => String.t() | atom(),
        "ProxyPhoneNumber" => String.t() | atom()
      }

  """
  @type participant() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_sip_media_application_request() :: %{
        optional("Endpoints") => list(sip_media_application_endpoint()),
        optional("Name") => String.t() | atom()
      }

  """
  @type update_sip_media_application_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      voice_profile_domain_summary() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "UpdatedTimestamp" => non_neg_integer(),
        "VoiceProfileDomainArn" => String.t() | atom(),
        "VoiceProfileDomainId" => String.t() | atom()
      }

  """
  @type voice_profile_domain_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_voice_connector_group_request() :: %{}

  """
  @type delete_voice_connector_group_request() :: %{}

  @typedoc """

  ## Example:

      origination() :: %{
        "Disabled" => boolean(),
        "Routes" => list(origination_route())
      }

  """
  @type origination() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_speaker_search_task_response() :: %{
        "SpeakerSearchTask" => speaker_search_task()
      }

  """
  @type start_speaker_search_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_voice_connectors_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_voice_connectors_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      phone_number_country() :: %{
        "CountryCode" => String.t() | atom(),
        "SupportedPhoneNumberTypes" => list(list(any())())
      }

  """
  @type phone_number_country() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      geo_match_params() :: %{
        "AreaCode" => String.t() | atom(),
        "Country" => String.t() | atom()
      }

  """
  @type geo_match_params() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_available_phone_numbers_response() :: %{
        "E164PhoneNumbers" => list(String.t() | atom()),
        "NextToken" => String.t() | atom()
      }

  """
  @type search_available_phone_numbers_response() :: %{(String.t() | atom()) => any()}

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
  @type put_voice_connector_origination_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_sip_rule_response() :: %{
        "SipRule" => sip_rule()
      }

  """
  @type create_sip_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_phone_numbers_with_voice_connector_group_request() :: %{
        optional("ForceAssociate") => boolean(),
        required("E164PhoneNumbers") => list(String.t() | atom())
      }

  """
  @type associate_phone_numbers_with_voice_connector_group_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      create_voice_connector_group_response() :: %{
        "VoiceConnectorGroup" => voice_connector_group()
      }

  """
  @type create_voice_connector_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_voice_profile_domains_response() :: %{
        "NextToken" => String.t() | atom(),
        "VoiceProfileDomains" => list(voice_profile_domain_summary())
      }

  """
  @type list_voice_profile_domains_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_voice_connector_termination_credentials_request() :: %{}

  """
  @type list_voice_connector_termination_credentials_request() :: %{}

  @typedoc """

  ## Example:

      update_phone_number_settings_request() :: %{
        required("CallingName") => String.t() | atom()
      }

  """
  @type update_phone_number_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_voice_connector_proxy_response() :: %{
        "Proxy" => proxy()
      }

  """
  @type get_voice_connector_proxy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_voice_connector_logging_configuration_request() :: %{}

  """
  @type get_voice_connector_logging_configuration_request() :: %{}

  @typedoc """

  ## Example:

      service_failure_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | atom()
      }

  """
  @type service_failure_exception() :: %{(String.t() | atom()) => any()}

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

      put_voice_connector_emergency_calling_configuration_request() :: %{
        required("EmergencyCallingConfiguration") => emergency_calling_configuration()
      }

  """
  @type put_voice_connector_emergency_calling_configuration_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      create_voice_profile_response() :: %{
        "VoiceProfile" => voice_profile()
      }

  """
  @type create_voice_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | atom()
      }

  """
  @type forbidden_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_voice_connector_response() :: %{
        "VoiceConnector" => voice_connector()
      }

  """
  @type get_voice_connector_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_voice_profile_response() :: %{
        "VoiceProfile" => voice_profile()
      }

  """
  @type update_voice_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_proxy_session_response() :: %{
        "ProxySession" => proxy_session()
      }

  """
  @type create_proxy_session_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_voice_profile_domain_request() :: %{}

  """
  @type get_voice_profile_domain_request() :: %{}

  @typedoc """

  ## Example:

      put_voice_connector_termination_request() :: %{
        required("Termination") => termination()
      }

  """
  @type put_voice_connector_termination_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      phone_number_association() :: %{
        "AssociatedTimestamp" => non_neg_integer(),
        "Name" => list(any()),
        "Value" => String.t() | atom()
      }

  """
  @type phone_number_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unauthorized_client_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | atom()
      }

  """
  @type unauthorized_client_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_voice_connector_streaming_configuration_request() :: %{}

  """
  @type get_voice_connector_streaming_configuration_request() :: %{}

  @typedoc """

  ## Example:

      phone_number() :: %{
        "Associations" => list(phone_number_association()),
        "CallingName" => String.t() | atom(),
        "CallingNameStatus" => list(any()),
        "Capabilities" => phone_number_capabilities(),
        "Country" => String.t() | atom(),
        "CreatedTimestamp" => non_neg_integer(),
        "DeletionTimestamp" => non_neg_integer(),
        "E164PhoneNumber" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "OrderId" => String.t() | atom(),
        "PhoneNumberId" => String.t() | atom(),
        "ProductType" => list(any()),
        "Status" => list(any()),
        "Type" => list(any()),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type phone_number() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      termination() :: %{
        "CallingRegions" => list(String.t() | atom()),
        "CidrAllowedList" => list(String.t() | atom()),
        "CpsLimit" => integer(),
        "DefaultPhoneNumber" => String.t() | atom(),
        "Disabled" => boolean()
      }

  """
  @type termination() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_phone_number_order_request() :: %{}

  """
  @type get_phone_number_order_request() :: %{}

  @typedoc """

  ## Example:

      create_voice_profile_domain_response() :: %{
        "VoiceProfileDomain" => voice_profile_domain()
      }

  """
  @type create_voice_profile_domain_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      speaker_search_task() :: %{
        "CallDetails" => call_details(),
        "CreatedTimestamp" => non_neg_integer(),
        "SpeakerSearchDetails" => speaker_search_details(),
        "SpeakerSearchTaskId" => String.t() | atom(),
        "SpeakerSearchTaskStatus" => String.t() | atom(),
        "StartedTimestamp" => non_neg_integer(),
        "StatusMessage" => String.t() | atom(),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type speaker_search_task() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_phone_number_response() :: %{
        "PhoneNumber" => phone_number()
      }

  """
  @type update_phone_number_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_speaker_search_task_response() :: %{
        "SpeakerSearchTask" => speaker_search_task()
      }

  """
  @type get_speaker_search_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_speaker_search_task_request() :: %{}

  """
  @type stop_speaker_search_task_request() :: %{}

  @typedoc """

  ## Example:

      throttled_client_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | atom()
      }

  """
  @type throttled_client_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      gone_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | atom()
      }

  """
  @type gone_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_voice_profile_request() :: %{
        required("SpeakerSearchTaskId") => String.t() | atom()
      }

  """
  @type update_voice_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      media_insights_configuration() :: %{
        "ConfigurationArn" => String.t() | atom(),
        "Disabled" => boolean()
      }

  """
  @type media_insights_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_voice_connector_termination_health_response() :: %{
        "TerminationHealth" => termination_health()
      }

  """
  @type get_voice_connector_termination_health_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_phone_numbers_with_voice_connector_request() :: %{
        optional("ForceAssociate") => boolean(),
        required("E164PhoneNumbers") => list(String.t() | atom())
      }

  """
  @type associate_phone_numbers_with_voice_connector_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      delete_voice_connector_origination_request() :: %{}

  """
  @type delete_voice_connector_origination_request() :: %{}

  @typedoc """

  ## Example:

      list_sip_media_applications_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_sip_media_applications_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_voice_connector_external_systems_configuration_response() :: %{
        "ExternalSystemsConfiguration" => external_systems_configuration()
      }

  """
  @type get_voice_connector_external_systems_configuration_response() :: %{
          (String.t() | atom()) => any()
        }

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

      ordered_phone_number() :: %{
        "E164PhoneNumber" => String.t() | atom(),
        "Status" => list(any())
      }

  """
  @type ordered_phone_number() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sip_media_application_logging_configuration_response() :: %{
        "SipMediaApplicationLoggingConfiguration" => sip_media_application_logging_configuration()
      }

  """
  @type get_sip_media_application_logging_configuration_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      update_proxy_session_response() :: %{
        "ProxySession" => proxy_session()
      }

  """
  @type update_proxy_session_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_phone_number_order_request() :: %{
        optional("Name") => String.t() | atom(),
        required("E164PhoneNumbers") => list(String.t() | atom()),
        required("ProductType") => list(any())
      }

  """
  @type create_phone_number_order_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      external_systems_configuration() :: %{
        "ContactCenterSystemTypes" => list(list(any())()),
        "SessionBorderControllerTypes" => list(list(any())())
      }

  """
  @type external_systems_configuration() :: %{(String.t() | atom()) => any()}

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
  @type get_sip_media_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sip_rule_response() :: %{
        "SipRule" => sip_rule()
      }

  """
  @type get_sip_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_voice_profile_domain_response() :: %{
        "VoiceProfileDomain" => voice_profile_domain()
      }

  """
  @type update_voice_profile_domain_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      voice_connector_settings() :: %{
        "CdrBucket" => String.t() | atom()
      }

  """
  @type voice_connector_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_voice_tone_analysis_task_response() :: %{
        "VoiceToneAnalysisTask" => voice_tone_analysis_task()
      }

  """
  @type get_voice_tone_analysis_task_response() :: %{(String.t() | atom()) => any()}

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
  @type logging_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_voice_connector_external_systems_configuration_response() :: %{
        "ExternalSystemsConfiguration" => external_systems_configuration()
      }

  """
  @type put_voice_connector_external_systems_configuration_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      voice_profile_domain() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "ServerSideEncryptionConfiguration" => server_side_encryption_configuration(),
        "UpdatedTimestamp" => non_neg_integer(),
        "VoiceProfileDomainArn" => String.t() | atom(),
        "VoiceProfileDomainId" => String.t() | atom()
      }

  """
  @type voice_profile_domain() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      restore_phone_number_response() :: %{
        "PhoneNumber" => phone_number()
      }

  """
  @type restore_phone_number_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      speaker_search_details() :: %{
        "Results" => list(speaker_search_result()),
        "VoiceprintGenerationStatus" => String.t() | atom()
      }

  """
  @type speaker_search_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_phone_number_orders_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_phone_number_orders_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_voice_connector_termination_response() :: %{
        "Termination" => termination()
      }

  """
  @type put_voice_connector_termination_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_voice_connector_group_request() :: %{
        required("Name") => String.t() | atom(),
        required("VoiceConnectorItems") => list(voice_connector_item())
      }

  """
  @type update_voice_connector_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_supported_phone_number_countries_response() :: %{
        "PhoneNumberCountries" => list(phone_number_country())
      }

  """
  @type list_supported_phone_number_countries_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_voice_tone_analysis_task_response() :: %{
        "VoiceToneAnalysisTask" => voice_tone_analysis_task()
      }

  """
  @type start_voice_tone_analysis_task_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_sip_media_application_response() :: %{
        "SipMediaApplication" => sip_media_application()
      }

  """
  @type update_sip_media_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      d_n_i_s_emergency_calling_configuration() :: %{
        "CallingCountry" => String.t() | atom(),
        "EmergencyPhoneNumber" => String.t() | atom(),
        "TestPhoneNumber" => String.t() | atom()
      }

  """
  @type d_n_i_s_emergency_calling_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_voice_connector_logging_configuration_response() :: %{
        "LoggingConfiguration" => logging_configuration()
      }

  """
  @type get_voice_connector_logging_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_phone_numbers_from_voice_connector_request() :: %{
        required("E164PhoneNumbers") => list(String.t() | atom())
      }

  """
  @type disassociate_phone_numbers_from_voice_connector_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      delete_voice_connector_proxy_request() :: %{}

  """
  @type delete_voice_connector_proxy_request() :: %{}

  @typedoc """

  ## Example:

      list_voice_connector_groups_response() :: %{
        "NextToken" => String.t() | atom(),
        "VoiceConnectorGroups" => list(voice_connector_group())
      }

  """
  @type list_voice_connector_groups_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_sip_rules_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SipMediaApplicationId") => String.t() | atom()
      }

  """
  @type list_sip_rules_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_voice_profile_request() :: %{}

  """
  @type get_voice_profile_request() :: %{}

  @typedoc """

  ## Example:

      list_proxy_sessions_response() :: %{
        "NextToken" => String.t() | atom(),
        "ProxySessions" => list(proxy_session())
      }

  """
  @type list_proxy_sessions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sip_media_application_alexa_skill_configuration_response() :: %{
        "SipMediaApplicationAlexaSkillConfiguration" => sip_media_application_alexa_skill_configuration()
      }

  """
  @type get_sip_media_application_alexa_skill_configuration_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      put_voice_connector_streaming_configuration_response() :: %{
        "StreamingConfiguration" => streaming_configuration()
      }

  """
  @type put_voice_connector_streaming_configuration_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      validate_e911_address_request() :: %{
        required("AwsAccountId") => String.t() | atom(),
        required("City") => String.t() | atom(),
        required("Country") => String.t() | atom(),
        required("PostalCode") => String.t() | atom(),
        required("State") => String.t() | atom(),
        required("StreetInfo") => String.t() | atom(),
        required("StreetNumber") => String.t() | atom()
      }

  """
  @type validate_e911_address_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_voice_connector_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_voice_connector_groups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_phone_numbers_from_voice_connector_response() :: %{
        "PhoneNumberErrors" => list(phone_number_error())
      }

  """
  @type disassociate_phone_numbers_from_voice_connector_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      get_voice_connector_termination_request() :: %{}

  """
  @type get_voice_connector_termination_request() :: %{}

  @typedoc """

  ## Example:

      list_sip_rules_response() :: %{
        "NextToken" => String.t() | atom(),
        "SipRules" => list(sip_rule())
      }

  """
  @type list_sip_rules_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_phone_numbers_from_voice_connector_group_request() :: %{
        required("E164PhoneNumbers") => list(String.t() | atom())
      }

  """
  @type disassociate_phone_numbers_from_voice_connector_group_request() :: %{
          (String.t() | atom()) => any()
        }

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

      create_sip_rule_request() :: %{
        optional("Disabled") => boolean(),
        optional("TargetApplications") => list(sip_rule_target_application()),
        required("Name") => String.t() | atom(),
        required("TriggerType") => list(any()),
        required("TriggerValue") => String.t() | atom()
      }

  """
  @type create_sip_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      voice_profile() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "ExpirationTimestamp" => non_neg_integer(),
        "UpdatedTimestamp" => non_neg_integer(),
        "VoiceProfileArn" => String.t() | atom(),
        "VoiceProfileDomainId" => String.t() | atom(),
        "VoiceProfileId" => String.t() | atom()
      }

  """
  @type voice_profile() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_voice_connector_streaming_configuration_request() :: %{
        required("StreamingConfiguration") => streaming_configuration()
      }

  """
  @type put_voice_connector_streaming_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_speaker_search_task_request() :: %{
        optional("CallLeg") => list(any()),
        optional("ClientRequestToken") => String.t() | atom(),
        required("TransactionId") => String.t() | atom(),
        required("VoiceProfileDomainId") => String.t() | atom()
      }

  """
  @type start_speaker_search_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_delete_phone_number_response() :: %{
        "PhoneNumberErrors" => list(phone_number_error())
      }

  """
  @type batch_delete_phone_number_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_voice_connector_streaming_configuration_response() :: %{
        "StreamingConfiguration" => streaming_configuration()
      }

  """
  @type get_voice_connector_streaming_configuration_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      proxy_session() :: %{
        "Capabilities" => list(list(any())()),
        "CreatedTimestamp" => non_neg_integer(),
        "EndedTimestamp" => non_neg_integer(),
        "ExpiryMinutes" => integer(),
        "GeoMatchLevel" => list(any()),
        "GeoMatchParams" => geo_match_params(),
        "Name" => String.t() | atom(),
        "NumberSelectionBehavior" => list(any()),
        "Participants" => list(participant()),
        "ProxySessionId" => String.t() | atom(),
        "Status" => list(any()),
        "UpdatedTimestamp" => non_neg_integer(),
        "VoiceConnectorId" => String.t() | atom()
      }

  """
  @type proxy_session() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_phone_number_order_response() :: %{
        "PhoneNumberOrder" => phone_number_order()
      }

  """
  @type get_phone_number_order_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_phone_numbers_request() :: %{
        optional("FilterName") => list(any()),
        optional("FilterValue") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ProductType") => list(any()),
        optional("Status") => String.t() | atom()
      }

  """
  @type list_phone_numbers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_limit_exceeded_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | atom()
      }

  """
  @type resource_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_voice_connector_request() :: %{
        optional("AwsRegion") => list(any()),
        optional("IntegrationType") => list(any()),
        optional("NetworkType") => list(any()),
        optional("Tags") => list(tag()),
        required("Name") => String.t() | atom(),
        required("RequireEncryption") => boolean()
      }

  """
  @type create_voice_connector_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_phone_number_request() :: %{}

  """
  @type get_phone_number_request() :: %{}

  @typedoc """

  ## Example:

      create_voice_profile_request() :: %{
        required("SpeakerSearchTaskId") => String.t() | atom()
      }

  """
  @type create_voice_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | atom()
      }

  """
  @type not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_voice_connector_proxy_request() :: %{
        optional("Disabled") => boolean(),
        optional("FallBackPhoneNumber") => String.t() | atom(),
        required("DefaultSessionExpiryMinutes") => integer(),
        required("PhoneNumberPoolCountries") => list(String.t() | atom())
      }

  """
  @type put_voice_connector_proxy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_phone_numbers_with_voice_connector_response() :: %{
        "PhoneNumberErrors" => list(phone_number_error())
      }

  """
  @type associate_phone_numbers_with_voice_connector_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      put_voice_connector_logging_configuration_request() :: %{
        required("LoggingConfiguration") => logging_configuration()
      }

  """
  @type put_voice_connector_logging_configuration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      phone_number_order() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "FocDate" => non_neg_integer(),
        "OrderType" => list(any()),
        "OrderedPhoneNumbers" => list(ordered_phone_number()),
        "PhoneNumberOrderId" => String.t() | atom(),
        "ProductType" => list(any()),
        "Status" => list(any()),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type phone_number_order() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_phone_number_request() :: %{}

  """
  @type delete_phone_number_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => list(tag())
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sip_media_application_endpoint() :: %{
        "LambdaArn" => String.t() | atom()
      }

  """
  @type sip_media_application_endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_phone_numbers_from_voice_connector_group_response() :: %{
        "PhoneNumberErrors" => list(phone_number_error())
      }

  """
  @type disassociate_phone_numbers_from_voice_connector_group_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      get_global_settings_response() :: %{
        "VoiceConnector" => voice_connector_settings()
      }

  """
  @type get_global_settings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      voice_connector() :: %{
        "AwsRegion" => list(any()),
        "CreatedTimestamp" => non_neg_integer(),
        "IntegrationType" => list(any()),
        "Name" => String.t() | atom(),
        "NetworkType" => list(any()),
        "OutboundHostName" => String.t() | atom(),
        "RequireEncryption" => boolean(),
        "UpdatedTimestamp" => non_neg_integer(),
        "VoiceConnectorArn" => String.t() | atom(),
        "VoiceConnectorId" => String.t() | atom()
      }

  """
  @type voice_connector() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_proxy_sessions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Status") => list(any())
      }

  """
  @type list_proxy_sessions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      origination_route() :: %{
        "Host" => String.t() | atom(),
        "Port" => integer(),
        "Priority" => integer(),
        "Protocol" => list(any()),
        "Weight" => integer()
      }

  """
  @type origination_route() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_voice_profile_domains_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_voice_profile_domains_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | atom()
      }

  """
  @type service_unavailable_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      voice_tone_analysis_task() :: %{
        "CallDetails" => call_details(),
        "CreatedTimestamp" => non_neg_integer(),
        "StartedTimestamp" => non_neg_integer(),
        "StatusMessage" => String.t() | atom(),
        "UpdatedTimestamp" => non_neg_integer(),
        "VoiceToneAnalysisTaskId" => String.t() | atom(),
        "VoiceToneAnalysisTaskStatus" => String.t() | atom()
      }

  """
  @type voice_tone_analysis_task() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      streaming_notification_target() :: %{
        "NotificationTarget" => list(any())
      }

  """
  @type streaming_notification_target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_voice_profile_domain_request() :: %{
        optional("ClientRequestToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("Tags") => list(tag()),
        required("Name") => String.t() | atom(),
        required("ServerSideEncryptionConfiguration") => server_side_encryption_configuration()
      }

  """
  @type create_voice_profile_domain_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      voice_connector_item() :: %{
        "Priority" => integer(),
        "VoiceConnectorId" => String.t() | atom()
      }

  """
  @type voice_connector_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_available_voice_connector_regions_response() :: %{
        "VoiceConnectorRegions" => list(list(any())())
      }

  """
  @type list_available_voice_connector_regions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_sip_media_application_logging_configuration_response() :: %{
        "SipMediaApplicationLoggingConfiguration" => sip_media_application_logging_configuration()
      }

  """
  @type put_sip_media_application_logging_configuration_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      update_voice_connector_group_response() :: %{
        "VoiceConnectorGroup" => voice_connector_group()
      }

  """
  @type update_voice_connector_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_phone_number_response() :: %{
        "PhoneNumber" => phone_number()
      }

  """
  @type get_phone_number_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_voice_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("VoiceProfileDomainId") => String.t() | atom()
      }

  """
  @type list_voice_profiles_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_voice_connector_termination_credentials_response() :: %{
        "Usernames" => list(String.t() | atom())
      }

  """
  @type list_voice_connector_termination_credentials_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      server_side_encryption_configuration() :: %{
        "KmsKeyArn" => String.t() | atom()
      }

  """
  @type server_side_encryption_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_global_settings_request() :: %{
        optional("VoiceConnector") => voice_connector_settings()
      }

  """
  @type update_global_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sip_media_application_alexa_skill_configuration() :: %{
        "AlexaSkillIds" => list(String.t() | atom()),
        "AlexaSkillStatus" => list(any())
      }

  """
  @type sip_media_application_alexa_skill_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_proxy_session_request() :: %{
        optional("ExpiryMinutes") => integer(),
        optional("GeoMatchLevel") => list(any()),
        optional("GeoMatchParams") => geo_match_params(),
        optional("Name") => String.t() | atom(),
        optional("NumberSelectionBehavior") => list(any()),
        required("Capabilities") => list(list(any())()),
        required("ParticipantPhoneNumbers") => list(String.t() | atom())
      }

  """
  @type create_proxy_session_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      candidate_address() :: %{
        "city" => String.t() | atom(),
        "country" => String.t() | atom(),
        "postalCode" => String.t() | atom(),
        "postalCodePlus4" => String.t() | atom(),
        "state" => String.t() | atom(),
        "streetInfo" => String.t() | atom(),
        "streetNumber" => String.t() | atom()
      }

  """
  @type candidate_address() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sip_rule_request() :: %{}

  """
  @type get_sip_rule_request() :: %{}

  @typedoc """

  ## Example:

      get_voice_connector_external_systems_configuration_request() :: %{}

  """
  @type get_voice_connector_external_systems_configuration_request() :: %{}

  @typedoc """

  ## Example:

      get_voice_connector_proxy_request() :: %{}

  """
  @type get_voice_connector_proxy_request() :: %{}

  @typedoc """

  ## Example:

      list_sip_media_applications_response() :: %{
        "NextToken" => String.t() | atom(),
        "SipMediaApplications" => list(sip_media_application())
      }

  """
  @type list_sip_media_applications_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sip_media_application_logging_configuration_request() :: %{}

  """
  @type get_sip_media_application_logging_configuration_request() :: %{}

  @typedoc """

  ## Example:

      delete_voice_connector_external_systems_configuration_request() :: %{}

  """
  @type delete_voice_connector_external_systems_configuration_request() :: %{}

  @typedoc """

  ## Example:

      stop_voice_tone_analysis_task_request() :: %{}

  """
  @type stop_voice_tone_analysis_task_request() :: %{}

  @typedoc """

  ## Example:

      sip_media_application_logging_configuration() :: %{
        "EnableSipMediaApplicationMessageLogs" => boolean()
      }

  """
  @type sip_media_application_logging_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_proxy_session_response() :: %{
        "ProxySession" => proxy_session()
      }

  """
  @type get_proxy_session_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_voice_profiles_response() :: %{
        "NextToken" => String.t() | atom(),
        "VoiceProfiles" => list(voice_profile_summary())
      }

  """
  @type list_voice_profiles_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_sip_rule_response() :: %{
        "SipRule" => sip_rule()
      }

  """
  @type update_sip_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      voice_profile_summary() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "ExpirationTimestamp" => non_neg_integer(),
        "UpdatedTimestamp" => non_neg_integer(),
        "VoiceProfileArn" => String.t() | atom(),
        "VoiceProfileDomainId" => String.t() | atom(),
        "VoiceProfileId" => String.t() | atom()
      }

  """
  @type voice_profile_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unprocessable_entity_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | atom()
      }

  """
  @type unprocessable_entity_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_voice_connector_group_request() :: %{
        optional("VoiceConnectorItems") => list(voice_connector_item()),
        required("Name") => String.t() | atom()
      }

  """
  @type create_voice_connector_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_voice_profile_response() :: %{
        "VoiceProfile" => voice_profile()
      }

  """
  @type get_voice_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_sip_media_application_call_response() :: %{
        "SipMediaApplicationCall" => sip_media_application_call()
      }

  """
  @type create_sip_media_application_call_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      phone_number_error() :: %{
        "ErrorCode" => list(any()),
        "ErrorMessage" => String.t() | atom(),
        "PhoneNumberId" => String.t() | atom()
      }

  """
  @type phone_number_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_phone_number_request_item() :: %{
        "CallingName" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "PhoneNumberId" => String.t() | atom(),
        "ProductType" => list(any())
      }

  """
  @type update_phone_number_request_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_phone_numbers_with_voice_connector_group_response() :: %{
        "PhoneNumberErrors" => list(phone_number_error())
      }

  """
  @type associate_phone_numbers_with_voice_connector_group_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t() | atom()
      }

  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_voice_connector_origination_request() :: %{
        required("Origination") => origination()
      }

  """
  @type put_voice_connector_origination_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_voice_connector_termination_credentials_request() :: %{
        required("Usernames") => list(String.t() | atom())
      }

  """
  @type delete_voice_connector_termination_credentials_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      list_voice_connectors_response() :: %{
        "NextToken" => String.t() | atom(),
        "VoiceConnectors" => list(voice_connector())
      }

  """
  @type list_voice_connectors_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_sip_media_application_alexa_skill_configuration_response() :: %{
        "SipMediaApplicationAlexaSkillConfiguration" => sip_media_application_alexa_skill_configuration()
      }

  """
  @type put_sip_media_application_alexa_skill_configuration_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      get_voice_connector_group_request() :: %{}

  """
  @type get_voice_connector_group_request() :: %{}

  @typedoc """

  ## Example:

      voice_connector_group() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "UpdatedTimestamp" => non_neg_integer(),
        "VoiceConnectorGroupArn" => String.t() | atom(),
        "VoiceConnectorGroupId" => String.t() | atom(),
        "VoiceConnectorItems" => list(voice_connector_item())
      }

  """
  @type voice_connector_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_voice_connector_origination_response() :: %{
        "Origination" => origination()
      }

  """
  @type get_voice_connector_origination_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_voice_profile_request() :: %{}

  """
  @type delete_voice_profile_request() :: %{}

  @typedoc """

  ## Example:

      delete_voice_profile_domain_request() :: %{}

  """
  @type delete_voice_profile_domain_request() :: %{}

  @typedoc """

  ## Example:

      get_phone_number_settings_response() :: %{
        "CallingName" => String.t() | atom(),
        "CallingNameUpdatedTimestamp" => non_neg_integer()
      }

  """
  @type get_phone_number_settings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_sip_media_application_call_request() :: %{
        optional("ArgumentsMap") => map(),
        optional("SipHeaders") => map(),
        required("FromPhoneNumber") => String.t() | atom(),
        required("ToPhoneNumber") => String.t() | atom()
      }

  """
  @type create_sip_media_application_call_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_sip_media_application_call_request() :: %{
        required("Arguments") => map()
      }

  """
  @type update_sip_media_application_call_request() :: %{(String.t() | atom()) => any()}

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
  @type get_voice_connector_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_voice_connector_logging_configuration_response() :: %{
        "LoggingConfiguration" => logging_configuration()
      }

  """
  @type put_voice_connector_logging_configuration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_voice_connector_response() :: %{
        "VoiceConnector" => voice_connector()
      }

  """
  @type create_voice_connector_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_proxy_session_request() :: %{}

  """
  @type get_proxy_session_request() :: %{}

  @typedoc """

  ## Example:

      sip_media_application_call() :: %{
        "TransactionId" => String.t() | atom()
      }

  """
  @type sip_media_application_call() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Code" => list(any()),
        "Message" => String.t() | atom()
      }

  """
  @type bad_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_phone_numbers_response() :: %{
        "NextToken" => String.t() | atom(),
        "PhoneNumbers" => list(phone_number())
      }

  """
  @type list_phone_numbers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_voice_connector_request() :: %{
        required("Name") => String.t() | atom(),
        required("RequireEncryption") => boolean()
      }

  """
  @type update_voice_connector_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_voice_tone_analysis_task_request() :: %{
        required("IsCaller") => boolean()
      }

  """
  @type get_voice_tone_analysis_task_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_voice_profile_domain_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom()
      }

  """
  @type update_voice_profile_domain_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      credential() :: %{
        "Password" => String.t() | atom(),
        "Username" => String.t() | atom()
      }

  """
  @type credential() :: %{(String.t() | atom()) => any()}

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
  @type phone_number_capabilities() :: %{(String.t() | atom()) => any()}

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

      create_sip_media_application_response() :: %{
        "SipMediaApplication" => sip_media_application()
      }

  """
  @type create_sip_media_application_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_voice_connector_proxy_response() :: %{
        "Proxy" => proxy()
      }

  """
  @type put_voice_connector_proxy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      address() :: %{
        "city" => String.t() | atom(),
        "country" => String.t() | atom(),
        "postDirectional" => String.t() | atom(),
        "postalCode" => String.t() | atom(),
        "postalCodePlus4" => String.t() | atom(),
        "preDirectional" => String.t() | atom(),
        "state" => String.t() | atom(),
        "streetName" => String.t() | atom(),
        "streetNumber" => String.t() | atom(),
        "streetSuffix" => String.t() | atom()
      }

  """
  @type address() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sip_rule_target_application() :: %{
        "AwsRegion" => String.t() | atom(),
        "Priority" => integer(),
        "SipMediaApplicationId" => String.t() | atom()
      }

  """
  @type sip_rule_target_application() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_voice_connector_emergency_calling_configuration_response() :: %{
        "EmergencyCallingConfiguration" => emergency_calling_configuration()
      }

  """
  @type get_voice_connector_emergency_calling_configuration_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      get_speaker_search_task_request() :: %{}

  """
  @type get_speaker_search_task_request() :: %{}

  @typedoc """

  ## Example:

      delete_voice_connector_request() :: %{}

  """
  @type delete_voice_connector_request() :: %{}

  @typedoc """

  ## Example:

      update_phone_number_request() :: %{
        optional("CallingName") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("ProductType") => list(any())
      }

  """
  @type update_phone_number_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_voice_profile_domain_response() :: %{
        "VoiceProfileDomain" => voice_profile_domain()
      }

  """
  @type get_voice_profile_domain_response() :: %{(String.t() | atom()) => any()}

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
  @type put_voice_connector_emergency_calling_configuration_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      get_voice_connector_termination_response() :: %{
        "Termination" => termination()
      }

  """
  @type get_voice_connector_termination_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_sip_media_application_alexa_skill_configuration_request() :: %{}

  """
  @type get_sip_media_application_alexa_skill_configuration_request() :: %{}

  @typedoc """

  ## Example:

      batch_update_phone_number_request() :: %{
        required("UpdatePhoneNumberRequestItems") => list(update_phone_number_request_item())
      }

  """
  @type batch_update_phone_number_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_sip_media_application_alexa_skill_configuration_request() :: %{
        optional("SipMediaApplicationAlexaSkillConfiguration") => sip_media_application_alexa_skill_configuration()
      }

  """
  @type put_sip_media_application_alexa_skill_configuration_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      sip_media_application() :: %{
        "AwsRegion" => String.t() | atom(),
        "CreatedTimestamp" => non_neg_integer(),
        "Endpoints" => list(sip_media_application_endpoint()),
        "Name" => String.t() | atom(),
        "SipMediaApplicationArn" => String.t() | atom(),
        "SipMediaApplicationId" => String.t() | atom(),
        "UpdatedTimestamp" => non_neg_integer()
      }

  """
  @type sip_media_application() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_available_phone_numbers_request() :: %{
        optional("AreaCode") => String.t() | atom(),
        optional("City") => String.t() | atom(),
        optional("Country") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("PhoneNumberType") => list(any()),
        optional("State") => String.t() | atom(),
        optional("TollFreePrefix") => String.t() | atom()
      }

  """
  @type search_available_phone_numbers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_supported_phone_number_countries_request() :: %{
        required("ProductType") => list(any())
      }

  """
  @type list_supported_phone_number_countries_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      emergency_calling_configuration() :: %{
        "DNIS" => list(d_n_i_s_emergency_calling_configuration())
      }

  """
  @type emergency_calling_configuration() :: %{(String.t() | atom()) => any()}

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

  @type batch_delete_phone_number_errors() ::
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

  @type create_voice_profile_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | gone_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type create_voice_profile_domain_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
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

  @type delete_voice_connector_external_systems_configuration_errors() ::
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

  @type delete_voice_profile_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type delete_voice_profile_domain_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
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

  @type get_proxy_session_errors() ::
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

  @type get_sip_media_application_alexa_skill_configuration_errors() ::
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

  @type get_speaker_search_task_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
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

  @type get_voice_connector_external_systems_configuration_errors() ::
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

  @type get_voice_profile_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_voice_profile_domain_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type get_voice_tone_analysis_task_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_available_voice_connector_regions_errors() ::
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

  @type list_voice_profile_domains_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type list_voice_profiles_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type put_sip_media_application_alexa_skill_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
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

  @type put_voice_connector_external_systems_configuration_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
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

  @type start_speaker_search_task_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | gone_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type start_voice_tone_analysis_task_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
          | conflict_exception()
          | gone_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type stop_speaker_search_task_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type stop_voice_tone_analysis_task_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | unprocessable_entity_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | resource_limit_exceeded_exception()
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

  @type update_voice_profile_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | conflict_exception()
          | gone_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type update_voice_profile_domain_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  @type validate_e911_address_errors() ::
          bad_request_exception()
          | access_denied_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | throttled_client_exception()
          | unauthorized_client_exception()
          | forbidden_exception()
          | service_failure_exception()

  def metadata do
    %{
      api_version: "2022-08-03",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "voice-chime",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Chime SDK Voice",
      signature_version: "v4",
      signing_name: "chime",
      target_prefix: nil
    }
  end

  @doc """
  Associates phone numbers with the specified Amazon Chime SDK Voice Connector.
  """
  @spec associate_phone_numbers_with_voice_connector(
          map(),
          String.t() | atom(),
          associate_phone_numbers_with_voice_connector_request(),
          list()
        ) ::
          {:ok, associate_phone_numbers_with_voice_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Associates phone numbers with the specified Amazon Chime SDK Voice Connector
  group.
  """
  @spec associate_phone_numbers_with_voice_connector_group(
          map(),
          String.t() | atom(),
          associate_phone_numbers_with_voice_connector_group_request(),
          list()
        ) ::
          {:ok, associate_phone_numbers_with_voice_connector_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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

  Moves phone numbers into the
  **Deletion queue**.

  Phone numbers must be disassociated from any users or Amazon Chime SDK Voice
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
  Updates phone number product types, calling names, or phone number names.

  You can update one attribute at a time for each
  `UpdatePhoneNumberRequestItem`. For example, you can update the product type,
  the calling name, or phone name.

  You cannot have a duplicate `phoneNumberId` in a request.
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
  Creates an order for phone numbers to be provisioned.

  For numbers outside the U.S., you must use the Amazon Chime SDK SIP media
  application dial-in product type.
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
  Creates a proxy session for the specified Amazon Chime SDK Voice Connector for
  the specified participant phone numbers.
  """
  @spec create_proxy_session(map(), String.t() | atom(), create_proxy_session_request(), list()) ::
          {:ok, create_proxy_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Creates a SIP media application.

  For more information about SIP media applications, see [Managing SIP media applications
  and
  rules](https://docs.aws.amazon.com/chime-sdk/latest/ag/manage-sip-applications.html)
  in the *Amazon Chime SDK Administrator Guide*.
  """
  @spec create_sip_media_application(map(), create_sip_media_application_request(), list()) ::
          {:ok, create_sip_media_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Creates an outbound call to a phone number from the phone number specified
  in the request, and it invokes the endpoint of the specified
  `sipMediaApplicationId`.
  """
  @spec create_sip_media_application_call(
          map(),
          String.t() | atom(),
          create_sip_media_application_call_request(),
          list()
        ) ::
          {:ok, create_sip_media_application_call_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Creates a SIP rule, which can be used to run a SIP media application as a target
  for a specific trigger type.

  For more information about SIP rules, see [Managing SIP media applications and
  rules](https://docs.aws.amazon.com/chime-sdk/latest/ag/manage-sip-applications.html)
  in the *Amazon Chime SDK Administrator Guide*.
  """
  @spec create_sip_rule(map(), create_sip_rule_request(), list()) ::
          {:ok, create_sip_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Creates an Amazon Chime SDK Voice Connector.

  For more information about
  Voice Connectors,
  see [Managing Amazon Chime SDK Voice Connector groups](https://docs.aws.amazon.com/chime-sdk/latest/ag/voice-connector-groups.html)
  in the *Amazon Chime SDK
  Administrator Guide*.
  """
  @spec create_voice_connector(map(), create_voice_connector_request(), list()) ::
          {:ok, create_voice_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Creates an Amazon Chime SDK Voice Connector group under the administrator's
  AWS account.

  You can associate Amazon Chime SDK Voice Connectors with the
  Voice Connector group by including `VoiceConnectorItems` in the
  request.

  You can include Voice Connectors from different AWS Regions in your group.
  This creates a fault tolerant mechanism for fallback in case of availability
  events.
  """
  @spec create_voice_connector_group(map(), create_voice_connector_group_request(), list()) ::
          {:ok, create_voice_connector_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Creates a voice profile, which consists of an enrolled user and their latest
  voice print.

  Before creating any voice profiles, you must provide all notices and obtain all
  consents from the speaker as required under applicable privacy and biometrics
  laws, and as required under the
  [AWS service terms](https://aws.amazon.com/service-terms/) for the Amazon Chime SDK.

  For more information about voice profiles and voice analytics, see [Using Amazon
  Chime SDK Voice
  Analytics](https://docs.aws.amazon.com/chime-sdk/latest/dg/pstn-voice-analytics.html)
  in the *Amazon Chime SDK Developer Guide*.
  """
  @spec create_voice_profile(map(), create_voice_profile_request(), list()) ::
          {:ok, create_voice_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_voice_profile_errors()}
  def create_voice_profile(%Client{} = client, input, options \\ []) do
    url_path = "/voice-profiles"
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
  Creates a voice profile domain, a collection of voice profiles, their voice
  prints, and encrypted enrollment audio.

  Before creating any voice profiles, you must provide all notices and obtain all
  consents from the speaker as required under applicable privacy and biometrics
  laws, and as required under the
  [AWS service terms](https://aws.amazon.com/service-terms/) for the Amazon Chime SDK.

  For more information about voice profile domains, see [Using Amazon Chime SDK
  Voice
  Analytics](https://docs.aws.amazon.com/chime-sdk/latest/dg/pstn-voice-analytics.html)
  in the *Amazon Chime SDK Developer Guide*.
  """
  @spec create_voice_profile_domain(map(), create_voice_profile_domain_request(), list()) ::
          {:ok, create_voice_profile_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_voice_profile_domain_errors()}
  def create_voice_profile_domain(%Client{} = client, input, options \\ []) do
    url_path = "/voice-profile-domains"
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
  Moves the specified phone number into the
  **Deletion queue**.

  A phone number must
  be disassociated from any users or Amazon Chime SDK Voice Connectors before it
  can be
  deleted.

  Deleted phone numbers remain in the
  **Deletion queue** queue for 7 days before
  they are deleted permanently.
  """
  @spec delete_phone_number(map(), String.t() | atom(), delete_phone_number_request(), list()) ::
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
  Deletes the specified proxy session from the specified Amazon Chime SDK Voice
  Connector.
  """
  @spec delete_proxy_session(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_proxy_session_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Deletes a SIP media application.
  """
  @spec delete_sip_media_application(
          map(),
          String.t() | atom(),
          delete_sip_media_application_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  """
  @spec delete_sip_rule(map(), String.t() | atom(), delete_sip_rule_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Deletes an Amazon Chime SDK Voice Connector.

  Any phone numbers associated
  with the Amazon Chime SDK Voice Connector must be disassociated from it before
  it
  can be deleted.
  """
  @spec delete_voice_connector(
          map(),
          String.t() | atom(),
          delete_voice_connector_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Deletes the emergency calling details from the specified Amazon Chime SDK Voice
  Connector.
  """
  @spec delete_voice_connector_emergency_calling_configuration(
          map(),
          String.t() | atom(),
          delete_voice_connector_emergency_calling_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Deletes the external systems configuration for a Voice Connector.
  """
  @spec delete_voice_connector_external_systems_configuration(
          map(),
          String.t() | atom(),
          delete_voice_connector_external_systems_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_voice_connector_external_systems_configuration_errors()}
  def delete_voice_connector_external_systems_configuration(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/external-systems-configuration"

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
  Deletes an Amazon Chime SDK Voice Connector group.

  Any `VoiceConnectorItems`
  and phone numbers associated with the group must be removed before it can be
  deleted.
  """
  @spec delete_voice_connector_group(
          map(),
          String.t() | atom(),
          delete_voice_connector_group_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Deletes the origination settings for the specified Amazon Chime SDK Voice
  Connector.

  If emergency calling is configured for the Voice Connector, it must be
  deleted prior to deleting the origination settings.
  """
  @spec delete_voice_connector_origination(
          map(),
          String.t() | atom(),
          delete_voice_connector_origination_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Deletes the proxy configuration from the specified Amazon Chime SDK Voice
  Connector.
  """
  @spec delete_voice_connector_proxy(
          map(),
          String.t() | atom(),
          delete_voice_connector_proxy_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Deletes a Voice Connector's streaming configuration.
  """
  @spec delete_voice_connector_streaming_configuration(
          map(),
          String.t() | atom(),
          delete_voice_connector_streaming_configuration_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Deletes the termination settings for the specified Amazon Chime SDK Voice
  Connector.

  If emergency calling is configured for the Voice Connector, it must be
  deleted prior to deleting the termination settings.
  """
  @spec delete_voice_connector_termination(
          map(),
          String.t() | atom(),
          delete_voice_connector_termination_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Deletes the specified SIP credentials used by your equipment to
  authenticate during call termination.
  """
  @spec delete_voice_connector_termination_credentials(
          map(),
          String.t() | atom(),
          delete_voice_connector_termination_credentials_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Deletes a voice profile, including its voice print and enrollment data.

  WARNING: This action is not reversible.
  """
  @spec delete_voice_profile(map(), String.t() | atom(), delete_voice_profile_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_voice_profile_errors()}
  def delete_voice_profile(%Client{} = client, voice_profile_id, input, options \\ []) do
    url_path = "/voice-profiles/#{AWS.Util.encode_uri(voice_profile_id)}"
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
  Deletes all voice profiles in the domain.

  WARNING: This action is not reversible.
  """
  @spec delete_voice_profile_domain(
          map(),
          String.t() | atom(),
          delete_voice_profile_domain_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_voice_profile_domain_errors()}
  def delete_voice_profile_domain(
        %Client{} = client,
        voice_profile_domain_id,
        input,
        options \\ []
      ) do
    url_path = "/voice-profile-domains/#{AWS.Util.encode_uri(voice_profile_domain_id)}"
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
  Disassociates the specified phone numbers from the specified
  Amazon Chime SDK Voice Connector.
  """
  @spec disassociate_phone_numbers_from_voice_connector(
          map(),
          String.t() | atom(),
          disassociate_phone_numbers_from_voice_connector_request(),
          list()
        ) ::
          {:ok, disassociate_phone_numbers_from_voice_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Disassociates the specified phone numbers from the specified Amazon Chime SDK
  Voice
  Connector group.
  """
  @spec disassociate_phone_numbers_from_voice_connector_group(
          map(),
          String.t() | atom(),
          disassociate_phone_numbers_from_voice_connector_group_request(),
          list()
        ) ::
          {:ok, disassociate_phone_numbers_from_voice_connector_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Retrieves the global settings for the Amazon Chime SDK Voice Connectors in an
  AWS account.
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
  @spec get_phone_number(map(), String.t() | atom(), list()) ::
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
  creation timestamp, phone numbers in E.164 format, product type, and
  order status.
  """
  @spec get_phone_number_order(map(), String.t() | atom(), list()) ::
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
  Retrieves the phone number settings for the administrator's AWS account,
  such as the default outbound calling name.
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
  Retrieves the specified proxy session details for the specified Amazon Chime SDK
  Voice Connector.
  """
  @spec get_proxy_session(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_proxy_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Retrieves the information for a SIP media application, including name,
  AWS Region, and endpoints.
  """
  @spec get_sip_media_application(map(), String.t() | atom(), list()) ::
          {:ok, get_sip_media_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sip_media_application_errors()}
  def get_sip_media_application(%Client{} = client, sip_media_application_id, options \\ []) do
    url_path = "/sip-media-applications/#{AWS.Util.encode_uri(sip_media_application_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the Alexa Skill configuration for the SIP media application.

  Due to changes made by the Amazon Alexa service, this API is no longer available
  for use. For more information, refer to
  the [Alexa Smart Properties](https://developer.amazon.com/en-US/alexa/alexasmartproperties) page.
  """
  @spec get_sip_media_application_alexa_skill_configuration(map(), String.t() | atom(), list()) ::
          {:ok, get_sip_media_application_alexa_skill_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sip_media_application_alexa_skill_configuration_errors()}
  def get_sip_media_application_alexa_skill_configuration(
        %Client{} = client,
        sip_media_application_id,
        options \\ []
      ) do
    url_path =
      "/sip-media-applications/#{AWS.Util.encode_uri(sip_media_application_id)}/alexa-skill-configuration"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the logging configuration for the specified SIP media application.
  """
  @spec get_sip_media_application_logging_configuration(map(), String.t() | atom(), list()) ::
          {:ok, get_sip_media_application_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  """
  @spec get_sip_rule(map(), String.t() | atom(), list()) ::
          {:ok, get_sip_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_sip_rule_errors()}
  def get_sip_rule(%Client{} = client, sip_rule_id, options \\ []) do
    url_path = "/sip-rules/#{AWS.Util.encode_uri(sip_rule_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the details of the specified speaker search task.
  """
  @spec get_speaker_search_task(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_speaker_search_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_speaker_search_task_errors()}
  def get_speaker_search_task(
        %Client{} = client,
        speaker_search_task_id,
        voice_connector_id,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/speaker-search-tasks/#{AWS.Util.encode_uri(speaker_search_task_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves details for the specified Amazon Chime SDK Voice Connector, such as
  timestamps,name, outbound host, and encryption requirements.
  """
  @spec get_voice_connector(map(), String.t() | atom(), list()) ::
          {:ok, get_voice_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_voice_connector_errors()}
  def get_voice_connector(%Client{} = client, voice_connector_id, options \\ []) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the emergency calling configuration details for the specified Voice
  Connector.
  """
  @spec get_voice_connector_emergency_calling_configuration(map(), String.t() | atom(), list()) ::
          {:ok, get_voice_connector_emergency_calling_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Gets information about an external systems configuration for a Voice
  Connector.
  """
  @spec get_voice_connector_external_systems_configuration(map(), String.t() | atom(), list()) ::
          {:ok, get_voice_connector_external_systems_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_voice_connector_external_systems_configuration_errors()}
  def get_voice_connector_external_systems_configuration(
        %Client{} = client,
        voice_connector_id,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/external-systems-configuration"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves details for the specified Amazon Chime SDK Voice Connector group,
  such as timestamps,name, and associated `VoiceConnectorItems`.
  """
  @spec get_voice_connector_group(map(), String.t() | atom(), list()) ::
          {:ok, get_voice_connector_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_voice_connector_group_errors()}
  def get_voice_connector_group(%Client{} = client, voice_connector_group_id, options \\ []) do
    url_path = "/voice-connector-groups/#{AWS.Util.encode_uri(voice_connector_group_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the logging configuration settings for the specified Voice Connector.

  Shows whether SIP message logs are enabled for sending to Amazon CloudWatch
  Logs.
  """
  @spec get_voice_connector_logging_configuration(map(), String.t() | atom(), list()) ::
          {:ok, get_voice_connector_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Retrieves the origination settings for the specified Voice Connector.
  """
  @spec get_voice_connector_origination(map(), String.t() | atom(), list()) ::
          {:ok, get_voice_connector_origination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_voice_connector_origination_errors()}
  def get_voice_connector_origination(%Client{} = client, voice_connector_id, options \\ []) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/origination"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the proxy configuration details for the specified Amazon Chime SDK
  Voice
  Connector.
  """
  @spec get_voice_connector_proxy(map(), String.t() | atom(), list()) ::
          {:ok, get_voice_connector_proxy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Retrieves the streaming configuration details for the specified Amazon Chime SDK
  Voice Connector.

  Shows whether media streaming is enabled for sending to Amazon
  Kinesis. It also shows the retention period, in hours, for the Amazon Kinesis
  data.
  """
  @spec get_voice_connector_streaming_configuration(map(), String.t() | atom(), list()) ::
          {:ok, get_voice_connector_streaming_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Retrieves the termination setting details for the specified Voice Connector.
  """
  @spec get_voice_connector_termination(map(), String.t() | atom(), list()) ::
          {:ok, get_voice_connector_termination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_voice_connector_termination_errors()}
  def get_voice_connector_termination(%Client{} = client, voice_connector_id, options \\ []) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/termination"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves information about the last time a `SIP OPTIONS` ping
  was received from your SIP infrastructure for the specified Amazon Chime SDK
  Voice
  Connector.
  """
  @spec get_voice_connector_termination_health(map(), String.t() | atom(), list()) ::
          {:ok, get_voice_connector_termination_health_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Retrieves the details of the specified voice profile.
  """
  @spec get_voice_profile(map(), String.t() | atom(), list()) ::
          {:ok, get_voice_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_voice_profile_errors()}
  def get_voice_profile(%Client{} = client, voice_profile_id, options \\ []) do
    url_path = "/voice-profiles/#{AWS.Util.encode_uri(voice_profile_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the details of the specified voice profile domain.
  """
  @spec get_voice_profile_domain(map(), String.t() | atom(), list()) ::
          {:ok, get_voice_profile_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_voice_profile_domain_errors()}
  def get_voice_profile_domain(%Client{} = client, voice_profile_domain_id, options \\ []) do
    url_path = "/voice-profile-domains/#{AWS.Util.encode_uri(voice_profile_domain_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the details of a voice tone analysis task.
  """
  @spec get_voice_tone_analysis_task(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_voice_tone_analysis_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_voice_tone_analysis_task_errors()}
  def get_voice_tone_analysis_task(
        %Client{} = client,
        voice_connector_id,
        voice_tone_analysis_task_id,
        is_caller,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/voice-tone-analysis-tasks/#{AWS.Util.encode_uri(voice_tone_analysis_task_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(is_caller) do
        [{"isCaller", is_caller} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the available AWS Regions in which you can create an Amazon Chime SDK
  Voice Connector.
  """
  @spec list_available_voice_connector_regions(map(), list()) ::
          {:ok, list_available_voice_connector_regions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_available_voice_connector_regions_errors()}
  def list_available_voice_connector_regions(%Client{} = client, options \\ []) do
    url_path = "/voice-connector-regions"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the phone numbers for an administrator's Amazon Chime SDK account.
  """
  @spec list_phone_number_orders(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
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
  Lists the phone numbers for the specified Amazon Chime SDK account,
  Amazon Chime SDK user, Amazon Chime SDK Voice Connector, or Amazon Chime SDK
  Voice
  Connector group.
  """
  @spec list_phone_numbers(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
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
  Lists the proxy sessions for the specified Amazon Chime SDK Voice Connector.
  """
  @spec list_proxy_sessions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_proxy_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Lists the SIP media applications under the administrator's AWS account.
  """
  @spec list_sip_media_applications(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_sip_media_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  """
  @spec list_sip_rules(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_sip_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Lists the countries that you can order phone numbers from.
  """
  @spec list_supported_phone_number_countries(map(), String.t() | atom(), list()) ::
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
  Returns a list of the tags in a given resource.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Lists the Amazon Chime SDK Voice Connector groups in the administrator's AWS
  account.
  """
  @spec list_voice_connector_groups(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_voice_connector_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Lists the SIP credentials for the specified Amazon Chime SDK Voice Connector.
  """
  @spec list_voice_connector_termination_credentials(map(), String.t() | atom(), list()) ::
          {:ok, list_voice_connector_termination_credentials_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Lists the Amazon Chime SDK Voice Connectors in the administrators
  AWS account.
  """
  @spec list_voice_connectors(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_voice_connectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Lists the specified voice profile domains in the administrator's AWS account.
  """
  @spec list_voice_profile_domains(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_voice_profile_domains_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_voice_profile_domains_errors()}
  def list_voice_profile_domains(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/voice-profile-domains"
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
  Lists the voice profiles in a voice profile domain.
  """
  @spec list_voice_profiles(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_voice_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_voice_profiles_errors()}
  def list_voice_profiles(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        voice_profile_domain_id,
        options \\ []
      ) do
    url_path = "/voice-profiles"
    headers = []
    query_params = []

    query_params =
      if !is_nil(voice_profile_domain_id) do
        [{"voice-profile-domain-id", voice_profile_domain_id} | query_params]
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
  Updates the Alexa Skill configuration for the SIP media application.

  Due to changes made by the Amazon Alexa service, this API is no longer available
  for use. For more information, refer to
  the [Alexa Smart Properties](https://developer.amazon.com/en-US/alexa/alexasmartproperties) page.
  """
  @spec put_sip_media_application_alexa_skill_configuration(
          map(),
          String.t() | atom(),
          put_sip_media_application_alexa_skill_configuration_request(),
          list()
        ) ::
          {:ok, put_sip_media_application_alexa_skill_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_sip_media_application_alexa_skill_configuration_errors()}
  def put_sip_media_application_alexa_skill_configuration(
        %Client{} = client,
        sip_media_application_id,
        input,
        options \\ []
      ) do
    url_path =
      "/sip-media-applications/#{AWS.Util.encode_uri(sip_media_application_id)}/alexa-skill-configuration"

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
  Updates the logging configuration for the specified SIP media application.
  """
  @spec put_sip_media_application_logging_configuration(
          map(),
          String.t() | atom(),
          put_sip_media_application_logging_configuration_request(),
          list()
        ) ::
          {:ok, put_sip_media_application_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Updates a Voice Connector's emergency calling configuration.
  """
  @spec put_voice_connector_emergency_calling_configuration(
          map(),
          String.t() | atom(),
          put_voice_connector_emergency_calling_configuration_request(),
          list()
        ) ::
          {:ok, put_voice_connector_emergency_calling_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Adds an external systems configuration to a Voice Connector.
  """
  @spec put_voice_connector_external_systems_configuration(
          map(),
          String.t() | atom(),
          put_voice_connector_external_systems_configuration_request(),
          list()
        ) ::
          {:ok, put_voice_connector_external_systems_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_voice_connector_external_systems_configuration_errors()}
  def put_voice_connector_external_systems_configuration(
        %Client{} = client,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/external-systems-configuration"

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
  Updates a Voice Connector's logging configuration.
  """
  @spec put_voice_connector_logging_configuration(
          map(),
          String.t() | atom(),
          put_voice_connector_logging_configuration_request(),
          list()
        ) ::
          {:ok, put_voice_connector_logging_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Updates a Voice Connector's origination settings.
  """
  @spec put_voice_connector_origination(
          map(),
          String.t() | atom(),
          put_voice_connector_origination_request(),
          list()
        ) ::
          {:ok, put_voice_connector_origination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Puts the specified proxy configuration to the specified Amazon Chime SDK Voice
  Connector.
  """
  @spec put_voice_connector_proxy(
          map(),
          String.t() | atom(),
          put_voice_connector_proxy_request(),
          list()
        ) ::
          {:ok, put_voice_connector_proxy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Updates a Voice Connector's streaming configuration settings.
  """
  @spec put_voice_connector_streaming_configuration(
          map(),
          String.t() | atom(),
          put_voice_connector_streaming_configuration_request(),
          list()
        ) ::
          {:ok, put_voice_connector_streaming_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Updates a Voice Connector's termination settings.
  """
  @spec put_voice_connector_termination(
          map(),
          String.t() | atom(),
          put_voice_connector_termination_request(),
          list()
        ) ::
          {:ok, put_voice_connector_termination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Updates a Voice Connector's termination credentials.
  """
  @spec put_voice_connector_termination_credentials(
          map(),
          String.t() | atom(),
          put_voice_connector_termination_credentials_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Restores a deleted phone number.
  """
  @spec restore_phone_number(map(), String.t() | atom(), restore_phone_number_request(), list()) ::
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
  Searches the provisioned phone numbers in an organization.
  """
  @spec search_available_phone_numbers(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
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
  Starts a speaker search task.

  Before starting any speaker search tasks, you must provide all notices and
  obtain all consents from the speaker as required under applicable privacy and
  biometrics laws, and as required under the
  [AWS service terms](https://aws.amazon.com/service-terms/) for the Amazon Chime
  SDK.
  """
  @spec start_speaker_search_task(
          map(),
          String.t() | atom(),
          start_speaker_search_task_request(),
          list()
        ) ::
          {:ok, start_speaker_search_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_speaker_search_task_errors()}
  def start_speaker_search_task(%Client{} = client, voice_connector_id, input, options \\ []) do
    url_path = "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/speaker-search-tasks"
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
  Starts a voice tone analysis task.

  For more information about voice tone analysis, see
  [Using Amazon Chime SDK voice analytics](https://docs.aws.amazon.com/chime-sdk/latest/dg/pstn-voice-analytics.html)
  in the *Amazon Chime SDK Developer Guide*.

  Before starting any voice tone analysis tasks, you must provide all notices and
  obtain all consents from the speaker as required under applicable privacy and
  biometrics laws, and as required under the
  [AWS service terms](https://aws.amazon.com/service-terms/) for the Amazon Chime
  SDK.
  """
  @spec start_voice_tone_analysis_task(
          map(),
          String.t() | atom(),
          start_voice_tone_analysis_task_request(),
          list()
        ) ::
          {:ok, start_voice_tone_analysis_task_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_voice_tone_analysis_task_errors()}
  def start_voice_tone_analysis_task(%Client{} = client, voice_connector_id, input, options \\ []) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/voice-tone-analysis-tasks"

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
  Stops a speaker search task.
  """
  @spec stop_speaker_search_task(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          stop_speaker_search_task_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_speaker_search_task_errors()}
  def stop_speaker_search_task(
        %Client{} = client,
        speaker_search_task_id,
        voice_connector_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/speaker-search-tasks/#{AWS.Util.encode_uri(speaker_search_task_id)}?operation=stop"

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
  Stops a voice tone analysis task.
  """
  @spec stop_voice_tone_analysis_task(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          stop_voice_tone_analysis_task_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_voice_tone_analysis_task_errors()}
  def stop_voice_tone_analysis_task(
        %Client{} = client,
        voice_connector_id,
        voice_tone_analysis_task_id,
        input,
        options \\ []
      ) do
    url_path =
      "/voice-connectors/#{AWS.Util.encode_uri(voice_connector_id)}/voice-tone-analysis-tasks/#{AWS.Util.encode_uri(voice_tone_analysis_task_id)}?operation=stop"

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
  Adds a tag to the specified resource.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Removes tags from a resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Updates global settings for the Amazon Chime SDK Voice Connectors in an AWS
  account.
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
  Updates phone number details, such as product type, calling name, or phone
  number name for the
  specified phone number ID.

  You can update one phone number detail at a time. For
  example, you can update either the product type, calling name, or phone number
  name in one action.

  For numbers outside the U.S., you must use the Amazon Chime SDK SIP Media
  Application Dial-In product type.

  Updates to outbound calling names can take 72 hours to complete. Pending
  updates to outbound calling names must be complete before you can request
  another
  update.
  """
  @spec update_phone_number(map(), String.t() | atom(), update_phone_number_request(), list()) ::
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
  Updates the phone number settings for the administrator's AWS account, such
  as the default outbound calling name.

  You can update the default outbound calling
  name once every seven days. Outbound calling names can take up to 72 hours to
  update.
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
  Updates the specified proxy session details, such as voice or SMS capabilities.
  """
  @spec update_proxy_session(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_proxy_session_request(),
          list()
        ) ::
          {:ok, update_proxy_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Updates the details of the specified SIP media application.
  """
  @spec update_sip_media_application(
          map(),
          String.t() | atom(),
          update_sip_media_application_request(),
          list()
        ) ::
          {:ok, update_sip_media_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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

  The Lambda function can then return a new set
  of actions.
  """
  @spec update_sip_media_application_call(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_sip_media_application_call_request(),
          list()
        ) ::
          {:ok, update_sip_media_application_call_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  """
  @spec update_sip_rule(map(), String.t() | atom(), update_sip_rule_request(), list()) ::
          {:ok, update_sip_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Updates the details for the specified Amazon Chime SDK Voice Connector.
  """
  @spec update_voice_connector(
          map(),
          String.t() | atom(),
          update_voice_connector_request(),
          list()
        ) ::
          {:ok, update_voice_connector_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Updates the settings for the specified Amazon Chime SDK Voice Connector group.
  """
  @spec update_voice_connector_group(
          map(),
          String.t() | atom(),
          update_voice_connector_group_request(),
          list()
        ) ::
          {:ok, update_voice_connector_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  Updates the specified voice profile’s voice print and refreshes its expiration
  timestamp.

  As a condition of using this feature, you acknowledge that the collection, use,
  storage, and retention of
  your caller’s biometric identifiers and biometric information (“biometric data”)
  in the form of a digital voiceprint
  requires the caller’s informed consent via a written release. Such consent is
  required under various state laws,
  including biometrics laws in Illinois, Texas, Washington and other state privacy
  laws.

  You must provide a written release to each caller through a process that clearly
  reflects each caller’s informed
  consent before using Amazon Chime SDK Voice Insights service, as required under
  the terms of your agreement
  with AWS governing your use of the service.
  """
  @spec update_voice_profile(map(), String.t() | atom(), update_voice_profile_request(), list()) ::
          {:ok, update_voice_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_voice_profile_errors()}
  def update_voice_profile(%Client{} = client, voice_profile_id, input, options \\ []) do
    url_path = "/voice-profiles/#{AWS.Util.encode_uri(voice_profile_id)}"
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
  Updates the settings for the specified voice profile domain.
  """
  @spec update_voice_profile_domain(
          map(),
          String.t() | atom(),
          update_voice_profile_domain_request(),
          list()
        ) ::
          {:ok, update_voice_profile_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_voice_profile_domain_errors()}
  def update_voice_profile_domain(
        %Client{} = client,
        voice_profile_domain_id,
        input,
        options \\ []
      ) do
    url_path = "/voice-profile-domains/#{AWS.Util.encode_uri(voice_profile_domain_id)}"
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
  Validates an address to be used for 911 calls made with Amazon Chime SDK Voice
  Connectors.

  You can use validated addresses in a Presence Information Data Format
  Location Object file that you include in SIP requests. That helps ensure that
  addresses
  are routed to the appropriate Public Safety Answering Point.
  """
  @spec validate_e911_address(map(), validate_e911_address_request(), list()) ::
          {:ok, validate_e911_address_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
