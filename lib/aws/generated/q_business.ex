# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.QBusiness do
  @moduledoc """
  This is the *Amazon Q Business* API Reference.

  Amazon Q Business is a fully
  managed, generative-AI powered enterprise chat assistant that you can deploy
  within your
  organization. Amazon Q Business enhances employee productivity by supporting key
  tasks such
  as question-answering, knowledge discovery, writing email messages, summarizing
  text,
  drafting document outlines, and brainstorming ideas. Users ask questions of
  Amazon Q Business and get answers that are presented in a conversational manner.
  For an
  introduction to the service, see the [
  *Amazon Q Business User Guide*
  ](https://docs.aws.amazon.com/amazonq/latest/business-use-dg/what-is.html).

  For an overview of the Amazon Q Business APIs, see [Overview of Amazon Q Business API
  operations](https://docs.aws.amazon.com/amazonq/latest/business-use-dg/api-ref.html#api-overview).

  For information about the IAM access control permissions you need to
  use this API, see [IAM roles for Amazon Q Business](https://docs.aws.amazon.com/amazonq/latest/business-use-dg/iam-roles.html)
  in the
  *Amazon Q Business User Guide*.

  The following resources provide additional information about using the Amazon Q
  Business
  API:

    *

  *
  [Setting up for Amazon Q
  Business](https://docs.aws.amazon.com/amazonq/latest/business-use-dg/setting-up.html)
  *

    *

  *
  [Amazon Q Business CLI Reference](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/qbusiness/index.html)
  *

    *

  *
  [Amazon Web Services General Reference](https://docs.aws.amazon.com/general/latest/gr/amazonq.html)
  *
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      source_attribution() :: %{
        "citationNumber" => integer(),
        "snippet" => String.t(),
        "textMessageSegments" => list(text_segment()()),
        "title" => String.t(),
        "updatedAt" => non_neg_integer(),
        "url" => String.t()
      }

  """
  @type source_attribution() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      applied_attachments_configuration() :: %{
        "attachmentsControlMode" => list(any())
      }

  """
  @type applied_attachments_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_feedback_request() :: %{
        optional("messageCopiedAt") => non_neg_integer(),
        optional("messageUsefulness") => message_usefulness_feedback(),
        optional("userId") => String.t()
      }

  """
  @type put_feedback_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      encryption_configuration() :: %{
        "kmsKeyId" => String.t()
      }

  """
  @type encryption_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => list(tag()())
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_web_experience_response() :: %{
        "webExperienceArn" => String.t(),
        "webExperienceId" => String.t()
      }

  """
  @type create_web_experience_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      auth_challenge_response_event() :: %{
        "responseMap" => map()
      }

  """
  @type auth_challenge_response_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_source_vpc_configuration() :: %{
        "securityGroupIds" => list(String.t()()),
        "subnetIds" => list(String.t()())
      }

  """
  @type data_source_vpc_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_retriever_response() :: %{
        "retrieverArn" => String.t(),
        "retrieverId" => String.t()
      }

  """
  @type create_retriever_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_web_experiences_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_web_experiences_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      index_capacity_configuration() :: %{
        "units" => integer()
      }

  """
  @type index_capacity_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_web_experience_request() :: %{}

  """
  @type delete_web_experience_request() :: %{}

  @typedoc """

  ## Example:

      document_attribute() :: %{
        "name" => String.t(),
        "value" => list()
      }

  """
  @type document_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      plugin() :: %{
        "buildStatus" => list(any()),
        "createdAt" => non_neg_integer(),
        "displayName" => String.t(),
        "pluginId" => String.t(),
        "serverUrl" => String.t(),
        "state" => list(any()),
        "type" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type plugin() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      string_list_attribute_boosting_configuration() :: %{
        "boostingLevel" => list(any())
      }

  """
  @type string_list_attribute_boosting_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_user_response() :: %{
        "userAliasesAdded" => list(user_alias()()),
        "userAliasesDeleted" => list(user_alias()()),
        "userAliasesUpdated" => list(user_alias()())
      }

  """
  @type update_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_data_source_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("documentEnrichmentConfiguration") => document_enrichment_configuration(),
        optional("roleArn") => String.t(),
        optional("syncSchedule") => String.t(),
        optional("tags") => list(tag()()),
        optional("vpcConfiguration") => data_source_vpc_configuration(),
        required("configuration") => any(),
        required("displayName") => String.t()
      }

  """
  @type create_data_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      action_review_event() :: %{
        "conversationId" => String.t(),
        "payload" => map(),
        "payloadFieldNameSeparator" => String.t(),
        "pluginId" => String.t(),
        "pluginType" => list(any()),
        "systemMessageId" => String.t(),
        "userMessageId" => String.t()
      }

  """
  @type action_review_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      text_output_event() :: %{
        "conversationId" => String.t(),
        "systemMessage" => String.t(),
        "systemMessageId" => String.t(),
        "userMessageId" => String.t()
      }

  """
  @type text_output_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      get_retriever_response() :: %{
        "applicationId" => String.t(),
        "configuration" => list(),
        "createdAt" => non_neg_integer(),
        "displayName" => String.t(),
        "retrieverArn" => String.t(),
        "retrieverId" => String.t(),
        "roleArn" => String.t(),
        "status" => list(any()),
        "type" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_retriever_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      o_auth2_client_credential_configuration() :: %{
        "roleArn" => String.t(),
        "secretArn" => String.t()
      }

  """
  @type o_auth2_client_credential_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member_group() :: %{
        "groupName" => String.t(),
        "type" => list(any())
      }

  """
  @type member_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_index_request() :: %{}

  """
  @type delete_index_request() :: %{}

  @typedoc """

  ## Example:

      plugin_configuration() :: %{
        "pluginId" => String.t()
      }

  """
  @type plugin_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      content_blocker_rule() :: %{
        "systemMessageOverride" => String.t()
      }

  """
  @type content_blocker_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      failed_attachment_event() :: %{
        "attachment" => attachment_output(),
        "conversationId" => String.t(),
        "systemMessageId" => String.t(),
        "userMessageId" => String.t()
      }

  """
  @type failed_attachment_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      principal_user() :: %{
        "access" => list(any()),
        "id" => String.t(),
        "membershipType" => list(any())
      }

  """
  @type principal_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_document() :: %{
        "documentId" => String.t()
      }

  """
  @type delete_document() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      auth_challenge_request_event() :: %{
        "authorizationUrl" => String.t()
      }

  """
  @type auth_challenge_request_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      document_attribute_target() :: %{
        "attributeValueOperator" => list(any()),
        "key" => String.t(),
        "value" => list()
      }

  """
  @type document_attribute_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_messages_response() :: %{
        "messages" => list(message()()),
        "nextToken" => String.t()
      }

  """
  @type list_messages_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_source_sync_job_metrics() :: %{
        "documentsAdded" => String.t(),
        "documentsDeleted" => String.t(),
        "documentsFailed" => String.t(),
        "documentsModified" => String.t(),
        "documentsScanned" => String.t()
      }

  """
  @type data_source_sync_job_metrics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      license_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type license_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_group_response() :: %{}

  """
  @type put_group_response() :: %{}

  @typedoc """

  ## Example:

      create_plugin_response() :: %{
        "buildStatus" => list(any()),
        "pluginArn" => String.t(),
        "pluginId" => String.t()
      }

  """
  @type create_plugin_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_user_response() :: %{
        "userAliases" => list(user_alias()())
      }

  """
  @type get_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_conversation_request() :: %{
        optional("userId") => String.t()
      }

  """
  @type delete_conversation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_retriever_request() :: %{
        optional("clientToken") => String.t(),
        optional("roleArn") => String.t(),
        optional("tags") => list(tag()()),
        required("configuration") => list(),
        required("displayName") => String.t(),
        required("type") => list(any())
      }

  """
  @type create_retriever_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_auth_configuration() :: %{}

  """
  @type no_auth_configuration() :: %{}

  @typedoc """

  ## Example:

      delete_web_experience_response() :: %{}

  """
  @type delete_web_experience_response() :: %{}

  @typedoc """

  ## Example:

      list_web_experiences_response() :: %{
        "nextToken" => String.t(),
        "webExperiences" => list(web_experience()())
      }

  """
  @type list_web_experiences_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      action_review() :: %{
        "payload" => map(),
        "payloadFieldNameSeparator" => String.t(),
        "pluginId" => String.t(),
        "pluginType" => list(any())
      }

  """
  @type action_review() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_data_source_response() :: %{}

  """
  @type update_data_source_response() :: %{}

  @typedoc """

  ## Example:

      topic_configuration() :: %{
        "description" => String.t(),
        "exampleChatMessages" => list(String.t()()),
        "name" => String.t(),
        "rules" => list(rule()())
      }

  """
  @type topic_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_retriever_request() :: %{
        optional("configuration") => list(),
        optional("displayName") => String.t(),
        optional("roleArn") => String.t()
      }

  """
  @type update_retriever_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      text_input_event() :: %{
        "userMessage" => String.t()
      }

  """
  @type text_input_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_alias() :: %{
        "dataSourceId" => String.t(),
        "indexId" => String.t(),
        "userId" => String.t()
      }

  """
  @type user_alias() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      basic_auth_configuration() :: %{
        "roleArn" => String.t(),
        "secretArn" => String.t()
      }

  """
  @type basic_auth_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      document_attribute_condition() :: %{
        "key" => String.t(),
        "operator" => list(any()),
        "value" => list()
      }

  """
  @type document_attribute_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_indices_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_indices_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_index_response() :: %{}

  """
  @type delete_index_response() :: %{}

  @typedoc """

  ## Example:

      list_documents_response() :: %{
        "documentDetailList" => list(document_details()()),
        "nextToken" => String.t()
      }

  """
  @type list_documents_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_plugin_request() :: %{
        optional("clientToken") => String.t(),
        optional("customPluginConfiguration") => custom_plugin_configuration(),
        optional("serverUrl") => String.t(),
        optional("tags") => list(tag()()),
        required("authConfiguration") => list(),
        required("displayName") => String.t(),
        required("type") => list(any())
      }

  """
  @type create_plugin_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metadata_event() :: %{
        "conversationId" => String.t(),
        "finalTextMessage" => String.t(),
        "sourceAttributions" => list(source_attribution()()),
        "systemMessageId" => String.t(),
        "userMessageId" => String.t()
      }

  """
  @type metadata_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      chat_sync_output() :: %{
        "actionReview" => action_review(),
        "authChallengeRequest" => auth_challenge_request(),
        "conversationId" => String.t(),
        "failedAttachments" => list(attachment_output()()),
        "sourceAttributions" => list(source_attribution()()),
        "systemMessage" => String.t(),
        "systemMessageId" => String.t(),
        "userMessageId" => String.t()
      }

  """
  @type chat_sync_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_plugin_request() :: %{}

  """
  @type get_plugin_request() :: %{}

  @typedoc """

  ## Example:

      update_chat_controls_configuration_response() :: %{}

  """
  @type update_chat_controls_configuration_response() :: %{}

  @typedoc """

  ## Example:

      list_data_sources_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_data_sources_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_conversation_response() :: %{}

  """
  @type delete_conversation_response() :: %{}

  @typedoc """

  ## Example:

      delete_data_source_response() :: %{}

  """
  @type delete_data_source_response() :: %{}

  @typedoc """

  ## Example:

      index() :: %{
        "createdAt" => non_neg_integer(),
        "displayName" => String.t(),
        "indexId" => String.t(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type index() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      document_attribute_configuration() :: %{
        "name" => String.t(),
        "search" => list(any()),
        "type" => list(any())
      }

  """
  @type document_attribute_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_web_experience_response() :: %{}

  """
  @type update_web_experience_response() :: %{}

  @typedoc """

  ## Example:

      create_web_experience_request() :: %{
        optional("clientToken") => String.t(),
        optional("identityProviderConfiguration") => list(),
        optional("origins") => list(String.t()()),
        optional("roleArn") => String.t(),
        optional("samplePromptsControlMode") => list(any()),
        optional("subtitle") => String.t(),
        optional("tags") => list(tag()()),
        optional("title") => String.t(),
        optional("welcomeMessage") => String.t()
      }

  """
  @type create_web_experience_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      web_experience() :: %{
        "createdAt" => non_neg_integer(),
        "defaultEndpoint" => String.t(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer(),
        "webExperienceId" => String.t()
      }

  """
  @type web_experience() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_data_source_sync_job_request() :: %{}

  """
  @type start_data_source_sync_job_request() :: %{}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_plugin_response() :: %{}

  """
  @type update_plugin_response() :: %{}

  @typedoc """

  ## Example:

      inline_document_enrichment_configuration() :: %{
        "condition" => document_attribute_condition(),
        "documentContentOperator" => list(any()),
        "target" => document_attribute_target()
      }

  """
  @type inline_document_enrichment_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_user_request() :: %{}

  """
  @type get_user_request() :: %{}

  @typedoc """

  ## Example:

      start_data_source_sync_job_response() :: %{
        "executionId" => String.t()
      }

  """
  @type start_data_source_sync_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "key" => String.t(),
        "value" => String.t()
      }

  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_web_experience_response() :: %{
        "applicationId" => String.t(),
        "authenticationConfiguration" => list(),
        "createdAt" => non_neg_integer(),
        "defaultEndpoint" => String.t(),
        "error" => error_detail(),
        "identityProviderConfiguration" => list(),
        "origins" => list(String.t()()),
        "roleArn" => String.t(),
        "samplePromptsControlMode" => list(any()),
        "status" => list(any()),
        "subtitle" => String.t(),
        "title" => String.t(),
        "updatedAt" => non_neg_integer(),
        "webExperienceArn" => String.t(),
        "webExperienceId" => String.t(),
        "welcomeMessage" => String.t()
      }

  """
  @type get_web_experience_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_retrievers_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_retrievers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_retrievers_response() :: %{
        "nextToken" => String.t(),
        "retrievers" => list(retriever()())
      }

  """
  @type list_retrievers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_document_response() :: %{
        "failedDocuments" => list(failed_document()())
      }

  """
  @type batch_delete_document_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      chat_sync_input() :: %{
        optional("actionExecution") => action_execution(),
        optional("attachments") => list(attachment_input()()),
        optional("attributeFilter") => attribute_filter(),
        optional("authChallengeResponse") => auth_challenge_response(),
        optional("chatMode") => list(any()),
        optional("chatModeConfiguration") => list(),
        optional("clientToken") => String.t(),
        optional("conversationId") => String.t(),
        optional("parentMessageId") => String.t(),
        optional("userGroups") => list(String.t()()),
        optional("userId") => String.t(),
        optional("userMessage") => String.t()
      }

  """
  @type chat_sync_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      applied_creator_mode_configuration() :: %{
        "creatorModeControl" => list(any())
      }

  """
  @type applied_creator_mode_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      action_execution() :: %{
        "payload" => map(),
        "payloadFieldNameSeparator" => String.t(),
        "pluginId" => String.t()
      }

  """
  @type action_execution() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      member_user() :: %{
        "type" => list(any()),
        "userId" => String.t()
      }

  """
  @type member_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kendra_index_configuration() :: %{
        "indexId" => String.t()
      }

  """
  @type kendra_index_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_data_source_request() :: %{}

  """
  @type get_data_source_request() :: %{}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t(),
        "resourceId" => String.t(),
        "resourceType" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_control() :: %{
        "memberRelation" => list(any()),
        "principals" => list(list()())
      }

  """
  @type access_control() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_plugin_configuration() :: %{
        "apiSchema" => list(),
        "apiSchemaType" => list(any()),
        "description" => String.t()
      }

  """
  @type custom_plugin_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_web_experience_request() :: %{
        optional("authenticationConfiguration") => list(),
        optional("identityProviderConfiguration") => list(),
        optional("origins") => list(String.t()()),
        optional("roleArn") => String.t(),
        optional("samplePromptsControlMode") => list(any()),
        optional("subtitle") => String.t(),
        optional("title") => String.t(),
        optional("welcomeMessage") => String.t()
      }

  """
  @type update_web_experience_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      application() :: %{
        "applicationId" => String.t(),
        "createdAt" => non_neg_integer(),
        "displayName" => String.t(),
        "identityType" => list(any()),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type application() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      number_attribute_boosting_configuration() :: %{
        "boostingLevel" => list(any()),
        "boostingType" => list(any())
      }

  """
  @type number_attribute_boosting_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      string_attribute_boosting_configuration() :: %{
        "attributeValueBoosting" => map(),
        "boostingLevel" => list(any())
      }

  """
  @type string_attribute_boosting_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_conversations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("userId") => String.t()
      }

  """
  @type list_conversations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_sources_response() :: %{
        "dataSources" => list(data_source()()),
        "nextToken" => String.t()
      }

  """
  @type list_data_sources_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_data_source_request() :: %{}

  """
  @type delete_data_source_request() :: %{}

  @typedoc """

  ## Example:

      delete_retriever_request() :: %{}

  """
  @type delete_retriever_request() :: %{}

  @typedoc """

  ## Example:

      personalization_configuration() :: %{
        "personalizationControlMode" => list(any())
      }

  """
  @type personalization_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attachment_input() :: %{
        "data" => binary(),
        "name" => String.t()
      }

  """
  @type attachment_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group_status_detail() :: %{
        "errorDetail" => error_detail(),
        "lastUpdatedAt" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type group_status_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => list(tag()())
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      auto_subscription_configuration() :: %{
        "autoSubscribe" => list(any()),
        "defaultSubscriptionType" => list(any())
      }

  """
  @type auto_subscription_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_application_request() :: %{
        optional("attachmentsConfiguration") => attachments_configuration(),
        optional("clientIdsForOIDC") => list(String.t()()),
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("encryptionConfiguration") => encryption_configuration(),
        optional("iamIdentityProviderArn") => String.t(),
        optional("identityCenterInstanceArn") => String.t(),
        optional("identityType") => list(any()),
        optional("personalizationConfiguration") => personalization_configuration(),
        optional("qAppsConfiguration") => q_apps_configuration(),
        optional("roleArn") => String.t(),
        optional("tags") => list(tag()()),
        required("displayName") => String.t()
      }

  """
  @type create_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      text_segment() :: %{
        "beginOffset" => integer(),
        "endOffset" => integer(),
        "snippetExcerpt" => snippet_excerpt()
      }

  """
  @type text_segment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_plugin_response() :: %{
        "applicationId" => String.t(),
        "authConfiguration" => list(),
        "buildStatus" => list(any()),
        "createdAt" => non_neg_integer(),
        "customPluginConfiguration" => custom_plugin_configuration(),
        "displayName" => String.t(),
        "pluginArn" => String.t(),
        "pluginId" => String.t(),
        "serverUrl" => String.t(),
        "state" => list(any()),
        "type" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_plugin_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hook_configuration() :: %{
        "invocationCondition" => document_attribute_condition(),
        "lambdaArn" => String.t(),
        "roleArn" => String.t(),
        "s3BucketName" => String.t()
      }

  """
  @type hook_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "message" => String.t(),
        "name" => String.t()
      }

  """
  @type validation_exception_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conversation() :: %{
        "conversationId" => String.t(),
        "startTime" => non_neg_integer(),
        "title" => String.t()
      }

  """
  @type conversation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_plugins_response() :: %{
        "nextToken" => String.t(),
        "plugins" => list(plugin()())
      }

  """
  @type list_plugins_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_application_response() :: %{
        "applicationArn" => String.t(),
        "applicationId" => String.t()
      }

  """
  @type create_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_documents_request() :: %{
        optional("dataSourceIds") => list(String.t()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_documents_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      chat_output() :: %{
        "outputStream" => list()
      }

  """
  @type chat_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      blocked_phrases_configuration() :: %{
        "blockedPhrases" => list(String.t()()),
        "systemMessageOverride" => String.t()
      }

  """
  @type blocked_phrases_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_indices_response() :: %{
        "indices" => list(index()()),
        "nextToken" => String.t()
      }

  """
  @type list_indices_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_source_sync_job() :: %{
        "dataSourceErrorCode" => String.t(),
        "endTime" => non_neg_integer(),
        "error" => error_detail(),
        "executionId" => String.t(),
        "metrics" => data_source_sync_job_metrics(),
        "startTime" => non_neg_integer(),
        "status" => list(any())
      }

  """
  @type data_source_sync_job() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_user_request() :: %{}

  """
  @type delete_user_request() :: %{}

  @typedoc """

  ## Example:

      rule() :: %{
        "excludedUsersAndGroups" => users_and_groups(),
        "includedUsersAndGroups" => users_and_groups(),
        "ruleConfiguration" => list(),
        "ruleType" => list(any())
      }

  """
  @type rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_plugins_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_plugins_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_data_source_sync_job_request() :: %{}

  """
  @type stop_data_source_sync_job_request() :: %{}

  @typedoc """

  ## Example:

      delete_plugin_response() :: %{}

  """
  @type delete_plugin_response() :: %{}

  @typedoc """

  ## Example:

      delete_application_response() :: %{}

  """
  @type delete_application_response() :: %{}

  @typedoc """

  ## Example:

      delete_user_response() :: %{}

  """
  @type delete_user_response() :: %{}

  @typedoc """

  ## Example:

      blocked_phrases_configuration_update() :: %{
        "blockedPhrasesToCreateOrUpdate" => list(String.t()()),
        "blockedPhrasesToDelete" => list(String.t()()),
        "systemMessageOverride" => String.t()
      }

  """
  @type blocked_phrases_configuration_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      message_usefulness_feedback() :: %{
        "comment" => String.t(),
        "reason" => list(any()),
        "submittedAt" => non_neg_integer(),
        "usefulness" => list(any())
      }

  """
  @type message_usefulness_feedback() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      action_execution_event() :: %{
        "payload" => map(),
        "payloadFieldNameSeparator" => String.t(),
        "pluginId" => String.t()
      }

  """
  @type action_execution_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_application_request() :: %{
        optional("attachmentsConfiguration") => attachments_configuration(),
        optional("autoSubscriptionConfiguration") => auto_subscription_configuration(),
        optional("description") => String.t(),
        optional("displayName") => String.t(),
        optional("identityCenterInstanceArn") => String.t(),
        optional("personalizationConfiguration") => personalization_configuration(),
        optional("qAppsConfiguration") => q_apps_configuration(),
        optional("roleArn") => String.t()
      }

  """
  @type update_application_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_application_response() :: %{}

  """
  @type update_application_response() :: %{}

  @typedoc """

  ## Example:

      delete_chat_controls_configuration_response() :: %{}

  """
  @type delete_chat_controls_configuration_response() :: %{}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_data_source_response() :: %{
        "dataSourceArn" => String.t(),
        "dataSourceId" => String.t()
      }

  """
  @type create_data_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      document_details() :: %{
        "createdAt" => non_neg_integer(),
        "documentId" => String.t(),
        "error" => error_detail(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type document_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_web_experience_request() :: %{}

  """
  @type get_web_experience_request() :: %{}

  @typedoc """

  ## Example:

      get_application_response() :: %{
        "applicationArn" => String.t(),
        "applicationId" => String.t(),
        "attachmentsConfiguration" => applied_attachments_configuration(),
        "autoSubscriptionConfiguration" => auto_subscription_configuration(),
        "clientIdsForOIDC" => list(String.t()()),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "displayName" => String.t(),
        "encryptionConfiguration" => encryption_configuration(),
        "error" => error_detail(),
        "iamIdentityProviderArn" => String.t(),
        "identityCenterApplicationArn" => String.t(),
        "identityType" => list(any()),
        "personalizationConfiguration" => personalization_configuration(),
        "qAppsConfiguration" => q_apps_configuration(),
        "roleArn" => String.t(),
        "status" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_application_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_document_request() :: %{
        optional("dataSourceSyncId") => String.t(),
        required("documents") => list(delete_document()())
      }

  """
  @type batch_delete_document_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      action_execution_payload_field() :: %{
        "value" => any()
      }

  """
  @type action_execution_payload_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      auth_challenge_request() :: %{
        "authorizationUrl" => String.t()
      }

  """
  @type auth_challenge_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_chat_controls_configuration_request() :: %{}

  """
  @type delete_chat_controls_configuration_request() :: %{}

  @typedoc """

  ## Example:

      batch_put_document_response() :: %{
        "failedDocuments" => list(failed_document()())
      }

  """
  @type batch_put_document_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      saml_provider_configuration() :: %{
        "authenticationUrl" => String.t()
      }

  """
  @type saml_provider_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_applications_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_index_request() :: %{
        optional("capacityConfiguration") => index_capacity_configuration(),
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("tags") => list(tag()()),
        optional("type") => list(any()),
        required("displayName") => String.t()
      }

  """
  @type create_index_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_plugin_request() :: %{
        optional("authConfiguration") => list(),
        optional("customPluginConfiguration") => custom_plugin_configuration(),
        optional("displayName") => String.t(),
        optional("serverUrl") => String.t(),
        optional("state") => list(any())
      }

  """
  @type update_plugin_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_index_request() :: %{
        optional("capacityConfiguration") => index_capacity_configuration(),
        optional("description") => String.t(),
        optional("displayName") => String.t(),
        optional("documentAttributeConfigurations") => list(document_attribute_configuration()())
      }

  """
  @type update_index_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      error_detail() :: %{
        "errorCode" => list(any()),
        "errorMessage" => String.t()
      }

  """
  @type error_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_group_response() :: %{}

  """
  @type delete_group_response() :: %{}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      configuration_event() :: %{
        "attributeFilter" => attribute_filter(),
        "chatMode" => list(any()),
        "chatModeConfiguration" => list()
      }

  """
  @type configuration_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      auth_challenge_response() :: %{
        "responseMap" => map()
      }

  """
  @type auth_challenge_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3() :: %{
        "bucket" => String.t(),
        "key" => String.t()
      }

  """
  @type s3() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_retriever_response() :: %{}

  """
  @type delete_retriever_response() :: %{}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_conversations_response() :: %{
        "conversations" => list(conversation()()),
        "nextToken" => String.t()
      }

  """
  @type list_conversations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_user_request() :: %{
        optional("userAliasesToDelete") => list(user_alias()()),
        optional("userAliasesToUpdate") => list(user_alias()())
      }

  """
  @type update_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      chat_input() :: %{
        optional("clientToken") => String.t(),
        optional("conversationId") => String.t(),
        optional("inputStream") => list(),
        optional("parentMessageId") => String.t(),
        optional("userGroups") => list(String.t()()),
        optional("userId") => String.t()
      }

  """
  @type chat_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_chat_controls_configuration_request() :: %{
        optional("blockedPhrasesConfigurationUpdate") => blocked_phrases_configuration_update(),
        optional("clientToken") => String.t(),
        optional("creatorModeConfiguration") => creator_mode_configuration(),
        optional("responseScope") => list(any()),
        optional("topicConfigurationsToCreateOrUpdate") => list(topic_configuration()()),
        optional("topicConfigurationsToDelete") => list(topic_configuration()())
      }

  """
  @type update_chat_controls_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "fields" => list(validation_exception_field()()),
        "message" => String.t(),
        "reason" => list(any())
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

      action_review_payload_field() :: %{
        "allowedFormat" => String.t(),
        "allowedValues" => list(action_review_payload_field_allowed_value()()),
        "arrayItemJsonSchema" => any(),
        "displayDescription" => String.t(),
        "displayName" => String.t(),
        "displayOrder" => integer(),
        "required" => [boolean()],
        "type" => list(any()),
        "value" => any()
      }

  """
  @type action_review_payload_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_data_source_request() :: %{
        optional("configuration") => any(),
        optional("description") => String.t(),
        optional("displayName") => String.t(),
        optional("documentEnrichmentConfiguration") => document_enrichment_configuration(),
        optional("roleArn") => String.t(),
        optional("syncSchedule") => String.t(),
        optional("vpcConfiguration") => data_source_vpc_configuration()
      }

  """
  @type update_data_source_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_put_document_request() :: %{
        optional("dataSourceSyncId") => String.t(),
        optional("roleArn") => String.t(),
        required("documents") => list(document()())
      }

  """
  @type batch_put_document_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      action_review_payload_field_allowed_value() :: %{
        "displayValue" => any(),
        "value" => any()
      }

  """
  @type action_review_payload_field_allowed_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_group_response() :: %{
        "status" => group_status_detail(),
        "statusHistory" => list(group_status_detail()())
      }

  """
  @type get_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      native_index_configuration() :: %{
        "boostingOverride" => map(),
        "indexId" => String.t()
      }

  """
  @type native_index_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group_members() :: %{
        "memberGroups" => list(member_group()()),
        "memberUsers" => list(member_user()()),
        "s3PathForGroupMembers" => s3()
      }

  """
  @type group_members() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      document_enrichment_configuration() :: %{
        "inlineConfigurations" => list(inline_document_enrichment_configuration()()),
        "postExtractionHookConfiguration" => hook_configuration(),
        "preExtractionHookConfiguration" => hook_configuration()
      }

  """
  @type document_enrichment_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_source_sync_jobs_response() :: %{
        "history" => list(data_source_sync_job()()),
        "nextToken" => String.t()
      }

  """
  @type list_data_source_sync_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_group_request() :: %{
        optional("dataSourceId") => String.t()
      }

  """
  @type delete_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      content_retrieval_rule() :: %{
        "eligibleDataSources" => list(eligible_data_source()())
      }

  """
  @type content_retrieval_rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      open_id_connect_provider_configuration() :: %{
        "secretsArn" => String.t(),
        "secretsRole" => String.t()
      }

  """
  @type open_id_connect_provider_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_chat_controls_configuration_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type get_chat_controls_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attribute_filter() :: %{
        "andAllFilters" => list(attribute_filter()()),
        "containsAll" => document_attribute(),
        "containsAny" => document_attribute(),
        "equalsTo" => document_attribute(),
        "greaterThan" => document_attribute(),
        "greaterThanOrEquals" => document_attribute(),
        "lessThan" => document_attribute(),
        "lessThanOrEquals" => document_attribute(),
        "notFilter" => attribute_filter(),
        "orAllFilters" => list(attribute_filter()())
      }

  """
  @type attribute_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_source_sync_jobs_request() :: %{
        optional("endTime") => non_neg_integer(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("startTime") => non_neg_integer(),
        optional("statusFilter") => list(any())
      }

  """
  @type list_data_source_sync_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_applications_response() :: %{
        "applications" => list(application()()),
        "nextToken" => String.t()
      }

  """
  @type list_applications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      principal_group() :: %{
        "access" => list(any()),
        "membershipType" => list(any()),
        "name" => String.t()
      }

  """
  @type principal_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_chat_controls_configuration_response() :: %{
        "blockedPhrases" => blocked_phrases_configuration(),
        "creatorModeConfiguration" => applied_creator_mode_configuration(),
        "nextToken" => String.t(),
        "responseScope" => list(any()),
        "topicConfigurations" => list(topic_configuration()())
      }

  """
  @type get_chat_controls_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      group_summary() :: %{
        "groupName" => String.t()
      }

  """
  @type group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attachment_input_event() :: %{
        "attachment" => attachment_input()
      }

  """
  @type attachment_input_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_plugin_request() :: %{}

  """
  @type delete_plugin_request() :: %{}

  @typedoc """

  ## Example:

      create_index_response() :: %{
        "indexArn" => String.t(),
        "indexId" => String.t()
      }

  """
  @type create_index_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      snippet_excerpt() :: %{
        "text" => String.t()
      }

  """
  @type snippet_excerpt() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      retriever() :: %{
        "applicationId" => String.t(),
        "displayName" => String.t(),
        "retrieverId" => String.t(),
        "status" => list(any()),
        "type" => list(any())
      }

  """
  @type retriever() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      failed_document() :: %{
        "dataSourceId" => String.t(),
        "error" => error_detail(),
        "id" => String.t()
      }

  """
  @type failed_document() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_source() :: %{
        "createdAt" => non_neg_integer(),
        "dataSourceId" => String.t(),
        "displayName" => String.t(),
        "status" => list(any()),
        "type" => String.t(),
        "updatedAt" => non_neg_integer()
      }

  """
  @type data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      q_apps_configuration() :: %{
        "qAppsControlMode" => list(any())
      }

  """
  @type q_apps_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_groups_response() :: %{
        "items" => list(group_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_group_request() :: %{
        optional("dataSourceId") => String.t()
      }

  """
  @type get_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_configuration() :: %{
        "accessControls" => list(access_control()()),
        "memberRelation" => list(any())
      }

  """
  @type access_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_retriever_response() :: %{}

  """
  @type update_retriever_response() :: %{}

  @typedoc """

  ## Example:

      text_document_statistics() :: %{
        "indexedTextBytes" => float(),
        "indexedTextDocumentCount" => integer()
      }

  """
  @type text_document_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_index_response() :: %{}

  """
  @type update_index_response() :: %{}

  @typedoc """

  ## Example:

      attachment_output() :: %{
        "error" => error_detail(),
        "name" => String.t(),
        "status" => list(any())
      }

  """
  @type attachment_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      users_and_groups() :: %{
        "userGroups" => list(String.t()()),
        "userIds" => list(String.t()())
      }

  """
  @type users_and_groups() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_retriever_request() :: %{}

  """
  @type get_retriever_request() :: %{}

  @typedoc """

  ## Example:

      list_groups_request() :: %{
        optional("dataSourceId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("updatedEarlierThan") => non_neg_integer()
      }

  """
  @type list_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_data_source_response() :: %{
        "applicationId" => String.t(),
        "configuration" => any(),
        "createdAt" => non_neg_integer(),
        "dataSourceArn" => String.t(),
        "dataSourceId" => String.t(),
        "description" => String.t(),
        "displayName" => String.t(),
        "documentEnrichmentConfiguration" => document_enrichment_configuration(),
        "error" => error_detail(),
        "indexId" => String.t(),
        "roleArn" => String.t(),
        "status" => list(any()),
        "syncSchedule" => String.t(),
        "type" => String.t(),
        "updatedAt" => non_neg_integer(),
        "vpcConfiguration" => data_source_vpc_configuration()
      }

  """
  @type get_data_source_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_application_request() :: %{}

  """
  @type get_application_request() :: %{}

  @typedoc """

  ## Example:

      date_attribute_boosting_configuration() :: %{
        "boostingDurationInSeconds" => float(),
        "boostingLevel" => list(any())
      }

  """
  @type date_attribute_boosting_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_index_request() :: %{}

  """
  @type get_index_request() :: %{}

  @typedoc """

  ## Example:

      eligible_data_source() :: %{
        "dataSourceId" => String.t(),
        "indexId" => String.t()
      }

  """
  @type eligible_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_user_response() :: %{}

  """
  @type create_user_response() :: %{}

  @typedoc """

  ## Example:

      document() :: %{
        "accessConfiguration" => access_configuration(),
        "attributes" => list(document_attribute()()),
        "content" => list(),
        "contentType" => list(any()),
        "documentEnrichmentConfiguration" => document_enrichment_configuration(),
        "id" => String.t(),
        "title" => String.t()
      }

  """
  @type document() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_data_source_sync_job_response() :: %{}

  """
  @type stop_data_source_sync_job_response() :: %{}

  @typedoc """

  ## Example:

      end_of_input_event() :: %{}

  """
  @type end_of_input_event() :: %{}

  @typedoc """

  ## Example:

      saml_configuration() :: %{
        "metadataXML" => String.t(),
        "roleArn" => String.t(),
        "userGroupAttribute" => String.t(),
        "userIdAttribute" => String.t()
      }

  """
  @type saml_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      creator_mode_configuration() :: %{
        "creatorModeControl" => list(any())
      }

  """
  @type creator_mode_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attachments_configuration() :: %{
        "attachmentsControlMode" => list(any())
      }

  """
  @type attachments_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      index_statistics() :: %{
        "textDocumentStatistics" => text_document_statistics()
      }

  """
  @type index_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_messages_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("userId") => String.t()
      }

  """
  @type list_messages_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_application_request() :: %{}

  """
  @type delete_application_request() :: %{}

  @typedoc """

  ## Example:

      put_group_request() :: %{
        optional("dataSourceId") => String.t(),
        optional("roleArn") => String.t(),
        required("groupMembers") => group_members(),
        required("groupName") => String.t(),
        required("type") => list(any())
      }

  """
  @type put_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_user_request() :: %{
        optional("clientToken") => String.t(),
        optional("userAliases") => list(user_alias()()),
        required("userId") => String.t()
      }

  """
  @type create_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_index_response() :: %{
        "applicationId" => String.t(),
        "capacityConfiguration" => index_capacity_configuration(),
        "createdAt" => non_neg_integer(),
        "description" => String.t(),
        "displayName" => String.t(),
        "documentAttributeConfigurations" => list(document_attribute_configuration()()),
        "error" => error_detail(),
        "indexArn" => String.t(),
        "indexId" => String.t(),
        "indexStatistics" => index_statistics(),
        "status" => list(any()),
        "type" => list(any()),
        "updatedAt" => non_neg_integer()
      }

  """
  @type get_index_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      message() :: %{
        "actionExecution" => action_execution(),
        "actionReview" => action_review(),
        "attachments" => list(attachment_output()()),
        "body" => String.t(),
        "messageId" => String.t(),
        "sourceAttribution" => list(source_attribution()()),
        "time" => non_neg_integer(),
        "type" => list(any())
      }

  """
  @type message() :: %{String.t() => any()}

  @type batch_delete_document_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type batch_put_document_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type chat_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | license_not_found_exception()

  @type chat_sync_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | license_not_found_exception()

  @type create_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_data_source_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_index_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_plugin_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_retriever_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_user_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_web_experience_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_chat_controls_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_conversation_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | license_not_found_exception()

  @type delete_data_source_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_index_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_plugin_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_retriever_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_user_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_web_experience_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_chat_controls_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_data_source_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_index_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_plugin_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_retriever_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_user_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_web_experience_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_applications_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_conversations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | license_not_found_exception()

  @type list_data_source_sync_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_data_sources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_documents_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_groups_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_indices_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_messages_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | license_not_found_exception()

  @type list_plugins_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_retrievers_errors() ::
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

  @type list_web_experiences_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_feedback_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_data_source_sync_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_data_source_sync_job_errors() ::
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
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_chat_controls_configuration_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_data_source_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_index_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_plugin_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_retriever_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_user_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type update_web_experience_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2023-11-27",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "qbusiness",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "QBusiness",
      signature_version: "v4",
      signing_name: "qbusiness",
      target_prefix: nil
    }
  end

  @doc """
  Asynchronously deletes one or more documents added using the
  `BatchPutDocument` API from an Amazon Q Business index.

  You can see the progress of the deletion, and any error messages related to the
  process, by using CloudWatch.
  """
  @spec batch_delete_document(
          map(),
          String.t(),
          String.t(),
          batch_delete_document_request(),
          list()
        ) ::
          {:ok, batch_delete_document_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_delete_document_errors()}
  def batch_delete_document(%Client{} = client, application_id, index_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/documents/delete"

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
  Adds one or more documents to an Amazon Q Business index.

  You use this API to:

    *
  ingest your structured and unstructured documents and documents stored in an
  Amazon S3 bucket into an Amazon Q Business index.

    *
  add custom attributes to documents in an Amazon Q Business index.

    *
  attach an access control list to the documents added to an Amazon Q Business
  index.

  You can see the progress of the deletion, and any error messages related to the
  process, by using CloudWatch.
  """
  @spec batch_put_document(map(), String.t(), String.t(), batch_put_document_request(), list()) ::
          {:ok, batch_put_document_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_put_document_errors()}
  def batch_put_document(%Client{} = client, application_id, index_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/documents"

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
  Starts or continues a streaming Amazon Q Business conversation.
  """
  @spec chat(map(), String.t(), chat_input(), list()) ::
          {:ok, chat_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, chat_errors()}
  def chat(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/conversations"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"},
        {"conversationId", "conversationId"},
        {"parentMessageId", "parentMessageId"},
        {"userGroups", "userGroups"},
        {"userId", "userId"}
      ]
      |> Request.build_params(input)

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
  Starts or continues a non-streaming Amazon Q Business conversation.
  """
  @spec chat_sync(map(), String.t(), chat_sync_input(), list()) ::
          {:ok, chat_sync_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, chat_sync_errors()}
  def chat_sync(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/conversations?sync"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"userGroups", "userGroups"},
        {"userId", "userId"}
      ]
      |> Request.build_params(input)

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
  Creates an Amazon Q Business application.

  There are new tiers for Amazon Q Business. Not all features in Amazon Q Business
  Pro are
  also available in Amazon Q Business Lite. For information on what's included in
  Amazon Q Business Lite and what's included in Amazon Q Business Pro, see [Amazon Q Business
  tiers](https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/tiers.html#user-sub-tiers).
  You must use the Amazon Q Business console to assign
  subscription tiers to users.

  A Amazon Q Apps service linked role will be created if it's absent in the
  Amazon Web Services account when the QAppsConfiguration is enabled in the
  request.
  For more information, see
  [
  Using service-linked roles for Q Apps
  ](https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/using-service-linked-roles-qapps.html)
  """
  @spec create_application(map(), create_application_request(), list()) ::
          {:ok, create_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_application_errors()}
  def create_application(%Client{} = client, input, options \\ []) do
    url_path = "/applications"
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
  Creates a data source connector for an Amazon Q Business application.

  `CreateDataSource` is a synchronous operation. The operation returns 200 if
  the data source was successfully created. Otherwise, an exception is raised.
  """
  @spec create_data_source(map(), String.t(), String.t(), create_data_source_request(), list()) ::
          {:ok, create_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_data_source_errors()}
  def create_data_source(%Client{} = client, application_id, index_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/datasources"

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
  Creates an Amazon Q Business index.

  To determine if index creation has completed, check the `Status` field
  returned from a call to `DescribeIndex`. The `Status` field is set
  to `ACTIVE` when the index is ready to use.

  Once the index is active, you can index your documents using the [
  `BatchPutDocument`
  ](https://docs.aws.amazon.com/amazonq/latest/api-reference/API_BatchPutDocument.html)
  API or the [
  `CreateDataSource`
  ](https://docs.aws.amazon.com/amazonq/latest/api-reference/API_CreateDataSource.html)
  API.
  """
  @spec create_index(map(), String.t(), create_index_request(), list()) ::
          {:ok, create_index_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_index_errors()}
  def create_index(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/indices"
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
  Creates an Amazon Q Business plugin.
  """
  @spec create_plugin(map(), String.t(), create_plugin_request(), list()) ::
          {:ok, create_plugin_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_plugin_errors()}
  def create_plugin(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/plugins"
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
  Adds a retriever to your Amazon Q Business application.
  """
  @spec create_retriever(map(), String.t(), create_retriever_request(), list()) ::
          {:ok, create_retriever_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_retriever_errors()}
  def create_retriever(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/retrievers"
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
  Creates a universally unique identifier (UUID) mapped to a list of local user
  ids
  within an application.
  """
  @spec create_user(map(), String.t(), create_user_request(), list()) ::
          {:ok, create_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_user_errors()}
  def create_user(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/users"
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
  Creates an Amazon Q Business web experience.
  """
  @spec create_web_experience(map(), String.t(), create_web_experience_request(), list()) ::
          {:ok, create_web_experience_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_web_experience_errors()}
  def create_web_experience(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/experiences"
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
  Deletes an Amazon Q Business application.
  """
  @spec delete_application(map(), String.t(), delete_application_request(), list()) ::
          {:ok, delete_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_application_errors()}
  def delete_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
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
  Deletes chat controls configured for an existing Amazon Q Business application.
  """
  @spec delete_chat_controls_configuration(
          map(),
          String.t(),
          delete_chat_controls_configuration_request(),
          list()
        ) ::
          {:ok, delete_chat_controls_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_chat_controls_configuration_errors()}
  def delete_chat_controls_configuration(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/chatcontrols"
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
  Deletes an Amazon Q Business web experience conversation.
  """
  @spec delete_conversation(map(), String.t(), String.t(), delete_conversation_request(), list()) ::
          {:ok, delete_conversation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_conversation_errors()}
  def delete_conversation(
        %Client{} = client,
        application_id,
        conversation_id,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/conversations/#{AWS.Util.encode_uri(conversation_id)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"userId", "userId"}
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
  Deletes an Amazon Q Business data source connector.

  While the data source is being
  deleted, the `Status` field returned by a call to the
  `DescribeDataSource` API is set to `DELETING`.
  """
  @spec delete_data_source(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_data_source_request(),
          list()
        ) ::
          {:ok, delete_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_data_source_errors()}
  def delete_data_source(
        %Client{} = client,
        application_id,
        data_source_id,
        index_id,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/datasources/#{AWS.Util.encode_uri(data_source_id)}"

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
  Deletes a group so that all users and sub groups that belong to the group can no
  longer access documents only available to that group.

  For example, after deleting the
  group "Summer Interns", all interns who belonged to that group no longer see
  intern-only
  documents in their chat results.

  If you want to delete, update, or replace users or sub groups of a group, you
  need to
  use the `PutGroup` operation. For example, if a user in the group
  "Engineering" leaves the engineering team and another user takes their place,
  you
  provide an updated list of users or sub groups that belong to the "Engineering"
  group
  when calling `PutGroup`.
  """
  @spec delete_group(map(), String.t(), String.t(), String.t(), delete_group_request(), list()) ::
          {:ok, delete_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_group_errors()}
  def delete_group(%Client{} = client, application_id, group_name, index_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/groups/#{AWS.Util.encode_uri(group_name)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"dataSourceId", "dataSourceId"}
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
  Deletes an Amazon Q Business index.
  """
  @spec delete_index(map(), String.t(), String.t(), delete_index_request(), list()) ::
          {:ok, delete_index_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_index_errors()}
  def delete_index(%Client{} = client, application_id, index_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}"

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
  Deletes an Amazon Q Business plugin.
  """
  @spec delete_plugin(map(), String.t(), String.t(), delete_plugin_request(), list()) ::
          {:ok, delete_plugin_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_plugin_errors()}
  def delete_plugin(%Client{} = client, application_id, plugin_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/plugins/#{AWS.Util.encode_uri(plugin_id)}"

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
  Deletes the retriever used by an Amazon Q Business application.
  """
  @spec delete_retriever(map(), String.t(), String.t(), delete_retriever_request(), list()) ::
          {:ok, delete_retriever_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_retriever_errors()}
  def delete_retriever(%Client{} = client, application_id, retriever_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/retrievers/#{AWS.Util.encode_uri(retriever_id)}"

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
  Deletes a user by email id.
  """
  @spec delete_user(map(), String.t(), String.t(), delete_user_request(), list()) ::
          {:ok, delete_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_user_errors()}
  def delete_user(%Client{} = client, application_id, user_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/users/#{AWS.Util.encode_uri(user_id)}"

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
  Deletes an Amazon Q Business web experience.
  """
  @spec delete_web_experience(
          map(),
          String.t(),
          String.t(),
          delete_web_experience_request(),
          list()
        ) ::
          {:ok, delete_web_experience_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_web_experience_errors()}
  def delete_web_experience(
        %Client{} = client,
        application_id,
        web_experience_id,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/experiences/#{AWS.Util.encode_uri(web_experience_id)}"

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
  Gets information about an existing Amazon Q Business application.
  """
  @spec get_application(map(), String.t(), list()) ::
          {:ok, get_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_application_errors()}
  def get_application(%Client{} = client, application_id, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about an chat controls configured for an existing Amazon Q
  Business
  application.
  """
  @spec get_chat_controls_configuration(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, get_chat_controls_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_chat_controls_configuration_errors()}
  def get_chat_controls_configuration(
        %Client{} = client,
        application_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/chatcontrols"
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
  Gets information about an existing Amazon Q Business data source connector.
  """
  @spec get_data_source(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_data_source_errors()}
  def get_data_source(%Client{} = client, application_id, data_source_id, index_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/datasources/#{AWS.Util.encode_uri(data_source_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a group by group name.
  """
  @spec get_group(map(), String.t(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, get_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_group_errors()}
  def get_group(
        %Client{} = client,
        application_id,
        group_name,
        index_id,
        data_source_id \\ nil,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/groups/#{AWS.Util.encode_uri(group_name)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(data_source_id) do
        [{"dataSourceId", data_source_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about an existing Amazon Q Business index.
  """
  @spec get_index(map(), String.t(), String.t(), list()) ::
          {:ok, get_index_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_index_errors()}
  def get_index(%Client{} = client, application_id, index_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about an existing Amazon Q Business plugin.
  """
  @spec get_plugin(map(), String.t(), String.t(), list()) ::
          {:ok, get_plugin_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_plugin_errors()}
  def get_plugin(%Client{} = client, application_id, plugin_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/plugins/#{AWS.Util.encode_uri(plugin_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about an existing retriever used by an Amazon Q Business
  application.
  """
  @spec get_retriever(map(), String.t(), String.t(), list()) ::
          {:ok, get_retriever_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_retriever_errors()}
  def get_retriever(%Client{} = client, application_id, retriever_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/retrievers/#{AWS.Util.encode_uri(retriever_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the universally unique identifier (UUID) associated with a local user
  in a
  data source.
  """
  @spec get_user(map(), String.t(), String.t(), list()) ::
          {:ok, get_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_user_errors()}
  def get_user(%Client{} = client, application_id, user_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/users/#{AWS.Util.encode_uri(user_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about an existing Amazon Q Business web experience.
  """
  @spec get_web_experience(map(), String.t(), String.t(), list()) ::
          {:ok, get_web_experience_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_web_experience_errors()}
  def get_web_experience(%Client{} = client, application_id, web_experience_id, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/experiences/#{AWS.Util.encode_uri(web_experience_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists Amazon Q Business applications.
  """
  @spec list_applications(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_applications_errors()}
  def list_applications(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/applications"
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
  Lists one or more Amazon Q Business conversations.
  """
  @spec list_conversations(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_conversations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_conversations_errors()}
  def list_conversations(
        %Client{} = client,
        application_id,
        max_results \\ nil,
        next_token \\ nil,
        user_id \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/conversations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(user_id) do
        [{"userId", user_id} | query_params]
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
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get information about an Amazon Q Business data source connector
  synchronization.
  """
  @spec list_data_source_sync_jobs(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_data_source_sync_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_data_source_sync_jobs_errors()}
  def list_data_source_sync_jobs(
        %Client{} = client,
        application_id,
        data_source_id,
        index_id,
        end_time \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        start_time \\ nil,
        status_filter \\ nil,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/datasources/#{AWS.Util.encode_uri(data_source_id)}/syncjobs"

    headers = []
    query_params = []

    query_params =
      if !is_nil(status_filter) do
        [{"syncStatus", status_filter} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(start_time) do
        [{"startTime", start_time} | query_params]
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
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(end_time) do
        [{"endTime", end_time} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Amazon Q Business data source connectors that you have created.
  """
  @spec list_data_sources(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_data_sources_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_data_sources_errors()}
  def list_data_sources(
        %Client{} = client,
        application_id,
        index_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/datasources"

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
  A list of documents attached to an index.
  """
  @spec list_documents(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_documents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_documents_errors()}
  def list_documents(
        %Client{} = client,
        application_id,
        index_id,
        data_source_ids \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/index/#{AWS.Util.encode_uri(index_id)}/documents"

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

    query_params =
      if !is_nil(data_source_ids) do
        [{"dataSourceIds", data_source_ids} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides a list of groups that are mapped to users.
  """
  @spec list_groups(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t(),
          list()
        ) ::
          {:ok, list_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_groups_errors()}
  def list_groups(
        %Client{} = client,
        application_id,
        index_id,
        data_source_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        updated_earlier_than,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/groups"

    headers = []
    query_params = []

    query_params =
      if !is_nil(updated_earlier_than) do
        [{"updatedEarlierThan", updated_earlier_than} | query_params]
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
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(data_source_id) do
        [{"dataSourceId", data_source_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Amazon Q Business indices you have created.
  """
  @spec list_indices(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_indices_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_indices_errors()}
  def list_indices(
        %Client{} = client,
        application_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/indices"
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
  Gets a list of messages associated with an Amazon Q Business web experience.
  """
  @spec list_messages(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_messages_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_messages_errors()}
  def list_messages(
        %Client{} = client,
        application_id,
        conversation_id,
        max_results \\ nil,
        next_token \\ nil,
        user_id \\ nil,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/conversations/#{AWS.Util.encode_uri(conversation_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(user_id) do
        [{"userId", user_id} | query_params]
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
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists configured Amazon Q Business plugins.
  """
  @spec list_plugins(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_plugins_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_plugins_errors()}
  def list_plugins(
        %Client{} = client,
        application_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/plugins"
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
  Lists the retriever used by an Amazon Q Business application.
  """
  @spec list_retrievers(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_retrievers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_retrievers_errors()}
  def list_retrievers(
        %Client{} = client,
        application_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/retrievers"
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
  Gets a list of tags associated with a specified resource.

  Amazon Q Business applications
  and data sources can have tags associated with them.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/v1/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists one or more Amazon Q Business Web Experiences.
  """
  @spec list_web_experiences(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_web_experiences_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_web_experiences_errors()}
  def list_web_experiences(
        %Client{} = client,
        application_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/experiences"
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
  Enables your end user to provide feedback on their Amazon Q Business generated
  chat
  responses.
  """
  @spec put_feedback(map(), String.t(), String.t(), String.t(), put_feedback_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_feedback_errors()}
  def put_feedback(
        %Client{} = client,
        application_id,
        conversation_id,
        message_id,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/conversations/#{AWS.Util.encode_uri(conversation_id)}/messages/#{AWS.Util.encode_uri(message_id)}/feedback"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"userId", "userId"}
      ]
      |> Request.build_params(input)

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
  Create, or updates, a mapping of users—who have access to a document—to
  groups.

  You can also map sub groups to groups. For example, the group "Company
  Intellectual
  Property Teams" includes sub groups "Research" and "Engineering". These sub
  groups
  include their own list of users or people who work in these teams. Only users
  who work
  in research and engineering, and therefore belong in the intellectual property
  group,
  can see top-secret company documents in their Amazon Q Business chat results.
  """
  @spec put_group(map(), String.t(), String.t(), put_group_request(), list()) ::
          {:ok, put_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_group_errors()}
  def put_group(%Client{} = client, application_id, index_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/groups"

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
  Starts a data source connector synchronization job.

  If a synchronization job is
  already in progress, Amazon Q Business returns a `ConflictException`.
  """
  @spec start_data_source_sync_job(
          map(),
          String.t(),
          String.t(),
          String.t(),
          start_data_source_sync_job_request(),
          list()
        ) ::
          {:ok, start_data_source_sync_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_data_source_sync_job_errors()}
  def start_data_source_sync_job(
        %Client{} = client,
        application_id,
        data_source_id,
        index_id,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/datasources/#{AWS.Util.encode_uri(data_source_id)}/startsync"

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
  Stops an Amazon Q Business data source connector synchronization job already in
  progress.
  """
  @spec stop_data_source_sync_job(
          map(),
          String.t(),
          String.t(),
          String.t(),
          stop_data_source_sync_job_request(),
          list()
        ) ::
          {:ok, stop_data_source_sync_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_data_source_sync_job_errors()}
  def stop_data_source_sync_job(
        %Client{} = client,
        application_id,
        data_source_id,
        index_id,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/datasources/#{AWS.Util.encode_uri(data_source_id)}/stopsync"

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
  Adds the specified tag to the specified Amazon Q Business application or data
  source
  resource.

  If the tag already exists, the existing value is replaced with the new
  value.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Removes a tag from an Amazon Q Business application or a data source.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Updates an existing Amazon Q Business application.

  A Amazon Q Apps service-linked role will be created if it's absent in the Amazon
  Web Services account
  when the QAppsConfiguration is enabled in the request.
  For more information, see [
  Using service-linked roles for Q Apps
  ](https://docs.aws.amazon.com/amazonq/latest/qbusiness-ug/using-service-linked-roles-qapps.html)
  """
  @spec update_application(map(), String.t(), update_application_request(), list()) ::
          {:ok, update_application_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_application_errors()}
  def update_application(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}"
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
  Updates an set of chat controls configured for an existing Amazon Q Business
  application.
  """
  @spec update_chat_controls_configuration(
          map(),
          String.t(),
          update_chat_controls_configuration_request(),
          list()
        ) ::
          {:ok, update_chat_controls_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_chat_controls_configuration_errors()}
  def update_chat_controls_configuration(%Client{} = client, application_id, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(application_id)}/chatcontrols"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates an existing Amazon Q Business data source connector.
  """
  @spec update_data_source(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_data_source_request(),
          list()
        ) ::
          {:ok, update_data_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_data_source_errors()}
  def update_data_source(
        %Client{} = client,
        application_id,
        data_source_id,
        index_id,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}/datasources/#{AWS.Util.encode_uri(data_source_id)}"

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
  Updates an Amazon Q Business index.
  """
  @spec update_index(map(), String.t(), String.t(), update_index_request(), list()) ::
          {:ok, update_index_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_index_errors()}
  def update_index(%Client{} = client, application_id, index_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/indices/#{AWS.Util.encode_uri(index_id)}"

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
  Updates an Amazon Q Business plugin.
  """
  @spec update_plugin(map(), String.t(), String.t(), update_plugin_request(), list()) ::
          {:ok, update_plugin_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_plugin_errors()}
  def update_plugin(%Client{} = client, application_id, plugin_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/plugins/#{AWS.Util.encode_uri(plugin_id)}"

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
  Updates the retriever used for your Amazon Q Business application.
  """
  @spec update_retriever(map(), String.t(), String.t(), update_retriever_request(), list()) ::
          {:ok, update_retriever_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_retriever_errors()}
  def update_retriever(%Client{} = client, application_id, retriever_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/retrievers/#{AWS.Util.encode_uri(retriever_id)}"

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
  Updates a information associated with a user id.
  """
  @spec update_user(map(), String.t(), String.t(), update_user_request(), list()) ::
          {:ok, update_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_errors()}
  def update_user(%Client{} = client, application_id, user_id, input, options \\ []) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/users/#{AWS.Util.encode_uri(user_id)}"

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
  Updates an Amazon Q Business web experience.
  """
  @spec update_web_experience(
          map(),
          String.t(),
          String.t(),
          update_web_experience_request(),
          list()
        ) ::
          {:ok, update_web_experience_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_web_experience_errors()}
  def update_web_experience(
        %Client{} = client,
        application_id,
        web_experience_id,
        input,
        options \\ []
      ) do
    url_path =
      "/applications/#{AWS.Util.encode_uri(application_id)}/experiences/#{AWS.Util.encode_uri(web_experience_id)}"

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
end
