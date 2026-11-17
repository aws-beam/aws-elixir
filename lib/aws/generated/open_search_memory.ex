# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.OpenSearchMemory do
  @moduledoc """
  Amazon OpenSearch Memory lets your AI agents and applications recall facts and
  summaries across sessions.

  Your agents send events, such as conversation turns, and search the memories
  derived from them.

  A space groups related events and memories, and holds the memory strategies that
  you configure for them. Use the space operations to create, get, list, update,
  and delete spaces. Use the event and memory operations to write, read, list,
  search, update, and delete a space's events and memories.
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
      
      batch_get_event_error() :: %{
        "errorCode" => list(any()),
        "eventId" => String.t() | atom(),
        "message" => [String.t() | atom()]
      }
      
  """
  @type batch_get_event_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_event_input() :: %{
        optional("actorId") => String.t() | atom(),
        optional("sessionId") => String.t() | atom(),
        required("eventIds") => list(String.t() | atom()),
        required("spaceId") => String.t() | atom()
      }
      
  """
  @type batch_get_event_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      batch_get_event_output() :: %{
        "errors" => list(batch_get_event_error()),
        "events" => list(event())
      }
      
  """
  @type batch_get_event_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      blob_payload() :: %{
        "contentType" => list(any()),
        "source" => list()
      }
      
  """
  @type blob_payload() :: %{(String.t() | atom()) => any()}

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
      
      create_event_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("eventTimestamp") => non_neg_integer(),
        optional("infer") => [boolean()],
        optional("metadata") => map(),
        optional("sessionId") => String.t() | atom(),
        required("actorId") => String.t() | atom(),
        required("payload") => list(),
        required("spaceId") => String.t() | atom()
      }
      
  """
  @type create_event_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_event_output() :: %{
        "event" => event_detail()
      }
      
  """
  @type create_event_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_memory_detail() :: %{
        "actorId" => String.t() | atom(),
        "memoryId" => String.t() | atom(),
        "name" => String.t() | atom(),
        "sessionId" => String.t() | atom(),
        "spaceId" => String.t() | atom()
      }
      
  """
  @type create_memory_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_memory_input() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("metadata") => map(),
        optional("sessionId") => String.t() | atom(),
        required("actorId") => String.t() | atom(),
        required("content") => String.t() | atom(),
        required("name") => String.t() | atom(),
        required("spaceId") => String.t() | atom()
      }
      
  """
  @type create_memory_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_memory_output() :: %{
        "memory" => create_memory_detail()
      }
      
  """
  @type create_memory_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_space_request() :: %{
        optional("clientToken") => String.t() | atom(),
        optional("encryptionConfiguration") => encryption_configuration(),
        optional("eventExpiryDays") => integer(),
        optional("extractionModelId") => String.t() | atom(),
        optional("memoryExpiryDays") => integer(),
        optional("memoryStrategies") => list(memory_strategy()),
        optional("tags") => list(tag()),
        required("name") => String.t() | atom()
      }
      
  """
  @type create_space_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_space_response() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "name" => String.t() | atom(),
        "spaceId" => String.t() | atom(),
        "status" => list(any())
      }
      
  """
  @type create_space_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_event_input() :: %{
        optional("actorId") => String.t() | atom(),
        optional("sessionId") => String.t() | atom(),
        required("eventId") => String.t() | atom(),
        required("spaceId") => String.t() | atom()
      }
      
  """
  @type delete_event_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_event_output() :: %{
        "eventId" => String.t() | atom()
      }
      
  """
  @type delete_event_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_memory_input() :: %{
        optional("actorId") => String.t() | atom(),
        optional("strategyName") => String.t() | atom(),
        required("memoryId") => String.t() | atom(),
        required("spaceId") => String.t() | atom()
      }
      
  """
  @type delete_memory_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_memory_output() :: %{
        "memoryId" => String.t() | atom()
      }
      
  """
  @type delete_memory_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_space_request() :: %{
        required("spaceId") => String.t() | atom()
      }
      
  """
  @type delete_space_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_space_response() :: %{
        "spaceId" => String.t() | atom(),
        "status" => list(any())
      }
      
  """
  @type delete_space_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      encryption_configuration() :: %{
        "kmsKeyArn" => [String.t() | atom()]
      }
      
  """
  @type encryption_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      event() :: %{
        "actorId" => String.t() | atom(),
        "eventId" => String.t() | atom(),
        "eventTimestamp" => non_neg_integer(),
        "metadata" => map(),
        "payload" => list(),
        "sessionId" => String.t() | atom(),
        "spaceId" => String.t() | atom()
      }
      
  """
  @type event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      event_detail() :: %{
        "actorId" => String.t() | atom(),
        "eventId" => String.t() | atom(),
        "eventTimestamp" => non_neg_integer(),
        "sessionId" => String.t() | atom(),
        "spaceId" => String.t() | atom()
      }
      
  """
  @type event_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      event_search_summary() :: %{
        "eventId" => String.t() | atom(),
        "matchedContent" => String.t() | atom(),
        "metadata" => map(),
        "score" => [float()],
        "systemMetadata" => system_metadata()
      }
      
  """
  @type event_search_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      event_summary() :: %{
        "eventId" => String.t() | atom(),
        "eventTimestamp" => non_neg_integer(),
        "metadata" => map()
      }
      
  """
  @type event_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_event_input() :: %{
        optional("actorId") => String.t() | atom(),
        optional("sessionId") => String.t() | atom(),
        required("eventId") => String.t() | atom(),
        required("spaceId") => String.t() | atom()
      }
      
  """
  @type get_event_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_event_output() :: %{
        "event" => event()
      }
      
  """
  @type get_event_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_memory_input() :: %{
        optional("actorId") => String.t() | atom(),
        optional("strategyName") => String.t() | atom(),
        required("memoryId") => String.t() | atom(),
        required("spaceId") => String.t() | atom()
      }
      
  """
  @type get_memory_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_memory_output() :: %{
        "memory" => memory()
      }
      
  """
  @type get_memory_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_space_request() :: %{
        required("spaceId") => String.t() | atom()
      }
      
  """
  @type get_space_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_space_response() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "encryptionConfiguration" => encryption_configuration(),
        "eventExpiryDays" => integer(),
        "extractionModelId" => String.t() | atom(),
        "memoryExpiryDays" => integer(),
        "memoryStrategies" => list(memory_strategy()),
        "name" => String.t() | atom(),
        "spaceId" => String.t() | atom(),
        "status" => list(any()),
        "statusReason" => [String.t() | atom()]
      }
      
  """
  @type get_space_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "message" => [String.t() | atom()]
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_events_input() :: %{
        optional("eventTimestampAfter") => non_neg_integer(),
        optional("eventTimestampBefore") => non_neg_integer(),
        optional("maxResults") => integer(),
        optional("metadataFilters") => map(),
        optional("nextToken") => String.t() | atom(),
        optional("sortOrder") => list(any()),
        required("actorId") => String.t() | atom(),
        required("sessionId") => String.t() | atom(),
        required("spaceId") => String.t() | atom()
      }
      
  """
  @type list_events_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_events_output() :: %{
        "events" => list(event_summary()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_events_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_memories_input() :: %{
        optional("actorIds") => list(String.t() | atom()),
        optional("maxResults") => integer(),
        optional("memoryStrategies") => list(strategy_selector()),
        optional("nextToken") => String.t() | atom(),
        optional("sessionIds") => list(String.t() | atom()),
        optional("sortBy") => list(any()),
        optional("sortOrder") => list(any()),
        required("spaceId") => String.t() | atom()
      }
      
  """
  @type list_memories_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_memories_output() :: %{
        "memories" => list(memory_list_summary()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type list_memories_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_spaces_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom()
      }
      
  """
  @type list_spaces_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_spaces_response() :: %{
        "nextToken" => String.t() | atom(),
        "spaces" => list(space_summary())
      }
      
  """
  @type list_spaces_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("resourceArn") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      memory() :: %{
        "content" => String.t() | atom(),
        "memoryId" => String.t() | atom(),
        "memoryType" => list(any()),
        "metadata" => map(),
        "strategyName" => String.t() | atom(),
        "systemMetadata" => system_metadata()
      }
      
  """
  @type memory() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      memory_list_summary() :: %{
        "memoryId" => String.t() | atom(),
        "memoryType" => list(any()),
        "metadata" => map(),
        "strategyName" => String.t() | atom(),
        "systemMetadata" => system_metadata()
      }
      
  """
  @type memory_list_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      memory_search_summary() :: %{
        "content" => String.t() | atom(),
        "memoryId" => String.t() | atom(),
        "memoryType" => list(any()),
        "metadata" => map(),
        "score" => [float()],
        "sourceEventIds" => list(String.t() | atom()),
        "strategyName" => String.t() | atom(),
        "systemMetadata" => system_metadata()
      }
      
  """
  @type memory_search_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      memory_strategy() :: %{
        "configuration" => memory_strategy_configuration(),
        "description" => String.t() | atom(),
        "name" => String.t() | atom(),
        "type" => list(any())
      }
      
  """
  @type memory_strategy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      memory_strategy_configuration() :: %{
        "consolidationEnabled" => [boolean()],
        "extractEveryNMessages" => integer(),
        "extractEveryNTokens" => integer(),
        "extractionPrompt" => String.t() | atom(),
        "extractionSeedRecentN" => integer(),
        "extractionSeedTopK" => integer(),
        "idleTimeoutSeconds" => integer()
      }
      
  """
  @type memory_strategy_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      message() :: %{
        "content" => message_content(),
        "role" => list(any())
      }
      
  """
  @type message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      message_content() :: %{
        "text" => String.t() | atom()
      }
      
  """
  @type message_content() :: %{(String.t() | atom()) => any()}

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
      
      s3_location() :: %{
        "uri" => [String.t() | atom()]
      }
      
  """
  @type s3_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      search_events_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | atom(),
        optional("sessionIds") => list(String.t() | atom()),
        optional("sort") => any(),
        required("actorId") => String.t() | atom(),
        required("query") => any(),
        required("spaceId") => String.t() | atom()
      }
      
  """
  @type search_events_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      search_events_output() :: %{
        "events" => list(event_search_summary()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type search_events_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      search_memories_input() :: %{
        optional("maxResults") => integer(),
        optional("memoryStrategies") => list(strategy_selector()),
        optional("nextToken") => String.t() | atom(),
        optional("sort") => any(),
        required("actorId") => String.t() | atom(),
        required("query") => any(),
        required("spaceId") => String.t() | atom()
      }
      
  """
  @type search_memories_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      search_memories_output() :: %{
        "memories" => list(memory_search_summary()),
        "nextToken" => String.t() | atom()
      }
      
  """
  @type search_memories_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | atom()],
        "quotaCode" => [String.t() | atom()],
        "serviceCode" => [String.t() | atom()]
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      space_summary() :: %{
        "arn" => String.t() | atom(),
        "createdAt" => non_neg_integer(),
        "name" => String.t() | atom(),
        "spaceId" => String.t() | atom(),
        "status" => list(any())
      }
      
  """
  @type space_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      strategy_selector() :: %{
        "memoryStrategyNames" => list(String.t() | atom()),
        "memoryType" => list(any())
      }
      
  """
  @type strategy_selector() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      structured_data_payload() :: %{
        "source" => list()
      }
      
  """
  @type structured_data_payload() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      system_metadata() :: %{
        "actorId" => String.t() | atom(),
        "createdAt" => [non_neg_integer()],
        "sessionId" => String.t() | atom(),
        "updatedAt" => [non_neg_integer()]
      }
      
  """
  @type system_metadata() :: %{(String.t() | atom()) => any()}

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
      
      tag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "message" => [String.t() | atom()],
        "retryAfterSeconds" => [integer()]
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unified_conversational() :: %{
        "source" => list()
      }
      
  """
  @type unified_conversational() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unified_conversational_object() :: %{
        "messages" => list(message())
      }
      
  """
  @type unified_conversational_object() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("resourceArn") => String.t() | atom(),
        required("tagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      update_memory_input() :: %{
        optional("actorId") => String.t() | atom(),
        optional("content") => String.t() | atom(),
        optional("metadata") => map(),
        optional("metadataMode") => list(any()),
        optional("strategyName") => String.t() | atom(),
        required("memoryId") => String.t() | atom(),
        required("spaceId") => String.t() | atom()
      }
      
  """
  @type update_memory_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_memory_output() :: %{
        "memory" => memory()
      }
      
  """
  @type update_memory_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_space_request() :: %{
        optional("eventExpiryDays") => integer(),
        optional("extractionModelId") => String.t() | atom(),
        optional("memoryExpiryDays") => integer(),
        optional("memoryStrategies") => list(memory_strategy()),
        required("spaceId") => String.t() | atom()
      }
      
  """
  @type update_space_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_space_response() :: %{
        "spaceId" => String.t() | atom(),
        "status" => list(any())
      }
      
  """
  @type update_space_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "fieldList" => list(validation_exception_field()),
        "message" => [String.t() | atom()],
        "reason" => list(any())
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception_field() :: %{
        "message" => [String.t() | atom()],
        "name" => [String.t() | atom()]
      }
      
  """
  @type validation_exception_field() :: %{(String.t() | atom()) => any()}

  @type batch_get_event_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type create_event_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_memory_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type create_space_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type delete_event_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type delete_memory_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type delete_space_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type get_event_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_memory_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type get_space_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_events_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_memories_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_spaces_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type search_events_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type search_memories_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type tag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type untag_resource_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type update_memory_errors() ::
          validation_exception()
          | throttling_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  @type update_space_errors() ::
          validation_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_server_exception()
          | conflict_exception()
          | access_denied_exception()

  def metadata do
    %{
      api_version: "2026-08-24",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "osm",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "OpenSearchMemory",
      signature_version: "v4",
      signing_name: "osm",
      target_prefix: "OpenSearchMemory"
    }
  end

  @doc """
  Gets up to 10 events by ID, each as `GetEvent` returns it, including its
  payload.

  If you supply `actorId` or `sessionId`, every requested event must match it.
  Each event has its own outcome. The operation reports an event that it can't
  return in `errors` instead of failing, with an error code named for the
  exception that `GetEvent` would return for it. The operation reports both an
  event that doesn't exist and an event outside the supplied scope as
  `RESOURCE_NOT_FOUND`.

  The exception is the space's customer managed AWS KMS key: if it is disabled,
  pending deletion, can't be used for decryption, or was deleted, the whole call
  fails with `ValidationException`, as `GetEvent` does.
  """
  @spec batch_get_event(map(), batch_get_event_input(), list()) ::
          {:ok, batch_get_event_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_event_errors()}
  def batch_get_event(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "BatchGetEvent", input, options)
  end

  @doc """
  Submits an event (conversation turns, structured data, or a PDF document stored
  in Amazon S3) to a session in a space.

  The operation returns as soon as the event is saved. `GetEvent` and `ListEvents`
  return it immediately. `SearchEvents` returns it after it's indexed.
  `SearchMemories` returns memories extracted from it only after a strategy's
  extraction trigger fires and the memories are indexed.

  If the space uses a customer managed AWS KMS key, the call can also fail because
  of the key. It fails with `AccessDeniedException` if you aren't allowed to use
  the key, and with `ThrottlingException` if AWS KMS throttles the request. It
  fails with `ValidationException` if the key is disabled, pending deletion, or
  deleted.
  """
  @spec create_event(map(), create_event_input(), list()) ::
          {:ok, create_event_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_event_errors()}
  def create_event(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateEvent", input, options)
  end

  @doc """
  Writes a memory that you have already formed, without extracting it from events.

  The service embeds the text as given and stores it as a memory of the named
  strategy. To have the service extract memories from conversation turns, use
  `CreateEvent` instead.

  The operation returns before the memory is searchable. The returned `memoryId`
  is final, but until the memory is indexed, `GetMemory`, `UpdateMemory`, and
  `DeleteMemory` return `ResourceNotFoundException` for it.

  If the request would exceed the service's rate for embedding requests, it fails
  with `ThrottlingException`. Retry with exponential backoff.

  If the space uses a customer managed AWS KMS key, the call can also fail because
  of the key. It fails with `AccessDeniedException` if you aren't allowed to use
  the key, and with `ThrottlingException` if AWS KMS throttles the request. It
  fails with `ValidationException` if the key is disabled, pending deletion, or
  deleted.
  """
  @spec create_memory(map(), create_memory_input(), list()) ::
          {:ok, create_memory_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_memory_errors()}
  def create_memory(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateMemory", input, options)
  end

  @doc """
  Creates a space.

  A space is an AWS resource that stores the events you send and the memories
  extracted from them, and defines the memory strategies that extract those
  memories.

  The operation returns before provisioning finishes, with `status` `CREATING`.
  Call `GetSpace` until the status is `ACTIVE`, and then use the space. If
  provisioning fails, the status becomes `FAILED` and `statusReason` says why.
  """
  @spec create_space(map(), create_space_request(), list()) ::
          {:ok, create_space_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_space_errors()}
  def create_space(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateSpace", input, options)
  end

  @doc """
  Deletes an event.

  Deletion can't be undone. The event stops appearing in `SearchEvents` results
  shortly after you delete it. Deleting an event that doesn't exist returns
  `ResourceNotFoundException`.

  Deleting an event doesn't delete the memories derived from it, because a memory
  can combine content from several events. To remove them, use `DeleteMemory`.

  If the space uses a customer managed AWS KMS key, the call can also fail because
  of the key. It fails with `AccessDeniedException` if you aren't allowed to use
  the key, and with `ThrottlingException` if AWS KMS throttles the request. It
  fails with `ValidationException` if the key is disabled, pending deletion, or
  deleted.
  """
  @spec delete_event(map(), delete_event_input(), list()) ::
          {:ok, delete_event_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_event_errors()}
  def delete_event(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteEvent", input, options)
  end

  @doc """
  Deletes a memory, including its content and embedding.

  Deletion can't be undone. Searches stop returning the memory shortly after you
  delete it.

  Deleting a memory that no longer exists returns `ResourceNotFoundException`, so
  the operation is not idempotent. If you retry deletes, treat that error as
  success.

  A memory past its expiry (set from the space's `memoryExpiryDays` when the
  memory is written) reads as not found: the operation returns
  `ResourceNotFoundException`, as for a memory that was already deleted.

  If the space uses a customer managed AWS KMS key, the call can also fail because
  of the key. It fails with `AccessDeniedException` if you aren't allowed to use
  the key, and with `ThrottlingException` if AWS KMS throttles the request. It
  fails with `ValidationException` if the key is disabled, pending deletion, or
  deleted.
  """
  @spec delete_memory(map(), delete_memory_input(), list()) ::
          {:ok, delete_memory_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_memory_errors()}
  def delete_memory(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteMemory", input, options)
  end

  @doc """
  Deletes a space and its memories.

  Deletion can't be undone. After you delete the space, you can't retrieve its
  events, and the service removes them when they reach their expiry.

  The operation returns with `status` `DELETING`. When deletion finishes,
  `GetSpace` returns `ResourceNotFoundException`. If deletion fails, the status
  becomes `FAILED`. A space that is `CREATING` or `UPDATING` can't be deleted
  until that finishes: the request fails with `ConflictException`. Deleting a
  space that is already `DELETING` returns `DELETING` again.
  """
  @spec delete_space(map(), delete_space_request(), list()) ::
          {:ok, delete_space_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_space_errors()}
  def delete_space(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteSpace", input, options)
  end

  @doc """
  Gets an event by ID, including its payload.

  If the space uses a customer managed AWS KMS key, the call can also fail because
  of the key. It fails with `AccessDeniedException` if you aren't allowed to use
  the key, and with `ThrottlingException` if AWS KMS throttles the request. It
  fails with `ValidationException` if the key is disabled, pending deletion, or
  deleted.
  """
  @spec get_event(map(), get_event_input(), list()) ::
          {:ok, get_event_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_event_errors()}
  def get_event(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetEvent", input, options)
  end

  @doc """
  Gets a memory by ID, as returned by `SearchMemories` or `ListMemories`.

  A memory that doesn't exist returns `ResourceNotFoundException`. Unlike
  `SearchMemories`, this operation also returns memories that consolidation has
  superseded.

  A memory past its expiry (set from the space's `memoryExpiryDays` when the
  memory is written) reads as not found: `ResourceNotFoundException`, the same
  answer as for an ID that does not exist.

  If the space uses a customer managed AWS KMS key, the call can also fail because
  of the key. It fails with `AccessDeniedException` if you aren't allowed to use
  the key, and with `ThrottlingException` if AWS KMS throttles the request. It
  fails with `ValidationException` if the key is disabled, pending deletion, or
  deleted.
  """
  @spec get_memory(map(), get_memory_input(), list()) ::
          {:ok, get_memory_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_memory_errors()}
  def get_memory(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetMemory", input, options)
  end

  @doc """
  Returns a space's configuration and status.
  """
  @spec get_space(map(), get_space_request(), list()) ::
          {:ok, get_space_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_space_errors()}
  def get_space(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "GetSpace", input, options)
  end

  @doc """
  Lists the events in a session, sorted by time.

  Optionally limit the results to events whose `eventTimestamp` falls between
  `eventTimestampAfter` and `eventTimestampBefore`. Returns event metadata only.
  Call `GetEvent` for the payload. For full-text or relevance search, use
  `SearchEvents`.

  If the space uses a customer managed AWS KMS key, the call can also fail because
  of the key. It fails with `AccessDeniedException` if you aren't allowed to use
  the key, and with `ThrottlingException` if AWS KMS throttles the request. It
  fails with `ValidationException` if the key is disabled, pending deletion, or
  deleted.
  """
  @spec list_events(map(), list_events_input(), list()) ::
          {:ok, list_events_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_events_errors()}
  def list_events(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListEvents", input, options)
  end

  @doc """
  Lists a space's memories without a query, for example the most recent memories
  or the memories of one strategy.

  Filter by strategy and optionally by owning actor or session, sort by creation
  or update time, and page through the results. Results have no relevance score.
  To query or filter by metadata, use `SearchMemories`.

  If memories are written or deleted while you page, the results can skip a memory
  or return it twice. You can page through only a limited number of results. A
  request past that limit fails with `ValidationException` (reason
  `invalidNextToken`), and the message gives the limit.

  Memories past their expiry (set from the space's `memoryExpiryDays` when each
  memory is written) are left out. Unlike `SearchMemories`, this operation also
  returns memories that consolidation has superseded.

  If the space uses a customer managed AWS KMS key, the call can also fail because
  of the key. It fails with `AccessDeniedException` if you aren't allowed to use
  the key, and with `ThrottlingException` if AWS KMS throttles the request. It
  fails with `ValidationException` if the key is disabled, pending deletion, or
  deleted.
  """
  @spec list_memories(map(), list_memories_input(), list()) ::
          {:ok, list_memories_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_memories_errors()}
  def list_memories(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListMemories", input, options)
  end

  @doc """
  Lists the spaces in your account in the current Region.
  """
  @spec list_spaces(map(), list_spaces_request(), list()) ::
          {:ok, list_spaces_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_spaces_errors()}
  def list_spaces(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListSpaces", input, options)
  end

  @doc """
  Lists the tags for the specified space.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Searches a space's events by relevance.

  It works like `SearchMemories` without the memory type and strategy selector.
  The query is a subset of the OpenSearch Query DSL. The service validates it,
  limits the search to the actor in `actorId` and the sessions in `sessionIds`,
  and returns ranked results. Each result is the matching chunk of an event, not
  the whole event. You can page through only a limited number of results. A
  request past that limit fails with `ValidationException` (reason
  `invalidNextToken`), and the message gives the limit.

  If the results are larger than 5 MiB, the request fails with
  `ValidationException` (reason `queryBodyTooLarge`). Lower `maxResults`.

  If the request would exceed the service's rate for embedding requests, it fails
  with `ThrottlingException`. Retry with exponential backoff.

  If the space uses a customer managed AWS KMS key, the call can also fail because
  of the key. It fails with `AccessDeniedException` if you aren't allowed to use
  the key, and with `ThrottlingException` if AWS KMS throttles the request. It
  fails with `ValidationException` if the key is disabled, pending deletion, or
  deleted.
  """
  @spec search_events(map(), search_events_input(), list()) ::
          {:ok, search_events_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_events_errors()}
  def search_events(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SearchEvents", input, options)
  end

  @doc """
  Searches a space's memories by relevance.

  The query is a subset of the OpenSearch Query DSL. The service validates it,
  limits the search to the requested strategies and to the actor in `actorId`, and
  returns one ranked list of memories. You can page through only a limited number
  of results. A request past that limit fails with `ValidationException` (reason
  `invalidNextToken`), and the message gives the limit.

  Memories past their expiry (set from the space's `memoryExpiryDays` when each
  memory is written) are left out of the results. Only current memories are
  returned: a memory that consolidation has superseded (an older version of a fact
  that a newer memory replaced) is left out.

  If the results are larger than 5 MiB, the request fails with
  `ValidationException` (reason `queryBodyTooLarge`). Lower `maxResults`.

  If the request would exceed the service's rate for embedding requests, it fails
  with `ThrottlingException`. Retry with exponential backoff.

  If the space uses a customer managed AWS KMS key, the call can also fail because
  of the key. It fails with `AccessDeniedException` if you aren't allowed to use
  the key, and with `ThrottlingException` if AWS KMS throttles the request. It
  fails with `ValidationException` if the key is disabled, pending deletion, or
  deleted.
  """
  @spec search_memories(map(), search_memories_input(), list()) ::
          {:ok, search_memories_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_memories_errors()}
  def search_memories(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "SearchMemories", input, options)
  end

  @doc """
  Adds the specified tags to the specified space.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes the specified tags from the specified space.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates a memory in place.

  Supply only the fields to change. Omitted fields keep their stored values. A
  request must supply `content` or `metadata`, or it fails with
  `ValidationException`. Supplying `content` re-embeds the memory. A change to
  metadata alone doesn't.

  The memory keeps its `memoryId` across updates. Shortly after an update,
  searches stop returning the previous content.

  `memoryType` can't be changed. To change it, delete the memory and create a new
  one.

  A memory past its expiry (set from the space's `memoryExpiryDays` when the
  memory is written) reads as not found: the operation fails with
  `ResourceNotFoundException` and changes nothing. An update does not move the
  expiry.

  Concurrent updates to one memory are last-writer-wins. There is no version
  check. To avoid lost updates, serialize your updates to a memory.

  If you supply `content` and the request would exceed the service's rate for
  embedding requests, it fails with `ThrottlingException`. Retry with exponential
  backoff.

  If the space uses a customer managed AWS KMS key, the call can also fail because
  of the key. It fails with `AccessDeniedException` if you aren't allowed to use
  the key, and with `ThrottlingException` if AWS KMS throttles the request. It
  fails with `ValidationException` if the key is disabled, pending deletion, or
  deleted.
  """
  @spec update_memory(map(), update_memory_input(), list()) ::
          {:ok, update_memory_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_memory_errors()}
  def update_memory(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateMemory", input, options)
  end

  @doc """
  Updates a space's memory strategies, retention settings, or extraction model.

  Supply only the fields to change. Omitted fields keep their current values.

  If the request changes the set of strategies, a strategy's configuration, a
  retention setting, or the extraction model, the space moves to `UPDATING`. When
  the change is complete, the space returns to `ACTIVE`, or moves to `FAILED` if
  the change can't be applied. While the space is `UPDATING`, `GetSpace` returns
  the previous configuration. A request that only changes strategy descriptions or
  repeats the values the space has stored is applied immediately and doesn't
  change the status. Sending a retention value that the space never set also moves
  the space to `UPDATING`, even one that matches the behavior without it, such as
  90 for `eventExpiryDays` or 0 for `memoryExpiryDays`. A space that is
  `CREATING`, `UPDATING`, or `DELETING` can't be updated: the request fails with
  `ConflictException`.
  """
  @spec update_space(map(), update_space_request(), list()) ::
          {:ok, update_space_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_space_errors()}
  def update_space(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateSpace", input, options)
  end
end
