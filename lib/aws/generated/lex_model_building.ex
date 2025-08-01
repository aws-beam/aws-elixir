# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LexModelBuilding do
  @moduledoc """
  Amazon Lex Build-Time Actions

  Amazon Lex is an AWS service for building conversational voice and text
  interfaces.

  Use these actions to create, update, and delete conversational
  bots for new and existing client applications.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      builtin_slot_type_metadata() :: %{
        "signature" => String.t() | atom(),
        "supportedLocales" => list(list(any())())
      }

  """
  @type builtin_slot_type_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_slot_types_response() :: %{
        "nextToken" => String.t() | atom(),
        "slotTypes" => list(slot_type_metadata())
      }

  """
  @type get_slot_types_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_bot_request() :: %{
        optional("abortStatement") => statement(),
        optional("checksum") => String.t() | atom(),
        optional("clarificationPrompt") => prompt(),
        optional("createVersion") => boolean(),
        optional("description") => String.t() | atom(),
        optional("detectSentiment") => boolean(),
        optional("enableModelImprovements") => boolean(),
        optional("idleSessionTTLInSeconds") => integer(),
        optional("intents") => list(intent()),
        optional("nluIntentConfidenceThreshold") => float(),
        optional("processBehavior") => list(any()),
        optional("tags") => list(tag()),
        optional("voiceId") => String.t() | atom(),
        required("childDirected") => boolean(),
        required("locale") => list(any())
      }

  """
  @type put_bot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => list(tag())
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_bot_channel_associations_response() :: %{
        "botChannelAssociations" => list(bot_channel_association()),
        "nextToken" => String.t() | atom()
      }

  """
  @type get_bot_channel_associations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_builtin_intents_request() :: %{
        optional("locale") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("signatureContains") => String.t() | atom()
      }

  """
  @type get_builtin_intents_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_failure_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type internal_failure_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      fulfillment_activity() :: %{
        "codeHook" => code_hook(),
        "type" => list(any())
      }

  """
  @type fulfillment_activity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      migration_summary() :: %{
        "migrationId" => String.t() | atom(),
        "migrationStatus" => list(any()),
        "migrationStrategy" => list(any()),
        "migrationTimestamp" => non_neg_integer(),
        "v1BotLocale" => list(any()),
        "v1BotName" => String.t() | atom(),
        "v1BotVersion" => String.t() | atom(),
        "v2BotId" => String.t() | atom(),
        "v2BotRole" => String.t() | atom()
      }

  """
  @type migration_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_migration_response() :: %{
        "alerts" => list(migration_alert()),
        "migrationId" => String.t() | atom(),
        "migrationStatus" => list(any()),
        "migrationStrategy" => list(any()),
        "migrationTimestamp" => non_neg_integer(),
        "v1BotLocale" => list(any()),
        "v1BotName" => String.t() | atom(),
        "v1BotVersion" => String.t() | atom(),
        "v2BotId" => String.t() | atom(),
        "v2BotRole" => String.t() | atom()
      }

  """
  @type get_migration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_reference() :: %{
        "name" => String.t() | atom(),
        "version" => String.t() | atom()
      }

  """
  @type resource_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_builtin_slot_types_response() :: %{
        "nextToken" => String.t() | atom(),
        "slotTypes" => list(builtin_slot_type_metadata())
      }

  """
  @type get_builtin_slot_types_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      put_slot_type_response() :: %{
        "checksum" => String.t() | atom(),
        "createVersion" => boolean(),
        "createdDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "enumerationValues" => list(enumeration_value()),
        "lastUpdatedDate" => non_neg_integer(),
        "name" => String.t() | atom(),
        "parentSlotTypeSignature" => String.t() | atom(),
        "slotTypeConfigurations" => list(slot_type_configuration()),
        "valueSelectionStrategy" => list(any()),
        "version" => String.t() | atom()
      }

  """
  @type put_slot_type_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_import_response() :: %{
        "createdDate" => non_neg_integer(),
        "failureReason" => list(String.t() | atom()),
        "importId" => String.t() | atom(),
        "importStatus" => list(any()),
        "mergeStrategy" => list(any()),
        "name" => String.t() | atom(),
        "resourceType" => list(any())
      }

  """
  @type get_import_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_bot_request() :: %{}

  """
  @type get_bot_request() :: %{}

  @typedoc """

  ## Example:

      resource_in_use_exception() :: %{
        "exampleReference" => resource_reference(),
        "referenceType" => list(any())
      }

  """
  @type resource_in_use_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_migration_request() :: %{
        required("migrationStrategy") => list(any()),
        required("v1BotName") => String.t() | atom(),
        required("v1BotVersion") => String.t() | atom(),
        required("v2BotName") => String.t() | atom(),
        required("v2BotRole") => String.t() | atom()
      }

  """
  @type start_migration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_slot_type_version_response() :: %{
        "checksum" => String.t() | atom(),
        "createdDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "enumerationValues" => list(enumeration_value()),
        "lastUpdatedDate" => non_neg_integer(),
        "name" => String.t() | atom(),
        "parentSlotTypeSignature" => String.t() | atom(),
        "slotTypeConfigurations" => list(slot_type_configuration()),
        "valueSelectionStrategy" => list(any()),
        "version" => String.t() | atom()
      }

  """
  @type create_slot_type_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      log_settings_request() :: %{
        "destination" => list(any()),
        "kmsKeyArn" => String.t() | atom(),
        "logType" => list(any()),
        "resourceArn" => String.t() | atom()
      }

  """
  @type log_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_bot_request() :: %{}

  """
  @type delete_bot_request() :: %{}

  @typedoc """

  ## Example:

      get_bot_response() :: %{
        "abortStatement" => statement(),
        "checksum" => String.t() | atom(),
        "childDirected" => boolean(),
        "clarificationPrompt" => prompt(),
        "createdDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "detectSentiment" => boolean(),
        "enableModelImprovements" => boolean(),
        "failureReason" => String.t() | atom(),
        "idleSessionTTLInSeconds" => integer(),
        "intents" => list(intent()),
        "lastUpdatedDate" => non_neg_integer(),
        "locale" => list(any()),
        "name" => String.t() | atom(),
        "nluIntentConfidenceThreshold" => float(),
        "status" => list(any()),
        "version" => String.t() | atom(),
        "voiceId" => String.t() | atom()
      }

  """
  @type get_bot_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      follow_up_prompt() :: %{
        "prompt" => prompt(),
        "rejectionStatement" => statement()
      }

  """
  @type follow_up_prompt() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      output_context() :: %{
        "name" => String.t() | atom(),
        "timeToLiveInSeconds" => integer(),
        "turnsToLive" => integer()
      }

  """
  @type output_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      slot() :: %{
        "defaultValueSpec" => slot_default_value_spec(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "obfuscationSetting" => list(any()),
        "priority" => integer(),
        "responseCard" => String.t() | atom(),
        "sampleUtterances" => list(String.t() | atom()),
        "slotConstraint" => list(any()),
        "slotType" => String.t() | atom(),
        "slotTypeVersion" => String.t() | atom(),
        "valueElicitationPrompt" => prompt()
      }

  """
  @type slot() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_builtin_slot_types_request() :: %{
        optional("locale") => list(any()),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("signatureContains") => String.t() | atom()
      }

  """
  @type get_builtin_slot_types_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_bot_version_request() :: %{
        optional("checksum") => String.t() | atom()
      }

  """
  @type create_bot_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_bot_channel_association_response() :: %{
        "botAlias" => String.t() | atom(),
        "botConfiguration" => map(),
        "botName" => String.t() | atom(),
        "createdDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "failureReason" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "type" => list(any())
      }

  """
  @type get_bot_channel_association_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_builtin_intent_response() :: %{
        "signature" => String.t() | atom(),
        "slots" => list(builtin_intent_slot()),
        "supportedLocales" => list(list(any())())
      }

  """
  @type get_builtin_intent_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_slot_type_version_request() :: %{
        optional("checksum") => String.t() | atom()
      }

  """
  @type create_slot_type_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_slot_type_versions_response() :: %{
        "nextToken" => String.t() | atom(),
        "slotTypes" => list(slot_type_metadata())
      }

  """
  @type get_slot_type_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_slot_type_version_request() :: %{}

  """
  @type delete_slot_type_version_request() :: %{}

  @typedoc """

  ## Example:

      statement() :: %{
        "messages" => list(message()),
        "responseCard" => String.t() | atom()
      }

  """
  @type statement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_bots_response() :: %{
        "bots" => list(bot_metadata()),
        "nextToken" => String.t() | atom()
      }

  """
  @type get_bots_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      builtin_intent_metadata() :: %{
        "signature" => String.t() | atom(),
        "supportedLocales" => list(list(any())())
      }

  """
  @type builtin_intent_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_migrations_response() :: %{
        "migrationSummaries" => list(migration_summary()),
        "nextToken" => String.t() | atom()
      }

  """
  @type get_migrations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bot_alias_metadata() :: %{
        "botName" => String.t() | atom(),
        "botVersion" => String.t() | atom(),
        "checksum" => String.t() | atom(),
        "conversationLogs" => conversation_logs_response(),
        "createdDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "lastUpdatedDate" => non_neg_integer(),
        "name" => String.t() | atom()
      }

  """
  @type bot_alias_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bot_channel_association() :: %{
        "botAlias" => String.t() | atom(),
        "botConfiguration" => map(),
        "botName" => String.t() | atom(),
        "createdDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "failureReason" => String.t() | atom(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "type" => list(any())
      }

  """
  @type bot_channel_association() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_migrations_request() :: %{
        optional("maxResults") => integer(),
        optional("migrationStatusEquals") => list(any()),
        optional("nextToken") => String.t() | atom(),
        optional("sortByAttribute") => list(any()),
        optional("sortByOrder") => list(any()),
        optional("v1BotNameContains") => String.t() | atom()
      }

  """
  @type get_migrations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      intent() :: %{
        "intentName" => String.t() | atom(),
        "intentVersion" => String.t() | atom()
      }

  """
  @type intent() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_intents_response() :: %{
        "intents" => list(intent_metadata()),
        "nextToken" => String.t() | atom()
      }

  """
  @type get_intents_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_intent_versions_response() :: %{
        "intents" => list(intent_metadata()),
        "nextToken" => String.t() | atom()
      }

  """
  @type get_intent_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kendra_configuration() :: %{
        "kendraIndex" => String.t() | atom(),
        "queryFilterString" => String.t() | atom(),
        "role" => String.t() | atom()
      }

  """
  @type kendra_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_intent_version_request() :: %{}

  """
  @type delete_intent_version_request() :: %{}

  @typedoc """

  ## Example:

      slot_type_regex_configuration() :: %{
        "pattern" => String.t() | atom()
      }

  """
  @type slot_type_regex_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_intent_response() :: %{
        "checksum" => String.t() | atom(),
        "conclusionStatement" => statement(),
        "confirmationPrompt" => prompt(),
        "createdDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "dialogCodeHook" => code_hook(),
        "followUpPrompt" => follow_up_prompt(),
        "fulfillmentActivity" => fulfillment_activity(),
        "inputContexts" => list(input_context()),
        "kendraConfiguration" => kendra_configuration(),
        "lastUpdatedDate" => non_neg_integer(),
        "name" => String.t() | atom(),
        "outputContexts" => list(output_context()),
        "parentIntentSignature" => String.t() | atom(),
        "rejectionStatement" => statement(),
        "sampleUtterances" => list(String.t() | atom()),
        "slots" => list(slot()),
        "version" => String.t() | atom()
      }

  """
  @type get_intent_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_bots_request() :: %{
        optional("maxResults") => integer(),
        optional("nameContains") => String.t() | atom(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type get_bots_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      code_hook() :: %{
        "messageVersion" => String.t() | atom(),
        "uri" => String.t() | atom()
      }

  """
  @type code_hook() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bot_metadata() :: %{
        "createdDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "lastUpdatedDate" => non_neg_integer(),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "version" => String.t() | atom()
      }

  """
  @type bot_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conversation_logs_response() :: %{
        "iamRoleArn" => String.t() | atom(),
        "logSettings" => list(log_settings_response())
      }

  """
  @type conversation_logs_response() :: %{(String.t() | atom()) => any()}

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

      delete_bot_version_request() :: %{}

  """
  @type delete_bot_version_request() :: %{}

  @typedoc """

  ## Example:

      put_bot_alias_request() :: %{
        optional("checksum") => String.t() | atom(),
        optional("conversationLogs") => conversation_logs_request(),
        optional("description") => String.t() | atom(),
        optional("tags") => list(tag()),
        required("botVersion") => String.t() | atom()
      }

  """
  @type put_bot_alias_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      slot_default_value_spec() :: %{
        "defaultValueList" => list(slot_default_value())
      }

  """
  @type slot_default_value_spec() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_import_request() :: %{}

  """
  @type get_import_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => list(tag())
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_utterances_view_response() :: %{
        "botName" => String.t() | atom(),
        "utterances" => list(utterance_list())
      }

  """
  @type get_utterances_view_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_bot_response() :: %{
        "abortStatement" => statement(),
        "checksum" => String.t() | atom(),
        "childDirected" => boolean(),
        "clarificationPrompt" => prompt(),
        "createVersion" => boolean(),
        "createdDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "detectSentiment" => boolean(),
        "enableModelImprovements" => boolean(),
        "failureReason" => String.t() | atom(),
        "idleSessionTTLInSeconds" => integer(),
        "intents" => list(intent()),
        "lastUpdatedDate" => non_neg_integer(),
        "locale" => list(any()),
        "name" => String.t() | atom(),
        "nluIntentConfidenceThreshold" => float(),
        "status" => list(any()),
        "tags" => list(tag()),
        "version" => String.t() | atom(),
        "voiceId" => String.t() | atom()
      }

  """
  @type put_bot_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_intent_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type get_intent_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_bot_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type get_bot_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_slot_type_versions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type get_slot_type_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_bot_alias_request() :: %{}

  """
  @type get_bot_alias_request() :: %{}

  @typedoc """

  ## Example:

      get_intent_request() :: %{}

  """
  @type get_intent_request() :: %{}

  @typedoc """

  ## Example:

      get_bot_aliases_response() :: %{
        "BotAliases" => list(bot_alias_metadata()),
        "nextToken" => String.t() | atom()
      }

  """
  @type get_bot_aliases_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_slot_type_response() :: %{
        "checksum" => String.t() | atom(),
        "createdDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "enumerationValues" => list(enumeration_value()),
        "lastUpdatedDate" => non_neg_integer(),
        "name" => String.t() | atom(),
        "parentSlotTypeSignature" => String.t() | atom(),
        "slotTypeConfigurations" => list(slot_type_configuration()),
        "valueSelectionStrategy" => list(any()),
        "version" => String.t() | atom()
      }

  """
  @type get_slot_type_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      utterance_list() :: %{
        "botVersion" => String.t() | atom(),
        "utterances" => list(utterance_data())
      }

  """
  @type utterance_list() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_builtin_intent_request() :: %{}

  """
  @type get_builtin_intent_request() :: %{}

  @typedoc """

  ## Example:

      delete_bot_alias_request() :: %{}

  """
  @type delete_bot_alias_request() :: %{}

  @typedoc """

  ## Example:

      delete_bot_channel_association_request() :: %{}

  """
  @type delete_bot_channel_association_request() :: %{}

  @typedoc """

  ## Example:

      get_bot_versions_response() :: %{
        "bots" => list(bot_metadata()),
        "nextToken" => String.t() | atom()
      }

  """
  @type get_bot_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_intent_request() :: %{
        optional("checksum") => String.t() | atom(),
        optional("conclusionStatement") => statement(),
        optional("confirmationPrompt") => prompt(),
        optional("createVersion") => boolean(),
        optional("description") => String.t() | atom(),
        optional("dialogCodeHook") => code_hook(),
        optional("followUpPrompt") => follow_up_prompt(),
        optional("fulfillmentActivity") => fulfillment_activity(),
        optional("inputContexts") => list(input_context()),
        optional("kendraConfiguration") => kendra_configuration(),
        optional("outputContexts") => list(output_context()),
        optional("parentIntentSignature") => String.t() | atom(),
        optional("rejectionStatement") => statement(),
        optional("sampleUtterances") => list(String.t() | atom()),
        optional("slots") => list(slot())
      }

  """
  @type put_intent_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_intents_request() :: %{
        optional("maxResults") => integer(),
        optional("nameContains") => String.t() | atom(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type get_intents_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_export_request() :: %{
        required("exportType") => list(any()),
        required("name") => String.t() | atom(),
        required("resourceType") => list(any()),
        required("version") => String.t() | atom()
      }

  """
  @type get_export_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_slot_type_request() :: %{
        optional("checksum") => String.t() | atom(),
        optional("createVersion") => boolean(),
        optional("description") => String.t() | atom(),
        optional("enumerationValues") => list(enumeration_value()),
        optional("parentSlotTypeSignature") => String.t() | atom(),
        optional("slotTypeConfigurations") => list(slot_type_configuration()),
        optional("valueSelectionStrategy") => list(any())
      }

  """
  @type put_slot_type_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_migration_response() :: %{
        "migrationId" => String.t() | atom(),
        "migrationStrategy" => list(any()),
        "migrationTimestamp" => non_neg_integer(),
        "v1BotLocale" => list(any()),
        "v1BotName" => String.t() | atom(),
        "v1BotVersion" => String.t() | atom(),
        "v2BotId" => String.t() | atom(),
        "v2BotRole" => String.t() | atom()
      }

  """
  @type start_migration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conversation_logs_request() :: %{
        "iamRoleArn" => String.t() | atom(),
        "logSettings" => list(log_settings_request())
      }

  """
  @type conversation_logs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      slot_type_configuration() :: %{
        "regexConfiguration" => slot_type_regex_configuration()
      }

  """
  @type slot_type_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_builtin_intents_response() :: %{
        "intents" => list(builtin_intent_metadata()),
        "nextToken" => String.t() | atom()
      }

  """
  @type get_builtin_intents_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_intent_response() :: %{
        "checksum" => String.t() | atom(),
        "conclusionStatement" => statement(),
        "confirmationPrompt" => prompt(),
        "createVersion" => boolean(),
        "createdDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "dialogCodeHook" => code_hook(),
        "followUpPrompt" => follow_up_prompt(),
        "fulfillmentActivity" => fulfillment_activity(),
        "inputContexts" => list(input_context()),
        "kendraConfiguration" => kendra_configuration(),
        "lastUpdatedDate" => non_neg_integer(),
        "name" => String.t() | atom(),
        "outputContexts" => list(output_context()),
        "parentIntentSignature" => String.t() | atom(),
        "rejectionStatement" => statement(),
        "sampleUtterances" => list(String.t() | atom()),
        "slots" => list(slot()),
        "version" => String.t() | atom()
      }

  """
  @type put_intent_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_intent_version_request() :: %{
        optional("checksum") => String.t() | atom()
      }

  """
  @type create_intent_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      get_bot_channel_association_request() :: %{}

  """
  @type get_bot_channel_association_request() :: %{}

  @typedoc """

  ## Example:

      builtin_intent_slot() :: %{
        "name" => String.t() | atom()
      }

  """
  @type builtin_intent_slot() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_slot_types_request() :: %{
        optional("maxResults") => integer(),
        optional("nameContains") => String.t() | atom(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type get_slot_types_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      input_context() :: %{
        "name" => String.t() | atom()
      }

  """
  @type input_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_slot_type_request() :: %{}

  """
  @type delete_slot_type_request() :: %{}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      log_settings_response() :: %{
        "destination" => list(any()),
        "kmsKeyArn" => String.t() | atom(),
        "logType" => list(any()),
        "resourceArn" => String.t() | atom(),
        "resourcePrefix" => String.t() | atom()
      }

  """
  @type log_settings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_migration_request() :: %{}

  """
  @type get_migration_request() :: %{}

  @typedoc """

  ## Example:

      get_export_response() :: %{
        "exportStatus" => list(any()),
        "exportType" => list(any()),
        "failureReason" => String.t() | atom(),
        "name" => String.t() | atom(),
        "resourceType" => list(any()),
        "url" => String.t() | atom(),
        "version" => String.t() | atom()
      }

  """
  @type get_export_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => String.t() | atom(),
        "retryAfterSeconds" => String.t() | atom()
      }

  """
  @type limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type bad_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      slot_default_value() :: %{
        "defaultValue" => String.t() | atom()
      }

  """
  @type slot_default_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_intent_version_response() :: %{
        "checksum" => String.t() | atom(),
        "conclusionStatement" => statement(),
        "confirmationPrompt" => prompt(),
        "createdDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "dialogCodeHook" => code_hook(),
        "followUpPrompt" => follow_up_prompt(),
        "fulfillmentActivity" => fulfillment_activity(),
        "inputContexts" => list(input_context()),
        "kendraConfiguration" => kendra_configuration(),
        "lastUpdatedDate" => non_neg_integer(),
        "name" => String.t() | atom(),
        "outputContexts" => list(output_context()),
        "parentIntentSignature" => String.t() | atom(),
        "rejectionStatement" => statement(),
        "sampleUtterances" => list(String.t() | atom()),
        "slots" => list(slot()),
        "version" => String.t() | atom()
      }

  """
  @type create_intent_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_slot_type_request() :: %{}

  """
  @type get_slot_type_request() :: %{}

  @typedoc """

  ## Example:

      intent_metadata() :: %{
        "createdDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "lastUpdatedDate" => non_neg_integer(),
        "name" => String.t() | atom(),
        "version" => String.t() | atom()
      }

  """
  @type intent_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      utterance_data() :: %{
        "count" => integer(),
        "distinctUsers" => integer(),
        "firstUtteredDate" => non_neg_integer(),
        "lastUtteredDate" => non_neg_integer(),
        "utteranceString" => String.t() | atom()
      }

  """
  @type utterance_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_utterances_request() :: %{}

  """
  @type delete_utterances_request() :: %{}

  @typedoc """

  ## Example:

      enumeration_value() :: %{
        "synonyms" => list(String.t() | atom()),
        "value" => String.t() | atom()
      }

  """
  @type enumeration_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_utterances_view_request() :: %{
        required("botVersions") => list(String.t() | atom()),
        required("statusType") => list(any())
      }

  """
  @type get_utterances_view_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_bot_alias_response() :: %{
        "botName" => String.t() | atom(),
        "botVersion" => String.t() | atom(),
        "checksum" => String.t() | atom(),
        "conversationLogs" => conversation_logs_response(),
        "createdDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "lastUpdatedDate" => non_neg_integer(),
        "name" => String.t() | atom(),
        "tags" => list(tag())
      }

  """
  @type put_bot_alias_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      precondition_failed_exception() :: %{
        "message" => String.t() | atom()
      }

  """
  @type precondition_failed_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      migration_alert() :: %{
        "details" => list(String.t() | atom()),
        "message" => String.t() | atom(),
        "referenceURLs" => list(String.t() | atom()),
        "type" => list(any())
      }

  """
  @type migration_alert() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_intent_request() :: %{}

  """
  @type delete_intent_request() :: %{}

  @typedoc """

  ## Example:

      get_bot_aliases_request() :: %{
        optional("maxResults") => integer(),
        optional("nameContains") => String.t() | atom(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type get_bot_aliases_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_bot_alias_response() :: %{
        "botName" => String.t() | atom(),
        "botVersion" => String.t() | atom(),
        "checksum" => String.t() | atom(),
        "conversationLogs" => conversation_logs_response(),
        "createdDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "lastUpdatedDate" => non_neg_integer(),
        "name" => String.t() | atom()
      }

  """
  @type get_bot_alias_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_import_request() :: %{
        optional("tags") => list(tag()),
        required("mergeStrategy") => list(any()),
        required("payload") => binary(),
        required("resourceType") => list(any())
      }

  """
  @type start_import_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      slot_type_metadata() :: %{
        "createdDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "lastUpdatedDate" => non_neg_integer(),
        "name" => String.t() | atom(),
        "version" => String.t() | atom()
      }

  """
  @type slot_type_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_import_response() :: %{
        "createdDate" => non_neg_integer(),
        "importId" => String.t() | atom(),
        "importStatus" => list(any()),
        "mergeStrategy" => list(any()),
        "name" => String.t() | atom(),
        "resourceType" => list(any()),
        "tags" => list(tag())
      }

  """
  @type start_import_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      prompt() :: %{
        "maxAttempts" => integer(),
        "messages" => list(message()),
        "responseCard" => String.t() | atom()
      }

  """
  @type prompt() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_bot_version_response() :: %{
        "abortStatement" => statement(),
        "checksum" => String.t() | atom(),
        "childDirected" => boolean(),
        "clarificationPrompt" => prompt(),
        "createdDate" => non_neg_integer(),
        "description" => String.t() | atom(),
        "detectSentiment" => boolean(),
        "enableModelImprovements" => boolean(),
        "failureReason" => String.t() | atom(),
        "idleSessionTTLInSeconds" => integer(),
        "intents" => list(intent()),
        "lastUpdatedDate" => non_neg_integer(),
        "locale" => list(any()),
        "name" => String.t() | atom(),
        "status" => list(any()),
        "version" => String.t() | atom(),
        "voiceId" => String.t() | atom()
      }

  """
  @type create_bot_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      message() :: %{
        "content" => String.t() | atom(),
        "contentType" => list(any()),
        "groupNumber" => integer()
      }

  """
  @type message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_bot_channel_associations_request() :: %{
        optional("maxResults") => integer(),
        optional("nameContains") => String.t() | atom(),
        optional("nextToken") => String.t() | atom()
      }

  """
  @type get_bot_channel_associations_request() :: %{(String.t() | atom()) => any()}

  @type create_bot_version_errors() ::
          precondition_failed_exception()
          | bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type create_intent_version_errors() ::
          precondition_failed_exception()
          | bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type create_slot_type_version_errors() ::
          precondition_failed_exception()
          | bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type delete_bot_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type delete_bot_alias_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type delete_bot_channel_association_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type delete_bot_version_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type delete_intent_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type delete_intent_version_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type delete_slot_type_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type delete_slot_type_version_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | resource_in_use_exception()
          | internal_failure_exception()

  @type delete_utterances_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_bot_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_bot_alias_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_bot_aliases_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type get_bot_channel_association_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_bot_channel_associations_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type get_bot_versions_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_bots_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_builtin_intent_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_builtin_intents_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type get_builtin_slot_types_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type get_export_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_import_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_intent_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_intent_versions_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_intents_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_migration_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_migrations_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type get_slot_type_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_slot_type_versions_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_slot_types_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type get_utterances_view_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type put_bot_errors() ::
          precondition_failed_exception()
          | bad_request_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type put_bot_alias_errors() ::
          precondition_failed_exception()
          | bad_request_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type put_intent_errors() ::
          precondition_failed_exception()
          | bad_request_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type put_slot_type_errors() ::
          precondition_failed_exception()
          | bad_request_exception()
          | limit_exceeded_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type start_import_errors() ::
          bad_request_exception() | limit_exceeded_exception() | internal_failure_exception()

  @type start_migration_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | access_denied_exception()
          | not_found_exception()
          | internal_failure_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | conflict_exception()
          | internal_failure_exception()

  def metadata do
    %{
      api_version: "2017-04-19",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "models.lex",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Lex Model Building Service",
      signature_version: "v4",
      signing_name: "lex",
      target_prefix: nil
    }
  end

  @doc """
  Creates a new version of the bot based on the `$LATEST`
  version.

  If the `$LATEST` version of this resource hasn't
  changed since you created the last version, Amazon Lex doesn't create a new
  version. It returns the last created version.

  You can update only the `$LATEST` version of the bot.
  You can't update the numbered versions that you create with the
  `CreateBotVersion` operation.

  When you create the first version of a bot, Amazon Lex sets the version
  to 1. Subsequent versions increment by 1. For more information, see
  `versioning-intro`.

  This operation requires permission for the
  `lex:CreateBotVersion` action.
  """
  @spec create_bot_version(map(), String.t() | atom(), create_bot_version_request(), list()) ::
          {:ok, create_bot_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_bot_version_errors()}
  def create_bot_version(%Client{} = client, name, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(name)}/versions"
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
  Creates a new version of an intent based on the
  `$LATEST` version of the intent.

  If the `$LATEST`
  version of this intent hasn't changed since you last updated it, Amazon Lex
  doesn't create a new version. It returns the last version you
  created.

  You can update only the `$LATEST` version of the
  intent. You can't update the numbered versions that you create with the
  `CreateIntentVersion` operation.

  When you create a version of an intent, Amazon Lex sets the version to
  1. Subsequent versions increment by 1. For more information, see
  `versioning-intro`.

  This operation requires permissions to perform the
  `lex:CreateIntentVersion` action.
  """
  @spec create_intent_version(map(), String.t() | atom(), create_intent_version_request(), list()) ::
          {:ok, create_intent_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_intent_version_errors()}
  def create_intent_version(%Client{} = client, name, input, options \\ []) do
    url_path = "/intents/#{AWS.Util.encode_uri(name)}/versions"
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
  Creates a new version of a slot type based on the
  `$LATEST` version of the specified slot type.

  If the
  `$LATEST` version of this resource has not changed since the
  last version that you created, Amazon Lex doesn't create a new version. It
  returns the last version that you created.

  You can update only the `$LATEST` version of a slot
  type. You can't update the numbered versions that you create with the
  `CreateSlotTypeVersion` operation.

  When you create a version of a slot type, Amazon Lex sets the version to
  1. Subsequent versions increment by 1. For more information, see
  `versioning-intro`.

  This operation requires permissions for the
  `lex:CreateSlotTypeVersion` action.
  """
  @spec create_slot_type_version(
          map(),
          String.t() | atom(),
          create_slot_type_version_request(),
          list()
        ) ::
          {:ok, create_slot_type_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_slot_type_version_errors()}
  def create_slot_type_version(%Client{} = client, name, input, options \\ []) do
    url_path = "/slottypes/#{AWS.Util.encode_uri(name)}/versions"
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
  Deletes all versions of the bot, including the `$LATEST`
  version.

  To delete a specific version of the bot, use the `DeleteBotVersion` operation.
  The `DeleteBot`
  operation doesn't immediately remove the bot schema. Instead, it is marked
  for deletion and removed later.

  Amazon Lex stores utterances indefinitely for improving the ability of
  your bot to respond to user inputs. These utterances are not removed when
  the bot is deleted. To remove the utterances, use the `DeleteUtterances`
  operation.

  If a bot has an alias, you can't delete it. Instead, the
  `DeleteBot` operation returns a
  `ResourceInUseException` exception that includes a reference
  to the alias that refers to the bot. To remove the reference to the bot,
  delete the alias. If you get the same exception again, delete the
  referring alias until the `DeleteBot` operation is
  successful.

  This operation requires permissions for the
  `lex:DeleteBot` action.
  """
  @spec delete_bot(map(), String.t() | atom(), delete_bot_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_bot_errors()}
  def delete_bot(%Client{} = client, name, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(name)}"
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
  Deletes an alias for the specified bot.

  You can't delete an alias that is used in the association between a
  bot and a messaging channel. If an alias is used in a channel association,
  the `DeleteBot` operation returns a
  `ResourceInUseException` exception that includes a reference
  to the channel association that refers to the bot. You can remove the
  reference to the alias by deleting the channel association. If you get the
  same exception again, delete the referring association until the
  `DeleteBotAlias` operation is successful.
  """
  @spec delete_bot_alias(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_bot_alias_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_bot_alias_errors()}
  def delete_bot_alias(%Client{} = client, bot_name, name, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_name)}/aliases/#{AWS.Util.encode_uri(name)}"
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
  Deletes the association between an Amazon Lex bot and a messaging
  platform.

  This operation requires permission for the
  `lex:DeleteBotChannelAssociation` action.
  """
  @spec delete_bot_channel_association(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_bot_channel_association_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_bot_channel_association_errors()}
  def delete_bot_channel_association(
        %Client{} = client,
        bot_alias,
        bot_name,
        name,
        input,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_name)}/aliases/#{AWS.Util.encode_uri(bot_alias)}/channels/#{AWS.Util.encode_uri(name)}"

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
  Deletes a specific version of a bot.

  To delete all versions of a
  bot, use the `DeleteBot` operation.

  This operation requires permissions for the
  `lex:DeleteBotVersion` action.
  """
  @spec delete_bot_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_bot_version_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_bot_version_errors()}
  def delete_bot_version(%Client{} = client, name, version, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(name)}/versions/#{AWS.Util.encode_uri(version)}"
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
  Deletes all versions of the intent, including the
  `$LATEST` version.

  To delete a specific version of the
  intent, use the `DeleteIntentVersion` operation.

  You can delete a version of an intent only if it is not
  referenced. To delete an intent that is referred to in one or more bots
  (see `how-it-works`), you must remove those references
  first.

  If you get the `ResourceInUseException` exception, it
  provides an example reference that shows where the intent is referenced.
  To remove the reference to the intent, either update the bot or delete
  it. If you get the same exception when you attempt to delete the intent
  again, repeat until the intent has no references and the call to
  `DeleteIntent` is successful.

  This operation requires permission for the
  `lex:DeleteIntent` action.
  """
  @spec delete_intent(map(), String.t() | atom(), delete_intent_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_intent_errors()}
  def delete_intent(%Client{} = client, name, input, options \\ []) do
    url_path = "/intents/#{AWS.Util.encode_uri(name)}"
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
  Deletes a specific version of an intent.

  To delete all versions of
  a intent, use the `DeleteIntent` operation.

  This operation requires permissions for the
  `lex:DeleteIntentVersion` action.
  """
  @spec delete_intent_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_intent_version_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_intent_version_errors()}
  def delete_intent_version(%Client{} = client, name, version, input, options \\ []) do
    url_path = "/intents/#{AWS.Util.encode_uri(name)}/versions/#{AWS.Util.encode_uri(version)}"
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
  Deletes all versions of the slot type, including the
  `$LATEST` version.

  To delete a specific version of the slot
  type, use the `DeleteSlotTypeVersion` operation.

  You can delete a version of a slot type only if it is not
  referenced. To delete a slot type that is referred to in one or more
  intents, you must remove those references first.

  If you get the `ResourceInUseException` exception,
  the exception provides an example reference that shows the intent where
  the slot type is referenced. To remove the reference to the slot type,
  either update the intent or delete it. If you get the same exception
  when you attempt to delete the slot type again, repeat until the slot
  type has no references and the `DeleteSlotType` call is
  successful.

  This operation requires permission for the
  `lex:DeleteSlotType` action.
  """
  @spec delete_slot_type(map(), String.t() | atom(), delete_slot_type_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_slot_type_errors()}
  def delete_slot_type(%Client{} = client, name, input, options \\ []) do
    url_path = "/slottypes/#{AWS.Util.encode_uri(name)}"
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
  Deletes a specific version of a slot type.

  To delete all versions
  of a slot type, use the `DeleteSlotType` operation.

  This operation requires permissions for the
  `lex:DeleteSlotTypeVersion` action.
  """
  @spec delete_slot_type_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_slot_type_version_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_slot_type_version_errors()}
  def delete_slot_type_version(%Client{} = client, name, version, input, options \\ []) do
    url_path = "/slottypes/#{AWS.Util.encode_uri(name)}/version/#{AWS.Util.encode_uri(version)}"
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
  are stored for 15 days for use with the `GetUtterancesView` operation, and then
  stored indefinitely for use in improving the
  ability of your bot to respond to user input.

  Use the `DeleteUtterances` operation to manually delete
  stored utterances for a specific user. When you use the
  `DeleteUtterances` operation, utterances stored for improving
  your bot's ability to respond to user input are deleted immediately.
  Utterances stored for use with the `GetUtterancesView`
  operation are deleted after 15 days.

  This operation requires permissions for the
  `lex:DeleteUtterances` action.
  """
  @spec delete_utterances(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_utterances_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_utterances_errors()}
  def delete_utterances(%Client{} = client, bot_name, user_id, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_name)}/utterances/#{AWS.Util.encode_uri(user_id)}"
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
  Returns metadata information for a specific bot.

  You must provide
  the bot name and the bot version or alias.

  This operation requires permissions for the
  `lex:GetBot` action.
  """
  @spec get_bot(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_bot_errors()}
  def get_bot(%Client{} = client, name, version_or_alias, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(name)}/versions/#{AWS.Util.encode_uri(version_or_alias)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about an Amazon Lex bot alias.

  For more information
  about aliases, see `versioning-aliases`.

  This operation requires permissions for the
  `lex:GetBotAlias` action.
  """
  @spec get_bot_alias(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_bot_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_bot_alias_errors()}
  def get_bot_alias(%Client{} = client, bot_name, name, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_name)}/aliases/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of aliases for a specified Amazon Lex bot.

  This operation requires permissions for the
  `lex:GetBotAliases` action.
  """
  @spec get_bot_aliases(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_bot_aliases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_bot_aliases_errors()}
  def get_bot_aliases(
        %Client{} = client,
        bot_name,
        max_results \\ nil,
        name_contains \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_name)}/aliases"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_contains) do
        [{"nameContains", name_contains} | query_params]
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
  Returns information about the association between an Amazon Lex bot and
  a messaging platform.

  This operation requires permissions for the
  `lex:GetBotChannelAssociation` action.
  """
  @spec get_bot_channel_association(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_bot_channel_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_bot_channel_association_errors()}
  def get_bot_channel_association(%Client{} = client, bot_alias, bot_name, name, options \\ []) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_name)}/aliases/#{AWS.Util.encode_uri(bot_alias)}/channels/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all of the channels associated with the
  specified bot.

  The `GetBotChannelAssociations` operation requires
  permissions for the `lex:GetBotChannelAssociations`
  action.
  """
  @spec get_bot_channel_associations(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_bot_channel_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_bot_channel_associations_errors()}
  def get_bot_channel_associations(
        %Client{} = client,
        bot_alias,
        bot_name,
        max_results \\ nil,
        name_contains \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/bots/#{AWS.Util.encode_uri(bot_name)}/aliases/#{AWS.Util.encode_uri(bot_alias)}/channels"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_contains) do
        [{"nameContains", name_contains} | query_params]
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
  Gets information about all of the versions of a bot.

  The `GetBotVersions` operation returns a
  `BotMetadata` object for each version of a bot. For example,
  if a bot has three numbered versions, the `GetBotVersions`
  operation returns four `BotMetadata` objects in the response,
  one for each numbered version and one for the `$LATEST`
  version.

  The `GetBotVersions` operation always returns at least
  one version, the `$LATEST` version.

  This operation requires permissions for the
  `lex:GetBotVersions` action.
  """
  @spec get_bot_versions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_bot_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_bot_versions_errors()}
  def get_bot_versions(
        %Client{} = client,
        name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/bots/#{AWS.Util.encode_uri(name)}/versions"
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
  Returns bot information as follows:

    *
  If you provide the `nameContains` field, the
  response includes information for the `$LATEST` version of
  all bots whose name contains the specified string.

    *
  If you don't specify the `nameContains` field, the
  operation returns information about the `$LATEST` version
  of all of your bots.

  This operation requires permission for the `lex:GetBots`
  action.
  """
  @spec get_bots(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_bots_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_bots_errors()}
  def get_bots(
        %Client{} = client,
        max_results \\ nil,
        name_contains \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/bots"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_contains) do
        [{"nameContains", name_contains} | query_params]
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
  Returns information about a built-in intent.

  This operation requires permission for the
  `lex:GetBuiltinIntent` action.
  """
  @spec get_builtin_intent(map(), String.t() | atom(), list()) ::
          {:ok, get_builtin_intent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_builtin_intent_errors()}
  def get_builtin_intent(%Client{} = client, signature, options \\ []) do
    url_path = "/builtins/intents/#{AWS.Util.encode_uri(signature)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of built-in intents that meet the specified
  criteria.

  This operation requires permission for the
  `lex:GetBuiltinIntents` action.
  """
  @spec get_builtin_intents(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_builtin_intents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_builtin_intents_errors()}
  def get_builtin_intents(
        %Client{} = client,
        locale \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        signature_contains \\ nil,
        options \\ []
      ) do
    url_path = "/builtins/intents"
    headers = []
    query_params = []

    query_params =
      if !is_nil(signature_contains) do
        [{"signatureContains", signature_contains} | query_params]
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
      if !is_nil(locale) do
        [{"locale", locale} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of built-in slot types that meet the specified
  criteria.

  For a list of built-in slot types, see [Slot Type Reference](https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference)
  in the *Alexa Skills
  Kit*.

  This operation requires permission for the
  `lex:GetBuiltInSlotTypes` action.
  """
  @spec get_builtin_slot_types(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_builtin_slot_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_builtin_slot_types_errors()}
  def get_builtin_slot_types(
        %Client{} = client,
        locale \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        signature_contains \\ nil,
        options \\ []
      ) do
    url_path = "/builtins/slottypes"
    headers = []
    query_params = []

    query_params =
      if !is_nil(signature_contains) do
        [{"signatureContains", signature_contains} | query_params]
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
      if !is_nil(locale) do
        [{"locale", locale} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Exports the contents of a Amazon Lex resource in a specified format.
  """
  @spec get_export(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_export_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_export_errors()}
  def get_export(%Client{} = client, export_type, name, resource_type, version, options \\ []) do
    url_path = "/exports"
    headers = []
    query_params = []

    query_params =
      if !is_nil(version) do
        [{"version", version} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
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
      if !is_nil(export_type) do
        [{"exportType", export_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about an import job started with the
  `StartImport` operation.
  """
  @spec get_import(map(), String.t() | atom(), list()) ::
          {:ok, get_import_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_import_errors()}
  def get_import(%Client{} = client, import_id, options \\ []) do
    url_path = "/imports/#{AWS.Util.encode_uri(import_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about an intent.

  In addition to the intent
  name, you must specify the intent version.

  This operation requires permissions to perform the
  `lex:GetIntent` action.
  """
  @spec get_intent(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_intent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_intent_errors()}
  def get_intent(%Client{} = client, name, version, options \\ []) do
    url_path = "/intents/#{AWS.Util.encode_uri(name)}/versions/#{AWS.Util.encode_uri(version)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about all of the versions of an intent.

  The `GetIntentVersions` operation returns an
  `IntentMetadata` object for each version of an intent. For
  example, if an intent has three numbered versions, the
  `GetIntentVersions` operation returns four
  `IntentMetadata` objects in the response, one for each
  numbered version and one for the `$LATEST` version.

  The `GetIntentVersions` operation always returns at
  least one version, the `$LATEST` version.

  This operation requires permissions for the
  `lex:GetIntentVersions` action.
  """
  @spec get_intent_versions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_intent_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_intent_versions_errors()}
  def get_intent_versions(
        %Client{} = client,
        name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/intents/#{AWS.Util.encode_uri(name)}/versions"
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
  Returns intent information as follows:

    *
  If you specify the `nameContains` field, returns the
  `$LATEST` version of all intents that contain the
  specified string.

    *
  If you don't specify the `nameContains` field,
  returns information about the `$LATEST` version of all
  intents.

  The operation requires permission for the
  `lex:GetIntents` action.
  """
  @spec get_intents(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_intents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_intents_errors()}
  def get_intents(
        %Client{} = client,
        max_results \\ nil,
        name_contains \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/intents"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_contains) do
        [{"nameContains", name_contains} | query_params]
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
  Provides details about an ongoing or complete migration from an
  Amazon Lex V1 bot to an Amazon Lex V2 bot.

  Use this operation to view the migration
  alerts and warnings related to the migration.
  """
  @spec get_migration(map(), String.t() | atom(), list()) ::
          {:ok, get_migration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_migration_errors()}
  def get_migration(%Client{} = client, migration_id, options \\ []) do
    url_path = "/migrations/#{AWS.Util.encode_uri(migration_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of migrations between Amazon Lex V1 and Amazon Lex V2.
  """
  @spec get_migrations(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_migrations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_migrations_errors()}
  def get_migrations(
        %Client{} = client,
        max_results \\ nil,
        migration_status_equals \\ nil,
        next_token \\ nil,
        sort_by_attribute \\ nil,
        sort_by_order \\ nil,
        v1_bot_name_contains \\ nil,
        options \\ []
      ) do
    url_path = "/migrations"
    headers = []
    query_params = []

    query_params =
      if !is_nil(v1_bot_name_contains) do
        [{"v1BotNameContains", v1_bot_name_contains} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by_order) do
        [{"sortByOrder", sort_by_order} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(sort_by_attribute) do
        [{"sortByAttribute", sort_by_attribute} | query_params]
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
      if !is_nil(migration_status_equals) do
        [{"migrationStatusEquals", migration_status_equals} | query_params]
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
  Returns information about a specific version of a slot type.

  In
  addition to specifying the slot type name, you must specify the slot type
  version.

  This operation requires permissions for the
  `lex:GetSlotType` action.
  """
  @spec get_slot_type(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_slot_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_slot_type_errors()}
  def get_slot_type(%Client{} = client, name, version, options \\ []) do
    url_path = "/slottypes/#{AWS.Util.encode_uri(name)}/versions/#{AWS.Util.encode_uri(version)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about all versions of a slot type.

  The `GetSlotTypeVersions` operation returns a
  `SlotTypeMetadata` object for each version of a slot type.
  For example, if a slot type has three numbered versions, the
  `GetSlotTypeVersions` operation returns four
  `SlotTypeMetadata` objects in the response, one for each
  numbered version and one for the `$LATEST` version.

  The `GetSlotTypeVersions` operation always returns at
  least one version, the `$LATEST` version.

  This operation requires permissions for the
  `lex:GetSlotTypeVersions` action.
  """
  @spec get_slot_type_versions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_slot_type_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_slot_type_versions_errors()}
  def get_slot_type_versions(
        %Client{} = client,
        name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/slottypes/#{AWS.Util.encode_uri(name)}/versions"
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
  Returns slot type information as follows:

    *
  If you specify the `nameContains` field, returns the
  `$LATEST` version of all slot types that contain the
  specified string.

    *
  If you don't specify the `nameContains` field,
  returns information about the `$LATEST` version of all slot
  types.

  The operation requires permission for the
  `lex:GetSlotTypes` action.
  """
  @spec get_slot_types(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_slot_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_slot_types_errors()}
  def get_slot_types(
        %Client{} = client,
        max_results \\ nil,
        name_contains \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/slottypes"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_contains) do
        [{"nameContains", name_contains} | query_params]
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
  Use the `GetUtterancesView` operation to get information
  about the utterances that your users have made to your bot.

  You can use
  this list to tune the utterances that your bot responds to.

  For example, say that you have created a bot to order flowers.
  After your users have used your bot for a while, use the
  `GetUtterancesView` operation to see the requests that they
  have made and whether they have been successful. You might find that the
  utterance "I want flowers" is not being recognized. You could add this
  utterance to the `OrderFlowers` intent so that your bot
  recognizes that utterance.

  After you publish a new version of a bot, you can get information
  about the old version and the new so that you can compare the performance
  across the two versions.

  Utterance statistics are generated once a day. Data is available
  for the last 15 days. You can request information for up to 5 versions of
  your bot in each request. Amazon Lex returns the most frequent utterances
  received by the bot in the last 15 days. The response contains information
  about a maximum of 100 utterances for each version.

  If you set `childDirected` field to true when you
  created your bot, if you are using slot obfuscation with one or more
  slots, or if you opted out of participating in improving Amazon Lex, utterances
  are not available.

  This operation requires permissions for the
  `lex:GetUtterancesView` action.
  """
  @spec get_utterances_view(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_utterances_view_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_utterances_view_errors()}
  def get_utterances_view(%Client{} = client, bot_name, bot_versions, status_type, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_name)}/utterances?view=aggregation"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status_type) do
        [{"status_type", status_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(bot_versions) do
        [{"bot_versions", bot_versions} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a list of tags associated with the specified resource.

  Only bots,
  bot aliases, and bot channels can have tags associated with them.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
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
  Creates an Amazon Lex conversational bot or replaces an existing bot.

  When you create or update a bot you are only required to specify a name, a
  locale, and whether the bot is directed toward children under age 13. You
  can use this to add intents later, or to remove intents from an existing
  bot. When you create a bot with the minimum information, the bot is
  created or updated but Amazon Lex returns the `` response
  `FAILED`. You can build the bot after you add one or more
  intents. For more information about Amazon Lex bots, see `how-it-works`.

  If you specify the name of an existing bot, the fields in the
  request replace the existing values in the `$LATEST` version of
  the bot. Amazon Lex removes any fields that you don't provide values for in the
  request, except for the `idleTTLInSeconds` and
  `privacySettings` fields, which are set to their default
  values. If you don't specify values for required fields, Amazon Lex throws an
  exception.

  This operation requires permissions for the `lex:PutBot`
  action. For more information, see `security-iam`.
  """
  @spec put_bot(map(), String.t() | atom(), put_bot_request(), list()) ::
          {:ok, put_bot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_bot_errors()}
  def put_bot(%Client{} = client, name, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(name)}/versions/$LATEST"
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
  Creates an alias for the specified version of the bot or replaces
  an alias for the specified bot.

  To change the version of the bot that the
  alias points to, replace the alias. For more information about aliases,
  see `versioning-aliases`.

  This operation requires permissions for the
  `lex:PutBotAlias` action.
  """
  @spec put_bot_alias(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          put_bot_alias_request(),
          list()
        ) ::
          {:ok, put_bot_alias_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_bot_alias_errors()}
  def put_bot_alias(%Client{} = client, bot_name, name, input, options \\ []) do
    url_path = "/bots/#{AWS.Util.encode_uri(bot_name)}/aliases/#{AWS.Util.encode_uri(name)}"
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
  Creates an intent or replaces an existing intent.

  To define the interaction between the user and your bot, you use
  one or more intents. For a pizza ordering bot, for example, you would
  create an `OrderPizza` intent.

  To create an intent or replace an existing intent, you must provide
  the following:

    *
  Intent name. For example, `OrderPizza`.

    *
  Sample utterances. For example, "Can I order a pizza, please."
  and "I want to order a pizza."

    *
  Information to be gathered. You specify slot types for the
  information that your bot will request from the user. You can specify
  standard slot types, such as a date or a time, or custom slot types
  such as the size and crust of a pizza.

    *
  How the intent will be fulfilled. You can provide a Lambda
  function or configure the intent to return the intent information to
  the client application. If you use a Lambda function, when all of the
  intent information is available, Amazon Lex invokes your Lambda function.
  If you configure your intent to return the intent information to the
  client application.

  You can specify other optional information in the request, such
  as:

    *
  A confirmation prompt to ask the user to confirm an intent. For
  example, "Shall I order your pizza?"

    *
  A conclusion statement to send to the user after the intent has
  been fulfilled. For example, "I placed your pizza order."

    *
  A follow-up prompt that asks the user for additional activity.
  For example, asking "Do you want to order a drink with your
  pizza?"

  If you specify an existing intent name to update the intent, Amazon Lex
  replaces the values in the `$LATEST` version of the intent with
  the values in the request. Amazon Lex removes fields that you don't provide in
  the request. If you don't specify the required fields, Amazon Lex throws an
  exception. When you update the `$LATEST` version of an intent,
  the `status` field of any bot that uses the
  `$LATEST` version of the intent is set to
  `NOT_BUILT`.

  For more information, see `how-it-works`.

  This operation requires permissions for the
  `lex:PutIntent` action.
  """
  @spec put_intent(map(), String.t() | atom(), put_intent_request(), list()) ::
          {:ok, put_intent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_intent_errors()}
  def put_intent(%Client{} = client, name, input, options \\ []) do
    url_path = "/intents/#{AWS.Util.encode_uri(name)}/versions/$LATEST"
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
  Creates a custom slot type or replaces an existing custom slot
  type.

  To create a custom slot type, specify a name for the slot type and
  a set of enumeration values, which are the values that a slot of this type
  can assume. For more information, see `how-it-works`.

  If you specify the name of an existing slot type, the fields in the
  request replace the existing values in the `$LATEST` version of
  the slot type. Amazon Lex removes the fields that you don't provide in the
  request. If you don't specify required fields, Amazon Lex throws an exception.
  When you update the `$LATEST` version of a slot type, if a bot
  uses the `$LATEST` version of an intent that contains the slot
  type, the bot's `status` field is set to
  `NOT_BUILT`.

  This operation requires permissions for the
  `lex:PutSlotType` action.
  """
  @spec put_slot_type(map(), String.t() | atom(), put_slot_type_request(), list()) ::
          {:ok, put_slot_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_slot_type_errors()}
  def put_slot_type(%Client{} = client, name, input, options \\ []) do
    url_path = "/slottypes/#{AWS.Util.encode_uri(name)}/versions/$LATEST"
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
  Starts a job to import a resource to Amazon Lex.
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
  Starts migrating a bot from Amazon Lex V1 to Amazon Lex V2.

  Migrate your bot when
  you want to take advantage of the new features of Amazon Lex V2.

  For more information, see [Migrating a bot](https://docs.aws.amazon.com/lex/latest/dg/migrate.html) in the *Amazon Lex
  developer guide*.
  """
  @spec start_migration(map(), start_migration_request(), list()) ::
          {:ok, start_migration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_migration_errors()}
  def start_migration(%Client{} = client, input, options \\ []) do
    url_path = "/migrations"
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
  Adds the specified tags to the specified resource.

  If a tag key
  already exists, the existing value is replaced with the new value.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
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
      204
    )
  end

  @doc """
  Removes tags from a bot, bot alias or bot channel.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
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
      204
    )
  end
end
