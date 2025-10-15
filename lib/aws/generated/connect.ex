# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Connect do
  @moduledoc """

    *

  [Amazon Connect actions](https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_Connect_Service.html)

    *

  [Amazon Connect data
  types](https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_Connect_Service.html)

  Amazon Connect is a cloud-based contact center solution that you use to set up
  and
  manage a customer contact center and provide reliable customer engagement at any
  scale.

  Amazon Connect provides metrics and real-time reporting that enable you to
  optimize
  contact routing. You can also resolve customer issues more efficiently by
  getting customers in
  touch with the appropriate agents.

  There are limits to the number of Amazon Connect resources that you can create.
  There
  are also limits to the number of requests that you can make per second. For more
  information, see
  [Amazon Connect Service Quotas](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html)
  in the *Amazon Connect Administrator
  Guide*.

  You can use an endpoint to connect programmatically to an Amazon Web Services
  service. For a
  list of Amazon Connect endpoints, see [Amazon Connect Endpoints](https://docs.aws.amazon.com/general/latest/gr/connect_region.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      associate_instance_storage_config_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("ResourceType") => list(any()),
        required("StorageConfig") => instance_storage_config()
      }

  """
  @type associate_instance_storage_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_attached_file_request() :: %{
        required("AssociatedResourceArn") => String.t() | atom()
      }

  """
  @type delete_attached_file_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      contact_filter() :: %{
        "ContactStates" => list(list(any())())
      }

  """
  @type contact_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      answer_machine_detection_config() :: %{
        "AwaitAnswerMachinePrompt" => boolean(),
        "EnableAnswerMachineDetection" => boolean()
      }

  """
  @type answer_machine_detection_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_user_identity_info_request() :: %{
        required("IdentityInfo") => user_identity_info()
      }

  """
  @type update_user_identity_info_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_contact_evaluations_request() :: %{
        optional("NextToken") => String.t() | atom(),
        required("ContactId") => String.t() | atom()
      }

  """
  @type list_contact_evaluations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      outbound_caller_config() :: %{
        "OutboundCallerIdName" => String.t() | atom(),
        "OutboundCallerIdNumberId" => String.t() | atom(),
        "OutboundFlowId" => String.t() | atom()
      }

  """
  @type outbound_caller_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      queue_search_filter() :: %{
        "TagFilter" => control_plane_tag_filter()
      }

  """
  @type queue_search_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      action_summary() :: %{
        "ActionType" => list(any())
      }

  """
  @type action_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_user_proficiencies_request() :: %{
        required("UserProficiencies") => list(user_proficiency())
      }

  """
  @type update_user_proficiencies_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_default_vocabulary_request() :: %{
        optional("VocabularyId") => String.t() | atom()
      }

  """
  @type associate_default_vocabulary_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_persistent_contact_association_response() :: %{
        "ContinuedFromContactId" => String.t() | atom()
      }

  """
  @type create_persistent_contact_association_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_contact_flow_module_request() :: %{}

  """
  @type delete_contact_flow_module_request() :: %{}

  @typedoc """

  ## Example:

      delete_view_version_response() :: %{}

  """
  @type delete_view_version_response() :: %{}

  @typedoc """

  ## Example:

      get_current_user_data_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("Filters") => user_data_filters()
      }

  """
  @type get_current_user_data_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      chat_streaming_configuration() :: %{
        "StreamingEndpointArn" => String.t() | atom()
      }

  """
  @type chat_streaming_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_effective_hours_of_operations_request() :: %{
        required("FromDate") => String.t() | atom(),
        required("ToDate") => String.t() | atom()
      }

  """
  @type get_effective_hours_of_operations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      view_input_content() :: %{
        "Actions" => list(String.t() | atom()),
        "Template" => String.t() | atom()
      }

  """
  @type view_input_content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_contact_references_response() :: %{
        "NextToken" => String.t() | atom(),
        "ReferenceSummaryList" => list(list())
      }

  """
  @type list_contact_references_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_vocabularies_response() :: %{
        "NextToken" => String.t() | atom(),
        "VocabularySummaryList" => list(vocabulary_summary())
      }

  """
  @type search_vocabularies_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_current_metric_data_request() :: %{
        optional("Groupings") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SortCriteria") => list(current_metric_sort_criteria()),
        required("CurrentMetrics") => list(current_metric()),
        required("Filters") => filters()
      }

  """
  @type get_current_metric_data_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      participant_capabilities() :: %{
        "ScreenShare" => list(any()),
        "Video" => list(any())
      }

  """
  @type participant_capabilities() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_rule_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("Actions") => list(rule_action()),
        required("Function") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("PublishStatus") => list(any()),
        required("TriggerEventSource") => rule_trigger_event_source()
      }

  """
  @type create_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_evaluation_form_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("CreateNewVersion") => boolean(),
        optional("Description") => String.t() | atom(),
        optional("ScoringStrategy") => evaluation_form_scoring_strategy(),
        required("EvaluationFormVersion") => integer(),
        required("Items") => list(list()),
        required("Title") => String.t() | atom()
      }

  """
  @type update_evaluation_form_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_outbound_email_contact_response() :: %{
        "ContactId" => String.t() | atom()
      }

  """
  @type start_outbound_email_contact_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      security_profile_search_criteria() :: %{
        "AndConditions" => list(security_profile_search_criteria()),
        "OrConditions" => list(security_profile_search_criteria()),
        "StringCondition" => string_condition()
      }

  """
  @type security_profile_search_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_traffic_distribution_group_user_request() :: %{
        required("InstanceId") => String.t() | atom(),
        required("UserId") => String.t() | atom()
      }

  """
  @type disassociate_traffic_distribution_group_user_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      email_reference() :: %{
        "Name" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type email_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      number_reference() :: %{
        "Name" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type number_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_participant_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("ContactId") => String.t() | atom(),
        required("InstanceId") => String.t() | atom(),
        required("ParticipantDetails") => participant_details_to_add()
      }

  """
  @type create_participant_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      output_type_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type output_type_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      chat_contact_metrics() :: %{
        "AgentFirstResponseTimeInMillis" => float(),
        "AgentFirstResponseTimestamp" => non_neg_integer(),
        "ConversationCloseTimeInMillis" => float(),
        "ConversationTurnCount" => integer(),
        "MultiParty" => boolean(),
        "TotalBotMessageLengthInChars" => integer(),
        "TotalBotMessages" => integer(),
        "TotalMessages" => integer()
      }

  """
  @type chat_contact_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      traffic_distribution_group_summary() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "InstanceArn" => String.t() | atom(),
        "IsDefault" => boolean(),
        "Name" => String.t() | atom(),
        "Status" => list(any())
      }

  """
  @type traffic_distribution_group_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      contact_flow_module() :: %{
        "Arn" => String.t() | atom(),
        "Content" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "State" => list(any()),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type contact_flow_module() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_summary() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Username" => String.t() | atom()
      }

  """
  @type user_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      range() :: %{
        "MaxProficiencyLevel" => float(),
        "MinProficiencyLevel" => float()
      }

  """
  @type range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_user_hierarchy_structure_request() :: %{}

  """
  @type describe_user_hierarchy_structure_request() :: %{}

  @typedoc """

  ## Example:

      get_federation_token_request() :: %{}

  """
  @type get_federation_token_request() :: %{}

  @typedoc """

  ## Example:

      list_queues_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("QueueTypes") => list(list(any())())
      }

  """
  @type list_queues_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_lambda_functions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_lambda_functions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      encryption_config() :: %{
        "EncryptionType" => list(any()),
        "KeyId" => String.t() | atom()
      }

  """
  @type encryption_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_contact_flow_modules_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SearchCriteria") => contact_flow_module_search_criteria(),
        optional("SearchFilter") => contact_flow_module_search_filter(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type search_contact_flow_modules_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_phone_numbers_summary() :: %{
        "InstanceId" => String.t() | atom(),
        "PhoneNumber" => String.t() | atom(),
        "PhoneNumberArn" => String.t() | atom(),
        "PhoneNumberCountryCode" => list(any()),
        "PhoneNumberDescription" => String.t() | atom(),
        "PhoneNumberId" => String.t() | atom(),
        "PhoneNumberType" => list(any()),
        "SourcePhoneNumberArn" => String.t() | atom(),
        "TargetArn" => String.t() | atom()
      }

  """
  @type list_phone_numbers_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      campaign() :: %{
        "CampaignId" => String.t() | atom()
      }

  """
  @type campaign() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_user_hierarchy_group_request() :: %{}

  """
  @type describe_user_hierarchy_group_request() :: %{}

  @typedoc """

  ## Example:

      contact_flow_search_criteria() :: %{
        "AndConditions" => list(contact_flow_search_criteria()),
        "OrConditions" => list(contact_flow_search_criteria()),
        "StateCondition" => list(any()),
        "StatusCondition" => list(any()),
        "StringCondition" => string_condition(),
        "TypeCondition" => list(any())
      }

  """
  @type contact_flow_search_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_users_response() :: %{
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t() | atom(),
        "Users" => list(user_search_summary())
      }

  """
  @type search_users_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_outbound_chat_contact_request() :: %{
        optional("Attributes") => map(),
        optional("ChatDurationInMinutes") => integer(),
        optional("ClientToken") => String.t() | atom(),
        optional("InitialSystemMessage") => chat_message(),
        optional("ParticipantDetails") => participant_details(),
        optional("RelatedContactId") => String.t() | atom(),
        optional("SupportedMessagingContentTypes") => list(String.t() | atom()),
        required("ContactFlowId") => String.t() | atom(),
        required("DestinationEndpoint") => endpoint(),
        required("InstanceId") => String.t() | atom(),
        required("SegmentAttributes") => map(),
        required("SourceEndpoint") => endpoint()
      }

  """
  @type start_outbound_chat_contact_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_contact_recording_request() :: %{
        required("ContactId") => String.t() | atom(),
        required("InitialContactId") => String.t() | atom(),
        required("InstanceId") => String.t() | atom(),
        required("VoiceRecordingConfiguration") => voice_recording_configuration()
      }

  """
  @type start_contact_recording_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_traffic_distribution_group_users_response() :: %{
        "NextToken" => String.t() | atom(),
        "TrafficDistributionGroupUserSummaryList" => list(traffic_distribution_group_user_summary())
      }

  """
  @type list_traffic_distribution_group_users_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      routing_criteria_input() :: %{
        "Steps" => list(routing_criteria_input_step())
      }

  """
  @type routing_criteria_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_hierarchy_group_search_filter() :: %{
        "AttributeFilter" => control_plane_attribute_filter()
      }

  """
  @type user_hierarchy_group_search_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      email_recipient() :: %{
        "Address" => String.t() | atom(),
        "DisplayName" => String.t() | atom()
      }

  """
  @type email_recipient() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_traffic_distribution_group_request() :: %{}

  """
  @type describe_traffic_distribution_group_request() :: %{}

  @typedoc """

  ## Example:

      attribute_condition() :: %{
        "ComparisonOperator" => String.t() | atom(),
        "MatchCriteria" => match_criteria(),
        "Name" => String.t() | atom(),
        "ProficiencyLevel" => float(),
        "Range" => range(),
        "Value" => String.t() | atom()
      }

  """
  @type attribute_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      prompt_summary() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | atom()
      }

  """
  @type prompt_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_hours_of_operation_override_request() :: %{}

  """
  @type delete_hours_of_operation_override_request() :: %{}

  @typedoc """

  ## Example:

      disassociate_flow_request() :: %{}

  """
  @type disassociate_flow_request() :: %{}

  @typedoc """

  ## Example:

      list_condition() :: %{
        "Conditions" => list(condition()),
        "TargetListType" => list(any())
      }

  """
  @type list_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      routing_criteria_input_step_expiry() :: %{
        "DurationInSeconds" => integer()
      }

  """
  @type routing_criteria_input_step_expiry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_use_case_response() :: %{
        "UseCaseArn" => String.t() | atom(),
        "UseCaseId" => String.t() | atom()
      }

  """
  @type create_use_case_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      replicate_instance_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("ReplicaAlias") => String.t() | atom(),
        required("ReplicaRegion") => String.t() | atom()
      }

  """
  @type replicate_instance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deactivate_evaluation_form_response() :: %{
        "EvaluationFormArn" => String.t() | atom(),
        "EvaluationFormId" => String.t() | atom(),
        "EvaluationFormVersion" => integer()
      }

  """
  @type deactivate_evaluation_form_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      contact_flow_search_filter() :: %{
        "TagFilter" => control_plane_tag_filter()
      }

  """
  @type contact_flow_search_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_hours_of_operations_response() :: %{
        "ApproximateTotalCount" => float(),
        "HoursOfOperations" => list(hours_of_operation()),
        "NextToken" => String.t() | atom()
      }

  """
  @type search_hours_of_operations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_contact_with_user_response() :: %{}

  """
  @type associate_contact_with_user_response() :: %{}

  @typedoc """

  ## Example:

      view_summary() :: %{
        "Arn" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Status" => list(any()),
        "Type" => list(any())
      }

  """
  @type view_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      searchable_segment_attributes() :: %{
        "Criteria" => list(searchable_segment_attributes_criteria()),
        "MatchType" => list(any())
      }

  """
  @type searchable_segment_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      activate_evaluation_form_request() :: %{
        required("EvaluationFormVersion") => integer()
      }

  """
  @type activate_evaluation_form_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      successful_request() :: %{
        "ContactId" => String.t() | atom(),
        "RequestIdentifier" => String.t() | atom()
      }

  """
  @type successful_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_instance_storage_config_response() :: %{
        "StorageConfig" => instance_storage_config()
      }

  """
  @type describe_instance_storage_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_contact_request() :: %{}

  """
  @type describe_contact_request() :: %{}

  @typedoc """

  ## Example:

      agent_status() :: %{
        "AgentStatusARN" => String.t() | atom(),
        "AgentStatusId" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "DisplayOrder" => integer(),
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "State" => list(any()),
        "Tags" => map(),
        "Type" => list(any())
      }

  """
  @type agent_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_available_phone_numbers_response() :: %{
        "AvailableNumbersList" => list(available_number_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type search_available_phone_numbers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dimensions() :: %{
        "AgentStatus" => agent_status_identifier(),
        "Channel" => list(any()),
        "Queue" => queue_reference(),
        "RoutingProfile" => routing_profile_reference(),
        "RoutingStepExpression" => String.t() | atom()
      }

  """
  @type dimensions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_task_template_response() :: %{
        "Arn" => String.t() | atom(),
        "Constraints" => task_template_constraints(),
        "ContactFlowId" => String.t() | atom(),
        "CreatedTime" => non_neg_integer(),
        "Defaults" => task_template_defaults(),
        "Description" => String.t() | atom(),
        "Fields" => list(task_template_field()),
        "Id" => String.t() | atom(),
        "InstanceId" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "SelfAssignFlowId" => String.t() | atom(),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type get_task_template_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_use_case_request() :: %{}

  """
  @type delete_use_case_request() :: %{}

  @typedoc """

  ## Example:

      describe_prompt_response() :: %{
        "Prompt" => prompt()
      }

  """
  @type describe_prompt_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_hours_of_operations_response() :: %{
        "HoursOfOperationSummaryList" => list(hours_of_operation_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_hours_of_operations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      predefined_attribute_configuration() :: %{
        "EnableValueValidationOnAssociation" => boolean(),
        "IsReadOnly" => boolean()
      }

  """
  @type predefined_attribute_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      property_validation_exception() :: %{
        "Message" => String.t() | atom(),
        "PropertyList" => list(property_validation_exception_property())
      }

  """
  @type property_validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_outbound_email_response() :: %{}

  """
  @type send_outbound_email_response() :: %{}

  @typedoc """

  ## Example:

      user_identity_info_lite() :: %{
        "FirstName" => String.t() | atom(),
        "LastName" => String.t() | atom()
      }

  """
  @type user_identity_info_lite() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_contact_response() :: %{
        "Contact" => contact()
      }

  """
  @type describe_contact_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_flow_associations_response() :: %{
        "FlowAssociationSummaryList" => list(flow_association_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_flow_associations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_contacts_time_range() :: %{
        "EndTime" => non_neg_integer(),
        "StartTime" => non_neg_integer(),
        "Type" => list(any())
      }

  """
  @type search_contacts_time_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      threshold_v2() :: %{
        "Comparison" => String.t() | atom(),
        "ThresholdValue" => float()
      }

  """
  @type threshold_v2() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_contact_attributes_response() :: %{}

  """
  @type update_contact_attributes_response() :: %{}

  @typedoc """

  ## Example:

      create_contact_flow_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Status") => list(any()),
        optional("Tags") => map(),
        required("Content") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("Type") => list(any())
      }

  """
  @type create_contact_flow_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      metric_interval() :: %{
        "EndTime" => non_neg_integer(),
        "Interval" => list(any()),
        "StartTime" => non_neg_integer()
      }

  """
  @type metric_interval() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      upload_url_metadata() :: %{
        "HeadersToInclude" => map(),
        "Url" => String.t() | atom(),
        "UrlExpiry" => String.t() | atom()
      }

  """
  @type upload_url_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      real_time_contact_analysis_transcript_item_with_content() :: %{
        "CharacterOffsets" => real_time_contact_analysis_character_interval(),
        "Content" => String.t() | atom(),
        "Id" => String.t() | atom()
      }

  """
  @type real_time_contact_analysis_transcript_item_with_content() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      search_predefined_attributes_response() :: %{
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t() | atom(),
        "PredefinedAttributes" => list(predefined_attribute())
      }

  """
  @type search_predefined_attributes_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_in_use_exception() :: %{
        "Message" => String.t() | atom(),
        "ResourceId" => String.t() | atom(),
        "ResourceType" => list(any())
      }

  """
  @type resource_in_use_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_hours_of_operations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SearchCriteria") => hours_of_operation_search_criteria(),
        optional("SearchFilter") => hours_of_operation_search_filter(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type search_hours_of_operations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_predefined_attribute_request() :: %{}

  """
  @type describe_predefined_attribute_request() :: %{}

  @typedoc """

  ## Example:

      get_prompt_file_response() :: %{
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "PromptPresignedUrl" => String.t() | atom()
      }

  """
  @type get_prompt_file_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hierarchy_path_reference() :: %{
        "LevelFive" => hierarchy_group_summary_reference(),
        "LevelFour" => hierarchy_group_summary_reference(),
        "LevelOne" => hierarchy_group_summary_reference(),
        "LevelThree" => hierarchy_group_summary_reference(),
        "LevelTwo" => hierarchy_group_summary_reference()
      }

  """
  @type hierarchy_path_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_flow_association_response() :: %{
        "FlowId" => String.t() | atom(),
        "ResourceId" => String.t() | atom(),
        "ResourceType" => list(any())
      }

  """
  @type get_flow_association_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluation_form_version_summary() :: %{
        "CreatedBy" => String.t() | atom(),
        "CreatedTime" => non_neg_integer(),
        "EvaluationFormArn" => String.t() | atom(),
        "EvaluationFormId" => String.t() | atom(),
        "EvaluationFormVersion" => integer(),
        "LastModifiedBy" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Locked" => boolean(),
        "Status" => list(any())
      }

  """
  @type evaluation_form_version_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      routing_criteria() :: %{
        "ActivationTimestamp" => non_neg_integer(),
        "Index" => integer(),
        "Steps" => list(step())
      }

  """
  @type routing_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      email_attachment() :: %{
        "FileName" => String.t() | atom(),
        "S3Url" => String.t() | atom()
      }

  """
  @type email_attachment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_user_proficiencies_response() :: %{
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "NextToken" => String.t() | atom(),
        "UserProficiencyList" => list(user_proficiency())
      }

  """
  @type list_user_proficiencies_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      historical_metric_result() :: %{
        "Collections" => list(historical_metric_data()),
        "Dimensions" => dimensions()
      }

  """
  @type historical_metric_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_agent_status_response() :: %{
        "AgentStatus" => agent_status()
      }

  """
  @type describe_agent_status_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_chat_integration_event_response() :: %{
        "InitialContactId" => String.t() | atom(),
        "NewChatCreated" => boolean()
      }

  """
  @type send_chat_integration_event_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      meeting() :: %{
        "MediaPlacement" => media_placement(),
        "MediaRegion" => String.t() | atom(),
        "MeetingFeatures" => meeting_features_configuration(),
        "MeetingId" => String.t() | atom()
      }

  """
  @type meeting() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      attached_file() :: %{
        "AssociatedResourceArn" => String.t() | atom(),
        "CreatedBy" => list(),
        "CreationTime" => String.t() | atom(),
        "FileArn" => String.t() | atom(),
        "FileId" => String.t() | atom(),
        "FileName" => String.t() | atom(),
        "FileSizeInBytes" => float(),
        "FileStatus" => list(any()),
        "FileUseCaseType" => list(any()),
        "Tags" => map()
      }

  """
  @type attached_file() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_resource_tags_response() :: %{
        "NextToken" => String.t() | atom(),
        "Tags" => list(tag_set())
      }

  """
  @type search_resource_tags_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_email_address_response() :: %{}

  """
  @type delete_email_address_response() :: %{}

  @typedoc """

  ## Example:

      phone_number_quick_connect_config() :: %{
        "PhoneNumber" => String.t() | atom()
      }

  """
  @type phone_number_quick_connect_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      searchable_segment_attributes_criteria() :: %{
        "Key" => String.t() | atom(),
        "Values" => list(String.t() | atom())
      }

  """
  @type searchable_segment_attributes_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_contact_flow_version_request() :: %{}

  """
  @type delete_contact_flow_version_request() :: %{}

  @typedoc """

  ## Example:

      participant_metrics() :: %{
        "ConversationAbandon" => boolean(),
        "LastMessageTimestamp" => non_neg_integer(),
        "MaxResponseTimeInMillis" => float(),
        "MessageLengthInChars" => integer(),
        "MessagesSent" => integer(),
        "NumResponses" => integer(),
        "ParticipantId" => String.t() | atom(),
        "ParticipantType" => list(any()),
        "TotalResponseTimeInMillis" => float()
      }

  """
  @type participant_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_security_profile_response() :: %{
        "SecurityProfile" => security_profile()
      }

  """
  @type describe_security_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_evaluation_form_request() :: %{
        optional("EvaluationFormVersion") => integer()
      }

  """
  @type delete_evaluation_form_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_status_search_criteria() :: %{
        "AndConditions" => list(agent_status_search_criteria()),
        "OrConditions" => list(agent_status_search_criteria()),
        "StringCondition" => string_condition()
      }

  """
  @type agent_status_search_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_security_profile_response() :: %{
        "SecurityProfileArn" => String.t() | atom(),
        "SecurityProfileId" => String.t() | atom()
      }

  """
  @type create_security_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      outbound_contact_not_permitted_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type outbound_contact_not_permitted_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_prompts_response() :: %{
        "NextToken" => String.t() | atom(),
        "PromptSummaryList" => list(prompt_summary())
      }

  """
  @type list_prompts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_data_filters() :: %{
        "Agents" => list(String.t() | atom()),
        "ContactFilter" => contact_filter(),
        "Queues" => list(String.t() | atom()),
        "RoutingProfiles" => list(String.t() | atom()),
        "UserHierarchyGroups" => list(String.t() | atom())
      }

  """
  @type user_data_filters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_view_request() :: %{}

  """
  @type delete_view_request() :: %{}

  @typedoc """

  ## Example:

      chat_message() :: %{
        "Content" => String.t() | atom(),
        "ContentType" => String.t() | atom()
      }

  """
  @type chat_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_push_notification_registration_response() :: %{
        "RegistrationId" => String.t() | atom()
      }

  """
  @type create_push_notification_registration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_hours_of_operation_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Tags") => map(),
        required("Config") => list(hours_of_operation_config()),
        required("Name") => String.t() | atom(),
        required("TimeZone") => String.t() | atom()
      }

  """
  @type create_hours_of_operation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      real_time_contact_analysis_point_of_interest() :: %{
        "TranscriptItems" => list(real_time_contact_analysis_transcript_item_with_character_offsets())
      }

  """
  @type real_time_contact_analysis_point_of_interest() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_contact_flow_version_response() :: %{}

  """
  @type delete_contact_flow_version_response() :: %{}

  @typedoc """

  ## Example:

      update_contact_flow_metadata_response() :: %{}

  """
  @type update_contact_flow_metadata_response() :: %{}

  @typedoc """

  ## Example:

      disassociate_lex_bot_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("BotName") => String.t() | atom(),
        required("LexRegion") => String.t() | atom()
      }

  """
  @type disassociate_lex_bot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      outbound_email_content() :: %{
        "MessageSourceType" => list(any()),
        "RawMessage" => outbound_raw_message(),
        "TemplatedMessageConfig" => templated_message_config()
      }

  """
  @type outbound_email_content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_security_profile_request() :: %{
        optional("AllowedAccessControlHierarchyGroupId") => String.t() | atom(),
        optional("AllowedAccessControlTags") => map(),
        optional("Applications") => list(application()),
        optional("Description") => String.t() | atom(),
        optional("HierarchyRestrictedResources") => list(String.t() | atom()),
        optional("Permissions") => list(String.t() | atom()),
        optional("TagRestrictedResources") => list(String.t() | atom())
      }

  """
  @type update_security_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_user_hierarchy_groups_response() :: %{
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t() | atom(),
        "UserHierarchyGroups" => list(hierarchy_group())
      }

  """
  @type search_user_hierarchy_groups_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      credentials() :: %{
        "AccessToken" => String.t() | atom(),
        "AccessTokenExpiration" => non_neg_integer(),
        "RefreshToken" => String.t() | atom(),
        "RefreshTokenExpiration" => non_neg_integer()
      }

  """
  @type credentials() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_contact_flow_modules_response() :: %{
        "ApproximateTotalCount" => float(),
        "ContactFlowModules" => list(contact_flow_module()),
        "NextToken" => String.t() | atom()
      }

  """
  @type search_contact_flow_modules_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_contact_metrics_request() :: %{
        required("ContactId") => String.t() | atom(),
        required("InstanceId") => String.t() | atom(),
        required("Metrics") => list(contact_metric_info())
      }

  """
  @type get_contact_metrics_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_vocabulary_request() :: %{}

  """
  @type describe_vocabulary_request() :: %{}

  @typedoc """

  ## Example:

      hours_of_operation_override_search_criteria() :: %{
        "AndConditions" => list(hours_of_operation_override_search_criteria()),
        "DateCondition" => date_condition(),
        "OrConditions" => list(hours_of_operation_override_search_criteria()),
        "StringCondition" => string_condition()
      }

  """
  @type hours_of_operation_override_search_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_associated_contacts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("ContactId") => String.t() | atom()
      }

  """
  @type list_associated_contacts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_instance_storage_config_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("ResourceType") => list(any()),
        required("StorageConfig") => instance_storage_config()
      }

  """
  @type update_instance_storage_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_condition() :: %{
        "TagKey" => String.t() | atom(),
        "TagValue" => String.t() | atom()
      }

  """
  @type tag_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      contact_flow_version_summary() :: %{
        "Arn" => String.t() | atom(),
        "Version" => float(),
        "VersionDescription" => String.t() | atom()
      }

  """
  @type contact_flow_version_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      view() :: %{
        "Arn" => String.t() | atom(),
        "Content" => view_content(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "Status" => list(any()),
        "Tags" => map(),
        "Type" => list(any()),
        "Version" => integer(),
        "VersionDescription" => String.t() | atom(),
        "ViewContentSha256" => String.t() | atom()
      }

  """
  @type view() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_contact_flow_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_contact_flow_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_queue_response() :: %{
        "Queue" => queue()
      }

  """
  @type describe_queue_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_attached_file_response() :: %{}

  """
  @type delete_attached_file_response() :: %{}

  @typedoc """

  ## Example:

      control_plane_attribute_filter() :: %{
        "AndCondition" => common_attribute_and_condition(),
        "OrConditions" => list(common_attribute_and_condition()),
        "TagCondition" => tag_condition()
      }

  """
  @type control_plane_attribute_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hours_of_operation() :: %{
        "Config" => list(hours_of_operation_config()),
        "Description" => String.t() | atom(),
        "HoursOfOperationArn" => String.t() | atom(),
        "HoursOfOperationId" => String.t() | atom(),
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "Tags" => map(),
        "TimeZone" => String.t() | atom()
      }

  """
  @type hours_of_operation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      read_only_field_info() :: %{
        "Id" => task_template_field_identifier()
      }

  """
  @type read_only_field_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_quick_connect_name_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom()
      }

  """
  @type update_quick_connect_name_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_contact_recording_response() :: %{}

  """
  @type stop_contact_recording_response() :: %{}

  @typedoc """

  ## Example:

      metric_filter_v2() :: %{
        "MetricFilterKey" => String.t() | atom(),
        "MetricFilterValues" => list(String.t() | atom()),
        "Negate" => boolean()
      }

  """
  @type metric_filter_v2() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      routing_profile_queue_config_summary() :: %{
        "Channel" => list(any()),
        "Delay" => integer(),
        "Priority" => integer(),
        "QueueArn" => String.t() | atom(),
        "QueueId" => String.t() | atom(),
        "QueueName" => String.t() | atom()
      }

  """
  @type routing_profile_queue_config_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      date_condition() :: %{
        "ComparisonType" => list(any()),
        "FieldName" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type date_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_metric_data_v2_response() :: %{
        "MetricResults" => list(metric_result_v2()),
        "NextToken" => String.t() | atom()
      }

  """
  @type get_metric_data_v2_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_flow_associations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ResourceType") => list(any())
      }

  """
  @type list_flow_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hours_of_operation_search_filter() :: %{
        "TagFilter" => control_plane_tag_filter()
      }

  """
  @type hours_of_operation_search_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_task_template_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Constraints") => task_template_constraints(),
        optional("ContactFlowId") => String.t() | atom(),
        optional("Defaults") => task_template_defaults(),
        optional("Description") => String.t() | atom(),
        optional("SelfAssignFlowId") => String.t() | atom(),
        optional("Status") => list(any()),
        required("Fields") => list(task_template_field()),
        required("Name") => String.t() | atom()
      }

  """
  @type create_task_template_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      error_result() :: %{
        "ErrorCode" => String.t() | atom(),
        "ErrorMessage" => String.t() | atom()
      }

  """
  @type error_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kinesis_firehose_config() :: %{
        "FirehoseArn" => String.t() | atom()
      }

  """
  @type kinesis_firehose_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      task_template_field() :: %{
        "Description" => String.t() | atom(),
        "Id" => task_template_field_identifier(),
        "SingleSelectOptions" => list(String.t() | atom()),
        "Type" => list(any())
      }

  """
  @type task_template_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_evaluation_form_response() :: %{
        "EvaluationForm" => evaluation_form()
      }

  """
  @type describe_evaluation_form_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      task_template_defaults() :: %{
        "DefaultFieldValues" => list(task_template_default_field_value())
      }

  """
  @type task_template_defaults() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_queue_max_contacts_request() :: %{
        optional("MaxContacts") => integer()
      }

  """
  @type update_queue_max_contacts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_task_template_response() :: %{}

  """
  @type delete_task_template_response() :: %{}

  @typedoc """

  ## Example:

      create_integration_association_response() :: %{
        "IntegrationAssociationArn" => String.t() | atom(),
        "IntegrationAssociationId" => String.t() | atom()
      }

  """
  @type create_integration_association_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      required_field_info() :: %{
        "Id" => task_template_field_identifier()
      }

  """
  @type required_field_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_search_summary() :: %{
        "Arn" => String.t() | atom(),
        "DirectoryUserId" => String.t() | atom(),
        "HierarchyGroupId" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "IdentityInfo" => user_identity_info_lite(),
        "PhoneConfig" => user_phone_config(),
        "RoutingProfileId" => String.t() | atom(),
        "SecurityProfileIds" => list(String.t() | atom()),
        "Tags" => map(),
        "Username" => String.t() | atom()
      }

  """
  @type user_search_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      attached_file_error() :: %{
        "ErrorCode" => String.t() | atom(),
        "ErrorMessage" => String.t() | atom(),
        "FileId" => String.t() | atom()
      }

  """
  @type attached_file_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_outbound_email_contact_request() :: %{
        optional("AdditionalRecipients") => outbound_additional_recipients(),
        optional("ClientToken") => String.t() | atom(),
        optional("FromEmailAddress") => email_address_info(),
        required("ContactId") => String.t() | atom(),
        required("DestinationEmailAddress") => email_address_info(),
        required("EmailMessage") => outbound_email_content(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type start_outbound_email_contact_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lex_v2_bot() :: %{
        "AliasArn" => String.t() | atom()
      }

  """
  @type lex_v2_bot() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_traffic_distribution_group_response() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom()
      }

  """
  @type create_traffic_distribution_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      contact_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type contact_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      contact_flow_not_published_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type contact_flow_not_published_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      contact_flow_module_search_criteria() :: %{
        "AndConditions" => list(contact_flow_module_search_criteria()),
        "OrConditions" => list(contact_flow_module_search_criteria()),
        "StateCondition" => list(any()),
        "StatusCondition" => list(any()),
        "StringCondition" => string_condition()
      }

  """
  @type contact_flow_module_search_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      traffic_distribution_group_user_summary() :: %{
        "UserId" => String.t() | atom()
      }

  """
  @type traffic_distribution_group_user_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      use_case() :: %{
        "UseCaseArn" => String.t() | atom(),
        "UseCaseId" => String.t() | atom(),
        "UseCaseType" => list(any())
      }

  """
  @type use_case() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_hours_of_operation_request() :: %{
        optional("Config") => list(hours_of_operation_config()),
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("TimeZone") => String.t() | atom()
      }

  """
  @type update_hours_of_operation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      customer_quality_metrics() :: %{
        "Audio" => audio_quality_metrics_info()
      }

  """
  @type customer_quality_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      number_condition() :: %{
        "ComparisonType" => list(any()),
        "FieldName" => String.t() | atom(),
        "MaxValue" => integer(),
        "MinValue" => integer()
      }

  """
  @type number_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_routing_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SearchCriteria") => routing_profile_search_criteria(),
        optional("SearchFilter") => routing_profile_search_filter(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type search_routing_profiles_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_rule_request() :: %{
        required("Actions") => list(rule_action()),
        required("Function") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("PublishStatus") => list(any())
      }

  """
  @type update_rule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_outbound_voice_contact_response() :: %{
        "ContactId" => String.t() | atom()
      }

  """
  @type start_outbound_voice_contact_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_contact_flows_request() :: %{
        optional("ContactFlowTypes") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_contact_flows_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_identity_info() :: %{
        "Email" => String.t() | atom(),
        "FirstName" => String.t() | atom(),
        "LastName" => String.t() | atom(),
        "Mobile" => String.t() | atom(),
        "SecondaryEmail" => String.t() | atom()
      }

  """
  @type user_identity_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      real_time_contact_analysis_segment_post_contact_summary() :: %{
        "Content" => String.t() | atom(),
        "FailureCode" => list(any()),
        "Status" => list(any())
      }

  """
  @type real_time_contact_analysis_segment_post_contact_summary() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      list_instance_attributes_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_instance_attributes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_vocabulary_response() :: %{
        "State" => list(any()),
        "VocabularyArn" => String.t() | atom(),
        "VocabularyId" => String.t() | atom()
      }

  """
  @type create_vocabulary_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      wisdom_info() :: %{
        "SessionArn" => String.t() | atom()
      }

  """
  @type wisdom_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      release_phone_number_request() :: %{
        optional("ClientToken") => String.t() | atom()
      }

  """
  @type release_phone_number_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      analytics_data_sets_result() :: %{
        "DataSetId" => String.t() | atom(),
        "DataSetName" => String.t() | atom()
      }

  """
  @type analytics_data_sets_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_contact_request() :: %{
        optional("DisconnectReason") => disconnect_reason(),
        required("ContactId") => String.t() | atom(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type stop_contact_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_hours_of_operation_override_request() :: %{}

  """
  @type describe_hours_of_operation_override_request() :: %{}

  @typedoc """

  ## Example:

      update_phone_number_response() :: %{
        "PhoneNumberArn" => String.t() | atom(),
        "PhoneNumberId" => String.t() | atom()
      }

  """
  @type update_phone_number_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      contact_configuration() :: %{
        "ContactId" => String.t() | atom(),
        "IncludeRawMessage" => boolean(),
        "ParticipantRole" => list(any())
      }

  """
  @type contact_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_user_hierarchy_group_request() :: %{}

  """
  @type delete_user_hierarchy_group_request() :: %{}

  @typedoc """

  ## Example:

      lex_bot_config() :: %{
        "LexBot" => lex_bot(),
        "LexV2Bot" => lex_v2_bot()
      }

  """
  @type lex_bot_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_hierarchy_group() :: %{
        "Arn" => String.t() | atom()
      }

  """
  @type agent_hierarchy_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      real_time_contact_analysis_segment_issues() :: %{
        "IssuesDetected" => list(real_time_contact_analysis_issue_detected())
      }

  """
  @type real_time_contact_analysis_segment_issues() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_instance_response() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom()
      }

  """
  @type create_instance_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_contact_evaluations_response() :: %{
        "EvaluationSummaryList" => list(evaluation_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_contact_evaluations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      searchable_routing_criteria_step() :: %{
        "AgentCriteria" => searchable_agent_criteria_step()
      }

  """
  @type searchable_routing_criteria_step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      task_template_default_field_value() :: %{
        "DefaultValue" => String.t() | atom(),
        "Id" => task_template_field_identifier()
      }

  """
  @type task_template_default_field_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      authentication_profile() :: %{
        "AllowedIps" => list(String.t() | atom()),
        "Arn" => String.t() | atom(),
        "BlockedIps" => list(String.t() | atom()),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "IsDefault" => boolean(),
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "MaxSessionDuration" => integer(),
        "Name" => String.t() | atom(),
        "PeriodicSessionDuration" => integer()
      }

  """
  @type authentication_profile() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluation_note() :: %{
        "Value" => String.t() | atom()
      }

  """
  @type evaluation_note() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_contact_flow_module_metadata_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("State") => list(any())
      }

  """
  @type update_contact_flow_module_metadata_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_hours_of_operation_overrides_response() :: %{
        "HoursOfOperationOverrideList" => list(hours_of_operation_override()),
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_hours_of_operation_overrides_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_prompt_response() :: %{
        "PromptARN" => String.t() | atom(),
        "PromptId" => String.t() | atom()
      }

  """
  @type update_prompt_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_contact_flow_exception() :: %{
        "problems" => list(problem_detail())
      }

  """
  @type invalid_contact_flow_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_view_metadata_response() :: %{}

  """
  @type update_view_metadata_response() :: %{}

  @typedoc """

  ## Example:

      list_evaluation_form_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_evaluation_form_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_agent_statuses_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SearchCriteria") => agent_status_search_criteria(),
        optional("SearchFilter") => agent_status_search_filter(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type search_agent_statuses_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      inbound_email_content() :: %{
        "MessageSourceType" => list(any()),
        "RawMessage" => inbound_raw_message()
      }

  """
  @type inbound_email_content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_view_version_request() :: %{}

  """
  @type delete_view_version_request() :: %{}

  @typedoc """

  ## Example:

      import_phone_number_response() :: %{
        "PhoneNumberArn" => String.t() | atom(),
        "PhoneNumberId" => String.t() | atom()
      }

  """
  @type import_phone_number_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      persistent_chat() :: %{
        "RehydrationType" => list(any()),
        "SourceContactId" => String.t() | atom()
      }

  """
  @type persistent_chat() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_contact_schedule_response() :: %{}

  """
  @type update_contact_schedule_response() :: %{}

  @typedoc """

  ## Example:

      queue() :: %{
        "Description" => String.t() | atom(),
        "HoursOfOperationId" => String.t() | atom(),
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "MaxContacts" => integer(),
        "Name" => String.t() | atom(),
        "OutboundCallerConfig" => outbound_caller_config(),
        "OutboundEmailConfig" => outbound_email_config(),
        "QueueArn" => String.t() | atom(),
        "QueueId" => String.t() | atom(),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type queue() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_email_address_request() :: %{}

  """
  @type delete_email_address_request() :: %{}

  @typedoc """

  ## Example:

      replication_status_summary() :: %{
        "Region" => String.t() | atom(),
        "ReplicationStatus" => list(any()),
        "ReplicationStatusReason" => String.t() | atom()
      }

  """
  @type replication_status_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      override_time_slice() :: %{
        "Hours" => integer(),
        "Minutes" => integer()
      }

  """
  @type override_time_slice() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_proficiency_disassociate() :: %{
        "AttributeName" => String.t() | atom(),
        "AttributeValue" => String.t() | atom()
      }

  """
  @type user_proficiency_disassociate() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_service_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type internal_service_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_use_cases_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_use_cases_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_approved_origin_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("Origin") => String.t() | atom()
      }

  """
  @type disassociate_approved_origin_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      searchable_routing_criteria() :: %{
        "Steps" => list(searchable_routing_criteria_step())
      }

  """
  @type searchable_routing_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      segment_attribute_value() :: %{
        "ValueArn" => String.t() | atom(),
        "ValueInteger" => integer(),
        "ValueList" => list(segment_attribute_value()),
        "ValueMap" => map(),
        "ValueString" => String.t() | atom()
      }

  """
  @type segment_attribute_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      real_time_contact_analysis_segment_categories() :: %{
        "MatchedDetails" => map()
      }

  """
  @type real_time_contact_analysis_segment_categories() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_lambda_function_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("FunctionArn") => String.t() | atom()
      }

  """
  @type associate_lambda_function_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      transcript() :: %{
        "Criteria" => list(transcript_criteria()),
        "MatchType" => list(any())
      }

  """
  @type transcript() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      download_url_metadata() :: %{
        "Url" => String.t() | atom(),
        "UrlExpiry" => String.t() | atom()
      }

  """
  @type download_url_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      suspend_contact_recording_response() :: %{}

  """
  @type suspend_contact_recording_response() :: %{}

  @typedoc """

  ## Example:

      update_participant_role_config_response() :: %{}

  """
  @type update_participant_role_config_response() :: %{}

  @typedoc """

  ## Example:

      disassociate_queue_quick_connects_request() :: %{
        required("QuickConnectIds") => list(String.t() | atom())
      }

  """
  @type disassociate_queue_quick_connects_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      complete_attached_file_upload_response() :: %{}

  """
  @type complete_attached_file_upload_response() :: %{}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_hours_of_operation_override_request() :: %{
        optional("Config") => list(hours_of_operation_override_config()),
        optional("Description") => String.t() | atom(),
        optional("EffectiveFrom") => String.t() | atom(),
        optional("EffectiveTill") => String.t() | atom(),
        optional("Name") => String.t() | atom()
      }

  """
  @type update_hours_of_operation_override_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_security_profile_applications_response() :: %{
        "Applications" => list(application()),
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_security_profile_applications_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_quick_connect_config_request() :: %{
        required("QuickConnectConfig") => quick_connect_config()
      }

  """
  @type update_quick_connect_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_queue_hours_of_operation_request() :: %{
        required("HoursOfOperationId") => String.t() | atom()
      }

  """
  @type update_queue_hours_of_operation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type too_many_requests_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      participant_details_to_add() :: %{
        "DisplayName" => String.t() | atom(),
        "ParticipantCapabilities" => participant_capabilities(),
        "ParticipantRole" => list(any())
      }

  """
  @type participant_details_to_add() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_contacts_additional_time_range_criteria() :: %{
        "TimeRange" => search_contacts_time_range(),
        "TimestampCondition" => search_contacts_timestamp_condition()
      }

  """
  @type search_contacts_additional_time_range_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_contact_streaming_request() :: %{
        required("ChatStreamingConfiguration") => chat_streaming_configuration(),
        required("ClientToken") => String.t() | atom(),
        required("ContactId") => String.t() | atom(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type start_contact_streaming_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_analytics_data_set_response() :: %{
        "DataSetId" => String.t() | atom(),
        "ResourceShareArn" => String.t() | atom(),
        "ResourceShareId" => String.t() | atom(),
        "TargetAccountId" => String.t() | atom()
      }

  """
  @type associate_analytics_data_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      queue_info_input() :: %{
        "Id" => String.t() | atom()
      }

  """
  @type queue_info_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_rules_request() :: %{
        optional("EventSourceName") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("PublishStatus") => list(any())
      }

  """
  @type list_rules_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      import_phone_number_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("PhoneNumberDescription") => String.t() | atom(),
        optional("Tags") => map(),
        required("InstanceId") => String.t() | atom(),
        required("SourcePhoneNumberArn") => String.t() | atom()
      }

  """
  @type import_phone_number_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      claim_phone_number_response() :: %{
        "PhoneNumberArn" => String.t() | atom(),
        "PhoneNumberId" => String.t() | atom()
      }

  """
  @type claim_phone_number_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      queue_info() :: %{
        "EnqueueTimestamp" => non_neg_integer(),
        "Id" => String.t() | atom()
      }

  """
  @type queue_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      routing_profile_manual_assignment_queue_config_summary() :: %{
        "Channel" => list(any()),
        "QueueArn" => String.t() | atom(),
        "QueueId" => String.t() | atom(),
        "QueueName" => String.t() | atom()
      }

  """
  @type routing_profile_manual_assignment_queue_config_summary() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      delete_push_notification_registration_response() :: %{}

  """
  @type delete_push_notification_registration_response() :: %{}

  @typedoc """

  ## Example:

      evaluation_answer_output() :: %{
        "SystemSuggestedValue" => list(),
        "Value" => list()
      }

  """
  @type evaluation_answer_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      available_number_summary() :: %{
        "PhoneNumber" => String.t() | atom(),
        "PhoneNumberCountryCode" => list(any()),
        "PhoneNumberType" => list(any())
      }

  """
  @type available_number_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_effective_hours_of_operations_response() :: %{
        "EffectiveHoursOfOperationList" => list(effective_hours_of_operations()),
        "TimeZone" => String.t() | atom()
      }

  """
  @type get_effective_hours_of_operations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_view_version_response() :: %{
        "View" => view()
      }

  """
  @type create_view_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_phone_number_response() :: %{
        "ClaimedPhoneNumberSummary" => claimed_phone_number_summary()
      }

  """
  @type describe_phone_number_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hierarchy_group_summary() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | atom()
      }

  """
  @type hierarchy_group_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      participant_token_credentials() :: %{
        "Expiry" => String.t() | atom(),
        "ParticipantToken" => String.t() | atom()
      }

  """
  @type participant_token_credentials() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_contact_flow_module_request() :: %{}

  """
  @type describe_contact_flow_module_request() :: %{}

  @typedoc """

  ## Example:

      pause_contact_request() :: %{
        optional("ContactFlowId") => String.t() | atom(),
        required("ContactId") => String.t() | atom(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type pause_contact_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_instance_attribute_response() :: %{
        "Attribute" => attribute()
      }

  """
  @type describe_instance_attribute_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      participant_timer_configuration() :: %{
        "ParticipantRole" => list(any()),
        "TimerType" => list(any()),
        "TimerValue" => list()
      }

  """
  @type participant_timer_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_approved_origin_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("Origin") => String.t() | atom()
      }

  """
  @type associate_approved_origin_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      email_address_search_criteria() :: %{
        "AndConditions" => list(email_address_search_criteria()),
        "OrConditions" => list(email_address_search_criteria()),
        "StringCondition" => string_condition()
      }

  """
  @type email_address_search_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      destination_not_allowed_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type destination_not_allowed_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invisible_field_info() :: %{
        "Id" => task_template_field_identifier()
      }

  """
  @type invisible_field_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_quick_connect_response() :: %{
        "QuickConnectARN" => String.t() | atom(),
        "QuickConnectId" => String.t() | atom()
      }

  """
  @type create_quick_connect_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_lex_bots_response() :: %{
        "LexBots" => list(lex_bot()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_lex_bots_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      contact_search_summary_segment_attribute_value() :: %{
        "ValueMap" => map(),
        "ValueString" => String.t() | atom()
      }

  """
  @type contact_search_summary_segment_attribute_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_vocabulary_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Tags") => map(),
        required("Content") => String.t() | atom(),
        required("LanguageCode") => list(any()),
        required("VocabularyName") => String.t() | atom()
      }

  """
  @type create_vocabulary_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      metric_result_v2() :: %{
        "Collections" => list(metric_data_v2()),
        "Dimensions" => map(),
        "MetricInterval" => metric_interval()
      }

  """
  @type metric_result_v2() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_attached_file_metadata_response() :: %{
        "Errors" => list(attached_file_error()),
        "Files" => list(attached_file())
      }

  """
  @type batch_get_attached_file_metadata_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      email_message_reference() :: %{
        "Arn" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type email_message_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_email_address_metadata_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("DisplayName") => String.t() | atom()
      }

  """
  @type update_email_address_metadata_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_attached_file_request() :: %{
        optional("UrlExpiryInSeconds") => integer(),
        required("AssociatedResourceArn") => String.t() | atom()
      }

  """
  @type get_attached_file_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      transfer_contact_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("QueueId") => String.t() | atom(),
        optional("UserId") => String.t() | atom(),
        required("ContactFlowId") => String.t() | atom(),
        required("ContactId") => String.t() | atom(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type transfer_contact_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_phone_number_request() :: %{}

  """
  @type describe_phone_number_request() :: %{}

  @typedoc """

  ## Example:

      resume_contact_recording_response() :: %{}

  """
  @type resume_contact_recording_response() :: %{}

  @typedoc """

  ## Example:

      list_agent_status_request() :: %{
        optional("AgentStatusTypes") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_agent_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      queue_summary() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "QueueType" => list(any())
      }

  """
  @type queue_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_contact_response() :: %{
        "ContactArn" => String.t() | atom(),
        "ContactId" => String.t() | atom()
      }

  """
  @type create_contact_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_contact_flow_name_response() :: %{}

  """
  @type update_contact_flow_name_response() :: %{}

  @typedoc """

  ## Example:

      update_participant_authentication_response() :: %{}

  """
  @type update_participant_authentication_response() :: %{}

  @typedoc """

  ## Example:

      list_task_templates_response() :: %{
        "NextToken" => String.t() | atom(),
        "TaskTemplates" => list(task_template_metadata())
      }

  """
  @type list_task_templates_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_current_user_data_response() :: %{
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t() | atom(),
        "UserDataList" => list(user_data())
      }

  """
  @type get_current_user_data_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_rule_request() :: %{}

  """
  @type delete_rule_request() :: %{}

  @typedoc """

  ## Example:

      describe_authentication_profile_request() :: %{}

  """
  @type describe_authentication_profile_request() :: %{}

  @typedoc """

  ## Example:

      contact_flow_summary() :: %{
        "Arn" => String.t() | atom(),
        "ContactFlowState" => list(any()),
        "ContactFlowStatus" => list(any()),
        "ContactFlowType" => list(any()),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type contact_flow_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_contact_evaluation_request() :: %{
        optional("Answers") => map(),
        optional("Notes") => map()
      }

  """
  @type update_contact_evaluation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_analytics_data_lake_data_sets_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_analytics_data_lake_data_sets_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_lex_bots_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_lex_bots_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_phone_numbers_v2_request() :: %{
        optional("InstanceId") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("PhoneNumberCountryCodes") => list(list(any())()),
        optional("PhoneNumberPrefix") => String.t() | atom(),
        optional("PhoneNumberTypes") => list(list(any())()),
        optional("TargetArn") => String.t() | atom()
      }

  """
  @type list_phone_numbers_v2_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_prompt_request() :: %{}

  """
  @type delete_prompt_request() :: %{}

  @typedoc """

  ## Example:

      send_chat_integration_event_request() :: %{
        optional("NewSessionDetails") => new_session_details(),
        optional("Subtype") => String.t() | atom(),
        required("DestinationId") => String.t() | atom(),
        required("Event") => chat_event(),
        required("SourceId") => String.t() | atom()
      }

  """
  @type send_chat_integration_event_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_user_hierarchy_structure_response() :: %{
        "HierarchyStructure" => hierarchy_structure()
      }

  """
  @type describe_user_hierarchy_structure_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_data() :: %{
        "ActiveSlotsByChannel" => map(),
        "AvailableSlotsByChannel" => map(),
        "Contacts" => list(agent_contact_reference()),
        "HierarchyPath" => hierarchy_path_reference(),
        "MaxSlotsByChannel" => map(),
        "NextStatus" => String.t() | atom(),
        "RoutingProfile" => routing_profile_reference(),
        "Status" => agent_status_reference(),
        "User" => user_reference()
      }

  """
  @type user_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      outbound_email_config() :: %{
        "OutboundEmailAddressId" => String.t() | atom()
      }

  """
  @type outbound_email_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      connect_reference() :: %{
        "Arn" => String.t() | atom(),
        "Status" => list(any()),
        "StatusReason" => String.t() | atom(),
        "Type" => list(any()),
        "Value" => String.t() | atom()
      }

  """
  @type connect_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_predefined_attribute_response() :: %{
        "PredefinedAttribute" => predefined_attribute()
      }

  """
  @type describe_predefined_attribute_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_email_contact_response() :: %{
        "ContactId" => String.t() | atom()
      }

  """
  @type start_email_contact_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_federation_token_response() :: %{
        "Credentials" => credentials(),
        "SignInUrl" => String.t() | atom(),
        "UserArn" => String.t() | atom(),
        "UserId" => String.t() | atom()
      }

  """
  @type get_federation_token_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_traffic_distribution_groups_request() :: %{
        optional("InstanceId") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_traffic_distribution_groups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      quick_connect_search_criteria() :: %{
        "AndConditions" => list(quick_connect_search_criteria()),
        "OrConditions" => list(quick_connect_search_criteria()),
        "StringCondition" => string_condition()
      }

  """
  @type quick_connect_search_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_view_response() :: %{
        "View" => view()
      }

  """
  @type describe_view_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      monitor_contact_request() :: %{
        optional("AllowedMonitorCapabilities") => list(list(any())()),
        optional("ClientToken") => String.t() | atom(),
        required("ContactId") => String.t() | atom(),
        required("InstanceId") => String.t() | atom(),
        required("UserId") => String.t() | atom()
      }

  """
  @type monitor_contact_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_quick_connect_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Tags") => map(),
        required("Name") => String.t() | atom(),
        required("QuickConnectConfig") => quick_connect_config()
      }

  """
  @type create_quick_connect_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      task_action_definition() :: %{
        "ContactFlowId" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "References" => map()
      }

  """
  @type task_action_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_contacts_timestamp_condition() :: %{
        "ConditionType" => list(any()),
        "Type" => list(any())
      }

  """
  @type search_contacts_timestamp_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_traffic_distribution_group_user_request() :: %{
        required("InstanceId") => String.t() | atom(),
        required("UserId") => String.t() | atom()
      }

  """
  @type associate_traffic_distribution_group_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      customer() :: %{
        "Capabilities" => participant_capabilities(),
        "DeviceInfo" => device_info()
      }

  """
  @type customer() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_contact_flow_response() :: %{}

  """
  @type delete_contact_flow_response() :: %{}

  @typedoc """

  ## Example:

      update_instance_attribute_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("Value") => String.t() | atom()
      }

  """
  @type update_instance_attribute_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      task_template_info_v2() :: %{
        "Arn" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type task_template_info_v2() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hours_of_operation_summary() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | atom()
      }

  """
  @type hours_of_operation_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_evaluation_form_response() :: %{
        "EvaluationFormArn" => String.t() | atom(),
        "EvaluationFormId" => String.t() | atom()
      }

  """
  @type create_evaluation_form_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_contact_reference() :: %{
        "AgentContactState" => list(any()),
        "Channel" => list(any()),
        "ConnectedToAgentTimestamp" => non_neg_integer(),
        "ContactId" => String.t() | atom(),
        "InitiationMethod" => list(any()),
        "Queue" => queue_reference(),
        "StateStartTimestamp" => non_neg_integer()
      }

  """
  @type agent_contact_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_lambda_functions_response() :: %{
        "LambdaFunctions" => list(String.t() | atom()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_lambda_functions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_routing_profile_request() :: %{}

  """
  @type delete_routing_profile_request() :: %{}

  @typedoc """

  ## Example:

      cross_channel_behavior() :: %{
        "BehaviorType" => list(any())
      }

  """
  @type cross_channel_behavior() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      empty_field_value() :: %{}

  """
  @type empty_field_value() :: %{}

  @typedoc """

  ## Example:

      view_content() :: %{
        "Actions" => list(String.t() | atom()),
        "InputSchema" => String.t() | atom(),
        "Template" => String.t() | atom()
      }

  """
  @type view_content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_queue_outbound_email_config_request() :: %{
        required("OutboundEmailConfig") => outbound_email_config()
      }

  """
  @type update_queue_outbound_email_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluation_form_summary() :: %{
        "ActiveVersion" => integer(),
        "CreatedBy" => String.t() | atom(),
        "CreatedTime" => non_neg_integer(),
        "EvaluationFormArn" => String.t() | atom(),
        "EvaluationFormId" => String.t() | atom(),
        "LastActivatedBy" => String.t() | atom(),
        "LastActivatedTime" => non_neg_integer(),
        "LastModifiedBy" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "LatestVersion" => integer(),
        "Title" => String.t() | atom()
      }

  """
  @type evaluation_form_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_task_template_request() :: %{
        optional("SnapshotVersion") => String.t() | atom()
      }

  """
  @type get_task_template_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_analytics_data_set_request() :: %{
        optional("TargetAccountId") => String.t() | atom(),
        required("DataSetId") => String.t() | atom()
      }

  """
  @type disassociate_analytics_data_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_agent_status_request() :: %{}

  """
  @type describe_agent_status_request() :: %{}

  @typedoc """

  ## Example:

      list_security_keys_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_security_keys_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      authentication_profile_summary() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "IsDefault" => boolean(),
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | atom()
      }

  """
  @type authentication_profile_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_prompt_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Tags") => map(),
        required("Name") => String.t() | atom(),
        required("S3Uri") => String.t() | atom()
      }

  """
  @type create_prompt_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_routing_profile_queues_request() :: %{
        optional("ManualAssignmentQueueConfigs") => list(routing_profile_manual_assignment_queue_config()),
        optional("QueueConfigs") => list(routing_profile_queue_config())
      }

  """
  @type associate_routing_profile_queues_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_prompts_response() :: %{
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t() | atom(),
        "Prompts" => list(prompt())
      }

  """
  @type search_prompts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_bots_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("LexVersion") => list(any())
      }

  """
  @type list_bots_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      replication_configuration() :: %{
        "GlobalSignInEndpoint" => String.t() | atom(),
        "ReplicationStatusSummaryList" => list(replication_status_summary()),
        "SourceRegion" => String.t() | atom()
      }

  """
  @type replication_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_security_profile_request() :: %{
        optional("AllowedAccessControlHierarchyGroupId") => String.t() | atom(),
        optional("AllowedAccessControlTags") => map(),
        optional("Applications") => list(application()),
        optional("Description") => String.t() | atom(),
        optional("HierarchyRestrictedResources") => list(String.t() | atom()),
        optional("Permissions") => list(String.t() | atom()),
        optional("TagRestrictedResources") => list(String.t() | atom()),
        optional("Tags") => map(),
        required("SecurityProfileName") => String.t() | atom()
      }

  """
  @type create_security_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_view_version_request() :: %{
        optional("VersionDescription") => String.t() | atom(),
        optional("ViewContentSha256") => String.t() | atom()
      }

  """
  @type create_view_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_instance_attribute_request() :: %{}

  """
  @type describe_instance_attribute_request() :: %{}

  @typedoc """

  ## Example:

      list_security_profile_permissions_response() :: %{
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "NextToken" => String.t() | atom(),
        "Permissions" => list(String.t() | atom())
      }

  """
  @type list_security_profile_permissions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_predefined_attribute_request() :: %{
        optional("AttributeConfiguration") => input_predefined_attribute_configuration(),
        optional("Purposes") => list(String.t() | atom()),
        optional("Values") => list(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_predefined_attribute_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_contact_metrics_response() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "MetricResults" => list(contact_metric_result())
      }

  """
  @type get_contact_metrics_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_contact_recording_request() :: %{
        optional("ContactRecordingType") => list(any()),
        required("ContactId") => String.t() | atom(),
        required("InitialContactId") => String.t() | atom(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type stop_contact_recording_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      real_time_contact_analysis_category_details() :: %{
        "PointsOfInterest" => list(real_time_contact_analysis_point_of_interest())
      }

  """
  @type real_time_contact_analysis_category_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_traffic_distribution_group_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("Tags") => map(),
        required("InstanceId") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_traffic_distribution_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      security_profile_summary() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | atom()
      }

  """
  @type security_profile_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_contact_evaluation_response() :: %{
        "Evaluation" => evaluation(),
        "EvaluationForm" => evaluation_form_content()
      }

  """
  @type describe_contact_evaluation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_evaluation_form_request() :: %{
        optional("EvaluationFormVersion") => integer()
      }

  """
  @type describe_evaluation_form_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_notification_action_definition() :: %{
        "Content" => String.t() | atom(),
        "ContentType" => list(any()),
        "DeliveryMethod" => list(any()),
        "Recipient" => notification_recipient_type(),
        "Subject" => String.t() | atom()
      }

  """
  @type send_notification_action_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_quick_connect_config() :: %{
        "ContactFlowId" => String.t() | atom(),
        "UserId" => String.t() | atom()
      }

  """
  @type user_quick_connect_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      phone_number_status() :: %{
        "Message" => String.t() | atom(),
        "Status" => list(any())
      }

  """
  @type phone_number_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_info() :: %{
        "AfterContactWorkDuration" => integer(),
        "AfterContactWorkEndTimestamp" => non_neg_integer(),
        "AfterContactWorkStartTimestamp" => non_neg_integer(),
        "AgentInitiatedHoldDuration" => integer(),
        "AgentPauseDurationInSeconds" => integer(),
        "Capabilities" => participant_capabilities(),
        "ConnectedToAgentTimestamp" => non_neg_integer(),
        "DeviceInfo" => device_info(),
        "HierarchyGroups" => hierarchy_groups(),
        "Id" => String.t() | atom(),
        "StateTransitions" => list(state_transition())
      }

  """
  @type agent_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_hours_of_operation_response() :: %{
        "HoursOfOperation" => hours_of_operation()
      }

  """
  @type describe_hours_of_operation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_disassociate_analytics_data_set_request() :: %{
        optional("TargetAccountId") => String.t() | atom(),
        required("DataSetIds") => list(String.t() | atom())
      }

  """
  @type batch_disassociate_analytics_data_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_prompt_response() :: %{
        "PromptARN" => String.t() | atom(),
        "PromptId" => String.t() | atom()
      }

  """
  @type create_prompt_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_integration_association_request() :: %{
        optional("SourceApplicationName") => String.t() | atom(),
        optional("SourceApplicationUrl") => String.t() | atom(),
        optional("SourceType") => list(any()),
        optional("Tags") => map(),
        required("IntegrationArn") => String.t() | atom(),
        required("IntegrationType") => list(any())
      }

  """
  @type create_integration_association_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      audio_features() :: %{
        "EchoReduction" => list(any())
      }

  """
  @type audio_features() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      routing_profile_queue_config() :: %{
        "Delay" => integer(),
        "Priority" => integer(),
        "QueueReference" => routing_profile_queue_reference()
      }

  """
  @type routing_profile_queue_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "Message" => String.t() | atom(),
        "Reason" => list()
      }

  """
  @type invalid_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_task_template_request() :: %{
        optional("Constraints") => task_template_constraints(),
        optional("ContactFlowId") => String.t() | atom(),
        optional("Defaults") => task_template_defaults(),
        optional("Description") => String.t() | atom(),
        optional("Fields") => list(task_template_field()),
        optional("Name") => String.t() | atom(),
        optional("SelfAssignFlowId") => String.t() | atom(),
        optional("Status") => list(any())
      }

  """
  @type update_task_template_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_contact_response() :: %{}

  """
  @type update_contact_response() :: %{}

  @typedoc """

  ## Example:

      disassociate_bot_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("LexBot") => lex_bot(),
        optional("LexV2Bot") => lex_v2_bot()
      }

  """
  @type disassociate_bot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluation_score() :: %{
        "AutomaticFail" => boolean(),
        "NotApplicable" => boolean(),
        "Percentage" => float()
      }

  """
  @type evaluation_score() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_put_contact_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("ContactDataRequestList") => list(contact_data_request())
      }

  """
  @type batch_put_contact_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_task_templates_request() :: %{
        optional("MaxResults") => integer(),
        optional("Name") => String.t() | atom(),
        optional("NextToken") => String.t() | atom(),
        optional("Status") => list(any())
      }

  """
  @type list_task_templates_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      telephony_config() :: %{
        "Distributions" => list(distribution())
      }

  """
  @type telephony_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_security_profiles_response() :: %{
        "NextToken" => String.t() | atom(),
        "SecurityProfileSummaryList" => list(security_profile_summary())
      }

  """
  @type list_security_profiles_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_participant_response() :: %{
        "ParticipantCredentials" => participant_token_credentials(),
        "ParticipantId" => String.t() | atom()
      }

  """
  @type create_participant_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hierarchy_group_condition() :: %{
        "HierarchyGroupMatchType" => list(any()),
        "Value" => String.t() | atom()
      }

  """
  @type hierarchy_group_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vocabulary_summary() :: %{
        "Arn" => String.t() | atom(),
        "FailureReason" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LanguageCode" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "State" => list(any())
      }

  """
  @type vocabulary_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_view_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_view_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_contact_flow_module_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("Tags") => map(),
        required("Content") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_contact_flow_module_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_instance_request() :: %{}

  """
  @type describe_instance_request() :: %{}

  @typedoc """

  ## Example:

      security_profiles_search_filter() :: %{
        "TagFilter" => control_plane_tag_filter()
      }

  """
  @type security_profiles_search_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_attached_file_metadata_request() :: %{
        required("AssociatedResourceArn") => String.t() | atom(),
        required("FileIds") => list(String.t() | atom())
      }

  """
  @type batch_get_attached_file_metadata_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t() | atom(),
        "Reason" => list()
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_flow_association_request() :: %{
        optional("ResourceType") => list(any()),
        required("ResourceIds") => list(String.t() | atom())
      }

  """
  @type batch_get_flow_association_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_config() :: %{
        "BucketName" => String.t() | atom(),
        "BucketPrefix" => String.t() | atom(),
        "EncryptionConfig" => encryption_config()
      }

  """
  @type s3_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_authentication_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_authentication_profiles_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_contact_flow_content_request() :: %{
        required("Content") => String.t() | atom()
      }

  """
  @type update_contact_flow_content_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_phone_config() :: %{
        "AfterContactWorkTimeLimit" => integer(),
        "AutoAccept" => boolean(),
        "DeskPhoneNumber" => String.t() | atom(),
        "PersistentConnection" => boolean(),
        "PhoneType" => list(any())
      }

  """
  @type user_phone_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_email_address_request() :: %{}

  """
  @type describe_email_address_request() :: %{}

  @typedoc """

  ## Example:

      submit_contact_evaluation_response() :: %{
        "EvaluationArn" => String.t() | atom(),
        "EvaluationId" => String.t() | atom()
      }

  """
  @type submit_contact_evaluation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluation_form() :: %{
        "CreatedBy" => String.t() | atom(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "EvaluationFormArn" => String.t() | atom(),
        "EvaluationFormId" => String.t() | atom(),
        "EvaluationFormVersion" => integer(),
        "Items" => list(list()),
        "LastModifiedBy" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Locked" => boolean(),
        "ScoringStrategy" => evaluation_form_scoring_strategy(),
        "Status" => list(any()),
        "Tags" => map(),
        "Title" => String.t() | atom()
      }

  """
  @type evaluation_form() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      real_time_contact_analysis_transcript_item_with_character_offsets() :: %{
        "CharacterOffsets" => real_time_contact_analysis_character_interval(),
        "Id" => String.t() | atom()
      }

  """
  @type real_time_contact_analysis_transcript_item_with_character_offsets() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      view_version_summary() :: %{
        "Arn" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Type" => list(any()),
        "Version" => integer(),
        "VersionDescription" => String.t() | atom()
      }

  """
  @type view_version_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      numeric_question_property_value_automation() :: %{
        "Label" => list(any())
      }

  """
  @type numeric_question_property_value_automation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_traffic_distribution_request() :: %{
        optional("AgentConfig") => agent_config(),
        optional("SignInConfig") => sign_in_config(),
        optional("TelephonyConfig") => telephony_config()
      }

  """
  @type update_traffic_distribution_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_task_template_request() :: %{}

  """
  @type delete_task_template_request() :: %{}

  @typedoc """

  ## Example:

      tag_contact_response() :: %{}

  """
  @type tag_contact_response() :: %{}

  @typedoc """

  ## Example:

      list_phone_numbers_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("PhoneNumberCountryCodes") => list(list(any())()),
        optional("PhoneNumberTypes") => list(list(any())())
      }

  """
  @type list_phone_numbers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_contact_flow_version_response() :: %{
        "ContactFlowArn" => String.t() | atom(),
        "Version" => float()
      }

  """
  @type create_contact_flow_version_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_metric_data_request() :: %{
        optional("Groupings") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("EndTime") => non_neg_integer(),
        required("Filters") => filters(),
        required("HistoricalMetrics") => list(historical_metric()),
        required("StartTime") => non_neg_integer()
      }

  """
  @type get_metric_data_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      vocabulary() :: %{
        "Arn" => String.t() | atom(),
        "Content" => String.t() | atom(),
        "FailureReason" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LanguageCode" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "State" => list(any()),
        "Tags" => map()
      }

  """
  @type vocabulary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      inbound_raw_message() :: %{
        "Body" => String.t() | atom(),
        "ContentType" => String.t() | atom(),
        "Headers" => map(),
        "Subject" => String.t() | atom()
      }

  """
  @type inbound_raw_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_routing_profile_queues_request() :: %{
        optional("ManualAssignmentQueueReferences") => list(routing_profile_queue_reference()),
        optional("QueueReferences") => list(routing_profile_queue_reference())
      }

  """
  @type disassociate_routing_profile_queues_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter_v2() :: %{
        "FilterKey" => String.t() | atom(),
        "FilterValues" => list(String.t() | atom())
      }

  """
  @type filter_v2() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_agent_status_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("DisplayOrder") => integer(),
        optional("Name") => String.t() | atom(),
        optional("ResetOrderNumber") => boolean(),
        optional("State") => list(any())
      }

  """
  @type update_agent_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_default_vocabulary_response() :: %{}

  """
  @type associate_default_vocabulary_response() :: %{}

  @typedoc """

  ## Example:

      routing_profile_search_filter() :: %{
        "TagFilter" => control_plane_tag_filter()
      }

  """
  @type routing_profile_search_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_view_metadata_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom()
      }

  """
  @type update_view_metadata_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_users_response() :: %{
        "NextToken" => String.t() | atom(),
        "UserSummaryList" => list(user_summary())
      }

  """
  @type list_users_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      application() :: %{
        "ApplicationPermissions" => list(String.t() | atom()),
        "Namespace" => String.t() | atom()
      }

  """
  @type application() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hierarchy_level() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | atom()
      }

  """
  @type hierarchy_level() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_view_request() :: %{}

  """
  @type describe_view_request() :: %{}

  @typedoc """

  ## Example:

      get_attached_file_response() :: %{
        "AssociatedResourceArn" => String.t() | atom(),
        "CreatedBy" => list(),
        "CreationTime" => String.t() | atom(),
        "DownloadUrlMetadata" => download_url_metadata(),
        "FileArn" => String.t() | atom(),
        "FileId" => String.t() | atom(),
        "FileName" => String.t() | atom(),
        "FileSizeInBytes" => float(),
        "FileStatus" => list(any()),
        "FileUseCaseType" => list(any()),
        "Tags" => map()
      }

  """
  @type get_attached_file_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_evaluation_form_response() :: %{
        "EvaluationFormArn" => String.t() | atom(),
        "EvaluationFormId" => String.t() | atom(),
        "EvaluationFormVersion" => integer()
      }

  """
  @type update_evaluation_form_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type user_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_evaluation_form_versions_response() :: %{
        "EvaluationFormVersionSummaryList" => list(evaluation_form_version_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_evaluation_form_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_evaluation_form_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("ScoringStrategy") => evaluation_form_scoring_strategy(),
        required("Items") => list(list()),
        required("Title") => String.t() | atom()
      }

  """
  @type create_evaluation_form_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_contact_recording_response() :: %{}

  """
  @type start_contact_recording_response() :: %{}

  @typedoc """

  ## Example:

      get_metric_data_v2_request() :: %{
        optional("Groupings") => list(String.t() | atom()),
        optional("Interval") => interval_details(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("EndTime") => non_neg_integer(),
        required("Filters") => list(filter_v2()),
        required("Metrics") => list(metric_v2()),
        required("ResourceArn") => String.t() | atom(),
        required("StartTime") => non_neg_integer()
      }

  """
  @type get_metric_data_v2_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      claim_phone_number_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("InstanceId") => String.t() | atom(),
        optional("PhoneNumberDescription") => String.t() | atom(),
        optional("Tags") => map(),
        optional("TargetArn") => String.t() | atom(),
        required("PhoneNumber") => String.t() | atom()
      }

  """
  @type claim_phone_number_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      email_address_info() :: %{
        "DisplayName" => String.t() | atom(),
        "EmailAddress" => String.t() | atom()
      }

  """
  @type email_address_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_contact_request() :: %{
        required("TagKeys") => list(String.t() | atom())
      }

  """
  @type untag_contact_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_quick_connects_response() :: %{
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t() | atom(),
        "QuickConnects" => list(quick_connect())
      }

  """
  @type search_quick_connects_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      contact_metric_result() :: %{
        "Name" => list(any()),
        "Value" => list()
      }

  """
  @type contact_metric_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_realtime_contact_analysis_segments_v2_response() :: %{
        "Channel" => list(any()),
        "NextToken" => String.t() | atom(),
        "Segments" => list(list()),
        "Status" => list(any())
      }

  """
  @type list_realtime_contact_analysis_segments_v2_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      integration_association_summary() :: %{
        "InstanceId" => String.t() | atom(),
        "IntegrationArn" => String.t() | atom(),
        "IntegrationAssociationArn" => String.t() | atom(),
        "IntegrationAssociationId" => String.t() | atom(),
        "IntegrationType" => list(any()),
        "SourceApplicationName" => String.t() | atom(),
        "SourceApplicationUrl" => String.t() | atom(),
        "SourceType" => list(any())
      }

  """
  @type integration_association_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_analytics_data_associations_request() :: %{
        optional("DataSetId") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_analytics_data_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_contacts_response() :: %{
        "Contacts" => list(contact_search_summary()),
        "NextToken" => String.t() | atom(),
        "TotalCount" => float()
      }

  """
  @type search_contacts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_predefined_attributes_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_predefined_attributes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_quick_connects_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("QuickConnectTypes") => list(list(any())())
      }

  """
  @type list_quick_connects_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      distribution() :: %{
        "Percentage" => integer(),
        "Region" => String.t() | atom()
      }

  """
  @type distribution() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_quality_metrics() :: %{
        "Audio" => audio_quality_metrics_info()
      }

  """
  @type agent_quality_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_push_notification_registration_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("ContactConfiguration") => contact_configuration(),
        required("DeviceToken") => String.t() | atom(),
        required("DeviceType") => list(any()),
        required("PinpointAppArn") => String.t() | atom()
      }

  """
  @type create_push_notification_registration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_contact_streaming_response() :: %{
        "StreamingId" => String.t() | atom()
      }

  """
  @type start_contact_streaming_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_user_hierarchy_request() :: %{
        optional("HierarchyGroupId") => String.t() | atom()
      }

  """
  @type update_user_hierarchy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      quick_connect_search_filter() :: %{
        "TagFilter" => control_plane_tag_filter()
      }

  """
  @type quick_connect_search_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_lambda_function_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("FunctionArn") => String.t() | atom()
      }

  """
  @type disassociate_lambda_function_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      assign_sla_action_definition() :: %{
        "CaseSlaConfiguration" => case_sla_configuration(),
        "SlaAssignmentType" => list(any())
      }

  """
  @type assign_sla_action_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_instance_storage_config_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("ResourceType") => list(any())
      }

  """
  @type disassociate_instance_storage_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_routing_profile_queues_request() :: %{
        required("QueueConfigs") => list(routing_profile_queue_config())
      }

  """
  @type update_routing_profile_queues_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conditional_operation_failed_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type conditional_operation_failed_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_user_phone_config_request() :: %{
        required("PhoneConfig") => user_phone_config()
      }

  """
  @type update_user_phone_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluation_form_question() :: %{
        "Instructions" => String.t() | atom(),
        "NotApplicableEnabled" => boolean(),
        "QuestionType" => list(any()),
        "QuestionTypeProperties" => list(),
        "RefId" => String.t() | atom(),
        "Title" => String.t() | atom(),
        "Weight" => float()
      }

  """
  @type evaluation_form_question() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      notification_recipient_type() :: %{
        "UserIds" => list(String.t() | atom()),
        "UserTags" => map()
      }

  """
  @type notification_recipient_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kinesis_stream_config() :: %{
        "StreamArn" => String.t() | atom()
      }

  """
  @type kinesis_stream_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_email_address_response() :: %{
        "CreateTimestamp" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "DisplayName" => String.t() | atom(),
        "EmailAddress" => String.t() | atom(),
        "EmailAddressArn" => String.t() | atom(),
        "EmailAddressId" => String.t() | atom(),
        "ModifiedTimestamp" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type describe_email_address_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      template_attributes() :: %{
        "CustomAttributes" => map(),
        "CustomerProfileAttributes" => String.t() | atom()
      }

  """
  @type template_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      real_time_contact_analysis_segment_event() :: %{
        "DisplayName" => String.t() | atom(),
        "EventType" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "ParticipantId" => String.t() | atom(),
        "ParticipantRole" => list(any()),
        "Time" => list()
      }

  """
  @type real_time_contact_analysis_segment_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_hierarchy_groups() :: %{
        "L1Ids" => list(String.t() | atom()),
        "L2Ids" => list(String.t() | atom()),
        "L3Ids" => list(String.t() | atom()),
        "L4Ids" => list(String.t() | atom()),
        "L5Ids" => list(String.t() | atom())
      }

  """
  @type agent_hierarchy_groups() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_use_cases_response() :: %{
        "NextToken" => String.t() | atom(),
        "UseCaseSummaryList" => list(use_case())
      }

  """
  @type list_use_cases_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_set() :: %{
        "key" => String.t() | atom(),
        "value" => String.t() | atom()
      }

  """
  @type tag_set() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      match_criteria() :: %{
        "AgentsCriteria" => agents_criteria()
      }

  """
  @type match_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      problem_detail() :: %{
        "message" => String.t() | atom()
      }

  """
  @type problem_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_queues_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SearchCriteria") => queue_search_criteria(),
        optional("SearchFilter") => queue_search_filter(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type search_queues_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_screen_sharing_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("ContactId") => String.t() | atom(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type start_screen_sharing_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_analytics_data_set_request() :: %{
        optional("TargetAccountId") => String.t() | atom(),
        required("DataSetId") => String.t() | atom()
      }

  """
  @type associate_analytics_data_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_users_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SearchCriteria") => user_search_criteria(),
        optional("SearchFilter") => user_search_filter(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type search_users_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_user_hierarchy_group_response() :: %{
        "HierarchyGroupArn" => String.t() | atom(),
        "HierarchyGroupId" => String.t() | atom()
      }

  """
  @type create_user_hierarchy_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_user_proficiencies_request() :: %{
        required("UserProficiencies") => list(user_proficiency_disassociate())
      }

  """
  @type disassociate_user_proficiencies_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      contact_data_request() :: %{
        "Attributes" => map(),
        "Campaign" => campaign(),
        "CustomerEndpoint" => endpoint(),
        "QueueId" => String.t() | atom(),
        "RequestIdentifier" => String.t() | atom(),
        "SystemEndpoint" => endpoint()
      }

  """
  @type contact_data_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_phone_number_contact_flow_request() :: %{
        required("InstanceId") => String.t() | atom()
      }

  """
  @type disassociate_phone_number_contact_flow_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      contact_analysis() :: %{
        "Transcript" => transcript()
      }

  """
  @type contact_analysis() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      recording_info() :: %{
        "DeletionReason" => String.t() | atom(),
        "FragmentStartNumber" => String.t() | atom(),
        "FragmentStopNumber" => String.t() | atom(),
        "Location" => String.t() | atom(),
        "MediaStreamType" => list(any()),
        "ParticipantType" => list(any()),
        "StartTimestamp" => non_neg_integer(),
        "Status" => list(any()),
        "StopTimestamp" => non_neg_integer(),
        "StorageType" => list(any())
      }

  """
  @type recording_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_approved_origins_response() :: %{
        "NextToken" => String.t() | atom(),
        "Origins" => list(String.t() | atom())
      }

  """
  @type list_approved_origins_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      security_profile_search_summary() :: %{
        "Arn" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "OrganizationResourceId" => String.t() | atom(),
        "SecurityProfileName" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type security_profile_search_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agents_criteria() :: %{
        "AgentIds" => list(String.t() | atom())
      }

  """
  @type agents_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      effective_hours_of_operations() :: %{
        "Date" => String.t() | atom(),
        "OperationalHours" => list(operational_hour())
      }

  """
  @type effective_hours_of_operations() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_view_response() :: %{
        "View" => view()
      }

  """
  @type create_view_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      routing_profile_search_criteria() :: %{
        "AndConditions" => list(routing_profile_search_criteria()),
        "OrConditions" => list(routing_profile_search_criteria()),
        "StringCondition" => string_condition()
      }

  """
  @type routing_profile_search_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluation_form_numeric_question_option() :: %{
        "AutomaticFail" => boolean(),
        "MaxValue" => integer(),
        "MinValue" => integer(),
        "Score" => integer()
      }

  """
  @type evaluation_form_numeric_question_option() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_task_contact_request() :: %{
        optional("Attributes") => map(),
        optional("ClientToken") => String.t() | atom(),
        optional("ContactFlowId") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("PreviousContactId") => String.t() | atom(),
        optional("QuickConnectId") => String.t() | atom(),
        optional("References") => map(),
        optional("RelatedContactId") => String.t() | atom(),
        optional("ScheduledTime") => non_neg_integer(),
        optional("SegmentAttributes") => map(),
        optional("TaskTemplateId") => String.t() | atom(),
        required("InstanceId") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type start_task_contact_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_case_action_definition() :: %{
        "Fields" => list(field_value()),
        "TemplateId" => String.t() | atom()
      }

  """
  @type create_case_action_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_rule_response() :: %{
        "RuleArn" => String.t() | atom(),
        "RuleId" => String.t() | atom()
      }

  """
  @type create_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      current_metric_result() :: %{
        "Collections" => list(current_metric_data()),
        "Dimensions" => dimensions()
      }

  """
  @type current_metric_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      condition() :: %{
        "NumberCondition" => number_condition(),
        "StringCondition" => string_condition()
      }

  """
  @type condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_phone_number_contact_flow_request() :: %{
        required("ContactFlowId") => String.t() | atom(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type associate_phone_number_contact_flow_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_predefined_attribute_request() :: %{
        optional("AttributeConfiguration") => input_predefined_attribute_configuration(),
        optional("Purposes") => list(String.t() | atom()),
        optional("Values") => list()
      }

  """
  @type update_predefined_attribute_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_email_addresses_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SearchCriteria") => email_address_search_criteria(),
        optional("SearchFilter") => email_address_search_filter(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type search_email_addresses_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_integration_associations_request() :: %{
        optional("IntegrationArn") => String.t() | atom(),
        optional("IntegrationType") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_integration_associations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_queue_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("MaxContacts") => integer(),
        optional("OutboundCallerConfig") => outbound_caller_config(),
        optional("OutboundEmailConfig") => outbound_email_config(),
        optional("QuickConnectIds") => list(String.t() | atom()),
        optional("Tags") => map(),
        required("HoursOfOperationId") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_queue_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      attribute_and_condition() :: %{
        "HierarchyGroupCondition" => hierarchy_group_condition(),
        "TagConditions" => list(tag_condition())
      }

  """
  @type attribute_and_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      searchable_agent_criteria_step() :: %{
        "AgentIds" => list(String.t() | atom()),
        "MatchType" => list(any())
      }

  """
  @type searchable_agent_criteria_step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_contact_flow_module_response() :: %{}

  """
  @type delete_contact_flow_module_response() :: %{}

  @typedoc """

  ## Example:

      email_address_metadata() :: %{
        "Description" => String.t() | atom(),
        "DisplayName" => String.t() | atom(),
        "EmailAddress" => String.t() | atom(),
        "EmailAddressArn" => String.t() | atom(),
        "EmailAddressId" => String.t() | atom()
      }

  """
  @type email_address_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      chat_participant_role_config() :: %{
        "ParticipantTimerConfigList" => list(participant_timer_configuration())
      }

  """
  @type chat_participant_role_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      single_select_question_rule_category_automation() :: %{
        "Category" => String.t() | atom(),
        "Condition" => list(any()),
        "OptionRefId" => String.t() | atom()
      }

  """
  @type single_select_question_rule_category_automation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_status_identifier() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom()
      }

  """
  @type agent_status_identifier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lex_bot() :: %{
        "LexRegion" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type lex_bot() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      device_info() :: %{
        "OperatingSystem" => String.t() | atom(),
        "PlatformName" => String.t() | atom(),
        "PlatformVersion" => String.t() | atom()
      }

  """
  @type device_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hierarchy_path() :: %{
        "LevelFive" => hierarchy_group_summary(),
        "LevelFour" => hierarchy_group_summary(),
        "LevelOne" => hierarchy_group_summary(),
        "LevelThree" => hierarchy_group_summary(),
        "LevelTwo" => hierarchy_group_summary()
      }

  """
  @type hierarchy_path() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      quick_connect_config() :: %{
        "PhoneConfig" => phone_number_quick_connect_config(),
        "QueueConfig" => queue_quick_connect_config(),
        "QuickConnectType" => list(any()),
        "UserConfig" => user_quick_connect_config()
      }

  """
  @type quick_connect_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_instances_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_instances_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      connection_data() :: %{
        "Attendee" => attendee(),
        "Meeting" => meeting()
      }

  """
  @type connection_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      monitor_contact_response() :: %{
        "ContactArn" => String.t() | atom(),
        "ContactId" => String.t() | atom()
      }

  """
  @type monitor_contact_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_instance_storage_config_response() :: %{
        "AssociationId" => String.t() | atom()
      }

  """
  @type associate_instance_storage_config_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_traffic_distribution_group_users_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_traffic_distribution_group_users_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_user_request() :: %{}

  """
  @type delete_user_request() :: %{}

  @typedoc """

  ## Example:

      get_metric_data_response() :: %{
        "MetricResults" => list(historical_metric_result()),
        "NextToken" => String.t() | atom()
      }

  """
  @type get_metric_data_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_evaluation_forms_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_evaluation_forms_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      contact_flow_module_summary() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "State" => list(any())
      }

  """
  @type contact_flow_module_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      flow_association_summary() :: %{
        "FlowId" => String.t() | atom(),
        "ResourceId" => String.t() | atom(),
        "ResourceType" => list(any())
      }

  """
  @type flow_association_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule() :: %{
        "Actions" => list(rule_action()),
        "CreatedTime" => non_neg_integer(),
        "Function" => String.t() | atom(),
        "LastUpdatedBy" => String.t() | atom(),
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "PublishStatus" => list(any()),
        "RuleArn" => String.t() | atom(),
        "RuleId" => String.t() | atom(),
        "Tags" => map(),
        "TriggerEventSource" => rule_trigger_event_source()
      }

  """
  @type rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_user_hierarchy_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_user_hierarchy_groups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sort() :: %{
        "FieldName" => list(any()),
        "Order" => list(any())
      }

  """
  @type sort() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      contact() :: %{
        "QueueTimeAdjustmentSeconds" => integer(),
        "RelatedContactId" => String.t() | atom(),
        "InitiationTimestamp" => non_neg_integer(),
        "Tags" => map(),
        "AnsweringMachineDetectionStatus" => list(any()),
        "AgentInfo" => agent_info(),
        "LastPausedTimestamp" => non_neg_integer(),
        "Channel" => list(any()),
        "DisconnectReason" => String.t() | atom(),
        "LastResumedTimestamp" => non_neg_integer(),
        "LastUpdateTimestamp" => non_neg_integer(),
        "ContactDetails" => contact_details(),
        "ChatMetrics" => chat_metrics(),
        "QueueInfo" => queue_info(),
        "SegmentAttributes" => map(),
        "Customer" => customer(),
        "ContactAssociationId" => String.t() | atom(),
        "RoutingCriteria" => routing_criteria(),
        "WisdomInfo" => wisdom_info(),
        "InitiationMethod" => list(any()),
        "Id" => String.t() | atom(),
        "AdditionalEmailRecipients" => additional_email_recipients(),
        "TaskTemplateInfo" => task_template_info_v2(),
        "Campaign" => campaign(),
        "PreviousContactId" => String.t() | atom(),
        "ContactEvaluations" => map(),
        "TotalPauseDurationInSeconds" => integer(),
        "CustomerEndpoint" => endpoint_info(),
        "SystemEndpoint" => endpoint_info(),
        "CustomerId" => String.t() | atom(),
        "QueuePriority" => float(),
        "ScheduledTimestamp" => non_neg_integer(),
        "Arn" => String.t() | atom(),
        "DisconnectTimestamp" => non_neg_integer(),
        "QualityMetrics" => quality_metrics(),
        "Name" => String.t() | atom(),
        "InitialContactId" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "ConnectedToSystemTimestamp" => non_neg_integer(),
        "DisconnectDetails" => disconnect_details(),
        "TotalPauseCount" => integer(),
        "CustomerVoiceActivity" => customer_voice_activity(),
        "Attributes" => map(),
        "Recordings" => list(recording_info())
      }

  """
  @type contact() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_routing_profile_default_outbound_queue_request() :: %{
        required("DefaultOutboundQueueId") => String.t() | atom()
      }

  """
  @type update_routing_profile_default_outbound_queue_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      update_routing_profile_concurrency_request() :: %{
        required("MediaConcurrencies") => list(media_concurrency())
      }

  """
  @type update_routing_profile_concurrency_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      input_predefined_attribute_configuration() :: %{
        "EnableValueValidationOnAssociation" => boolean()
      }

  """
  @type input_predefined_attribute_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      routing_profile_queue_reference() :: %{
        "Channel" => list(any()),
        "QueueId" => String.t() | atom()
      }

  """
  @type routing_profile_queue_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      control_plane_user_attribute_filter() :: %{
        "AndCondition" => attribute_and_condition(),
        "HierarchyGroupCondition" => hierarchy_group_condition(),
        "OrConditions" => list(attribute_and_condition()),
        "TagCondition" => tag_condition()
      }

  """
  @type control_plane_user_attribute_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_agent_status_response() :: %{
        "AgentStatusARN" => String.t() | atom(),
        "AgentStatusId" => String.t() | atom()
      }

  """
  @type create_agent_status_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_views_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Type") => list(any())
      }

  """
  @type list_views_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_contact_streaming_request() :: %{
        required("ContactId") => String.t() | atom(),
        required("InstanceId") => String.t() | atom(),
        required("StreamingId") => String.t() | atom()
      }

  """
  @type stop_contact_streaming_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_reference() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom()
      }

  """
  @type user_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_contact_flow_metadata_request() :: %{
        optional("ContactFlowState") => list(any()),
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom()
      }

  """
  @type update_contact_flow_metadata_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      state_transition() :: %{
        "State" => list(any()),
        "StateEndTimestamp" => non_neg_integer(),
        "StateStartTimestamp" => non_neg_integer()
      }

  """
  @type state_transition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_hours_of_operation_overrides_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SearchCriteria") => hours_of_operation_override_search_criteria(),
        optional("SearchFilter") => hours_of_operation_search_filter(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type search_hours_of_operation_overrides_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      routing_profile_summary() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | atom()
      }

  """
  @type routing_profile_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dismiss_user_contact_request() :: %{
        required("ContactId") => String.t() | atom()
      }

  """
  @type dismiss_user_contact_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      voice_recording_configuration() :: %{
        "IvrRecordingTrack" => list(any()),
        "VoiceRecordingTrack" => list(any())
      }

  """
  @type voice_recording_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluation_form_numeric_question_properties() :: %{
        "Automation" => list(),
        "MaxValue" => integer(),
        "MinValue" => integer(),
        "Options" => list(evaluation_form_numeric_question_option())
      }

  """
  @type evaluation_form_numeric_question_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      additional_email_recipients() :: %{
        "CcList" => list(email_recipient()),
        "ToList" => list(email_recipient())
      }

  """
  @type additional_email_recipients() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_instance_attributes_response() :: %{
        "Attributes" => list(attribute()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_instance_attributes_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_user_status_request() :: %{
        required("AgentStatusId") => String.t() | atom()
      }

  """
  @type put_user_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hierarchy_group() :: %{
        "Arn" => String.t() | atom(),
        "HierarchyPath" => hierarchy_path(),
        "Id" => String.t() | atom(),
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "LevelId" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type hierarchy_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      searchable_contact_attributes_criteria() :: %{
        "Key" => String.t() | atom(),
        "Values" => list(String.t() | atom())
      }

  """
  @type searchable_contact_attributes_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_view_versions_response() :: %{
        "NextToken" => String.t() | atom(),
        "ViewVersionSummaryList" => list(view_version_summary())
      }

  """
  @type list_view_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      endpoint() :: %{
        "Address" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type endpoint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      queue_reference() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom()
      }

  """
  @type queue_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      interval_details() :: %{
        "IntervalPeriod" => list(any()),
        "TimeZone" => String.t() | atom()
      }

  """
  @type interval_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      contact_evaluation() :: %{
        "DeleteTimestamp" => non_neg_integer(),
        "EndTimestamp" => non_neg_integer(),
        "EvaluationArn" => String.t() | atom(),
        "ExportLocation" => String.t() | atom(),
        "FormId" => String.t() | atom(),
        "StartTimestamp" => non_neg_integer(),
        "Status" => list(any())
      }

  """
  @type contact_evaluation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_contact_flow_modules_response() :: %{
        "ContactFlowModulesSummaryList" => list(contact_flow_module_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_contact_flow_modules_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_action() :: %{
        "ActionType" => list(any()),
        "AssignContactCategoryAction" => assign_contact_category_action_definition(),
        "AssignSlaAction" => assign_sla_action_definition(),
        "CreateCaseAction" => create_case_action_definition(),
        "EndAssociatedTasksAction" => end_associated_tasks_action_definition(),
        "EventBridgeAction" => event_bridge_action_definition(),
        "SendNotificationAction" => send_notification_action_definition(),
        "SubmitAutoEvaluationAction" => submit_auto_evaluation_action_definition(),
        "TaskAction" => task_action_definition(),
        "UpdateCaseAction" => update_case_action_definition()
      }

  """
  @type rule_action() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_instances_response() :: %{
        "InstanceSummaryList" => list(instance_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_instances_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_routing_profile_agent_availability_timer_request() :: %{
        required("AgentAvailabilityTimer") => list(any())
      }

  """
  @type update_routing_profile_agent_availability_timer_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      resume_contact_response() :: %{}

  """
  @type resume_contact_response() :: %{}

  @typedoc """

  ## Example:

      list_prompts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_prompts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_email_addresses_response() :: %{
        "ApproximateTotalCount" => float(),
        "EmailAddresses" => list(email_address_metadata()),
        "NextToken" => String.t() | atom()
      }

  """
  @type search_email_addresses_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_contact_evaluation_request() :: %{}

  """
  @type delete_contact_evaluation_request() :: %{}

  @typedoc """

  ## Example:

      list_security_profile_permissions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_security_profile_permissions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_case_action_definition() :: %{
        "Fields" => list(field_value())
      }

  """
  @type update_case_action_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_contact_response() :: %{}

  """
  @type untag_contact_response() :: %{}

  @typedoc """

  ## Example:

      security_profile() :: %{
        "AllowedAccessControlHierarchyGroupId" => String.t() | atom(),
        "AllowedAccessControlTags" => map(),
        "Arn" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "HierarchyRestrictedResources" => list(String.t() | atom()),
        "Id" => String.t() | atom(),
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "OrganizationResourceId" => String.t() | atom(),
        "SecurityProfileName" => String.t() | atom(),
        "TagRestrictedResources" => list(String.t() | atom()),
        "Tags" => map()
      }

  """
  @type security_profile() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      quick_connect_summary() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "QuickConnectType" => list(any())
      }

  """
  @type quick_connect_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_security_key_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("Key") => String.t() | atom()
      }

  """
  @type associate_security_key_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      current_metric() :: %{
        "Name" => list(any()),
        "Unit" => list(any())
      }

  """
  @type current_metric() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      traffic_distribution_group() :: %{
        "Arn" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "InstanceArn" => String.t() | atom(),
        "IsDefault" => boolean(),
        "Name" => String.t() | atom(),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type traffic_distribution_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_hierarchy_group_search_criteria() :: %{
        "AndConditions" => list(user_hierarchy_group_search_criteria()),
        "OrConditions" => list(user_hierarchy_group_search_criteria()),
        "StringCondition" => string_condition()
      }

  """
  @type user_hierarchy_group_search_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hours_of_operation_override() :: %{
        "Config" => list(hours_of_operation_override_config()),
        "Description" => String.t() | atom(),
        "EffectiveFrom" => String.t() | atom(),
        "EffectiveTill" => String.t() | atom(),
        "HoursOfOperationArn" => String.t() | atom(),
        "HoursOfOperationId" => String.t() | atom(),
        "HoursOfOperationOverrideId" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type hours_of_operation_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_analytics_data_lake_data_sets_response() :: %{
        "NextToken" => String.t() | atom(),
        "Results" => list(analytics_data_sets_result())
      }

  """
  @type list_analytics_data_lake_data_sets_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_summary() :: %{
        "ActionSummaries" => list(action_summary()),
        "CreatedTime" => non_neg_integer(),
        "EventSourceName" => list(any()),
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "PublishStatus" => list(any()),
        "RuleArn" => String.t() | atom(),
        "RuleId" => String.t() | atom()
      }

  """
  @type rule_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_security_profile_applications_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_security_profile_applications_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_routing_profile_name_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom()
      }

  """
  @type update_routing_profile_name_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      contact_flow_module_search_filter() :: %{
        "TagFilter" => control_plane_tag_filter()
      }

  """
  @type contact_flow_module_search_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_hours_of_operation_override_response() :: %{
        "HoursOfOperationOverride" => hours_of_operation_override()
      }

  """
  @type describe_hours_of_operation_override_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_routing_profile_queues_response() :: %{
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "NextToken" => String.t() | atom(),
        "RoutingProfileQueueConfigSummaryList" => list(routing_profile_queue_config_summary())
      }

  """
  @type list_routing_profile_queues_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_contact_flow_modules_request() :: %{
        optional("ContactFlowModuleState") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_contact_flow_modules_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_bot_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("LexBot") => lex_bot(),
        optional("LexV2Bot") => lex_v2_bot()
      }

  """
  @type associate_bot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_lex_bot_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("LexBot") => lex_bot()
      }

  """
  @type associate_lex_bot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_security_profile_request() :: %{}

  """
  @type delete_security_profile_request() :: %{}

  @typedoc """

  ## Example:

      describe_user_response() :: %{
        "User" => user()
      }

  """
  @type describe_user_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      string_condition() :: %{
        "ComparisonType" => list(any()),
        "FieldName" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type string_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_bots_response() :: %{
        "LexBots" => list(lex_bot_config()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_bots_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      routing_criteria_input_step() :: %{
        "Expiry" => routing_criteria_input_step_expiry(),
        "Expression" => expression()
      }

  """
  @type routing_criteria_input_step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      contact_search_summary_agent_info() :: %{
        "ConnectedToAgentTimestamp" => non_neg_integer(),
        "Id" => String.t() | atom()
      }

  """
  @type contact_search_summary_agent_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      quality_metrics() :: %{
        "Agent" => agent_quality_metrics(),
        "Customer" => customer_quality_metrics()
      }

  """
  @type quality_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_user_hierarchy_structure_request() :: %{
        required("HierarchyStructure") => hierarchy_structure_update()
      }

  """
  @type update_user_hierarchy_structure_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_traffic_distribution_group_request() :: %{}

  """
  @type delete_traffic_distribution_group_request() :: %{}

  @typedoc """

  ## Example:

      list_contact_flow_versions_response() :: %{
        "ContactFlowVersionSummaryList" => list(contact_flow_version_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_contact_flow_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      outbound_raw_message() :: %{
        "Body" => String.t() | atom(),
        "ContentType" => String.t() | atom(),
        "Subject" => String.t() | atom()
      }

  """
  @type outbound_raw_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_rule_request() :: %{}

  """
  @type describe_rule_request() :: %{}

  @typedoc """

  ## Example:

      deactivate_evaluation_form_request() :: %{
        required("EvaluationFormVersion") => integer()
      }

  """
  @type deactivate_evaluation_form_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_user_security_profiles_request() :: %{
        required("SecurityProfileIds") => list(String.t() | atom())
      }

  """
  @type update_user_security_profiles_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      instance_status_reason() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type instance_status_reason() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_agent_status_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("DisplayOrder") => integer(),
        optional("Tags") => map(),
        required("Name") => String.t() | atom(),
        required("State") => list(any())
      }

  """
  @type create_agent_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_push_notification_registration_request() :: %{
        required("ContactId") => String.t() | atom()
      }

  """
  @type delete_push_notification_registration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resume_contact_request() :: %{
        optional("ContactFlowId") => String.t() | atom(),
        required("ContactId") => String.t() | atom(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type resume_contact_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_traffic_distribution_group_user_response() :: %{}

  """
  @type associate_traffic_distribution_group_user_response() :: %{}

  @typedoc """

  ## Example:

      customer_voice_activity() :: %{
        "GreetingEndTimestamp" => non_neg_integer(),
        "GreetingStartTimestamp" => non_neg_integer()
      }

  """
  @type customer_voice_activity() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_contact_routing_data_response() :: %{}

  """
  @type update_contact_routing_data_response() :: %{}

  @typedoc """

  ## Example:

      get_flow_association_request() :: %{}

  """
  @type get_flow_association_request() :: %{}

  @typedoc """

  ## Example:

      delete_integration_association_request() :: %{}

  """
  @type delete_integration_association_request() :: %{}

  @typedoc """

  ## Example:

      list_security_keys_response() :: %{
        "NextToken" => String.t() | atom(),
        "SecurityKeys" => list(security_key())
      }

  """
  @type list_security_keys_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_view_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("Tags") => map(),
        required("Content") => view_input_content(),
        required("Name") => String.t() | atom(),
        required("Status") => list(any())
      }

  """
  @type create_view_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_prompt_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("S3Uri") => String.t() | atom()
      }

  """
  @type update_prompt_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_search_criteria() :: %{
        "AndConditions" => list(user_search_criteria()),
        "HierarchyGroupCondition" => hierarchy_group_condition(),
        "ListCondition" => list_condition(),
        "OrConditions" => list(user_search_criteria()),
        "StringCondition" => string_condition()
      }

  """
  @type user_search_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_contact_evaluation_request() :: %{}

  """
  @type describe_contact_evaluation_request() :: %{}

  @typedoc """

  ## Example:

      agent_status_search_filter() :: %{
        "AttributeFilter" => control_plane_attribute_filter()
      }

  """
  @type agent_status_search_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_traffic_distribution_response() :: %{
        "AgentConfig" => agent_config(),
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "SignInConfig" => sign_in_config(),
        "TelephonyConfig" => telephony_config()
      }

  """
  @type get_traffic_distribution_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      transfer_contact_response() :: %{
        "ContactArn" => String.t() | atom(),
        "ContactId" => String.t() | atom()
      }

  """
  @type transfer_contact_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_view_content_request() :: %{
        required("Content") => view_input_content(),
        required("Status") => list(any())
      }

  """
  @type update_view_content_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_contact_evaluation_response() :: %{
        "EvaluationArn" => String.t() | atom(),
        "EvaluationId" => String.t() | atom()
      }

  """
  @type update_contact_evaluation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluation_form_single_select_question_option() :: %{
        "AutomaticFail" => boolean(),
        "RefId" => String.t() | atom(),
        "Score" => integer(),
        "Text" => String.t() | atom()
      }

  """
  @type evaluation_form_single_select_question_option() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_view_content_response() :: %{
        "View" => view()
      }

  """
  @type update_view_content_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_email_contact_request() :: %{
        optional("AdditionalRecipients") => inbound_additional_recipients(),
        optional("Attachments") => list(email_attachment()),
        optional("Attributes") => map(),
        optional("ClientToken") => String.t() | atom(),
        optional("ContactFlowId") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("References") => map(),
        optional("RelatedContactId") => String.t() | atom(),
        optional("SegmentAttributes") => map(),
        required("DestinationEmailAddress") => String.t() | atom(),
        required("EmailMessage") => inbound_email_content(),
        required("FromEmailAddress") => email_address_info(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type start_email_contact_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_instance_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("DirectoryId") => String.t() | atom(),
        optional("InstanceAlias") => String.t() | atom(),
        optional("Tags") => map(),
        required("IdentityManagementType") => list(any()),
        required("InboundCallsEnabled") => boolean(),
        required("OutboundCallsEnabled") => boolean()
      }

  """
  @type create_instance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hierarchy_group_summary_reference() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom()
      }

  """
  @type hierarchy_group_summary_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hierarchy_structure() :: %{
        "LevelFive" => hierarchy_level(),
        "LevelFour" => hierarchy_level(),
        "LevelOne" => hierarchy_level(),
        "LevelThree" => hierarchy_level(),
        "LevelTwo" => hierarchy_level()
      }

  """
  @type hierarchy_structure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_contact_streaming_response() :: %{}

  """
  @type stop_contact_streaming_response() :: %{}

  @typedoc """

  ## Example:

      describe_instance_response() :: %{
        "Instance" => instance(),
        "ReplicationConfiguration" => replication_configuration()
      }

  """
  @type describe_instance_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      new_session_details() :: %{
        "Attributes" => map(),
        "ParticipantDetails" => participant_details(),
        "StreamingConfiguration" => chat_streaming_configuration(),
        "SupportedMessagingContentTypes" => list(String.t() | atom())
      }

  """
  @type new_session_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hierarchy_groups() :: %{
        "Level1" => agent_hierarchy_group(),
        "Level2" => agent_hierarchy_group(),
        "Level3" => agent_hierarchy_group(),
        "Level4" => agent_hierarchy_group(),
        "Level5" => agent_hierarchy_group()
      }

  """
  @type hierarchy_groups() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_queue_outbound_caller_config_request() :: %{
        required("OutboundCallerConfig") => outbound_caller_config()
      }

  """
  @type update_queue_outbound_caller_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_contact_attributes_response() :: %{
        "Attributes" => map()
      }

  """
  @type get_contact_attributes_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      instance() :: %{
        "Arn" => String.t() | atom(),
        "CreatedTime" => non_neg_integer(),
        "Id" => String.t() | atom(),
        "IdentityManagementType" => list(any()),
        "InboundCallsEnabled" => boolean(),
        "InstanceAccessUrl" => String.t() | atom(),
        "InstanceAlias" => String.t() | atom(),
        "InstanceStatus" => list(any()),
        "OutboundCallsEnabled" => boolean(),
        "ServiceRole" => String.t() | atom(),
        "StatusReason" => instance_status_reason(),
        "Tags" => map()
      }

  """
  @type instance() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sign_in_config() :: %{
        "Distributions" => list(sign_in_distribution())
      }

  """
  @type sign_in_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_routing_profiles_response() :: %{
        "NextToken" => String.t() | atom(),
        "RoutingProfileSummaryList" => list(routing_profile_summary())
      }

  """
  @type list_routing_profiles_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_parameter_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type invalid_parameter_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_hours_of_operation_overrides_response() :: %{
        "ApproximateTotalCount" => float(),
        "HoursOfOperationOverrides" => list(hours_of_operation_override()),
        "NextToken" => String.t() | atom()
      }

  """
  @type search_hours_of_operation_overrides_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_contact_flow_module_response() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom()
      }

  """
  @type create_contact_flow_module_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_web_r_t_c_contact_response() :: %{
        "ConnectionData" => connection_data(),
        "ContactId" => String.t() | atom(),
        "ParticipantId" => String.t() | atom(),
        "ParticipantToken" => String.t() | atom()
      }

  """
  @type start_web_r_t_c_contact_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      current_metric_sort_criteria() :: %{
        "SortByMetric" => list(any()),
        "SortOrder" => list(any())
      }

  """
  @type current_metric_sort_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_traffic_distribution_response() :: %{}

  """
  @type update_traffic_distribution_response() :: %{}

  @typedoc """

  ## Example:

      security_key() :: %{
        "AssociationId" => String.t() | atom(),
        "CreationTime" => non_neg_integer(),
        "Key" => String.t() | atom()
      }

  """
  @type security_key() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_rules_response() :: %{
        "NextToken" => String.t() | atom(),
        "RuleSummaryList" => list(rule_summary())
      }

  """
  @type list_rules_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_hours_of_operation_override_response() :: %{
        "HoursOfOperationOverrideId" => String.t() | atom()
      }

  """
  @type create_hours_of_operation_override_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_resource_tags_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ResourceTypes") => list(String.t() | atom()),
        optional("SearchCriteria") => resource_tags_search_criteria(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type search_resource_tags_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disconnect_reason() :: %{
        "Code" => String.t() | atom()
      }

  """
  @type disconnect_reason() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      replicate_instance_response() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom()
      }

  """
  @type replicate_instance_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      real_time_contact_analysis_character_interval() :: %{
        "BeginOffsetChar" => integer(),
        "EndOffsetChar" => integer()
      }

  """
  @type real_time_contact_analysis_character_interval() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      field_value() :: %{
        "Id" => String.t() | atom(),
        "Value" => field_value_union()
      }

  """
  @type field_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      task_template_constraints() :: %{
        "InvisibleFields" => list(invisible_field_info()),
        "ReadOnlyFields" => list(read_only_field_info()),
        "RequiredFields" => list(required_field_info())
      }

  """
  @type task_template_constraints() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_contact_routing_data_request() :: %{
        optional("QueuePriority") => float(),
        optional("QueueTimeAdjustmentSeconds") => integer(),
        optional("RoutingCriteria") => routing_criteria_input()
      }

  """
  @type update_contact_routing_data_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_traffic_distribution_group_response() :: %{
        "TrafficDistributionGroup" => traffic_distribution_group()
      }

  """
  @type describe_traffic_distribution_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_hours_of_operations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_hours_of_operations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_user_hierarchy_group_response() :: %{
        "HierarchyGroup" => hierarchy_group()
      }

  """
  @type describe_user_hierarchy_group_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      audio_quality_metrics_info() :: %{
        "PotentialQualityIssues" => list(String.t() | atom()),
        "QualityScore" => float()
      }

  """
  @type audio_quality_metrics_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_queue_name_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom()
      }

  """
  @type update_queue_name_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_contact_request() :: %{
        required("ContactId") => String.t() | atom(),
        required("InstanceId") => String.t() | atom(),
        required("Tags") => map()
      }

  """
  @type tag_contact_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_contact_evaluation_response() :: %{
        "EvaluationArn" => String.t() | atom(),
        "EvaluationId" => String.t() | atom()
      }

  """
  @type start_contact_evaluation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_routing_profiles_response() :: %{
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t() | atom(),
        "RoutingProfiles" => list(routing_profile())
      }

  """
  @type search_routing_profiles_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      queue_quick_connect_config() :: %{
        "ContactFlowId" => String.t() | atom(),
        "QueueId" => String.t() | atom()
      }

  """
  @type queue_quick_connect_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_proficiency() :: %{
        "AttributeName" => String.t() | atom(),
        "AttributeValue" => String.t() | atom(),
        "Level" => float()
      }

  """
  @type user_proficiency() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      endpoint_info() :: %{
        "Address" => String.t() | atom(),
        "DisplayName" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type endpoint_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      source_campaign() :: %{
        "CampaignId" => String.t() | atom(),
        "OutboundRequestId" => String.t() | atom()
      }

  """
  @type source_campaign() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      queue_search_criteria() :: %{
        "AndConditions" => list(queue_search_criteria()),
        "OrConditions" => list(queue_search_criteria()),
        "QueueTypeCondition" => list(any()),
        "StringCondition" => string_condition()
      }

  """
  @type queue_search_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      submit_contact_evaluation_request() :: %{
        optional("Answers") => map(),
        optional("Notes") => map()
      }

  """
  @type submit_contact_evaluation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      common_attribute_and_condition() :: %{
        "TagConditions" => list(tag_condition())
      }

  """
  @type common_attribute_and_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_user_request() :: %{}

  """
  @type describe_user_request() :: %{}

  @typedoc """

  ## Example:

      associate_user_proficiencies_request() :: %{
        required("UserProficiencies") => list(user_proficiency())
      }

  """
  @type associate_user_proficiencies_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_security_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SearchCriteria") => security_profile_search_criteria(),
        optional("SearchFilter") => security_profiles_search_filter(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type search_security_profiles_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_prompts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SearchCriteria") => prompt_search_criteria(),
        optional("SearchFilter") => prompt_search_filter(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type search_prompts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_security_profile_request() :: %{}

  """
  @type describe_security_profile_request() :: %{}

  @typedoc """

  ## Example:

      search_security_profiles_response() :: %{
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t() | atom(),
        "SecurityProfiles" => list(security_profile_search_summary())
      }

  """
  @type search_security_profiles_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_config() :: %{
        "Distributions" => list(distribution())
      }

  """
  @type agent_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluation_answer_input() :: %{
        "Value" => list()
      }

  """
  @type evaluation_answer_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      event_bridge_action_definition() :: %{
        "Name" => String.t() | atom()
      }

  """
  @type event_bridge_action_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_default_vocabularies_request() :: %{
        optional("LanguageCode") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_default_vocabularies_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_participant_authentication_request() :: %{
        optional("Code") => String.t() | atom(),
        optional("Error") => String.t() | atom(),
        optional("ErrorDescription") => String.t() | atom(),
        required("InstanceId") => String.t() | atom(),
        required("State") => String.t() | atom()
      }

  """
  @type update_participant_authentication_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_contact_references_request() :: %{
        optional("NextToken") => String.t() | atom(),
        required("ReferenceTypes") => list(list(any())())
      }

  """
  @type list_contact_references_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      meeting_features_configuration() :: %{
        "Audio" => audio_features()
      }

  """
  @type meeting_features_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_contact_attributes_request() :: %{
        required("Attributes") => map(),
        required("InitialContactId") => String.t() | atom(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type update_contact_attributes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_contact_request() :: %{
        optional("CustomerEndpoint") => endpoint(),
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("QueueInfo") => queue_info_input(),
        optional("References") => map(),
        optional("SegmentAttributes") => map(),
        optional("SystemEndpoint") => endpoint(),
        optional("UserInfo") => user_info()
      }

  """
  @type update_contact_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_contact_flow_request() :: %{}

  """
  @type describe_contact_flow_request() :: %{}

  @typedoc """

  ## Example:

      list_queue_quick_connects_response() :: %{
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "NextToken" => String.t() | atom(),
        "QuickConnectSummaryList" => list(quick_connect_summary())
      }

  """
  @type list_queue_quick_connects_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_associated_contacts_response() :: %{
        "ContactSummaryList" => list(associated_contact_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_associated_contacts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      outbound_additional_recipients() :: %{
        "CcEmailAddresses" => list(email_address_info())
      }

  """
  @type outbound_additional_recipients() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      searchable_contact_attributes() :: %{
        "Criteria" => list(searchable_contact_attributes_criteria()),
        "MatchType" => list(any())
      }

  """
  @type searchable_contact_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_routing_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_routing_profiles_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_put_contact_response() :: %{
        "FailedRequestList" => list(failed_request()),
        "SuccessfulRequestList" => list(successful_request())
      }

  """
  @type batch_put_contact_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_contact_flow_response() :: %{
        "ContactFlow" => contact_flow()
      }

  """
  @type describe_contact_flow_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_contact_flow_content_response() :: %{}

  """
  @type update_contact_flow_content_response() :: %{}

  @typedoc """

  ## Example:

      stop_contact_response() :: %{}

  """
  @type stop_contact_response() :: %{}

  @typedoc """

  ## Example:

      invalid_contact_flow_module_exception() :: %{
        "Problems" => list(problem_detail())
      }

  """
  @type invalid_contact_flow_module_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      contact_flow() :: %{
        "Arn" => String.t() | atom(),
        "Content" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "FlowContentSha256" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "State" => list(any()),
        "Status" => list(any()),
        "Tags" => map(),
        "Type" => list(any()),
        "Version" => float(),
        "VersionDescription" => String.t() | atom()
      }

  """
  @type contact_flow() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_traffic_distribution_groups_response() :: %{
        "NextToken" => String.t() | atom(),
        "TrafficDistributionGroupSummaryList" => list(traffic_distribution_group_summary())
      }

  """
  @type list_traffic_distribution_groups_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_contact_flows_response() :: %{
        "ContactFlowSummaryList" => list(contact_flow_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_contact_flows_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      idempotency_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type idempotency_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_quick_connects_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SearchCriteria") => quick_connect_search_criteria(),
        optional("SearchFilter") => quick_connect_search_filter(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type search_quick_connects_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluation_form_section() :: %{
        "Instructions" => String.t() | atom(),
        "Items" => list(list()),
        "RefId" => String.t() | atom(),
        "Title" => String.t() | atom(),
        "Weight" => float()
      }

  """
  @type evaluation_form_section() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_contacts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SearchCriteria") => search_criteria(),
        optional("Sort") => sort(),
        required("InstanceId") => String.t() | atom(),
        required("TimeRange") => search_contacts_time_range()
      }

  """
  @type search_contacts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_quick_connect_request() :: %{}

  """
  @type delete_quick_connect_request() :: %{}

  @typedoc """

  ## Example:

      contact_metric_info() :: %{
        "Name" => list(any())
      }

  """
  @type contact_metric_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_outbound_chat_contact_response() :: %{
        "ContactId" => String.t() | atom()
      }

  """
  @type start_outbound_chat_contact_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_integration_associations_response() :: %{
        "IntegrationAssociationSummaryList" => list(integration_association_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_integration_associations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      field_value_union() :: %{
        "BooleanValue" => boolean(),
        "DoubleValue" => float(),
        "EmptyValue" => empty_field_value(),
        "StringValue" => String.t() | atom()
      }

  """
  @type field_value_union() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      phone_number_summary() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "PhoneNumber" => String.t() | atom(),
        "PhoneNumberCountryCode" => list(any()),
        "PhoneNumberType" => list(any())
      }

  """
  @type phone_number_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hierarchy_level_update() :: %{
        "Name" => String.t() | atom()
      }

  """
  @type hierarchy_level_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resume_contact_recording_request() :: %{
        optional("ContactRecordingType") => list(any()),
        required("ContactId") => String.t() | atom(),
        required("InitialContactId") => String.t() | atom(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type resume_contact_recording_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_security_key_request() :: %{
        optional("ClientToken") => String.t() | atom()
      }

  """
  @type disassociate_security_key_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      instance_summary() :: %{
        "Arn" => String.t() | atom(),
        "CreatedTime" => non_neg_integer(),
        "Id" => String.t() | atom(),
        "IdentityManagementType" => list(any()),
        "InboundCallsEnabled" => boolean(),
        "InstanceAccessUrl" => String.t() | atom(),
        "InstanceAlias" => String.t() | atom(),
        "InstanceStatus" => list(any()),
        "OutboundCallsEnabled" => boolean(),
        "ServiceRole" => String.t() | atom()
      }

  """
  @type instance_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_instance_storage_config_request() :: %{
        required("ResourceType") => list(any())
      }

  """
  @type describe_instance_storage_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_participant_role_config_request() :: %{
        required("ChannelConfiguration") => list()
      }

  """
  @type update_participant_role_config_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_predefined_attributes_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SearchCriteria") => predefined_attribute_search_criteria(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type search_predefined_attributes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_instance_request() :: %{
        optional("ClientToken") => String.t() | atom()
      }

  """
  @type delete_instance_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      current_metric_data() :: %{
        "Metric" => current_metric(),
        "Value" => float()
      }

  """
  @type current_metric_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user() :: %{
        "Arn" => String.t() | atom(),
        "DirectoryUserId" => String.t() | atom(),
        "HierarchyGroupId" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "IdentityInfo" => user_identity_info(),
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "PhoneConfig" => user_phone_config(),
        "RoutingProfileId" => String.t() | atom(),
        "SecurityProfileIds" => list(String.t() | atom()),
        "Tags" => map(),
        "Username" => String.t() | atom()
      }

  """
  @type user() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_contact_flow_name_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom()
      }

  """
  @type update_contact_flow_name_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_vocabulary_request() :: %{}

  """
  @type delete_vocabulary_request() :: %{}

  @typedoc """

  ## Example:

      expression() :: %{
        "AndExpression" => list(expression()),
        "AttributeCondition" => attribute_condition(),
        "NotAttributeCondition" => attribute_condition(),
        "OrExpression" => list(expression())
      }

  """
  @type expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      contact_search_summary() :: %{
        "AgentInfo" => contact_search_summary_agent_info(),
        "Arn" => String.t() | atom(),
        "Channel" => list(any()),
        "DisconnectTimestamp" => non_neg_integer(),
        "Id" => String.t() | atom(),
        "InitialContactId" => String.t() | atom(),
        "InitiationMethod" => list(any()),
        "InitiationTimestamp" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "PreviousContactId" => String.t() | atom(),
        "QueueInfo" => contact_search_summary_queue_info(),
        "RoutingCriteria" => routing_criteria(),
        "ScheduledTimestamp" => non_neg_integer(),
        "SegmentAttributes" => map()
      }

  """
  @type contact_search_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_hours_of_operation_override_request() :: %{
        optional("Description") => String.t() | atom(),
        required("Config") => list(hours_of_operation_override_config()),
        required("EffectiveFrom") => String.t() | atom(),
        required("EffectiveTill") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_hours_of_operation_override_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_email_address_response() :: %{
        "EmailAddressArn" => String.t() | atom(),
        "EmailAddressId" => String.t() | atom()
      }

  """
  @type create_email_address_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_contact_flow_module_response() :: %{
        "ContactFlowModule" => contact_flow_module()
      }

  """
  @type describe_contact_flow_module_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_contact_request() :: %{
        optional("Attributes") => map(),
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("ExpiryDurationInMinutes") => integer(),
        optional("InitiateAs") => list(any()),
        optional("Name") => String.t() | atom(),
        optional("PreviousContactId") => String.t() | atom(),
        optional("References") => map(),
        optional("RelatedContactId") => String.t() | atom(),
        optional("SegmentAttributes") => map(),
        optional("UserInfo") => user_info(),
        required("Channel") => list(any()),
        required("InitiationMethod") => list(any()),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type create_contact_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_flow_response() :: %{}

  """
  @type disassociate_flow_response() :: %{}

  @typedoc """

  ## Example:

      predefined_attribute_search_criteria() :: %{
        "AndConditions" => list(predefined_attribute_search_criteria()),
        "OrConditions" => list(predefined_attribute_search_criteria()),
        "StringCondition" => string_condition()
      }

  """
  @type predefined_attribute_search_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_quick_connect_response() :: %{
        "QuickConnect" => quick_connect()
      }

  """
  @type describe_quick_connect_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      predefined_attribute_summary() :: %{
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | atom()
      }

  """
  @type predefined_attribute_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      real_time_contact_analysis_transcript_item_redaction() :: %{
        "CharacterOffsets" => list(real_time_contact_analysis_character_interval())
      }

  """
  @type real_time_contact_analysis_transcript_item_redaction() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      create_user_hierarchy_group_request() :: %{
        optional("ParentGroupId") => String.t() | atom(),
        optional("Tags") => map(),
        required("Name") => String.t() | atom()
      }

  """
  @type create_user_hierarchy_group_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_hours_of_operation_response() :: %{
        "HoursOfOperationArn" => String.t() | atom(),
        "HoursOfOperationId" => String.t() | atom()
      }

  """
  @type create_hours_of_operation_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hours_of_operation_search_criteria() :: %{
        "AndConditions" => list(hours_of_operation_search_criteria()),
        "OrConditions" => list(hours_of_operation_search_criteria()),
        "StringCondition" => string_condition()
      }

  """
  @type hours_of_operation_search_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_routing_profile_response() :: %{
        "RoutingProfileArn" => String.t() | atom(),
        "RoutingProfileId" => String.t() | atom()
      }

  """
  @type create_routing_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      assign_contact_category_action_definition() :: %{}

  """
  @type assign_contact_category_action_definition() :: %{}

  @typedoc """

  ## Example:

      search_contact_flows_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SearchCriteria") => contact_flow_search_criteria(),
        optional("SearchFilter") => contact_flow_search_filter(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type search_contact_flows_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_prompt_file_request() :: %{}

  """
  @type get_prompt_file_request() :: %{}

  @typedoc """

  ## Example:

      analytics_data_association_result() :: %{
        "DataSetId" => String.t() | atom(),
        "ResourceShareArn" => String.t() | atom(),
        "ResourceShareId" => String.t() | atom(),
        "ResourceShareStatus" => String.t() | atom(),
        "TargetAccountId" => String.t() | atom()
      }

  """
  @type analytics_data_association_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_attached_file_upload_response() :: %{
        "CreatedBy" => list(),
        "CreationTime" => String.t() | atom(),
        "FileArn" => String.t() | atom(),
        "FileId" => String.t() | atom(),
        "FileStatus" => list(any()),
        "UploadUrlMetadata" => upload_url_metadata()
      }

  """
  @type start_attached_file_upload_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_view_response() :: %{}

  """
  @type delete_view_response() :: %{}

  @typedoc """

  ## Example:

      list_phone_numbers_v2_response() :: %{
        "ListPhoneNumbersSummaryList" => list(list_phone_numbers_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_phone_numbers_v2_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_user_proficiencies_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_user_proficiencies_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_task_template_response() :: %{
        "Arn" => String.t() | atom(),
        "Constraints" => task_template_constraints(),
        "ContactFlowId" => String.t() | atom(),
        "CreatedTime" => non_neg_integer(),
        "Defaults" => task_template_defaults(),
        "Description" => String.t() | atom(),
        "Fields" => list(task_template_field()),
        "Id" => String.t() | atom(),
        "InstanceId" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "SelfAssignFlowId" => String.t() | atom(),
        "Status" => list(any())
      }

  """
  @type update_task_template_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      metric_v2() :: %{
        "MetricFilters" => list(metric_filter_v2()),
        "Name" => String.t() | atom(),
        "Threshold" => list(threshold_v2())
      }

  """
  @type metric_v2() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      threshold() :: %{
        "Comparison" => list(any()),
        "ThresholdValue" => float()
      }

  """
  @type threshold() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_contact_flow_version_request() :: %{
        optional("ContactFlowVersion") => float(),
        optional("Description") => String.t() | atom(),
        optional("FlowContentSha256") => String.t() | atom(),
        optional("LastModifiedRegion") => String.t() | atom(),
        optional("LastModifiedTime") => non_neg_integer()
      }

  """
  @type create_contact_flow_version_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_outbound_voice_contact_request() :: %{
        optional("AnswerMachineDetectionConfig") => answer_machine_detection_config(),
        optional("Attributes") => map(),
        optional("CampaignId") => String.t() | atom(),
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("QueueId") => String.t() | atom(),
        optional("References") => map(),
        optional("RelatedContactId") => String.t() | atom(),
        optional("SourcePhoneNumber") => String.t() | atom(),
        optional("TrafficType") => list(any()),
        required("ContactFlowId") => String.t() | atom(),
        required("DestinationPhoneNumber") => String.t() | atom(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type start_outbound_voice_contact_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      attribute() :: %{
        "AttributeType" => list(any()),
        "Value" => String.t() | atom()
      }

  """
  @type attribute() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_use_case_request() :: %{
        optional("Tags") => map(),
        required("UseCaseType") => list(any())
      }

  """
  @type create_use_case_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_users_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_users_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      default_vocabulary() :: %{
        "InstanceId" => String.t() | atom(),
        "LanguageCode" => list(any()),
        "VocabularyId" => String.t() | atom(),
        "VocabularyName" => String.t() | atom()
      }

  """
  @type default_vocabulary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_task_contact_response() :: %{
        "ContactId" => String.t() | atom()
      }

  """
  @type start_task_contact_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      chat_event() :: %{
        "Content" => String.t() | atom(),
        "ContentType" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type chat_event() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filters() :: %{
        "AgentStatuses" => list(String.t() | atom()),
        "Channels" => list(list(any())()),
        "Queues" => list(String.t() | atom()),
        "RoutingProfiles" => list(String.t() | atom()),
        "RoutingStepExpressions" => list(String.t() | atom())
      }

  """
  @type filters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_agent_status_response() :: %{
        "AgentStatusSummaryList" => list(agent_status_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_agent_status_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_user_routing_profile_request() :: %{
        required("RoutingProfileId") => String.t() | atom()
      }

  """
  @type update_user_routing_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      task_template_field_identifier() :: %{
        "Name" => String.t() | atom()
      }

  """
  @type task_template_field_identifier() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_queue_quick_connects_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_queue_quick_connects_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_queues_response() :: %{
        "NextToken" => String.t() | atom(),
        "QueueSummaryList" => list(queue_summary())
      }

  """
  @type list_queues_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_evaluation_forms_response() :: %{
        "EvaluationFormSummaryList" => list(evaluation_form_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_evaluation_forms_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluation_form_single_select_question_properties() :: %{
        "Automation" => evaluation_form_single_select_question_automation(),
        "DisplayAs" => list(any()),
        "Options" => list(evaluation_form_single_select_question_option())
      }

  """
  @type evaluation_form_single_select_question_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_traffic_distribution_request() :: %{}

  """
  @type get_traffic_distribution_request() :: %{}

  @typedoc """

  ## Example:

      complete_attached_file_upload_request() :: %{
        required("AssociatedResourceArn") => String.t() | atom()
      }

  """
  @type complete_attached_file_upload_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      attendee() :: %{
        "AttendeeId" => String.t() | atom(),
        "JoinToken" => String.t() | atom()
      }

  """
  @type attendee() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_authentication_profile_response() :: %{
        "AuthenticationProfile" => authentication_profile()
      }

  """
  @type describe_authentication_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disconnect_details() :: %{
        "PotentialDisconnectIssue" => String.t() | atom()
      }

  """
  @type disconnect_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      send_outbound_email_request() :: %{
        optional("AdditionalRecipients") => outbound_additional_recipients(),
        optional("ClientToken") => String.t() | atom(),
        optional("SourceCampaign") => source_campaign(),
        required("DestinationEmailAddress") => email_address_info(),
        required("EmailMessage") => outbound_email_content(),
        required("FromEmailAddress") => email_address_info(),
        required("TrafficType") => list(any())
      }

  """
  @type send_outbound_email_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_status_summary() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "Type" => list(any())
      }

  """
  @type agent_status_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_traffic_distribution_group_user_response() :: %{}

  """
  @type disassociate_traffic_distribution_group_user_response() :: %{}

  @typedoc """

  ## Example:

      search_vocabularies_request() :: %{
        optional("LanguageCode") => list(any()),
        optional("MaxResults") => integer(),
        optional("NameStartsWith") => String.t() | atom(),
        optional("NextToken") => String.t() | atom(),
        optional("State") => list(any())
      }

  """
  @type search_vocabularies_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      prompt_search_filter() :: %{
        "TagFilter" => control_plane_tag_filter()
      }

  """
  @type prompt_search_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_hours_of_operation_overrides_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_hours_of_operation_overrides_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_queue_status_request() :: %{
        required("Status") => list(any())
      }

  """
  @type update_queue_status_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      chat_metrics() :: %{
        "AgentMetrics" => participant_metrics(),
        "ChatContactMetrics" => chat_contact_metrics(),
        "CustomerMetrics" => participant_metrics()
      }

  """
  @type chat_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      name_criteria() :: %{
        "MatchType" => list(any()),
        "SearchText" => list(String.t() | atom())
      }

  """
  @type name_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_vocabulary_response() :: %{
        "Vocabulary" => vocabulary()
      }

  """
  @type describe_vocabulary_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_flow_request() :: %{
        required("FlowId") => String.t() | atom(),
        required("ResourceId") => String.t() | atom(),
        required("ResourceType") => list(any())
      }

  """
  @type associate_flow_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      operational_hour() :: %{
        "End" => override_time_slice(),
        "Start" => override_time_slice()
      }

  """
  @type operational_hour() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      contact_details() :: %{
        "Description" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type contact_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      metric_data_v2() :: %{
        "Metric" => metric_v2(),
        "Value" => float()
      }

  """
  @type metric_data_v2() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      email_address_search_filter() :: %{
        "TagFilter" => control_plane_tag_filter()
      }

  """
  @type email_address_search_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_prompt_request() :: %{}

  """
  @type describe_prompt_request() :: %{}

  @typedoc """

  ## Example:

      list_phone_numbers_response() :: %{
        "NextToken" => String.t() | atom(),
        "PhoneNumberSummaryList" => list(phone_number_summary())
      }

  """
  @type list_phone_numbers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      real_time_contact_analysis_attachment() :: %{
        "AttachmentId" => String.t() | atom(),
        "AttachmentName" => String.t() | atom(),
        "ContentType" => String.t() | atom(),
        "Status" => list(any())
      }

  """
  @type real_time_contact_analysis_attachment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      contact_search_summary_queue_info() :: %{
        "EnqueueTimestamp" => non_neg_integer(),
        "Id" => String.t() | atom()
      }

  """
  @type contact_search_summary_queue_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_contacts_additional_time_range() :: %{
        "Criteria" => list(search_contacts_additional_time_range_criteria()),
        "MatchType" => list(any())
      }

  """
  @type search_contacts_additional_time_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_email_address_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("DisplayName") => String.t() | atom(),
        optional("Tags") => map(),
        required("EmailAddress") => String.t() | atom()
      }

  """
  @type create_email_address_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_queue_request() :: %{}

  """
  @type delete_queue_request() :: %{}

  @typedoc """

  ## Example:

      evaluation() :: %{
        "Answers" => map(),
        "CreatedTime" => non_neg_integer(),
        "EvaluationArn" => String.t() | atom(),
        "EvaluationId" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Metadata" => evaluation_metadata(),
        "Notes" => map(),
        "Scores" => map(),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type evaluation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_vocabulary_response() :: %{
        "State" => list(any()),
        "VocabularyArn" => String.t() | atom(),
        "VocabularyId" => String.t() | atom()
      }

  """
  @type delete_vocabulary_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_phone_number_metadata_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("PhoneNumberDescription") => String.t() | atom()
      }

  """
  @type update_phone_number_metadata_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sign_in_distribution() :: %{
        "Enabled" => boolean(),
        "Region" => String.t() | atom()
      }

  """
  @type sign_in_distribution() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_screen_sharing_response() :: %{}

  """
  @type start_screen_sharing_response() :: %{}

  @typedoc """

  ## Example:

      media_concurrency() :: %{
        "Channel" => list(any()),
        "Concurrency" => integer(),
        "CrossChannelBehavior" => cross_channel_behavior()
      }

  """
  @type media_concurrency() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      control_plane_tag_filter() :: %{
        "AndConditions" => list(tag_condition()),
        "OrConditions" => list(list(tag_condition())()),
        "TagCondition" => tag_condition()
      }

  """
  @type control_plane_tag_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluation_metadata() :: %{
        "ContactAgentId" => String.t() | atom(),
        "ContactId" => String.t() | atom(),
        "EvaluatorArn" => String.t() | atom(),
        "Score" => evaluation_score()
      }

  """
  @type evaluation_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_routing_profile_manual_assignment_queues_response() :: %{
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "NextToken" => String.t() | atom(),
        "RoutingProfileManualAssignmentQueueConfigSummaryList" => list(routing_profile_manual_assignment_queue_config_summary())
      }

  """
  @type list_routing_profile_manual_assignment_queues_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      templated_message_config() :: %{
        "KnowledgeBaseId" => String.t() | atom(),
        "MessageTemplateId" => String.t() | atom(),
        "TemplateAttributes" => template_attributes()
      }

  """
  @type templated_message_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluation_form_scoring_strategy() :: %{
        "Mode" => list(any()),
        "Status" => list(any())
      }

  """
  @type evaluation_form_scoring_strategy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_agent_statuses_response() :: %{
        "AgentStatuses" => list(agent_status()),
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t() | atom()
      }

  """
  @type search_agent_statuses_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      quick_connect() :: %{
        "Description" => String.t() | atom(),
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "QuickConnectARN" => String.t() | atom(),
        "QuickConnectConfig" => quick_connect_config(),
        "QuickConnectId" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type quick_connect() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_contact_flows_response() :: %{
        "ApproximateTotalCount" => float(),
        "ContactFlows" => list(contact_flow()),
        "NextToken" => String.t() | atom()
      }

  """
  @type search_contact_flows_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associated_contact_summary() :: %{
        "Channel" => list(any()),
        "ContactArn" => String.t() | atom(),
        "ContactId" => String.t() | atom(),
        "DisconnectTimestamp" => non_neg_integer(),
        "InitialContactId" => String.t() | atom(),
        "InitiationMethod" => list(any()),
        "InitiationTimestamp" => non_neg_integer(),
        "PreviousContactId" => String.t() | atom(),
        "RelatedContactId" => String.t() | atom()
      }

  """
  @type associated_contact_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      pause_contact_response() :: %{}

  """
  @type pause_contact_response() :: %{}

  @typedoc """

  ## Example:

      associate_security_key_response() :: %{
        "AssociationId" => String.t() | atom()
      }

  """
  @type associate_security_key_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hours_of_operation_config() :: %{
        "Day" => list(any()),
        "EndTime" => hours_of_operation_time_slice(),
        "StartTime" => hours_of_operation_time_slice()
      }

  """
  @type hours_of_operation_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_attached_file_upload_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("CreatedBy") => list(),
        optional("Tags") => map(),
        optional("UrlExpiryInSeconds") => integer(),
        required("AssociatedResourceArn") => String.t() | atom(),
        required("FileName") => String.t() | atom(),
        required("FileSizeInBytes") => float(),
        required("FileUseCaseType") => list(any())
      }

  """
  @type start_attached_file_upload_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      activate_evaluation_form_response() :: %{
        "EvaluationFormArn" => String.t() | atom(),
        "EvaluationFormId" => String.t() | atom(),
        "EvaluationFormVersion" => integer()
      }

  """
  @type activate_evaluation_form_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_approved_origins_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_approved_origins_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      case_sla_configuration() :: %{
        "FieldId" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "TargetFieldValues" => list(field_value_union()),
        "TargetSlaMinutes" => float(),
        "Type" => list(any())
      }

  """
  @type case_sla_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      historical_metric() :: %{
        "Name" => list(any()),
        "Statistic" => list(any()),
        "Threshold" => threshold(),
        "Unit" => list(any())
      }

  """
  @type historical_metric() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      failed_request() :: %{
        "FailureReasonCode" => list(any()),
        "FailureReasonMessage" => String.t() | atom(),
        "RequestIdentifier" => String.t() | atom()
      }

  """
  @type failed_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_associate_analytics_data_set_request() :: %{
        optional("TargetAccountId") => String.t() | atom(),
        required("DataSetIds") => list(String.t() | atom())
      }

  """
  @type batch_associate_analytics_data_set_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      step() :: %{
        "Expiry" => expiry(),
        "Expression" => expression(),
        "Status" => list(any())
      }

  """
  @type step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_queue_quick_connects_request() :: %{
        required("QuickConnectIds") => list(String.t() | atom())
      }

  """
  @type associate_queue_quick_connects_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_search_condition() :: %{
        "tagKey" => String.t() | atom(),
        "tagKeyComparisonType" => list(any()),
        "tagValue" => String.t() | atom(),
        "tagValueComparisonType" => list(any())
      }

  """
  @type tag_search_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      task_template_metadata() :: %{
        "Arn" => String.t() | atom(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "Status" => list(any())
      }

  """
  @type task_template_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      attachment_reference() :: %{
        "Arn" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Status" => list(any()),
        "Value" => String.t() | atom()
      }

  """
  @type attachment_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      url_reference() :: %{
        "Name" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type url_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      string_reference() :: %{
        "Name" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type string_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_predefined_attributes_response() :: %{
        "NextToken" => String.t() | atom(),
        "PredefinedAttributeSummaryList" => list(predefined_attribute_summary())
      }

  """
  @type list_predefined_attributes_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      routing_profile() :: %{
        "AgentAvailabilityTimer" => list(any()),
        "AssociatedManualAssignmentQueueIds" => list(String.t() | atom()),
        "AssociatedQueueIds" => list(String.t() | atom()),
        "DefaultOutboundQueueId" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "InstanceId" => String.t() | atom(),
        "IsDefault" => boolean(),
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "MediaConcurrencies" => list(media_concurrency()),
        "Name" => String.t() | atom(),
        "NumberOfAssociatedManualAssignmentQueues" => float(),
        "NumberOfAssociatedQueues" => float(),
        "NumberOfAssociatedUsers" => float(),
        "RoutingProfileArn" => String.t() | atom(),
        "RoutingProfileId" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type routing_profile() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_routing_profile_response() :: %{
        "RoutingProfile" => routing_profile()
      }

  """
  @type describe_routing_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_trigger_event_source() :: %{
        "EventSourceName" => list(any()),
        "IntegrationAssociationId" => String.t() | atom()
      }

  """
  @type rule_trigger_event_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_routing_profile_request() :: %{
        optional("AgentAvailabilityTimer") => list(any()),
        optional("ManualAssignmentQueueConfigs") => list(routing_profile_manual_assignment_queue_config()),
        optional("QueueConfigs") => list(routing_profile_queue_config()),
        optional("Tags") => map(),
        required("DefaultOutboundQueueId") => String.t() | atom(),
        required("Description") => String.t() | atom(),
        required("MediaConcurrencies") => list(media_concurrency()),
        required("Name") => String.t() | atom()
      }

  """
  @type create_routing_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_chat_contact_request() :: %{
        optional("Attributes") => map(),
        optional("ChatDurationInMinutes") => integer(),
        optional("ClientToken") => String.t() | atom(),
        optional("CustomerId") => String.t() | atom(),
        optional("InitialMessage") => chat_message(),
        optional("PersistentChat") => persistent_chat(),
        optional("RelatedContactId") => String.t() | atom(),
        optional("SegmentAttributes") => map(),
        optional("SupportedMessagingContentTypes") => list(String.t() | atom()),
        required("ContactFlowId") => String.t() | atom(),
        required("InstanceId") => String.t() | atom(),
        required("ParticipantDetails") => participant_details()
      }

  """
  @type start_chat_contact_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_chat_contact_response() :: %{
        "ContactId" => String.t() | atom(),
        "ContinuedFromContactId" => String.t() | atom(),
        "ParticipantId" => String.t() | atom(),
        "ParticipantToken" => String.t() | atom()
      }

  """
  @type start_chat_contact_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_phone_number_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("InstanceId") => String.t() | atom(),
        optional("TargetArn") => String.t() | atom()
      }

  """
  @type update_phone_number_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_contact_schedule_request() :: %{
        required("ContactId") => String.t() | atom(),
        required("InstanceId") => String.t() | atom(),
        required("ScheduledTime") => non_neg_integer()
      }

  """
  @type update_contact_schedule_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_user_status_response() :: %{}

  """
  @type put_user_status_response() :: %{}

  @typedoc """

  ## Example:

      hours_of_operation_time_slice() :: %{
        "Hours" => integer(),
        "Minutes" => integer()
      }

  """
  @type hours_of_operation_time_slice() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      prompt_search_criteria() :: %{
        "AndConditions" => list(prompt_search_criteria()),
        "OrConditions" => list(prompt_search_criteria()),
        "StringCondition" => string_condition()
      }

  """
  @type prompt_search_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_criteria() :: %{
        "AdditionalTimeRange" => search_contacts_additional_time_range(),
        "AgentHierarchyGroups" => agent_hierarchy_groups(),
        "AgentIds" => list(String.t() | atom()),
        "Channels" => list(list(any())()),
        "ContactAnalysis" => contact_analysis(),
        "InitiationMethods" => list(list(any())()),
        "Name" => name_criteria(),
        "QueueIds" => list(String.t() | atom()),
        "RoutingCriteria" => searchable_routing_criteria(),
        "SearchableContactAttributes" => searchable_contact_attributes(),
        "SearchableSegmentAttributes" => searchable_segment_attributes()
      }

  """
  @type search_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_contact_flow_module_metadata_response() :: %{}

  """
  @type update_contact_flow_module_metadata_response() :: %{}

  @typedoc """

  ## Example:

      list_security_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_security_profiles_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_hours_of_operation_request() :: %{}

  """
  @type describe_hours_of_operation_request() :: %{}

  @typedoc """

  ## Example:

      describe_routing_profile_request() :: %{}

  """
  @type describe_routing_profile_request() :: %{}

  @typedoc """

  ## Example:

      kinesis_video_stream_config() :: %{
        "EncryptionConfig" => encryption_config(),
        "Prefix" => String.t() | atom(),
        "RetentionPeriodHours" => integer()
      }

  """
  @type kinesis_video_stream_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_contact_evaluation_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("ContactId") => String.t() | atom(),
        required("EvaluationFormId") => String.t() | atom()
      }

  """
  @type start_contact_evaluation_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      claimed_phone_number_summary() :: %{
        "InstanceId" => String.t() | atom(),
        "PhoneNumber" => String.t() | atom(),
        "PhoneNumberArn" => String.t() | atom(),
        "PhoneNumberCountryCode" => list(any()),
        "PhoneNumberDescription" => String.t() | atom(),
        "PhoneNumberId" => String.t() | atom(),
        "PhoneNumberStatus" => phone_number_status(),
        "PhoneNumberType" => list(any()),
        "SourcePhoneNumberArn" => String.t() | atom(),
        "Tags" => map(),
        "TargetArn" => String.t() | atom()
      }

  """
  @type claimed_phone_number_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_quick_connects_response() :: %{
        "NextToken" => String.t() | atom(),
        "QuickConnectSummaryList" => list(quick_connect_summary())
      }

  """
  @type list_quick_connects_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_task_template_response() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom()
      }

  """
  @type create_task_template_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_contact_with_user_request() :: %{
        required("UserId") => String.t() | atom()
      }

  """
  @type associate_contact_with_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_user_hierarchy_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SearchCriteria") => user_hierarchy_group_search_criteria(),
        optional("SearchFilter") => user_hierarchy_group_search_filter(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type search_user_hierarchy_groups_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluation_summary() :: %{
        "CreatedTime" => non_neg_integer(),
        "EvaluationArn" => String.t() | atom(),
        "EvaluationFormId" => String.t() | atom(),
        "EvaluationFormTitle" => String.t() | atom(),
        "EvaluationId" => String.t() | atom(),
        "EvaluatorArn" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Score" => evaluation_score(),
        "Status" => list(any())
      }

  """
  @type evaluation_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      end_associated_tasks_action_definition() :: %{}

  """
  @type end_associated_tasks_action_definition() :: %{}

  @typedoc """

  ## Example:

      historical_metric_data() :: %{
        "Metric" => historical_metric(),
        "Value" => float()
      }

  """
  @type historical_metric_data() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      associate_flow_response() :: %{}

  """
  @type associate_flow_response() :: %{}

  @typedoc """

  ## Example:

      list_instance_storage_configs_response() :: %{
        "NextToken" => String.t() | atom(),
        "StorageConfigs" => list(instance_storage_config())
      }

  """
  @type list_instance_storage_configs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_ready_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type resource_not_ready_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluation_form_single_select_question_automation() :: %{
        "DefaultOptionRefId" => String.t() | atom(),
        "Options" => list(list())
      }

  """
  @type evaluation_form_single_select_question_automation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_queues_response() :: %{
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t() | atom(),
        "Queues" => list(queue())
      }

  """
  @type search_queues_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      routing_profile_reference() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom()
      }

  """
  @type routing_profile_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      real_time_contact_analysis_issue_detected() :: %{
        "TranscriptItems" => list(real_time_contact_analysis_transcript_item_with_content())
      }

  """
  @type real_time_contact_analysis_issue_detected() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_authentication_profile_request() :: %{
        optional("AllowedIps") => list(String.t() | atom()),
        optional("BlockedIps") => list(String.t() | atom()),
        optional("Description") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("PeriodicSessionDuration") => integer()
      }

  """
  @type update_authentication_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_quick_connect_request() :: %{}

  """
  @type describe_quick_connect_request() :: %{}

  @typedoc """

  ## Example:

      delete_predefined_attribute_request() :: %{}

  """
  @type delete_predefined_attribute_request() :: %{}

  @typedoc """

  ## Example:

      create_user_response() :: %{
        "UserArn" => String.t() | atom(),
        "UserId" => String.t() | atom()
      }

  """
  @type create_user_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      inbound_additional_recipients() :: %{
        "CcAddresses" => list(email_address_info()),
        "ToAddresses" => list(email_address_info())
      }

  """
  @type inbound_additional_recipients() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_instance_storage_configs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("ResourceType") => list(any())
      }

  """
  @type list_instance_storage_configs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_views_response() :: %{
        "NextToken" => String.t() | atom(),
        "ViewsSummaryList" => list(view_summary())
      }

  """
  @type list_views_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      duplicate_resource_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type duplicate_resource_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_hours_of_operation_request() :: %{}

  """
  @type delete_hours_of_operation_request() :: %{}

  @typedoc """

  ## Example:

      maximum_result_returned_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type maximum_result_returned_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_persistent_contact_association_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("RehydrationType") => list(any()),
        required("SourceContactId") => String.t() | atom()
      }

  """
  @type create_persistent_contact_association_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_analytics_data_associations_response() :: %{
        "NextToken" => String.t() | atom(),
        "Results" => list(analytics_data_association_result())
      }

  """
  @type list_analytics_data_associations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_traffic_distribution_group_response() :: %{}

  """
  @type delete_traffic_distribution_group_response() :: %{}

  @typedoc """

  ## Example:

      resource_conflict_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type resource_conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_user_hierarchy_groups_response() :: %{
        "NextToken" => String.t() | atom(),
        "UserHierarchyGroupSummaryList" => list(hierarchy_group_summary())
      }

  """
  @type list_user_hierarchy_groups_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_web_r_t_c_contact_request() :: %{
        optional("AllowedCapabilities") => allowed_capabilities(),
        optional("Attributes") => map(),
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("References") => map(),
        optional("RelatedContactId") => String.t() | atom(),
        required("ContactFlowId") => String.t() | atom(),
        required("InstanceId") => String.t() | atom(),
        required("ParticipantDetails") => participant_details()
      }

  """
  @type start_web_r_t_c_contact_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      hierarchy_structure_update() :: %{
        "LevelFive" => hierarchy_level_update(),
        "LevelFour" => hierarchy_level_update(),
        "LevelOne" => hierarchy_level_update(),
        "LevelThree" => hierarchy_level_update(),
        "LevelTwo" => hierarchy_level_update()
      }

  """
  @type hierarchy_structure_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_default_vocabularies_response() :: %{
        "DefaultVocabularyList" => list(default_vocabulary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_default_vocabularies_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_search_filter() :: %{
        "TagFilter" => control_plane_tag_filter(),
        "UserAttributeFilter" => control_plane_user_attribute_filter()
      }

  """
  @type user_search_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      prompt() :: %{
        "Description" => String.t() | atom(),
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "PromptARN" => String.t() | atom(),
        "PromptId" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type prompt() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      media_placement() :: %{
        "AudioFallbackUrl" => String.t() | atom(),
        "AudioHostUrl" => String.t() | atom(),
        "EventIngestionUrl" => String.t() | atom(),
        "SignalingUrl" => String.t() | atom(),
        "TurnControlUrl" => String.t() | atom()
      }

  """
  @type media_placement() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      routing_profile_manual_assignment_queue_config() :: %{
        "QueueReference" => routing_profile_queue_reference()
      }

  """
  @type routing_profile_manual_assignment_queue_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_realtime_contact_analysis_segments_v2_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("OutputType") => list(any()),
        required("SegmentTypes") => list(list(any())())
      }

  """
  @type list_realtime_contact_analysis_segments_v2_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_contact_flow_request() :: %{}

  """
  @type delete_contact_flow_request() :: %{}

  @typedoc """

  ## Example:

      get_current_metric_data_response() :: %{
        "ApproximateTotalCount" => float(),
        "DataSnapshotTime" => non_neg_integer(),
        "MetricResults" => list(current_metric_result()),
        "NextToken" => String.t() | atom()
      }

  """
  @type get_current_metric_data_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_authentication_profiles_response() :: %{
        "AuthenticationProfileSummaryList" => list(authentication_profile_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_authentication_profiles_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_available_phone_numbers_request() :: %{
        optional("InstanceId") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("PhoneNumberPrefix") => String.t() | atom(),
        optional("TargetArn") => String.t() | atom(),
        required("PhoneNumberCountryCode") => list(any()),
        required("PhoneNumberType") => list(any())
      }

  """
  @type search_available_phone_numbers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_rule_response() :: %{
        "Rule" => rule()
      }

  """
  @type describe_rule_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      participant_details() :: %{
        "DisplayName" => String.t() | atom()
      }

  """
  @type participant_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      date_reference() :: %{
        "Name" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type date_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_queue_response() :: %{
        "QueueArn" => String.t() | atom(),
        "QueueId" => String.t() | atom()
      }

  """
  @type create_queue_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_email_address_metadata_response() :: %{
        "EmailAddressArn" => String.t() | atom(),
        "EmailAddressId" => String.t() | atom()
      }

  """
  @type update_email_address_metadata_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      predefined_attribute() :: %{
        "AttributeConfiguration" => predefined_attribute_configuration(),
        "LastModifiedRegion" => String.t() | atom(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "Purposes" => list(String.t() | atom()),
        "Values" => list()
      }

  """
  @type predefined_attribute() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_user_hierarchy_group_name_request() :: %{
        required("Name") => String.t() | atom()
      }

  """
  @type update_user_hierarchy_group_name_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      user_info() :: %{
        "UserId" => String.t() | atom()
      }

  """
  @type user_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      real_time_contact_analysis_segment_attachments() :: %{
        "Attachments" => list(real_time_contact_analysis_attachment()),
        "DisplayName" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "ParticipantId" => String.t() | atom(),
        "ParticipantRole" => list(any()),
        "Time" => list()
      }

  """
  @type real_time_contact_analysis_segment_attachments() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      expiry() :: %{
        "DurationInSeconds" => integer(),
        "ExpiryTimestamp" => non_neg_integer()
      }

  """
  @type expiry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      real_time_contact_analysis_segment_transcript() :: %{
        "Content" => String.t() | atom(),
        "ContentType" => String.t() | atom(),
        "DisplayName" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "ParticipantId" => String.t() | atom(),
        "ParticipantRole" => list(any()),
        "Redaction" => real_time_contact_analysis_transcript_item_redaction(),
        "Sentiment" => list(any()),
        "Time" => list()
      }

  """
  @type real_time_contact_analysis_segment_transcript() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      transcript_criteria() :: %{
        "MatchType" => list(any()),
        "ParticipantRole" => list(any()),
        "SearchText" => list(String.t() | atom())
      }

  """
  @type transcript_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_contact_flow_response() :: %{
        "ContactFlowArn" => String.t() | atom(),
        "ContactFlowId" => String.t() | atom(),
        "FlowContentSha256" => String.t() | atom()
      }

  """
  @type create_contact_flow_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_queue_request() :: %{}

  """
  @type describe_queue_request() :: %{}

  @typedoc """

  ## Example:

      batch_disassociate_analytics_data_set_response() :: %{
        "Deleted" => list(String.t() | atom()),
        "Errors" => list(error_result())
      }

  """
  @type batch_disassociate_analytics_data_set_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      submit_auto_evaluation_action_definition() :: %{
        "EvaluationFormId" => String.t() | atom()
      }

  """
  @type submit_auto_evaluation_action_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_contact_flow_module_content_response() :: %{}

  """
  @type update_contact_flow_module_content_response() :: %{}

  @typedoc """

  ## Example:

      batch_get_flow_association_response() :: %{
        "FlowAssociationSummaryList" => list(flow_association_summary())
      }

  """
  @type batch_get_flow_association_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_tags_search_criteria() :: %{
        "TagSearchCondition" => tag_search_condition()
      }

  """
  @type resource_tags_search_criteria() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      suspend_contact_recording_request() :: %{
        optional("ContactRecordingType") => list(any()),
        required("ContactId") => String.t() | atom(),
        required("InitialContactId") => String.t() | atom(),
        required("InstanceId") => String.t() | atom()
      }

  """
  @type suspend_contact_recording_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_user_request() :: %{
        optional("DirectoryUserId") => String.t() | atom(),
        optional("HierarchyGroupId") => String.t() | atom(),
        optional("IdentityInfo") => user_identity_info(),
        optional("Password") => String.t() | atom(),
        optional("Tags") => map(),
        required("PhoneConfig") => user_phone_config(),
        required("RoutingProfileId") => String.t() | atom(),
        required("SecurityProfileIds") => list(String.t() | atom()),
        required("Username") => String.t() | atom()
      }

  """
  @type create_user_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      property_validation_exception_property() :: %{
        "Message" => String.t() | atom(),
        "PropertyPath" => String.t() | atom(),
        "Reason" => list(any())
      }

  """
  @type property_validation_exception_property() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      evaluation_form_content() :: %{
        "Description" => String.t() | atom(),
        "EvaluationFormArn" => String.t() | atom(),
        "EvaluationFormId" => String.t() | atom(),
        "EvaluationFormVersion" => integer(),
        "Items" => list(list()),
        "ScoringStrategy" => evaluation_form_scoring_strategy(),
        "Title" => String.t() | atom()
      }

  """
  @type evaluation_form_content() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dismiss_user_contact_response() :: %{}

  """
  @type dismiss_user_contact_response() :: %{}

  @typedoc """

  ## Example:

      update_contact_flow_module_content_request() :: %{
        required("Content") => String.t() | atom()
      }

  """
  @type update_contact_flow_module_content_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_routing_profile_manual_assignment_queues_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_routing_profile_manual_assignment_queues_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      instance_storage_config() :: %{
        "AssociationId" => String.t() | atom(),
        "KinesisFirehoseConfig" => kinesis_firehose_config(),
        "KinesisStreamConfig" => kinesis_stream_config(),
        "KinesisVideoStreamConfig" => kinesis_video_stream_config(),
        "S3Config" => s3_config(),
        "StorageType" => list(any())
      }

  """
  @type instance_storage_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_routing_profile_queues_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_routing_profile_queues_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      agent_status_reference() :: %{
        "StatusArn" => String.t() | atom(),
        "StatusName" => String.t() | atom(),
        "StatusStartTimestamp" => non_neg_integer()
      }

  """
  @type agent_status_reference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      allowed_capabilities() :: %{
        "Agent" => participant_capabilities(),
        "Customer" => participant_capabilities()
      }

  """
  @type allowed_capabilities() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_contact_attributes_request() :: %{}

  """
  @type get_contact_attributes_request() :: %{}

  @typedoc """

  ## Example:

      hours_of_operation_override_config() :: %{
        "Day" => list(any()),
        "EndTime" => override_time_slice(),
        "StartTime" => override_time_slice()
      }

  """
  @type hours_of_operation_override_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_associate_analytics_data_set_response() :: %{
        "Created" => list(analytics_data_association_result()),
        "Errors" => list(error_result())
      }

  """
  @type batch_associate_analytics_data_set_response() :: %{(String.t() | atom()) => any()}

  @type activate_evaluation_form_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_analytics_data_set_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_approved_origin_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_bot_errors() ::
          resource_conflict_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_contact_with_user_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_default_vocabulary_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_flow_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_instance_storage_config_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_lambda_function_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_lex_bot_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_phone_number_contact_flow_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_queue_quick_connects_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_routing_profile_queues_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_security_key_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_traffic_distribution_group_user_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type associate_user_proficiencies_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type batch_associate_analytics_data_set_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type batch_disassociate_analytics_data_set_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type batch_get_attached_file_metadata_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type batch_get_flow_association_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type batch_put_contact_errors() ::
          limit_exceeded_exception()
          | idempotency_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type claim_phone_number_errors() ::
          throttling_exception()
          | idempotency_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type complete_attached_file_upload_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_agent_status_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_contact_errors() ::
          throttling_exception()
          | idempotency_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_exception()

  @type create_contact_flow_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | invalid_contact_flow_exception()

  @type create_contact_flow_module_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | idempotency_exception()
          | invalid_contact_flow_module_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_contact_flow_version_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_email_address_errors() ::
          resource_conflict_exception()
          | duplicate_resource_exception()
          | throttling_exception()
          | idempotency_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_evaluation_form_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_hours_of_operation_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_hours_of_operation_override_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_instance_errors() ::
          throttling_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_integration_association_errors() ::
          duplicate_resource_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_participant_errors() ::
          throttling_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_exception()

  @type create_persistent_contact_association_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_predefined_attribute_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_prompt_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | internal_service_exception()

  @type create_push_notification_registration_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_queue_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_quick_connect_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_routing_profile_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_rule_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_security_profile_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_task_template_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | property_validation_exception()

  @type create_traffic_distribution_group_errors() ::
          resource_conflict_exception()
          | resource_not_ready_exception()
          | throttling_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_use_case_errors() ::
          duplicate_resource_exception()
          | throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_user_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_user_hierarchy_group_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type create_view_errors() ::
          duplicate_resource_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type create_view_version_errors() ::
          invalid_parameter_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type create_vocabulary_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type deactivate_evaluation_form_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_attached_file_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_contact_evaluation_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_contact_flow_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_contact_flow_module_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_contact_flow_version_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_email_address_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_evaluation_form_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_hours_of_operation_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_hours_of_operation_override_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_instance_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_integration_association_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_predefined_attribute_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type delete_prompt_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_push_notification_registration_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_queue_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type delete_quick_connect_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_routing_profile_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type delete_rule_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_security_profile_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type delete_task_template_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_traffic_distribution_group_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type delete_use_case_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_user_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type delete_user_hierarchy_group_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type delete_view_errors() ::
          invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type delete_view_version_errors() ::
          invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type delete_vocabulary_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type describe_agent_status_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_authentication_profile_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_contact_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_contact_evaluation_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_contact_flow_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | contact_flow_not_published_exception()

  @type describe_contact_flow_module_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_email_address_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_evaluation_form_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_hours_of_operation_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_hours_of_operation_override_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_instance_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_instance_attribute_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_instance_storage_config_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_phone_number_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_predefined_attribute_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_prompt_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_queue_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_quick_connect_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_routing_profile_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_rule_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_security_profile_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_traffic_distribution_group_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_user_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_user_hierarchy_group_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_user_hierarchy_structure_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type describe_view_errors() ::
          invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_exception()

  @type describe_vocabulary_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type disassociate_analytics_data_set_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type disassociate_approved_origin_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type disassociate_bot_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type disassociate_flow_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type disassociate_instance_storage_config_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type disassociate_lambda_function_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type disassociate_lex_bot_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type disassociate_phone_number_contact_flow_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type disassociate_queue_quick_connects_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type disassociate_routing_profile_queues_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type disassociate_security_key_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type disassociate_traffic_distribution_group_user_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type disassociate_user_proficiencies_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type dismiss_user_contact_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_attached_file_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_contact_attributes_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_contact_metrics_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_current_metric_data_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_current_user_data_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_effective_hours_of_operations_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_federation_token_errors() ::
          duplicate_resource_exception()
          | invalid_parameter_exception()
          | user_not_found_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_flow_association_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_metric_data_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_metric_data_v2_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_prompt_file_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_task_template_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type get_traffic_distribution_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type import_phone_number_errors() ::
          throttling_exception()
          | idempotency_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_agent_statuses_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_analytics_data_associations_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_analytics_data_lake_data_sets_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_approved_origins_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_associated_contacts_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_authentication_profiles_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_bots_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_contact_evaluations_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_contact_flow_modules_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_contact_flow_versions_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_contact_flows_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_contact_references_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_default_vocabularies_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | internal_service_exception()

  @type list_evaluation_form_versions_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_evaluation_forms_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_flow_associations_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_hours_of_operation_overrides_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_hours_of_operations_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_instance_attributes_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_instance_storage_configs_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_instances_errors() :: invalid_request_exception() | internal_service_exception()

  @type list_integration_associations_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_lambda_functions_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_lex_bots_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_phone_numbers_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_phone_numbers_v2_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_predefined_attributes_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_prompts_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_queue_quick_connects_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_queues_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_quick_connects_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_realtime_contact_analysis_segments_v2_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | output_type_not_found_exception()

  @type list_routing_profile_manual_assignment_queues_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_routing_profile_queues_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_routing_profiles_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_rules_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_security_keys_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_security_profile_applications_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_security_profile_permissions_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_security_profiles_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_task_templates_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_traffic_distribution_group_users_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_traffic_distribution_groups_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | internal_service_exception()

  @type list_use_cases_errors() ::
          throttling_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_user_hierarchy_groups_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_user_proficiencies_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_users_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type list_view_versions_errors() ::
          invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_exception()

  @type list_views_errors() ::
          invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_exception()

  @type monitor_contact_errors() ::
          throttling_exception()
          | idempotency_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type pause_contact_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_exception()

  @type put_user_status_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type release_phone_number_errors() ::
          throttling_exception()
          | idempotency_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type replicate_instance_errors() ::
          resource_conflict_exception()
          | resource_not_ready_exception()
          | throttling_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type resume_contact_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_exception()

  @type resume_contact_recording_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_agent_statuses_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_available_phone_numbers_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_service_exception()

  @type search_contact_flow_modules_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_contact_flows_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_contacts_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_email_addresses_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_hours_of_operation_overrides_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_hours_of_operations_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_predefined_attributes_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_prompts_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_queues_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_quick_connects_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_resource_tags_errors() ::
          maximum_result_returned_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_routing_profiles_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_security_profiles_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_user_hierarchy_groups_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_users_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type search_vocabularies_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | internal_service_exception()

  @type send_chat_integration_event_errors() ::
          throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type send_outbound_email_errors() ::
          throttling_exception()
          | idempotency_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type start_attached_file_upload_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | internal_service_exception()

  @type start_chat_contact_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type start_contact_evaluation_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type start_contact_recording_errors() ::
          invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type start_contact_streaming_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type start_email_contact_errors() ::
          throttling_exception()
          | idempotency_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type start_outbound_chat_contact_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_exception()

  @type start_outbound_email_contact_errors() ::
          throttling_exception()
          | idempotency_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type start_outbound_voice_contact_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | destination_not_allowed_exception()
          | internal_service_exception()
          | outbound_contact_not_permitted_exception()

  @type start_screen_sharing_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type start_task_contact_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type start_web_r_t_c_contact_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type stop_contact_errors() ::
          invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | contact_not_found_exception()

  @type stop_contact_recording_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type stop_contact_streaming_errors() ::
          invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type submit_contact_evaluation_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type suspend_contact_recording_errors() ::
          invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type tag_contact_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type transfer_contact_errors() ::
          throttling_exception()
          | idempotency_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type untag_contact_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_agent_status_errors() ::
          duplicate_resource_exception()
          | limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_authentication_profile_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_contact_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | internal_service_exception()

  @type update_contact_attributes_errors() ::
          invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_contact_evaluation_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_contact_flow_content_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | invalid_contact_flow_exception()

  @type update_contact_flow_metadata_errors() ::
          duplicate_resource_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_contact_flow_module_content_errors() ::
          throttling_exception()
          | invalid_contact_flow_module_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_contact_flow_module_metadata_errors() ::
          duplicate_resource_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_contact_flow_name_errors() ::
          duplicate_resource_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_contact_routing_data_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_contact_schedule_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_email_address_metadata_errors() ::
          throttling_exception()
          | idempotency_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_evaluation_form_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_hours_of_operation_errors() ::
          duplicate_resource_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_hours_of_operation_override_errors() ::
          duplicate_resource_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | conditional_operation_failed_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_instance_attribute_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_instance_storage_config_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_participant_authentication_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | conflict_exception()
          | internal_service_exception()

  @type update_participant_role_config_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_phone_number_errors() ::
          throttling_exception()
          | idempotency_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type update_phone_number_metadata_errors() ::
          throttling_exception()
          | idempotency_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type update_predefined_attribute_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_prompt_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_queue_hours_of_operation_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_queue_max_contacts_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_queue_name_errors() ::
          duplicate_resource_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_queue_outbound_caller_config_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_queue_outbound_email_config_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | conditional_operation_failed_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_queue_status_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_quick_connect_config_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_quick_connect_name_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_routing_profile_agent_availability_timer_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_routing_profile_concurrency_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_routing_profile_default_outbound_queue_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_routing_profile_name_errors() ::
          duplicate_resource_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_routing_profile_queues_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_rule_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_security_profile_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_task_template_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | property_validation_exception()

  @type update_traffic_distribution_errors() ::
          resource_conflict_exception()
          | throttling_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_user_hierarchy_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_user_hierarchy_group_name_errors() ::
          duplicate_resource_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_user_hierarchy_structure_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type update_user_identity_info_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_user_phone_config_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_user_proficiencies_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_user_routing_profile_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_user_security_profiles_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | internal_service_exception()

  @type update_view_content_errors() ::
          invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  @type update_view_metadata_errors() ::
          duplicate_resource_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()
          | internal_service_exception()
          | resource_in_use_exception()

  def metadata do
    %{
      api_version: "2017-08-08",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "connect",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Connect",
      signature_version: "v4",
      signing_name: "connect",
      target_prefix: nil
    }
  end

  @doc """
  Activates an evaluation form in the specified Amazon Connect instance.

  After the
  evaluation form is activated, it is available to start new evaluations based on
  the form.
  """
  @spec activate_evaluation_form(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          activate_evaluation_form_request(),
          list()
        ) ::
          {:ok, activate_evaluation_form_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, activate_evaluation_form_errors()}
  def activate_evaluation_form(
        %Client{} = client,
        evaluation_form_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/evaluation-forms/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(evaluation_form_id)}/activate"

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
  Associates the specified dataset for a Amazon Connect instance with the target
  account.

  You can associate only one dataset in a single call.
  """
  @spec associate_analytics_data_set(
          map(),
          String.t() | atom(),
          associate_analytics_data_set_request(),
          list()
        ) ::
          {:ok, associate_analytics_data_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_analytics_data_set_errors()}
  def associate_analytics_data_set(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/analytics-data/instance/#{AWS.Util.encode_uri(instance_id)}/association"
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
  This API is in preview release for Amazon Connect and is subject to change.

  Associates an approved origin to an Amazon Connect instance.
  """
  @spec associate_approved_origin(
          map(),
          String.t() | atom(),
          associate_approved_origin_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_approved_origin_errors()}
  def associate_approved_origin(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/approved-origin"
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
  This API is in preview release for Amazon Connect and is subject to change.

  Allows the specified Amazon Connect instance to access the specified Amazon Lex
  or Amazon Lex V2 bot.
  """
  @spec associate_bot(map(), String.t() | atom(), associate_bot_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_bot_errors()}
  def associate_bot(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/bot"
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
  Associates a queued contact with an agent.

  ## Use cases

  Following are common uses cases for this API:

    *
  Programmatically assign queued contacts to available users.

    *
  Leverage the IAM context key `connect:PreferredUserArn` to restrict contact
  association to specific preferred user.

  ## Important things to know

    *
  Use this API with chat, email, and task contacts. It does not support voice
  contacts.

    *
  Use it to associate contacts with users regardless of their current state,
  including
  custom states. Ensure your application logic accounts for user availability
  before making
  associations.

    *
  It honors the IAM context key `connect:PreferredUserArn` to prevent
  unauthorized contact associations.

    *
  It respects the IAM context key `connect:PreferredUserArn` to enforce
  authorization controls and prevent unauthorized contact associations. Verify
  that your IAM
  policies are properly configured to support your intended use cases.

    *
  The service quota *Queues per routing profile per instance* applies to
  manually assigned queues, too. For more information about this quota, see
  [Amazon Connect quotas](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#connect-quotas)
  in the *Amazon Connect Administrator
  Guide*.

  **Endpoints**: See [Amazon Connect endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/connect_region.html).
  """
  @spec associate_contact_with_user(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          associate_contact_with_user_request(),
          list()
        ) ::
          {:ok, associate_contact_with_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_contact_with_user_errors()}
  def associate_contact_with_user(
        %Client{} = client,
        contact_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/contacts/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_id)}/associate-user"

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
  Associates an existing vocabulary as the default.

  Contact Lens for Amazon Connect uses the vocabulary in post-call
  and real-time analysis sessions for the given language.
  """
  @spec associate_default_vocabulary(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          associate_default_vocabulary_request(),
          list()
        ) ::
          {:ok, associate_default_vocabulary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_default_vocabulary_errors()}
  def associate_default_vocabulary(
        %Client{} = client,
        instance_id,
        language_code,
        input,
        options \\ []
      ) do
    url_path =
      "/default-vocabulary/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(language_code)}"

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
  Associates a connect resource to a flow.
  """
  @spec associate_flow(map(), String.t() | atom(), associate_flow_request(), list()) ::
          {:ok, associate_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_flow_errors()}
  def associate_flow(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/flow-associations/#{AWS.Util.encode_uri(instance_id)}"
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
  This API is in preview release for Amazon Connect and is subject to change.

  Associates a storage resource type for the first time. You can only associate
  one type of
  storage configuration in a single call. This means, for example, that you can't
  define an
  instance with multiple S3 buckets for storing chat transcripts.

  This API does not create a resource that doesn't exist. It only associates it to
  the
  instance. Ensure that the resource being specified in the storage configuration,
  like an S3
  bucket, exists when being used for association.
  """
  @spec associate_instance_storage_config(
          map(),
          String.t() | atom(),
          associate_instance_storage_config_request(),
          list()
        ) ::
          {:ok, associate_instance_storage_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_instance_storage_config_errors()}
  def associate_instance_storage_config(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/storage-config"
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
  This API is in preview release for Amazon Connect and is subject to change.

  Allows the specified Amazon Connect instance to access the specified Lambda
  function.
  """
  @spec associate_lambda_function(
          map(),
          String.t() | atom(),
          associate_lambda_function_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_lambda_function_errors()}
  def associate_lambda_function(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/lambda-function"
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
  This API is in preview release for Amazon Connect and is subject to change.

  Allows the specified Amazon Connect instance to access the specified Amazon Lex
  V1 bot. This API only supports the association of Amazon Lex V1 bots.
  """
  @spec associate_lex_bot(map(), String.t() | atom(), associate_lex_bot_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_lex_bot_errors()}
  def associate_lex_bot(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/lex-bot"
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
  Associates a flow with a phone number claimed to your Amazon Connect instance.

  If the number is claimed to a traffic distribution group, and you are calling
  this API using an instance in the
  Amazon Web Services Region where the traffic distribution group was created, you
  can use either a full phone number
  ARN or UUID value for the `PhoneNumberId` URI request parameter. However, if the
  number is claimed to a traffic distribution group and you are calling this API
  using an instance in the alternate
  Amazon Web Services Region associated with the traffic distribution group, you
  must provide a full phone number ARN.
  If a UUID is provided
  in
  this scenario, you will receive a
  `ResourceNotFoundException`.
  """
  @spec associate_phone_number_contact_flow(
          map(),
          String.t() | atom(),
          associate_phone_number_contact_flow_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_phone_number_contact_flow_errors()}
  def associate_phone_number_contact_flow(
        %Client{} = client,
        phone_number_id,
        input,
        options \\ []
      ) do
    url_path = "/phone-number/#{AWS.Util.encode_uri(phone_number_id)}/contact-flow"
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
  Associates a set of quick connects with a queue.
  """
  @spec associate_queue_quick_connects(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          associate_queue_quick_connects_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_queue_quick_connects_errors()}
  def associate_queue_quick_connects(
        %Client{} = client,
        instance_id,
        queue_id,
        input,
        options \\ []
      ) do
    url_path =
      "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/associate-quick-connects"

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
  Associates a set of queues with a routing profile.
  """
  @spec associate_routing_profile_queues(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          associate_routing_profile_queues_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_routing_profile_queues_errors()}
  def associate_routing_profile_queues(
        %Client{} = client,
        instance_id,
        routing_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}/associate-queues"

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
  This API is in preview release for Amazon Connect and is subject to change.

  Associates a security key to the instance.
  """
  @spec associate_security_key(
          map(),
          String.t() | atom(),
          associate_security_key_request(),
          list()
        ) ::
          {:ok, associate_security_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_security_key_errors()}
  def associate_security_key(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/security-key"
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
  Associates an agent with a traffic distribution group.

  This API can be called only in the
  Region where the traffic distribution group is created.
  """
  @spec associate_traffic_distribution_group_user(
          map(),
          String.t() | atom(),
          associate_traffic_distribution_group_user_request(),
          list()
        ) ::
          {:ok, associate_traffic_distribution_group_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_traffic_distribution_group_user_errors()}
  def associate_traffic_distribution_group_user(
        %Client{} = client,
        traffic_distribution_group_id,
        input,
        options \\ []
      ) do
    url_path =
      "/traffic-distribution-group/#{AWS.Util.encode_uri(traffic_distribution_group_id)}/user"

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
  Associates a set of proficiencies with a user.
  """
  @spec associate_user_proficiencies(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          associate_user_proficiencies_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_user_proficiencies_errors()}
  def associate_user_proficiencies(%Client{} = client, instance_id, user_id, input, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/associate-proficiencies"

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
  Associates a list of analytics datasets for a given Amazon Connect instance to a
  target
  account.

  You can associate multiple datasets in a single call.
  """
  @spec batch_associate_analytics_data_set(
          map(),
          String.t() | atom(),
          batch_associate_analytics_data_set_request(),
          list()
        ) ::
          {:ok, batch_associate_analytics_data_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_associate_analytics_data_set_errors()}
  def batch_associate_analytics_data_set(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/analytics-data/instance/#{AWS.Util.encode_uri(instance_id)}/associations"
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
  Removes a list of analytics datasets associated with a given Amazon Connect
  instance.

  You can disassociate multiple datasets in a single call.
  """
  @spec batch_disassociate_analytics_data_set(
          map(),
          String.t() | atom(),
          batch_disassociate_analytics_data_set_request(),
          list()
        ) ::
          {:ok, batch_disassociate_analytics_data_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_disassociate_analytics_data_set_errors()}
  def batch_disassociate_analytics_data_set(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/analytics-data/instance/#{AWS.Util.encode_uri(instance_id)}/associations"
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
  Allows you to retrieve metadata about multiple attached files on an associated
  resource.

  Each attached file provided in the input list must be associated with the input
  AssociatedResourceArn.
  """
  @spec batch_get_attached_file_metadata(
          map(),
          String.t() | atom(),
          batch_get_attached_file_metadata_request(),
          list()
        ) ::
          {:ok, batch_get_attached_file_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_attached_file_metadata_errors()}
  def batch_get_attached_file_metadata(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/attached-files/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"AssociatedResourceArn", "associatedResourceArn"}
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
  Retrieve the flow associations for the given resources.
  """
  @spec batch_get_flow_association(
          map(),
          String.t() | atom(),
          batch_get_flow_association_request(),
          list()
        ) ::
          {:ok, batch_get_flow_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_flow_association_errors()}
  def batch_get_flow_association(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/flow-associations-batch/#{AWS.Util.encode_uri(instance_id)}"
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

  Only the Amazon Connect outbound campaigns service principal is allowed to
  assume a
  role in your account and call this API.

  Allows you to create a batch of contacts in Amazon Connect. The outbound
  campaigns
  capability ingests dial requests via the
  [PutDialRequestBatch](https://docs.aws.amazon.com/connect-outbound/latest/APIReference/API_PutDialRequestBatch.html)
  API. It then uses BatchPutContact to create contacts corresponding
  to those dial requests. If agents are available, the dial requests are dialed
  out, which results
  in a voice call. The resulting voice call uses the same contactId that was
  created by
  BatchPutContact.
  """
  @spec batch_put_contact(map(), String.t() | atom(), batch_put_contact_request(), list()) ::
          {:ok, batch_put_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_put_contact_errors()}
  def batch_put_contact(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/contact/batch/#{AWS.Util.encode_uri(instance_id)}"
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
  Claims an available phone number to your Amazon Connect instance or traffic
  distribution
  group.

  You can call this API only in the same Amazon Web Services Region where the
  Amazon Connect instance or traffic distribution group was created.

  For more information about how to use this operation, see [Claim a phone number in your
  country](https://docs.aws.amazon.com/connect/latest/adminguide/claim-phone-number.html)
  and [Claim phone numbers to traffic distribution
  groups](https://docs.aws.amazon.com/connect/latest/adminguide/claim-phone-numbers-traffic-distribution-groups.html)
  in the *Amazon Connect Administrator
  Guide*.

  You can call the
  [SearchAvailablePhoneNumbers](https://docs.aws.amazon.com/connect/latest/APIReference/API_SearchAvailablePhoneNumbers.html) API for available phone numbers that you can claim. Call
  the
  [DescribePhoneNumber](https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html)
  API to verify the status of a previous
  [ClaimPhoneNumber](https://docs.aws.amazon.com/connect/latest/APIReference/API_ClaimPhoneNumber.html)
  operation.

  If you plan to claim and release numbers frequently,
  contact us for a service quota exception. Otherwise, it is possible you will be
  blocked from
  claiming and releasing any more numbers until up to 180 days past the oldest
  number
  released has expired.

  By default you can claim and release up to 200% of your maximum number of active
  phone numbers. If you claim and release phone numbers using
  the UI or API during a rolling 180 day cycle that exceeds 200% of your phone
  number
  service level quota, you will be blocked from claiming any more numbers until
  180
  days past the oldest number released has expired.

  For example, if you already have 99 claimed numbers and a service level quota of
  99 phone numbers, and in any 180
  day period you release 99, claim 99, and then release 99, you will have exceeded
  the
  200% limit. At that point you are blocked from claiming any more numbers until
  you
  open an Amazon Web Services support ticket.
  """
  @spec claim_phone_number(map(), claim_phone_number_request(), list()) ::
          {:ok, claim_phone_number_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, claim_phone_number_errors()}
  def claim_phone_number(%Client{} = client, input, options \\ []) do
    url_path = "/phone-number/claim"
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
  Allows you to confirm that the attached file has been uploaded using the
  pre-signed URL
  provided in the StartAttachedFileUpload API.
  """
  @spec complete_attached_file_upload(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          complete_attached_file_upload_request(),
          list()
        ) ::
          {:ok, complete_attached_file_upload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, complete_attached_file_upload_errors()}
  def complete_attached_file_upload(
        %Client{} = client,
        file_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/attached-files/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(file_id)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"AssociatedResourceArn", "associatedResourceArn"}
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
  Creates an agent status for the specified Amazon Connect instance.
  """
  @spec create_agent_status(map(), String.t() | atom(), create_agent_status_request(), list()) ::
          {:ok, create_agent_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_agent_status_errors()}
  def create_agent_status(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/agent-status/#{AWS.Util.encode_uri(instance_id)}"
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

  Only the VOICE, EMAIL, and TASK channels are supported.

    
  For VOICE: The supported initiation method is `TRANSFER`. The contacts created
  with this initiation method have a subtype `connect:ExternalAudio`.

    
  For EMAIL: The supported initiation methods are `OUTBOUND`,
  `AGENT_REPLY`, and `FLOW`.

    
  For TASK: The supported initiation method is `API`. Contacts created with this
  API have a sub-type of `connect:ExternalTask`.

  Creates a new VOICE, EMAIL, or TASK contact.

  After a contact is created, you can move it to the desired state by using the
  `InitiateAs` parameter. While you can use API to create task contacts that are
  in the
  `COMPLETED` state, you must contact Amazon Web Services Support before using it
  for
  bulk import use cases. Bulk import causes your requests to be throttled or fail
  if your
  CreateContact limits aren't high enough.
  """
  @spec create_contact(map(), create_contact_request(), list()) ::
          {:ok, create_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_contact_errors()}
  def create_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/create-contact"
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
  Creates a flow for the specified Amazon Connect instance.

  You can also create and update flows using the [Amazon Connect Flow
  language](https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html).
  """
  @spec create_contact_flow(map(), String.t() | atom(), create_contact_flow_request(), list()) ::
          {:ok, create_contact_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_contact_flow_errors()}
  def create_contact_flow(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/contact-flows/#{AWS.Util.encode_uri(instance_id)}"
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
  Creates a flow module for the specified Amazon Connect instance.
  """
  @spec create_contact_flow_module(
          map(),
          String.t() | atom(),
          create_contact_flow_module_request(),
          list()
        ) ::
          {:ok, create_contact_flow_module_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_contact_flow_module_errors()}
  def create_contact_flow_module(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/contact-flow-modules/#{AWS.Util.encode_uri(instance_id)}"
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
  Publishes a new version of the flow provided.

  Versions are immutable and monotonically
  increasing. If the `FlowContentSha256` provided is different from the
  `FlowContentSha256` of the `$LATEST` published flow content, then an error
  is returned. This API only supports creating versions for flows of type
  `Campaign`.
  """
  @spec create_contact_flow_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_contact_flow_version_request(),
          list()
        ) ::
          {:ok, create_contact_flow_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_contact_flow_version_errors()}
  def create_contact_flow_version(
        %Client{} = client,
        contact_flow_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/contact-flows/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_id)}/version"

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
  Create new email address in the specified Amazon Connect instance.

  For more information
  about email addresses, see [Create email addresses](https://docs.aws.amazon.com/connect/latest/adminguide/create-email-address1.html)
  in the
  Amazon Connect Administrator Guide.
  """
  @spec create_email_address(map(), String.t() | atom(), create_email_address_request(), list()) ::
          {:ok, create_email_address_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_email_address_errors()}
  def create_email_address(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/email-addresses/#{AWS.Util.encode_uri(instance_id)}"
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
  Creates an evaluation form in the specified Amazon Connect instance.

  The form can be
  used to define questions related to agent performance, and create sections to
  organize such
  questions. Question and section identifiers cannot be duplicated within the same
  evaluation
  form.
  """
  @spec create_evaluation_form(
          map(),
          String.t() | atom(),
          create_evaluation_form_request(),
          list()
        ) ::
          {:ok, create_evaluation_form_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_evaluation_form_errors()}
  def create_evaluation_form(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/evaluation-forms/#{AWS.Util.encode_uri(instance_id)}"
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
  Creates hours of operation.
  """
  @spec create_hours_of_operation(
          map(),
          String.t() | atom(),
          create_hours_of_operation_request(),
          list()
        ) ::
          {:ok, create_hours_of_operation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_hours_of_operation_errors()}
  def create_hours_of_operation(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/hours-of-operations/#{AWS.Util.encode_uri(instance_id)}"
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
  Creates an hours of operation override in an Amazon Connect hours of operation
  resource.
  """
  @spec create_hours_of_operation_override(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_hours_of_operation_override_request(),
          list()
        ) ::
          {:ok, create_hours_of_operation_override_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_hours_of_operation_override_errors()}
  def create_hours_of_operation_override(
        %Client{} = client,
        hours_of_operation_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/hours-of-operations/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(hours_of_operation_id)}/overrides"

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
  This API is in preview release for Amazon Connect and is subject to change.

  Initiates an Amazon Connect instance with all the supported channels enabled. It
  does
  not attach any storage, such as Amazon Simple Storage Service (Amazon S3) or
  Amazon Kinesis. It
  also does not allow for any configurations on features, such as Contact Lens for
  Amazon Connect.

  For more information, see [Create an Amazon Connect instance](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-instances.html)
  in the *Amazon Connect Administrator Guide*.

  Amazon Connect enforces a limit on the total number of instances that you can
  create or delete in 30 days.
  If you exceed this limit, you will get an error message indicating there has
  been an excessive number of attempts at creating or deleting instances.
  You must wait 30 days before you can restart creating and deleting instances in
  your account.
  """
  @spec create_instance(map(), create_instance_request(), list()) ::
          {:ok, create_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_instance_errors()}
  def create_instance(%Client{} = client, input, options \\ []) do
    url_path = "/instance"
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
  Creates an Amazon Web Services resource association with an Amazon Connect
  instance.
  """
  @spec create_integration_association(
          map(),
          String.t() | atom(),
          create_integration_association_request(),
          list()
        ) ::
          {:ok, create_integration_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_integration_association_errors()}
  def create_integration_association(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/integration-associations"
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
  Adds a new participant into an on-going chat contact or webRTC call.

  For more information,
  see [Customize chat flow experiences by integrating custom participants](https://docs.aws.amazon.com/connect/latest/adminguide/chat-customize-flow.html)
  or [Enable multi-user web, in-app, and video
  calling](https://docs.aws.amazon.com/connect/latest/adminguide/enable-multiuser-inapp.html).
  """
  @spec create_participant(map(), create_participant_request(), list()) ::
          {:ok, create_participant_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_participant_errors()}
  def create_participant(%Client{} = client, input, options \\ []) do
    url_path = "/contact/create-participant"
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
  Enables rehydration of chats for the lifespan of a contact.

  For more information about chat
  rehydration, see [Enable persistent chat](https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html)
  in the
  *Amazon Connect Administrator Guide*.
  """
  @spec create_persistent_contact_association(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_persistent_contact_association_request(),
          list()
        ) ::
          {:ok, create_persistent_contact_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_persistent_contact_association_errors()}
  def create_persistent_contact_association(
        %Client{} = client,
        initial_contact_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/contact/persistent-contact-association/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(initial_contact_id)}"

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
  Creates a new predefined attribute for the specified Amazon Connect instance.

  A *predefined
  attribute* is made up of a name and a value.

  For the predefined attributes per instance quota, see [Amazon Connect quotas](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#connect-quotas).

  ## Use cases

  Following are common uses cases for this API:

    *
  Create an attribute for routing proficiency (for example, agent certification)
  that has
  predefined values (for example, a list of possible certifications). For more
  information, see
  [Create predefined attributes for routing contacts to
  agents](https://docs.aws.amazon.com/connect/latest/adminguide/predefined-attributes.html).

    *
  Create an attribute for business unit name that has a list of predefined
  business unit
  names used in your organization. This is a use case where information for a
  contact varies
  between transfers or conferences. For more information, see [Use contact segment attributes](https://docs.aws.amazon.com/connect/latest/adminguide/use-contact-segment-attributes.html).

  **Endpoints**: See [Amazon Connect endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/connect_region.html).
  """
  @spec create_predefined_attribute(
          map(),
          String.t() | atom(),
          create_predefined_attribute_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_predefined_attribute_errors()}
  def create_predefined_attribute(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/predefined-attributes/#{AWS.Util.encode_uri(instance_id)}"
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
  Creates a prompt.

  For more information about prompts, such as supported file types and
  maximum length, see [Create prompts](https://docs.aws.amazon.com/connect/latest/adminguide/prompts.html) in
  the *Amazon Connect Administrator
  Guide*.
  """
  @spec create_prompt(map(), String.t() | atom(), create_prompt_request(), list()) ::
          {:ok, create_prompt_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_prompt_errors()}
  def create_prompt(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/prompts/#{AWS.Util.encode_uri(instance_id)}"
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
  Creates registration for a device token and a chat contact to receive real-time
  push
  notifications.

  For more information about push notifications, see [Set up push notifications in Amazon Connect for mobile
  chat](https://docs.aws.amazon.com/connect/latest/adminguide/enable-push-notifications-for-mobile-chat.html)
  in the *Amazon Connect
  Administrator Guide*.
  """
  @spec create_push_notification_registration(
          map(),
          String.t() | atom(),
          create_push_notification_registration_request(),
          list()
        ) ::
          {:ok, create_push_notification_registration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_push_notification_registration_errors()}
  def create_push_notification_registration(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/push-notification/#{AWS.Util.encode_uri(instance_id)}/registrations"
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
  Creates a new queue for the specified Amazon Connect instance.

    
  If the phone number is claimed to a traffic distribution group that was created
  in the
  same Region as the Amazon Connect instance where you are calling this API, then
  you can use a
  full phone number ARN or a UUID for `OutboundCallerIdNumberId`. However, if the
  phone number is claimed
  to a traffic distribution group that is in one Region, and you are calling this
  API from an instance in another Amazon Web Services Region that is associated
  with the traffic distribution group, you must provide a full phone number ARN.
  If a
  UUID is provided in this scenario, you will receive a
  `ResourceNotFoundException`.

    
  Only use the phone number ARN format that doesn't contain `instance` in the
  path, for example, `arn:aws:connect:us-east-1:1234567890:phone-number/uuid`.
  This
  is the same ARN format that is returned when you call the
  [ListPhoneNumbersV2](https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbersV2.html) API.

    
  If you plan to use IAM policies to allow/deny access to this API for phone
  number resources claimed to a traffic distribution group, see [Allow or Deny
  queue API actions for phone numbers in a replica
  Region](https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_resource-level-policy-examples.html#allow-deny-queue-actions-replica-region).
  """
  @spec create_queue(map(), String.t() | atom(), create_queue_request(), list()) ::
          {:ok, create_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_queue_errors()}
  def create_queue(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/queues/#{AWS.Util.encode_uri(instance_id)}"
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
  Creates a quick connect for the specified Amazon Connect instance.
  """
  @spec create_quick_connect(map(), String.t() | atom(), create_quick_connect_request(), list()) ::
          {:ok, create_quick_connect_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_quick_connect_errors()}
  def create_quick_connect(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/quick-connects/#{AWS.Util.encode_uri(instance_id)}"
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
  Creates a new routing profile.
  """
  @spec create_routing_profile(
          map(),
          String.t() | atom(),
          create_routing_profile_request(),
          list()
        ) ::
          {:ok, create_routing_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_routing_profile_errors()}
  def create_routing_profile(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}"
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
  Creates a rule for the specified Amazon Connect instance.

  Use the [Rules Function language](https://docs.aws.amazon.com/connect/latest/APIReference/connect-rules-language.html)
  to
  code conditions for the rule.
  """
  @spec create_rule(map(), String.t() | atom(), create_rule_request(), list()) ::
          {:ok, create_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_rule_errors()}
  def create_rule(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(instance_id)}"
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
  Creates a security profile.

  For information about security profiles, see [Security Profiles](https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html)
  in the
  *Amazon Connect Administrator Guide*. For a mapping of the API name and
  user interface name of the security profile permissions, see [List of security profile
  permissions](https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html).
  """
  @spec create_security_profile(
          map(),
          String.t() | atom(),
          create_security_profile_request(),
          list()
        ) ::
          {:ok, create_security_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_security_profile_errors()}
  def create_security_profile(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/security-profiles/#{AWS.Util.encode_uri(instance_id)}"
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
  Creates a new task template in the specified Amazon Connect instance.
  """
  @spec create_task_template(map(), String.t() | atom(), create_task_template_request(), list()) ::
          {:ok, create_task_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_task_template_errors()}
  def create_task_template(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/task/template"
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
  Creates a traffic distribution group given an Amazon Connect instance that has
  been replicated.

  The `SignInConfig` distribution is available only on a
  default `TrafficDistributionGroup` (see the `IsDefault` parameter in the
  [TrafficDistributionGroup](https://docs.aws.amazon.com/connect/latest/APIReference/API_TrafficDistributionGroup.html)  data type). If you call
  `UpdateTrafficDistribution` with a modified `SignInConfig` and a non-default
  `TrafficDistributionGroup`,
  an `InvalidRequestException` is returned.

  For more information about creating traffic distribution groups, see [Set up
  traffic distribution
  groups](https://docs.aws.amazon.com/connect/latest/adminguide/setup-traffic-distribution-groups.html)
  in
  the *Amazon Connect Administrator Guide*.
  """
  @spec create_traffic_distribution_group(
          map(),
          create_traffic_distribution_group_request(),
          list()
        ) ::
          {:ok, create_traffic_distribution_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_traffic_distribution_group_errors()}
  def create_traffic_distribution_group(%Client{} = client, input, options \\ []) do
    url_path = "/traffic-distribution-group"
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
  Creates a use case for an integration association.
  """
  @spec create_use_case(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_use_case_request(),
          list()
        ) ::
          {:ok, create_use_case_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_use_case_errors()}
  def create_use_case(
        %Client{} = client,
        instance_id,
        integration_association_id,
        input,
        options \\ []
      ) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/integration-associations/#{AWS.Util.encode_uri(integration_association_id)}/use-cases"

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
  Creates a user account for the specified Amazon Connect instance.

  Certain
  [UserIdentityInfo](https://docs.aws.amazon.com/connect/latest/APIReference/API_UserIdentityInfo.html) parameters
  are required in some situations. For example, `Email`, `FirstName` and
  `LastName` are required if you are using Amazon Connect or SAML for identity
  management.

  For information about how to create users using the Amazon Connect admin
  website, see [Add
  Users](https://docs.aws.amazon.com/connect/latest/adminguide/user-management.html)
  in the *Amazon Connect Administrator Guide*.
  """
  @spec create_user(map(), String.t() | atom(), create_user_request(), list()) ::
          {:ok, create_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_user_errors()}
  def create_user(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/users/#{AWS.Util.encode_uri(instance_id)}"
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
  Creates a new user hierarchy group.
  """
  @spec create_user_hierarchy_group(
          map(),
          String.t() | atom(),
          create_user_hierarchy_group_request(),
          list()
        ) ::
          {:ok, create_user_hierarchy_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_user_hierarchy_group_errors()}
  def create_user_hierarchy_group(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/user-hierarchy-groups/#{AWS.Util.encode_uri(instance_id)}"
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
  Creates a new view with the possible status of `SAVED` or
  `PUBLISHED`.

  The views will have a unique name for each connect instance.

  It performs basic content validation if the status is `SAVED` or full content
  validation if the status is set to `PUBLISHED`. An error is returned if
  validation
  fails. It associates either the `$SAVED` qualifier or both of the `$SAVED`
  and `$LATEST` qualifiers with the provided view content based on the status. The
  view
  is idempotent if ClientToken is provided.
  """
  @spec create_view(map(), String.t() | atom(), create_view_request(), list()) ::
          {:ok, create_view_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_view_errors()}
  def create_view(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/views/#{AWS.Util.encode_uri(instance_id)}"
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
  Publishes a new version of the view identifier.

  Versions are immutable and monotonically increasing.

  It returns the highest version if there is no change in content compared to that
  version. An
  error is displayed if the supplied ViewContentSha256 is different from the
  ViewContentSha256 of
  the `$LATEST` alias.
  """
  @spec create_view_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_view_version_request(),
          list()
        ) ::
          {:ok, create_view_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_view_version_errors()}
  def create_view_version(%Client{} = client, instance_id, view_id, input, options \\ []) do
    url_path =
      "/views/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(view_id)}/versions"

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
  Creates a custom vocabulary associated with your Amazon Connect instance.

  You can set a
  custom vocabulary to be your default vocabulary for a given language. Contact
  Lens for Amazon Connect uses the default
  vocabulary in post-call and real-time contact analysis sessions for that
  language.
  """
  @spec create_vocabulary(map(), String.t() | atom(), create_vocabulary_request(), list()) ::
          {:ok, create_vocabulary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_vocabulary_errors()}
  def create_vocabulary(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/vocabulary/#{AWS.Util.encode_uri(instance_id)}"
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
  Deactivates an evaluation form in the specified Amazon Connect instance.

  After a form is deactivated,
  it is no longer available for users to start new evaluations based on the form.
  """
  @spec deactivate_evaluation_form(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          deactivate_evaluation_form_request(),
          list()
        ) ::
          {:ok, deactivate_evaluation_form_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deactivate_evaluation_form_errors()}
  def deactivate_evaluation_form(
        %Client{} = client,
        evaluation_form_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/evaluation-forms/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(evaluation_form_id)}/deactivate"

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
  Deletes an attached file along with the underlying S3 Object.

  The attached file is **permanently deleted** if S3 bucket
  versioning is not enabled.
  """
  @spec delete_attached_file(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_attached_file_request(),
          list()
        ) ::
          {:ok, delete_attached_file_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_attached_file_errors()}
  def delete_attached_file(%Client{} = client, file_id, instance_id, input, options \\ []) do
    url_path =
      "/attached-files/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(file_id)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"AssociatedResourceArn", "associatedResourceArn"}
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
  Deletes a contact evaluation in the specified Amazon Connect instance.
  """
  @spec delete_contact_evaluation(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_contact_evaluation_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_contact_evaluation_errors()}
  def delete_contact_evaluation(
        %Client{} = client,
        evaluation_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/contact-evaluations/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(evaluation_id)}"

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
  Deletes a flow for the specified Amazon Connect instance.
  """
  @spec delete_contact_flow(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_contact_flow_request(),
          list()
        ) ::
          {:ok, delete_contact_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_contact_flow_errors()}
  def delete_contact_flow(%Client{} = client, contact_flow_id, instance_id, input, options \\ []) do
    url_path =
      "/contact-flows/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_id)}"

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
  Deletes the specified flow module.
  """
  @spec delete_contact_flow_module(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_contact_flow_module_request(),
          list()
        ) ::
          {:ok, delete_contact_flow_module_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_contact_flow_module_errors()}
  def delete_contact_flow_module(
        %Client{} = client,
        contact_flow_module_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/contact-flow-modules/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_module_id)}"

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
  Deletes the particular version specified in flow version identifier.
  """
  @spec delete_contact_flow_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_contact_flow_version_request(),
          list()
        ) ::
          {:ok, delete_contact_flow_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_contact_flow_version_errors()}
  def delete_contact_flow_version(
        %Client{} = client,
        contact_flow_id,
        contact_flow_version,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/contact-flows/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_id)}/version/#{AWS.Util.encode_uri(contact_flow_version)}"

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
  Deletes email address from the specified Amazon Connect instance.
  """
  @spec delete_email_address(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_email_address_request(),
          list()
        ) ::
          {:ok, delete_email_address_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_email_address_errors()}
  def delete_email_address(
        %Client{} = client,
        email_address_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/email-addresses/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(email_address_id)}"

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
  Deletes an evaluation form in the specified Amazon Connect instance.

    *
  If the version property is provided, only the specified version of the
  evaluation form is
  deleted.

    *
  If no version is provided, then the full form (all versions) is deleted.
  """
  @spec delete_evaluation_form(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_evaluation_form_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_evaluation_form_errors()}
  def delete_evaluation_form(
        %Client{} = client,
        evaluation_form_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/evaluation-forms/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(evaluation_form_id)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"EvaluationFormVersion", "version"}
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
  Deletes an hours of operation.
  """
  @spec delete_hours_of_operation(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_hours_of_operation_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_hours_of_operation_errors()}
  def delete_hours_of_operation(
        %Client{} = client,
        hours_of_operation_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/hours-of-operations/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(hours_of_operation_id)}"

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
  Deletes an hours of operation override in an Amazon Connect hours of operation
  resource.
  """
  @spec delete_hours_of_operation_override(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_hours_of_operation_override_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_hours_of_operation_override_errors()}
  def delete_hours_of_operation_override(
        %Client{} = client,
        hours_of_operation_id,
        hours_of_operation_override_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/hours-of-operations/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(hours_of_operation_id)}/overrides/#{AWS.Util.encode_uri(hours_of_operation_override_id)}"

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
  This API is in preview release for Amazon Connect and is subject to change.

  Deletes the Amazon Connect instance. For more information, see [Delete your Amazon Connect
  instance](https://docs.aws.amazon.com/connect/latest/adminguide/delete-connect-instance.html)
  in the *Amazon Connect Administrator
  Guide*.

  Amazon Connect enforces a limit on the total number of instances that you can
  create or delete in 30 days.
  If you exceed this limit, you will get an error message indicating there has
  been an excessive number of attempts at creating or deleting instances.
  You must wait 30 days before you can restart creating and deleting instances in
  your account.
  """
  @spec delete_instance(map(), String.t() | atom(), delete_instance_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_instance_errors()}
  def delete_instance(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"ClientToken", "clientToken"}
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
  Deletes an Amazon Web Services resource association from an Amazon Connect
  instance.

  The
  association must not have any use cases associated with it.
  """
  @spec delete_integration_association(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_integration_association_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_integration_association_errors()}
  def delete_integration_association(
        %Client{} = client,
        instance_id,
        integration_association_id,
        input,
        options \\ []
      ) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/integration-associations/#{AWS.Util.encode_uri(integration_association_id)}"

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
  Deletes a predefined attribute from the specified Amazon Connect instance.
  """
  @spec delete_predefined_attribute(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_predefined_attribute_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_predefined_attribute_errors()}
  def delete_predefined_attribute(%Client{} = client, instance_id, name, input, options \\ []) do
    url_path =
      "/predefined-attributes/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(name)}"

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
  Deletes a prompt.
  """
  @spec delete_prompt(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_prompt_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_prompt_errors()}
  def delete_prompt(%Client{} = client, instance_id, prompt_id, input, options \\ []) do
    url_path = "/prompts/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(prompt_id)}"
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
  Deletes registration for a device token and a chat contact.
  """
  @spec delete_push_notification_registration(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_push_notification_registration_request(),
          list()
        ) ::
          {:ok, delete_push_notification_registration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_push_notification_registration_errors()}
  def delete_push_notification_registration(
        %Client{} = client,
        instance_id,
        registration_id,
        input,
        options \\ []
      ) do
    url_path =
      "/push-notification/#{AWS.Util.encode_uri(instance_id)}/registrations/#{AWS.Util.encode_uri(registration_id)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"ContactId", "contactId"}
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
  Deletes a queue.
  """
  @spec delete_queue(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_queue_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_queue_errors()}
  def delete_queue(%Client{} = client, instance_id, queue_id, input, options \\ []) do
    url_path = "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}"
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
  Deletes a quick connect.

  After calling
  [DeleteUser](https://docs.aws.amazon.com/connect/latest/APIReference/API_DeleteUser.html), it's important to
  call `DeleteQuickConnect` to delete any records related to the deleted users.
  This
  will help you:

    
  Avoid dangling resources that impact your service quotas.

    
  Remove deleted users so they don't appear to agents as transfer options.

    
  Avoid the disruption of other Amazon Connect processes, such as instance
  replication
  and syncing if you're using [Amazon Connect
  Global
  Resiliency](https://docs.aws.amazon.com/connect/latest/adminguide/setup-connect-global-resiliency.html).
  """
  @spec delete_quick_connect(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_quick_connect_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_quick_connect_errors()}
  def delete_quick_connect(
        %Client{} = client,
        instance_id,
        quick_connect_id,
        input,
        options \\ []
      ) do
    url_path =
      "/quick-connects/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(quick_connect_id)}"

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
  Deletes a routing profile.
  """
  @spec delete_routing_profile(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_routing_profile_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_routing_profile_errors()}
  def delete_routing_profile(
        %Client{} = client,
        instance_id,
        routing_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}"

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
  Deletes a rule for the specified Amazon Connect instance.
  """
  @spec delete_rule(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_rule_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_rule_errors()}
  def delete_rule(%Client{} = client, instance_id, rule_id, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(rule_id)}"
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
  Deletes a security profile.
  """
  @spec delete_security_profile(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_security_profile_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_security_profile_errors()}
  def delete_security_profile(
        %Client{} = client,
        instance_id,
        security_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/security-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(security_profile_id)}"

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
  Deletes the task template.
  """
  @spec delete_task_template(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_task_template_request(),
          list()
        ) ::
          {:ok, delete_task_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_task_template_errors()}
  def delete_task_template(
        %Client{} = client,
        instance_id,
        task_template_id,
        input,
        options \\ []
      ) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/task/template/#{AWS.Util.encode_uri(task_template_id)}"

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
  Deletes a traffic distribution group.

  This API can be called only in the Region where the traffic distribution group
  is
  created.

  For more information about deleting traffic distribution groups, see [Delete traffic distribution
  groups](https://docs.aws.amazon.com/connect/latest/adminguide/delete-traffic-distribution-groups.html)
  in
  the *Amazon Connect Administrator Guide*.
  """
  @spec delete_traffic_distribution_group(
          map(),
          String.t() | atom(),
          delete_traffic_distribution_group_request(),
          list()
        ) ::
          {:ok, delete_traffic_distribution_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_traffic_distribution_group_errors()}
  def delete_traffic_distribution_group(
        %Client{} = client,
        traffic_distribution_group_id,
        input,
        options \\ []
      ) do
    url_path = "/traffic-distribution-group/#{AWS.Util.encode_uri(traffic_distribution_group_id)}"
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
  Deletes a use case from an integration association.
  """
  @spec delete_use_case(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_use_case_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_use_case_errors()}
  def delete_use_case(
        %Client{} = client,
        instance_id,
        integration_association_id,
        use_case_id,
        input,
        options \\ []
      ) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/integration-associations/#{AWS.Util.encode_uri(integration_association_id)}/use-cases/#{AWS.Util.encode_uri(use_case_id)}"

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
  Deletes a user account from the specified Amazon Connect instance.

  For information about what happens to a user's data when their account is
  deleted, see
  [Delete Users from Your Amazon Connect
  Instance](https://docs.aws.amazon.com/connect/latest/adminguide/delete-users.html)
  in the *Amazon Connect Administrator
  Guide*.

  After calling DeleteUser, call
  [DeleteQuickConnect](https://docs.aws.amazon.com/connect/latest/APIReference/API_DeleteQuickConnect.html) to
  delete any records related to the deleted users. This will help you:

    
  Avoid dangling resources that impact your service quotas.

    
  Remove deleted users so they don't appear to agents as transfer options.

    
  Avoid the disruption of other Amazon Connect processes, such as instance
  replication
  and syncing if you're using [Amazon Connect
  Global
  Resiliency](https://docs.aws.amazon.com/connect/latest/adminguide/setup-connect-global-resiliency.html).
  """
  @spec delete_user(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_user_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_user_errors()}
  def delete_user(%Client{} = client, instance_id, user_id, input, options \\ []) do
    url_path = "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}"
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
  Deletes an existing user hierarchy group.

  It must not be associated with any agents or have
  any active child groups.
  """
  @spec delete_user_hierarchy_group(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_user_hierarchy_group_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_user_hierarchy_group_errors()}
  def delete_user_hierarchy_group(
        %Client{} = client,
        hierarchy_group_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/user-hierarchy-groups/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(hierarchy_group_id)}"

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
  Deletes the view entirely.

  It deletes the view and all associated qualifiers (versions and
  aliases).
  """
  @spec delete_view(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_view_request(),
          list()
        ) ::
          {:ok, delete_view_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_view_errors()}
  def delete_view(%Client{} = client, instance_id, view_id, input, options \\ []) do
    url_path = "/views/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(view_id)}"
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
  Deletes the particular version specified in `ViewVersion` identifier.
  """
  @spec delete_view_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_view_version_request(),
          list()
        ) ::
          {:ok, delete_view_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_view_version_errors()}
  def delete_view_version(
        %Client{} = client,
        instance_id,
        view_id,
        view_version,
        input,
        options \\ []
      ) do
    url_path =
      "/views/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(view_id)}/versions/#{AWS.Util.encode_uri(view_version)}"

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
  Deletes the vocabulary that has the given identifier.
  """
  @spec delete_vocabulary(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_vocabulary_request(),
          list()
        ) ::
          {:ok, delete_vocabulary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_vocabulary_errors()}
  def delete_vocabulary(%Client{} = client, instance_id, vocabulary_id, input, options \\ []) do
    url_path =
      "/vocabulary-remove/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(vocabulary_id)}"

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
  Describes an agent status.
  """
  @spec describe_agent_status(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_agent_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_agent_status_errors()}
  def describe_agent_status(%Client{} = client, agent_status_id, instance_id, options \\ []) do
    url_path =
      "/agent-status/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(agent_status_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  To
  request access to this API, contact Amazon Web Services Support.

  Describes the target authentication profile.
  """
  @spec describe_authentication_profile(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_authentication_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_authentication_profile_errors()}
  def describe_authentication_profile(
        %Client{} = client,
        authentication_profile_id,
        instance_id,
        options \\ []
      ) do
    url_path =
      "/authentication-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(authentication_profile_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Describes the specified contact.

  ## Use cases

  Following are common uses cases for this API:

    *
  Retrieve contact information such as the caller's phone number and the specific
  number the
  caller dialed to integrate into custom monitoring or custom agent experience
  solutions.

    *
  Detect when a customer chat session disconnects due to a network issue on the
  agent's end.
  Use the DisconnectReason field in the
  [ContactTraceRecord](https://docs.aws.amazon.com/connect/latest/adminguide/ctr-data-model.html#ctr-ContactTraceRecord) to detect this event and then re-queue the chat for followup.

    *
  Identify after contact work (ACW) duration and call recordings information when
  a
  COMPLETED event is received by using the [contact event
  stream](https://docs.aws.amazon.com/connect/latest/adminguide/contact-events.html).

  ## Important things to know

    *

  `SystemEndpoint` is not populated for contacts with initiation method of
  MONITOR, QUEUE_TRANSFER, or CALLBACK

    *
  Contact information remains available in Amazon Connect for 24 months from the
  `InitiationTimestamp`, and then it is deleted. Only contact information that is
  available in Amazon Connect is returned by this API.

  **Endpoints**: See [Amazon Connect endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/connect_region.html).
  """
  @spec describe_contact(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_contact_errors()}
  def describe_contact(%Client{} = client, contact_id, instance_id, options \\ []) do
    url_path = "/contacts/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a contact evaluation in the specified Amazon Connect instance.
  """
  @spec describe_contact_evaluation(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_contact_evaluation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_contact_evaluation_errors()}
  def describe_contact_evaluation(%Client{} = client, evaluation_id, instance_id, options \\ []) do
    url_path =
      "/contact-evaluations/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(evaluation_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the specified flow.

  You can also create and update flows using the [Amazon Connect Flow
  language](https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html).

  Use the `$SAVED` alias in the request to describe the `SAVED` content
  of a Flow. For example, `arn:aws:.../contact-flow/{id}:$SAVED`. After a flow is
  published, `$SAVED` needs to be supplied to view saved content that has not been
  published.

  Use `arn:aws:.../contact-flow/{id}:{version}` to retrieve the content of a
  specific flow version.

  In the response, **Status** indicates the flow status as either
  `SAVED` or `PUBLISHED`. The `PUBLISHED` status will initiate
  validation on the content. `SAVED` does not initiate validation of the content.
  `SAVED` | `PUBLISHED`
  """
  @spec describe_contact_flow(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_contact_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_contact_flow_errors()}
  def describe_contact_flow(%Client{} = client, contact_flow_id, instance_id, options \\ []) do
    url_path =
      "/contact-flows/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the specified flow module.

  Use the `$SAVED` alias in the request to describe the `SAVED` content
  of a Flow. For example, `arn:aws:.../contact-flow/{id}:$SAVED`. After a flow is
  published, `$SAVED` needs to be supplied to view saved content that has not been
  published.
  """
  @spec describe_contact_flow_module(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_contact_flow_module_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_contact_flow_module_errors()}
  def describe_contact_flow_module(
        %Client{} = client,
        contact_flow_module_id,
        instance_id,
        options \\ []
      ) do
    url_path =
      "/contact-flow-modules/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_module_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describe email address form the specified Amazon Connect instance.
  """
  @spec describe_email_address(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_email_address_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_email_address_errors()}
  def describe_email_address(%Client{} = client, email_address_id, instance_id, options \\ []) do
    url_path =
      "/email-addresses/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(email_address_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes an evaluation form in the specified Amazon Connect instance.

  If the version
  property is not provided, the latest version of the evaluation form is
  described.
  """
  @spec describe_evaluation_form(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, describe_evaluation_form_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_evaluation_form_errors()}
  def describe_evaluation_form(
        %Client{} = client,
        evaluation_form_id,
        instance_id,
        evaluation_form_version \\ nil,
        options \\ []
      ) do
    url_path =
      "/evaluation-forms/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(evaluation_form_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(evaluation_form_version) do
        [{"version", evaluation_form_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the hours of operation.
  """
  @spec describe_hours_of_operation(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_hours_of_operation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_hours_of_operation_errors()}
  def describe_hours_of_operation(
        %Client{} = client,
        hours_of_operation_id,
        instance_id,
        options \\ []
      ) do
    url_path =
      "/hours-of-operations/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(hours_of_operation_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the hours of operation override.
  """
  @spec describe_hours_of_operation_override(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, describe_hours_of_operation_override_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_hours_of_operation_override_errors()}
  def describe_hours_of_operation_override(
        %Client{} = client,
        hours_of_operation_id,
        hours_of_operation_override_id,
        instance_id,
        options \\ []
      ) do
    url_path =
      "/hours-of-operations/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(hours_of_operation_id)}/overrides/#{AWS.Util.encode_uri(hours_of_operation_override_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Returns the current state of the specified instance identifier. It tracks the
  instance while
  it is being created and returns an error status, if applicable.

  If an instance is not created successfully, the instance status reason field
  returns details
  relevant to the reason. The instance in a failed state is returned only for 24
  hours after the
  CreateInstance API was invoked.
  """
  @spec describe_instance(map(), String.t() | atom(), list()) ::
          {:ok, describe_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_instance_errors()}
  def describe_instance(%Client{} = client, instance_id, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Describes the specified instance attribute.
  """
  @spec describe_instance_attribute(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_instance_attribute_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_instance_attribute_errors()}
  def describe_instance_attribute(%Client{} = client, attribute_type, instance_id, options \\ []) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/attribute/#{AWS.Util.encode_uri(attribute_type)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Retrieves the current storage configurations for the specified resource type,
  association
  ID, and instance ID.
  """
  @spec describe_instance_storage_config(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, describe_instance_storage_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_instance_storage_config_errors()}
  def describe_instance_storage_config(
        %Client{} = client,
        association_id,
        instance_id,
        resource_type,
        options \\ []
      ) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/storage-config/#{AWS.Util.encode_uri(association_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets details and status of a phone number that’s claimed to your Amazon Connect
  instance
  or traffic distribution group.

  If the number is claimed to a traffic distribution group, and you are calling in
  the Amazon Web Services Region
  where the traffic distribution group was created, you can use either a phone
  number ARN or UUID value for the
  `PhoneNumberId` URI request parameter. However, if the number is claimed to a
  traffic distribution group
  and you are calling this API in the alternate Amazon Web Services Region
  associated with the
  traffic distribution group, you must provide a full phone number ARN. If a UUID
  is provided
  in
  this scenario, you receive a `ResourceNotFoundException`.
  """
  @spec describe_phone_number(map(), String.t() | atom(), list()) ::
          {:ok, describe_phone_number_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_phone_number_errors()}
  def describe_phone_number(%Client{} = client, phone_number_id, options \\ []) do
    url_path = "/phone-number/#{AWS.Util.encode_uri(phone_number_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a predefined attribute for the specified Amazon Connect instance.

  A *predefined
  attribute* is made up of a name and a value. You can use predefined attributes
  for:

    *
  Routing proficiency (for example, agent certification) that has predefined
  values (for
  example, a list of possible certifications). For more information, see [Create predefined attributes for routing contacts to
  agents](https://docs.aws.amazon.com/connect/latest/adminguide/predefined-attributes.html).

    *
  Contact information that varies between transfers or conferences, such as the
  name of the
  business unit handling the contact. For more information, see [Use contact segment
  attributes](https://docs.aws.amazon.com/connect/latest/adminguide/use-contact-segment-attributes.html).

  For the predefined attributes per instance quota, see [Amazon Connect quotas](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#connect-quotas).

  **Endpoints**: See [Amazon Connect endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/connect_region.html).
  """
  @spec describe_predefined_attribute(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_predefined_attribute_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_predefined_attribute_errors()}
  def describe_predefined_attribute(%Client{} = client, instance_id, name, options \\ []) do
    url_path =
      "/predefined-attributes/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the prompt.
  """
  @spec describe_prompt(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_prompt_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_prompt_errors()}
  def describe_prompt(%Client{} = client, instance_id, prompt_id, options \\ []) do
    url_path = "/prompts/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(prompt_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the specified queue.
  """
  @spec describe_queue(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_queue_errors()}
  def describe_queue(%Client{} = client, instance_id, queue_id, options \\ []) do
    url_path = "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the quick connect.
  """
  @spec describe_quick_connect(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_quick_connect_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_quick_connect_errors()}
  def describe_quick_connect(%Client{} = client, instance_id, quick_connect_id, options \\ []) do
    url_path =
      "/quick-connects/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(quick_connect_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the specified routing profile.

  `DescribeRoutingProfile` does not populate AssociatedQueueIds in its response.
  The example Response Syntax shown on this page is incorrect; we are working to
  update it.
  [SearchRoutingProfiles](https://docs.aws.amazon.com/connect/latest/APIReference/API_SearchRoutingProfiles.html)
  does include AssociatedQueueIds.
  """
  @spec describe_routing_profile(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_routing_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_routing_profile_errors()}
  def describe_routing_profile(%Client{} = client, instance_id, routing_profile_id, options \\ []) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes a rule for the specified Amazon Connect instance.
  """
  @spec describe_rule(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_rule_errors()}
  def describe_rule(%Client{} = client, instance_id, rule_id, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(rule_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets basic information about the security profile.

  For information about security profiles, see [Security Profiles](https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html)
  in the
  *Amazon Connect Administrator Guide*. For a mapping of the API name and
  user interface name of the security profile permissions, see [List of security profile
  permissions](https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html).
  """
  @spec describe_security_profile(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_security_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_security_profile_errors()}
  def describe_security_profile(
        %Client{} = client,
        instance_id,
        security_profile_id,
        options \\ []
      ) do
    url_path =
      "/security-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(security_profile_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets details and status of a traffic distribution group.
  """
  @spec describe_traffic_distribution_group(map(), String.t() | atom(), list()) ::
          {:ok, describe_traffic_distribution_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_traffic_distribution_group_errors()}
  def describe_traffic_distribution_group(
        %Client{} = client,
        traffic_distribution_group_id,
        options \\ []
      ) do
    url_path = "/traffic-distribution-group/#{AWS.Util.encode_uri(traffic_distribution_group_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the specified user.

  You can [find the instance ID in the Amazon Connect console](https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
  (it’s the final part of the ARN). The console does not display the
  user IDs. Instead, list the users and note the IDs provided in the output.
  """
  @spec describe_user(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_user_errors()}
  def describe_user(%Client{} = client, instance_id, user_id, options \\ []) do
    url_path = "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the specified hierarchy group.
  """
  @spec describe_user_hierarchy_group(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_user_hierarchy_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_user_hierarchy_group_errors()}
  def describe_user_hierarchy_group(
        %Client{} = client,
        hierarchy_group_id,
        instance_id,
        options \\ []
      ) do
    url_path =
      "/user-hierarchy-groups/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(hierarchy_group_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the hierarchy structure of the specified Amazon Connect instance.
  """
  @spec describe_user_hierarchy_structure(map(), String.t() | atom(), list()) ::
          {:ok, describe_user_hierarchy_structure_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_user_hierarchy_structure_errors()}
  def describe_user_hierarchy_structure(%Client{} = client, instance_id, options \\ []) do
    url_path = "/user-hierarchy-structure/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the view for the specified Amazon Connect instance and view
  identifier.

  The view identifier can be supplied as a ViewId or ARN.

  `$SAVED` needs to be supplied if a view is unpublished.

  The view identifier can contain an optional qualifier, for example,
  `:$SAVED`, which is either an actual version number or an Amazon Connect managed
  qualifier `$SAVED | $LATEST`. If it is not supplied, then
  `$LATEST` is assumed for customer managed views and an error is returned if
  there is
  no published content available. Version 1 is assumed for Amazon Web Services
  managed views.
  """
  @spec describe_view(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_view_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_view_errors()}
  def describe_view(%Client{} = client, instance_id, view_id, options \\ []) do
    url_path = "/views/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(view_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the specified vocabulary.
  """
  @spec describe_vocabulary(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, describe_vocabulary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_vocabulary_errors()}
  def describe_vocabulary(%Client{} = client, instance_id, vocabulary_id, options \\ []) do
    url_path =
      "/vocabulary/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(vocabulary_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Removes the dataset ID associated with a given Amazon Connect instance.
  """
  @spec disassociate_analytics_data_set(
          map(),
          String.t() | atom(),
          disassociate_analytics_data_set_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_analytics_data_set_errors()}
  def disassociate_analytics_data_set(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/analytics-data/instance/#{AWS.Util.encode_uri(instance_id)}/association"
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
  This API is in preview release for Amazon Connect and is subject to change.

  Revokes access to integrated applications from Amazon Connect.
  """
  @spec disassociate_approved_origin(
          map(),
          String.t() | atom(),
          disassociate_approved_origin_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_approved_origin_errors()}
  def disassociate_approved_origin(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/approved-origin"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"ClientToken", "clientToken"},
        {"Origin", "origin"}
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
  This API is in preview release for Amazon Connect and is subject to change.

  Revokes authorization from the specified instance to access the specified Amazon
  Lex or Amazon Lex V2
  bot.
  """
  @spec disassociate_bot(map(), String.t() | atom(), disassociate_bot_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_bot_errors()}
  def disassociate_bot(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/bot"
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
  Disassociates a connect resource from a flow.
  """
  @spec disassociate_flow(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          disassociate_flow_request(),
          list()
        ) ::
          {:ok, disassociate_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_flow_errors()}
  def disassociate_flow(
        %Client{} = client,
        instance_id,
        resource_id,
        resource_type,
        input,
        options \\ []
      ) do
    url_path =
      "/flow-associations/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(resource_id)}/#{AWS.Util.encode_uri(resource_type)}"

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
  This API is in preview release for Amazon Connect and is subject to change.

  Removes the storage type configurations for the specified resource type and
  association
  ID.
  """
  @spec disassociate_instance_storage_config(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          disassociate_instance_storage_config_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_instance_storage_config_errors()}
  def disassociate_instance_storage_config(
        %Client{} = client,
        association_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/storage-config/#{AWS.Util.encode_uri(association_id)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"ClientToken", "clientToken"},
        {"ResourceType", "resourceType"}
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
  This API is in preview release for Amazon Connect and is subject to change.

  Remove the Lambda function from the dropdown options available in the relevant
  flow blocks.
  """
  @spec disassociate_lambda_function(
          map(),
          String.t() | atom(),
          disassociate_lambda_function_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_lambda_function_errors()}
  def disassociate_lambda_function(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/lambda-function"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"ClientToken", "clientToken"},
        {"FunctionArn", "functionArn"}
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
  This API is in preview release for Amazon Connect and is subject to change.

  Revokes authorization from the specified instance to access the specified Amazon
  Lex
  bot.
  """
  @spec disassociate_lex_bot(map(), String.t() | atom(), disassociate_lex_bot_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_lex_bot_errors()}
  def disassociate_lex_bot(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/lex-bot"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"BotName", "botName"},
        {"ClientToken", "clientToken"},
        {"LexRegion", "lexRegion"}
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
  Removes the flow association from a phone number claimed to your Amazon Connect
  instance.

  If the number is claimed to a traffic distribution group, and you are calling
  this API using an instance in the
  Amazon Web Services Region where the traffic distribution group was created, you
  can use either a full phone number
  ARN or UUID value for the `PhoneNumberId` URI request parameter. However, if the
  number is claimed to a traffic distribution group and you are calling this API
  using an instance in the alternate
  Amazon Web Services Region associated with the traffic distribution group, you
  must provide a full phone number ARN.
  If a UUID is provided in this scenario, you will receive a
  `ResourceNotFoundException`.
  """
  @spec disassociate_phone_number_contact_flow(
          map(),
          String.t() | atom(),
          disassociate_phone_number_contact_flow_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_phone_number_contact_flow_errors()}
  def disassociate_phone_number_contact_flow(
        %Client{} = client,
        phone_number_id,
        input,
        options \\ []
      ) do
    url_path = "/phone-number/#{AWS.Util.encode_uri(phone_number_id)}/contact-flow"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"InstanceId", "instanceId"}
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
  Disassociates a set of quick connects from a queue.
  """
  @spec disassociate_queue_quick_connects(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          disassociate_queue_quick_connects_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_queue_quick_connects_errors()}
  def disassociate_queue_quick_connects(
        %Client{} = client,
        instance_id,
        queue_id,
        input,
        options \\ []
      ) do
    url_path =
      "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/disassociate-quick-connects"

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
  Disassociates a set of queues from a routing profile.

  Up to 10 queue references can be disassociated in a single API call. More than
  10 queue
  references results in a single call results in an InvalidParameterException.
  """
  @spec disassociate_routing_profile_queues(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          disassociate_routing_profile_queues_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_routing_profile_queues_errors()}
  def disassociate_routing_profile_queues(
        %Client{} = client,
        instance_id,
        routing_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}/disassociate-queues"

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
  This API is in preview release for Amazon Connect and is subject to change.

  Deletes the specified security key.
  """
  @spec disassociate_security_key(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          disassociate_security_key_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_security_key_errors()}
  def disassociate_security_key(
        %Client{} = client,
        association_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/security-key/#{AWS.Util.encode_uri(association_id)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"ClientToken", "clientToken"}
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
  Disassociates an agent from a traffic distribution group.

  This API can be called only in the
  Region where the traffic distribution group is created.
  """
  @spec disassociate_traffic_distribution_group_user(
          map(),
          String.t() | atom(),
          disassociate_traffic_distribution_group_user_request(),
          list()
        ) ::
          {:ok, disassociate_traffic_distribution_group_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_traffic_distribution_group_user_errors()}
  def disassociate_traffic_distribution_group_user(
        %Client{} = client,
        traffic_distribution_group_id,
        input,
        options \\ []
      ) do
    url_path =
      "/traffic-distribution-group/#{AWS.Util.encode_uri(traffic_distribution_group_id)}/user"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"InstanceId", "InstanceId"},
        {"UserId", "UserId"}
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
  Disassociates a set of proficiencies from a user.
  """
  @spec disassociate_user_proficiencies(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          disassociate_user_proficiencies_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_user_proficiencies_errors()}
  def disassociate_user_proficiencies(
        %Client{} = client,
        instance_id,
        user_id,
        input,
        options \\ []
      ) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/disassociate-proficiencies"

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
  Dismisses contacts from an agent’s CCP and returns the agent to an available
  state, which
  allows the agent to receive a new routed contact.

  Contacts can only be dismissed if they are in a
  `MISSED`, `ERROR`, `ENDED`, or `REJECTED` state in
  the [Agent Event
  Stream](https://docs.aws.amazon.com/connect/latest/adminguide/about-contact-states.html).
  """
  @spec dismiss_user_contact(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          dismiss_user_contact_request(),
          list()
        ) ::
          {:ok, dismiss_user_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, dismiss_user_contact_errors()}
  def dismiss_user_contact(%Client{} = client, instance_id, user_id, input, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/contact"

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
  Provides a pre-signed URL for download of an approved attached file.

  This API also returns
  metadata about the attached file. It will only return a downloadURL if the
  status of the attached
  file is `APPROVED`.
  """
  @spec get_attached_file(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_attached_file_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_attached_file_errors()}
  def get_attached_file(
        %Client{} = client,
        file_id,
        instance_id,
        associated_resource_arn,
        url_expiry_in_seconds \\ nil,
        options \\ []
      ) do
    url_path =
      "/attached-files/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(file_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(url_expiry_in_seconds) do
        [{"urlExpiryInSeconds", url_expiry_in_seconds} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(associated_resource_arn) do
        [{"associatedResourceArn", associated_resource_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the contact attributes for the specified contact.
  """
  @spec get_contact_attributes(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_contact_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_contact_attributes_errors()}
  def get_contact_attributes(%Client{} = client, initial_contact_id, instance_id, options \\ []) do
    url_path =
      "/contact/attributes/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(initial_contact_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the position of the contact in the queue.

  ## Use cases

  Following are common uses cases for position in queue:

    *
  Understand the expected wait experience of a contact.

    *
  Inform customers of their position in queue and potentially offer a callback.

    *
  Make data-driven routing decisions between primary and alternative queues.

    *
  Enhance queue visibility and leverage agent proficiencies to streamline contact
  routing.

  ## Important things to know

    *
  The only way to retrieve the position of the contact in queue is by using this
  API. You
  can't retrieve the position by using flows and attributes.

    *
  For more information, see the [Position in queue](https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html)
  metric in
  the *Amazon Connect Administrator Guide*.

  **Endpoints**: See [Amazon Connect endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/connect_region.html).
  """
  @spec get_contact_metrics(map(), get_contact_metrics_request(), list()) ::
          {:ok, get_contact_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_contact_metrics_errors()}
  def get_contact_metrics(%Client{} = client, input, options \\ []) do
    url_path = "/metrics/contact"
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
  Gets the real-time metric data from the specified Amazon Connect instance.

  For a description of each metric, see [Metrics definitions](https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html)
  in the
  *Amazon Connect Administrator Guide*.

  When you make a successful API request, you can expect the following metric
  values in the
  response:

    

  **Metric value is null**: The calculation cannot be
  performed due to divide by zero or insufficient data

    

  **Metric value is a number (including 0) of defined type**:
  The number provided is the calculation result

    

  **MetricResult list is empty**: The request cannot find any
  data in the system

  The following guidelines can help you work with the API:

    
  Each dimension in the metric response must contain a value

    
  Each item in MetricResult must include all requested metrics

    
  If the response is slow due to large result sets, try these approaches:

      
  Add filters to reduce the amount of data returned
  """
  @spec get_current_metric_data(
          map(),
          String.t() | atom(),
          get_current_metric_data_request(),
          list()
        ) ::
          {:ok, get_current_metric_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_current_metric_data_errors()}
  def get_current_metric_data(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/metrics/current/#{AWS.Util.encode_uri(instance_id)}"
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
  Gets the real-time active user data from the specified Amazon Connect instance.
  """
  @spec get_current_user_data(map(), String.t() | atom(), get_current_user_data_request(), list()) ::
          {:ok, get_current_user_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_current_user_data_errors()}
  def get_current_user_data(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/metrics/userdata/#{AWS.Util.encode_uri(instance_id)}"
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
  Get the hours of operations with the effective override applied.
  """
  @spec get_effective_hours_of_operations(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_effective_hours_of_operations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_effective_hours_of_operations_errors()}
  def get_effective_hours_of_operations(
        %Client{} = client,
        hours_of_operation_id,
        instance_id,
        from_date,
        to_date,
        options \\ []
      ) do
    url_path =
      "/effective-hours-of-operations/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(hours_of_operation_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(to_date) do
        [{"toDate", to_date} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(from_date) do
        [{"fromDate", from_date} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Supports SAML sign-in for Amazon Connect.

  Retrieves a token for federation. The token is
  for the Amazon Connect user which corresponds to the IAM credentials that were
  used to invoke this action.

  For more information about how SAML sign-in works in Amazon Connect, see
  [Configure SAML with IAM for Amazon Connect in the *Amazon Connect Administrator
  Guide*.](https://docs.aws.amazon.com/connect/latest/adminguide/configure-saml.html
  )

  This API doesn't support root users. If you try to invoke GetFederationToken
  with root
  credentials, an error message similar to the following one appears:

  ```
  Provided identity: Principal: .... User: .... cannot be used for federation with
  Amazon Connect
  ```
  """
  @spec get_federation_token(map(), String.t() | atom(), list()) ::
          {:ok, get_federation_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_federation_token_errors()}
  def get_federation_token(%Client{} = client, instance_id, options \\ []) do
    url_path = "/user/federate/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the flow associated for a given resource.
  """
  @spec get_flow_association(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_flow_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_flow_association_errors()}
  def get_flow_association(
        %Client{} = client,
        instance_id,
        resource_id,
        resource_type,
        options \\ []
      ) do
    url_path =
      "/flow-associations/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(resource_id)}/#{AWS.Util.encode_uri(resource_type)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets historical metric data from the specified Amazon Connect instance.

  For a description of each historical metric, see [Metrics definitions](https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html)
  in the
  *Amazon Connect Administrator Guide*.

  We recommend using the
  [GetMetricDataV2](https://docs.aws.amazon.com/connect/latest/APIReference/API_GetMetricDataV2.html)
  API. It
  provides more flexibility, features, and the ability to query longer time ranges
  than
  `GetMetricData`. Use it to retrieve historical agent and contact metrics for the
  last 3 months, at varying intervals. You can also use it to build custom
  dashboards to measure
  historical queue and agent performance. For example, you can track the number of
  incoming
  contacts for the last 7 days, with data split by day, to see how contact volume
  changed per day
  of the week.
  """
  @spec get_metric_data(map(), String.t() | atom(), get_metric_data_request(), list()) ::
          {:ok, get_metric_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_metric_data_errors()}
  def get_metric_data(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/metrics/historical/#{AWS.Util.encode_uri(instance_id)}"
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
  Gets metric data from the specified Amazon Connect instance.

  `GetMetricDataV2` offers more features than
  [GetMetricData](https://docs.aws.amazon.com/connect/latest/APIReference/API_GetMetricData.html), the previous
  version of this API. It has new metrics, offers filtering at a metric level, and
  offers the
  ability to filter and group data by channels, queues, routing profiles, agents,
  and agent
  hierarchy levels. It can retrieve historical data for the last 3 months, at
  varying intervals. It
  does not support agent queues.

  For a description of the historical metrics that are supported by
  `GetMetricDataV2` and `GetMetricData`, see [Metrics
  definitions](https://docs.aws.amazon.com/connect/latest/adminguide/metrics-definitions.html)
  in the
  *Amazon Connect Administrator Guide*.

  When you make a successful API request, you can expect the following metric
  values in the
  response:

    

  **Metric value is null**: The calculation cannot be
  performed due to divide by zero or insufficient data

    

  **Metric value is a number (including 0) of defined type**:
  The number provided is the calculation result

    

  **MetricResult list is empty**: The request cannot find any
  data in the system

  The following guidelines can help you work with the API:

    
  Each dimension in the metric response must contain a value

    
  Each item in MetricResult must include all requested metrics

    
  If the response is slow due to large result sets, try these approaches:

      
  Narrow the time range of your request

      
  Add filters to reduce the amount of data returned
  """
  @spec get_metric_data_v2(map(), get_metric_data_v2_request(), list()) ::
          {:ok, get_metric_data_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_metric_data_v2_errors()}
  def get_metric_data_v2(%Client{} = client, input, options \\ []) do
    url_path = "/metrics/data"
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
  Gets the prompt file.
  """
  @spec get_prompt_file(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_prompt_file_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_prompt_file_errors()}
  def get_prompt_file(%Client{} = client, instance_id, prompt_id, options \\ []) do
    url_path =
      "/prompts/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(prompt_id)}/file"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets details about a specific task template in the specified Amazon Connect
  instance.
  """
  @spec get_task_template(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_task_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_task_template_errors()}
  def get_task_template(
        %Client{} = client,
        instance_id,
        task_template_id,
        snapshot_version \\ nil,
        options \\ []
      ) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/task/template/#{AWS.Util.encode_uri(task_template_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(snapshot_version) do
        [{"snapshotVersion", snapshot_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the current traffic distribution for a given traffic distribution
  group.
  """
  @spec get_traffic_distribution(map(), String.t() | atom(), list()) ::
          {:ok, get_traffic_distribution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_traffic_distribution_errors()}
  def get_traffic_distribution(%Client{} = client, id, options \\ []) do
    url_path = "/traffic-distribution/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Imports a claimed phone number from an external service, such as Amazon Web
  Services End User
  Messaging, into an Amazon Connect instance.

  You can call this API only in the same Amazon Web Services Region where the
  Amazon Connect instance was created.

  Call the
  [DescribePhoneNumber](https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html)
  API
  to verify the status of a previous `ImportPhoneNumber` operation.

  If you plan to claim or import numbers and then release numbers frequently,
  contact us for a
  service quota exception. Otherwise, it is possible you will be blocked from
  claiming and
  releasing any more numbers until up to 180 days past the oldest number released
  has expired.

  By default you can claim or import and then release up to 200% of your maximum
  number of
  active phone numbers. If you claim or import and then release phone numbers
  using the UI or API
  during a rolling 180 day cycle that exceeds 200% of your phone number service
  level quota, you
  will be blocked from claiming or importing any more numbers until 180 days past
  the oldest number
  released has expired.

  For example, if you already have 99 claimed or imported numbers and a service
  level quota of
  99 phone numbers, and in any 180 day period you release 99, claim 99, and then
  release 99, you
  will have exceeded the 200% limit. At that point you are blocked from claiming
  any more numbers
  until you open an Amazon Web Services Support ticket.
  """
  @spec import_phone_number(map(), import_phone_number_request(), list()) ::
          {:ok, import_phone_number_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, import_phone_number_errors()}
  def import_phone_number(%Client{} = client, input, options \\ []) do
    url_path = "/phone-number/import"
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
  Lists agent statuses.
  """
  @spec list_agent_statuses(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_agent_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_agent_statuses_errors()}
  def list_agent_statuses(
        %Client{} = client,
        instance_id,
        agent_status_types \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/agent-status/#{AWS.Util.encode_uri(instance_id)}"
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
      if !is_nil(agent_status_types) do
        [{"AgentStatusTypes", agent_status_types} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the association status of requested dataset ID for a given Amazon Connect
  instance.
  """
  @spec list_analytics_data_associations(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_analytics_data_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_analytics_data_associations_errors()}
  def list_analytics_data_associations(
        %Client{} = client,
        instance_id,
        data_set_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/analytics-data/instance/#{AWS.Util.encode_uri(instance_id)}/association"
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
      if !is_nil(data_set_id) do
        [{"DataSetId", data_set_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the data lake datasets available to associate with for a given Amazon
  Connect
  instance.
  """
  @spec list_analytics_data_lake_data_sets(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_analytics_data_lake_data_sets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_analytics_data_lake_data_sets_errors()}
  def list_analytics_data_lake_data_sets(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/analytics-data/instance/#{AWS.Util.encode_uri(instance_id)}/datasets"
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
  This API is in preview release for Amazon Connect and is subject to change.

  Returns a paginated list of all approved origins associated with the instance.
  """
  @spec list_approved_origins(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_approved_origins_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_approved_origins_errors()}
  def list_approved_origins(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/approved-origins"
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
  Provides information about contact tree, a list of associated contacts with a
  unique
  identifier.
  """
  @spec list_associated_contacts(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_associated_contacts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_associated_contacts_errors()}
  def list_associated_contacts(
        %Client{} = client,
        instance_id,
        contact_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/contact/associated/#{AWS.Util.encode_uri(instance_id)}"
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
      if !is_nil(contact_id) do
        [{"contactId", contact_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  To
  request access to this API, contact Amazon Web Services Support.

  Provides summary information about the authentication profiles in a specified
  Amazon Connect instance.
  """
  @spec list_authentication_profiles(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_authentication_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_authentication_profiles_errors()}
  def list_authentication_profiles(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/authentication-profiles-summary/#{AWS.Util.encode_uri(instance_id)}"
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
  This API is in preview release for Amazon Connect and is subject to change.

  For the specified version of Amazon Lex, returns a paginated list of all the
  Amazon Lex bots currently associated with the instance. Use this API to return
  both Amazon Lex V1 and V2 bots.
  """
  @spec list_bots(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_bots_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_bots_errors()}
  def list_bots(
        %Client{} = client,
        instance_id,
        lex_version,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/bots"
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
      if !is_nil(lex_version) do
        [{"lexVersion", lex_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists contact evaluations in the specified Amazon Connect instance.
  """
  @spec list_contact_evaluations(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_contact_evaluations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_contact_evaluations_errors()}
  def list_contact_evaluations(
        %Client{} = client,
        instance_id,
        contact_id,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/contact-evaluations/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(contact_id) do
        [{"contactId", contact_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides information about the flow modules for the specified Amazon Connect
  instance.
  """
  @spec list_contact_flow_modules(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_contact_flow_modules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_contact_flow_modules_errors()}
  def list_contact_flow_modules(
        %Client{} = client,
        instance_id,
        contact_flow_module_state \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/contact-flow-modules-summary/#{AWS.Util.encode_uri(instance_id)}"
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
      if !is_nil(contact_flow_module_state) do
        [{"state", contact_flow_module_state} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns all the available versions for the specified Amazon Connect instance and
  flow
  identifier.
  """
  @spec list_contact_flow_versions(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_contact_flow_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_contact_flow_versions_errors()}
  def list_contact_flow_versions(
        %Client{} = client,
        contact_flow_id,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/contact-flows/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_id)}/versions"

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
  Provides information about the flows for the specified Amazon Connect instance.

  You can also create and update flows using the [Amazon Connect Flow
  language](https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html).

  For more information about flows, see
  [Flows](https://docs.aws.amazon.com/connect/latest/adminguide/concepts-contact-flows.html)
  in the
  *Amazon Connect Administrator Guide*.
  """
  @spec list_contact_flows(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_contact_flows_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_contact_flows_errors()}
  def list_contact_flows(
        %Client{} = client,
        instance_id,
        contact_flow_types \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/contact-flows-summary/#{AWS.Util.encode_uri(instance_id)}"
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
      if !is_nil(contact_flow_types) do
        [{"contactFlowTypes", contact_flow_types} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  For the specified `referenceTypes`, returns a list of references associated with
  the contact. *References* are links to documents that are related to a
  contact, such as emails, attachments, or URLs.
  """
  @spec list_contact_references(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_contact_references_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_contact_references_errors()}
  def list_contact_references(
        %Client{} = client,
        contact_id,
        instance_id,
        next_token \\ nil,
        reference_types,
        options \\ []
      ) do
    url_path =
      "/contact/references/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_id)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(reference_types) do
        [{"referenceTypes", reference_types} | query_params]
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
  Lists the default vocabularies for the specified Amazon Connect instance.
  """
  @spec list_default_vocabularies(
          map(),
          String.t() | atom(),
          list_default_vocabularies_request(),
          list()
        ) ::
          {:ok, list_default_vocabularies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_default_vocabularies_errors()}
  def list_default_vocabularies(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/default-vocabulary-summary/#{AWS.Util.encode_uri(instance_id)}"
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
  Lists versions of an evaluation form in the specified Amazon Connect instance.
  """
  @spec list_evaluation_form_versions(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_evaluation_form_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_evaluation_form_versions_errors()}
  def list_evaluation_form_versions(
        %Client{} = client,
        evaluation_form_id,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/evaluation-forms/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(evaluation_form_id)}/versions"

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
  Lists evaluation forms in the specified Amazon Connect instance.
  """
  @spec list_evaluation_forms(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_evaluation_forms_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_evaluation_forms_errors()}
  def list_evaluation_forms(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/evaluation-forms/#{AWS.Util.encode_uri(instance_id)}"
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
  List the flow association based on the filters.
  """
  @spec list_flow_associations(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_flow_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_flow_associations_errors()}
  def list_flow_associations(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        resource_type \\ nil,
        options \\ []
      ) do
    url_path = "/flow-associations-summary/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_type) do
        [{"ResourceType", resource_type} | query_params]
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
  List the hours of operation overrides.
  """
  @spec list_hours_of_operation_overrides(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_hours_of_operation_overrides_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_hours_of_operation_overrides_errors()}
  def list_hours_of_operation_overrides(
        %Client{} = client,
        hours_of_operation_id,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/hours-of-operations/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(hours_of_operation_id)}/overrides"

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
  Provides information about the hours of operation for the specified Amazon
  Connect
  instance.

  For more information about hours of operation, see [Set the Hours of Operation for a
  Queue](https://docs.aws.amazon.com/connect/latest/adminguide/set-hours-operation.html)
  in the *Amazon Connect Administrator Guide*.
  """
  @spec list_hours_of_operations(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_hours_of_operations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_hours_of_operations_errors()}
  def list_hours_of_operations(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/hours-of-operations-summary/#{AWS.Util.encode_uri(instance_id)}"
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
  This API is in preview release for Amazon Connect and is subject to change.

  Returns a paginated list of all attribute types for the given instance.
  """
  @spec list_instance_attributes(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_instance_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_instance_attributes_errors()}
  def list_instance_attributes(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/attributes"
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
  This API is in preview release for Amazon Connect and is subject to change.

  Returns a paginated list of storage configs for the identified instance and
  resource
  type.
  """
  @spec list_instance_storage_configs(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, list_instance_storage_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_instance_storage_configs_errors()}
  def list_instance_storage_configs(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        resource_type,
        options \\ []
      ) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/storage-configs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_type) do
        [{"resourceType", resource_type} | query_params]
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
  This API is in preview release for Amazon Connect and is subject to change.

  Return a list of instances which are in active state, creation-in-progress
  state, and failed
  state. Instances that aren't successfully created (they are in a failed state)
  are returned only
  for 24 hours after the CreateInstance API was invoked.
  """
  @spec list_instances(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_instances_errors()}
  def list_instances(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/instance"
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
  Provides summary information about the Amazon Web Services resource associations
  for the
  specified Amazon Connect instance.
  """
  @spec list_integration_associations(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_integration_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_integration_associations_errors()}
  def list_integration_associations(
        %Client{} = client,
        instance_id,
        integration_arn \\ nil,
        integration_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/integration-associations"
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
      if !is_nil(integration_type) do
        [{"integrationType", integration_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(integration_arn) do
        [{"integrationArn", integration_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Returns a paginated list of all Lambda functions that display in the dropdown
  options in the
  relevant flow blocks.
  """
  @spec list_lambda_functions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_lambda_functions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_lambda_functions_errors()}
  def list_lambda_functions(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/lambda-functions"
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
  This API is in preview release for Amazon Connect and is subject to change.

  Returns a paginated list of all the Amazon Lex V1 bots currently associated with
  the
  instance. To return both Amazon Lex V1 and V2 bots, use the
  [ListBots](https://docs.aws.amazon.com/connect/latest/APIReference/API_ListBots.html)
  API.
  """
  @spec list_lex_bots(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_lex_bots_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_lex_bots_errors()}
  def list_lex_bots(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/lex-bots"
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
  Provides information about the phone numbers for the specified Amazon Connect
  instance.

  For more information about phone numbers, see [Set Up Phone Numbers for Your Contact
  Center](https://docs.aws.amazon.com/connect/latest/adminguide/contact-center-phone-number.html)
  in the *Amazon Connect Administrator
  Guide*.

    
  We recommend using
  [ListPhoneNumbersV2](https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbersV2.html) to
  return phone number types. ListPhoneNumbers doesn't support number types `UIFN`,
  `SHARED`, `THIRD_PARTY_TF`, and `THIRD_PARTY_DID`. While it
  returns numbers of those types, it incorrectly lists them as `TOLL_FREE` or
  `DID`.

    
  The phone number `Arn` value that is returned from each of the items in the
  [PhoneNumberSummaryList](https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbers.html#connect-ListPhoneNumbers-response-PhoneNumberSummaryList)
  cannot be used to tag phone number resources. It will fail
  with a `ResourceNotFoundException`. Instead, use the
  [ListPhoneNumbersV2](https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbersV2.html)
  API.
  It returns the new phone number ARN that can be used to tag phone number
  resources.
  """
  @spec list_phone_numbers(
          map(),
          String.t() | atom(),
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
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        phone_number_country_codes \\ nil,
        phone_number_types \\ nil,
        options \\ []
      ) do
    url_path = "/phone-numbers-summary/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(phone_number_types) do
        [{"phoneNumberTypes", phone_number_types} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(phone_number_country_codes) do
        [{"phoneNumberCountryCodes", phone_number_country_codes} | query_params]
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
  Lists phone numbers claimed to your Amazon Connect instance or traffic
  distribution group.

  If the provided
  `TargetArn` is a traffic distribution group, you can call this API in both
  Amazon Web Services Regions
  associated with traffic distribution group.

  For more information about phone numbers, see [Set Up Phone Numbers for Your Contact
  Center](https://docs.aws.amazon.com/connect/latest/adminguide/contact-center-phone-number.html)
  in the *Amazon Connect Administrator
  Guide*.

    
  When given an instance ARN, `ListPhoneNumbersV2` returns only the phone
  numbers claimed to the instance.

    
  When given a traffic distribution group ARN `ListPhoneNumbersV2` returns only
  the phone numbers
  claimed to the traffic distribution group.
  """
  @spec list_phone_numbers_v2(map(), list_phone_numbers_v2_request(), list()) ::
          {:ok, list_phone_numbers_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_phone_numbers_v2_errors()}
  def list_phone_numbers_v2(%Client{} = client, input, options \\ []) do
    url_path = "/phone-number/list"
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
  Lists predefined attributes for the specified Amazon Connect instance.

  A *predefined
  attribute* is made up of a name and a value. You can use predefined attributes
  for:

    *
  Routing proficiency (for example, agent certification) that has predefined
  values (for
  example, a list of possible certifications). For more information, see [Create predefined attributes for routing contacts to
  agents](https://docs.aws.amazon.com/connect/latest/adminguide/predefined-attributes.html).

    *
  Contact information that varies between transfers or conferences, such as the
  name of the
  business unit handling the contact. For more information, see [Use contact segment
  attributes](https://docs.aws.amazon.com/connect/latest/adminguide/use-contact-segment-attributes.html).

  For the predefined attributes per instance quota, see [Amazon Connect quotas](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#connect-quotas).

  **Endpoints**: See [Amazon Connect endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/connect_region.html).
  """
  @spec list_predefined_attributes(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_predefined_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_predefined_attributes_errors()}
  def list_predefined_attributes(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/predefined-attributes/#{AWS.Util.encode_uri(instance_id)}"
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
  Provides information about the prompts for the specified Amazon Connect
  instance.
  """
  @spec list_prompts(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_prompts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_prompts_errors()}
  def list_prompts(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/prompts-summary/#{AWS.Util.encode_uri(instance_id)}"
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
  Lists the quick connects associated with a queue.
  """
  @spec list_queue_quick_connects(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_queue_quick_connects_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_queue_quick_connects_errors()}
  def list_queue_quick_connects(
        %Client{} = client,
        instance_id,
        queue_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/quick-connects"

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
  Provides information about the queues for the specified Amazon Connect instance.

  If you do not specify a `QueueTypes`
  parameter, both standard and agent queues are returned. This might cause an
  unexpected truncation
  of results if you have more than 1000 agents and you limit the number of results
  of the API call
  in code.

  For more information about queues, see [Queues: Standard and Agent](https://docs.aws.amazon.com/connect/latest/adminguide/concepts-queues-standard-and-agent.html)
  in the *Amazon Connect Administrator Guide*.
  """
  @spec list_queues(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_queues_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_queues_errors()}
  def list_queues(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        queue_types \\ nil,
        options \\ []
      ) do
    url_path = "/queues-summary/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(queue_types) do
        [{"queueTypes", queue_types} | query_params]
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
  Provides information about the quick connects for the specified Amazon Connect
  instance.
  """
  @spec list_quick_connects(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_quick_connects_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_quick_connects_errors()}
  def list_quick_connects(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        quick_connect_types \\ nil,
        options \\ []
      ) do
    url_path = "/quick-connects/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(quick_connect_types) do
        [{"QuickConnectTypes", quick_connect_types} | query_params]
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
  Provides a list of analysis segments for a real-time chat analysis session.

  This API
  supports CHAT channels only.

  This API does not support VOICE. If you attempt to use it for VOICE, an
  `InvalidRequestException` occurs.
  """
  @spec list_realtime_contact_analysis_segments_v2(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          list_realtime_contact_analysis_segments_v2_request(),
          list()
        ) ::
          {:ok, list_realtime_contact_analysis_segments_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_realtime_contact_analysis_segments_v2_errors()}
  def list_realtime_contact_analysis_segments_v2(
        %Client{} = client,
        contact_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/contact/list-real-time-analysis-segments-v2/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_id)}"

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
  Lists the manual assignment queues associated with a routing profile.

  ## Use cases

  Following are common uses cases for this API:

    *
  This API returns list of queues where contacts can be manually assigned or
  picked by an
  agent who has access to the Worklist app. The user can additionally filter on
  queues, if they
  have access to those queues (otherwise a invalid request exception will be
  thrown).

  For information about how manual contact assignment works in the agent
  workspace, see the
  [Access the Worklist app in the Amazon Connect agent
  workspace](https://docs.aws.amazon.com/connect/latest/adminguide/worklist-app.html)
  in the *Amazon Connect Administrator Guide*.

  ## Important things to know

    *
  This API only returns the manual assignment queues associated with a routing
  profile. Use
  the ListRoutingProfileQueues API to list the auto assignment queues for the
  routing
  profile.

  **Endpoints**: See [Amazon Connect endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/connect_region.html).
  """
  @spec list_routing_profile_manual_assignment_queues(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_routing_profile_manual_assignment_queues_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_routing_profile_manual_assignment_queues_errors()}
  def list_routing_profile_manual_assignment_queues(
        %Client{} = client,
        instance_id,
        routing_profile_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}/manual-assignment-queues"

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
  Lists the queues associated with a routing profile.
  """
  @spec list_routing_profile_queues(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_routing_profile_queues_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_routing_profile_queues_errors()}
  def list_routing_profile_queues(
        %Client{} = client,
        instance_id,
        routing_profile_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}/queues"

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
  Provides summary information about the routing profiles for the specified Amazon
  Connect
  instance.

  For more information about routing profiles, see [Routing Profiles](https://docs.aws.amazon.com/connect/latest/adminguide/concepts-routing.html)
  and [Create a Routing Profile](https://docs.aws.amazon.com/connect/latest/adminguide/routing-profiles.html)
  in the *Amazon Connect Administrator Guide*.
  """
  @spec list_routing_profiles(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_routing_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_routing_profiles_errors()}
  def list_routing_profiles(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/routing-profiles-summary/#{AWS.Util.encode_uri(instance_id)}"
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
  List all rules for the specified Amazon Connect instance.
  """
  @spec list_rules(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_rules_errors()}
  def list_rules(
        %Client{} = client,
        instance_id,
        event_source_name \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        publish_status \\ nil,
        options \\ []
      ) do
    url_path = "/rules/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(publish_status) do
        [{"publishStatus", publish_status} | query_params]
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
      if !is_nil(event_source_name) do
        [{"eventSourceName", event_source_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Returns a paginated list of all security keys associated with the instance.
  """
  @spec list_security_keys(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_security_keys_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_security_keys_errors()}
  def list_security_keys(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/security-keys"
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
  Returns a list of third-party applications in a specific security profile.
  """
  @spec list_security_profile_applications(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_security_profile_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_security_profile_applications_errors()}
  def list_security_profile_applications(
        %Client{} = client,
        instance_id,
        security_profile_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/security-profiles-applications/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(security_profile_id)}"

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
  Lists the permissions granted to a security profile.

  For information about security profiles, see [Security Profiles](https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html)
  in the
  *Amazon Connect Administrator Guide*. For a mapping of the API name and
  user interface name of the security profile permissions, see [List of security profile
  permissions](https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html).
  """
  @spec list_security_profile_permissions(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_security_profile_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_security_profile_permissions_errors()}
  def list_security_profile_permissions(
        %Client{} = client,
        instance_id,
        security_profile_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/security-profiles-permissions/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(security_profile_id)}"

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
  Provides summary information about the security profiles for the specified
  Amazon Connect instance.

  For more information about security profiles, see [Security Profiles](https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html)
  in the
  *Amazon Connect Administrator Guide*. For a mapping of the API name and
  user interface name of the security profile permissions, see [List of security profile
  permissions](https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html).
  """
  @spec list_security_profiles(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_security_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_security_profiles_errors()}
  def list_security_profiles(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/security-profiles-summary/#{AWS.Util.encode_uri(instance_id)}"
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
  Lists the tags for the specified resource.

  For sample policies that use tags, see [Amazon Connect Identity-Based Policy
  Examples](https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_id-based-policy-examples.html)
  in the *Amazon Connect Administrator
  Guide*.
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
  Lists task templates for the specified Amazon Connect instance.
  """
  @spec list_task_templates(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_task_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_task_templates_errors()}
  def list_task_templates(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/task/template"
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
        [{"nextToken", next_token} | query_params]
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
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists traffic distribution group users.
  """
  @spec list_traffic_distribution_group_users(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_traffic_distribution_group_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_traffic_distribution_group_users_errors()}
  def list_traffic_distribution_group_users(
        %Client{} = client,
        traffic_distribution_group_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/traffic-distribution-group/#{AWS.Util.encode_uri(traffic_distribution_group_id)}/user"

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
  Lists traffic distribution groups.
  """
  @spec list_traffic_distribution_groups(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_traffic_distribution_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_traffic_distribution_groups_errors()}
  def list_traffic_distribution_groups(
        %Client{} = client,
        instance_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/traffic-distribution-groups"
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
      if !is_nil(instance_id) do
        [{"instanceId", instance_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the use cases for the integration association.
  """
  @spec list_use_cases(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_use_cases_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_use_cases_errors()}
  def list_use_cases(
        %Client{} = client,
        instance_id,
        integration_association_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/integration-associations/#{AWS.Util.encode_uri(integration_association_id)}/use-cases"

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
  Provides summary information about the hierarchy groups for the specified Amazon
  Connect
  instance.

  For more information about agent hierarchies, see [Set Up Agent Hierarchies](https://docs.aws.amazon.com/connect/latest/adminguide/agent-hierarchy.html)
  in the
  *Amazon Connect Administrator Guide*.
  """
  @spec list_user_hierarchy_groups(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_user_hierarchy_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_user_hierarchy_groups_errors()}
  def list_user_hierarchy_groups(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/user-hierarchy-groups-summary/#{AWS.Util.encode_uri(instance_id)}"
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
  Lists proficiencies associated with a user.
  """
  @spec list_user_proficiencies(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_user_proficiencies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_user_proficiencies_errors()}
  def list_user_proficiencies(
        %Client{} = client,
        instance_id,
        user_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/proficiencies"

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
  Provides summary information about the users for the specified Amazon Connect
  instance.
  """
  @spec list_users(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_users_errors()}
  def list_users(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/users-summary/#{AWS.Util.encode_uri(instance_id)}"
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
  Returns all the available versions for the specified Amazon Connect instance and
  view
  identifier.

  Results will be sorted from highest to lowest.
  """
  @spec list_view_versions(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_view_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_view_versions_errors()}
  def list_view_versions(
        %Client{} = client,
        instance_id,
        view_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/views/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(view_id)}/versions"

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
  Returns views in the given instance.

  Results are sorted primarily by type, and secondarily by name.
  """
  @spec list_views(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_views_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_views_errors()}
  def list_views(
        %Client{} = client,
        instance_id,
        max_results \\ nil,
        next_token \\ nil,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/views/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
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
  Initiates silent monitoring of a contact.

  The Contact Control Panel (CCP) of the user
  specified by *userId* will be set to silent monitoring mode on the
  contact.
  """
  @spec monitor_contact(map(), monitor_contact_request(), list()) ::
          {:ok, monitor_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, monitor_contact_errors()}
  def monitor_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/monitor"
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
  Allows pausing an ongoing task contact.
  """
  @spec pause_contact(map(), pause_contact_request(), list()) ::
          {:ok, pause_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, pause_contact_errors()}
  def pause_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/pause"
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
  Changes the current status of a user or agent in Amazon Connect.

  If the agent is
  currently handling a contact, this sets the agent's next status.

  For more information, see [Agent status](https://docs.aws.amazon.com/connect/latest/adminguide/metrics-agent-status.html)
  and [Set your next status](https://docs.aws.amazon.com/connect/latest/adminguide/set-next-status.html)
  in the *Amazon Connect Administrator Guide*.
  """
  @spec put_user_status(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          put_user_status_request(),
          list()
        ) ::
          {:ok, put_user_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_user_status_errors()}
  def put_user_status(%Client{} = client, instance_id, user_id, input, options \\ []) do
    url_path = "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/status"
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
  Releases a phone number previously claimed to an Amazon Connect instance or
  traffic distribution group.

  You
  can call this API only in the Amazon Web Services Region where the number was
  claimed.

  To release phone numbers from a traffic distribution group, use the
  `ReleasePhoneNumber` API, not the
  Amazon Connect admin website.

  After releasing a phone number, the phone number enters into a cooldown period
  for up to
  180 days. It cannot be searched for or claimed again until the period has ended.
  If you
  accidentally release a phone number, contact Amazon Web Services Support.

  If you plan to claim and release numbers frequently,
  contact us for a service quota exception. Otherwise, it is possible you will be
  blocked from
  claiming and releasing any more numbers until up to 180 days past the oldest
  number
  released has expired.

  By default you can claim and release up to 200% of your maximum number of active
  phone numbers. If you claim and release phone numbers using
  the UI or API during a rolling 180 day cycle that exceeds 200% of your phone
  number
  service level quota, you will be blocked from claiming any more numbers until
  180
  days past the oldest number released has expired.

  For example, if you already have 99 claimed numbers and a service level quota of
  99 phone numbers, and in any 180
  day period you release 99, claim 99, and then release 99, you will have exceeded
  the
  200% limit. At that point you are blocked from claiming any more numbers until
  you
  open an Amazon Web Services support ticket.
  """
  @spec release_phone_number(map(), String.t() | atom(), release_phone_number_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, release_phone_number_errors()}
  def release_phone_number(%Client{} = client, phone_number_id, input, options \\ []) do
    url_path = "/phone-number/#{AWS.Util.encode_uri(phone_number_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"ClientToken", "clientToken"}
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
  Replicates an Amazon Connect instance in the specified Amazon Web Services
  Region and
  copies configuration information for Amazon Connect resources across Amazon Web
  Services Regions.

  For more information about replicating an Amazon Connect instance, see [Create a replica of your existing Amazon Connect
  instance](https://docs.aws.amazon.com/connect/latest/adminguide/create-replica-connect-instance.html)
  in the *Amazon Connect
  Administrator Guide*.
  """
  @spec replicate_instance(map(), String.t() | atom(), replicate_instance_request(), list()) ::
          {:ok, replicate_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, replicate_instance_errors()}
  def replicate_instance(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/replicate"
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
  Allows resuming a task contact in a paused state.
  """
  @spec resume_contact(map(), resume_contact_request(), list()) ::
          {:ok, resume_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, resume_contact_errors()}
  def resume_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/resume"
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
  When a contact is being recorded, and the recording has been suspended using
  SuspendContactRecording, this API resumes recording whatever recording is
  selected in the flow
  configuration: call, screen, or both.

  If only call recording or only screen recording is enabled,
  then it would resume.

  Voice and screen recordings are supported.
  """
  @spec resume_contact_recording(map(), resume_contact_recording_request(), list()) ::
          {:ok, resume_contact_recording_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, resume_contact_recording_errors()}
  def resume_contact_recording(%Client{} = client, input, options \\ []) do
    url_path = "/contact/resume-recording"
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
  Searches AgentStatuses in an Amazon Connect instance, with optional filtering.
  """
  @spec search_agent_statuses(map(), search_agent_statuses_request(), list()) ::
          {:ok, search_agent_statuses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_agent_statuses_errors()}
  def search_agent_statuses(%Client{} = client, input, options \\ []) do
    url_path = "/search-agent-statuses"
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
  Searches for available phone numbers that you can claim to your Amazon Connect
  instance
  or traffic distribution group.

  If the provided `TargetArn` is a traffic distribution group, you can call this
  API in both
  Amazon Web Services Regions associated with the traffic distribution group.
  """
  @spec search_available_phone_numbers(map(), search_available_phone_numbers_request(), list()) ::
          {:ok, search_available_phone_numbers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_available_phone_numbers_errors()}
  def search_available_phone_numbers(%Client{} = client, input, options \\ []) do
    url_path = "/phone-number/search-available"
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
  Searches the flow modules in an Amazon Connect instance, with optional
  filtering.
  """
  @spec search_contact_flow_modules(map(), search_contact_flow_modules_request(), list()) ::
          {:ok, search_contact_flow_modules_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_contact_flow_modules_errors()}
  def search_contact_flow_modules(%Client{} = client, input, options \\ []) do
    url_path = "/search-contact-flow-modules"
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
  Searches the flows in an Amazon Connect instance, with optional filtering.
  """
  @spec search_contact_flows(map(), search_contact_flows_request(), list()) ::
          {:ok, search_contact_flows_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_contact_flows_errors()}
  def search_contact_flows(%Client{} = client, input, options \\ []) do
    url_path = "/search-contact-flows"
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
  Searches contacts in an Amazon Connect instance.
  """
  @spec search_contacts(map(), search_contacts_request(), list()) ::
          {:ok, search_contacts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_contacts_errors()}
  def search_contacts(%Client{} = client, input, options \\ []) do
    url_path = "/search-contacts"
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
  Searches email address in an instance, with optional filtering.
  """
  @spec search_email_addresses(map(), search_email_addresses_request(), list()) ::
          {:ok, search_email_addresses_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_email_addresses_errors()}
  def search_email_addresses(%Client{} = client, input, options \\ []) do
    url_path = "/search-email-addresses"
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
  Searches the hours of operation overrides.
  """
  @spec search_hours_of_operation_overrides(
          map(),
          search_hours_of_operation_overrides_request(),
          list()
        ) ::
          {:ok, search_hours_of_operation_overrides_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_hours_of_operation_overrides_errors()}
  def search_hours_of_operation_overrides(%Client{} = client, input, options \\ []) do
    url_path = "/search-hours-of-operation-overrides"
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
  Searches the hours of operation in an Amazon Connect instance, with optional
  filtering.
  """
  @spec search_hours_of_operations(map(), search_hours_of_operations_request(), list()) ::
          {:ok, search_hours_of_operations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_hours_of_operations_errors()}
  def search_hours_of_operations(%Client{} = client, input, options \\ []) do
    url_path = "/search-hours-of-operations"
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
  Searches predefined attributes that meet certain criteria.

  A *predefined
  attribute* is made up of a name and a value. You can use predefined attributes
  for:

    *
  Routing proficiency (for example, agent certification) that has predefined
  values (for
  example, a list of possible certifications). For more information, see [Create predefined attributes for routing contacts to
  agents](https://docs.aws.amazon.com/connect/latest/adminguide/predefined-attributes.html).

    *
  Contact information that varies between transfers or conferences, such as the
  name of the
  business unit handling the contact. For more information, see [Use contact segment
  attributes](https://docs.aws.amazon.com/connect/latest/adminguide/use-contact-segment-attributes.html).

  For the predefined attributes per instance quota, see [Amazon Connect quotas](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#connect-quotas).

  **Endpoints**: See [Amazon Connect endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/connect_region.html).
  """
  @spec search_predefined_attributes(map(), search_predefined_attributes_request(), list()) ::
          {:ok, search_predefined_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_predefined_attributes_errors()}
  def search_predefined_attributes(%Client{} = client, input, options \\ []) do
    url_path = "/search-predefined-attributes"
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
  Searches prompts in an Amazon Connect instance, with optional filtering.
  """
  @spec search_prompts(map(), search_prompts_request(), list()) ::
          {:ok, search_prompts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_prompts_errors()}
  def search_prompts(%Client{} = client, input, options \\ []) do
    url_path = "/search-prompts"
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
  Searches queues in an Amazon Connect instance, with optional filtering.
  """
  @spec search_queues(map(), search_queues_request(), list()) ::
          {:ok, search_queues_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_queues_errors()}
  def search_queues(%Client{} = client, input, options \\ []) do
    url_path = "/search-queues"
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
  Searches quick connects in an Amazon Connect instance, with optional filtering.
  """
  @spec search_quick_connects(map(), search_quick_connects_request(), list()) ::
          {:ok, search_quick_connects_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_quick_connects_errors()}
  def search_quick_connects(%Client{} = client, input, options \\ []) do
    url_path = "/search-quick-connects"
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
  Searches tags used in an Amazon Connect instance using optional search criteria.
  """
  @spec search_resource_tags(map(), search_resource_tags_request(), list()) ::
          {:ok, search_resource_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_resource_tags_errors()}
  def search_resource_tags(%Client{} = client, input, options \\ []) do
    url_path = "/search-resource-tags"
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
  Searches routing profiles in an Amazon Connect instance, with optional
  filtering.

  `SearchRoutingProfiles` does not populate LastModifiedRegion, LastModifiedTime,
  MediaConcurrencies.CrossChannelBehavior, and AgentAvailabilityTimer in its
  response, but
  [DescribeRoutingProfile](https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribeRoutingProfile.html)
  does.
  """
  @spec search_routing_profiles(map(), search_routing_profiles_request(), list()) ::
          {:ok, search_routing_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_routing_profiles_errors()}
  def search_routing_profiles(%Client{} = client, input, options \\ []) do
    url_path = "/search-routing-profiles"
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
  Searches security profiles in an Amazon Connect instance, with optional
  filtering.

  For information about security profiles, see [Security Profiles](https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html)
  in the
  *Amazon Connect Administrator Guide*. For a mapping of the API name and
  user interface name of the security profile permissions, see [List of security profile
  permissions](https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html).
  """
  @spec search_security_profiles(map(), search_security_profiles_request(), list()) ::
          {:ok, search_security_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_security_profiles_errors()}
  def search_security_profiles(%Client{} = client, input, options \\ []) do
    url_path = "/search-security-profiles"
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
  Searches UserHierarchyGroups in an Amazon Connect instance, with optional
  filtering.

  The UserHierarchyGroup with `"LevelId": "0"` is the foundation for building
  levels on top of an instance. It is not user-definable, nor is it visible in the
  UI.
  """
  @spec search_user_hierarchy_groups(map(), search_user_hierarchy_groups_request(), list()) ::
          {:ok, search_user_hierarchy_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_user_hierarchy_groups_errors()}
  def search_user_hierarchy_groups(%Client{} = client, input, options \\ []) do
    url_path = "/search-user-hierarchy-groups"
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
  Searches users in an Amazon Connect instance, with optional filtering.

  `AfterContactWorkTimeLimit` is returned in milliseconds.
  """
  @spec search_users(map(), search_users_request(), list()) ::
          {:ok, search_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_users_errors()}
  def search_users(%Client{} = client, input, options \\ []) do
    url_path = "/search-users"
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
  Searches for vocabularies within a specific Amazon Connect instance using
  `State`, `NameStartsWith`, and `LanguageCode`.
  """
  @spec search_vocabularies(map(), String.t() | atom(), search_vocabularies_request(), list()) ::
          {:ok, search_vocabularies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_vocabularies_errors()}
  def search_vocabularies(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/vocabulary-summary/#{AWS.Util.encode_uri(instance_id)}"
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
  Processes chat integration events from Amazon Web Services or external
  integrations to
  Amazon Connect.

  A chat integration event includes:

    *
  SourceId, DestinationId, and Subtype: a set of identifiers, uniquely
  representing a
  chat

    *
  ChatEvent: details of the chat action to perform such as sending a message,
  event, or
  disconnecting from a chat

  When a chat integration event is sent with chat identifiers that do not map to
  an active
  chat contact, a new chat contact is also created before handling chat action.

  Access to this API is currently restricted to Amazon Web Services End User
  Messaging for
  supporting SMS integration.
  """
  @spec send_chat_integration_event(map(), send_chat_integration_event_request(), list()) ::
          {:ok, send_chat_integration_event_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_chat_integration_event_errors()}
  def send_chat_integration_event(%Client{} = client, input, options \\ []) do
    url_path = "/chat-integration-event"
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
  Send outbound email for outbound campaigns.

  For more information about outbound campaigns,
  see [Set up Amazon Connect outbound campaigns](https://docs.aws.amazon.com/connect/latest/adminguide/enable-outbound-campaigns.html).

  Only the Amazon Connect outbound campaigns service principal is allowed to
  assume a
  role in your account and call this API.
  """
  @spec send_outbound_email(map(), String.t() | atom(), send_outbound_email_request(), list()) ::
          {:ok, send_outbound_email_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, send_outbound_email_errors()}
  def send_outbound_email(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/outbound-email"
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
  Provides a pre-signed Amazon S3 URL in response for uploading your content.

  You may only use this API to upload attachments to an [Amazon Connect Case](https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_CreateCase.html)
  or
  [Amazon Connect Email](https://docs.aws.amazon.com/connect/latest/adminguide/setup-email-channel.html).
  """
  @spec start_attached_file_upload(
          map(),
          String.t() | atom(),
          start_attached_file_upload_request(),
          list()
        ) ::
          {:ok, start_attached_file_upload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_attached_file_upload_errors()}
  def start_attached_file_upload(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/attached-files/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"AssociatedResourceArn", "associatedResourceArn"}
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
  Initiates a flow to start a new chat for the customer.

  Response of this API provides a token
  required to obtain credentials from the
  [CreateParticipantConnection](https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html) API in the Amazon Connect Participant Service.

  When a new chat contact is successfully created, clients must subscribe to the
  participant’s
  connection for the created chat within 5 minutes. This is achieved by invoking
  [CreateParticipantConnection](https://docs.aws.amazon.com/connect-participant/latest/APIReference/API_CreateParticipantConnection.html)
  with WEBSOCKET and CONNECTION_CREDENTIALS.

  A 429 error occurs in the following situations:

    *
  API rate limit is exceeded. API TPS throttling returns a `TooManyRequests`
  exception.

    *
  The [quota for concurrent active chats](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html)
  is exceeded. Active chat throttling returns a
  `LimitExceededException`.

  If you use the `ChatDurationInMinutes` parameter and receive a 400 error, your
  account may not support the ability to configure custom chat durations. For more
  information,
  contact Amazon Web Services Support.

  For more information about chat, see the following topics in the *Amazon Connect
  Administrator Guide*:

    *

  [Concepts: Web and mobile messaging capabilities in Amazon Connect](https://docs.aws.amazon.com/connect/latest/adminguide/web-and-mobile-chat.html)

    *

  [Amazon Connect Chat security best practices](https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat)
  """
  @spec start_chat_contact(map(), start_chat_contact_request(), list()) ::
          {:ok, start_chat_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_chat_contact_errors()}
  def start_chat_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/chat"
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
  Starts an empty evaluation in the specified Amazon Connect instance, using the
  given
  evaluation form for the particular contact.

  The evaluation form version used for the contact
  evaluation corresponds to the currently activated version. If no version is
  activated for the
  evaluation form, the contact evaluation cannot be started.

  Evaluations created through the public API do not contain answer values
  suggested from
  automation.
  """
  @spec start_contact_evaluation(
          map(),
          String.t() | atom(),
          start_contact_evaluation_request(),
          list()
        ) ::
          {:ok, start_contact_evaluation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_contact_evaluation_errors()}
  def start_contact_evaluation(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/contact-evaluations/#{AWS.Util.encode_uri(instance_id)}"
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
  Starts recording the contact:

    *
  If the API is called *before* the agent joins the call, recording
  starts when the agent joins the call.

    *
  If the API is called *after* the agent joins the call, recording starts
  at the time of the API call.

  StartContactRecording is a one-time action. For example, if you use
  StopContactRecording to
  stop recording an ongoing call, you can't use StartContactRecording to restart
  it. For scenarios
  where the recording has started and you want to suspend and resume it, such as
  when collecting
  sensitive information (for example, a credit card number), use
  SuspendContactRecording and
  ResumeContactRecording.

  You can use this API to override the recording behavior configured in the [Set recording
  behavior](https://docs.aws.amazon.com/connect/latest/adminguide/set-recording-behavior.html)
  block.

  Only voice recordings are supported at this time.
  """
  @spec start_contact_recording(map(), start_contact_recording_request(), list()) ::
          {:ok, start_contact_recording_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_contact_recording_errors()}
  def start_contact_recording(%Client{} = client, input, options \\ []) do
    url_path = "/contact/start-recording"
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
  Initiates real-time message streaming for a new chat contact.

  For more information about message streaming, see [Enable real-time chat message streaming](https://docs.aws.amazon.com/connect/latest/adminguide/chat-message-streaming.html)
  in the *Amazon Connect Administrator Guide*.

  For more information about chat, see the following topics in the *Amazon Connect
  Administrator Guide*:

    *

  [Concepts: Web and mobile messaging capabilities in Amazon Connect](https://docs.aws.amazon.com/connect/latest/adminguide/web-and-mobile-chat.html)

    *

  [Amazon Connect Chat security best practices](https://docs.aws.amazon.com/connect/latest/adminguide/security-best-practices.html#bp-security-chat)
  """
  @spec start_contact_streaming(map(), start_contact_streaming_request(), list()) ::
          {:ok, start_contact_streaming_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_contact_streaming_errors()}
  def start_contact_streaming(%Client{} = client, input, options \\ []) do
    url_path = "/contact/start-streaming"
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
  Creates an inbound email contact and initiates a flow to start the email contact
  for the
  customer.

  Response of this API provides the ContactId of the email contact created.
  """
  @spec start_email_contact(map(), start_email_contact_request(), list()) ::
          {:ok, start_email_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_email_contact_errors()}
  def start_email_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/email"
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
  Initiates a new outbound SMS contact to a customer.

  Response of this API provides the
  `ContactId` of the outbound SMS contact created.

  **SourceEndpoint** only supports Endpoints with
  `CONNECT_PHONENUMBER_ARN` as Type and **DestinationEndpoint** only supports
  Endpoints with `TELEPHONE_NUMBER` as
  Type. **ContactFlowId** initiates the flow to manage the new SMS
  contact created.

  This API can be used to initiate outbound SMS contacts for an agent, or it can
  also deflect
  an ongoing contact to an outbound SMS contact by using the
  [StartOutboundChatContact](https://docs.aws.amazon.com/connect/latest/APIReference/API_StartOutboundChatContact.html) Flow Action.

  For more information about using SMS in Amazon Connect, see the following topics
  in the
  *Amazon Connect Administrator Guide*:

    *

  [Set
  up SMS
  messaging](https://docs.aws.amazon.com/connect/latest/adminguide/setup-sms-messaging.html)

    *

  [Request an SMS-enabled phone number through AWS End User Messaging
  SMS](https://docs.aws.amazon.com/connect/latest/adminguide/sms-number.html)
  """
  @spec start_outbound_chat_contact(map(), start_outbound_chat_contact_request(), list()) ::
          {:ok, start_outbound_chat_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_outbound_chat_contact_errors()}
  def start_outbound_chat_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/outbound-chat"
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
  Initiates a flow to send an agent reply or outbound email contact (created from
  the
  CreateContact API) to a customer.
  """
  @spec start_outbound_email_contact(map(), start_outbound_email_contact_request(), list()) ::
          {:ok, start_outbound_email_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_outbound_email_contact_errors()}
  def start_outbound_email_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/outbound-email"
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
  Places an outbound call to a contact, and then initiates the flow.

  It performs the actions
  in the flow that's specified (in `ContactFlowId`).

  Agents do not initiate the outbound API, which means that they do not dial the
  contact. If
  the flow places an outbound call to a contact, and then puts the contact in
  queue, the call is
  then routed to the agent, like any other inbound case.

  There is a 60-second dialing timeout for this operation. If the call is not
  connected after
  60 seconds, it fails.

  UK numbers with a 447 prefix are not allowed by default. Before you can dial
  these UK
  mobile numbers, you must submit a service quota increase request. For more
  information, see
  [Amazon Connect Service Quotas](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html)
  in the *Amazon Connect Administrator
  Guide*.

  Campaign calls are not allowed by default. Before you can make a call with
  `TrafficType` = `CAMPAIGN`, you must submit a service quota increase
  request to the quota [Amazon Connect campaigns](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#outbound-communications-quotas).
  """
  @spec start_outbound_voice_contact(map(), start_outbound_voice_contact_request(), list()) ::
          {:ok, start_outbound_voice_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_outbound_voice_contact_errors()}
  def start_outbound_voice_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/outbound-voice"
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
  Starts screen sharing for a contact.

  For more information about screen sharing, see [Set up in-app, web, video calling, and screen sharing
  capabilities](https://docs.aws.amazon.com/connect/latest/adminguide/inapp-calling.html)
  in the *Amazon Connect Administrator
  Guide*.
  """
  @spec start_screen_sharing(map(), start_screen_sharing_request(), list()) ::
          {:ok, start_screen_sharing_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_screen_sharing_errors()}
  def start_screen_sharing(%Client{} = client, input, options \\ []) do
    url_path = "/contact/screen-sharing"
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
  Initiates a flow to start a new task contact.

  For more information about task contacts, see
  [Concepts: Tasks in Amazon
  Connect](https://docs.aws.amazon.com/connect/latest/adminguide/tasks.html) in
  the *Amazon Connect Administrator Guide*.

  When using `PreviousContactId` and `RelatedContactId` input
  parameters, note the following:

    *

  `PreviousContactId`

      *
  Any updates to user-defined task contact attributes on any contact linked
  through the
  same `PreviousContactId` will affect every contact in the chain.

      *
  There can be a maximum of 12 linked task contacts in a chain. That is, 12 task
  contacts
  can be created that share the same `PreviousContactId`.

    *

  `RelatedContactId`

      *
  Copies contact attributes from the related task contact to the new contact.

      *
  Any update on attributes in a new task contact does not update attributes on
  previous
  contact.

      *
  There’s no limit on the number of task contacts that can be created that use the
  same
  `RelatedContactId`.

  In addition, when calling StartTaskContact include only one of these parameters:
  `ContactFlowID`, `QuickConnectID`, or `TaskTemplateID`. Only
  one parameter is required as long as the task template has a flow configured to
  run it. If more
  than one parameter is specified, or only the `TaskTemplateID` is specified but
  it does
  not have a flow configured, the request returns an error because Amazon Connect
  cannot
  identify the unique flow to run when the task is created.

  A `ServiceQuotaExceededException` occurs when the number of open tasks exceeds
  the active tasks quota or there are already 12 tasks referencing the same
  `PreviousContactId`. For more information about service quotas for task
  contacts, see
  [Amazon Connect service quotas](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html)
  in the *Amazon Connect Administrator
  Guide*.
  """
  @spec start_task_contact(map(), start_task_contact_request(), list()) ::
          {:ok, start_task_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_task_contact_errors()}
  def start_task_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/task"
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
  Places an inbound in-app, web, or video call to a contact, and then initiates
  the flow.

  It
  performs the actions in the flow that are specified (in ContactFlowId) and
  present in the Amazon Connect instance (specified as InstanceId).
  """
  @spec start_web_r_t_c_contact(map(), start_web_r_t_c_contact_request(), list()) ::
          {:ok, start_web_r_t_c_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_web_r_t_c_contact_errors()}
  def start_web_r_t_c_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/webrtc"
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
  Ends the specified contact.

  Use this API to stop queued callbacks. It does not work for
  voice contacts that use the following initiation methods:

    *
  DISCONNECT

    *
  TRANSFER

    *
  QUEUE_TRANSFER

    *
  EXTERNAL_OUTBOUND

    *
  MONITOR

  Chat and task contacts can be terminated in any state, regardless of initiation
  method.
  """
  @spec stop_contact(map(), stop_contact_request(), list()) ::
          {:ok, stop_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_contact_errors()}
  def stop_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/stop"
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
  Stops recording a call when a contact is being recorded.

  StopContactRecording is a one-time
  action. If you use StopContactRecording to stop recording an ongoing call, you
  can't use
  StartContactRecording to restart it. For scenarios where the recording has
  started and you want
  to suspend it for sensitive information (for example, to collect a credit card
  number), and then
  restart it, use SuspendContactRecording and ResumeContactRecording.

  Only voice recordings are supported at this time.
  """
  @spec stop_contact_recording(map(), stop_contact_recording_request(), list()) ::
          {:ok, stop_contact_recording_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_contact_recording_errors()}
  def stop_contact_recording(%Client{} = client, input, options \\ []) do
    url_path = "/contact/stop-recording"
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
  Ends message streaming on a specified contact.

  To restart message streaming on that
  contact, call the
  [StartContactStreaming](https://docs.aws.amazon.com/connect/latest/APIReference/API_StartContactStreaming.html)
  API.
  """
  @spec stop_contact_streaming(map(), stop_contact_streaming_request(), list()) ::
          {:ok, stop_contact_streaming_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_contact_streaming_errors()}
  def stop_contact_streaming(%Client{} = client, input, options \\ []) do
    url_path = "/contact/stop-streaming"
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
  Submits a contact evaluation in the specified Amazon Connect instance.

  Answers included
  in the request are merged with existing answers for the given evaluation. If no
  answers or notes
  are passed, the evaluation is submitted with the existing answers and notes. You
  can delete an
  answer or note by passing an empty object (`{}`) to the question identifier.

  If a contact evaluation is already in submitted state, this operation will
  trigger a
  resubmission.
  """
  @spec submit_contact_evaluation(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          submit_contact_evaluation_request(),
          list()
        ) ::
          {:ok, submit_contact_evaluation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, submit_contact_evaluation_errors()}
  def submit_contact_evaluation(
        %Client{} = client,
        evaluation_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/contact-evaluations/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(evaluation_id)}/submit"

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
  When a contact is being recorded, this API suspends recording whatever is
  selected in the
  flow configuration: call (IVR or agent), screen, or both.

  If only call recording or only screen
  recording is enabled, then it would be suspended. For example, you might suspend
  the screen
  recording while collecting sensitive information, such as a credit card number.
  Then use
  [ResumeContactRecording](https://docs.aws.amazon.com/connect/latest/APIReference/API_ResumeContactRecording.html)
  to restart recording the screen.

  The period of time that the recording is suspended is filled with silence in the
  final
  recording.

  Voice (IVR, agent) and screen recordings are supported.
  """
  @spec suspend_contact_recording(map(), suspend_contact_recording_request(), list()) ::
          {:ok, suspend_contact_recording_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, suspend_contact_recording_errors()}
  def suspend_contact_recording(%Client{} = client, input, options \\ []) do
    url_path = "/contact/suspend-recording"
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
  Adds the specified tags to the contact resource.

  For more information about this API is
  used, see [Set up granular billing for a detailed view of your Amazon Connect
  usage](https://docs.aws.amazon.com/connect/latest/adminguide/granular-billing.html).
  """
  @spec tag_contact(map(), tag_contact_request(), list()) ::
          {:ok, tag_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_contact_errors()}
  def tag_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/tags"
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
  Adds the specified tags to the specified resource.

  Some of the supported resource types are agents, routing profiles, queues, quick
  connects,
  flows, agent statuses, hours of operation, phone numbers, security profiles, and
  task templates.
  For a complete list, see [Tagging resources in Amazon Connect](https://docs.aws.amazon.com/connect/latest/adminguide/tagging.html).

  For sample policies that use tags, see [Amazon Connect Identity-Based Policy
  Examples](https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_id-based-policy-examples.html)
  in the *Amazon Connect Administrator
  Guide*.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
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
  Transfers `TASK` or `EMAIL`
  contacts from one agent or queue to another agent or queue at any point
  after a contact is created.

  You can transfer a contact to another queue by providing the flow
  which orchestrates the contact to the destination queue. This gives you more
  control over contact
  handling and helps you adhere to the service level agreement (SLA) guaranteed to
  your
  customers.

  Note the following requirements:

    *
  Transfer is only supported for `TASK` and `EMAIL` contacts.

    *
  Do not use both `QueueId` and `UserId` in the same call.

    *
  The following flow types are supported: Inbound flow, Transfer to agent flow,
  and Transfer
  to queue flow.

    *
  The `TransferContact` API can be called only on active contacts.

    *
  A contact cannot be transferred more than 11 times.
  """
  @spec transfer_contact(map(), transfer_contact_request(), list()) ::
          {:ok, transfer_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, transfer_contact_errors()}
  def transfer_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/transfer"
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
  Removes the specified tags from the contact resource.

  For more information about this API is
  used, see [Set up granular billing for a detailed view of your Amazon Connect
  usage](https://docs.aws.amazon.com/connect/latest/adminguide/granular-billing.html).
  """
  @spec untag_contact(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          untag_contact_request(),
          list()
        ) ::
          {:ok, untag_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_contact_errors()}
  def untag_contact(%Client{} = client, contact_id, instance_id, input, options \\ []) do
    url_path =
      "/contact/tags/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_id)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"TagKeys", "TagKeys"}
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
  Removes the specified tags from the specified resource.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
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
  Updates agent status.
  """
  @spec update_agent_status(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_agent_status_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_agent_status_errors()}
  def update_agent_status(%Client{} = client, agent_status_id, instance_id, input, options \\ []) do
    url_path =
      "/agent-status/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(agent_status_id)}"

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
  This API is in preview release for Amazon Connect and is subject to change.

  To
  request access to this API, contact Amazon Web Services Support.

  Updates the selected authentication profile.
  """
  @spec update_authentication_profile(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_authentication_profile_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_authentication_profile_errors()}
  def update_authentication_profile(
        %Client{} = client,
        authentication_profile_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/authentication-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(authentication_profile_id)}"

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
  This API is in preview release for Amazon Connect and is subject to change.

  Adds or updates user-defined contact information associated with the specified
  contact. At
  least one field to be updated must be present in the request.

  You can add or update user-defined contact information for both ongoing and
  completed
  contacts.
  """
  @spec update_contact(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_contact_request(),
          list()
        ) ::
          {:ok, update_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_contact_errors()}
  def update_contact(%Client{} = client, contact_id, instance_id, input, options \\ []) do
    url_path = "/contacts/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_id)}"
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
  Creates or updates
  user-defined contact attributes
  associated with the specified contact.

  You can create or update user-defined attributes for both ongoing and completed
  contacts.
  For example, while the call is active, you can update the customer's name or the
  reason the
  customer called. You can add notes about steps that the agent took during the
  call that display
  to the next agent that takes the call. You can also update attributes for a
  contact using data
  from your CRM application and save the data with the contact in Amazon Connect.
  You could
  also flag calls for additional analysis, such as legal review or to identify
  abusive
  callers.

  Contact attributes are available in Amazon Connect for 24 months, and are then
  deleted.
  For information about contact record retention and the maximum size of the
  contact record
  attributes section, see [Feature specifications](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#feature-limits)
  in the *Amazon Connect Administrator Guide*.
  """
  @spec update_contact_attributes(map(), update_contact_attributes_request(), list()) ::
          {:ok, update_contact_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_contact_attributes_errors()}
  def update_contact_attributes(%Client{} = client, input, options \\ []) do
    url_path = "/contact/attributes"
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
  Updates details about a contact evaluation in the specified Amazon Connect
  instance.

  A
  contact evaluation must be in draft state. Answers included in the request are
  merged with
  existing answers for the given evaluation. An answer or note can be deleted by
  passing an empty
  object (`{}`) to the question identifier.
  """
  @spec update_contact_evaluation(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_contact_evaluation_request(),
          list()
        ) ::
          {:ok, update_contact_evaluation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_contact_evaluation_errors()}
  def update_contact_evaluation(
        %Client{} = client,
        evaluation_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/contact-evaluations/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(evaluation_id)}"

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
  Updates the specified flow.

  You can also create and update flows using the [Amazon Connect Flow
  language](https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html).

  Use the `$SAVED` alias in the request to describe the `SAVED` content
  of a Flow. For example, `arn:aws:.../contact-flow/{id}:$SAVED`. After a flow is
  published, `$SAVED` needs to be supplied to view saved content that has not been
  published.
  """
  @spec update_contact_flow_content(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_contact_flow_content_request(),
          list()
        ) ::
          {:ok, update_contact_flow_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_contact_flow_content_errors()}
  def update_contact_flow_content(
        %Client{} = client,
        contact_flow_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/contact-flows/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_id)}/content"

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
  Updates metadata about specified flow.
  """
  @spec update_contact_flow_metadata(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_contact_flow_metadata_request(),
          list()
        ) ::
          {:ok, update_contact_flow_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_contact_flow_metadata_errors()}
  def update_contact_flow_metadata(
        %Client{} = client,
        contact_flow_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/contact-flows/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_id)}/metadata"

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
  Updates specified flow module for the specified Amazon Connect instance.

  Use the `$SAVED` alias in the request to describe the `SAVED` content
  of a Flow. For example, `arn:aws:.../contact-flow/{id}:$SAVED`. After a flow is
  published, `$SAVED` needs to be supplied to view saved content that has not been
  published.
  """
  @spec update_contact_flow_module_content(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_contact_flow_module_content_request(),
          list()
        ) ::
          {:ok, update_contact_flow_module_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_contact_flow_module_content_errors()}
  def update_contact_flow_module_content(
        %Client{} = client,
        contact_flow_module_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/contact-flow-modules/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_module_id)}/content"

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
  Updates metadata about specified flow module.
  """
  @spec update_contact_flow_module_metadata(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_contact_flow_module_metadata_request(),
          list()
        ) ::
          {:ok, update_contact_flow_module_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_contact_flow_module_metadata_errors()}
  def update_contact_flow_module_metadata(
        %Client{} = client,
        contact_flow_module_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/contact-flow-modules/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_module_id)}/metadata"

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
  The name of the flow.

  You can also create and update flows using the [Amazon Connect Flow
  language](https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html).
  """
  @spec update_contact_flow_name(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_contact_flow_name_request(),
          list()
        ) ::
          {:ok, update_contact_flow_name_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_contact_flow_name_errors()}
  def update_contact_flow_name(
        %Client{} = client,
        contact_flow_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/contact-flows/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_id)}/name"

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
  Updates routing priority and age on the contact (**QueuePriority** and
  **QueueTimeAdjustmentInSeconds**).

  These properties can be used to change a customer's position in the queue. For
  example, you can
  move a contact to the back of the queue by setting a lower routing priority
  relative to other
  contacts in queue; or you can move a contact to the front of the queue by
  increasing the routing
  age which will make the contact look artificially older and therefore higher up
  in the
  first-in-first-out routing order. Note that adjusting the routing age of a
  contact affects only
  its position in queue, and not its actual queue wait time as reported through
  metrics. These
  properties can also be updated by using [the Set routing priority / age flow block](https://docs.aws.amazon.com/connect/latest/adminguide/change-routing-priority.html).

  Either **QueuePriority** or **QueueTimeAdjustmentInSeconds** should be provided
  within the request body, but not
  both.
  """
  @spec update_contact_routing_data(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_contact_routing_data_request(),
          list()
        ) ::
          {:ok, update_contact_routing_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_contact_routing_data_errors()}
  def update_contact_routing_data(
        %Client{} = client,
        contact_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/contacts/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_id)}/routing-data"

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
  Updates the scheduled time of a task contact that is already scheduled.
  """
  @spec update_contact_schedule(map(), update_contact_schedule_request(), list()) ::
          {:ok, update_contact_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_contact_schedule_errors()}
  def update_contact_schedule(%Client{} = client, input, options \\ []) do
    url_path = "/contact/schedule"
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
  Updates an email address metadata.

  For more information about email addresses, see [Create email addresses](https://docs.aws.amazon.com/connect/latest/adminguide/create-email-address1.html)
  in the Amazon Connect Administrator Guide.
  """
  @spec update_email_address_metadata(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_email_address_metadata_request(),
          list()
        ) ::
          {:ok, update_email_address_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_email_address_metadata_errors()}
  def update_email_address_metadata(
        %Client{} = client,
        email_address_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/email-addresses/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(email_address_id)}"

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
  Updates details about a specific evaluation form version in the specified Amazon
  Connect
  instance.

  Question and section identifiers cannot be duplicated within the same evaluation
  form.

  This operation does not support partial updates. Instead it does a full update
  of evaluation
  form content.
  """
  @spec update_evaluation_form(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_evaluation_form_request(),
          list()
        ) ::
          {:ok, update_evaluation_form_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_evaluation_form_errors()}
  def update_evaluation_form(
        %Client{} = client,
        evaluation_form_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/evaluation-forms/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(evaluation_form_id)}"

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
  Updates the hours of operation.
  """
  @spec update_hours_of_operation(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_hours_of_operation_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_hours_of_operation_errors()}
  def update_hours_of_operation(
        %Client{} = client,
        hours_of_operation_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/hours-of-operations/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(hours_of_operation_id)}"

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
  Update the hours of operation override.
  """
  @spec update_hours_of_operation_override(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          update_hours_of_operation_override_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_hours_of_operation_override_errors()}
  def update_hours_of_operation_override(
        %Client{} = client,
        hours_of_operation_id,
        hours_of_operation_override_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/hours-of-operations/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(hours_of_operation_id)}/overrides/#{AWS.Util.encode_uri(hours_of_operation_override_id)}"

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
  This API is in preview release for Amazon Connect and is subject to change.

  Updates the value for the specified attribute type.
  """
  @spec update_instance_attribute(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_instance_attribute_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_instance_attribute_errors()}
  def update_instance_attribute(
        %Client{} = client,
        attribute_type,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/attribute/#{AWS.Util.encode_uri(attribute_type)}"

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
  This API is in preview release for Amazon Connect and is subject to change.

  Updates an existing configuration for a resource type. This API is idempotent.
  """
  @spec update_instance_storage_config(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_instance_storage_config_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_instance_storage_config_errors()}
  def update_instance_storage_config(
        %Client{} = client,
        association_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/storage-config/#{AWS.Util.encode_uri(association_id)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"ResourceType", "resourceType"}
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
  Instructs Amazon Connect to resume the authentication process.

  The subsequent actions
  depend on the request body contents:

    *

  **If a code is provided**: Connect retrieves the identity
  information from Amazon Cognito and imports it into Connect Customer Profiles.

    *

  **If an error is provided**: The error branch of the
  Authenticate Customer block is executed.

  The API returns a success response to acknowledge the request. However, the
  interaction and
  exchange of identity information occur asynchronously after the response is
  returned.
  """
  @spec update_participant_authentication(
          map(),
          update_participant_authentication_request(),
          list()
        ) ::
          {:ok, update_participant_authentication_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_participant_authentication_errors()}
  def update_participant_authentication(%Client{} = client, input, options \\ []) do
    url_path = "/contact/update-participant-authentication"
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
  Updates timeouts for when human chat participants are to be considered idle, and
  when agents
  are automatically disconnected from a chat due to idleness.

  You can set four timers:

    *
  Customer idle timeout

    *
  Customer auto-disconnect timeout

    *
  Agent idle timeout

    *
  Agent auto-disconnect timeout

  For more information about how chat timeouts work, see
  [Set up chat timeouts for human participants](https://docs.aws.amazon.com/connect/latest/adminguide/setup-chat-timeouts.html).
  """
  @spec update_participant_role_config(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_participant_role_config_request(),
          list()
        ) ::
          {:ok, update_participant_role_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_participant_role_config_errors()}
  def update_participant_role_config(
        %Client{} = client,
        contact_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/contact/participant-role-config/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_id)}"

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
  Updates your claimed phone number from its current Amazon Connect instance or
  traffic distribution group to
  another Amazon Connect instance or traffic distribution group in the same Amazon
  Web Services Region.

  After using this API, you must verify that the phone number is attached to the
  correct flow
  in the target instance or traffic distribution group. You need to do this
  because the API
  switches only the phone number to a new instance or traffic distribution group.
  It doesn't
  migrate the flow configuration of the phone number, too.

  You can call
  [DescribePhoneNumber](https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html) API
  to verify the status of a previous
  [UpdatePhoneNumber](https://docs.aws.amazon.com/connect/latest/APIReference/API_UpdatePhoneNumber.html)
  operation.
  """
  @spec update_phone_number(map(), String.t() | atom(), update_phone_number_request(), list()) ::
          {:ok, update_phone_number_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_phone_number_errors()}
  def update_phone_number(%Client{} = client, phone_number_id, input, options \\ []) do
    url_path = "/phone-number/#{AWS.Util.encode_uri(phone_number_id)}"
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
  Updates a phone number’s metadata.

  To verify the status of a previous UpdatePhoneNumberMetadata operation, call the
  [DescribePhoneNumber](https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html)
  API.
  """
  @spec update_phone_number_metadata(
          map(),
          String.t() | atom(),
          update_phone_number_metadata_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_phone_number_metadata_errors()}
  def update_phone_number_metadata(%Client{} = client, phone_number_id, input, options \\ []) do
    url_path = "/phone-number/#{AWS.Util.encode_uri(phone_number_id)}/metadata"
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
  Updates a predefined attribute for the specified Amazon Connect instance.

  A *predefined
  attribute* is made up of a name and a value.

  For the predefined attributes per instance quota, see [Amazon Connect quotas](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-service-limits.html#connect-quotas).

  ## Use cases

  Following are common uses cases for this API:

    *
  Update routing proficiency (for example, agent certification) that has
  predefined values
  (for example, a list of possible certifications). For more information, see
  [Create predefined attributes for routing contacts to
  agents](https://docs.aws.amazon.com/connect/latest/adminguide/predefined-attributes.html).

    *
  Update an attribute for business unit name that has a list of predefined
  business unit
  names used in your organization. This is a use case where information for a
  contact varies
  between transfers or conferences. For more information, see [Use contact segment attributes](https://docs.aws.amazon.com/connect/latest/adminguide/use-contact-segment-attributes.html).

  **Endpoints**: See [Amazon Connect endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/connect_region.html).
  """
  @spec update_predefined_attribute(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_predefined_attribute_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_predefined_attribute_errors()}
  def update_predefined_attribute(%Client{} = client, instance_id, name, input, options \\ []) do
    url_path =
      "/predefined-attributes/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(name)}"

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
  Updates a prompt.
  """
  @spec update_prompt(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_prompt_request(),
          list()
        ) ::
          {:ok, update_prompt_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_prompt_errors()}
  def update_prompt(%Client{} = client, instance_id, prompt_id, input, options \\ []) do
    url_path = "/prompts/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(prompt_id)}"
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
  Updates the hours of operation for the specified queue.
  """
  @spec update_queue_hours_of_operation(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_queue_hours_of_operation_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_queue_hours_of_operation_errors()}
  def update_queue_hours_of_operation(
        %Client{} = client,
        instance_id,
        queue_id,
        input,
        options \\ []
      ) do
    url_path =
      "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/hours-of-operation"

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
  Updates the maximum number of contacts allowed in a queue before it is
  considered
  full.
  """
  @spec update_queue_max_contacts(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_queue_max_contacts_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_queue_max_contacts_errors()}
  def update_queue_max_contacts(%Client{} = client, instance_id, queue_id, input, options \\ []) do
    url_path =
      "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/max-contacts"

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
  Updates the name and description of a queue.

  At least `Name` or `Description` must be provided.
  """
  @spec update_queue_name(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_queue_name_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_queue_name_errors()}
  def update_queue_name(%Client{} = client, instance_id, queue_id, input, options \\ []) do
    url_path = "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/name"
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
  Updates the outbound caller ID name, number, and outbound whisper flow for a
  specified
  queue.

    
  If the phone number is claimed to a traffic distribution group that was created
  in the
  same Region as the Amazon Connect instance where you are calling this API, then
  you can use a
  full phone number ARN or a UUID for `OutboundCallerIdNumberId`. However, if the
  phone number is claimed
  to a traffic distribution group that is in one Region, and you are calling this
  API from an instance in another Amazon Web Services Region that is associated
  with the traffic distribution group, you must provide a full phone number ARN.
  If a
  UUID is provided in this scenario, you will receive a
  `ResourceNotFoundException`.

    
  Only use the phone number ARN format that doesn't contain `instance` in the
  path, for example, `arn:aws:connect:us-east-1:1234567890:phone-number/uuid`.
  This
  is the same ARN format that is returned when you call the
  [ListPhoneNumbersV2](https://docs.aws.amazon.com/connect/latest/APIReference/API_ListPhoneNumbersV2.html) API.

    
  If you plan to use IAM policies to allow/deny access to this API for phone
  number resources claimed to a traffic distribution group, see [Allow or Deny
  queue API actions for phone numbers in a replica
  Region](https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_resource-level-policy-examples.html#allow-deny-queue-actions-replica-region).
  """
  @spec update_queue_outbound_caller_config(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_queue_outbound_caller_config_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_queue_outbound_caller_config_errors()}
  def update_queue_outbound_caller_config(
        %Client{} = client,
        instance_id,
        queue_id,
        input,
        options \\ []
      ) do
    url_path =
      "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/outbound-caller-config"

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
  Updates the outbound email address Id for a specified queue.
  """
  @spec update_queue_outbound_email_config(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_queue_outbound_email_config_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_queue_outbound_email_config_errors()}
  def update_queue_outbound_email_config(
        %Client{} = client,
        instance_id,
        queue_id,
        input,
        options \\ []
      ) do
    url_path =
      "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/outbound-email-config"

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
  Updates the status of the queue.
  """
  @spec update_queue_status(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_queue_status_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_queue_status_errors()}
  def update_queue_status(%Client{} = client, instance_id, queue_id, input, options \\ []) do
    url_path =
      "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/status"

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
  Updates the configuration settings for the specified quick connect.
  """
  @spec update_quick_connect_config(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_quick_connect_config_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_quick_connect_config_errors()}
  def update_quick_connect_config(
        %Client{} = client,
        instance_id,
        quick_connect_id,
        input,
        options \\ []
      ) do
    url_path =
      "/quick-connects/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(quick_connect_id)}/config"

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
  Updates the name and description of a quick connect.

  The request accepts the following data in JSON format. At least `Name` or
  `Description` must be provided.
  """
  @spec update_quick_connect_name(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_quick_connect_name_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_quick_connect_name_errors()}
  def update_quick_connect_name(
        %Client{} = client,
        instance_id,
        quick_connect_id,
        input,
        options \\ []
      ) do
    url_path =
      "/quick-connects/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(quick_connect_id)}/name"

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
  Whether agents with this routing profile will have their routing order
  calculated based on
  *time since their last inbound contact* or *longest idle
  time*.
  """
  @spec update_routing_profile_agent_availability_timer(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_routing_profile_agent_availability_timer_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_routing_profile_agent_availability_timer_errors()}
  def update_routing_profile_agent_availability_timer(
        %Client{} = client,
        instance_id,
        routing_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}/agent-availability-timer"

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
  Updates the channels that agents can handle in the Contact Control Panel (CCP)
  for a routing
  profile.
  """
  @spec update_routing_profile_concurrency(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_routing_profile_concurrency_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_routing_profile_concurrency_errors()}
  def update_routing_profile_concurrency(
        %Client{} = client,
        instance_id,
        routing_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}/concurrency"

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
  Updates the default outbound queue of a routing profile.
  """
  @spec update_routing_profile_default_outbound_queue(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_routing_profile_default_outbound_queue_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_routing_profile_default_outbound_queue_errors()}
  def update_routing_profile_default_outbound_queue(
        %Client{} = client,
        instance_id,
        routing_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}/default-outbound-queue"

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
  Updates the name and description of a routing profile.

  The request accepts the following data in JSON format.
  At least `Name` or `Description` must be provided.
  """
  @spec update_routing_profile_name(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_routing_profile_name_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_routing_profile_name_errors()}
  def update_routing_profile_name(
        %Client{} = client,
        instance_id,
        routing_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}/name"

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
  Updates the properties associated with a set of queues for a routing profile.
  """
  @spec update_routing_profile_queues(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_routing_profile_queues_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_routing_profile_queues_errors()}
  def update_routing_profile_queues(
        %Client{} = client,
        instance_id,
        routing_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(routing_profile_id)}/queues"

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
  Updates a rule for the specified Amazon Connect instance.

  Use the [Rules Function language](https://docs.aws.amazon.com/connect/latest/APIReference/connect-rules-language.html)
  to
  code conditions for the rule.
  """
  @spec update_rule(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_rule_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_rule_errors()}
  def update_rule(%Client{} = client, instance_id, rule_id, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(rule_id)}"
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
  Updates a security profile.

  For information about security profiles, see [Security Profiles](https://docs.aws.amazon.com/connect/latest/adminguide/connect-security-profiles.html)
  in the
  *Amazon Connect Administrator Guide*. For a mapping of the API name and
  user interface name of the security profile permissions, see [List of security profile
  permissions](https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-list.html).
  """
  @spec update_security_profile(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_security_profile_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_security_profile_errors()}
  def update_security_profile(
        %Client{} = client,
        instance_id,
        security_profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/security-profiles/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(security_profile_id)}"

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
  Updates details about a specific task template in the specified Amazon Connect
  instance.

  This operation does not support partial updates. Instead it does a full update
  of template
  content.
  """
  @spec update_task_template(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_task_template_request(),
          list()
        ) ::
          {:ok, update_task_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_task_template_errors()}
  def update_task_template(
        %Client{} = client,
        instance_id,
        task_template_id,
        input,
        options \\ []
      ) do
    url_path =
      "/instance/#{AWS.Util.encode_uri(instance_id)}/task/template/#{AWS.Util.encode_uri(task_template_id)}"

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
  Updates the traffic distribution for a given traffic distribution group.

  When you shift telephony traffic, also shift agents and/or agent sign-ins to
  ensure they
  can handle the calls in the other Region. If you don't shift the agents, voice
  calls will go to
  the shifted Region but there won't be any agents available to receive the calls.

  The `SignInConfig` distribution is available only on a
  default `TrafficDistributionGroup` (see the `IsDefault` parameter in the
  [TrafficDistributionGroup](https://docs.aws.amazon.com/connect/latest/APIReference/API_TrafficDistributionGroup.html)  data type). If you call
  `UpdateTrafficDistribution` with a modified `SignInConfig` and a non-default
  `TrafficDistributionGroup`,
  an `InvalidRequestException` is returned.

  For more information about updating a traffic distribution group, see [Update
  telephony
  traffic distribution across Amazon Web Services Regions
  ](https://docs.aws.amazon.com/connect/latest/adminguide/update-telephony-traffic-distribution.html)
  in the *Amazon Connect Administrator Guide*.
  """
  @spec update_traffic_distribution(
          map(),
          String.t() | atom(),
          update_traffic_distribution_request(),
          list()
        ) ::
          {:ok, update_traffic_distribution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_traffic_distribution_errors()}
  def update_traffic_distribution(%Client{} = client, id, input, options \\ []) do
    url_path = "/traffic-distribution/#{AWS.Util.encode_uri(id)}"
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
  Assigns the specified hierarchy group to the specified user.
  """
  @spec update_user_hierarchy(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_user_hierarchy_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_user_hierarchy_errors()}
  def update_user_hierarchy(%Client{} = client, instance_id, user_id, input, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/hierarchy"

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
  Updates the name of the user hierarchy group.
  """
  @spec update_user_hierarchy_group_name(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_user_hierarchy_group_name_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_user_hierarchy_group_name_errors()}
  def update_user_hierarchy_group_name(
        %Client{} = client,
        hierarchy_group_id,
        instance_id,
        input,
        options \\ []
      ) do
    url_path =
      "/user-hierarchy-groups/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(hierarchy_group_id)}/name"

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
  Updates the user hierarchy structure: add, remove, and rename user hierarchy
  levels.
  """
  @spec update_user_hierarchy_structure(
          map(),
          String.t() | atom(),
          update_user_hierarchy_structure_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_user_hierarchy_structure_errors()}
  def update_user_hierarchy_structure(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/user-hierarchy-structure/#{AWS.Util.encode_uri(instance_id)}"
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
  Updates the identity information for the specified user.

  We strongly recommend limiting who has the ability to invoke
  `UpdateUserIdentityInfo`. Someone with that ability can change the login
  credentials
  of other users by changing their email address. This poses a security risk to
  your organization.
  They can change the email address of a user to the attacker's email address, and
  then reset the
  password through email. For more information, see [Best Practices for Security
  Profiles](https://docs.aws.amazon.com/connect/latest/adminguide/security-profile-best-practices.html)
  in the *Amazon Connect Administrator
  Guide*.
  """
  @spec update_user_identity_info(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_user_identity_info_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_user_identity_info_errors()}
  def update_user_identity_info(%Client{} = client, instance_id, user_id, input, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/identity-info"

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
  Updates the phone configuration settings for the specified user.
  """
  @spec update_user_phone_config(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_user_phone_config_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_user_phone_config_errors()}
  def update_user_phone_config(%Client{} = client, instance_id, user_id, input, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/phone-config"

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
  Updates the properties associated with the proficiencies of a user.
  """
  @spec update_user_proficiencies(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_user_proficiencies_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_user_proficiencies_errors()}
  def update_user_proficiencies(%Client{} = client, instance_id, user_id, input, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/proficiencies"

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
  Assigns the specified routing profile to the specified user.
  """
  @spec update_user_routing_profile(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_user_routing_profile_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_user_routing_profile_errors()}
  def update_user_routing_profile(%Client{} = client, instance_id, user_id, input, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/routing-profile"

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
  Assigns the specified security profiles to the specified user.
  """
  @spec update_user_security_profiles(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_user_security_profiles_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_user_security_profiles_errors()}
  def update_user_security_profiles(
        %Client{} = client,
        instance_id,
        user_id,
        input,
        options \\ []
      ) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/security-profiles"

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
  Updates the view content of the given view identifier in the specified Amazon
  Connect
  instance.

  It performs content validation if `Status` is set to `SAVED` and
  performs full content validation if `Status` is `PUBLISHED`. Note that the
  `$SAVED` alias' content will always be updated, but the `$LATEST` alias'
  content will only be updated if `Status` is `PUBLISHED`.
  """
  @spec update_view_content(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_view_content_request(),
          list()
        ) ::
          {:ok, update_view_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_view_content_errors()}
  def update_view_content(%Client{} = client, instance_id, view_id, input, options \\ []) do
    url_path = "/views/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(view_id)}"
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
  Updates the view metadata.

  Note that either `Name` or `Description`
  must be provided.
  """
  @spec update_view_metadata(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_view_metadata_request(),
          list()
        ) ::
          {:ok, update_view_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_view_metadata_errors()}
  def update_view_metadata(%Client{} = client, instance_id, view_id, input, options \\ []) do
    url_path =
      "/views/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(view_id)}/metadata"

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
