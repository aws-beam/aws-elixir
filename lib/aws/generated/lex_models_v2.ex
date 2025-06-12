# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LexModelsV2 do
  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      describe_custom_vocabulary_metadata_request() :: %{}

  """
  @type describe_custom_vocabulary_metadata_request() :: %{}

  @typedoc """

  ## Example:

      s3_bucket_transcript_source() :: %{
        "kmsKeyArn" => String.t(),
        "pathFormat" => path_format(),
        "s3BucketName" => String.t(),
        "transcriptFilter" => transcript_filter(),
        "transcriptFormat" => list(any())
      }

  """
  @type s3_bucket_transcript_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      import_sort_by() :: %{
        "attribute" => list(any()),
        "order" => list(any())
      }

  """
  @type import_sort_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      built_in_intent_summary() :: %{
        "description" => String.t(),
        "intentSignature" => String.t()
      }

  """
  @type built_in_intent_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fulfillment_updates_specification() :: %{
        "active" => boolean(),
        "startResponse" => fulfillment_start_response_specification(),
        "timeoutInSeconds" => integer(),
        "updateResponse" => fulfillment_update_response_specification()
      }

  """
  @type fulfillment_updates_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analytics_intent_metric() :: %{
        "name" => list(any()),
        "order" => list(any()),
        "statistic" => list(any())
      }

  """
  @type analytics_intent_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      grammar_slot_type_setting() :: %{
        "source" => grammar_slot_type_source()
      }

  """
  @type grammar_slot_type_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bot_recommendation_results() :: %{
        "associatedTranscriptsUrl" => String.t(),
        "botLocaleExportUrl" => String.t(),
        "statistics" => bot_recommendation_result_statistics()
      }

  """
  @type bot_recommendation_results() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_test_set_request() :: %{}

  """
  @type delete_test_set_request() :: %{}

  @typedoc """

  ## Example:

      bot_locale_import_specification() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "localeId" => String.t(),
        "nluIntentConfidenceThreshold" => float(),
        "voiceSettings" => voice_settings()
      }

  """
  @type bot_locale_import_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bedrock_guardrail_configuration() :: %{
        "identifier" => String.t(),
        "version" => String.t()
      }

  """
  @type bedrock_guardrail_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_execution_target() :: %{
        "botAliasTarget" => bot_alias_test_execution_target()
      }

  """
  @type test_execution_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bot_locales_response() :: %{
        "botId" => String.t(),
        "botLocaleSummaries" => list(bot_locale_summary()()),
        "botVersion" => String.t(),
        "nextToken" => String.t()
      }

  """
  @type list_bot_locales_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_bot_resource_generation_request() :: %{}

  """
  @type describe_bot_resource_generation_request() :: %{}

  @typedoc """

  ## Example:

      date_range_filter() :: %{
        "endDateTime" => non_neg_integer(),
        "startDateTime" => non_neg_integer()
      }

  """
  @type date_range_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_test_set_generation_request() :: %{
        optional("description") => String.t(),
        optional("testSetTags") => map(),
        required("generationDataSource") => test_set_generation_data_source(),
        required("roleArn") => String.t(),
        required("storageLocation") => test_set_storage_location(),
        required("testSetName") => String.t()
      }

  """
  @type start_test_set_generation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_slot_type_response() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "compositeSlotTypeSetting" => composite_slot_type_setting(),
        "creationDateTime" => non_neg_integer(),
        "description" => String.t(),
        "externalSourceSetting" => external_source_setting(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "localeId" => String.t(),
        "parentSlotTypeSignature" => String.t(),
        "slotTypeId" => String.t(),
        "slotTypeName" => String.t(),
        "slotTypeValues" => list(slot_type_value()()),
        "valueSelectionSetting" => slot_value_selection_setting()
      }

  """
  @type update_slot_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_test_set_generation_response() :: %{
        "creationDateTime" => non_neg_integer(),
        "description" => String.t(),
        "generationDataSource" => test_set_generation_data_source(),
        "roleArn" => String.t(),
        "storageLocation" => test_set_storage_location(),
        "testSetGenerationId" => String.t(),
        "testSetGenerationStatus" => list(any()),
        "testSetName" => String.t(),
        "testSetTags" => map()
      }

  """
  @type start_test_set_generation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_test_execution_result_items_response() :: %{
        "nextToken" => String.t(),
        "testExecutionResults" => test_execution_result_items()
      }

  """
  @type list_test_execution_result_items_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      default_conditional_branch() :: %{
        "nextStep" => dialog_state(),
        "response" => response_specification()
      }

  """
  @type default_conditional_branch() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      intent_level_slot_resolution_test_result_item() :: %{
        "intentName" => String.t(),
        "multiTurnConversation" => boolean(),
        "slotResolutionResults" => list(slot_resolution_test_result_item()())
      }

  """
  @type intent_level_slot_resolution_test_result_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bot_locale_history_event() :: %{
        "event" => String.t(),
        "eventDate" => non_neg_integer()
      }

  """
  @type bot_locale_history_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analytics_utterance_result() :: %{
        "attributeResults" => list(analytics_utterance_attribute_result()()),
        "binKeys" => list(analytics_bin_key()()),
        "groupByKeys" => list(analytics_utterance_group_by_key()()),
        "metricsResults" => list(analytics_utterance_metric_result()())
      }

  """
  @type analytics_utterance_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associated_transcript() :: %{
        "transcript" => String.t()
      }

  """
  @type associated_transcript() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conversation_level_test_results_filter_by() :: %{
        "endToEndResult" => list(any())
      }

  """
  @type conversation_level_test_results_filter_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bot_version_replicas_response() :: %{
        "botId" => String.t(),
        "botVersionReplicaSummaries" => list(bot_version_replica_summary()()),
        "nextToken" => String.t(),
        "replicaRegion" => String.t(),
        "sourceRegion" => String.t()
      }

  """
  @type list_bot_version_replicas_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conversation_level_test_result_item() :: %{
        "conversationId" => String.t(),
        "endToEndResult" => list(any()),
        "intentClassificationResults" => list(conversation_level_intent_classification_result_item()()),
        "slotResolutionResults" => list(conversation_level_slot_resolution_result_item()()),
        "speechTranscriptionResult" => list(any())
      }

  """
  @type conversation_level_test_result_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_resource_policy_response() :: %{
        "resourceArn" => String.t(),
        "revisionId" => String.t()
      }

  """
  @type delete_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_export_request() :: %{}

  """
  @type describe_export_request() :: %{}

  @typedoc """

  ## Example:

      conversation_logs_data_source_filter_by() :: %{
        "endTime" => non_neg_integer(),
        "inputMode" => list(any()),
        "startTime" => non_neg_integer()
      }

  """
  @type conversation_logs_data_source_filter_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_resource_policy_statement_response() :: %{
        "resourceArn" => String.t(),
        "revisionId" => String.t()
      }

  """
  @type delete_resource_policy_statement_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      built_in_slot_type_sort_by() :: %{
        "attribute" => list(any()),
        "order" => list(any())
      }

  """
  @type built_in_slot_type_sort_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_set_intent_discrepancy_item() :: %{
        "errorMessage" => String.t(),
        "intentName" => String.t()
      }

  """
  @type test_set_intent_discrepancy_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slot_sort_by() :: %{
        "attribute" => list(any()),
        "order" => list(any())
      }

  """
  @type slot_sort_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_intent_request() :: %{
        optional("description") => String.t(),
        optional("dialogCodeHook") => dialog_code_hook_settings(),
        optional("fulfillmentCodeHook") => fulfillment_code_hook_settings(),
        optional("initialResponseSetting") => initial_response_setting(),
        optional("inputContexts") => list(input_context()()),
        optional("intentClosingSetting") => intent_closing_setting(),
        optional("intentConfirmationSetting") => intent_confirmation_setting(),
        optional("kendraConfiguration") => kendra_configuration(),
        optional("outputContexts") => list(output_context()()),
        optional("parentIntentSignature") => String.t(),
        optional("qInConnectIntentConfiguration") => q_in_connect_intent_configuration(),
        optional("qnAIntentConfiguration") => qn_a_intent_configuration(),
        optional("sampleUtterances") => list(sample_utterance()()),
        optional("slotPriorities") => list(slot_priority()()),
        required("intentName") => String.t()
      }

  """
  @type update_intent_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analytics_utterance_group_by_specification() :: %{
        "name" => list(any())
      }

  """
  @type analytics_utterance_group_by_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slot_value_regex_filter() :: %{
        "pattern" => String.t()
      }

  """
  @type slot_value_regex_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      obfuscation_setting() :: %{
        "obfuscationSettingType" => list(any())
      }

  """
  @type obfuscation_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_test_execution_request() :: %{
        optional("testExecutionModality") => list(any()),
        required("apiMode") => list(any()),
        required("target") => test_execution_target()
      }

  """
  @type start_test_execution_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      specifications() :: %{
        "slotTypeId" => String.t(),
        "valueElicitationSetting" => sub_slot_value_elicitation_setting()
      }

  """
  @type specifications() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bot_alias_history_event() :: %{
        "botVersion" => String.t(),
        "endDate" => non_neg_integer(),
        "startDate" => non_neg_integer()
      }

  """
  @type bot_alias_history_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fulfillment_update_response_specification() :: %{
        "allowInterrupt" => boolean(),
        "frequencyInSeconds" => integer(),
        "messageGroups" => list(message_group()())
      }

  """
  @type fulfillment_update_response_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bot_replicas_request() :: %{}

  """
  @type list_bot_replicas_request() :: %{}

  @typedoc """

  ## Example:

      describe_bot_alias_request() :: %{}

  """
  @type describe_bot_alias_request() :: %{}

  @typedoc """

  ## Example:

      agent_turn_result() :: %{
        "actualAgentPrompt" => String.t(),
        "actualElicitedSlot" => String.t(),
        "actualIntent" => String.t(),
        "errorDetails" => execution_error_details(),
        "expectedAgentPrompt" => String.t()
      }

  """
  @type agent_turn_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      error_log_settings() :: %{
        "enabled" => boolean()
      }

  """
  @type error_log_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_bot_version_response() :: %{
        "botId" => String.t(),
        "botMembers" => list(bot_member()()),
        "botName" => String.t(),
        "botStatus" => list(any()),
        "botType" => list(any()),
        "botVersion" => String.t(),
        "creationDateTime" => non_neg_integer(),
        "dataPrivacy" => data_privacy(),
        "description" => String.t(),
        "failureReasons" => list(String.t()()),
        "idleSessionTTLInSeconds" => integer(),
        "parentBotNetworks" => list(parent_bot_network()()),
        "roleArn" => String.t()
      }

  """
  @type describe_bot_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_test_set_request() :: %{}

  """
  @type describe_test_set_request() :: %{}

  @typedoc """

  ## Example:

      utterance_data_sort_by() :: %{
        "name" => list(any()),
        "order" => list(any())
      }

  """
  @type utterance_data_sort_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_test_execution_response() :: %{
        "apiMode" => list(any()),
        "creationDateTime" => non_neg_integer(),
        "failureReasons" => list(String.t()()),
        "lastUpdatedDateTime" => non_neg_integer(),
        "target" => test_execution_target(),
        "testExecutionId" => String.t(),
        "testExecutionModality" => list(any()),
        "testExecutionStatus" => list(any()),
        "testSetId" => String.t(),
        "testSetName" => String.t()
      }

  """
  @type describe_test_execution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_intents_response() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "intentSummaries" => list(intent_summary()()),
        "localeId" => String.t(),
        "nextToken" => String.t()
      }

  """
  @type list_intents_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analytics_utterance_filter() :: %{
        "name" => list(any()),
        "operator" => list(any()),
        "values" => list(String.t()())
      }

  """
  @type analytics_utterance_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      generative_a_i_settings() :: %{
        "buildtimeSettings" => buildtime_settings(),
        "runtimeSettings" => runtime_settings()
      }

  """
  @type generative_a_i_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_source_configuration() :: %{
        "bedrockKnowledgeStoreConfiguration" => bedrock_knowledge_store_configuration(),
        "kendraConfiguration" => qn_a_kendra_configuration(),
        "opensearchConfiguration" => opensearch_configuration()
      }

  """
  @type data_source_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      analytics_session_metric() :: %{
        "name" => list(any()),
        "order" => list(any()),
        "statistic" => list(any())
      }

  """
  @type analytics_session_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_intent_stage_metrics_request() :: %{
        optional("binBy") => list(analytics_bin_by_specification()()),
        optional("filters") => list(analytics_intent_stage_filter()()),
        optional("groupBy") => list(analytics_intent_stage_group_by_specification()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("endDateTime") => non_neg_integer(),
        required("metrics") => list(analytics_intent_stage_metric()()),
        required("startDateTime") => non_neg_integer()
      }

  """
  @type list_intent_stage_metrics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      message_group() :: %{
        "message" => message(),
        "variations" => list(message()())
      }

  """
  @type message_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_bot_replica_response() :: %{
        "botId" => String.t(),
        "botReplicaStatus" => list(any()),
        "creationDateTime" => non_neg_integer(),
        "failureReasons" => list(String.t()()),
        "replicaRegion" => String.t(),
        "sourceRegion" => String.t()
      }

  """
  @type describe_bot_replica_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_recommended_intents_response() :: %{
        "botId" => String.t(),
        "botRecommendationId" => String.t(),
        "botVersion" => String.t(),
        "localeId" => String.t(),
        "nextToken" => String.t(),
        "summaryList" => list(recommended_intent_summary()())
      }

  """
  @type list_recommended_intents_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_bot_alias_response() :: %{
        "botAliasId" => String.t(),
        "botAliasLocaleSettings" => map(),
        "botAliasName" => String.t(),
        "botAliasStatus" => list(any()),
        "botId" => String.t(),
        "botVersion" => String.t(),
        "conversationLogSettings" => conversation_log_settings(),
        "creationDateTime" => non_neg_integer(),
        "description" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "sentimentAnalysisSettings" => sentiment_analysis_settings()
      }

  """
  @type update_bot_alias_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      elicitation_code_hook_invocation_setting() :: %{
        "enableCodeHookInvocation" => boolean(),
        "invocationLabel" => String.t()
      }

  """
  @type elicitation_code_hook_invocation_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      intent_classification_test_result_item_counts() :: %{
        "intentMatchResultCounts" => map(),
        "speechTranscriptionResultCounts" => map(),
        "totalResultCount" => integer()
      }

  """
  @type intent_classification_test_result_item_counts() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lex_transcript_filter() :: %{
        "dateRangeFilter" => date_range_filter()
      }

  """
  @type lex_transcript_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analytics_utterance_attribute() :: %{
        "name" => list(any())
      }

  """
  @type analytics_utterance_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      intent_classification_test_result_item() :: %{
        "intentName" => String.t(),
        "multiTurnConversation" => boolean(),
        "resultCounts" => intent_classification_test_result_item_counts()
      }

  """
  @type intent_classification_test_result_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      generate_bot_element_response() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "intentId" => String.t(),
        "localeId" => String.t(),
        "sampleUtterances" => list(sample_utterance()())
      }

  """
  @type generate_bot_element_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_export_request() :: %{
        optional("filePassword") => String.t(),
        required("fileFormat") => list(any()),
        required("resourceSpecification") => export_resource_specification()
      }

  """
  @type create_export_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      path_format() :: %{
        "objectPrefixes" => list(String.t()())
      }

  """
  @type path_format() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_resource_policy_statement_request() :: %{
        optional("expectedRevisionId") => String.t()
      }

  """
  @type delete_resource_policy_statement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      runtime_settings() :: %{
        "nluImprovement" => nlu_improvement_specification(),
        "slotResolutionImprovement" => slot_resolution_improvement_specification()
      }

  """
  @type runtime_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_slot_request() :: %{
        optional("description") => String.t(),
        optional("multipleValuesSetting") => multiple_values_setting(),
        optional("obfuscationSetting") => obfuscation_setting(),
        optional("slotTypeId") => String.t(),
        optional("subSlotSetting") => sub_slot_setting(),
        required("slotName") => String.t(),
        required("valueElicitationSetting") => slot_value_elicitation_setting()
      }

  """
  @type update_slot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      opensearch_configuration() :: %{
        "domainEndpoint" => String.t(),
        "exactResponse" => boolean(),
        "exactResponseFields" => exact_response_fields(),
        "includeFields" => list(String.t()()),
        "indexName" => String.t()
      }

  """
  @type opensearch_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_bot_request() :: %{
        optional("skipResourceInUseCheck") => boolean()
      }

  """
  @type delete_bot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_slot_response() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "creationDateTime" => non_neg_integer(),
        "description" => String.t(),
        "intentId" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "localeId" => String.t(),
        "multipleValuesSetting" => multiple_values_setting(),
        "obfuscationSetting" => obfuscation_setting(),
        "slotId" => String.t(),
        "slotName" => String.t(),
        "slotTypeId" => String.t(),
        "subSlotSetting" => sub_slot_setting(),
        "valueElicitationSetting" => slot_value_elicitation_setting()
      }

  """
  @type update_slot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bot_member() :: %{
        "botMemberAliasId" => String.t(),
        "botMemberAliasName" => String.t(),
        "botMemberId" => String.t(),
        "botMemberName" => String.t(),
        "botMemberVersion" => String.t()
      }

  """
  @type bot_member() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      intent_statistics() :: %{
        "discoveredIntentCount" => integer()
      }

  """
  @type intent_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_bot_recommendation_request() :: %{
        optional("encryptionSetting") => encryption_setting(),
        required("transcriptSourceSetting") => transcript_source_setting()
      }

  """
  @type start_bot_recommendation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output_context() :: %{
        "name" => String.t(),
        "timeToLiveInSeconds" => integer(),
        "turnsToLive" => integer()
      }

  """
  @type output_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bot_alias_test_execution_target() :: %{
        "botAliasId" => String.t(),
        "botId" => String.t(),
        "localeId" => String.t()
      }

  """
  @type bot_alias_test_execution_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slot_priority() :: %{
        "priority" => integer(),
        "slotId" => String.t()
      }

  """
  @type slot_priority() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_resource_policy_response() :: %{
        "resourceArn" => String.t(),
        "revisionId" => String.t()
      }

  """
  @type create_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      initial_response_setting() :: %{
        "codeHook" => dialog_code_hook_invocation_setting(),
        "conditional" => conditional_specification(),
        "initialResponse" => response_specification(),
        "nextStep" => dialog_state()
      }

  """
  @type initial_response_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      text_input_specification() :: %{
        "startTimeoutMs" => integer()
      }

  """
  @type text_input_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bot_import_specification() :: %{
        "botName" => String.t(),
        "botTags" => map(),
        "dataPrivacy" => data_privacy(),
        "errorLogSettings" => error_log_settings(),
        "idleSessionTTLInSeconds" => integer(),
        "roleArn" => String.t(),
        "testBotAliasTags" => map()
      }

  """
  @type bot_import_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_bot_version_request() :: %{
        optional("description") => String.t(),
        required("botVersionLocaleSpecification") => map()
      }

  """
  @type create_bot_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_bot_recommendation_response() :: %{
        "botId" => String.t(),
        "botRecommendationId" => String.t(),
        "botRecommendationStatus" => list(any()),
        "botVersion" => String.t(),
        "creationDateTime" => non_neg_integer(),
        "encryptionSetting" => encryption_setting(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "localeId" => String.t(),
        "transcriptSourceSetting" => transcript_source_setting()
      }

  """
  @type update_bot_recommendation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analytics_path_filter() :: %{
        "name" => list(any()),
        "operator" => list(any()),
        "values" => list(String.t()())
      }

  """
  @type analytics_path_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_set_discrepancy_errors() :: %{
        "intentDiscrepancies" => list(test_set_intent_discrepancy_item()()),
        "slotDiscrepancies" => list(test_set_slot_discrepancy_item()())
      }

  """
  @type test_set_discrepancy_errors() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_test_set_request() :: %{
        optional("description") => String.t(),
        required("testSetName") => String.t()
      }

  """
  @type update_test_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_filter() :: %{
        "name" => list(any()),
        "operator" => list(any()),
        "values" => list(String.t()())
      }

  """
  @type export_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dialog_code_hook_settings() :: %{
        "enabled" => boolean()
      }

  """
  @type dialog_code_hook_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      overall_test_results() :: %{
        "items" => list(overall_test_result_item()())
      }

  """
  @type overall_test_results() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slot_resolution_improvement_specification() :: %{
        "bedrockModelSpecification" => bedrock_model_specification(),
        "enabled" => boolean()
      }

  """
  @type slot_resolution_improvement_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s_s_ml_message() :: %{
        "value" => String.t()
      }

  """
  @type s_s_ml_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoked_intent_sample() :: %{
        "intentName" => String.t()
      }

  """
  @type invoked_intent_sample() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bot_locale_summary() :: %{
        "botLocaleStatus" => list(any()),
        "description" => String.t(),
        "lastBuildSubmittedDateTime" => non_neg_integer(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "localeId" => String.t(),
        "localeName" => String.t()
      }

  """
  @type bot_locale_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_specification() :: %{
        "endTimeoutMs" => integer(),
        "maxLengthMs" => integer()
      }

  """
  @type audio_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      import_summary() :: %{
        "creationDateTime" => non_neg_integer(),
        "importId" => String.t(),
        "importStatus" => list(any()),
        "importedResourceId" => String.t(),
        "importedResourceName" => String.t(),
        "importedResourceType" => list(any()),
        "lastUpdatedDateTime" => non_neg_integer(),
        "mergeStrategy" => list(any())
      }

  """
  @type import_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      grammar_slot_type_source() :: %{
        "kmsKeyArn" => String.t(),
        "s3BucketName" => String.t(),
        "s3ObjectKey" => String.t()
      }

  """
  @type grammar_slot_type_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slot_value() :: %{
        "interpretedValue" => String.t()
      }

  """
  @type slot_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analytics_session_group_by_key() :: %{
        "name" => list(any()),
        "value" => String.t()
      }

  """
  @type analytics_session_group_by_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bot_locale_sort_by() :: %{
        "attribute" => list(any()),
        "order" => list(any())
      }

  """
  @type bot_locale_sort_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conversation_level_intent_classification_result_item() :: %{
        "intentName" => String.t(),
        "matchResult" => list(any())
      }

  """
  @type conversation_level_intent_classification_result_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execution_error_details() :: %{
        "errorCode" => String.t(),
        "errorMessage" => String.t()
      }

  """
  @type execution_error_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      prompt_specification() :: %{
        "allowInterrupt" => boolean(),
        "maxRetries" => integer(),
        "messageGroups" => list(message_group()()),
        "messageSelectionStrategy" => list(any()),
        "promptAttemptsSpecification" => map()
      }

  """
  @type prompt_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_create_custom_vocabulary_item_request() :: %{
        required("customVocabularyItemList") => list(new_custom_vocabulary_item()())
      }

  """
  @type batch_create_custom_vocabulary_item_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_upload_url_response() :: %{
        "importId" => String.t(),
        "uploadUrl" => String.t()
      }

  """
  @type create_upload_url_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fulfillment_start_response_specification() :: %{
        "allowInterrupt" => boolean(),
        "delayInSeconds" => integer(),
        "messageGroups" => list(message_group()())
      }

  """
  @type fulfillment_start_response_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      voice_settings() :: %{
        "engine" => list(any()),
        "voiceId" => String.t()
      }

  """
  @type voice_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_export_request() :: %{}

  """
  @type delete_export_request() :: %{}

  @typedoc """

  ## Example:

      conversation_level_result_detail() :: %{
        "endToEndResult" => list(any()),
        "speechTranscriptionResult" => list(any())
      }

  """
  @type conversation_level_result_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_aggregated_utterances_request() :: %{
        optional("botAliasId") => String.t(),
        optional("botVersion") => String.t(),
        optional("filters") => list(aggregated_utterances_filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => aggregated_utterances_sort_by(),
        required("aggregationDuration") => utterance_aggregation_duration(),
        required("localeId") => String.t()
      }

  """
  @type list_aggregated_utterances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associated_transcript_filter() :: %{
        "name" => list(any()),
        "values" => list(String.t()())
      }

  """
  @type associated_transcript_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_slot_request() :: %{
        optional("description") => String.t(),
        optional("multipleValuesSetting") => multiple_values_setting(),
        optional("obfuscationSetting") => obfuscation_setting(),
        optional("slotTypeId") => String.t(),
        optional("subSlotSetting") => sub_slot_setting(),
        required("slotName") => String.t(),
        required("valueElicitationSetting") => slot_value_elicitation_setting()
      }

  """
  @type create_slot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_associated_transcripts_request() :: %{
        optional("maxResults") => integer(),
        optional("nextIndex") => integer(),
        optional("searchOrder") => list(any()),
        required("filters") => list(associated_transcript_filter()())
      }

  """
  @type search_associated_transcripts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_bot_version_request() :: %{}

  """
  @type describe_bot_version_request() :: %{}

  @typedoc """

  ## Example:

      principal() :: %{
        "arn" => String.t(),
        "service" => String.t()
      }

  """
  @type principal() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      intent_summary() :: %{
        "description" => String.t(),
        "inputContexts" => list(input_context()()),
        "intentId" => String.t(),
        "intentName" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "outputContexts" => list(output_context()()),
        "parentIntentSignature" => String.t()
      }

  """
  @type intent_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sub_slot_type_composition() :: %{
        "name" => String.t(),
        "slotTypeId" => String.t()
      }

  """
  @type sub_slot_type_composition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_set_import_input_location() :: %{
        "s3BucketName" => String.t(),
        "s3Path" => String.t()
      }

  """
  @type test_set_import_input_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_intents_request() :: %{
        optional("filters") => list(intent_filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => intent_sort_by()
      }

  """
  @type list_intents_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analytics_bin_by_specification() :: %{
        "interval" => list(any()),
        "name" => list(any()),
        "order" => list(any())
      }

  """
  @type analytics_bin_by_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slot_resolution_test_result_item() :: %{
        "resultCounts" => slot_resolution_test_result_item_counts(),
        "slotName" => String.t()
      }

  """
  @type slot_resolution_test_result_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_resource_specification() :: %{
        "botExportSpecification" => bot_export_specification(),
        "botLocaleExportSpecification" => bot_locale_export_specification(),
        "customVocabularyExportSpecification" => custom_vocabulary_export_specification(),
        "testSetExportSpecification" => test_set_export_specification()
      }

  """
  @type export_resource_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      overall_test_result_item() :: %{
        "endToEndResultCounts" => map(),
        "multiTurnConversation" => boolean(),
        "speechTranscriptionResultCounts" => map(),
        "totalResultCount" => integer()
      }

  """
  @type overall_test_result_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_turn_result() :: %{
        "actualOutput" => user_turn_output_specification(),
        "conversationLevelResult" => conversation_level_result_detail(),
        "endToEndResult" => list(any()),
        "errorDetails" => execution_error_details(),
        "expectedOutput" => user_turn_output_specification(),
        "input" => user_turn_input_specification(),
        "intentMatchResult" => list(any()),
        "slotMatchResult" => list(any()),
        "speechTranscriptionResult" => list(any())
      }

  """
  @type user_turn_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bot_version_locale_details() :: %{
        "sourceBotVersion" => String.t()
      }

  """
  @type bot_version_locale_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_bot_alias_response() :: %{
        "botAliasId" => String.t(),
        "botAliasLocaleSettings" => map(),
        "botAliasName" => String.t(),
        "botAliasStatus" => list(any()),
        "botId" => String.t(),
        "botVersion" => String.t(),
        "conversationLogSettings" => conversation_log_settings(),
        "creationDateTime" => non_neg_integer(),
        "description" => String.t(),
        "sentimentAnalysisSettings" => sentiment_analysis_settings(),
        "tags" => map()
      }

  """
  @type create_bot_alias_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bot_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => bot_version_sort_by()
      }

  """
  @type list_bot_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      image_response_card() :: %{
        "buttons" => list(button()()),
        "imageUrl" => String.t(),
        "subtitle" => String.t(),
        "title" => String.t()
      }

  """
  @type image_response_card() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      qn_a_intent_configuration() :: %{
        "bedrockModelConfiguration" => bedrock_model_specification(),
        "dataSourceConfiguration" => data_source_configuration()
      }

  """
  @type qn_a_intent_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_exports_request() :: %{
        optional("botId") => String.t(),
        optional("botVersion") => String.t(),
        optional("filters") => list(export_filter()()),
        optional("localeId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => export_sort_by()
      }

  """
  @type list_exports_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_test_set_records_response() :: %{
        "nextToken" => String.t(),
        "testSetRecords" => list(test_set_turn_record()())
      }

  """
  @type list_test_set_records_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_bot_alias_response() :: %{
        "botAliasId" => String.t(),
        "botAliasStatus" => list(any()),
        "botId" => String.t()
      }

  """
  @type delete_bot_alias_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_intent_paths_request() :: %{
        optional("filters") => list(analytics_path_filter()()),
        required("endDateTime") => non_neg_integer(),
        required("intentPath") => String.t(),
        required("startDateTime") => non_neg_integer()
      }

  """
  @type list_intent_paths_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dialog_state() :: %{
        "dialogAction" => dialog_action(),
        "intent" => intent_override(),
        "sessionAttributes" => map()
      }

  """
  @type dialog_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      transcript_filter() :: %{
        "lexTranscriptFilter" => lex_transcript_filter()
      }

  """
  @type transcript_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_intent_metrics_response() :: %{
        "botId" => String.t(),
        "nextToken" => String.t(),
        "results" => list(analytics_intent_result()())
      }

  """
  @type list_intent_metrics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      generation_summary() :: %{
        "creationDateTime" => non_neg_integer(),
        "generationId" => String.t(),
        "generationStatus" => list(any()),
        "lastUpdatedDateTime" => non_neg_integer()
      }

  """
  @type generation_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_update_custom_vocabulary_item_request() :: %{
        required("customVocabularyItemList") => list(custom_vocabulary_item()())
      }

  """
  @type batch_update_custom_vocabulary_item_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_test_set_generation_response() :: %{
        "creationDateTime" => non_neg_integer(),
        "description" => String.t(),
        "failureReasons" => list(String.t()()),
        "generationDataSource" => test_set_generation_data_source(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "roleArn" => String.t(),
        "storageLocation" => test_set_storage_location(),
        "testSetGenerationId" => String.t(),
        "testSetGenerationStatus" => list(any()),
        "testSetId" => String.t(),
        "testSetName" => String.t()
      }

  """
  @type describe_test_set_generation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_bot_replica_response() :: %{
        "botId" => String.t(),
        "botReplicaStatus" => list(any()),
        "creationDateTime" => non_neg_integer(),
        "replicaRegion" => String.t(),
        "sourceRegion" => String.t()
      }

  """
  @type create_bot_replica_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bot_alias_summary() :: %{
        "botAliasId" => String.t(),
        "botAliasName" => String.t(),
        "botAliasStatus" => list(any()),
        "botVersion" => String.t(),
        "creationDateTime" => non_neg_integer(),
        "description" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer()
      }

  """
  @type bot_alias_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bot_recommendations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_bot_recommendations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_associated_transcripts_response() :: %{
        "associatedTranscripts" => list(associated_transcript()()),
        "botId" => String.t(),
        "botRecommendationId" => String.t(),
        "botVersion" => String.t(),
        "localeId" => String.t(),
        "nextIndex" => integer(),
        "totalResults" => integer()
      }

  """
  @type search_associated_transcripts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_bot_resource_generation_response() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "creationDateTime" => non_neg_integer(),
        "failureReasons" => list(String.t()()),
        "generatedBotLocaleUrl" => String.t(),
        "generationId" => String.t(),
        "generationInputPrompt" => String.t(),
        "generationStatus" => list(any()),
        "lastUpdatedDateTime" => non_neg_integer(),
        "localeId" => String.t(),
        "modelArn" => String.t()
      }

  """
  @type describe_bot_resource_generation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_test_set_response() :: %{
        "creationDateTime" => non_neg_integer(),
        "description" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "modality" => list(any()),
        "numTurns" => integer(),
        "roleArn" => String.t(),
        "status" => list(any()),
        "storageLocation" => test_set_storage_location(),
        "testSetId" => String.t(),
        "testSetName" => String.t()
      }

  """
  @type update_test_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      prompt_attempt_specification() :: %{
        "allowInterrupt" => boolean(),
        "allowedInputTypes" => allowed_input_types(),
        "audioAndDTMFInputSpecification" => audio_and_d_t_m_f_input_specification(),
        "textInputSpecification" => text_input_specification()
      }

  """
  @type prompt_attempt_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kendra_configuration() :: %{
        "kendraIndex" => String.t(),
        "queryFilterString" => String.t(),
        "queryFilterStringEnabled" => boolean()
      }

  """
  @type kendra_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_import_request() :: %{}

  """
  @type describe_import_request() :: %{}

  @typedoc """

  ## Example:

      descriptive_bot_builder_specification() :: %{
        "bedrockModelSpecification" => bedrock_model_specification(),
        "enabled" => boolean()
      }

  """
  @type descriptive_bot_builder_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_imports_response() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "importSummaries" => list(import_summary()()),
        "localeId" => String.t(),
        "nextToken" => String.t()
      }

  """
  @type list_imports_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      advanced_recognition_setting() :: %{
        "audioRecognitionStrategy" => list(any())
      }

  """
  @type advanced_recognition_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      utterance_aggregation_duration() :: %{
        "relativeAggregationDuration" => relative_aggregation_duration()
      }

  """
  @type utterance_aggregation_duration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_intent_response() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "creationDateTime" => non_neg_integer(),
        "description" => String.t(),
        "dialogCodeHook" => dialog_code_hook_settings(),
        "fulfillmentCodeHook" => fulfillment_code_hook_settings(),
        "initialResponseSetting" => initial_response_setting(),
        "inputContexts" => list(input_context()()),
        "intentClosingSetting" => intent_closing_setting(),
        "intentConfirmationSetting" => intent_confirmation_setting(),
        "intentId" => String.t(),
        "intentName" => String.t(),
        "kendraConfiguration" => kendra_configuration(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "localeId" => String.t(),
        "outputContexts" => list(output_context()()),
        "parentIntentSignature" => String.t(),
        "qInConnectIntentConfiguration" => q_in_connect_intent_configuration(),
        "qnAIntentConfiguration" => qn_a_intent_configuration(),
        "sampleUtterances" => list(sample_utterance()()),
        "slotPriorities" => list(slot_priority()())
      }

  """
  @type update_intent_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_set_storage_location() :: %{
        "kmsKeyArn" => String.t(),
        "s3BucketName" => String.t(),
        "s3Path" => String.t()
      }

  """
  @type test_set_storage_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_bot_locale_request() :: %{}

  """
  @type describe_bot_locale_request() :: %{}

  @typedoc """

  ## Example:

      list_slot_types_response() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "localeId" => String.t(),
        "nextToken" => String.t(),
        "slotTypeSummaries" => list(slot_type_summary()())
      }

  """
  @type list_slot_types_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analytics_intent_stage_metric_result() :: %{
        "name" => list(any()),
        "statistic" => list(any()),
        "value" => float()
      }

  """
  @type analytics_intent_stage_metric_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_built_in_slot_types_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => built_in_slot_type_sort_by()
      }

  """
  @type list_built_in_slot_types_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_set_turn_result() :: %{
        "agent" => agent_turn_result(),
        "user" => user_turn_result()
      }

  """
  @type test_set_turn_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      intent_level_slot_resolution_test_results() :: %{
        "items" => list(intent_level_slot_resolution_test_result_item()())
      }

  """
  @type intent_level_slot_resolution_test_results() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bot_alias_locale_settings() :: %{
        "codeHookSpecification" => code_hook_specification(),
        "enabled" => boolean()
      }

  """
  @type bot_alias_locale_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_bot_alias_request() :: %{
        optional("botAliasLocaleSettings") => map(),
        optional("botVersion") => String.t(),
        optional("conversationLogSettings") => conversation_log_settings(),
        optional("description") => String.t(),
        optional("sentimentAnalysisSettings") => sentiment_analysis_settings(),
        optional("tags") => map(),
        required("botAliasName") => String.t()
      }

  """
  @type create_bot_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_turn_specification() :: %{
        "expected" => user_turn_output_specification(),
        "input" => user_turn_input_specification()
      }

  """
  @type user_turn_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_bot_recommendation_response() :: %{
        "botId" => String.t(),
        "botRecommendationId" => String.t(),
        "botRecommendationStatus" => list(any()),
        "botVersion" => String.t(),
        "creationDateTime" => non_neg_integer(),
        "encryptionSetting" => encryption_setting(),
        "localeId" => String.t(),
        "transcriptSourceSetting" => transcript_source_setting()
      }

  """
  @type start_bot_recommendation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      text_log_destination() :: %{
        "cloudWatch" => cloud_watch_log_group_log_destination()
      }

  """
  @type text_log_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_bot_version_response() :: %{
        "botId" => String.t(),
        "botStatus" => list(any()),
        "botVersion" => String.t()
      }

  """
  @type delete_bot_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_bot_alias_request() :: %{
        optional("botAliasLocaleSettings") => map(),
        optional("botVersion") => String.t(),
        optional("conversationLogSettings") => conversation_log_settings(),
        optional("description") => String.t(),
        optional("sentimentAnalysisSettings") => sentiment_analysis_settings(),
        required("botAliasName") => String.t()
      }

  """
  @type update_bot_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_bot_request() :: %{}

  """
  @type describe_bot_request() :: %{}

  @typedoc """

  ## Example:

      conversation_logs_data_source() :: %{
        "botAliasId" => String.t(),
        "botId" => String.t(),
        "filter" => conversation_logs_data_source_filter_by(),
        "localeId" => String.t()
      }

  """
  @type conversation_logs_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      utterance_audio_input_specification() :: %{
        "audioFileS3Location" => String.t()
      }

  """
  @type utterance_audio_input_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_session_analytics_data_response() :: %{
        "botId" => String.t(),
        "nextToken" => String.t(),
        "sessions" => list(session_specification()())
      }

  """
  @type list_session_analytics_data_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_bot_resource_generation_request() :: %{
        required("generationInputPrompt") => String.t()
      }

  """
  @type start_bot_resource_generation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slot_resolution_test_result_item_counts() :: %{
        "slotMatchResultCounts" => map(),
        "speechTranscriptionResultCounts" => map(),
        "totalResultCount" => integer()
      }

  """
  @type slot_resolution_test_result_item_counts() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bot_summary() :: %{
        "botId" => String.t(),
        "botName" => String.t(),
        "botStatus" => list(any()),
        "botType" => list(any()),
        "description" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "latestBotVersion" => String.t()
      }

  """
  @type bot_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bots_request() :: %{
        optional("filters") => list(bot_filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => bot_sort_by()
      }

  """
  @type list_bots_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_custom_vocabulary_metadata_response() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "creationDateTime" => non_neg_integer(),
        "customVocabularyStatus" => list(any()),
        "lastUpdatedDateTime" => non_neg_integer(),
        "localeId" => String.t()
      }

  """
  @type describe_custom_vocabulary_metadata_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_resource_policy_statement_response() :: %{
        "resourceArn" => String.t(),
        "revisionId" => String.t()
      }

  """
  @type create_resource_policy_statement_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_slot_request() :: %{}

  """
  @type delete_slot_request() :: %{}

  @typedoc """

  ## Example:

      delete_bot_replica_request() :: %{}

  """
  @type delete_bot_replica_request() :: %{}

  @typedoc """

  ## Example:

      list_slots_response() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "intentId" => String.t(),
        "localeId" => String.t(),
        "nextToken" => String.t(),
        "slotSummaries" => list(slot_summary()())
      }

  """
  @type list_slots_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_intent_paths_response() :: %{
        "nodeSummaries" => list(analytics_intent_node_summary()())
      }

  """
  @type list_intent_paths_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      failed_custom_vocabulary_item() :: %{
        "errorCode" => list(any()),
        "errorMessage" => String.t(),
        "itemId" => String.t()
      }

  """
  @type failed_custom_vocabulary_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      buildtime_settings() :: %{
        "descriptiveBotBuilder" => descriptive_bot_builder_specification(),
        "sampleUtteranceGeneration" => sample_utterance_generation_specification()
      }

  """
  @type buildtime_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_vocabulary_import_specification() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "localeId" => String.t()
      }

  """
  @type custom_vocabulary_import_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_set_discrepancy_report_bot_alias_target() :: %{
        "botAliasId" => String.t(),
        "botId" => String.t(),
        "localeId" => String.t()
      }

  """
  @type test_set_discrepancy_report_bot_alias_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_bot_response() :: %{
        "botId" => String.t(),
        "botStatus" => list(any())
      }

  """
  @type delete_bot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_intent_metrics_request() :: %{
        optional("binBy") => list(analytics_bin_by_specification()()),
        optional("filters") => list(analytics_intent_filter()()),
        optional("groupBy") => list(analytics_intent_group_by_specification()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("endDateTime") => non_neg_integer(),
        required("metrics") => list(analytics_intent_metric()()),
        required("startDateTime") => non_neg_integer()
      }

  """
  @type list_intent_metrics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_test_set_discrepancy_report_response() :: %{
        "creationDateTime" => non_neg_integer(),
        "target" => test_set_discrepancy_report_resource_target(),
        "testSetDiscrepancyReportId" => String.t(),
        "testSetId" => String.t()
      }

  """
  @type create_test_set_discrepancy_report_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analytics_utterance_attribute_result() :: %{
        "lastUsedIntent" => String.t()
      }

  """
  @type analytics_utterance_attribute_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bot_export_specification() :: %{
        "botId" => String.t(),
        "botVersion" => String.t()
      }

  """
  @type bot_export_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_bot_response() :: %{
        "botId" => String.t(),
        "botMembers" => list(bot_member()()),
        "botName" => String.t(),
        "botStatus" => list(any()),
        "botType" => list(any()),
        "creationDateTime" => non_neg_integer(),
        "dataPrivacy" => data_privacy(),
        "description" => String.t(),
        "errorLogSettings" => error_log_settings(),
        "failureReasons" => list(String.t()()),
        "idleSessionTTLInSeconds" => integer(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "roleArn" => String.t()
      }

  """
  @type describe_bot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analytics_intent_filter() :: %{
        "name" => list(any()),
        "operator" => list(any()),
        "values" => list(String.t()())
      }

  """
  @type analytics_intent_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_import_request() :: %{}

  """
  @type delete_import_request() :: %{}

  @typedoc """

  ## Example:

      analytics_session_metric_result() :: %{
        "name" => list(any()),
        "statistic" => list(any()),
        "value" => float()
      }

  """
  @type analytics_session_metric_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_bot_version_request() :: %{
        optional("skipResourceInUseCheck") => boolean()
      }

  """
  @type delete_bot_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analytics_intent_group_by_specification() :: %{
        "name" => list(any())
      }

  """
  @type analytics_intent_group_by_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      utterance_level_test_results() :: %{
        "items" => list(utterance_level_test_result_item()())
      }

  """
  @type utterance_level_test_results() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      session_specification() :: %{
        "botAliasId" => String.t(),
        "botVersion" => String.t(),
        "channel" => String.t(),
        "conversationDurationSeconds" => float(),
        "conversationEndState" => list(any()),
        "conversationEndTime" => non_neg_integer(),
        "conversationStartTime" => non_neg_integer(),
        "invokedIntentSamples" => list(invoked_intent_sample()()),
        "localeId" => String.t(),
        "mode" => list(any()),
        "numberOfTurns" => float(),
        "originatingRequestId" => String.t(),
        "sessionId" => String.t()
      }

  """
  @type session_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bot_locale_export_specification() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "localeId" => String.t()
      }

  """
  @type bot_locale_export_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      active_context() :: %{
        "name" => String.t()
      }

  """
  @type active_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_bot_recommendation_response() :: %{
        "botId" => String.t(),
        "botRecommendationId" => String.t(),
        "botRecommendationResults" => bot_recommendation_results(),
        "botRecommendationStatus" => list(any()),
        "botVersion" => String.t(),
        "creationDateTime" => non_neg_integer(),
        "encryptionSetting" => encryption_setting(),
        "failureReasons" => list(String.t()()),
        "lastUpdatedDateTime" => non_neg_integer(),
        "localeId" => String.t(),
        "transcriptSourceSetting" => transcript_source_setting()
      }

  """
  @type describe_bot_recommendation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_resource_policy_request() :: %{
        required("policy") => String.t()
      }

  """
  @type create_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_set_discrepancy_report_resource_target() :: %{
        "botAliasTarget" => test_set_discrepancy_report_bot_alias_target()
      }

  """
  @type test_set_discrepancy_report_resource_target() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_bot_replica_request() :: %{
        required("replicaRegion") => String.t()
      }

  """
  @type create_bot_replica_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      session_data_sort_by() :: %{
        "name" => list(any()),
        "order" => list(any())
      }

  """
  @type session_data_sort_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_vocabulary_item() :: %{
        "displayAs" => String.t(),
        "itemId" => String.t(),
        "phrase" => String.t(),
        "weight" => integer()
      }

  """
  @type custom_vocabulary_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_resource_policy_statement_request() :: %{
        optional("condition") => map(),
        optional("expectedRevisionId") => String.t(),
        required("action") => list(String.t()()),
        required("effect") => list(any()),
        required("principal") => list(principal()()),
        required("statementId") => String.t()
      }

  """
  @type create_resource_policy_statement_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_session_state_specification() :: %{
        "activeContexts" => list(active_context()()),
        "runtimeHints" => runtime_hints(),
        "sessionAttributes" => map()
      }

  """
  @type input_session_state_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_intent_request() :: %{
        optional("description") => String.t(),
        optional("dialogCodeHook") => dialog_code_hook_settings(),
        optional("fulfillmentCodeHook") => fulfillment_code_hook_settings(),
        optional("initialResponseSetting") => initial_response_setting(),
        optional("inputContexts") => list(input_context()()),
        optional("intentClosingSetting") => intent_closing_setting(),
        optional("intentConfirmationSetting") => intent_confirmation_setting(),
        optional("kendraConfiguration") => kendra_configuration(),
        optional("outputContexts") => list(output_context()()),
        optional("parentIntentSignature") => String.t(),
        optional("qInConnectIntentConfiguration") => q_in_connect_intent_configuration(),
        optional("qnAIntentConfiguration") => qn_a_intent_configuration(),
        optional("sampleUtterances") => list(sample_utterance()()),
        required("intentName") => String.t()
      }

  """
  @type create_intent_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      response_specification() :: %{
        "allowInterrupt" => boolean(),
        "messageGroups" => list(message_group()())
      }

  """
  @type response_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aggregated_utterances_summary() :: %{
        "containsDataFromDeletedResources" => boolean(),
        "hitCount" => integer(),
        "missedCount" => integer(),
        "utterance" => String.t(),
        "utteranceFirstRecordedInAggregationDuration" => non_neg_integer(),
        "utteranceLastRecordedInAggregationDuration" => non_neg_integer()
      }

  """
  @type aggregated_utterances_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_import_response() :: %{
        "creationDateTime" => non_neg_integer(),
        "failureReasons" => list(String.t()()),
        "importId" => String.t(),
        "importStatus" => list(any()),
        "importedResourceId" => String.t(),
        "importedResourceName" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "mergeStrategy" => list(any()),
        "resourceSpecification" => import_resource_specification()
      }

  """
  @type describe_import_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_summary() :: %{
        "creationDateTime" => non_neg_integer(),
        "exportId" => String.t(),
        "exportStatus" => list(any()),
        "fileFormat" => list(any()),
        "lastUpdatedDateTime" => non_neg_integer(),
        "resourceSpecification" => export_resource_specification()
      }

  """
  @type export_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bot_filter() :: %{
        "name" => list(any()),
        "operator" => list(any()),
        "values" => list(String.t()())
      }

  """
  @type bot_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      intent_confirmation_setting() :: %{
        "active" => boolean(),
        "codeHook" => dialog_code_hook_invocation_setting(),
        "confirmationConditional" => conditional_specification(),
        "confirmationNextStep" => dialog_state(),
        "confirmationResponse" => response_specification(),
        "declinationConditional" => conditional_specification(),
        "declinationNextStep" => dialog_state(),
        "declinationResponse" => response_specification(),
        "elicitationCodeHook" => elicitation_code_hook_invocation_setting(),
        "failureConditional" => conditional_specification(),
        "failureNextStep" => dialog_state(),
        "failureResponse" => response_specification(),
        "promptSpecification" => prompt_specification()
      }

  """
  @type intent_confirmation_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bot_replica_summary() :: %{
        "botReplicaStatus" => list(any()),
        "creationDateTime" => non_neg_integer(),
        "failureReasons" => list(String.t()()),
        "replicaRegion" => String.t()
      }

  """
  @type bot_replica_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bot_recommendation_result_statistics() :: %{
        "intents" => intent_statistics(),
        "slotTypes" => slot_type_statistics()
      }

  """
  @type bot_recommendation_result_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slot_type_value() :: %{
        "sampleValue" => sample_value(),
        "synonyms" => list(sample_value()())
      }

  """
  @type slot_type_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conversation_level_test_results() :: %{
        "items" => list(conversation_level_test_result_item()())
      }

  """
  @type conversation_level_test_results() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conversation_level_slot_resolution_result_item() :: %{
        "intentName" => String.t(),
        "matchResult" => list(any()),
        "slotName" => String.t()
      }

  """
  @type conversation_level_slot_resolution_result_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_vocabulary_export_specification() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "localeId" => String.t()
      }

  """
  @type custom_vocabulary_export_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slot_filter() :: %{
        "name" => list(any()),
        "operator" => list(any()),
        "values" => list(String.t()())
      }

  """
  @type slot_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slot_resolution_setting() :: %{
        "slotResolutionStrategy" => list(any())
      }

  """
  @type slot_resolution_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_log_destination() :: %{
        "s3Bucket" => s3_bucket_log_destination()
      }

  """
  @type audio_log_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_intent_stage_metrics_response() :: %{
        "botId" => String.t(),
        "nextToken" => String.t(),
        "results" => list(analytics_intent_stage_result()())
      }

  """
  @type list_intent_stage_metrics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      built_in_slot_type_summary() :: %{
        "description" => String.t(),
        "slotTypeSignature" => String.t()
      }

  """
  @type built_in_slot_type_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slot_value_override() :: %{
        "shape" => list(any()),
        "value" => slot_value(),
        "values" => list(slot_value_override()())
      }

  """
  @type slot_value_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analytics_intent_stage_filter() :: %{
        "name" => list(any()),
        "operator" => list(any()),
        "values" => list(String.t()())
      }

  """
  @type analytics_intent_stage_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_session_metrics_request() :: %{
        optional("binBy") => list(analytics_bin_by_specification()()),
        optional("filters") => list(analytics_session_filter()()),
        optional("groupBy") => list(analytics_session_group_by_specification()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("endDateTime") => non_neg_integer(),
        required("metrics") => list(analytics_session_metric()()),
        required("startDateTime") => non_neg_integer()
      }

  """
  @type list_session_metrics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_vocabulary_entry_id() :: %{
        "itemId" => String.t()
      }

  """
  @type custom_vocabulary_entry_id() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      import_resource_specification() :: %{
        "botImportSpecification" => bot_import_specification(),
        "botLocaleImportSpecification" => bot_locale_import_specification(),
        "customVocabularyImportSpecification" => custom_vocabulary_import_specification(),
        "testSetImportResourceSpecification" => test_set_import_resource_specification()
      }

  """
  @type import_resource_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_set_export_specification() :: %{
        "testSetId" => String.t()
      }

  """
  @type test_set_export_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analytics_intent_stage_metric() :: %{
        "name" => list(any()),
        "order" => list(any()),
        "statistic" => list(any())
      }

  """
  @type analytics_intent_stage_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sub_slot_value_elicitation_setting() :: %{
        "defaultValueSpecification" => slot_default_value_specification(),
        "promptSpecification" => prompt_specification(),
        "sampleUtterances" => list(sample_utterance()()),
        "waitAndContinueSpecification" => wait_and_continue_specification()
      }

  """
  @type sub_slot_value_elicitation_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analytics_session_result() :: %{
        "binKeys" => list(analytics_bin_key()()),
        "groupByKeys" => list(analytics_session_group_by_key()()),
        "metricsResults" => list(analytics_session_metric_result()())
      }

  """
  @type analytics_session_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      utterance_bot_response() :: %{
        "content" => String.t(),
        "contentType" => list(any()),
        "imageResponseCard" => image_response_card()
      }

  """
  @type utterance_bot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analytics_intent_result() :: %{
        "binKeys" => list(analytics_bin_key()()),
        "groupByKeys" => list(analytics_intent_group_by_key()()),
        "metricsResults" => list(analytics_intent_metric_result()())
      }

  """
  @type analytics_intent_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      wait_and_continue_specification() :: %{
        "active" => boolean(),
        "continueResponse" => response_specification(),
        "stillWaitingResponse" => still_waiting_response_specification(),
        "waitingResponse" => response_specification()
      }

  """
  @type wait_and_continue_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slot_default_value_specification() :: %{
        "defaultValueList" => list(slot_default_value()())
      }

  """
  @type slot_default_value_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bot_version_replicas_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => bot_version_replica_sort_by()
      }

  """
  @type list_bot_version_replicas_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_export_response() :: %{
        "exportId" => String.t(),
        "exportStatus" => list(any())
      }

  """
  @type delete_export_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_set_import_resource_specification() :: %{
        "description" => String.t(),
        "importInputLocation" => test_set_import_input_location(),
        "modality" => list(any()),
        "roleArn" => String.t(),
        "storageLocation" => test_set_storage_location(),
        "testSetName" => String.t(),
        "testSetTags" => map()
      }

  """
  @type test_set_import_resource_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_upload_url_request() :: %{}

  """
  @type create_upload_url_request() :: %{}

  @typedoc """

  ## Example:

      analytics_intent_group_by_key() :: %{
        "name" => list(any()),
        "value" => String.t()
      }

  """
  @type analytics_intent_group_by_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      relative_aggregation_duration() :: %{
        "timeDimension" => list(any()),
        "timeValue" => integer()
      }

  """
  @type relative_aggregation_duration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_set_slot_discrepancy_item() :: %{
        "errorMessage" => String.t(),
        "intentName" => String.t(),
        "slotName" => String.t()
      }

  """
  @type test_set_slot_discrepancy_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fulfillment_code_hook_settings() :: %{
        "active" => boolean(),
        "enabled" => boolean(),
        "fulfillmentUpdatesSpecification" => fulfillment_updates_specification(),
        "postFulfillmentStatusSpecification" => post_fulfillment_status_specification()
      }

  """
  @type fulfillment_code_hook_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bot_sort_by() :: %{
        "attribute" => list(any()),
        "order" => list(any())
      }

  """
  @type bot_sort_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      intent_filter() :: %{
        "name" => list(any()),
        "operator" => list(any()),
        "values" => list(String.t()())
      }

  """
  @type intent_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slot_capture_setting() :: %{
        "captureConditional" => conditional_specification(),
        "captureNextStep" => dialog_state(),
        "captureResponse" => response_specification(),
        "codeHook" => dialog_code_hook_invocation_setting(),
        "elicitationCodeHook" => elicitation_code_hook_invocation_setting(),
        "failureConditional" => conditional_specification(),
        "failureNextStep" => dialog_state(),
        "failureResponse" => response_specification()
      }

  """
  @type slot_capture_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      q_in_connect_intent_configuration() :: %{
        "qInConnectAssistantConfiguration" => q_in_connect_assistant_configuration()
      }

  """
  @type q_in_connect_intent_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_set_sort_by() :: %{
        "attribute" => list(any()),
        "order" => list(any())
      }

  """
  @type test_set_sort_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      recommended_intent_summary() :: %{
        "intentId" => String.t(),
        "intentName" => String.t(),
        "sampleUtterancesCount" => integer()
      }

  """
  @type recommended_intent_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_test_execution_artifacts_url_request() :: %{}

  """
  @type get_test_execution_artifacts_url_request() :: %{}

  @typedoc """

  ## Example:

      sample_utterance() :: %{
        "utterance" => String.t()
      }

  """
  @type sample_utterance() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_slot_type_response() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "compositeSlotTypeSetting" => composite_slot_type_setting(),
        "creationDateTime" => non_neg_integer(),
        "description" => String.t(),
        "externalSourceSetting" => external_source_setting(),
        "localeId" => String.t(),
        "parentSlotTypeSignature" => String.t(),
        "slotTypeId" => String.t(),
        "slotTypeName" => String.t(),
        "slotTypeValues" => list(slot_type_value()()),
        "valueSelectionSetting" => slot_value_selection_setting()
      }

  """
  @type create_slot_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analytics_intent_stage_group_by_key() :: %{
        "name" => list(any()),
        "value" => String.t()
      }

  """
  @type analytics_intent_stage_group_by_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_bot_recommendation_request() :: %{}

  """
  @type stop_bot_recommendation_request() :: %{}

  @typedoc """

  ## Example:

      bot_version_replica_summary() :: %{
        "botVersion" => String.t(),
        "botVersionReplicationStatus" => list(any()),
        "creationDateTime" => non_neg_integer(),
        "failureReasons" => list(String.t()())
      }

  """
  @type bot_version_replica_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bedrock_model_specification() :: %{
        "customPrompt" => String.t(),
        "guardrail" => bedrock_guardrail_configuration(),
        "modelArn" => String.t(),
        "traceStatus" => list(any())
      }

  """
  @type bedrock_model_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      condition() :: %{
        "expressionString" => String.t()
      }

  """
  @type condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bedrock_knowledge_store_exact_response_fields() :: %{
        "answerField" => String.t()
      }

  """
  @type bedrock_knowledge_store_exact_response_fields() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analytics_utterance_group_by_key() :: %{
        "name" => list(any()),
        "value" => String.t()
      }

  """
  @type analytics_utterance_group_by_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_slots_request() :: %{
        optional("filters") => list(slot_filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => slot_sort_by()
      }

  """
  @type list_slots_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_built_in_slot_types_response() :: %{
        "builtInSlotTypeSummaries" => list(built_in_slot_type_summary()()),
        "localeId" => String.t(),
        "nextToken" => String.t()
      }

  """
  @type list_built_in_slot_types_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      allowed_input_types() :: %{
        "allowAudioInput" => boolean(),
        "allowDTMFInput" => boolean()
      }

  """
  @type allowed_input_types() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_execution_sort_by() :: %{
        "attribute" => list(any()),
        "order" => list(any())
      }

  """
  @type test_execution_sort_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bot_aliases_response() :: %{
        "botAliasSummaries" => list(bot_alias_summary()()),
        "botId" => String.t(),
        "nextToken" => String.t()
      }

  """
  @type list_bot_aliases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bot_version_replica_sort_by() :: %{
        "attribute" => list(any()),
        "order" => list(any())
      }

  """
  @type bot_version_replica_sort_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_aggregated_utterances_response() :: %{
        "aggregatedUtterancesSummaries" => list(aggregated_utterances_summary()()),
        "aggregationDuration" => utterance_aggregation_duration(),
        "aggregationLastRefreshedDateTime" => non_neg_integer(),
        "aggregationWindowEndTime" => non_neg_integer(),
        "aggregationWindowStartTime" => non_neg_integer(),
        "botAliasId" => String.t(),
        "botId" => String.t(),
        "botVersion" => String.t(),
        "localeId" => String.t(),
        "nextToken" => String.t()
      }

  """
  @type list_aggregated_utterances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_slot_type_request() :: %{
        optional("compositeSlotTypeSetting") => composite_slot_type_setting(),
        optional("description") => String.t(),
        optional("externalSourceSetting") => external_source_setting(),
        optional("parentSlotTypeSignature") => String.t(),
        optional("slotTypeValues") => list(slot_type_value()()),
        optional("valueSelectionSetting") => slot_value_selection_setting(),
        required("slotTypeName") => String.t()
      }

  """
  @type update_slot_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      runtime_hint_value() :: %{
        "phrase" => String.t()
      }

  """
  @type runtime_hint_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bedrock_knowledge_store_configuration() :: %{
        "bedrockKnowledgeBaseArn" => String.t(),
        "exactResponse" => boolean(),
        "exactResponseFields" => bedrock_knowledge_store_exact_response_fields()
      }

  """
  @type bedrock_knowledge_store_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      new_custom_vocabulary_item() :: %{
        "displayAs" => String.t(),
        "phrase" => String.t(),
        "weight" => integer()
      }

  """
  @type new_custom_vocabulary_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analytics_bin_key() :: %{
        "name" => list(any()),
        "value" => float()
      }

  """
  @type analytics_bin_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_resource_policy_response() :: %{
        "resourceArn" => String.t(),
        "revisionId" => String.t()
      }

  """
  @type update_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analytics_intent_metric_result() :: %{
        "name" => list(any()),
        "statistic" => list(any()),
        "value" => float()
      }

  """
  @type analytics_intent_metric_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_utterances_response() :: %{}

  """
  @type delete_utterances_response() :: %{}

  @typedoc """

  ## Example:

      bot_version_sort_by() :: %{
        "attribute" => list(any()),
        "order" => list(any())
      }

  """
  @type bot_version_sort_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analytics_session_group_by_specification() :: %{
        "name" => list(any())
      }

  """
  @type analytics_session_group_by_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_bot_replica_response() :: %{
        "botId" => String.t(),
        "botReplicaStatus" => list(any()),
        "replicaRegion" => String.t()
      }

  """
  @type delete_bot_replica_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slot_type_statistics() :: %{
        "discoveredSlotTypeCount" => integer()
      }

  """
  @type slot_type_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slot_value_elicitation_setting() :: %{
        "defaultValueSpecification" => slot_default_value_specification(),
        "promptSpecification" => prompt_specification(),
        "sampleUtterances" => list(sample_utterance()()),
        "slotCaptureSetting" => slot_capture_setting(),
        "slotConstraint" => list(any()),
        "slotResolutionSetting" => slot_resolution_setting(),
        "waitAndContinueSpecification" => wait_and_continue_specification()
      }

  """
  @type slot_value_elicitation_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conditional_branch() :: %{
        "condition" => condition(),
        "name" => String.t(),
        "nextStep" => dialog_state(),
        "response" => response_specification()
      }

  """
  @type conditional_branch() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slot_type_sort_by() :: %{
        "attribute" => list(any()),
        "order" => list(any())
      }

  """
  @type slot_type_sort_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_test_set_discrepancy_report_request() :: %{
        required("target") => test_set_discrepancy_report_resource_target()
      }

  """
  @type create_test_set_discrepancy_report_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cloud_watch_log_group_log_destination() :: %{
        "cloudWatchLogGroupArn" => String.t(),
        "logPrefix" => String.t()
      }

  """
  @type cloud_watch_log_group_log_destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bot_alias_replicas_response() :: %{
        "botAliasReplicaSummaries" => list(bot_alias_replica_summary()()),
        "botId" => String.t(),
        "nextToken" => String.t(),
        "replicaRegion" => String.t(),
        "sourceRegion" => String.t()
      }

  """
  @type list_bot_alias_replicas_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_execution_result_items() :: %{
        "conversationLevelTestResults" => conversation_level_test_results(),
        "intentClassificationTestResults" => intent_classification_test_results(),
        "intentLevelSlotResolutionTestResults" => intent_level_slot_resolution_test_results(),
        "overallTestResults" => overall_test_results(),
        "utteranceLevelTestResults" => utterance_level_test_results()
      }

  """
  @type test_execution_result_items() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_set_turn_record() :: %{
        "conversationId" => String.t(),
        "recordNumber" => float(),
        "turnNumber" => integer(),
        "turnSpecification" => turn_specification()
      }

  """
  @type test_set_turn_record() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analytics_session_filter() :: %{
        "name" => list(any()),
        "operator" => list(any()),
        "values" => list(String.t()())
      }

  """
  @type analytics_session_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lambda_code_hook() :: %{
        "codeHookInterfaceVersion" => String.t(),
        "lambdaARN" => String.t()
      }

  """
  @type lambda_code_hook() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_custom_vocabulary_item_request() :: %{
        required("customVocabularyItemList") => list(custom_vocabulary_entry_id()())
      }

  """
  @type batch_delete_custom_vocabulary_item_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_import_response() :: %{
        "importId" => String.t(),
        "importStatus" => list(any())
      }

  """
  @type delete_import_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bot_version_summary() :: %{
        "botName" => String.t(),
        "botStatus" => list(any()),
        "botVersion" => String.t(),
        "creationDateTime" => non_neg_integer(),
        "description" => String.t()
      }

  """
  @type bot_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      intent_classification_test_results() :: %{
        "items" => list(intent_classification_test_result_item()())
      }

  """
  @type intent_classification_test_results() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_bot_alias_request() :: %{
        optional("skipResourceInUseCheck") => boolean()
      }

  """
  @type delete_bot_alias_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analytics_intent_stage_group_by_specification() :: %{
        "name" => list(any())
      }

  """
  @type analytics_intent_stage_group_by_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slot_summary() :: %{
        "description" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "slotConstraint" => list(any()),
        "slotId" => String.t(),
        "slotName" => String.t(),
        "slotTypeId" => String.t(),
        "valueElicitationPromptSpecification" => prompt_specification()
      }

  """
  @type slot_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bots_response() :: %{
        "botSummaries" => list(bot_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_bots_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bot_versions_response() :: %{
        "botId" => String.t(),
        "botVersionSummaries" => list(bot_version_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_bot_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      composite_slot_type_setting() :: %{
        "subSlots" => list(sub_slot_type_composition()())
      }

  """
  @type composite_slot_type_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sub_slot_setting() :: %{
        "expression" => String.t(),
        "slotSpecifications" => map()
      }

  """
  @type sub_slot_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_sort_by() :: %{
        "attribute" => list(any()),
        "order" => list(any())
      }

  """
  @type export_sort_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_turn_input_specification() :: %{
        "requestAttributes" => map(),
        "sessionState" => input_session_state_specification(),
        "utteranceInput" => utterance_input_specification()
      }

  """
  @type user_turn_input_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      utterance_input_specification() :: %{
        "audioInput" => utterance_audio_input_specification(),
        "textInput" => String.t()
      }

  """
  @type utterance_input_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bot_aliases_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_bot_aliases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bot_alias_replicas_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_bot_alias_replicas_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_slot_request() :: %{}

  """
  @type describe_slot_request() :: %{}

  @typedoc """

  ## Example:

      describe_slot_type_response() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "compositeSlotTypeSetting" => composite_slot_type_setting(),
        "creationDateTime" => non_neg_integer(),
        "description" => String.t(),
        "externalSourceSetting" => external_source_setting(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "localeId" => String.t(),
        "parentSlotTypeSignature" => String.t(),
        "slotTypeId" => String.t(),
        "slotTypeName" => String.t(),
        "slotTypeValues" => list(slot_type_value()()),
        "valueSelectionSetting" => slot_value_selection_setting()
      }

  """
  @type describe_slot_type_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bot_locales_request() :: %{
        optional("filters") => list(bot_locale_filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => bot_locale_sort_by()
      }

  """
  @type list_bot_locales_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slot_type_filter() :: %{
        "name" => list(any()),
        "operator" => list(any()),
        "values" => list(String.t()())
      }

  """
  @type slot_type_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_test_set_records_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_test_set_records_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_custom_vocabulary_response() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "customVocabularyStatus" => list(any()),
        "localeId" => String.t()
      }

  """
  @type delete_custom_vocabulary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_slot_type_request() :: %{
        optional("compositeSlotTypeSetting") => composite_slot_type_setting(),
        optional("description") => String.t(),
        optional("externalSourceSetting") => external_source_setting(),
        optional("parentSlotTypeSignature") => String.t(),
        optional("slotTypeValues") => list(slot_type_value()()),
        optional("valueSelectionSetting") => slot_value_selection_setting(),
        required("slotTypeName") => String.t()
      }

  """
  @type create_slot_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_set_generation_data_source() :: %{
        "conversationLogsDataSource" => conversation_logs_data_source()
      }

  """
  @type test_set_generation_data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_test_set_discrepancy_report_request() :: %{}

  """
  @type describe_test_set_discrepancy_report_request() :: %{}

  @typedoc """

  ## Example:

      conversation_log_settings() :: %{
        "audioLogSettings" => list(audio_log_setting()()),
        "textLogSettings" => list(text_log_setting()())
      }

  """
  @type conversation_log_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_slot_type_request() :: %{}

  """
  @type describe_slot_type_request() :: %{}

  @typedoc """

  ## Example:

      user_turn_intent_output() :: %{
        "name" => String.t(),
        "slots" => map()
      }

  """
  @type user_turn_intent_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_update_custom_vocabulary_item_response() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "errors" => list(failed_custom_vocabulary_item()()),
        "localeId" => String.t(),
        "resources" => list(custom_vocabulary_item()())
      }

  """
  @type batch_update_custom_vocabulary_item_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_execution_result_filter_by() :: %{
        "conversationLevelTestResultsFilterBy" => conversation_level_test_results_filter_by(),
        "resultTypeFilter" => list(any())
      }

  """
  @type test_execution_result_filter_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_test_set_discrepancy_report_response() :: %{
        "creationDateTime" => non_neg_integer(),
        "failureReasons" => list(String.t()()),
        "lastUpdatedDataTime" => non_neg_integer(),
        "target" => test_set_discrepancy_report_resource_target(),
        "testSetDiscrepancyRawOutputUrl" => String.t(),
        "testSetDiscrepancyReportId" => String.t(),
        "testSetDiscrepancyReportStatus" => list(any()),
        "testSetDiscrepancyTopErrors" => test_set_discrepancy_errors(),
        "testSetId" => String.t()
      }

  """
  @type describe_test_set_discrepancy_report_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_create_custom_vocabulary_item_response() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "errors" => list(failed_custom_vocabulary_item()()),
        "localeId" => String.t(),
        "resources" => list(custom_vocabulary_item()())
      }

  """
  @type batch_create_custom_vocabulary_item_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_export_response() :: %{
        "creationDateTime" => non_neg_integer(),
        "exportId" => String.t(),
        "exportStatus" => list(any()),
        "fileFormat" => list(any()),
        "resourceSpecification" => export_resource_specification()
      }

  """
  @type create_export_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      agent_turn_specification() :: %{
        "agentPrompt" => String.t()
      }

  """
  @type agent_turn_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      intent_override() :: %{
        "name" => String.t(),
        "slots" => map()
      }

  """
  @type intent_override() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      import_filter() :: %{
        "name" => list(any()),
        "operator" => list(any()),
        "values" => list(String.t()())
      }

  """
  @type import_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      post_fulfillment_status_specification() :: %{
        "failureConditional" => conditional_specification(),
        "failureNextStep" => dialog_state(),
        "failureResponse" => response_specification(),
        "successConditional" => conditional_specification(),
        "successNextStep" => dialog_state(),
        "successResponse" => response_specification(),
        "timeoutConditional" => conditional_specification(),
        "timeoutNextStep" => dialog_state(),
        "timeoutResponse" => response_specification()
      }

  """
  @type post_fulfillment_status_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bot_resource_generations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => generation_sort_by()
      }

  """
  @type list_bot_resource_generations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      create_slot_response() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "creationDateTime" => non_neg_integer(),
        "description" => String.t(),
        "intentId" => String.t(),
        "localeId" => String.t(),
        "multipleValuesSetting" => multiple_values_setting(),
        "obfuscationSetting" => obfuscation_setting(),
        "slotId" => String.t(),
        "slotName" => String.t(),
        "slotTypeId" => String.t(),
        "subSlotSetting" => sub_slot_setting(),
        "valueElicitationSetting" => slot_value_elicitation_setting()
      }

  """
  @type create_slot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      intent_closing_setting() :: %{
        "active" => boolean(),
        "closingResponse" => response_specification(),
        "conditional" => conditional_specification(),
        "nextStep" => dialog_state()
      }

  """
  @type intent_closing_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_bot_resource_generation_response() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "creationDateTime" => non_neg_integer(),
        "generationId" => String.t(),
        "generationInputPrompt" => String.t(),
        "generationStatus" => list(any()),
        "localeId" => String.t()
      }

  """
  @type start_bot_resource_generation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analytics_intent_stage_result() :: %{
        "binKeys" => list(analytics_bin_key()()),
        "groupByKeys" => list(analytics_intent_stage_group_by_key()()),
        "metricsResults" => list(analytics_intent_stage_metric_result()())
      }

  """
  @type analytics_intent_stage_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_test_executions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => test_execution_sort_by()
      }

  """
  @type list_test_executions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analytics_utterance_metric() :: %{
        "name" => list(any()),
        "order" => list(any()),
        "statistic" => list(any())
      }

  """
  @type analytics_utterance_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_utterance_analytics_data_response() :: %{
        "botId" => String.t(),
        "nextToken" => String.t(),
        "utterances" => list(utterance_specification()())
      }

  """
  @type list_utterance_analytics_data_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      build_bot_locale_request() :: %{}

  """
  @type build_bot_locale_request() :: %{}

  @typedoc """

  ## Example:

      start_test_execution_response() :: %{
        "apiMode" => list(any()),
        "creationDateTime" => non_neg_integer(),
        "target" => test_execution_target(),
        "testExecutionId" => String.t(),
        "testExecutionModality" => list(any()),
        "testSetId" => String.t()
      }

  """
  @type start_test_execution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      input_context() :: %{
        "name" => String.t()
      }

  """
  @type input_context() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      plain_text_message() :: %{
        "value" => String.t()
      }

  """
  @type plain_text_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_bot_request() :: %{
        optional("botMembers") => list(bot_member()()),
        optional("botType") => list(any()),
        optional("description") => String.t(),
        optional("errorLogSettings") => error_log_settings(),
        required("botName") => String.t(),
        required("dataPrivacy") => data_privacy(),
        required("idleSessionTTLInSeconds") => integer(),
        required("roleArn") => String.t()
      }

  """
  @type update_bot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_test_set_response() :: %{
        "creationDateTime" => non_neg_integer(),
        "description" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "modality" => list(any()),
        "numTurns" => integer(),
        "roleArn" => String.t(),
        "status" => list(any()),
        "storageLocation" => test_set_storage_location(),
        "testSetId" => String.t(),
        "testSetName" => String.t()
      }

  """
  @type describe_test_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conditional_specification() :: %{
        "active" => boolean(),
        "conditionalBranches" => list(conditional_branch()()),
        "defaultBranch" => default_conditional_branch()
      }

  """
  @type conditional_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_slot_type_request() :: %{
        optional("skipResourceInUseCheck") => boolean()
      }

  """
  @type delete_slot_type_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bot_resource_generations_response() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "generationSummaries" => list(generation_summary()()),
        "localeId" => String.t(),
        "nextToken" => String.t()
      }

  """
  @type list_bot_resource_generations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      runtime_hints() :: %{
        "slotHints" => map()
      }

  """
  @type runtime_hints() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_log_setting() :: %{
        "destination" => audio_log_destination(),
        "enabled" => boolean(),
        "selectiveLoggingEnabled" => boolean()
      }

  """
  @type audio_log_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      post_dialog_code_hook_invocation_specification() :: %{
        "failureConditional" => conditional_specification(),
        "failureNextStep" => dialog_state(),
        "failureResponse" => response_specification(),
        "successConditional" => conditional_specification(),
        "successNextStep" => dialog_state(),
        "successResponse" => response_specification(),
        "timeoutConditional" => conditional_specification(),
        "timeoutNextStep" => dialog_state(),
        "timeoutResponse" => response_specification()
      }

  """
  @type post_dialog_code_hook_invocation_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_bot_alias_response() :: %{
        "botAliasHistoryEvents" => list(bot_alias_history_event()()),
        "botAliasId" => String.t(),
        "botAliasLocaleSettings" => map(),
        "botAliasName" => String.t(),
        "botAliasStatus" => list(any()),
        "botId" => String.t(),
        "botVersion" => String.t(),
        "conversationLogSettings" => conversation_log_settings(),
        "creationDateTime" => non_neg_integer(),
        "description" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "parentBotNetworks" => list(parent_bot_network()()),
        "sentimentAnalysisSettings" => sentiment_analysis_settings()
      }

  """
  @type describe_bot_alias_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_custom_vocabulary_item_response() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "errors" => list(failed_custom_vocabulary_item()()),
        "localeId" => String.t(),
        "resources" => list(custom_vocabulary_item()())
      }

  """
  @type batch_delete_custom_vocabulary_item_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bot_replicas_response() :: %{
        "botId" => String.t(),
        "botReplicaSummaries" => list(bot_replica_summary()()),
        "sourceRegion" => String.t()
      }

  """
  @type list_bot_replicas_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      update_resource_policy_request() :: %{
        optional("expectedRevisionId") => String.t(),
        required("policy") => String.t()
      }

  """
  @type update_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_bot_recommendation_request() :: %{
        required("encryptionSetting") => encryption_setting()
      }

  """
  @type update_bot_recommendation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_built_in_intents_response() :: %{
        "builtInIntentSummaries" => list(built_in_intent_summary()()),
        "localeId" => String.t(),
        "nextToken" => String.t()
      }

  """
  @type list_built_in_intents_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      intent_sort_by() :: %{
        "attribute" => list(any()),
        "order" => list(any())
      }

  """
  @type intent_sort_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_bot_locale_response() :: %{
        "botId" => String.t(),
        "botLocaleHistoryEvents" => list(bot_locale_history_event()()),
        "botLocaleStatus" => list(any()),
        "botVersion" => String.t(),
        "creationDateTime" => non_neg_integer(),
        "description" => String.t(),
        "failureReasons" => list(String.t()()),
        "generativeAISettings" => generative_a_i_settings(),
        "intentsCount" => integer(),
        "lastBuildSubmittedDateTime" => non_neg_integer(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "localeId" => String.t(),
        "localeName" => String.t(),
        "nluIntentConfidenceThreshold" => float(),
        "recommendedActions" => list(String.t()()),
        "slotTypesCount" => integer(),
        "voiceSettings" => voice_settings()
      }

  """
  @type describe_bot_locale_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => String.t(),
        "retryAfterSeconds" => integer()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aggregated_utterances_filter() :: %{
        "name" => list(any()),
        "operator" => list(any()),
        "values" => list(String.t()())
      }

  """
  @type aggregated_utterances_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_intent_response() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "creationDateTime" => non_neg_integer(),
        "description" => String.t(),
        "dialogCodeHook" => dialog_code_hook_settings(),
        "fulfillmentCodeHook" => fulfillment_code_hook_settings(),
        "initialResponseSetting" => initial_response_setting(),
        "inputContexts" => list(input_context()()),
        "intentClosingSetting" => intent_closing_setting(),
        "intentConfirmationSetting" => intent_confirmation_setting(),
        "intentId" => String.t(),
        "intentName" => String.t(),
        "kendraConfiguration" => kendra_configuration(),
        "localeId" => String.t(),
        "outputContexts" => list(output_context()()),
        "parentIntentSignature" => String.t(),
        "qInConnectIntentConfiguration" => q_in_connect_intent_configuration(),
        "qnAIntentConfiguration" => qn_a_intent_configuration(),
        "sampleUtterances" => list(sample_utterance()())
      }

  """
  @type create_intent_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_custom_vocabulary_items_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_custom_vocabulary_items_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      exact_response_fields() :: %{
        "answerField" => String.t(),
        "questionField" => String.t()
      }

  """
  @type exact_response_fields() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      generate_bot_element_request() :: %{
        required("intentId") => String.t()
      }

  """
  @type generate_bot_element_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_resource_policy_response() :: %{
        "policy" => String.t(),
        "resourceArn" => String.t(),
        "revisionId" => String.t()
      }

  """
  @type describe_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_test_executions_response() :: %{
        "nextToken" => String.t(),
        "testExecutions" => list(test_execution_summary()())
      }

  """
  @type list_test_executions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_bot_request() :: %{
        optional("botMembers") => list(bot_member()()),
        optional("botTags") => map(),
        optional("botType") => list(any()),
        optional("description") => String.t(),
        optional("errorLogSettings") => error_log_settings(),
        optional("testBotAliasTags") => map(),
        required("botName") => String.t(),
        required("dataPrivacy") => data_privacy(),
        required("idleSessionTTLInSeconds") => integer(),
        required("roleArn") => String.t()
      }

  """
  @type create_bot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_imports_request() :: %{
        optional("botId") => String.t(),
        optional("botVersion") => String.t(),
        optional("filters") => list(import_filter()()),
        optional("localeId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => import_sort_by()
      }

  """
  @type list_imports_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_recommended_intents_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_recommended_intents_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      nlu_improvement_specification() :: %{
        "enabled" => boolean()
      }

  """
  @type nlu_improvement_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slot_value_selection_setting() :: %{
        "advancedRecognitionSetting" => advanced_recognition_setting(),
        "regexFilter" => slot_value_regex_filter(),
        "resolutionStrategy" => list(any())
      }

  """
  @type slot_value_selection_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_intent_request() :: %{}

  """
  @type describe_intent_request() :: %{}

  @typedoc """

  ## Example:

      list_utterance_analytics_data_request() :: %{
        optional("filters") => list(analytics_utterance_filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => utterance_data_sort_by(),
        required("endDateTime") => non_neg_integer(),
        required("startDateTime") => non_neg_integer()
      }

  """
  @type list_utterance_analytics_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      button() :: %{
        "text" => String.t(),
        "value" => String.t()
      }

  """
  @type button() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_and_d_t_m_f_input_specification() :: %{
        "audioSpecification" => audio_specification(),
        "dtmfSpecification" => d_t_m_f_specification(),
        "startTimeoutMs" => integer()
      }

  """
  @type audio_and_d_t_m_f_input_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dialog_action() :: %{
        "slotToElicit" => String.t(),
        "suppressNextMessage" => boolean(),
        "type" => list(any())
      }

  """
  @type dialog_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slot_type_summary() :: %{
        "description" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "parentSlotTypeSignature" => String.t(),
        "slotTypeCategory" => list(any()),
        "slotTypeId" => String.t(),
        "slotTypeName" => String.t()
      }

  """
  @type slot_type_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      utterance_specification() :: %{
        "associatedIntentName" => String.t(),
        "associatedSlotName" => String.t(),
        "audioVoiceDurationMillis" => float(),
        "botAliasId" => String.t(),
        "botResponseAudioVoiceId" => String.t(),
        "botResponses" => list(utterance_bot_response()()),
        "botVersion" => String.t(),
        "channel" => String.t(),
        "conversationEndTime" => non_neg_integer(),
        "conversationStartTime" => non_neg_integer(),
        "dialogActionType" => String.t(),
        "inputType" => String.t(),
        "intentState" => list(any()),
        "localeId" => String.t(),
        "mode" => list(any()),
        "outputType" => String.t(),
        "sessionId" => String.t(),
        "slotsFilledInSession" => String.t(),
        "utterance" => String.t(),
        "utteranceRequestId" => String.t(),
        "utteranceTimestamp" => non_neg_integer(),
        "utteranceUnderstood" => boolean()
      }

  """
  @type utterance_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_privacy() :: %{
        "childDirected" => boolean()
      }

  """
  @type data_privacy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      external_source_setting() :: %{
        "grammarSlotTypeSetting" => grammar_slot_type_setting()
      }

  """
  @type external_source_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      utterance_level_test_result_item() :: %{
        "conversationId" => String.t(),
        "recordNumber" => float(),
        "turnResult" => test_set_turn_result()
      }

  """
  @type utterance_level_test_result_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_bot_response() :: %{
        "botId" => String.t(),
        "botMembers" => list(bot_member()()),
        "botName" => String.t(),
        "botStatus" => list(any()),
        "botTags" => map(),
        "botType" => list(any()),
        "creationDateTime" => non_neg_integer(),
        "dataPrivacy" => data_privacy(),
        "description" => String.t(),
        "errorLogSettings" => error_log_settings(),
        "idleSessionTTLInSeconds" => integer(),
        "roleArn" => String.t(),
        "testBotAliasTags" => map()
      }

  """
  @type create_bot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_built_in_intents_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => built_in_intent_sort_by()
      }

  """
  @type list_built_in_intents_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_test_execution_request() :: %{}

  """
  @type describe_test_execution_request() :: %{}

  @typedoc """

  ## Example:

      bot_locale_filter() :: %{
        "name" => list(any()),
        "operator" => list(any()),
        "values" => list(String.t()())
      }

  """
  @type bot_locale_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      runtime_hint_details() :: %{
        "runtimeHintValues" => list(runtime_hint_value()()),
        "subSlotHints" => map()
      }

  """
  @type runtime_hint_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_resource_policy_request() :: %{
        optional("expectedRevisionId") => String.t()
      }

  """
  @type delete_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analytics_utterance_metric_result() :: %{
        "name" => list(any()),
        "statistic" => list(any()),
        "value" => float()
      }

  """
  @type analytics_utterance_metric_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aggregated_utterances_sort_by() :: %{
        "attribute" => list(any()),
        "order" => list(any())
      }

  """
  @type aggregated_utterances_sort_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      slot_default_value() :: %{
        "defaultValue" => String.t()
      }

  """
  @type slot_default_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_slot_response() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "creationDateTime" => non_neg_integer(),
        "description" => String.t(),
        "intentId" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "localeId" => String.t(),
        "multipleValuesSetting" => multiple_values_setting(),
        "obfuscationSetting" => obfuscation_setting(),
        "slotId" => String.t(),
        "slotName" => String.t(),
        "slotTypeId" => String.t(),
        "subSlotSetting" => sub_slot_setting(),
        "valueElicitationSetting" => slot_value_elicitation_setting()
      }

  """
  @type describe_slot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      analytics_intent_node_summary() :: %{
        "intentCount" => integer(),
        "intentLevel" => integer(),
        "intentName" => String.t(),
        "intentPath" => String.t(),
        "nodeType" => list(any())
      }

  """
  @type analytics_intent_node_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_execution_summary() :: %{
        "apiMode" => list(any()),
        "creationDateTime" => non_neg_integer(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "target" => test_execution_target(),
        "testExecutionId" => String.t(),
        "testExecutionModality" => list(any()),
        "testExecutionStatus" => list(any()),
        "testSetId" => String.t(),
        "testSetName" => String.t()
      }

  """
  @type test_execution_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      code_hook_specification() :: %{
        "lambdaCodeHook" => lambda_code_hook()
      }

  """
  @type code_hook_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      q_in_connect_assistant_configuration() :: %{
        "assistantArn" => String.t()
      }

  """
  @type q_in_connect_assistant_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_bot_locale_response() :: %{
        "botId" => String.t(),
        "botLocaleStatus" => list(any()),
        "botVersion" => String.t(),
        "creationDateTime" => non_neg_integer(),
        "description" => String.t(),
        "generativeAISettings" => generative_a_i_settings(),
        "localeId" => String.t(),
        "localeName" => String.t(),
        "nluIntentConfidenceThreshold" => float(),
        "voiceSettings" => voice_settings()
      }

  """
  @type create_bot_locale_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bot_recommendations_response() :: %{
        "botId" => String.t(),
        "botRecommendationSummaries" => list(bot_recommendation_summary()()),
        "botVersion" => String.t(),
        "localeId" => String.t(),
        "nextToken" => String.t()
      }

  """
  @type list_bot_recommendations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_bot_locale_request() :: %{
        optional("description") => String.t(),
        optional("generativeAISettings") => generative_a_i_settings(),
        optional("voiceSettings") => voice_settings(),
        required("nluIntentConfidenceThreshold") => float()
      }

  """
  @type update_bot_locale_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_test_sets_response() :: %{
        "nextToken" => String.t(),
        "testSets" => list(test_set_summary()())
      }

  """
  @type list_test_sets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bot_recommendation_summary() :: %{
        "botRecommendationId" => String.t(),
        "botRecommendationStatus" => list(any()),
        "creationDateTime" => non_neg_integer(),
        "lastUpdatedDateTime" => non_neg_integer()
      }

  """
  @type bot_recommendation_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_turn_output_specification() :: %{
        "activeContexts" => list(active_context()()),
        "intent" => user_turn_intent_output(),
        "transcript" => String.t()
      }

  """
  @type user_turn_output_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      build_bot_locale_response() :: %{
        "botId" => String.t(),
        "botLocaleStatus" => list(any()),
        "botVersion" => String.t(),
        "lastBuildSubmittedDateTime" => non_neg_integer(),
        "localeId" => String.t()
      }

  """
  @type build_bot_locale_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      generation_sort_by() :: %{
        "attribute" => list(any()),
        "order" => list(any())
      }

  """
  @type generation_sort_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_turn_slot_output() :: %{
        "subSlots" => map(),
        "value" => String.t(),
        "values" => list(user_turn_slot_output()())
      }

  """
  @type user_turn_slot_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      turn_specification() :: %{
        "agentTurn" => agent_turn_specification(),
        "userTurn" => user_turn_specification()
      }

  """
  @type turn_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      encryption_setting() :: %{
        "associatedTranscriptsPassword" => String.t(),
        "botLocaleExportPassword" => String.t(),
        "kmsKeyArn" => String.t()
      }

  """
  @type encryption_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      transcript_source_setting() :: %{
        "s3BucketTranscriptSource" => s3_bucket_transcript_source()
      }

  """
  @type transcript_source_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_utterances_request() :: %{
        optional("localeId") => String.t(),
        optional("sessionId") => String.t()
      }

  """
  @type delete_utterances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_export_response() :: %{
        "creationDateTime" => non_neg_integer(),
        "exportId" => String.t(),
        "exportStatus" => list(any()),
        "fileFormat" => list(any()),
        "lastUpdatedDateTime" => non_neg_integer(),
        "resourceSpecification" => export_resource_specification()
      }

  """
  @type update_export_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      test_set_summary() :: %{
        "creationDateTime" => non_neg_integer(),
        "description" => String.t(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "modality" => list(any()),
        "numTurns" => integer(),
        "roleArn" => String.t(),
        "status" => list(any()),
        "storageLocation" => test_set_storage_location(),
        "testSetId" => String.t(),
        "testSetName" => String.t()
      }

  """
  @type test_set_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_test_execution_result_items_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("resultFilterBy") => test_execution_result_filter_by()
      }

  """
  @type list_test_execution_result_items_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      custom_payload() :: %{
        "value" => String.t()
      }

  """
  @type custom_payload() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_export_request() :: %{
        optional("filePassword") => String.t()
      }

  """
  @type update_export_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_utterance_metrics_response() :: %{
        "botId" => String.t(),
        "nextToken" => String.t(),
        "results" => list(analytics_utterance_result()())
      }

  """
  @type list_utterance_metrics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_bot_recommendation_response() :: %{
        "botId" => String.t(),
        "botRecommendationId" => String.t(),
        "botRecommendationStatus" => list(any()),
        "botVersion" => String.t(),
        "localeId" => String.t()
      }

  """
  @type stop_bot_recommendation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dialog_code_hook_invocation_setting() :: %{
        "active" => boolean(),
        "enableCodeHookInvocation" => boolean(),
        "invocationLabel" => String.t(),
        "postCodeHookSpecification" => post_dialog_code_hook_invocation_specification()
      }

  """
  @type dialog_code_hook_invocation_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_bot_locale_response() :: %{
        "botId" => String.t(),
        "botLocaleStatus" => list(any()),
        "botVersion" => String.t(),
        "creationDateTime" => non_neg_integer(),
        "description" => String.t(),
        "failureReasons" => list(String.t()()),
        "generativeAISettings" => generative_a_i_settings(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "localeId" => String.t(),
        "localeName" => String.t(),
        "nluIntentConfidenceThreshold" => float(),
        "recommendedActions" => list(String.t()()),
        "voiceSettings" => voice_settings()
      }

  """
  @type update_bot_locale_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_utterance_metrics_request() :: %{
        optional("attributes") => list(analytics_utterance_attribute()()),
        optional("binBy") => list(analytics_bin_by_specification()()),
        optional("filters") => list(analytics_utterance_filter()()),
        optional("groupBy") => list(analytics_utterance_group_by_specification()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("endDateTime") => non_neg_integer(),
        required("metrics") => list(analytics_utterance_metric()()),
        required("startDateTime") => non_neg_integer()
      }

  """
  @type list_utterance_metrics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sample_utterance_generation_specification() :: %{
        "bedrockModelSpecification" => bedrock_model_specification(),
        "enabled" => boolean()
      }

  """
  @type sample_utterance_generation_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      text_log_setting() :: %{
        "destination" => text_log_destination(),
        "enabled" => boolean(),
        "selectiveLoggingEnabled" => boolean()
      }

  """
  @type text_log_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sentiment_analysis_settings() :: %{
        "detectSentiment" => boolean()
      }

  """
  @type sentiment_analysis_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_session_metrics_response() :: %{
        "botId" => String.t(),
        "nextToken" => String.t(),
        "results" => list(analytics_session_result()())
      }

  """
  @type list_session_metrics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      still_waiting_response_specification() :: %{
        "allowInterrupt" => boolean(),
        "frequencyInSeconds" => integer(),
        "messageGroups" => list(message_group()()),
        "timeoutInSeconds" => integer()
      }

  """
  @type still_waiting_response_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      precondition_failed_exception() :: %{
        "message" => String.t()
      }

  """
  @type precondition_failed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      bot_alias_replica_summary() :: %{
        "botAliasId" => String.t(),
        "botAliasReplicationStatus" => list(any()),
        "botVersion" => String.t(),
        "creationDateTime" => non_neg_integer(),
        "failureReasons" => list(String.t()()),
        "lastUpdatedDateTime" => non_neg_integer()
      }

  """
  @type bot_alias_replica_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_slot_types_request() :: %{
        optional("filters") => list(slot_type_filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => slot_type_sort_by()
      }

  """
  @type list_slot_types_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      qn_a_kendra_configuration() :: %{
        "exactResponse" => boolean(),
        "kendraIndex" => String.t(),
        "queryFilterString" => String.t(),
        "queryFilterStringEnabled" => boolean()
      }

  """
  @type qn_a_kendra_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_bot_response() :: %{
        "botId" => String.t(),
        "botMembers" => list(bot_member()()),
        "botName" => String.t(),
        "botStatus" => list(any()),
        "botType" => list(any()),
        "creationDateTime" => non_neg_integer(),
        "dataPrivacy" => data_privacy(),
        "description" => String.t(),
        "errorLogSettings" => error_log_settings(),
        "idleSessionTTLInSeconds" => integer(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "roleArn" => String.t()
      }

  """
  @type update_bot_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_intent_request() :: %{}

  """
  @type delete_intent_request() :: %{}

  @typedoc """

  ## Example:

      describe_export_response() :: %{
        "creationDateTime" => non_neg_integer(),
        "downloadUrl" => String.t(),
        "exportId" => String.t(),
        "exportStatus" => list(any()),
        "failureReasons" => list(String.t()()),
        "fileFormat" => list(any()),
        "lastUpdatedDateTime" => non_neg_integer(),
        "resourceSpecification" => export_resource_specification()
      }

  """
  @type describe_export_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      parent_bot_network() :: %{
        "botId" => String.t(),
        "botVersion" => String.t()
      }

  """
  @type parent_bot_network() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_import_request() :: %{
        optional("filePassword") => String.t(),
        required("importId") => String.t(),
        required("mergeStrategy") => list(any()),
        required("resourceSpecification") => import_resource_specification()
      }

  """
  @type start_import_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_session_analytics_data_request() :: %{
        optional("filters") => list(analytics_session_filter()()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => session_data_sort_by(),
        required("endDateTime") => non_neg_integer(),
        required("startDateTime") => non_neg_integer()
      }

  """
  @type list_session_analytics_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_test_sets_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("sortBy") => test_set_sort_by()
      }

  """
  @type list_test_sets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_import_response() :: %{
        "creationDateTime" => non_neg_integer(),
        "importId" => String.t(),
        "importStatus" => list(any()),
        "mergeStrategy" => list(any()),
        "resourceSpecification" => import_resource_specification()
      }

  """
  @type start_import_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_bot_locale_response() :: %{
        "botId" => String.t(),
        "botLocaleStatus" => list(any()),
        "botVersion" => String.t(),
        "localeId" => String.t()
      }

  """
  @type delete_bot_locale_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_bot_replica_request() :: %{}

  """
  @type describe_bot_replica_request() :: %{}

  @typedoc """

  ## Example:

      describe_intent_response() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "creationDateTime" => non_neg_integer(),
        "description" => String.t(),
        "dialogCodeHook" => dialog_code_hook_settings(),
        "fulfillmentCodeHook" => fulfillment_code_hook_settings(),
        "initialResponseSetting" => initial_response_setting(),
        "inputContexts" => list(input_context()()),
        "intentClosingSetting" => intent_closing_setting(),
        "intentConfirmationSetting" => intent_confirmation_setting(),
        "intentId" => String.t(),
        "intentName" => String.t(),
        "kendraConfiguration" => kendra_configuration(),
        "lastUpdatedDateTime" => non_neg_integer(),
        "localeId" => String.t(),
        "outputContexts" => list(output_context()()),
        "parentIntentSignature" => String.t(),
        "qInConnectIntentConfiguration" => q_in_connect_intent_configuration(),
        "qnAIntentConfiguration" => qn_a_intent_configuration(),
        "sampleUtterances" => list(sample_utterance()()),
        "slotPriorities" => list(slot_priority()())
      }

  """
  @type describe_intent_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sample_value() :: %{
        "value" => String.t()
      }

  """
  @type sample_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      built_in_intent_sort_by() :: %{
        "attribute" => list(any()),
        "order" => list(any())
      }

  """
  @type built_in_intent_sort_by() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_bot_locale_request() :: %{
        optional("description") => String.t(),
        optional("generativeAISettings") => generative_a_i_settings(),
        optional("voiceSettings") => voice_settings(),
        required("localeId") => String.t(),
        required("nluIntentConfidenceThreshold") => float()
      }

  """
  @type create_bot_locale_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_bot_recommendation_request() :: %{}

  """
  @type describe_bot_recommendation_request() :: %{}

  @typedoc """

  ## Example:

      delete_custom_vocabulary_request() :: %{}

  """
  @type delete_custom_vocabulary_request() :: %{}

  @typedoc """

  ## Example:

      describe_resource_policy_request() :: %{}

  """
  @type describe_resource_policy_request() :: %{}

  @typedoc """

  ## Example:

      create_bot_version_response() :: %{
        "botId" => String.t(),
        "botStatus" => list(any()),
        "botVersion" => String.t(),
        "botVersionLocaleSpecification" => map(),
        "creationDateTime" => non_neg_integer(),
        "description" => String.t()
      }

  """
  @type create_bot_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_exports_response() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "exportSummaries" => list(export_summary()()),
        "localeId" => String.t(),
        "nextToken" => String.t()
      }

  """
  @type list_exports_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_test_execution_artifacts_url_response() :: %{
        "downloadArtifactsUrl" => String.t(),
        "testExecutionId" => String.t()
      }

  """
  @type get_test_execution_artifacts_url_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_custom_vocabulary_items_response() :: %{
        "botId" => String.t(),
        "botVersion" => String.t(),
        "customVocabularyItems" => list(custom_vocabulary_item()()),
        "localeId" => String.t(),
        "nextToken" => String.t()
      }

  """
  @type list_custom_vocabulary_items_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      multiple_values_setting() :: %{
        "allowMultipleValues" => boolean()
      }

  """
  @type multiple_values_setting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_bot_locale_request() :: %{}

  """
  @type delete_bot_locale_request() :: %{}

  @typedoc """

  ## Example:

      d_t_m_f_specification() :: %{
        "deletionCharacter" => String.t(),
        "endCharacter" => String.t(),
        "endTimeoutMs" => integer(),
        "maxLength" => integer()
      }

  """
  @type d_t_m_f_specification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      message() :: %{
        "customPayload" => custom_payload(),
        "imageResponseCard" => image_response_card(),
        "plainTextMessage" => plain_text_message(),
        "ssmlMessage" => s_s_ml_message()
      }

  """
  @type message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_test_set_generation_request() :: %{}

  """
  @type describe_test_set_generation_request() :: %{}

  @typedoc """

  ## Example:

      s3_bucket_log_destination() :: %{
        "kmsKeyArn" => String.t(),
        "logPrefix" => String.t(),
        "s3BucketArn" => String.t()
      }

  """
  @type s3_bucket_log_destination() :: %{String.t() => any()}

  @type batch_create_custom_vocabulary_item_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type batch_delete_custom_vocabulary_item_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type batch_update_custom_vocabulary_item_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type build_bot_locale_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_bot_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_bot_alias_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_bot_locale_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_bot_replica_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_bot_version_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_export_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_intent_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_resource_policy_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_resource_policy_statement_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_slot_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_slot_type_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_test_set_discrepancy_report_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_upload_url_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_bot_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_bot_alias_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_bot_locale_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_bot_replica_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_bot_version_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_custom_vocabulary_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_export_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type delete_import_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type delete_intent_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_resource_policy_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_resource_policy_statement_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_slot_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_slot_type_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_test_set_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_utterances_errors() ::
          throttling_exception() | validation_exception() | internal_server_exception()

  @type describe_bot_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type describe_bot_alias_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type describe_bot_locale_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type describe_bot_recommendation_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_bot_replica_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type describe_bot_resource_generation_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_bot_version_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type describe_custom_vocabulary_metadata_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type describe_export_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_import_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_intent_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type describe_resource_policy_errors() ::
          throttling_exception() | internal_server_exception() | resource_not_found_exception()

  @type describe_slot_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type describe_slot_type_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type describe_test_execution_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type describe_test_set_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type describe_test_set_discrepancy_report_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type describe_test_set_generation_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type generate_bot_element_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_test_execution_artifacts_url_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type list_aggregated_utterances_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()

  @type list_bot_alias_replicas_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type list_bot_aliases_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type list_bot_locales_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type list_bot_recommendations_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_bot_replicas_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type list_bot_resource_generations_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_bot_version_replicas_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type list_bot_versions_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type list_bots_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type list_built_in_intents_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type list_built_in_slot_types_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type list_custom_vocabulary_items_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type list_exports_errors() ::
          throttling_exception() | validation_exception() | internal_server_exception()

  @type list_imports_errors() ::
          throttling_exception() | validation_exception() | internal_server_exception()

  @type list_intent_metrics_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type list_intent_paths_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type list_intent_stage_metrics_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type list_intents_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type list_recommended_intents_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type list_session_analytics_data_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type list_session_metrics_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type list_slot_types_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type list_slots_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_test_execution_result_items_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type list_test_executions_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type list_test_set_records_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type list_test_sets_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type list_utterance_analytics_data_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type list_utterance_metrics_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()

  @type search_associated_transcripts_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type start_bot_recommendation_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_bot_resource_generation_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type start_import_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_test_execution_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_test_set_generation_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type stop_bot_recommendation_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_bot_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type update_bot_alias_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type update_bot_locale_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type update_bot_recommendation_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_export_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_intent_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type update_resource_policy_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type update_slot_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type update_slot_type_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type update_test_set_errors() ::
          precondition_failed_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-08-07",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "models-v2-lex",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Lex Models V2",
      signature_version: "v4",
      signing_name: "lex",
      target_prefix: nil
    }
  end

  @doc """
  Create a batch of custom vocabulary items for a given bot locale's
  custom vocabulary.
  """
  @spec batch_create_custom_vocabulary_item(
          map(),
          String.t(),
          String.t(),
          String.t(),
          batch_create_custom_vocabulary_item_request(),
          list()
        ) ::
          {:ok, batch_create_custom_vocabulary_item_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_create_custom_vocabulary_item_errors()}
  def batch_create_custom_vocabulary_item(
        %Client{} = client,
        bot_id,
        bot_version,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/customvocabulary/DEFAULT/batchcreate"

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
  Delete a batch of custom vocabulary items for a given bot locale's
  custom vocabulary.
  """
  @spec batch_delete_custom_vocabulary_item(
          map(),
          String.t(),
          String.t(),
          String.t(),
          batch_delete_custom_vocabulary_item_request(),
          list()
        ) ::
          {:ok, batch_delete_custom_vocabulary_item_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_delete_custom_vocabulary_item_errors()}
  def batch_delete_custom_vocabulary_item(
        %Client{} = client,
        bot_id,
        bot_version,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/customvocabulary/DEFAULT/batchdelete"

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
  Update a batch of custom vocabulary items for a given bot locale's custom
  vocabulary.
  """
  @spec batch_update_custom_vocabulary_item(
          map(),
          String.t(),
          String.t(),
          String.t(),
          batch_update_custom_vocabulary_item_request(),
          list()
        ) ::
          {:ok, batch_update_custom_vocabulary_item_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_update_custom_vocabulary_item_errors()}
  def batch_update_custom_vocabulary_item(
        %Client{} = client,
        bot_id,
        bot_version,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/customvocabulary/DEFAULT/batchupdate"

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
  Builds a bot, its intents, and its slot types into a specific
  locale.

  A bot can be built into multiple locales. At runtime the locale
  is used to choose a specific build of the bot.
  """
  @spec build_bot_locale(
          map(),
          String.t(),
          String.t(),
          String.t(),
          build_bot_locale_request(),
          list()
        ) ::
          {:ok, build_bot_locale_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, build_bot_locale_errors()}
  def build_bot_locale(%Client{} = client, bot_id, bot_version, locale_id, input, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}"

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
  Creates an Amazon Lex conversational bot.
  """
  @spec create_bot(map(), create_bot_request(), list()) ::
          {:ok, create_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_bot_errors()}
  def create_bot(%Client{} = client, input, options \\ []) do
    url_path = "/bots"
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
  Creates an alias for the specified version of a bot.

  Use an alias to
  enable you to change the version of a bot without updating applications
  that use the bot.

  For example, you can create an alias called "PROD" that your
  applications use to call the Amazon Lex bot.
  """
  @spec create_bot_alias(map(), String.t(), create_bot_alias_request(), list()) ::
          {:ok, create_bot_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_bot_alias_errors()}
  def create_bot_alias(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/botaliases"
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
  Creates a locale in the bot.

  The locale contains the intents and
  slot types that the bot uses in conversations with users in the
  specified language and locale. You must add a locale to a bot before
  you can add intents and slot types to the bot.
  """
  @spec create_bot_locale(map(), String.t(), String.t(), create_bot_locale_request(), list()) ::
          {:ok, create_bot_locale_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_bot_locale_errors()}
  def create_bot_locale(%Client{} = client, bot_id, bot_version, input, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales"

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
  Action to create a replication of the source bot in the secondary region.
  """
  @spec create_bot_replica(map(), String.t(), create_bot_replica_request(), list()) ::
          {:ok, create_bot_replica_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_bot_replica_errors()}
  def create_bot_replica(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/replicas"
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
  Creates an immutable version of the bot.

  When you create the first
  version of a bot, Amazon Lex sets the version number to 1. Subsequent bot
  versions increase
  in an increment of 1. The version number will always represent the total number
  of versions created of the bot, not the current number of versions. If a bot
  version
  is deleted, that bot version number will not be reused.
  """
  @spec create_bot_version(map(), String.t(), create_bot_version_request(), list()) ::
          {:ok, create_bot_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_bot_version_errors()}
  def create_bot_version(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions"
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
  Creates a zip archive containing the contents of a bot or a bot
  locale.

  The archive contains a directory structure that contains JSON
  files that define the bot.

  You can create an archive that contains the complete definition of a
  bot, or you can specify that the archive contain only the definition of
  a single bot locale.

  For more information about exporting bots, and about the structure
  of the export archive, see [ Importing and exporting bots
  ](https://docs.aws.amazon.com/lexv2/latest/dg/importing-exporting.html)
  """
  @spec create_export(map(), create_export_request(), list()) ::
          {:ok, create_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_export_errors()}
  def create_export(%Client{} = client, input, options \\ []) do
    url_path = "/exports"
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
  Creates an intent.

  To define the interaction between the user and your bot, you define
  one or more intents. For example, for a pizza ordering bot you would
  create an `OrderPizza` intent.

  When you create an intent, you must provide a name. You can
  optionally provide the following:

    *
  Sample utterances. For example, "I want to order a pizza" and
  "Can I order a pizza." You can't provide utterances for built-in
  intents.

    *
  Information to be gathered. You specify slots for the
  information that you bot requests from the user. You can specify
  standard slot types, such as date and time, or custom slot types
  for your application.

    *
  How the intent is fulfilled. You can provide a Lambda function
  or configure the intent to return the intent information to your
  client application. If you use a Lambda function, Amazon Lex invokes
  the function when all of the intent information is
  available.

    *
  A confirmation prompt to send to the user to confirm an
  intent. For example, "Shall I order your pizza?"

    *
  A conclusion statement to send to the user after the intent is
  fulfilled. For example, "I ordered your pizza."

    *
  A follow-up prompt that asks the user for additional activity.
  For example, "Do you want a drink with your pizza?"
  """
  @spec create_intent(map(), String.t(), String.t(), String.t(), create_intent_request(), list()) ::
          {:ok, create_intent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_intent_errors()}
  def create_intent(%Client{} = client, bot_id, bot_version, locale_id, input, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/intents"

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
  Creates a new resource policy with the specified policy
  statements.
  """
  @spec create_resource_policy(map(), String.t(), create_resource_policy_request(), list()) ::
          {:ok, create_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_resource_policy_errors()}
  def create_resource_policy(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/policy/#{AWS.Util.encode_uri(resource_arn)}"
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
  Adds a new resource policy statement to a bot or bot alias.

  If a
  resource policy exists, the statement is added to the current resource
  policy. If a policy doesn't exist, a new policy is created.

  You can't create a resource policy statement that allows
  cross-account access.

  You need to add the `CreateResourcePolicy` or `UpdateResourcePolicy`
  action to the bot role in order to call the API.
  """
  @spec create_resource_policy_statement(
          map(),
          String.t(),
          create_resource_policy_statement_request(),
          list()
        ) ::
          {:ok, create_resource_policy_statement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_resource_policy_statement_errors()}
  def create_resource_policy_statement(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/policy/#{AWS.Util.encode_uri(resource_arn)}/statements"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"expectedRevisionId", "expectedRevisionId"}
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
  Creates a slot in an intent.

  A slot is a variable needed to fulfill
  an intent. For example, an `OrderPizza` intent might need
  slots for size, crust, and number of pizzas. For each slot, you define
  one or more utterances that Amazon Lex uses to elicit a response from the
  user.
  """
  @spec create_slot(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          create_slot_request(),
          list()
        ) ::
          {:ok, create_slot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_slot_errors()}
  def create_slot(
        %Client{} = client,
        bot_id,
        bot_version,
        intent_id,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/intents/#{AWS.Util.encode_uri(intent_id)}/slots"

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
  Creates a custom slot type

  To create a custom slot type, specify a name for the slot type and
  a set of enumeration values, the values that a slot of this type can
  assume.
  """
  @spec create_slot_type(
          map(),
          String.t(),
          String.t(),
          String.t(),
          create_slot_type_request(),
          list()
        ) ::
          {:ok, create_slot_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_slot_type_errors()}
  def create_slot_type(%Client{} = client, bot_id, bot_version, locale_id, input, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/slottypes"

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
  Create a report that describes the differences between the bot and the test set.
  """
  @spec create_test_set_discrepancy_report(
          map(),
          String.t(),
          create_test_set_discrepancy_report_request(),
          list()
        ) ::
          {:ok, create_test_set_discrepancy_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_test_set_discrepancy_report_errors()}
  def create_test_set_discrepancy_report(%Client{} = client, test_set_id, input, options \\ []) do
    url_path = "/testsets/#{AWS.Util.encode_uri(test_set_id)}/testsetdiscrepancy"
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
  Gets a pre-signed S3 write URL that you use to upload the zip
  archive when importing a bot or a bot locale.
  """
  @spec create_upload_url(map(), create_upload_url_request(), list()) ::
          {:ok, create_upload_url_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_upload_url_errors()}
  def create_upload_url(%Client{} = client, input, options \\ []) do
    url_path = "/createuploadurl"
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
  Deletes all versions of a bot, including the `Draft`
  version.

  To delete a specific version, use the
  `DeleteBotVersion` operation.

  When you delete a bot, all of the resources contained in the bot are
  also deleted. Deleting a bot removes all locales, intents, slot, and
  slot types defined for the bot.

  If a bot has an alias, the `DeleteBot` operation returns
  a `ResourceInUseException` exception. If you want to delete
  the bot and the alias, set the `skipResourceInUseCheck`
  parameter to `true`.
  """
  @spec delete_bot(map(), String.t(), delete_bot_request(), list()) ::
          {:ok, delete_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_bot_errors()}
  def delete_bot(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"skipResourceInUseCheck", "skipResourceInUseCheck"}
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
      202
    )
  end

  @doc """
  Deletes the specified bot alias.
  """
  @spec delete_bot_alias(map(), String.t(), String.t(), delete_bot_alias_request(), list()) ::
          {:ok, delete_bot_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_bot_alias_errors()}
  def delete_bot_alias(%Client{} = client, bot_alias_id, bot_id, input, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botaliases/#{AWS.Util.encode_uri(bot_alias_id)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"skipResourceInUseCheck", "skipResourceInUseCheck"}
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
      202
    )
  end

  @doc """
  Removes a locale from a bot.

  When you delete a locale, all intents, slots, and slot types defined
  for the locale are also deleted.
  """
  @spec delete_bot_locale(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_bot_locale_request(),
          list()
        ) ::
          {:ok, delete_bot_locale_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_bot_locale_errors()}
  def delete_bot_locale(%Client{} = client, bot_id, bot_version, locale_id, input, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}"

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
      202
    )
  end

  @doc """
  The action to delete the replicated bot in the secondary region.
  """
  @spec delete_bot_replica(map(), String.t(), String.t(), delete_bot_replica_request(), list()) ::
          {:ok, delete_bot_replica_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_bot_replica_errors()}
  def delete_bot_replica(%Client{} = client, bot_id, replica_region, input, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/replicas/#{AWS.Util.encode_uri(replica_region)}"

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
      202
    )
  end

  @doc """
  Deletes a specific version of a bot.

  To delete all versions of a bot,
  use the
  [DeleteBot](https://docs.aws.amazon.com/lexv2/latest/APIReference/API_DeleteBot.html)
  operation.
  """
  @spec delete_bot_version(map(), String.t(), String.t(), delete_bot_version_request(), list()) ::
          {:ok, delete_bot_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_bot_version_errors()}
  def delete_bot_version(%Client{} = client, bot_id, bot_version, input, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"skipResourceInUseCheck", "skipResourceInUseCheck"}
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
      202
    )
  end

  @doc """
  Removes a custom vocabulary from the specified locale
  in the specified bot.
  """
  @spec delete_custom_vocabulary(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_custom_vocabulary_request(),
          list()
        ) ::
          {:ok, delete_custom_vocabulary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_custom_vocabulary_errors()}
  def delete_custom_vocabulary(
        %Client{} = client,
        bot_id,
        bot_version,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/customvocabulary"

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
      202
    )
  end

  @doc """
  Removes a previous export and the associated files stored in an S3
  bucket.
  """
  @spec delete_export(map(), String.t(), delete_export_request(), list()) ::
          {:ok, delete_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_export_errors()}
  def delete_export(%Client{} = client, export_id, input, options \\ []) do
    url_path = "/exports/#{AWS.Util.encode_uri(export_id)}"
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
      202
    )
  end

  @doc """
  Removes a previous import and the associated file stored in an S3
  bucket.
  """
  @spec delete_import(map(), String.t(), delete_import_request(), list()) ::
          {:ok, delete_import_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_import_errors()}
  def delete_import(%Client{} = client, import_id, input, options \\ []) do
    url_path = "/imports/#{AWS.Util.encode_uri(import_id)}"
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
      202
    )
  end

  @doc """
  Removes the specified intent.

  Deleting an intent also deletes the slots associated with the
  intent.
  """
  @spec delete_intent(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          delete_intent_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_intent_errors()}
  def delete_intent(
        %Client{} = client,
        bot_id,
        bot_version,
        intent_id,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/intents/#{AWS.Util.encode_uri(intent_id)}"

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
  Removes an existing policy from a bot or bot alias.

  If the resource
  doesn't have a policy attached, Amazon Lex returns an exception.
  """
  @spec delete_resource_policy(map(), String.t(), delete_resource_policy_request(), list()) ::
          {:ok, delete_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/policy/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"expectedRevisionId", "expectedRevisionId"}
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
      204
    )
  end

  @doc """
  Deletes a policy statement from a resource policy.

  If you delete the
  last statement from a policy, the policy is deleted. If you specify a
  statement ID that doesn't exist in the policy, or if the bot or bot
  alias doesn't have a policy attached, Amazon Lex returns an
  exception.

  You need to add the `DeleteResourcePolicy` or `UpdateResourcePolicy`
  action to the bot role in order to call the API.
  """
  @spec delete_resource_policy_statement(
          map(),
          String.t(),
          String.t(),
          delete_resource_policy_statement_request(),
          list()
        ) ::
          {:ok, delete_resource_policy_statement_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resource_policy_statement_errors()}
  def delete_resource_policy_statement(
        %Client{} = client,
        resource_arn,
        statement_id,
        input,
        options \\ []
      ) do
    url_path =
      "/policy/#{AWS.Util.encode_uri(resource_arn)}/statements/#{AWS.Util.encode_uri(statement_id)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"expectedRevisionId", "expectedRevisionId"}
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
      204
    )
  end

  @doc """
  Deletes the specified slot from an intent.
  """
  @spec delete_slot(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          delete_slot_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_slot_errors()}
  def delete_slot(
        %Client{} = client,
        bot_id,
        bot_version,
        intent_id,
        locale_id,
        slot_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/intents/#{AWS.Util.encode_uri(intent_id)}/slots/#{AWS.Util.encode_uri(slot_id)}"

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
  Deletes a slot type from a bot locale.

  If a slot is using the slot type, Amazon Lex throws a
  `ResourceInUseException` exception. To avoid the
  exception, set the `skipResourceInUseCheck` parameter to
  `true`.
  """
  @spec delete_slot_type(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          delete_slot_type_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_slot_type_errors()}
  def delete_slot_type(
        %Client{} = client,
        bot_id,
        bot_version,
        locale_id,
        slot_type_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/slottypes/#{AWS.Util.encode_uri(slot_type_id)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"skipResourceInUseCheck", "skipResourceInUseCheck"}
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
      204
    )
  end

  @doc """
  The action to delete the selected test set.
  """
  @spec delete_test_set(map(), String.t(), delete_test_set_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_test_set_errors()}
  def delete_test_set(%Client{} = client, test_set_id, input, options \\ []) do
    url_path = "/testsets/#{AWS.Util.encode_uri(test_set_id)}"
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
  Deletes stored utterances.

  Amazon Lex stores the utterances that users send to your bot. Utterances
  are stored for 15 days for use with the
  [ListAggregatedUtterances](https://docs.aws.amazon.com/lexv2/latest/APIReference/API_ListAggregatedUtterances.html)
  operation, and
  then stored indefinitely for use in improving the ability of your bot
  to respond to user input..

  Use the `DeleteUtterances` operation to manually delete
  utterances for a specific session. When you use the
  `DeleteUtterances` operation, utterances stored for
  improving your bot's ability to respond to user input are deleted
  immediately. Utterances stored for use with the
  `ListAggregatedUtterances` operation are deleted after 15
  days.
  """
  @spec delete_utterances(map(), String.t(), delete_utterances_request(), list()) ::
          {:ok, delete_utterances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_utterances_errors()}
  def delete_utterances(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/utterances"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"localeId", "localeId"},
        {"sessionId", "sessionId"}
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
      204
    )
  end

  @doc """
  Provides metadata information about a bot.
  """
  @spec describe_bot(map(), String.t(), list()) ::
          {:ok, describe_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_bot_errors()}
  def describe_bot(%Client{} = client, bot_id, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get information about a specific bot alias.
  """
  @spec describe_bot_alias(map(), String.t(), String.t(), list()) ::
          {:ok, describe_bot_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_bot_alias_errors()}
  def describe_bot_alias(%Client{} = client, bot_alias_id, bot_id, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botaliases/#{AWS.Util.encode_uri(bot_alias_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the settings that a bot has for a specific locale.
  """
  @spec describe_bot_locale(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, describe_bot_locale_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_bot_locale_errors()}
  def describe_bot_locale(%Client{} = client, bot_id, bot_version, locale_id, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides metadata information about a bot recommendation.

  This
  information will enable you to get a description on the request inputs,
  to download associated transcripts after processing is complete, and to
  download intents and slot-types generated by the bot
  recommendation.
  """
  @spec describe_bot_recommendation(map(), String.t(), String.t(), String.t(), String.t(), list()) ::
          {:ok, describe_bot_recommendation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_bot_recommendation_errors()}
  def describe_bot_recommendation(
        %Client{} = client,
        bot_id,
        bot_recommendation_id,
        bot_version,
        locale_id,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/botrecommendations/#{AWS.Util.encode_uri(bot_recommendation_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Monitors the bot replication status through the UI console.
  """
  @spec describe_bot_replica(map(), String.t(), String.t(), list()) ::
          {:ok, describe_bot_replica_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_bot_replica_errors()}
  def describe_bot_replica(%Client{} = client, bot_id, replica_region, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/replicas/#{AWS.Util.encode_uri(replica_region)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a request to generate a bot through natural language
  description, made through
  the `StartBotResource` API.

  Use the `generatedBotLocaleUrl`
  to retrieve the Amazon S3 object containing the bot locale configuration. You
  can
  then modify and import this configuration.
  """
  @spec describe_bot_resource_generation(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          list()
        ) ::
          {:ok, describe_bot_resource_generation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_bot_resource_generation_errors()}
  def describe_bot_resource_generation(
        %Client{} = client,
        bot_id,
        bot_version,
        generation_id,
        locale_id,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/generations/#{AWS.Util.encode_uri(generation_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides metadata about a version of a bot.
  """
  @spec describe_bot_version(map(), String.t(), String.t(), list()) ::
          {:ok, describe_bot_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_bot_version_errors()}
  def describe_bot_version(%Client{} = client, bot_id, bot_version, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides metadata information about a custom vocabulary.
  """
  @spec describe_custom_vocabulary_metadata(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, describe_custom_vocabulary_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_custom_vocabulary_metadata_errors()}
  def describe_custom_vocabulary_metadata(
        %Client{} = client,
        bot_id,
        bot_version,
        locale_id,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/customvocabulary/DEFAULT/metadata"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a specific export.
  """
  @spec describe_export(map(), String.t(), list()) ::
          {:ok, describe_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_export_errors()}
  def describe_export(%Client{} = client, export_id, options \\ []) do
    url_path = "/exports/#{AWS.Util.encode_uri(export_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a specific import.
  """
  @spec describe_import(map(), String.t(), list()) ::
          {:ok, describe_import_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_import_errors()}
  def describe_import(%Client{} = client, import_id, options \\ []) do
    url_path = "/imports/#{AWS.Util.encode_uri(import_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns metadata about an intent.
  """
  @spec describe_intent(map(), String.t(), String.t(), String.t(), String.t(), list()) ::
          {:ok, describe_intent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_intent_errors()}
  def describe_intent(
        %Client{} = client,
        bot_id,
        bot_version,
        intent_id,
        locale_id,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/intents/#{AWS.Util.encode_uri(intent_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the resource policy and policy revision for a bot or bot
  alias.
  """
  @spec describe_resource_policy(map(), String.t(), list()) ::
          {:ok, describe_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_resource_policy_errors()}
  def describe_resource_policy(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/policy/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets metadata information about a slot.
  """
  @spec describe_slot(map(), String.t(), String.t(), String.t(), String.t(), String.t(), list()) ::
          {:ok, describe_slot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_slot_errors()}
  def describe_slot(
        %Client{} = client,
        bot_id,
        bot_version,
        intent_id,
        locale_id,
        slot_id,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/intents/#{AWS.Util.encode_uri(intent_id)}/slots/#{AWS.Util.encode_uri(slot_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets metadata information about a slot type.
  """
  @spec describe_slot_type(map(), String.t(), String.t(), String.t(), String.t(), list()) ::
          {:ok, describe_slot_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_slot_type_errors()}
  def describe_slot_type(
        %Client{} = client,
        bot_id,
        bot_version,
        locale_id,
        slot_type_id,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/slottypes/#{AWS.Util.encode_uri(slot_type_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets metadata information about the test execution.
  """
  @spec describe_test_execution(map(), String.t(), list()) ::
          {:ok, describe_test_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_test_execution_errors()}
  def describe_test_execution(%Client{} = client, test_execution_id, options \\ []) do
    url_path = "/testexecutions/#{AWS.Util.encode_uri(test_execution_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets metadata information about the test set.
  """
  @spec describe_test_set(map(), String.t(), list()) ::
          {:ok, describe_test_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_test_set_errors()}
  def describe_test_set(%Client{} = client, test_set_id, options \\ []) do
    url_path = "/testsets/#{AWS.Util.encode_uri(test_set_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets metadata information about the test set discrepancy report.
  """
  @spec describe_test_set_discrepancy_report(map(), String.t(), list()) ::
          {:ok, describe_test_set_discrepancy_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_test_set_discrepancy_report_errors()}
  def describe_test_set_discrepancy_report(
        %Client{} = client,
        test_set_discrepancy_report_id,
        options \\ []
      ) do
    url_path = "/testsetdiscrepancy/#{AWS.Util.encode_uri(test_set_discrepancy_report_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets metadata information about the test set generation.
  """
  @spec describe_test_set_generation(map(), String.t(), list()) ::
          {:ok, describe_test_set_generation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_test_set_generation_errors()}
  def describe_test_set_generation(%Client{} = client, test_set_generation_id, options \\ []) do
    url_path = "/testsetgenerations/#{AWS.Util.encode_uri(test_set_generation_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Generates sample utterances for an intent.
  """
  @spec generate_bot_element(
          map(),
          String.t(),
          String.t(),
          String.t(),
          generate_bot_element_request(),
          list()
        ) ::
          {:ok, generate_bot_element_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, generate_bot_element_errors()}
  def generate_bot_element(
        %Client{} = client,
        bot_id,
        bot_version,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/generate"

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
  The pre-signed Amazon S3 URL to download the test execution result artifacts.
  """
  @spec get_test_execution_artifacts_url(map(), String.t(), list()) ::
          {:ok, get_test_execution_artifacts_url_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_test_execution_artifacts_url_errors()}
  def get_test_execution_artifacts_url(%Client{} = client, test_execution_id, options \\ []) do
    url_path = "/testexecutions/#{AWS.Util.encode_uri(test_execution_id)}/artifacturl"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides a list of utterances that users have sent to the
  bot.

  Utterances are aggregated by the text of the utterance. For example,
  all instances where customers used the phrase "I want to order pizza"
  are aggregated into the same line in the response.

  You can see both detected utterances and missed utterances. A
  detected utterance is where the bot properly recognized the utterance
  and activated the associated intent. A missed utterance was not
  recognized by the bot and didn't activate an intent.

  Utterances can be aggregated for a bot alias or for a bot version,
  but not both at the same time.

  Utterances statistics are not generated under the following
  conditions:

    *
  The `childDirected` field was set to true when the
  bot was created.

    *
  You are using slot obfuscation with one or more slots.

    *
  You opted out of participating in improving Amazon Lex.
  """
  @spec list_aggregated_utterances(
          map(),
          String.t(),
          list_aggregated_utterances_request(),
          list()
        ) ::
          {:ok, list_aggregated_utterances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_aggregated_utterances_errors()}
  def list_aggregated_utterances(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/aggregatedutterances"
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
  The action to list the replicated bots created from the source bot alias.
  """
  @spec list_bot_alias_replicas(
          map(),
          String.t(),
          String.t(),
          list_bot_alias_replicas_request(),
          list()
        ) ::
          {:ok, list_bot_alias_replicas_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_bot_alias_replicas_errors()}
  def list_bot_alias_replicas(%Client{} = client, bot_id, replica_region, input, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/replicas/#{AWS.Util.encode_uri(replica_region)}/botaliases"

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
  Gets a list of aliases for the specified bot.
  """
  @spec list_bot_aliases(map(), String.t(), list_bot_aliases_request(), list()) ::
          {:ok, list_bot_aliases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_bot_aliases_errors()}
  def list_bot_aliases(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/botaliases"
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
  Gets a list of locales for the specified bot.
  """
  @spec list_bot_locales(map(), String.t(), String.t(), list_bot_locales_request(), list()) ::
          {:ok, list_bot_locales_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_bot_locales_errors()}
  def list_bot_locales(%Client{} = client, bot_id, bot_version, input, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales"

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
  Get a list of bot recommendations that meet the specified
  criteria.
  """
  @spec list_bot_recommendations(
          map(),
          String.t(),
          String.t(),
          String.t(),
          list_bot_recommendations_request(),
          list()
        ) ::
          {:ok, list_bot_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_bot_recommendations_errors()}
  def list_bot_recommendations(
        %Client{} = client,
        bot_id,
        bot_version,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/botrecommendations"

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
  The action to list the replicated bots.
  """
  @spec list_bot_replicas(map(), String.t(), list_bot_replicas_request(), list()) ::
          {:ok, list_bot_replicas_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_bot_replicas_errors()}
  def list_bot_replicas(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/replicas"
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
  Lists the generation requests made for a bot locale.
  """
  @spec list_bot_resource_generations(
          map(),
          String.t(),
          String.t(),
          String.t(),
          list_bot_resource_generations_request(),
          list()
        ) ::
          {:ok, list_bot_resource_generations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_bot_resource_generations_errors()}
  def list_bot_resource_generations(
        %Client{} = client,
        bot_id,
        bot_version,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/generations"

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
  Contains information about all the versions replication statuses applicable for
  Global Resiliency.
  """
  @spec list_bot_version_replicas(
          map(),
          String.t(),
          String.t(),
          list_bot_version_replicas_request(),
          list()
        ) ::
          {:ok, list_bot_version_replicas_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_bot_version_replicas_errors()}
  def list_bot_version_replicas(%Client{} = client, bot_id, replica_region, input, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/replicas/#{AWS.Util.encode_uri(replica_region)}/botversions"

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
  Gets information about all of the versions of a bot.

  The `ListBotVersions` operation returns a summary of each
  version of a bot. For example, if a bot has three numbered versions,
  the `ListBotVersions` operation returns for summaries, one
  for each numbered version and one for the `DRAFT`
  version.

  The `ListBotVersions` operation always returns at least
  one version, the `DRAFT` version.
  """
  @spec list_bot_versions(map(), String.t(), list_bot_versions_request(), list()) ::
          {:ok, list_bot_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_bot_versions_errors()}
  def list_bot_versions(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions"
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
  Gets a list of available bots.
  """
  @spec list_bots(map(), list_bots_request(), list()) ::
          {:ok, list_bots_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_bots_errors()}
  def list_bots(%Client{} = client, input, options \\ []) do
    url_path = "/bots"
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
  Gets a list of built-in intents provided by Amazon Lex that you can use
  in your bot.

  To use a built-in intent as a the base for your own intent, include
  the built-in intent signature in the `parentIntentSignature`
  parameter when you call the `CreateIntent` operation. For
  more information, see
  [CreateIntent](https://docs.aws.amazon.com/lexv2/latest/APIReference/API_CreateIntent.html).
  """
  @spec list_built_in_intents(map(), String.t(), list_built_in_intents_request(), list()) ::
          {:ok, list_built_in_intents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_built_in_intents_errors()}
  def list_built_in_intents(%Client{} = client, locale_id, input, options \\ []) do
    url_path = "/builtins/locales/#{AWS.Util.encode_uri(locale_id)}/intents"
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
  Gets a list of built-in slot types that meet the specified
  criteria.
  """
  @spec list_built_in_slot_types(map(), String.t(), list_built_in_slot_types_request(), list()) ::
          {:ok, list_built_in_slot_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_built_in_slot_types_errors()}
  def list_built_in_slot_types(%Client{} = client, locale_id, input, options \\ []) do
    url_path = "/builtins/locales/#{AWS.Util.encode_uri(locale_id)}/slottypes"
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
  Paginated list of custom vocabulary items for a given bot locale's
  custom vocabulary.
  """
  @spec list_custom_vocabulary_items(
          map(),
          String.t(),
          String.t(),
          String.t(),
          list_custom_vocabulary_items_request(),
          list()
        ) ::
          {:ok, list_custom_vocabulary_items_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_custom_vocabulary_items_errors()}
  def list_custom_vocabulary_items(
        %Client{} = client,
        bot_id,
        bot_version,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/customvocabulary/DEFAULT/list"

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
  Lists the exports for a bot, bot locale, or custom vocabulary.

  Exports are kept in the list for 7 days.
  """
  @spec list_exports(map(), list_exports_request(), list()) ::
          {:ok, list_exports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_exports_errors()}
  def list_exports(%Client{} = client, input, options \\ []) do
    url_path = "/exports"
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
  Lists the imports for a bot, bot locale, or custom vocabulary.

  Imports are kept in the list for 7 days.
  """
  @spec list_imports(map(), list_imports_request(), list()) ::
          {:ok, list_imports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_imports_errors()}
  def list_imports(%Client{} = client, input, options \\ []) do
    url_path = "/imports"
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
  Retrieves summary metrics for the intents in your bot.

  The following fields are required:

    *

  `metrics` – A list of
  [AnalyticsIntentMetric](https://docs.aws.amazon.com/lexv2/latest/APIReference/API_AnalyticsIntentMetric.html)
  objects. In each object, use the `name` field to specify the metric to
  calculate, the `statistic` field to specify whether to calculate the `Sum`,
  `Average`, or `Max` number, and the `order` field to specify whether to sort the
  results in `Ascending` or `Descending` order.

    *

  `startDateTime` and `endDateTime` – Define a time range for which you want to
  retrieve results.

  Of the optional fields, you can organize the results in the following ways:

    *
  Use the `filters` field to filter the results, the `groupBy` field to specify
  categories by which to group the results, and the `binBy` field to specify time
  intervals by which to group the results.

    *
  Use the `maxResults` field to limit the number of results to return in a single
  response and the `nextToken` field to return the next batch of results if the
  response does not return the full set of results.

  Note that an `order` field exists in both `binBy` and `metrics`. You can specify
  only one `order` in a given request.
  """
  @spec list_intent_metrics(map(), String.t(), list_intent_metrics_request(), list()) ::
          {:ok, list_intent_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_intent_metrics_errors()}
  def list_intent_metrics(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/analytics/intentmetrics"
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
  Retrieves summary statistics for a path of intents that users take over sessions
  with your bot.

  The following fields are required:

    *

  `startDateTime` and `endDateTime` – Define a time range for which you want to
  retrieve results.

    *

  `intentPath` – Define an order of intents for which you want to retrieve
  metrics. Separate intents in the path with a forward slash. For example,
  populate the `intentPath` field with `/BookCar/BookHotel` to see details about
  how many times users invoked the `BookCar` and `BookHotel` intents in that
  order.

  Use the optional `filters` field to filter the results.
  """
  @spec list_intent_paths(map(), String.t(), list_intent_paths_request(), list()) ::
          {:ok, list_intent_paths_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_intent_paths_errors()}
  def list_intent_paths(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/analytics/intentpaths"
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
  Retrieves summary metrics for the stages within intents in your bot.

  The following fields are required:

    *

  `metrics` – A list of
  [AnalyticsIntentStageMetric](https://docs.aws.amazon.com/lexv2/latest/APIReference/API_AnalyticsIntentStageMetric.html)
  objects. In each object, use the `name` field to specify the metric to
  calculate, the `statistic` field to specify whether to calculate the `Sum`,
  `Average`, or `Max` number, and the `order` field to specify whether to sort the
  results in `Ascending` or `Descending` order.

    *

  `startDateTime` and `endDateTime` – Define a time range for which you want to
  retrieve results.

  Of the optional fields, you can organize the results in the following ways:

    *
  Use the `filters` field to filter the results, the `groupBy` field to specify
  categories by which to group the results, and the `binBy` field to specify time
  intervals by which to group the results.

    *
  Use the `maxResults` field to limit the number of results to return in a single
  response and the `nextToken` field to return the next batch of results if the
  response does not return the full set of results.

  Note that an `order` field exists in both `binBy` and `metrics`. You can only
  specify one `order` in a given request.
  """
  @spec list_intent_stage_metrics(map(), String.t(), list_intent_stage_metrics_request(), list()) ::
          {:ok, list_intent_stage_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_intent_stage_metrics_errors()}
  def list_intent_stage_metrics(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/analytics/intentstagemetrics"
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
  Get a list of intents that meet the specified criteria.
  """
  @spec list_intents(map(), String.t(), String.t(), String.t(), list_intents_request(), list()) ::
          {:ok, list_intents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_intents_errors()}
  def list_intents(%Client{} = client, bot_id, bot_version, locale_id, input, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/intents"

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
  Gets a list of recommended intents provided by the bot
  recommendation that you can use in your bot.

  Intents in the
  response are ordered by relevance.
  """
  @spec list_recommended_intents(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          list_recommended_intents_request(),
          list()
        ) ::
          {:ok, list_recommended_intents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_recommended_intents_errors()}
  def list_recommended_intents(
        %Client{} = client,
        bot_id,
        bot_recommendation_id,
        bot_version,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/botrecommendations/#{AWS.Util.encode_uri(bot_recommendation_id)}/intents"

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
  Retrieves a list of metadata for individual user sessions with your bot.

  The `startDateTime` and `endDateTime` fields are required. These fields define a
  time range for which you want to retrieve results. Of the optional fields, you
  can organize the results in the following ways:

    *
  Use the `filters` field to filter the results and the `sortBy` field to specify
  the values by which to sort the results.

    *
  Use the `maxResults` field to limit the number of results to return in a single
  response and the `nextToken` field to return the next batch of results if the
  response does not return the full set of results.
  """
  @spec list_session_analytics_data(
          map(),
          String.t(),
          list_session_analytics_data_request(),
          list()
        ) ::
          {:ok, list_session_analytics_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_session_analytics_data_errors()}
  def list_session_analytics_data(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/analytics/sessions"
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
  Retrieves summary metrics for the user sessions with your bot.

  The following fields are required:

    *

  `metrics` – A list of
  [AnalyticsSessionMetric](https://docs.aws.amazon.com/lexv2/latest/APIReference/API_AnalyticsSessionMetric.html)
  objects. In each object, use the `name` field to specify the metric to
  calculate, the `statistic` field to specify whether to calculate the `Sum`,
  `Average`, or `Max` number, and the `order` field to specify whether to sort the
  results in `Ascending` or `Descending` order.

    *

  `startDateTime` and `endDateTime` – Define a time range for which you want to
  retrieve results.

  Of the optional fields, you can organize the results in the following ways:

    *
  Use the `filters` field to filter the results, the `groupBy` field to specify
  categories by which to group the results, and the `binBy` field to specify time
  intervals by which to group the results.

    *
  Use the `maxResults` field to limit the number of results to return in a single
  response and the `nextToken` field to return the next batch of results if the
  response does not return the full set of results.

  Note that an `order` field exists in both `binBy` and `metrics`. Currently, you
  can specify it in either field, but not in both.
  """
  @spec list_session_metrics(map(), String.t(), list_session_metrics_request(), list()) ::
          {:ok, list_session_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_session_metrics_errors()}
  def list_session_metrics(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/analytics/sessionmetrics"
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
  Gets a list of slot types that match the specified criteria.
  """
  @spec list_slot_types(
          map(),
          String.t(),
          String.t(),
          String.t(),
          list_slot_types_request(),
          list()
        ) ::
          {:ok, list_slot_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_slot_types_errors()}
  def list_slot_types(%Client{} = client, bot_id, bot_version, locale_id, input, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/slottypes"

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
  Gets a list of slots that match the specified criteria.
  """
  @spec list_slots(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          list_slots_request(),
          list()
        ) ::
          {:ok, list_slots_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_slots_errors()}
  def list_slots(
        %Client{} = client,
        bot_id,
        bot_version,
        intent_id,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/intents/#{AWS.Util.encode_uri(intent_id)}/slots"

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
  Gets a list of tags associated with a resource.

  Only bots, bot
  aliases, and bot channels can have tags associated with them.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of test execution result items.
  """
  @spec list_test_execution_result_items(
          map(),
          String.t(),
          list_test_execution_result_items_request(),
          list()
        ) ::
          {:ok, list_test_execution_result_items_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_test_execution_result_items_errors()}
  def list_test_execution_result_items(
        %Client{} = client,
        test_execution_id,
        input,
        options \\ []
      ) do
    url_path = "/testexecutions/#{AWS.Util.encode_uri(test_execution_id)}/results"
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
  The list of test set executions.
  """
  @spec list_test_executions(map(), list_test_executions_request(), list()) ::
          {:ok, list_test_executions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_test_executions_errors()}
  def list_test_executions(%Client{} = client, input, options \\ []) do
    url_path = "/testexecutions"
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
  The list of test set records.
  """
  @spec list_test_set_records(map(), String.t(), list_test_set_records_request(), list()) ::
          {:ok, list_test_set_records_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_test_set_records_errors()}
  def list_test_set_records(%Client{} = client, test_set_id, input, options \\ []) do
    url_path = "/testsets/#{AWS.Util.encode_uri(test_set_id)}/records"
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
  The list of the test sets
  """
  @spec list_test_sets(map(), list_test_sets_request(), list()) ::
          {:ok, list_test_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_test_sets_errors()}
  def list_test_sets(%Client{} = client, input, options \\ []) do
    url_path = "/testsets"
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

  To use this API operation, your IAM role must have permissions to
  perform the
  [ListAggregatedUtterances](https://docs.aws.amazon.com/lexv2/latest/APIReference/API_ListAggregatedUtterances.html) operation, which provides access to
  utterance-related analytics.

  See [Viewing utterance
  statistics](https://docs.aws.amazon.com/lexv2/latest/dg/monitoring-utterances.html)
  for the IAM policy to apply to the IAM role.

  Retrieves a list of metadata for individual user utterances to your bot. The
  following fields are required:

    *

  `startDateTime` and `endDateTime` – Define a time range for which you want to
  retrieve results.

  Of the optional fields, you can organize the results in the following ways:

    *
  Use the `filters` field to filter the results and the `sortBy` field to specify
  the values by which to sort the results.

    *
  Use the `maxResults` field to limit the number of results to return in a single
  response and the `nextToken` field to return the next batch of results if the
  response does not return the full set of results.
  """
  @spec list_utterance_analytics_data(
          map(),
          String.t(),
          list_utterance_analytics_data_request(),
          list()
        ) ::
          {:ok, list_utterance_analytics_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_utterance_analytics_data_errors()}
  def list_utterance_analytics_data(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/analytics/utterances"
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

  To use this API operation, your IAM role must have permissions to
  perform the
  [ListAggregatedUtterances](https://docs.aws.amazon.com/lexv2/latest/APIReference/API_ListAggregatedUtterances.html) operation, which provides access to
  utterance-related analytics.

  See [Viewing utterance
  statistics](https://docs.aws.amazon.com/lexv2/latest/dg/monitoring-utterances.html)
  for the IAM policy to apply to the IAM role.

  Retrieves summary metrics for the utterances in your bot. The following fields
  are required:

    *

  `metrics` – A list of
  [AnalyticsUtteranceMetric](https://docs.aws.amazon.com/lexv2/latest/APIReference/API_AnalyticsUtteranceMetric.html)
  objects. In each object, use the `name` field to specify the metric to
  calculate, the `statistic` field to specify whether to calculate the `Sum`,
  `Average`, or `Max` number, and the `order` field to specify whether to sort the
  results in `Ascending` or `Descending` order.

    *

  `startDateTime` and `endDateTime` – Define a time range for which you want to
  retrieve results.

  Of the optional fields, you can organize the results in the following ways:

    *
  Use the `filters` field to filter the results, the `groupBy` field to specify
  categories by which to group the results, and the `binBy` field to specify time
  intervals by which to group the results.

    *
  Use the `maxResults` field to limit the number of results to return in a single
  response and the `nextToken` field to return the next batch of results if the
  response does not return the full set of results.

  Note that an `order` field exists in both `binBy` and `metrics`. Currently, you
  can specify it in either field, but not in both.
  """
  @spec list_utterance_metrics(map(), String.t(), list_utterance_metrics_request(), list()) ::
          {:ok, list_utterance_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_utterance_metrics_errors()}
  def list_utterance_metrics(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}/analytics/utterancemetrics"
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
  Search for associated transcripts that meet the specified
  criteria.
  """
  @spec search_associated_transcripts(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          search_associated_transcripts_request(),
          list()
        ) ::
          {:ok, search_associated_transcripts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_associated_transcripts_errors()}
  def search_associated_transcripts(
        %Client{} = client,
        bot_id,
        bot_recommendation_id,
        bot_version,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/botrecommendations/#{AWS.Util.encode_uri(bot_recommendation_id)}/associatedtranscripts"

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
  Use this to provide your transcript data, and to start the bot
  recommendation process.
  """
  @spec start_bot_recommendation(
          map(),
          String.t(),
          String.t(),
          String.t(),
          start_bot_recommendation_request(),
          list()
        ) ::
          {:ok, start_bot_recommendation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_bot_recommendation_errors()}
  def start_bot_recommendation(
        %Client{} = client,
        bot_id,
        bot_version,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/botrecommendations"

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
  Starts a request for the descriptive bot builder to generate a bot locale
  configuration
  based on the prompt you provide it.

  After you make this call, use the `DescribeBotResourceGeneration`
  operation to check on the status of the generation and for the
  `generatedBotLocaleUrl` when the
  generation is complete. Use that value to retrieve the Amazon S3 object
  containing the bot locale configuration. You can
  then modify and import this configuration.
  """
  @spec start_bot_resource_generation(
          map(),
          String.t(),
          String.t(),
          String.t(),
          start_bot_resource_generation_request(),
          list()
        ) ::
          {:ok, start_bot_resource_generation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_bot_resource_generation_errors()}
  def start_bot_resource_generation(
        %Client{} = client,
        bot_id,
        bot_version,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/startgeneration"

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
  Starts importing a bot, bot locale, or custom vocabulary from a zip
  archive that you uploaded to an S3 bucket.
  """
  @spec start_import(map(), start_import_request(), list()) ::
          {:ok, start_import_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_import_errors()}
  def start_import(%Client{} = client, input, options \\ []) do
    url_path = "/imports"
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
  The action to start test set execution.
  """
  @spec start_test_execution(map(), String.t(), start_test_execution_request(), list()) ::
          {:ok, start_test_execution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_test_execution_errors()}
  def start_test_execution(%Client{} = client, test_set_id, input, options \\ []) do
    url_path = "/testsets/#{AWS.Util.encode_uri(test_set_id)}/testexecutions"
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
  The action to start the generation of test set.
  """
  @spec start_test_set_generation(map(), start_test_set_generation_request(), list()) ::
          {:ok, start_test_set_generation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_test_set_generation_errors()}
  def start_test_set_generation(%Client{} = client, input, options \\ []) do
    url_path = "/testsetgenerations"
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
  Stop an already running Bot Recommendation request.
  """
  @spec stop_bot_recommendation(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          stop_bot_recommendation_request(),
          list()
        ) ::
          {:ok, stop_bot_recommendation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_bot_recommendation_errors()}
  def stop_bot_recommendation(
        %Client{} = client,
        bot_id,
        bot_recommendation_id,
        bot_version,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/botrecommendations/#{AWS.Util.encode_uri(bot_recommendation_id)}/stopbotrecommendation"

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
  Adds the specified tags to the specified resource.

  If a tag key
  already exists, the existing value is replaced with the new
  value.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Removes tags from a bot, bot alias, or bot channel.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Updates the configuration of an existing bot.
  """
  @spec update_bot(map(), String.t(), update_bot_request(), list()) ::
          {:ok, update_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_bot_errors()}
  def update_bot(%Client{} = client, bot_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_id)}"
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
  Updates the configuration of an existing bot alias.
  """
  @spec update_bot_alias(map(), String.t(), String.t(), update_bot_alias_request(), list()) ::
          {:ok, update_bot_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_bot_alias_errors()}
  def update_bot_alias(%Client{} = client, bot_alias_id, bot_id, input, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botaliases/#{AWS.Util.encode_uri(bot_alias_id)}"

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
  Updates the settings that a bot has for a specific locale.
  """
  @spec update_bot_locale(
          map(),
          String.t(),
          String.t(),
          String.t(),
          update_bot_locale_request(),
          list()
        ) ::
          {:ok, update_bot_locale_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_bot_locale_errors()}
  def update_bot_locale(%Client{} = client, bot_id, bot_version, locale_id, input, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}"

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
  Updates an existing bot recommendation request.
  """
  @spec update_bot_recommendation(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          update_bot_recommendation_request(),
          list()
        ) ::
          {:ok, update_bot_recommendation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_bot_recommendation_errors()}
  def update_bot_recommendation(
        %Client{} = client,
        bot_id,
        bot_recommendation_id,
        bot_version,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/botrecommendations/#{AWS.Util.encode_uri(bot_recommendation_id)}"

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
  Updates the password used to protect an export zip archive.

  The password is not required. If you don't supply a password, Amazon Lex
  generates a zip file that is not protected by a password. This is the
  archive that is available at the pre-signed S3 URL provided by the
  [DescribeExport](https://docs.aws.amazon.com/lexv2/latest/APIReference/API_DescribeExport.html)
  operation.
  """
  @spec update_export(map(), String.t(), update_export_request(), list()) ::
          {:ok, update_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_export_errors()}
  def update_export(%Client{} = client, export_id, input, options \\ []) do
    url_path = "/exports/#{AWS.Util.encode_uri(export_id)}"
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
  Updates the settings for an intent.
  """
  @spec update_intent(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          update_intent_request(),
          list()
        ) ::
          {:ok, update_intent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_intent_errors()}
  def update_intent(
        %Client{} = client,
        bot_id,
        bot_version,
        intent_id,
        locale_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/intents/#{AWS.Util.encode_uri(intent_id)}"

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
  Replaces the existing resource policy for a bot or bot alias with a
  new one.

  If the policy doesn't exist, Amazon Lex returns an
  exception.
  """
  @spec update_resource_policy(map(), String.t(), update_resource_policy_request(), list()) ::
          {:ok, update_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_resource_policy_errors()}
  def update_resource_policy(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/policy/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"expectedRevisionId", "expectedRevisionId"}
      ]
      |> Request.build_params(input)

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
  Updates the settings for a slot.
  """
  @spec update_slot(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          update_slot_request(),
          list()
        ) ::
          {:ok, update_slot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_slot_errors()}
  def update_slot(
        %Client{} = client,
        bot_id,
        bot_version,
        intent_id,
        locale_id,
        slot_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/intents/#{AWS.Util.encode_uri(intent_id)}/slots/#{AWS.Util.encode_uri(slot_id)}"

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
  Updates the configuration of an existing slot type.
  """
  @spec update_slot_type(
          map(),
          String.t(),
          String.t(),
          String.t(),
          String.t(),
          update_slot_type_request(),
          list()
        ) ::
          {:ok, update_slot_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_slot_type_errors()}
  def update_slot_type(
        %Client{} = client,
        bot_id,
        bot_version,
        locale_id,
        slot_type_id,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_id)}/botversions/#{AWS.Util.encode_uri(bot_version)}/botlocales/#{AWS.Util.encode_uri(locale_id)}/slottypes/#{AWS.Util.encode_uri(slot_type_id)}"

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
  The action to update the test set.
  """
  @spec update_test_set(map(), String.t(), update_test_set_request(), list()) ::
          {:ok, update_test_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_test_set_errors()}
  def update_test_set(%Client{} = client, test_set_id, input, options \\ []) do
    url_path = "/testsets/#{AWS.Util.encode_uri(test_set_id)}"
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
