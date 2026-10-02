# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.EndUserMessaging do
  @moduledoc """
  AWS End User Messaging provides a set of APIs to manage brand profiles,
  synchronize brand profile data with SMS and Rich Communication Services (RCS)
  registrations, and send and validate one-time passcodes across the SMS, voice,
  and WhatsApp channels.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      brand_profile_attribute_input() :: %{
        "attachmentBody" => binary(),
        "attributeName" => String.t() | atom(),
        "attributeType" => list(any()),
        "attributeValue" => String.t() | atom(),
        "category" => String.t() | atom(),
        "description" => String.t() | atom()
      }

  """
  @type brand_profile_attribute_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      brand_profile_attribute_output() :: %{
        "attributeName" => String.t() | atom(),
        "attributeType" => list(any()),
        "mediaDownloadUrl" => String.t() | atom()
      }

  """
  @type brand_profile_attribute_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      brand_profile_attribute_summary() :: %{
        "attributeName" => String.t() | atom(),
        "attributeType" => list(any()),
        "category" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type brand_profile_attribute_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      brand_profile_info() :: %{
        "brandProfileArn" => String.t() | atom(),
        "brandProfileId" => String.t() | atom(),
        "brandProfileName" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "deletionProtectionEnabled" => [boolean()],
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type brand_profile_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      channel_parameters() :: %{
        "notify" => notify_parameters(),
        "text" => text_parameters(),
        "voice" => voice_parameters(),
        "whatsApp" => whats_app_parameters()
      }

  """
  @type channel_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_configuration_parameters() :: %{
        "codeLength" => integer(),
        "codeType" => list(any()),
        "maxAttempts" => integer(),
        "validityPeriodMinutes" => integer()
      }

  """
  @type code_configuration_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_brand_profile_attributes_input() :: %{
        optional("clientToken") => String.t() | atom(),
        required("attributes") => list(brand_profile_attribute_input())
      }

  """
  @type create_brand_profile_attributes_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_brand_profile_attributes_output() :: %{
        "attributes" => list(brand_profile_attribute_output())
      }

  """
  @type create_brand_profile_attributes_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_brand_profile_from_registration_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("smartMatch") => [boolean()],
        optional("tags") => list(tag()),
        required("brandProfileName") => String.t() | atom(),
        required("registrationId") => String.t() | atom()
      }

  """
  @type create_brand_profile_from_registration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_brand_profile_from_registration_output() :: %{
        "results" => list(job_result())
      }

  """
  @type create_brand_profile_from_registration_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_brand_profile_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("deletionProtectionEnabled") => [boolean()],
        optional("tags") => list(tag()),
        required("brandProfileName") => String.t() | atom()
      }

  """
  @type create_brand_profile_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_brand_profile_output() :: %{
        "attributesCreated" => [integer()],
        "brandProfileArn" => String.t() | atom(),
        "brandProfileId" => String.t() | atom(),
        "brandProfileName" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "deletionProtectionEnabled" => [boolean()],
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type create_brand_profile_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_notify_code_configuration_input() :: %{
        optional("channelParameters") => channel_parameters(),
        optional("clientToken") => String.t() | atom(),
        optional("codeConfigurationParameters") => code_configuration_parameters(),
        optional("deletionProtectionEnabled") => [boolean()],
        optional("tags") => list(tag()),
        required("notifyCodeConfigurationName") => String.t() | atom()
      }

  """
  @type create_notify_code_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_notify_code_configuration_output() :: %{
        "notifyCodeConfiguration" => notify_code_configuration()
      }

  """
  @type create_notify_code_configuration_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_registrations_from_brand_profile_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("smartMatch") => [boolean()],
        required("registrationTypes") => list(String.t() | atom())
      }

  """
  @type create_registrations_from_brand_profile_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_registrations_from_brand_profile_output() :: %{
        "results" => list(job_result())
      }

  """
  @type create_registrations_from_brand_profile_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_brand_profile_attribute_input() :: %{}

  """
  @type delete_brand_profile_attribute_input() :: %{}

  @typedoc """

  ## Example:

      delete_brand_profile_attribute_output() :: %{
        "attributeName" => String.t() | atom(),
        "brandProfileId" => String.t() | atom()
      }

  """
  @type delete_brand_profile_attribute_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_brand_profile_input() :: %{}

  """
  @type delete_brand_profile_input() :: %{}

  @typedoc """

  ## Example:

      delete_brand_profile_output() :: %{
        "brandProfileArn" => String.t() | atom(),
        "brandProfileId" => String.t() | atom()
      }

  """
  @type delete_brand_profile_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_notify_code_configuration_input() :: %{}

  """
  @type delete_notify_code_configuration_input() :: %{}

  @typedoc """

  ## Example:

      delete_notify_code_configuration_output() :: %{}

  """
  @type delete_notify_code_configuration_output() :: %{}

  @typedoc """

  ## Example:

      get_brand_profile_attribute_input() :: %{}

  """
  @type get_brand_profile_attribute_input() :: %{}

  @typedoc """

  ## Example:

      get_brand_profile_attribute_output() :: %{
        "attributeName" => String.t() | atom(),
        "attributeType" => list(any()),
        "attributeValue" => String.t() | atom(),
        "category" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "mediaContentType" => [String.t() | atom()],
        "mediaDownloadUrl" => String.t() | atom(),
        "mediaSizeBytes" => [float()],
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_brand_profile_attribute_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_brand_profile_input() :: %{}

  """
  @type get_brand_profile_input() :: %{}

  @typedoc """

  ## Example:

      get_brand_profile_output() :: %{
        "brandProfileArn" => String.t() | atom(),
        "brandProfileId" => String.t() | atom(),
        "brandProfileName" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "deletionProtectionEnabled" => [boolean()],
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type get_brand_profile_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_job_input() :: %{}

  """
  @type get_job_input() :: %{}

  @typedoc """

  ## Example:

      get_notify_code_configuration_input() :: %{}

  """
  @type get_notify_code_configuration_input() :: %{}

  @typedoc """

  ## Example:

      get_notify_code_configuration_output() :: %{
        "notifyCodeConfiguration" => notify_code_configuration()
      }

  """
  @type get_notify_code_configuration_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job() :: %{
        "brandProfileId" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "errorCode" => String.t() | atom(),
        "errorMessage" => String.t() | atom(),
        "jobId" => String.t() | atom(),
        "operationType" => String.t() | atom(),
        "resources" => list(job_resource()),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type job() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_resource() :: %{
        "resourceArn" => String.t() | atom(),
        "resourceId" => String.t() | atom(),
        "resourceType" => list(any())
      }

  """
  @type job_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_result() :: %{
        "jobId" => String.t() | atom(),
        "resourceIdentifier" => String.t() | atom()
      }

  """
  @type job_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_summary() :: %{
        "brandProfileId" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "errorCode" => String.t() | atom(),
        "errorMessage" => String.t() | atom(),
        "jobId" => String.t() | atom(),
        "operationType" => String.t() | atom(),
        "resources" => list(job_resource()),
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type job_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_brand_profile_attributes_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_brand_profile_attributes_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_brand_profile_attributes_output() :: %{
        "brandProfileAttributes" => list(brand_profile_attribute_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_brand_profile_attributes_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_brand_profiles_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_brand_profiles_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_brand_profiles_output() :: %{
        "brandProfiles" => list(brand_profile_info()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_brand_profiles_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_jobs_input() :: %{
        optional("brandProfileId") => String.t() | atom(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("operationType") => String.t() | atom(),
        optional("status") => list(any())
      }

  """
  @type list_jobs_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_jobs_output() :: %{
        "jobs" => list(job_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type list_jobs_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_notify_code_configurations_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_notify_code_configurations_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_notify_code_configurations_output() :: %{
        "nextToken" => String.t() | atom(),
        "notifyCodeConfigurations" => list(notify_code_configuration())
      }

  """
  @type list_notify_code_configurations_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_registrations_from_brand_profile_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type list_registrations_from_brand_profile_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_registrations_from_brand_profile_output() :: %{
        "nextToken" => String.t() | atom(),
        "registrationAssociations" => list(registration_association_summary())
      }

  """
  @type list_registrations_from_brand_profile_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_input() :: %{}

  """
  @type list_tags_for_resource_input() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        "tags" => list(tag())
      }

  """
  @type list_tags_for_resource_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      notify_code_configuration() :: %{
        "channelParameters" => channel_parameters(),
        "codeConfigurationParameters" => code_configuration_parameters(),
        "createdAt" => [non_neg_integer()],
        "deletionProtectionEnabled" => [boolean()],
        "notifyCodeConfigurationArn" => String.t() | atom(),
        "notifyCodeConfigurationId" => String.t() | atom(),
        "notifyCodeConfigurationName" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type notify_code_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      notify_parameters() :: %{
        "notifyTemplateId" => String.t() | atom(),
        "voiceId" => String.t() | atom()
      }

  """
  @type notify_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      registration_association_summary() :: %{
        "createdAt" => [non_neg_integer()],
        "registrationId" => String.t() | atom(),
        "registrationType" => String.t() | atom(),
        "smartMatchUsed" => [boolean()]
      }

  """
  @type registration_association_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | atom()],
        "resourceId" => [String.t() | atom()],
        "resourceType" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_notify_code_verification_input() :: %{
        optional("configurationSetName") => String.t() | atom(),
        optional("context") => map(),
        optional("notifyCodeConfiguration") => String.t() | atom(),
        optional("overrideChannelParameters") => channel_parameters(),
        optional("overrideCodeConfigurationParameters") => code_configuration_parameters(),
        optional("referenceId") => String.t() | atom(),
        required("channel") => list(any()),
        required("destinationIdentity") => String.t() | atom(),
        required("originationIdentity") => String.t() | atom()
      }

  """
  @type send_notify_code_verification_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_notify_code_verification_output() :: %{
        "messageId" => String.t() | atom(),
        "verificationId" => String.t() | atom()
      }

  """
  @type send_notify_code_verification_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "key" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        required("tags") => list(tag())
      }

  """
  @type tag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_output() :: %{}

  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:

      text_parameters() :: %{
        "destinationCountryParameters" => map(),
        "inlineTemplateBody" => String.t() | atom()
      }

  """
  @type text_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_output() :: %{}

  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:

      update_brand_profile_attribute_input() :: %{
        optional("attachmentBody") => [binary()],
        optional("attributeValue") => String.t() | atom(),
        optional("category") => String.t() | atom(),
        optional("description") => String.t() | atom()
      }

  """
  @type update_brand_profile_attribute_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_brand_profile_attribute_output() :: %{
        "attributeName" => String.t() | atom(),
        "attributeType" => list(any()),
        "attributeValue" => String.t() | atom(),
        "category" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "description" => String.t() | atom(),
        "mediaContentType" => [String.t() | atom()],
        "mediaSizeBytes" => [float()],
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type update_brand_profile_attribute_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_brand_profile_from_registration_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("onAttributeConflict") => list(any()),
        optional("smartMatch") => [boolean()],
        required("registrationId") => String.t() | atom()
      }

  """
  @type update_brand_profile_from_registration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_brand_profile_from_registration_output() :: %{
        "results" => list(job_result())
      }

  """
  @type update_brand_profile_from_registration_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_brand_profile_input() :: %{
        optional("brandProfileName") => String.t() | atom(),
        optional("deletionProtectionEnabled") => [boolean()]
      }

  """
  @type update_brand_profile_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_brand_profile_output() :: %{
        "brandProfileArn" => String.t() | atom(),
        "brandProfileId" => String.t() | atom(),
        "brandProfileName" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "deletionProtectionEnabled" => [boolean()],
        "status" => list(any()),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type update_brand_profile_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_channel_parameters() :: %{
        "notify" => update_notify_parameters(),
        "text" => update_text_parameters(),
        "voice" => update_voice_parameters(),
        "whatsApp" => update_whats_app_parameters()
      }

  """
  @type update_channel_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_code_configuration_parameters() :: %{
        "codeLength" => integer(),
        "codeType" => list(any()),
        "maxAttempts" => integer(),
        "validityPeriodMinutes" => integer()
      }

  """
  @type update_code_configuration_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_notify_code_configuration_input() :: %{
        optional("channelParameters") => update_channel_parameters(),
        optional("codeConfigurationParameters") => update_code_configuration_parameters(),
        optional("deletionProtectionEnabled") => [boolean()],
        optional("notifyCodeConfigurationName") => String.t() | atom()
      }

  """
  @type update_notify_code_configuration_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_notify_code_configuration_output() :: %{
        "notifyCodeConfiguration" => notify_code_configuration()
      }

  """
  @type update_notify_code_configuration_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_notify_parameters() :: %{
        "notifyTemplateId" => String.t() | atom(),
        "voiceId" => String.t() | atom()
      }

  """
  @type update_notify_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_registrations_from_brand_profile_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("onAttributeConflict") => list(any()),
        optional("smartMatch") => [boolean()],
        required("registrationIds") => list(String.t() | atom())
      }

  """
  @type update_registrations_from_brand_profile_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_registrations_from_brand_profile_output() :: %{
        "results" => list(job_result())
      }

  """
  @type update_registrations_from_brand_profile_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_text_parameters() :: %{
        "destinationCountryParameters" => map(),
        "inlineTemplateBody" => String.t() | atom()
      }

  """
  @type update_text_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_voice_parameters() :: %{
        "inlineTemplateBody" => String.t() | atom(),
        "languageCode" => String.t() | atom(),
        "voiceId" => String.t() | atom(),
        "voiceMessageBodyTextType" => list(any())
      }

  """
  @type update_voice_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_whats_app_parameters() :: %{
        "languageCode" => String.t() | atom(),
        "whatsAppTemplateName" => String.t() | atom()
      }

  """
  @type update_whats_app_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validate_notify_code_verification_input() :: %{
        optional("referenceId") => String.t() | atom(),
        required("code") => String.t() | atom(),
        required("destinationIdentity") => String.t() | atom()
      }

  """
  @type validate_notify_code_verification_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validate_notify_code_verification_output() :: %{
        "status" => list(any())
      }

  """
  @type validate_notify_code_verification_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => [String.t() | atom()],
        "path" => [String.t() | atom()]
      }

  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      voice_parameters() :: %{
        "inlineTemplateBody" => String.t() | atom(),
        "languageCode" => String.t() | atom(),
        "voiceId" => String.t() | atom(),
        "voiceMessageBodyTextType" => list(any())
      }

  """
  @type voice_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      whats_app_parameters() :: %{
        "languageCode" => String.t() | atom(),
        "whatsAppTemplateName" => String.t() | atom()
      }

  """
  @type whats_app_parameters() :: %{(String.t() | atom()) => any()}

  @type create_brand_profile_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_brand_profile_attributes_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_brand_profile_from_registration_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_notify_code_configuration_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_registrations_from_brand_profile_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_brand_profile_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_brand_profile_attribute_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_notify_code_configuration_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type get_brand_profile_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_brand_profile_attribute_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_job_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_notify_code_configuration_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_brand_profile_attributes_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_brand_profiles_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_jobs_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_notify_code_configurations_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_registrations_from_brand_profile_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type send_notify_code_verification_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type tag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type untag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type update_brand_profile_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type update_brand_profile_attribute_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type update_brand_profile_from_registration_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type update_notify_code_configuration_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type update_registrations_from_brand_profile_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type validate_notify_code_verification_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2026-09-21",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "end-user-messaging",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "EndUserMessaging",
      signature_version: "v4",
      signing_name: "end-user-messaging",
      target_prefix: nil
    }
  end

  @doc """
  Creates a brand profile.

  A brand profile is a lightweight container that holds your brand identity
  information as flexible attributes. After you create a brand profile, use the
  CreateBrandProfileAttributes operation to add company information, addresses,
  compliance documents, and logos.
  """
  @spec create_brand_profile(map(), create_brand_profile_input(), list()) ::
          {:ok, create_brand_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_brand_profile_errors()}
  def create_brand_profile(%Client{} = client, input, options \\ []) do
    url_path = "/v1/brand-profiles"
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
  Creates up to 10 attributes for a brand profile in a single request.

  For attributes of type IMAGE or DOCUMENT, the response includes a presigned
  Amazon S3 URL that you use to upload the media. This operation is atomic: either
  all of the attributes are created, or none of them are.
  """
  @spec create_brand_profile_attributes(
          map(),
          String.t() | atom(),
          create_brand_profile_attributes_input(),
          list()
        ) ::
          {:ok, create_brand_profile_attributes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_brand_profile_attributes_errors()}
  def create_brand_profile_attributes(%Client{} = client, brand_profile_id, input, options \\ []) do
    url_path = "/v1/brand-profiles/#{AWS.Util.encode_uri(brand_profile_id)}/attributes"
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
  Creates a brand profile and populates its attributes from an existing
  registration.

  This operation runs asynchronously. Use the GetJob operation to track its
  progress.
  """
  @spec create_brand_profile_from_registration(
          map(),
          create_brand_profile_from_registration_input(),
          list()
        ) ::
          {:ok, create_brand_profile_from_registration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_brand_profile_from_registration_errors()}
  def create_brand_profile_from_registration(%Client{} = client, input, options \\ []) do
    url_path = "/v1/brand-profiles/create-from-registration"
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
  Creates a notify code configuration.

  A notify code configuration is a reusable policy that defines how one-time
  passcodes are generated and rendered, including the code type, length, validity
  period, maximum number of attempts, and channel templates.
  """
  @spec create_notify_code_configuration(map(), create_notify_code_configuration_input(), list()) ::
          {:ok, create_notify_code_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_notify_code_configuration_errors()}
  def create_notify_code_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/v1/notify-code-configurations"
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
  Creates one or more registrations in the DRAFT state and prefills their fields
  from the attributes of a brand profile.

  This operation runs asynchronously. Use the GetJob operation to track its
  progress.
  """
  @spec create_registrations_from_brand_profile(
          map(),
          String.t() | atom(),
          create_registrations_from_brand_profile_input(),
          list()
        ) ::
          {:ok, create_registrations_from_brand_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_registrations_from_brand_profile_errors()}
  def create_registrations_from_brand_profile(
        %Client{} = client,
        brand_profile_id,
        input,
        options \\ []
      ) do
    url_path = "/v1/brand-profiles/#{AWS.Util.encode_uri(brand_profile_id)}/create-registrations"
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
  Deletes a brand profile.

  This operation also deletes the attributes of the profile and any associated
  media. The request fails if deletion protection is enabled for the profile.
  """
  @spec delete_brand_profile(map(), String.t() | atom(), delete_brand_profile_input(), list()) ::
          {:ok, delete_brand_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_brand_profile_errors()}
  def delete_brand_profile(%Client{} = client, brand_profile_id, input, options \\ []) do
    url_path = "/v1/brand-profiles/#{AWS.Util.encode_multi_segment_uri(brand_profile_id)}"
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
  Deletes a brand profile attribute.

  If the attribute stores media, this operation also deletes the associated media.
  """
  @spec delete_brand_profile_attribute(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_brand_profile_attribute_input(),
          list()
        ) ::
          {:ok, delete_brand_profile_attribute_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_brand_profile_attribute_errors()}
  def delete_brand_profile_attribute(
        %Client{} = client,
        attribute_name,
        brand_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/brand-profiles/#{AWS.Util.encode_uri(brand_profile_id)}/attributes/#{AWS.Util.encode_uri(attribute_name)}"

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
  Deletes a notify code configuration.

  Verifications that are already in progress are not affected, because they
  capture the policy at the time that the passcode was sent.
  """
  @spec delete_notify_code_configuration(
          map(),
          String.t() | atom(),
          delete_notify_code_configuration_input(),
          list()
        ) ::
          {:ok, delete_notify_code_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_notify_code_configuration_errors()}
  def delete_notify_code_configuration(
        %Client{} = client,
        notify_code_configuration_id,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/notify-code-configurations/#{AWS.Util.encode_multi_segment_uri(notify_code_configuration_id)}"

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
  Retrieves the metadata for a brand profile, including its name, status, deletion
  protection setting, and timestamps.

  To retrieve the attributes of the profile, use the ListBrandProfileAttributes
  operation.
  """
  @spec get_brand_profile(map(), String.t() | atom(), list()) ::
          {:ok, get_brand_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_brand_profile_errors()}
  def get_brand_profile(%Client{} = client, brand_profile_id, options \\ []) do
    url_path = "/v1/brand-profiles/#{AWS.Util.encode_multi_segment_uri(brand_profile_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a single brand profile attribute.
  """
  @spec get_brand_profile_attribute(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_brand_profile_attribute_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_brand_profile_attribute_errors()}
  def get_brand_profile_attribute(
        %Client{} = client,
        attribute_name,
        brand_profile_id,
        options \\ []
      ) do
    url_path =
      "/v1/brand-profiles/#{AWS.Util.encode_uri(brand_profile_id)}/attributes/#{AWS.Util.encode_uri(attribute_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the current state of an asynchronous job, including its status and any
  resources that it created or updated.
  """
  @spec get_job(map(), String.t() | atom(), list()) ::
          {:ok, job(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_job_errors()}
  def get_job(%Client{} = client, job_id, options \\ []) do
    url_path = "/v1/jobs/#{AWS.Util.encode_uri(job_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a notify code configuration.
  """
  @spec get_notify_code_configuration(map(), String.t() | atom(), list()) ::
          {:ok, get_notify_code_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_notify_code_configuration_errors()}
  def get_notify_code_configuration(
        %Client{} = client,
        notify_code_configuration_id,
        options \\ []
      ) do
    url_path =
      "/v1/notify-code-configurations/#{AWS.Util.encode_multi_segment_uri(notify_code_configuration_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of the attributes for a brand profile.
  """
  @spec list_brand_profile_attributes(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_brand_profile_attributes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_brand_profile_attributes_errors()}
  def list_brand_profile_attributes(
        %Client{} = client,
        brand_profile_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/brand-profiles/#{AWS.Util.encode_uri(brand_profile_id)}/attributes"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of the brand profiles in your account.

  Use the nextToken parameter to retrieve additional results.
  """
  @spec list_brand_profiles(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_brand_profiles_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_brand_profiles_errors()}
  def list_brand_profiles(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/brand-profiles"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of the asynchronous jobs in your account.

  You can filter the results by status, brand profile, or operation type.
  """
  @spec list_jobs(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_jobs_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_jobs_errors()}
  def list_jobs(
        %Client{} = client,
        brand_profile_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        operation_type \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/v1/jobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(brand_profile_id) do
        [{"brandProfileId", brand_profile_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(operation_type) do
        [{"operationType", operation_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of the notify code configurations in your account.
  """
  @spec list_notify_code_configurations(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_notify_code_configurations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_notify_code_configurations_errors()}
  def list_notify_code_configurations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/notify-code-configurations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a paginated list of the registrations that were created from a brand
  profile through the synchronization operations.
  """
  @spec list_registrations_from_brand_profile(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_registrations_from_brand_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_registrations_from_brand_profile_errors()}
  def list_registrations_from_brand_profile(
        %Client{} = client,
        brand_profile_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/brand-profiles/#{AWS.Util.encode_uri(brand_profile_id)}/registrations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the tags that are associated with a resource.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Generates a one-time passcode and delivers it to a recipient over the requested
  channel.

  The passcode policy is captured from the referenced notify code configuration at
  the time of the request, so later updates to the configuration do not affect
  verifications that are already in progress.
  """
  @spec send_notify_code_verification(map(), send_notify_code_verification_input(), list()) ::
          {:ok, send_notify_code_verification_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_notify_code_verification_errors()}
  def send_notify_code_verification(%Client{} = client, input, options \\ []) do
    url_path = "/v1/notify-code-verifications/send"
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
  Adds or overwrites the tags on a resource.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_input(), list()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Removes the specified tags from a resource.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_input(), list()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Updates the name or the deletion protection setting of a brand profile.

  To change the information that is stored in the profile, use the brand profile
  attribute operations.
  """
  @spec update_brand_profile(map(), String.t() | atom(), update_brand_profile_input(), list()) ::
          {:ok, update_brand_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_brand_profile_errors()}
  def update_brand_profile(%Client{} = client, brand_profile_id, input, options \\ []) do
    url_path = "/v1/brand-profiles/#{AWS.Util.encode_multi_segment_uri(brand_profile_id)}"
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
  Updates the value, description, or category of an existing brand profile
  attribute.
  """
  @spec update_brand_profile_attribute(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_brand_profile_attribute_input(),
          list()
        ) ::
          {:ok, update_brand_profile_attribute_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_brand_profile_attribute_errors()}
  def update_brand_profile_attribute(
        %Client{} = client,
        attribute_name,
        brand_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/brand-profiles/#{AWS.Util.encode_uri(brand_profile_id)}/attributes/#{AWS.Util.encode_uri(attribute_name)}"

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
  Imports or refreshes the attributes of an existing brand profile from an
  existing registration.

  This operation runs asynchronously. Use the GetJob operation to track its
  progress.
  """
  @spec update_brand_profile_from_registration(
          map(),
          String.t() | atom(),
          update_brand_profile_from_registration_input(),
          list()
        ) ::
          {:ok, update_brand_profile_from_registration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_brand_profile_from_registration_errors()}
  def update_brand_profile_from_registration(
        %Client{} = client,
        brand_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/brand-profiles/#{AWS.Util.encode_uri(brand_profile_id)}/update-from-registration"

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
  Updates the mutable fields of a notify code configuration.

  Only the fields that you supply are changed. For the template and language
  fields, supplying an empty value clears the currently stored value.
  """
  @spec update_notify_code_configuration(
          map(),
          String.t() | atom(),
          update_notify_code_configuration_input(),
          list()
        ) ::
          {:ok, update_notify_code_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_notify_code_configuration_errors()}
  def update_notify_code_configuration(
        %Client{} = client,
        notify_code_configuration_id,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/notify-code-configurations/#{AWS.Util.encode_multi_segment_uri(notify_code_configuration_id)}"

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
  Repushes the attributes of a brand profile into existing DRAFT registrations.

  This operation runs asynchronously. Use the GetJob operation to track its
  progress.
  """
  @spec update_registrations_from_brand_profile(
          map(),
          String.t() | atom(),
          update_registrations_from_brand_profile_input(),
          list()
        ) ::
          {:ok, update_registrations_from_brand_profile_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_registrations_from_brand_profile_errors()}
  def update_registrations_from_brand_profile(
        %Client{} = client,
        brand_profile_id,
        input,
        options \\ []
      ) do
    url_path = "/v1/brand-profiles/#{AWS.Util.encode_uri(brand_profile_id)}/update-registrations"
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
  Validates a one-time passcode that a recipient submitted.

  Validation succeeds when the passcode matches, the validity period has not
  elapsed, and the maximum number of attempts has not been exceeded.
  """
  @spec validate_notify_code_verification(
          map(),
          validate_notify_code_verification_input(),
          list()
        ) ::
          {:ok, validate_notify_code_verification_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, validate_notify_code_verification_errors()}
  def validate_notify_code_verification(%Client{} = client, input, options \\ []) do
    url_path = "/v1/notify-code-verifications/validate"
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
