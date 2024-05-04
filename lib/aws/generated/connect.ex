# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Connect do
  @moduledoc """
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

  You can connect programmatically to an Amazon Web Services service by using an
  endpoint. For
  a list of Amazon Connect endpoints, see [Amazon Connect Endpoints](https://docs.aws.amazon.com/general/latest/gr/connect_region.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      associate_instance_storage_config_request() :: %{
        required("ResourceType") => list(any()),
        required("StorageConfig") => instance_storage_config()
      }

  """
  @type associate_instance_storage_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_attached_file_request() :: %{
        required("AssociatedResourceArn") => String.t()
      }

  """
  @type delete_attached_file_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      contact_filter() :: %{
        "ContactStates" => list(list(any())())
      }

  """
  @type contact_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      answer_machine_detection_config() :: %{
        "AwaitAnswerMachinePrompt" => boolean(),
        "EnableAnswerMachineDetection" => boolean()
      }

  """
  @type answer_machine_detection_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_user_identity_info_request() :: %{
        required("IdentityInfo") => user_identity_info()
      }

  """
  @type update_user_identity_info_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_contact_evaluations_request() :: %{
        optional("NextToken") => String.t(),
        required("ContactId") => String.t()
      }

  """
  @type list_contact_evaluations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      outbound_caller_config() :: %{
        "OutboundCallerIdName" => String.t(),
        "OutboundCallerIdNumberId" => String.t(),
        "OutboundFlowId" => String.t()
      }

  """
  @type outbound_caller_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      queue_search_filter() :: %{
        "TagFilter" => control_plane_tag_filter()
      }

  """
  @type queue_search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      action_summary() :: %{
        "ActionType" => list(any())
      }

  """
  @type action_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_user_proficiencies_request() :: %{
        required("UserProficiencies") => list(user_proficiency()())
      }

  """
  @type update_user_proficiencies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_default_vocabulary_request() :: %{
        optional("VocabularyId") => String.t()
      }

  """
  @type associate_default_vocabulary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_persistent_contact_association_response() :: %{
        "ContinuedFromContactId" => String.t()
      }

  """
  @type create_persistent_contact_association_response() :: %{String.t() => any()}

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
        optional("NextToken") => String.t(),
        required("Filters") => user_data_filters()
      }

  """
  @type get_current_user_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      chat_streaming_configuration() :: %{
        "StreamingEndpointArn" => String.t()
      }

  """
  @type chat_streaming_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      view_input_content() :: %{
        "Actions" => list(String.t()()),
        "Template" => String.t()
      }

  """
  @type view_input_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_contact_references_response() :: %{
        "NextToken" => String.t(),
        "ReferenceSummaryList" => list(list()())
      }

  """
  @type list_contact_references_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_vocabularies_response() :: %{
        "NextToken" => String.t(),
        "VocabularySummaryList" => list(vocabulary_summary()())
      }

  """
  @type search_vocabularies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_current_metric_data_request() :: %{
        optional("Groupings") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SortCriteria") => list(current_metric_sort_criteria()()),
        required("CurrentMetrics") => list(current_metric()()),
        required("Filters") => filters()
      }

  """
  @type get_current_metric_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      participant_capabilities() :: %{
        "Video" => list(any())
      }

  """
  @type participant_capabilities() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_rule_request() :: %{
        optional("ClientToken") => String.t(),
        required("Actions") => list(rule_action()()),
        required("Function") => String.t(),
        required("Name") => String.t(),
        required("PublishStatus") => list(any()),
        required("TriggerEventSource") => rule_trigger_event_source()
      }

  """
  @type create_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_evaluation_form_request() :: %{
        optional("ClientToken") => String.t(),
        optional("CreateNewVersion") => boolean(),
        optional("Description") => String.t(),
        optional("ScoringStrategy") => evaluation_form_scoring_strategy(),
        required("EvaluationFormVersion") => integer(),
        required("Items") => list(list()()),
        required("Title") => String.t()
      }

  """
  @type update_evaluation_form_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      security_profile_search_criteria() :: %{
        "AndConditions" => list(security_profile_search_criteria()()),
        "OrConditions" => list(security_profile_search_criteria()()),
        "StringCondition" => string_condition()
      }

  """
  @type security_profile_search_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_traffic_distribution_group_user_request() :: %{
        required("InstanceId") => String.t(),
        required("UserId") => String.t()
      }

  """
  @type disassociate_traffic_distribution_group_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      email_reference() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }

  """
  @type email_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      number_reference() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }

  """
  @type number_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_participant_request() :: %{
        optional("ClientToken") => String.t(),
        required("ContactId") => String.t(),
        required("InstanceId") => String.t(),
        required("ParticipantDetails") => participant_details_to_add()
      }

  """
  @type create_participant_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      output_type_not_found_exception() :: %{
        "Message" => String.t()
      }

  """
  @type output_type_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      traffic_distribution_group_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "InstanceArn" => String.t(),
        "IsDefault" => boolean(),
        "Name" => String.t(),
        "Status" => list(any())
      }

  """
  @type traffic_distribution_group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      contact_flow_module() :: %{
        "Arn" => String.t(),
        "Content" => String.t(),
        "Description" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "State" => list(any()),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type contact_flow_module() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Username" => String.t()
      }

  """
  @type user_summary() :: %{String.t() => any()}

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
        optional("NextToken") => String.t(),
        optional("QueueTypes") => list(list(any())())
      }

  """
  @type list_queues_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_lambda_functions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_lambda_functions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      encryption_config() :: %{
        "EncryptionType" => list(any()),
        "KeyId" => String.t()
      }

  """
  @type encryption_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_phone_numbers_summary() :: %{
        "InstanceId" => String.t(),
        "PhoneNumber" => String.t(),
        "PhoneNumberArn" => String.t(),
        "PhoneNumberCountryCode" => list(any()),
        "PhoneNumberDescription" => String.t(),
        "PhoneNumberId" => String.t(),
        "PhoneNumberType" => list(any()),
        "SourcePhoneNumberArn" => String.t(),
        "TargetArn" => String.t()
      }

  """
  @type list_phone_numbers_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      campaign() :: %{
        "CampaignId" => String.t()
      }

  """
  @type campaign() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_user_hierarchy_group_request() :: %{}

  """
  @type describe_user_hierarchy_group_request() :: %{}

  @typedoc """

  ## Example:

      search_users_response() :: %{
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t(),
        "Users" => list(user_search_summary()())
      }

  """
  @type search_users_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_contact_recording_request() :: %{
        required("ContactId") => String.t(),
        required("InitialContactId") => String.t(),
        required("InstanceId") => String.t(),
        required("VoiceRecordingConfiguration") => voice_recording_configuration()
      }

  """
  @type start_contact_recording_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_traffic_distribution_group_users_response() :: %{
        "NextToken" => String.t(),
        "TrafficDistributionGroupUserSummaryList" => list(traffic_distribution_group_user_summary()())
      }

  """
  @type list_traffic_distribution_group_users_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_traffic_distribution_group_request() :: %{}

  """
  @type describe_traffic_distribution_group_request() :: %{}

  @typedoc """

  ## Example:

      prompt_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t()
      }

  """
  @type prompt_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_flow_request() :: %{}

  """
  @type disassociate_flow_request() :: %{}

  @typedoc """

  ## Example:

      create_use_case_response() :: %{
        "UseCaseArn" => String.t(),
        "UseCaseId" => String.t()
      }

  """
  @type create_use_case_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      replicate_instance_request() :: %{
        optional("ClientToken") => String.t(),
        required("ReplicaAlias") => String.t(),
        required("ReplicaRegion") => String.t()
      }

  """
  @type replicate_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      deactivate_evaluation_form_response() :: %{
        "EvaluationFormArn" => String.t(),
        "EvaluationFormId" => String.t(),
        "EvaluationFormVersion" => integer()
      }

  """
  @type deactivate_evaluation_form_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_hours_of_operations_response() :: %{
        "ApproximateTotalCount" => float(),
        "HoursOfOperations" => list(hours_of_operation()()),
        "NextToken" => String.t()
      }

  """
  @type search_hours_of_operations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      view_summary() :: %{
        "Arn" => String.t(),
        "Description" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "Status" => list(any()),
        "Type" => list(any())
      }

  """
  @type view_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      activate_evaluation_form_request() :: %{
        required("EvaluationFormVersion") => integer()
      }

  """
  @type activate_evaluation_form_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      successful_request() :: %{
        "ContactId" => String.t(),
        "RequestIdentifier" => String.t()
      }

  """
  @type successful_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_instance_storage_config_response() :: %{
        "StorageConfig" => instance_storage_config()
      }

  """
  @type describe_instance_storage_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_contact_request() :: %{}

  """
  @type describe_contact_request() :: %{}

  @typedoc """

  ## Example:

      agent_status() :: %{
        "AgentStatusARN" => String.t(),
        "AgentStatusId" => String.t(),
        "Description" => String.t(),
        "DisplayOrder" => integer(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "State" => list(any()),
        "Tags" => map(),
        "Type" => list(any())
      }

  """
  @type agent_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_available_phone_numbers_response() :: %{
        "AvailableNumbersList" => list(available_number_summary()()),
        "NextToken" => String.t()
      }

  """
  @type search_available_phone_numbers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dimensions() :: %{
        "Channel" => list(any()),
        "Queue" => queue_reference(),
        "RoutingProfile" => routing_profile_reference(),
        "RoutingStepExpression" => String.t()
      }

  """
  @type dimensions() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_task_template_response() :: %{
        "Arn" => String.t(),
        "Constraints" => task_template_constraints(),
        "ContactFlowId" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Defaults" => task_template_defaults(),
        "Description" => String.t(),
        "Fields" => list(task_template_field()()),
        "Id" => String.t(),
        "InstanceId" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type get_task_template_response() :: %{String.t() => any()}

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
  @type describe_prompt_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_hours_of_operations_response() :: %{
        "HoursOfOperationSummaryList" => list(hours_of_operation_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_hours_of_operations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      property_validation_exception() :: %{
        "Message" => String.t(),
        "PropertyList" => list(property_validation_exception_property()())
      }

  """
  @type property_validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_identity_info_lite() :: %{
        "FirstName" => String.t(),
        "LastName" => String.t()
      }

  """
  @type user_identity_info_lite() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_contact_response() :: %{
        "Contact" => contact()
      }

  """
  @type describe_contact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_flow_associations_response() :: %{
        "FlowAssociationSummaryList" => list(flow_association_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_flow_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_contacts_time_range() :: %{
        "EndTime" => non_neg_integer(),
        "StartTime" => non_neg_integer(),
        "Type" => list(any())
      }

  """
  @type search_contacts_time_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      threshold_v2() :: %{
        "Comparison" => String.t(),
        "ThresholdValue" => float()
      }

  """
  @type threshold_v2() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_contact_attributes_response() :: %{}

  """
  @type update_contact_attributes_response() :: %{}

  @typedoc """

  ## Example:

      create_contact_flow_request() :: %{
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("Content") => String.t(),
        required("Name") => String.t(),
        required("Type") => list(any())
      }

  """
  @type create_contact_flow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metric_interval() :: %{
        "EndTime" => non_neg_integer(),
        "Interval" => list(any()),
        "StartTime" => non_neg_integer()
      }

  """
  @type metric_interval() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      upload_url_metadata() :: %{
        "HeadersToInclude" => map(),
        "Url" => String.t(),
        "UrlExpiry" => String.t()
      }

  """
  @type upload_url_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      real_time_contact_analysis_transcript_item_with_content() :: %{
        "CharacterOffsets" => real_time_contact_analysis_character_interval(),
        "Content" => String.t(),
        "Id" => String.t()
      }

  """
  @type real_time_contact_analysis_transcript_item_with_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_predefined_attributes_response() :: %{
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t(),
        "PredefinedAttributes" => list(predefined_attribute()())
      }

  """
  @type search_predefined_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_in_use_exception() :: %{
        "Message" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => list(any())
      }

  """
  @type resource_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_hours_of_operations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SearchCriteria") => hours_of_operation_search_criteria(),
        optional("SearchFilter") => hours_of_operation_search_filter(),
        required("InstanceId") => String.t()
      }

  """
  @type search_hours_of_operations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_predefined_attribute_request() :: %{}

  """
  @type describe_predefined_attribute_request() :: %{}

  @typedoc """

  ## Example:

      get_prompt_file_response() :: %{
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "PromptPresignedUrl" => String.t()
      }

  """
  @type get_prompt_file_response() :: %{String.t() => any()}

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
  @type hierarchy_path_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_flow_association_response() :: %{
        "FlowId" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => list(any())
      }

  """
  @type get_flow_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evaluation_form_version_summary() :: %{
        "CreatedBy" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "EvaluationFormArn" => String.t(),
        "EvaluationFormId" => String.t(),
        "EvaluationFormVersion" => integer(),
        "LastModifiedBy" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Locked" => boolean(),
        "Status" => list(any())
      }

  """
  @type evaluation_form_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_user_proficiencies_response() :: %{
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "NextToken" => String.t(),
        "UserProficiencyList" => list(user_proficiency()())
      }

  """
  @type list_user_proficiencies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      historical_metric_result() :: %{
        "Collections" => list(historical_metric_data()()),
        "Dimensions" => dimensions()
      }

  """
  @type historical_metric_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_agent_status_response() :: %{
        "AgentStatus" => agent_status()
      }

  """
  @type describe_agent_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_chat_integration_event_response() :: %{
        "InitialContactId" => String.t(),
        "NewChatCreated" => boolean()
      }

  """
  @type send_chat_integration_event_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      meeting() :: %{
        "MediaPlacement" => media_placement(),
        "MediaRegion" => String.t(),
        "MeetingFeatures" => meeting_features_configuration(),
        "MeetingId" => String.t()
      }

  """
  @type meeting() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attached_file() :: %{
        "AssociatedResourceArn" => String.t(),
        "CreatedBy" => list(),
        "CreationTime" => String.t(),
        "FileArn" => String.t(),
        "FileId" => String.t(),
        "FileName" => String.t(),
        "FileSizeInBytes" => float(),
        "FileStatus" => list(any()),
        "FileUseCaseType" => list(any()),
        "Tags" => map()
      }

  """
  @type attached_file() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_resource_tags_response() :: %{
        "NextToken" => String.t(),
        "Tags" => list(tag_set()())
      }

  """
  @type search_resource_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      phone_number_quick_connect_config() :: %{
        "PhoneNumber" => String.t()
      }

  """
  @type phone_number_quick_connect_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_security_profile_response() :: %{
        "SecurityProfile" => security_profile()
      }

  """
  @type describe_security_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_evaluation_form_request() :: %{
        optional("EvaluationFormVersion") => integer()
      }

  """
  @type delete_evaluation_form_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_security_profile_response() :: %{
        "SecurityProfileArn" => String.t(),
        "SecurityProfileId" => String.t()
      }

  """
  @type create_security_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      outbound_contact_not_permitted_exception() :: %{
        "Message" => String.t()
      }

  """
  @type outbound_contact_not_permitted_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_prompts_response() :: %{
        "NextToken" => String.t(),
        "PromptSummaryList" => list(prompt_summary()())
      }

  """
  @type list_prompts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_data_filters() :: %{
        "Agents" => list(String.t()()),
        "ContactFilter" => contact_filter(),
        "Queues" => list(String.t()()),
        "RoutingProfiles" => list(String.t()()),
        "UserHierarchyGroups" => list(String.t()())
      }

  """
  @type user_data_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_view_request() :: %{}

  """
  @type delete_view_request() :: %{}

  @typedoc """

  ## Example:

      chat_message() :: %{
        "Content" => String.t(),
        "ContentType" => String.t()
      }

  """
  @type chat_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_hours_of_operation_request() :: %{
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("Config") => list(hours_of_operation_config()()),
        required("Name") => String.t(),
        required("TimeZone") => String.t()
      }

  """
  @type create_hours_of_operation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      real_time_contact_analysis_point_of_interest() :: %{
        "TranscriptItems" => list(real_time_contact_analysis_transcript_item_with_character_offsets()())
      }

  """
  @type real_time_contact_analysis_point_of_interest() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_contact_flow_metadata_response() :: %{}

  """
  @type update_contact_flow_metadata_response() :: %{}

  @typedoc """

  ## Example:

      disassociate_lex_bot_request() :: %{
        required("BotName") => String.t(),
        required("LexRegion") => String.t()
      }

  """
  @type disassociate_lex_bot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_security_profile_request() :: %{
        optional("AllowedAccessControlHierarchyGroupId") => String.t(),
        optional("AllowedAccessControlTags") => map(),
        optional("Applications") => list(application()()),
        optional("Description") => String.t(),
        optional("HierarchyRestrictedResources") => list(String.t()()),
        optional("Permissions") => list(String.t()()),
        optional("TagRestrictedResources") => list(String.t()())
      }

  """
  @type update_security_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      credentials() :: %{
        "AccessToken" => String.t(),
        "AccessTokenExpiration" => non_neg_integer(),
        "RefreshToken" => String.t(),
        "RefreshTokenExpiration" => non_neg_integer()
      }

  """
  @type credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_vocabulary_request() :: %{}

  """
  @type describe_vocabulary_request() :: %{}

  @typedoc """

  ## Example:

      update_instance_storage_config_request() :: %{
        required("ResourceType") => list(any()),
        required("StorageConfig") => instance_storage_config()
      }

  """
  @type update_instance_storage_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_condition() :: %{
        "TagKey" => String.t(),
        "TagValue" => String.t()
      }

  """
  @type tag_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      view() :: %{
        "Arn" => String.t(),
        "Content" => view_content(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "Id" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "Status" => list(any()),
        "Tags" => map(),
        "Type" => list(any()),
        "Version" => integer(),
        "VersionDescription" => String.t(),
        "ViewContentSha256" => String.t()
      }

  """
  @type view() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_queue_response() :: %{
        "Queue" => queue()
      }

  """
  @type describe_queue_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_attached_file_response() :: %{}

  """
  @type delete_attached_file_response() :: %{}

  @typedoc """

  ## Example:

      hours_of_operation() :: %{
        "Config" => list(hours_of_operation_config()()),
        "Description" => String.t(),
        "HoursOfOperationArn" => String.t(),
        "HoursOfOperationId" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "Tags" => map(),
        "TimeZone" => String.t()
      }

  """
  @type hours_of_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      read_only_field_info() :: %{
        "Id" => task_template_field_identifier()
      }

  """
  @type read_only_field_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_quick_connect_name_request() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t()
      }

  """
  @type update_quick_connect_name_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_contact_recording_response() :: %{}

  """
  @type stop_contact_recording_response() :: %{}

  @typedoc """

  ## Example:

      metric_filter_v2() :: %{
        "MetricFilterKey" => String.t(),
        "MetricFilterValues" => list(String.t()()),
        "Negate" => boolean()
      }

  """
  @type metric_filter_v2() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      routing_profile_queue_config_summary() :: %{
        "Channel" => list(any()),
        "Delay" => integer(),
        "Priority" => integer(),
        "QueueArn" => String.t(),
        "QueueId" => String.t(),
        "QueueName" => String.t()
      }

  """
  @type routing_profile_queue_config_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_metric_data_v2_response() :: %{
        "MetricResults" => list(metric_result_v2()()),
        "NextToken" => String.t()
      }

  """
  @type get_metric_data_v2_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_flow_associations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceType") => list(any())
      }

  """
  @type list_flow_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hours_of_operation_search_filter() :: %{
        "TagFilter" => control_plane_tag_filter()
      }

  """
  @type hours_of_operation_search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_task_template_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Constraints") => task_template_constraints(),
        optional("ContactFlowId") => String.t(),
        optional("Defaults") => task_template_defaults(),
        optional("Description") => String.t(),
        optional("Status") => list(any()),
        required("Fields") => list(task_template_field()()),
        required("Name") => String.t()
      }

  """
  @type create_task_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      error_result() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t()
      }

  """
  @type error_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kinesis_firehose_config() :: %{
        "FirehoseArn" => String.t()
      }

  """
  @type kinesis_firehose_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      task_template_field() :: %{
        "Description" => String.t(),
        "Id" => task_template_field_identifier(),
        "SingleSelectOptions" => list(String.t()()),
        "Type" => list(any())
      }

  """
  @type task_template_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_evaluation_form_response() :: %{
        "EvaluationForm" => evaluation_form()
      }

  """
  @type describe_evaluation_form_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      task_template_defaults() :: %{
        "DefaultFieldValues" => list(task_template_default_field_value()())
      }

  """
  @type task_template_defaults() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_queue_max_contacts_request() :: %{
        optional("MaxContacts") => integer()
      }

  """
  @type update_queue_max_contacts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_task_template_response() :: %{}

  """
  @type delete_task_template_response() :: %{}

  @typedoc """

  ## Example:

      create_integration_association_response() :: %{
        "IntegrationAssociationArn" => String.t(),
        "IntegrationAssociationId" => String.t()
      }

  """
  @type create_integration_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      required_field_info() :: %{
        "Id" => task_template_field_identifier()
      }

  """
  @type required_field_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_search_summary() :: %{
        "Arn" => String.t(),
        "DirectoryUserId" => String.t(),
        "HierarchyGroupId" => String.t(),
        "Id" => String.t(),
        "IdentityInfo" => user_identity_info_lite(),
        "PhoneConfig" => user_phone_config(),
        "RoutingProfileId" => String.t(),
        "SecurityProfileIds" => list(String.t()()),
        "Tags" => map(),
        "Username" => String.t()
      }

  """
  @type user_search_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attached_file_error() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t(),
        "FileId" => String.t()
      }

  """
  @type attached_file_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lex_v2_bot() :: %{
        "AliasArn" => String.t()
      }

  """
  @type lex_v2_bot() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_traffic_distribution_group_response() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }

  """
  @type create_traffic_distribution_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      contact_not_found_exception() :: %{
        "Message" => String.t()
      }

  """
  @type contact_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      contact_flow_not_published_exception() :: %{
        "Message" => String.t()
      }

  """
  @type contact_flow_not_published_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      traffic_distribution_group_user_summary() :: %{
        "UserId" => String.t()
      }

  """
  @type traffic_distribution_group_user_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      use_case() :: %{
        "UseCaseArn" => String.t(),
        "UseCaseId" => String.t(),
        "UseCaseType" => list(any())
      }

  """
  @type use_case() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_hours_of_operation_request() :: %{
        optional("Config") => list(hours_of_operation_config()()),
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        optional("TimeZone") => String.t()
      }

  """
  @type update_hours_of_operation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_routing_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SearchCriteria") => routing_profile_search_criteria(),
        optional("SearchFilter") => routing_profile_search_filter(),
        required("InstanceId") => String.t()
      }

  """
  @type search_routing_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_rule_request() :: %{
        required("Actions") => list(rule_action()()),
        required("Function") => String.t(),
        required("Name") => String.t(),
        required("PublishStatus") => list(any())
      }

  """
  @type update_rule_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_outbound_voice_contact_response() :: %{
        "ContactId" => String.t()
      }

  """
  @type start_outbound_voice_contact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_contact_flows_request() :: %{
        optional("ContactFlowTypes") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_contact_flows_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_identity_info() :: %{
        "Email" => String.t(),
        "FirstName" => String.t(),
        "LastName" => String.t(),
        "Mobile" => String.t(),
        "SecondaryEmail" => String.t()
      }

  """
  @type user_identity_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_instance_attributes_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_instance_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_vocabulary_response() :: %{
        "State" => list(any()),
        "VocabularyArn" => String.t(),
        "VocabularyId" => String.t()
      }

  """
  @type create_vocabulary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      wisdom_info() :: %{
        "SessionArn" => String.t()
      }

  """
  @type wisdom_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      release_phone_number_request() :: %{
        optional("ClientToken") => String.t()
      }

  """
  @type release_phone_number_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_contact_request() :: %{
        optional("DisconnectReason") => disconnect_reason(),
        required("ContactId") => String.t(),
        required("InstanceId") => String.t()
      }

  """
  @type stop_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_phone_number_response() :: %{
        "PhoneNumberArn" => String.t(),
        "PhoneNumberId" => String.t()
      }

  """
  @type update_phone_number_response() :: %{String.t() => any()}

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
  @type lex_bot_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      real_time_contact_analysis_segment_issues() :: %{
        "IssuesDetected" => list(real_time_contact_analysis_issue_detected()())
      }

  """
  @type real_time_contact_analysis_segment_issues() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_instance_response() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }

  """
  @type create_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_contact_evaluations_response() :: %{
        "EvaluationSummaryList" => list(evaluation_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_contact_evaluations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      task_template_default_field_value() :: %{
        "DefaultValue" => String.t(),
        "Id" => task_template_field_identifier()
      }

  """
  @type task_template_default_field_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evaluation_note() :: %{
        "Value" => String.t()
      }

  """
  @type evaluation_note() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_contact_flow_module_metadata_request() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        optional("State") => list(any())
      }

  """
  @type update_contact_flow_module_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_prompt_response() :: %{
        "PromptARN" => String.t(),
        "PromptId" => String.t()
      }

  """
  @type update_prompt_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_contact_flow_exception() :: %{
        "problems" => list(problem_detail()())
      }

  """
  @type invalid_contact_flow_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_view_metadata_response() :: %{}

  """
  @type update_view_metadata_response() :: %{}

  @typedoc """

  ## Example:

      list_evaluation_form_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_evaluation_form_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_view_version_request() :: %{}

  """
  @type delete_view_version_request() :: %{}

  @typedoc """

  ## Example:

      import_phone_number_response() :: %{
        "PhoneNumberArn" => String.t(),
        "PhoneNumberId" => String.t()
      }

  """
  @type import_phone_number_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      persistent_chat() :: %{
        "RehydrationType" => list(any()),
        "SourceContactId" => String.t()
      }

  """
  @type persistent_chat() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_contact_schedule_response() :: %{}

  """
  @type update_contact_schedule_response() :: %{}

  @typedoc """

  ## Example:

      queue() :: %{
        "Description" => String.t(),
        "HoursOfOperationId" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "MaxContacts" => integer(),
        "Name" => String.t(),
        "OutboundCallerConfig" => outbound_caller_config(),
        "QueueArn" => String.t(),
        "QueueId" => String.t(),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type queue() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_proficiency_disassociate() :: %{
        "AttributeName" => String.t(),
        "AttributeValue" => String.t()
      }

  """
  @type user_proficiency_disassociate() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_service_exception() :: %{
        "Message" => String.t()
      }

  """
  @type internal_service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_use_cases_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_use_cases_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_approved_origin_request() :: %{
        required("Origin") => String.t()
      }

  """
  @type disassociate_approved_origin_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      segment_attribute_value() :: %{
        "ValueString" => String.t()
      }

  """
  @type segment_attribute_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      real_time_contact_analysis_segment_categories() :: %{
        "MatchedDetails" => map()
      }

  """
  @type real_time_contact_analysis_segment_categories() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_lambda_function_request() :: %{
        required("FunctionArn") => String.t()
      }

  """
  @type associate_lambda_function_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      transcript() :: %{
        "Criteria" => list(transcript_criteria()()),
        "MatchType" => list(any())
      }

  """
  @type transcript() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      download_url_metadata() :: %{
        "Url" => String.t(),
        "UrlExpiry" => String.t()
      }

  """
  @type download_url_metadata() :: %{String.t() => any()}

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
        required("QuickConnectIds") => list(String.t()())
      }

  """
  @type disassociate_queue_quick_connects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      complete_attached_file_upload_response() :: %{}

  """
  @type complete_attached_file_upload_response() :: %{}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_security_profile_applications_response() :: %{
        "Applications" => list(application()()),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "NextToken" => String.t()
      }

  """
  @type list_security_profile_applications_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_quick_connect_config_request() :: %{
        required("QuickConnectConfig") => quick_connect_config()
      }

  """
  @type update_quick_connect_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_queue_hours_of_operation_request() :: %{
        required("HoursOfOperationId") => String.t()
      }

  """
  @type update_queue_hours_of_operation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "Message" => String.t()
      }

  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      participant_details_to_add() :: %{
        "DisplayName" => String.t(),
        "ParticipantRole" => list(any())
      }

  """
  @type participant_details_to_add() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_contact_streaming_request() :: %{
        required("ChatStreamingConfiguration") => chat_streaming_configuration(),
        required("ClientToken") => String.t(),
        required("ContactId") => String.t(),
        required("InstanceId") => String.t()
      }

  """
  @type start_contact_streaming_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_analytics_data_set_response() :: %{
        "DataSetId" => String.t(),
        "ResourceShareArn" => String.t(),
        "ResourceShareId" => String.t(),
        "TargetAccountId" => String.t()
      }

  """
  @type associate_analytics_data_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_rules_request() :: %{
        optional("EventSourceName") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("PublishStatus") => list(any())
      }

  """
  @type list_rules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      import_phone_number_request() :: %{
        optional("ClientToken") => String.t(),
        optional("PhoneNumberDescription") => String.t(),
        optional("Tags") => map(),
        required("InstanceId") => String.t(),
        required("SourcePhoneNumberArn") => String.t()
      }

  """
  @type import_phone_number_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      claim_phone_number_response() :: %{
        "PhoneNumberArn" => String.t(),
        "PhoneNumberId" => String.t()
      }

  """
  @type claim_phone_number_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      queue_info() :: %{
        "EnqueueTimestamp" => non_neg_integer(),
        "Id" => String.t()
      }

  """
  @type queue_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evaluation_answer_output() :: %{
        "SystemSuggestedValue" => list(),
        "Value" => list()
      }

  """
  @type evaluation_answer_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      available_number_summary() :: %{
        "PhoneNumber" => String.t(),
        "PhoneNumberCountryCode" => list(any()),
        "PhoneNumberType" => list(any())
      }

  """
  @type available_number_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_view_version_response() :: %{
        "View" => view()
      }

  """
  @type create_view_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_phone_number_response() :: %{
        "ClaimedPhoneNumberSummary" => claimed_phone_number_summary()
      }

  """
  @type describe_phone_number_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hierarchy_group_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t()
      }

  """
  @type hierarchy_group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      participant_token_credentials() :: %{
        "Expiry" => String.t(),
        "ParticipantToken" => String.t()
      }

  """
  @type participant_token_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_contact_flow_module_request() :: %{}

  """
  @type describe_contact_flow_module_request() :: %{}

  @typedoc """

  ## Example:

      pause_contact_request() :: %{
        optional("ContactFlowId") => String.t(),
        required("ContactId") => String.t(),
        required("InstanceId") => String.t()
      }

  """
  @type pause_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_instance_attribute_response() :: %{
        "Attribute" => attribute()
      }

  """
  @type describe_instance_attribute_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      participant_timer_configuration() :: %{
        "ParticipantRole" => list(any()),
        "TimerType" => list(any()),
        "TimerValue" => list()
      }

  """
  @type participant_timer_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_approved_origin_request() :: %{
        required("Origin") => String.t()
      }

  """
  @type associate_approved_origin_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      destination_not_allowed_exception() :: %{
        "Message" => String.t()
      }

  """
  @type destination_not_allowed_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invisible_field_info() :: %{
        "Id" => task_template_field_identifier()
      }

  """
  @type invisible_field_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_quick_connect_response() :: %{
        "QuickConnectARN" => String.t(),
        "QuickConnectId" => String.t()
      }

  """
  @type create_quick_connect_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_lex_bots_response() :: %{
        "LexBots" => list(lex_bot()()),
        "NextToken" => String.t()
      }

  """
  @type list_lex_bots_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_vocabulary_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Tags") => map(),
        required("Content") => String.t(),
        required("LanguageCode") => list(any()),
        required("VocabularyName") => String.t()
      }

  """
  @type create_vocabulary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metric_result_v2() :: %{
        "Collections" => list(metric_data_v2()()),
        "Dimensions" => map(),
        "MetricInterval" => metric_interval()
      }

  """
  @type metric_result_v2() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_attached_file_metadata_response() :: %{
        "Errors" => list(attached_file_error()()),
        "Files" => list(attached_file()())
      }

  """
  @type batch_get_attached_file_metadata_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_attached_file_request() :: %{
        optional("UrlExpiryInSeconds") => integer(),
        required("AssociatedResourceArn") => String.t()
      }

  """
  @type get_attached_file_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      transfer_contact_request() :: %{
        optional("ClientToken") => String.t(),
        optional("QueueId") => String.t(),
        optional("UserId") => String.t(),
        required("ContactFlowId") => String.t(),
        required("ContactId") => String.t(),
        required("InstanceId") => String.t()
      }

  """
  @type transfer_contact_request() :: %{String.t() => any()}

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
        optional("NextToken") => String.t()
      }

  """
  @type list_agent_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      queue_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "QueueType" => list(any())
      }

  """
  @type queue_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_contact_flow_name_response() :: %{}

  """
  @type update_contact_flow_name_response() :: %{}

  @typedoc """

  ## Example:

      list_task_templates_response() :: %{
        "NextToken" => String.t(),
        "TaskTemplates" => list(task_template_metadata()())
      }

  """
  @type list_task_templates_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_current_user_data_response() :: %{
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t(),
        "UserDataList" => list(user_data()())
      }

  """
  @type get_current_user_data_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_rule_request() :: %{}

  """
  @type delete_rule_request() :: %{}

  @typedoc """

  ## Example:

      contact_flow_summary() :: %{
        "Arn" => String.t(),
        "ContactFlowState" => list(any()),
        "ContactFlowType" => list(any()),
        "Id" => String.t(),
        "Name" => String.t()
      }

  """
  @type contact_flow_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_contact_evaluation_request() :: %{
        optional("Answers") => map(),
        optional("Notes") => map()
      }

  """
  @type update_contact_evaluation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_lex_bots_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_lex_bots_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_phone_numbers_v2_request() :: %{
        optional("InstanceId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("PhoneNumberCountryCodes") => list(list(any())()),
        optional("PhoneNumberPrefix") => String.t(),
        optional("PhoneNumberTypes") => list(list(any())()),
        optional("TargetArn") => String.t()
      }

  """
  @type list_phone_numbers_v2_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_prompt_request() :: %{}

  """
  @type delete_prompt_request() :: %{}

  @typedoc """

  ## Example:

      send_chat_integration_event_request() :: %{
        optional("NewSessionDetails") => new_session_details(),
        optional("Subtype") => String.t(),
        required("DestinationId") => String.t(),
        required("Event") => chat_event(),
        required("SourceId") => String.t()
      }

  """
  @type send_chat_integration_event_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_user_hierarchy_structure_response() :: %{
        "HierarchyStructure" => hierarchy_structure()
      }

  """
  @type describe_user_hierarchy_structure_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_data() :: %{
        "ActiveSlotsByChannel" => map(),
        "AvailableSlotsByChannel" => map(),
        "Contacts" => list(agent_contact_reference()()),
        "HierarchyPath" => hierarchy_path_reference(),
        "MaxSlotsByChannel" => map(),
        "NextStatus" => String.t(),
        "RoutingProfile" => routing_profile_reference(),
        "Status" => agent_status_reference(),
        "User" => user_reference()
      }

  """
  @type user_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connect_reference() :: %{
        "Type" => list(any()),
        "Value" => String.t()
      }

  """
  @type connect_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_predefined_attribute_response() :: %{
        "PredefinedAttribute" => predefined_attribute()
      }

  """
  @type describe_predefined_attribute_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_federation_token_response() :: %{
        "Credentials" => credentials(),
        "SignInUrl" => String.t(),
        "UserArn" => String.t(),
        "UserId" => String.t()
      }

  """
  @type get_federation_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_traffic_distribution_groups_request() :: %{
        optional("InstanceId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_traffic_distribution_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      quick_connect_search_criteria() :: %{
        "AndConditions" => list(quick_connect_search_criteria()()),
        "OrConditions" => list(quick_connect_search_criteria()()),
        "StringCondition" => string_condition()
      }

  """
  @type quick_connect_search_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_view_response() :: %{
        "View" => view()
      }

  """
  @type describe_view_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      monitor_contact_request() :: %{
        optional("AllowedMonitorCapabilities") => list(list(any())()),
        optional("ClientToken") => String.t(),
        required("ContactId") => String.t(),
        required("InstanceId") => String.t(),
        required("UserId") => String.t()
      }

  """
  @type monitor_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_quick_connect_request() :: %{
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("Name") => String.t(),
        required("QuickConnectConfig") => quick_connect_config()
      }

  """
  @type create_quick_connect_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      task_action_definition() :: %{
        "ContactFlowId" => String.t(),
        "Description" => String.t(),
        "Name" => String.t(),
        "References" => map()
      }

  """
  @type task_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_traffic_distribution_group_user_request() :: %{
        required("InstanceId") => String.t(),
        required("UserId") => String.t()
      }

  """
  @type associate_traffic_distribution_group_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_contact_flow_response() :: %{}

  """
  @type delete_contact_flow_response() :: %{}

  @typedoc """

  ## Example:

      update_instance_attribute_request() :: %{
        required("Value") => String.t()
      }

  """
  @type update_instance_attribute_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hours_of_operation_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t()
      }

  """
  @type hours_of_operation_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_evaluation_form_response() :: %{
        "EvaluationFormArn" => String.t(),
        "EvaluationFormId" => String.t()
      }

  """
  @type create_evaluation_form_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      agent_contact_reference() :: %{
        "AgentContactState" => list(any()),
        "Channel" => list(any()),
        "ConnectedToAgentTimestamp" => non_neg_integer(),
        "ContactId" => String.t(),
        "InitiationMethod" => list(any()),
        "Queue" => queue_reference(),
        "StateStartTimestamp" => non_neg_integer()
      }

  """
  @type agent_contact_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_lambda_functions_response() :: %{
        "LambdaFunctions" => list(String.t()()),
        "NextToken" => String.t()
      }

  """
  @type list_lambda_functions_response() :: %{String.t() => any()}

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
  @type cross_channel_behavior() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      empty_field_value() :: %{}

  """
  @type empty_field_value() :: %{}

  @typedoc """

  ## Example:

      view_content() :: %{
        "Actions" => list(String.t()()),
        "InputSchema" => String.t(),
        "Template" => String.t()
      }

  """
  @type view_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evaluation_form_summary() :: %{
        "ActiveVersion" => integer(),
        "CreatedBy" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "EvaluationFormArn" => String.t(),
        "EvaluationFormId" => String.t(),
        "LastActivatedBy" => String.t(),
        "LastActivatedTime" => non_neg_integer(),
        "LastModifiedBy" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "LatestVersion" => integer(),
        "Title" => String.t()
      }

  """
  @type evaluation_form_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_task_template_request() :: %{
        optional("SnapshotVersion") => String.t()
      }

  """
  @type get_task_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_analytics_data_set_request() :: %{
        optional("TargetAccountId") => String.t(),
        required("DataSetId") => String.t()
      }

  """
  @type disassociate_analytics_data_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_agent_status_request() :: %{}

  """
  @type describe_agent_status_request() :: %{}

  @typedoc """

  ## Example:

      list_security_keys_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_security_keys_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_prompt_request() :: %{
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("Name") => String.t(),
        required("S3Uri") => String.t()
      }

  """
  @type create_prompt_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_routing_profile_queues_request() :: %{
        required("QueueConfigs") => list(routing_profile_queue_config()())
      }

  """
  @type associate_routing_profile_queues_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_prompts_response() :: %{
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t(),
        "Prompts" => list(prompt()())
      }

  """
  @type search_prompts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bots_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("LexVersion") => list(any())
      }

  """
  @type list_bots_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_security_profile_request() :: %{
        optional("AllowedAccessControlHierarchyGroupId") => String.t(),
        optional("AllowedAccessControlTags") => map(),
        optional("Applications") => list(application()()),
        optional("Description") => String.t(),
        optional("HierarchyRestrictedResources") => list(String.t()()),
        optional("Permissions") => list(String.t()()),
        optional("TagRestrictedResources") => list(String.t()()),
        optional("Tags") => map(),
        required("SecurityProfileName") => String.t()
      }

  """
  @type create_security_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_view_version_request() :: %{
        optional("VersionDescription") => String.t(),
        optional("ViewContentSha256") => String.t()
      }

  """
  @type create_view_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_instance_attribute_request() :: %{}

  """
  @type describe_instance_attribute_request() :: %{}

  @typedoc """

  ## Example:

      list_security_profile_permissions_response() :: %{
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "NextToken" => String.t(),
        "Permissions" => list(String.t()())
      }

  """
  @type list_security_profile_permissions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_predefined_attribute_request() :: %{
        required("Name") => String.t(),
        required("Values") => list()
      }

  """
  @type create_predefined_attribute_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_contact_recording_request() :: %{
        required("ContactId") => String.t(),
        required("InitialContactId") => String.t(),
        required("InstanceId") => String.t()
      }

  """
  @type stop_contact_recording_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      real_time_contact_analysis_category_details() :: %{
        "PointsOfInterest" => list(real_time_contact_analysis_point_of_interest()())
      }

  """
  @type real_time_contact_analysis_category_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_traffic_distribution_group_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("InstanceId") => String.t(),
        required("Name") => String.t()
      }

  """
  @type create_traffic_distribution_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      security_profile_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t()
      }

  """
  @type security_profile_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_contact_evaluation_response() :: %{
        "Evaluation" => evaluation(),
        "EvaluationForm" => evaluation_form_content()
      }

  """
  @type describe_contact_evaluation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_evaluation_form_request() :: %{
        optional("EvaluationFormVersion") => integer()
      }

  """
  @type describe_evaluation_form_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      send_notification_action_definition() :: %{
        "Content" => String.t(),
        "ContentType" => list(any()),
        "DeliveryMethod" => list(any()),
        "Recipient" => notification_recipient_type(),
        "Subject" => String.t()
      }

  """
  @type send_notification_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_quick_connect_config() :: %{
        "ContactFlowId" => String.t(),
        "UserId" => String.t()
      }

  """
  @type user_quick_connect_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      phone_number_status() :: %{
        "Message" => String.t(),
        "Status" => list(any())
      }

  """
  @type phone_number_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      agent_info() :: %{
        "AgentPauseDurationInSeconds" => integer(),
        "ConnectedToAgentTimestamp" => non_neg_integer(),
        "Id" => String.t()
      }

  """
  @type agent_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_hours_of_operation_response() :: %{
        "HoursOfOperation" => hours_of_operation()
      }

  """
  @type describe_hours_of_operation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_disassociate_analytics_data_set_request() :: %{
        optional("TargetAccountId") => String.t(),
        required("DataSetIds") => list(String.t()())
      }

  """
  @type batch_disassociate_analytics_data_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_prompt_response() :: %{
        "PromptARN" => String.t(),
        "PromptId" => String.t()
      }

  """
  @type create_prompt_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_integration_association_request() :: %{
        optional("SourceApplicationName") => String.t(),
        optional("SourceApplicationUrl") => String.t(),
        optional("SourceType") => list(any()),
        optional("Tags") => map(),
        required("IntegrationArn") => String.t(),
        required("IntegrationType") => list(any())
      }

  """
  @type create_integration_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_features() :: %{
        "EchoReduction" => list(any())
      }

  """
  @type audio_features() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      routing_profile_queue_config() :: %{
        "Delay" => integer(),
        "Priority" => integer(),
        "QueueReference" => routing_profile_queue_reference()
      }

  """
  @type routing_profile_queue_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_request_exception() :: %{
        "Message" => String.t(),
        "Reason" => list()
      }

  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_task_template_request() :: %{
        optional("Constraints") => task_template_constraints(),
        optional("ContactFlowId") => String.t(),
        optional("Defaults") => task_template_defaults(),
        optional("Description") => String.t(),
        optional("Fields") => list(task_template_field()()),
        optional("Name") => String.t(),
        optional("Status") => list(any())
      }

  """
  @type update_task_template_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_contact_response() :: %{}

  """
  @type update_contact_response() :: %{}

  @typedoc """

  ## Example:

      disassociate_bot_request() :: %{
        optional("LexBot") => lex_bot(),
        optional("LexV2Bot") => lex_v2_bot()
      }

  """
  @type disassociate_bot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evaluation_score() :: %{
        "AutomaticFail" => boolean(),
        "NotApplicable" => boolean(),
        "Percentage" => float()
      }

  """
  @type evaluation_score() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_put_contact_request() :: %{
        optional("ClientToken") => String.t(),
        required("ContactDataRequestList") => list(contact_data_request()())
      }

  """
  @type batch_put_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_task_templates_request() :: %{
        optional("MaxResults") => integer(),
        optional("Name") => String.t(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any())
      }

  """
  @type list_task_templates_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      telephony_config() :: %{
        "Distributions" => list(distribution()())
      }

  """
  @type telephony_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_security_profiles_response() :: %{
        "NextToken" => String.t(),
        "SecurityProfileSummaryList" => list(security_profile_summary()())
      }

  """
  @type list_security_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_participant_response() :: %{
        "ParticipantCredentials" => participant_token_credentials(),
        "ParticipantId" => String.t()
      }

  """
  @type create_participant_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hierarchy_group_condition() :: %{
        "HierarchyGroupMatchType" => list(any()),
        "Value" => String.t()
      }

  """
  @type hierarchy_group_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vocabulary_summary() :: %{
        "Arn" => String.t(),
        "FailureReason" => String.t(),
        "Id" => String.t(),
        "LanguageCode" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "State" => list(any())
      }

  """
  @type vocabulary_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_view_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_view_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_contact_flow_module_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("Content") => String.t(),
        required("Name") => String.t()
      }

  """
  @type create_contact_flow_module_request() :: %{String.t() => any()}

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
  @type security_profiles_search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_attached_file_metadata_request() :: %{
        required("AssociatedResourceArn") => String.t(),
        required("FileIds") => list(String.t()())
      }

  """
  @type batch_get_attached_file_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_flow_association_request() :: %{
        optional("ResourceType") => list(any()),
        required("ResourceIds") => list(String.t()())
      }

  """
  @type batch_get_flow_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_config() :: %{
        "BucketName" => String.t(),
        "BucketPrefix" => String.t(),
        "EncryptionConfig" => encryption_config()
      }

  """
  @type s3_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_contact_flow_content_request() :: %{
        required("Content") => String.t()
      }

  """
  @type update_contact_flow_content_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_phone_config() :: %{
        "AfterContactWorkTimeLimit" => integer(),
        "AutoAccept" => boolean(),
        "DeskPhoneNumber" => String.t(),
        "PhoneType" => list(any())
      }

  """
  @type user_phone_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      submit_contact_evaluation_response() :: %{
        "EvaluationArn" => String.t(),
        "EvaluationId" => String.t()
      }

  """
  @type submit_contact_evaluation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evaluation_form() :: %{
        "CreatedBy" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "EvaluationFormArn" => String.t(),
        "EvaluationFormId" => String.t(),
        "EvaluationFormVersion" => integer(),
        "Items" => list(list()()),
        "LastModifiedBy" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Locked" => boolean(),
        "ScoringStrategy" => evaluation_form_scoring_strategy(),
        "Status" => list(any()),
        "Tags" => map(),
        "Title" => String.t()
      }

  """
  @type evaluation_form() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      real_time_contact_analysis_transcript_item_with_character_offsets() :: %{
        "CharacterOffsets" => real_time_contact_analysis_character_interval(),
        "Id" => String.t()
      }

  """
  @type real_time_contact_analysis_transcript_item_with_character_offsets() :: %{
          String.t() => any()
        }

  @typedoc """

  ## Example:

      view_version_summary() :: %{
        "Arn" => String.t(),
        "Description" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "Type" => list(any()),
        "Version" => integer(),
        "VersionDescription" => String.t()
      }

  """
  @type view_version_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      numeric_question_property_value_automation() :: %{
        "Label" => list(any())
      }

  """
  @type numeric_question_property_value_automation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_traffic_distribution_request() :: %{
        optional("AgentConfig") => agent_config(),
        optional("SignInConfig") => sign_in_config(),
        optional("TelephonyConfig") => telephony_config()
      }

  """
  @type update_traffic_distribution_request() :: %{String.t() => any()}

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
        optional("NextToken") => String.t(),
        optional("PhoneNumberCountryCodes") => list(list(any())()),
        optional("PhoneNumberTypes") => list(list(any())())
      }

  """
  @type list_phone_numbers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_metric_data_request() :: %{
        optional("Groupings") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("EndTime") => non_neg_integer(),
        required("Filters") => filters(),
        required("HistoricalMetrics") => list(historical_metric()()),
        required("StartTime") => non_neg_integer()
      }

  """
  @type get_metric_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      vocabulary() :: %{
        "Arn" => String.t(),
        "Content" => String.t(),
        "FailureReason" => String.t(),
        "Id" => String.t(),
        "LanguageCode" => list(any()),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "State" => list(any()),
        "Tags" => map()
      }

  """
  @type vocabulary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_routing_profile_queues_request() :: %{
        required("QueueReferences") => list(routing_profile_queue_reference()())
      }

  """
  @type disassociate_routing_profile_queues_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filter_v2() :: %{
        "FilterKey" => String.t(),
        "FilterValues" => list(String.t()())
      }

  """
  @type filter_v2() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_agent_status_request() :: %{
        optional("Description") => String.t(),
        optional("DisplayOrder") => integer(),
        optional("Name") => String.t(),
        optional("ResetOrderNumber") => boolean(),
        optional("State") => list(any())
      }

  """
  @type update_agent_status_request() :: %{String.t() => any()}

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
  @type routing_profile_search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_view_metadata_request() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t()
      }

  """
  @type update_view_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_users_response() :: %{
        "NextToken" => String.t(),
        "UserSummaryList" => list(user_summary()())
      }

  """
  @type list_users_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      application() :: %{
        "ApplicationPermissions" => list(String.t()()),
        "Namespace" => String.t()
      }

  """
  @type application() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hierarchy_level() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t()
      }

  """
  @type hierarchy_level() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_view_request() :: %{}

  """
  @type describe_view_request() :: %{}

  @typedoc """

  ## Example:

      get_attached_file_response() :: %{
        "AssociatedResourceArn" => String.t(),
        "CreatedBy" => list(),
        "CreationTime" => String.t(),
        "DownloadUrlMetadata" => download_url_metadata(),
        "FileArn" => String.t(),
        "FileId" => String.t(),
        "FileName" => String.t(),
        "FileSizeInBytes" => float(),
        "FileStatus" => list(any()),
        "FileUseCaseType" => list(any()),
        "Tags" => map()
      }

  """
  @type get_attached_file_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_evaluation_form_response() :: %{
        "EvaluationFormArn" => String.t(),
        "EvaluationFormId" => String.t(),
        "EvaluationFormVersion" => integer()
      }

  """
  @type update_evaluation_form_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_not_found_exception() :: %{
        "Message" => String.t()
      }

  """
  @type user_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_evaluation_form_versions_response() :: %{
        "EvaluationFormVersionSummaryList" => list(evaluation_form_version_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_evaluation_form_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_evaluation_form_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("ScoringStrategy") => evaluation_form_scoring_strategy(),
        required("Items") => list(list()()),
        required("Title") => String.t()
      }

  """
  @type create_evaluation_form_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_contact_recording_response() :: %{}

  """
  @type start_contact_recording_response() :: %{}

  @typedoc """

  ## Example:

      get_metric_data_v2_request() :: %{
        optional("Groupings") => list(String.t()()),
        optional("Interval") => interval_details(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("EndTime") => non_neg_integer(),
        required("Filters") => list(filter_v2()()),
        required("Metrics") => list(metric_v2()()),
        required("ResourceArn") => String.t(),
        required("StartTime") => non_neg_integer()
      }

  """
  @type get_metric_data_v2_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      claim_phone_number_request() :: %{
        optional("ClientToken") => String.t(),
        optional("InstanceId") => String.t(),
        optional("PhoneNumberDescription") => String.t(),
        optional("Tags") => map(),
        optional("TargetArn") => String.t(),
        required("PhoneNumber") => String.t()
      }

  """
  @type claim_phone_number_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_contact_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_quick_connects_response() :: %{
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t(),
        "QuickConnects" => list(quick_connect()())
      }

  """
  @type search_quick_connects_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_realtime_contact_analysis_segments_v2_response() :: %{
        "Channel" => list(any()),
        "NextToken" => String.t(),
        "Segments" => list(list()()),
        "Status" => list(any())
      }

  """
  @type list_realtime_contact_analysis_segments_v2_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      integration_association_summary() :: %{
        "InstanceId" => String.t(),
        "IntegrationArn" => String.t(),
        "IntegrationAssociationArn" => String.t(),
        "IntegrationAssociationId" => String.t(),
        "IntegrationType" => list(any()),
        "SourceApplicationName" => String.t(),
        "SourceApplicationUrl" => String.t(),
        "SourceType" => list(any())
      }

  """
  @type integration_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_analytics_data_associations_request() :: %{
        optional("DataSetId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_analytics_data_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_contacts_response() :: %{
        "Contacts" => list(contact_search_summary()()),
        "NextToken" => String.t(),
        "TotalCount" => float()
      }

  """
  @type search_contacts_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_predefined_attributes_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_predefined_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_quick_connects_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("QuickConnectTypes") => list(list(any())())
      }

  """
  @type list_quick_connects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      distribution() :: %{
        "Percentage" => integer(),
        "Region" => String.t()
      }

  """
  @type distribution() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_contact_streaming_response() :: %{
        "StreamingId" => String.t()
      }

  """
  @type start_contact_streaming_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_user_hierarchy_request() :: %{
        optional("HierarchyGroupId") => String.t()
      }

  """
  @type update_user_hierarchy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      quick_connect_search_filter() :: %{
        "TagFilter" => control_plane_tag_filter()
      }

  """
  @type quick_connect_search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_lambda_function_request() :: %{
        required("FunctionArn") => String.t()
      }

  """
  @type disassociate_lambda_function_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_instance_storage_config_request() :: %{
        required("ResourceType") => list(any())
      }

  """
  @type disassociate_instance_storage_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_routing_profile_queues_request() :: %{
        required("QueueConfigs") => list(routing_profile_queue_config()())
      }

  """
  @type update_routing_profile_queues_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_user_phone_config_request() :: %{
        required("PhoneConfig") => user_phone_config()
      }

  """
  @type update_user_phone_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evaluation_form_question() :: %{
        "Instructions" => String.t(),
        "NotApplicableEnabled" => boolean(),
        "QuestionType" => list(any()),
        "QuestionTypeProperties" => list(),
        "RefId" => String.t(),
        "Title" => String.t(),
        "Weight" => float()
      }

  """
  @type evaluation_form_question() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      notification_recipient_type() :: %{
        "UserIds" => list(String.t()()),
        "UserTags" => map()
      }

  """
  @type notification_recipient_type() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      kinesis_stream_config() :: %{
        "StreamArn" => String.t()
      }

  """
  @type kinesis_stream_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      real_time_contact_analysis_segment_event() :: %{
        "DisplayName" => String.t(),
        "EventType" => String.t(),
        "Id" => String.t(),
        "ParticipantId" => String.t(),
        "ParticipantRole" => list(any()),
        "Time" => list()
      }

  """
  @type real_time_contact_analysis_segment_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      agent_hierarchy_groups() :: %{
        "L1Ids" => list(String.t()()),
        "L2Ids" => list(String.t()()),
        "L3Ids" => list(String.t()()),
        "L4Ids" => list(String.t()()),
        "L5Ids" => list(String.t()())
      }

  """
  @type agent_hierarchy_groups() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_use_cases_response() :: %{
        "NextToken" => String.t(),
        "UseCaseSummaryList" => list(use_case()())
      }

  """
  @type list_use_cases_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_set() :: %{
        "key" => String.t(),
        "value" => String.t()
      }

  """
  @type tag_set() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      problem_detail() :: %{
        "message" => String.t()
      }

  """
  @type problem_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_queues_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SearchCriteria") => queue_search_criteria(),
        optional("SearchFilter") => queue_search_filter(),
        required("InstanceId") => String.t()
      }

  """
  @type search_queues_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_analytics_data_set_request() :: %{
        optional("TargetAccountId") => String.t(),
        required("DataSetId") => String.t()
      }

  """
  @type associate_analytics_data_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_users_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SearchCriteria") => user_search_criteria(),
        optional("SearchFilter") => user_search_filter(),
        required("InstanceId") => String.t()
      }

  """
  @type search_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_user_hierarchy_group_response() :: %{
        "HierarchyGroupArn" => String.t(),
        "HierarchyGroupId" => String.t()
      }

  """
  @type create_user_hierarchy_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_user_proficiencies_request() :: %{
        required("UserProficiencies") => list(user_proficiency_disassociate()())
      }

  """
  @type disassociate_user_proficiencies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      contact_data_request() :: %{
        "Attributes" => map(),
        "Campaign" => campaign(),
        "CustomerEndpoint" => endpoint(),
        "QueueId" => String.t(),
        "RequestIdentifier" => String.t(),
        "SystemEndpoint" => endpoint()
      }

  """
  @type contact_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_phone_number_contact_flow_request() :: %{
        required("InstanceId") => String.t()
      }

  """
  @type disassociate_phone_number_contact_flow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      contact_analysis() :: %{
        "Transcript" => transcript()
      }

  """
  @type contact_analysis() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_approved_origins_response() :: %{
        "NextToken" => String.t(),
        "Origins" => list(String.t()())
      }

  """
  @type list_approved_origins_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      security_profile_search_summary() :: %{
        "Arn" => String.t(),
        "Description" => String.t(),
        "Id" => String.t(),
        "OrganizationResourceId" => String.t(),
        "SecurityProfileName" => String.t(),
        "Tags" => map()
      }

  """
  @type security_profile_search_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_view_response() :: %{
        "View" => view()
      }

  """
  @type create_view_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      routing_profile_search_criteria() :: %{
        "AndConditions" => list(routing_profile_search_criteria()()),
        "OrConditions" => list(routing_profile_search_criteria()()),
        "StringCondition" => string_condition()
      }

  """
  @type routing_profile_search_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evaluation_form_numeric_question_option() :: %{
        "AutomaticFail" => boolean(),
        "MaxValue" => integer(),
        "MinValue" => integer(),
        "Score" => integer()
      }

  """
  @type evaluation_form_numeric_question_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_task_contact_request() :: %{
        optional("Attributes") => map(),
        optional("ClientToken") => String.t(),
        optional("ContactFlowId") => String.t(),
        optional("Description") => String.t(),
        optional("PreviousContactId") => String.t(),
        optional("QuickConnectId") => String.t(),
        optional("References") => map(),
        optional("RelatedContactId") => String.t(),
        optional("ScheduledTime") => non_neg_integer(),
        optional("TaskTemplateId") => String.t(),
        required("InstanceId") => String.t(),
        required("Name") => String.t()
      }

  """
  @type start_task_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_case_action_definition() :: %{
        "Fields" => list(field_value()()),
        "TemplateId" => String.t()
      }

  """
  @type create_case_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_rule_response() :: %{
        "RuleArn" => String.t(),
        "RuleId" => String.t()
      }

  """
  @type create_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      current_metric_result() :: %{
        "Collections" => list(current_metric_data()()),
        "Dimensions" => dimensions()
      }

  """
  @type current_metric_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_phone_number_contact_flow_request() :: %{
        required("ContactFlowId") => String.t(),
        required("InstanceId") => String.t()
      }

  """
  @type associate_phone_number_contact_flow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_predefined_attribute_request() :: %{
        optional("Values") => list()
      }

  """
  @type update_predefined_attribute_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_integration_associations_request() :: %{
        optional("IntegrationArn") => String.t(),
        optional("IntegrationType") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_integration_associations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_queue_request() :: %{
        optional("Description") => String.t(),
        optional("MaxContacts") => integer(),
        optional("OutboundCallerConfig") => outbound_caller_config(),
        optional("QuickConnectIds") => list(String.t()()),
        optional("Tags") => map(),
        required("HoursOfOperationId") => String.t(),
        required("Name") => String.t()
      }

  """
  @type create_queue_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attribute_and_condition() :: %{
        "HierarchyGroupCondition" => hierarchy_group_condition(),
        "TagConditions" => list(tag_condition()())
      }

  """
  @type attribute_and_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_contact_flow_module_response() :: %{}

  """
  @type delete_contact_flow_module_response() :: %{}

  @typedoc """

  ## Example:

      chat_participant_role_config() :: %{
        "ParticipantTimerConfigList" => list(participant_timer_configuration()())
      }

  """
  @type chat_participant_role_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      single_select_question_rule_category_automation() :: %{
        "Category" => String.t(),
        "Condition" => list(any()),
        "OptionRefId" => String.t()
      }

  """
  @type single_select_question_rule_category_automation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      lex_bot() :: %{
        "LexRegion" => String.t(),
        "Name" => String.t()
      }

  """
  @type lex_bot() :: %{String.t() => any()}

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
  @type hierarchy_path() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      quick_connect_config() :: %{
        "PhoneConfig" => phone_number_quick_connect_config(),
        "QueueConfig" => queue_quick_connect_config(),
        "QuickConnectType" => list(any()),
        "UserConfig" => user_quick_connect_config()
      }

  """
  @type quick_connect_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_instances_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      connection_data() :: %{
        "Attendee" => attendee(),
        "Meeting" => meeting()
      }

  """
  @type connection_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      monitor_contact_response() :: %{
        "ContactArn" => String.t(),
        "ContactId" => String.t()
      }

  """
  @type monitor_contact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_instance_storage_config_response() :: %{
        "AssociationId" => String.t()
      }

  """
  @type associate_instance_storage_config_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_traffic_distribution_group_users_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_traffic_distribution_group_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_user_request() :: %{}

  """
  @type delete_user_request() :: %{}

  @typedoc """

  ## Example:

      get_metric_data_response() :: %{
        "MetricResults" => list(historical_metric_result()()),
        "NextToken" => String.t()
      }

  """
  @type get_metric_data_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_evaluation_forms_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_evaluation_forms_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      contact_flow_module_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "State" => list(any())
      }

  """
  @type contact_flow_module_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      flow_association_summary() :: %{
        "FlowId" => String.t(),
        "ResourceId" => String.t(),
        "ResourceType" => list(any())
      }

  """
  @type flow_association_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rule() :: %{
        "Actions" => list(rule_action()()),
        "CreatedTime" => non_neg_integer(),
        "Function" => String.t(),
        "LastUpdatedBy" => String.t(),
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t(),
        "PublishStatus" => list(any()),
        "RuleArn" => String.t(),
        "RuleId" => String.t(),
        "Tags" => map(),
        "TriggerEventSource" => rule_trigger_event_source()
      }

  """
  @type rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_user_hierarchy_groups_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_user_hierarchy_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sort() :: %{
        "FieldName" => list(any()),
        "Order" => list(any())
      }

  """
  @type sort() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      contact() :: %{
        "AgentInfo" => agent_info(),
        "Arn" => String.t(),
        "Channel" => list(any()),
        "Description" => String.t(),
        "DisconnectTimestamp" => non_neg_integer(),
        "Id" => String.t(),
        "InitialContactId" => String.t(),
        "InitiationMethod" => list(any()),
        "InitiationTimestamp" => non_neg_integer(),
        "LastPausedTimestamp" => non_neg_integer(),
        "LastResumedTimestamp" => non_neg_integer(),
        "LastUpdateTimestamp" => non_neg_integer(),
        "Name" => String.t(),
        "PreviousContactId" => String.t(),
        "QueueInfo" => queue_info(),
        "QueuePriority" => float(),
        "QueueTimeAdjustmentSeconds" => integer(),
        "RelatedContactId" => String.t(),
        "ScheduledTimestamp" => non_neg_integer(),
        "Tags" => map(),
        "TotalPauseCount" => integer(),
        "TotalPauseDurationInSeconds" => integer(),
        "WisdomInfo" => wisdom_info()
      }

  """
  @type contact() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_routing_profile_default_outbound_queue_request() :: %{
        required("DefaultOutboundQueueId") => String.t()
      }

  """
  @type update_routing_profile_default_outbound_queue_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_routing_profile_concurrency_request() :: %{
        required("MediaConcurrencies") => list(media_concurrency()())
      }

  """
  @type update_routing_profile_concurrency_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      routing_profile_queue_reference() :: %{
        "Channel" => list(any()),
        "QueueId" => String.t()
      }

  """
  @type routing_profile_queue_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      control_plane_user_attribute_filter() :: %{
        "AndCondition" => attribute_and_condition(),
        "HierarchyGroupCondition" => hierarchy_group_condition(),
        "OrConditions" => list(attribute_and_condition()()),
        "TagCondition" => tag_condition()
      }

  """
  @type control_plane_user_attribute_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_agent_status_response() :: %{
        "AgentStatusARN" => String.t(),
        "AgentStatusId" => String.t()
      }

  """
  @type create_agent_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_views_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Type") => list(any())
      }

  """
  @type list_views_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_contact_streaming_request() :: %{
        required("ContactId") => String.t(),
        required("InstanceId") => String.t(),
        required("StreamingId") => String.t()
      }

  """
  @type stop_contact_streaming_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_reference() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }

  """
  @type user_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_contact_flow_metadata_request() :: %{
        optional("ContactFlowState") => list(any()),
        optional("Description") => String.t(),
        optional("Name") => String.t()
      }

  """
  @type update_contact_flow_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      routing_profile_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t()
      }

  """
  @type routing_profile_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dismiss_user_contact_request() :: %{
        required("ContactId") => String.t()
      }

  """
  @type dismiss_user_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      voice_recording_configuration() :: %{
        "VoiceRecordingTrack" => list(any())
      }

  """
  @type voice_recording_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evaluation_form_numeric_question_properties() :: %{
        "Automation" => list(),
        "MaxValue" => integer(),
        "MinValue" => integer(),
        "Options" => list(evaluation_form_numeric_question_option()())
      }

  """
  @type evaluation_form_numeric_question_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_instance_attributes_response() :: %{
        "Attributes" => list(attribute()()),
        "NextToken" => String.t()
      }

  """
  @type list_instance_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      put_user_status_request() :: %{
        required("AgentStatusId") => String.t()
      }

  """
  @type put_user_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hierarchy_group() :: %{
        "Arn" => String.t(),
        "HierarchyPath" => hierarchy_path(),
        "Id" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "LevelId" => String.t(),
        "Name" => String.t(),
        "Tags" => map()
      }

  """
  @type hierarchy_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      searchable_contact_attributes_criteria() :: %{
        "Key" => String.t(),
        "Values" => list(String.t()())
      }

  """
  @type searchable_contact_attributes_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_view_versions_response() :: %{
        "NextToken" => String.t(),
        "ViewVersionSummaryList" => list(view_version_summary()())
      }

  """
  @type list_view_versions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      endpoint() :: %{
        "Address" => String.t(),
        "Type" => list(any())
      }

  """
  @type endpoint() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      queue_reference() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }

  """
  @type queue_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      interval_details() :: %{
        "IntervalPeriod" => list(any()),
        "TimeZone" => String.t()
      }

  """
  @type interval_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_contact_flow_modules_response() :: %{
        "ContactFlowModulesSummaryList" => list(contact_flow_module_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_contact_flow_modules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rule_action() :: %{
        "ActionType" => list(any()),
        "AssignContactCategoryAction" => assign_contact_category_action_definition(),
        "CreateCaseAction" => create_case_action_definition(),
        "EndAssociatedTasksAction" => end_associated_tasks_action_definition(),
        "EventBridgeAction" => event_bridge_action_definition(),
        "SendNotificationAction" => send_notification_action_definition(),
        "SubmitAutoEvaluationAction" => submit_auto_evaluation_action_definition(),
        "TaskAction" => task_action_definition(),
        "UpdateCaseAction" => update_case_action_definition()
      }

  """
  @type rule_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_instances_response() :: %{
        "InstanceSummaryList" => list(instance_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_instances_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_routing_profile_agent_availability_timer_request() :: %{
        required("AgentAvailabilityTimer") => list(any())
      }

  """
  @type update_routing_profile_agent_availability_timer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resume_contact_response() :: %{}

  """
  @type resume_contact_response() :: %{}

  @typedoc """

  ## Example:

      list_prompts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_prompts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_contact_evaluation_request() :: %{}

  """
  @type delete_contact_evaluation_request() :: %{}

  @typedoc """

  ## Example:

      list_security_profile_permissions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_security_profile_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_case_action_definition() :: %{
        "Fields" => list(field_value()())
      }

  """
  @type update_case_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_contact_response() :: %{}

  """
  @type untag_contact_response() :: %{}

  @typedoc """

  ## Example:

      security_profile() :: %{
        "AllowedAccessControlHierarchyGroupId" => String.t(),
        "AllowedAccessControlTags" => map(),
        "Arn" => String.t(),
        "Description" => String.t(),
        "HierarchyRestrictedResources" => list(String.t()()),
        "Id" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "OrganizationResourceId" => String.t(),
        "SecurityProfileName" => String.t(),
        "TagRestrictedResources" => list(String.t()()),
        "Tags" => map()
      }

  """
  @type security_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      quick_connect_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "QuickConnectType" => list(any())
      }

  """
  @type quick_connect_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_security_key_request() :: %{
        required("Key") => String.t()
      }

  """
  @type associate_security_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      current_metric() :: %{
        "Name" => list(any()),
        "Unit" => list(any())
      }

  """
  @type current_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      traffic_distribution_group() :: %{
        "Arn" => String.t(),
        "Description" => String.t(),
        "Id" => String.t(),
        "InstanceArn" => String.t(),
        "IsDefault" => boolean(),
        "Name" => String.t(),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type traffic_distribution_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rule_summary() :: %{
        "ActionSummaries" => list(action_summary()()),
        "CreatedTime" => non_neg_integer(),
        "EventSourceName" => list(any()),
        "LastUpdatedTime" => non_neg_integer(),
        "Name" => String.t(),
        "PublishStatus" => list(any()),
        "RuleArn" => String.t(),
        "RuleId" => String.t()
      }

  """
  @type rule_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_security_profile_applications_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_security_profile_applications_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_routing_profile_name_request() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t()
      }

  """
  @type update_routing_profile_name_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_routing_profile_queues_response() :: %{
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "NextToken" => String.t(),
        "RoutingProfileQueueConfigSummaryList" => list(routing_profile_queue_config_summary()())
      }

  """
  @type list_routing_profile_queues_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_contact_flow_modules_request() :: %{
        optional("ContactFlowModuleState") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_contact_flow_modules_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_bot_request() :: %{
        optional("LexBot") => lex_bot(),
        optional("LexV2Bot") => lex_v2_bot()
      }

  """
  @type associate_bot_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_lex_bot_request() :: %{
        required("LexBot") => lex_bot()
      }

  """
  @type associate_lex_bot_request() :: %{String.t() => any()}

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
  @type describe_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      string_condition() :: %{
        "ComparisonType" => list(any()),
        "FieldName" => String.t(),
        "Value" => String.t()
      }

  """
  @type string_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_bots_response() :: %{
        "LexBots" => list(lex_bot_config()()),
        "NextToken" => String.t()
      }

  """
  @type list_bots_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      contact_search_summary_agent_info() :: %{
        "ConnectedToAgentTimestamp" => non_neg_integer(),
        "Id" => String.t()
      }

  """
  @type contact_search_summary_agent_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_user_hierarchy_structure_request() :: %{
        required("HierarchyStructure") => hierarchy_structure_update()
      }

  """
  @type update_user_hierarchy_structure_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_traffic_distribution_group_request() :: %{}

  """
  @type delete_traffic_distribution_group_request() :: %{}

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
  @type deactivate_evaluation_form_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_user_security_profiles_request() :: %{
        required("SecurityProfileIds") => list(String.t()())
      }

  """
  @type update_user_security_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      instance_status_reason() :: %{
        "Message" => String.t()
      }

  """
  @type instance_status_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_agent_status_request() :: %{
        optional("Description") => String.t(),
        optional("DisplayOrder") => integer(),
        optional("Tags") => map(),
        required("Name") => String.t(),
        required("State") => list(any())
      }

  """
  @type create_agent_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resume_contact_request() :: %{
        optional("ContactFlowId") => String.t(),
        required("ContactId") => String.t(),
        required("InstanceId") => String.t()
      }

  """
  @type resume_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_traffic_distribution_group_user_response() :: %{}

  """
  @type associate_traffic_distribution_group_user_response() :: %{}

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
        "NextToken" => String.t(),
        "SecurityKeys" => list(security_key()())
      }

  """
  @type list_security_keys_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_view_request() :: %{
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("Tags") => map(),
        required("Content") => view_input_content(),
        required("Name") => String.t(),
        required("Status") => list(any())
      }

  """
  @type create_view_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_prompt_request() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        optional("S3Uri") => String.t()
      }

  """
  @type update_prompt_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_search_criteria() :: %{
        "AndConditions" => list(user_search_criteria()()),
        "HierarchyGroupCondition" => hierarchy_group_condition(),
        "OrConditions" => list(user_search_criteria()()),
        "StringCondition" => string_condition()
      }

  """
  @type user_search_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_contact_evaluation_request() :: %{}

  """
  @type describe_contact_evaluation_request() :: %{}

  @typedoc """

  ## Example:

      get_traffic_distribution_response() :: %{
        "AgentConfig" => agent_config(),
        "Arn" => String.t(),
        "Id" => String.t(),
        "SignInConfig" => sign_in_config(),
        "TelephonyConfig" => telephony_config()
      }

  """
  @type get_traffic_distribution_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      transfer_contact_response() :: %{
        "ContactArn" => String.t(),
        "ContactId" => String.t()
      }

  """
  @type transfer_contact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_view_content_request() :: %{
        required("Content") => view_input_content(),
        required("Status") => list(any())
      }

  """
  @type update_view_content_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_contact_evaluation_response() :: %{
        "EvaluationArn" => String.t(),
        "EvaluationId" => String.t()
      }

  """
  @type update_contact_evaluation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evaluation_form_single_select_question_option() :: %{
        "AutomaticFail" => boolean(),
        "RefId" => String.t(),
        "Score" => integer(),
        "Text" => String.t()
      }

  """
  @type evaluation_form_single_select_question_option() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_view_content_response() :: %{
        "View" => view()
      }

  """
  @type update_view_content_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_instance_request() :: %{
        optional("ClientToken") => String.t(),
        optional("DirectoryId") => String.t(),
        optional("InstanceAlias") => String.t(),
        optional("Tags") => map(),
        required("IdentityManagementType") => list(any()),
        required("InboundCallsEnabled") => boolean(),
        required("OutboundCallsEnabled") => boolean()
      }

  """
  @type create_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hierarchy_group_summary_reference() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }

  """
  @type hierarchy_group_summary_reference() :: %{String.t() => any()}

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
  @type hierarchy_structure() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_contact_streaming_response() :: %{}

  """
  @type stop_contact_streaming_response() :: %{}

  @typedoc """

  ## Example:

      describe_instance_response() :: %{
        "Instance" => instance()
      }

  """
  @type describe_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      new_session_details() :: %{
        "Attributes" => map(),
        "ParticipantDetails" => participant_details(),
        "StreamingConfiguration" => chat_streaming_configuration(),
        "SupportedMessagingContentTypes" => list(String.t()())
      }

  """
  @type new_session_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_queue_outbound_caller_config_request() :: %{
        required("OutboundCallerConfig") => outbound_caller_config()
      }

  """
  @type update_queue_outbound_caller_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_contact_attributes_response() :: %{
        "Attributes" => map()
      }

  """
  @type get_contact_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      instance() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Id" => String.t(),
        "IdentityManagementType" => list(any()),
        "InboundCallsEnabled" => boolean(),
        "InstanceAccessUrl" => String.t(),
        "InstanceAlias" => String.t(),
        "InstanceStatus" => list(any()),
        "OutboundCallsEnabled" => boolean(),
        "ServiceRole" => String.t(),
        "StatusReason" => instance_status_reason(),
        "Tags" => map()
      }

  """
  @type instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sign_in_config() :: %{
        "Distributions" => list(sign_in_distribution()())
      }

  """
  @type sign_in_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_routing_profiles_response() :: %{
        "NextToken" => String.t(),
        "RoutingProfileSummaryList" => list(routing_profile_summary()())
      }

  """
  @type list_routing_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_parameter_exception() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_contact_flow_module_response() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }

  """
  @type create_contact_flow_module_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_web_r_t_c_contact_response() :: %{
        "ConnectionData" => connection_data(),
        "ContactId" => String.t(),
        "ParticipantId" => String.t(),
        "ParticipantToken" => String.t()
      }

  """
  @type start_web_r_t_c_contact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      current_metric_sort_criteria() :: %{
        "SortByMetric" => list(any()),
        "SortOrder" => list(any())
      }

  """
  @type current_metric_sort_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_traffic_distribution_response() :: %{}

  """
  @type update_traffic_distribution_response() :: %{}

  @typedoc """

  ## Example:

      security_key() :: %{
        "AssociationId" => String.t(),
        "CreationTime" => non_neg_integer(),
        "Key" => String.t()
      }

  """
  @type security_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_rules_response() :: %{
        "NextToken" => String.t(),
        "RuleSummaryList" => list(rule_summary()())
      }

  """
  @type list_rules_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_resource_tags_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("ResourceTypes") => list(String.t()()),
        optional("SearchCriteria") => resource_tags_search_criteria(),
        required("InstanceId") => String.t()
      }

  """
  @type search_resource_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disconnect_reason() :: %{
        "Code" => String.t()
      }

  """
  @type disconnect_reason() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      replicate_instance_response() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }

  """
  @type replicate_instance_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      real_time_contact_analysis_character_interval() :: %{
        "BeginOffsetChar" => integer(),
        "EndOffsetChar" => integer()
      }

  """
  @type real_time_contact_analysis_character_interval() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_value() :: %{
        "Id" => String.t(),
        "Value" => field_value_union()
      }

  """
  @type field_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      task_template_constraints() :: %{
        "InvisibleFields" => list(invisible_field_info()()),
        "ReadOnlyFields" => list(read_only_field_info()()),
        "RequiredFields" => list(required_field_info()())
      }

  """
  @type task_template_constraints() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_contact_routing_data_request() :: %{
        optional("QueuePriority") => float(),
        optional("QueueTimeAdjustmentSeconds") => integer()
      }

  """
  @type update_contact_routing_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_traffic_distribution_group_response() :: %{
        "TrafficDistributionGroup" => traffic_distribution_group()
      }

  """
  @type describe_traffic_distribution_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_hours_of_operations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_hours_of_operations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_user_hierarchy_group_response() :: %{
        "HierarchyGroup" => hierarchy_group()
      }

  """
  @type describe_user_hierarchy_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_queue_name_request() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t()
      }

  """
  @type update_queue_name_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_contact_request() :: %{
        required("ContactId") => String.t(),
        required("InstanceId") => String.t(),
        required("Tags") => map()
      }

  """
  @type tag_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_contact_evaluation_response() :: %{
        "EvaluationArn" => String.t(),
        "EvaluationId" => String.t()
      }

  """
  @type start_contact_evaluation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_routing_profiles_response() :: %{
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t(),
        "RoutingProfiles" => list(routing_profile()())
      }

  """
  @type search_routing_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      queue_quick_connect_config() :: %{
        "ContactFlowId" => String.t(),
        "QueueId" => String.t()
      }

  """
  @type queue_quick_connect_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_proficiency() :: %{
        "AttributeName" => String.t(),
        "AttributeValue" => String.t(),
        "Level" => float()
      }

  """
  @type user_proficiency() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      queue_search_criteria() :: %{
        "AndConditions" => list(queue_search_criteria()()),
        "OrConditions" => list(queue_search_criteria()()),
        "QueueTypeCondition" => list(any()),
        "StringCondition" => string_condition()
      }

  """
  @type queue_search_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      submit_contact_evaluation_request() :: %{
        optional("Answers") => map(),
        optional("Notes") => map()
      }

  """
  @type submit_contact_evaluation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_user_request() :: %{}

  """
  @type describe_user_request() :: %{}

  @typedoc """

  ## Example:

      associate_user_proficiencies_request() :: %{
        required("UserProficiencies") => list(user_proficiency()())
      }

  """
  @type associate_user_proficiencies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_security_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SearchCriteria") => security_profile_search_criteria(),
        optional("SearchFilter") => security_profiles_search_filter(),
        required("InstanceId") => String.t()
      }

  """
  @type search_security_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_prompts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SearchCriteria") => prompt_search_criteria(),
        optional("SearchFilter") => prompt_search_filter(),
        required("InstanceId") => String.t()
      }

  """
  @type search_prompts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_security_profile_request() :: %{}

  """
  @type describe_security_profile_request() :: %{}

  @typedoc """

  ## Example:

      search_security_profiles_response() :: %{
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t(),
        "SecurityProfiles" => list(security_profile_search_summary()())
      }

  """
  @type search_security_profiles_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      agent_config() :: %{
        "Distributions" => list(distribution()())
      }

  """
  @type agent_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evaluation_answer_input() :: %{
        "Value" => list()
      }

  """
  @type evaluation_answer_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      event_bridge_action_definition() :: %{
        "Name" => String.t()
      }

  """
  @type event_bridge_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_default_vocabularies_request() :: %{
        optional("LanguageCode") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_default_vocabularies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_contact_references_request() :: %{
        optional("NextToken") => String.t(),
        required("ReferenceTypes") => list(list(any())())
      }

  """
  @type list_contact_references_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      meeting_features_configuration() :: %{
        "Audio" => audio_features()
      }

  """
  @type meeting_features_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_contact_attributes_request() :: %{
        required("Attributes") => map(),
        required("InitialContactId") => String.t(),
        required("InstanceId") => String.t()
      }

  """
  @type update_contact_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_contact_request() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        optional("References") => map()
      }

  """
  @type update_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_contact_flow_request() :: %{}

  """
  @type describe_contact_flow_request() :: %{}

  @typedoc """

  ## Example:

      list_queue_quick_connects_response() :: %{
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "NextToken" => String.t(),
        "QuickConnectSummaryList" => list(quick_connect_summary()())
      }

  """
  @type list_queue_quick_connects_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      searchable_contact_attributes() :: %{
        "Criteria" => list(searchable_contact_attributes_criteria()()),
        "MatchType" => list(any())
      }

  """
  @type searchable_contact_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_routing_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_routing_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_put_contact_response() :: %{
        "FailedRequestList" => list(failed_request()()),
        "SuccessfulRequestList" => list(successful_request()())
      }

  """
  @type batch_put_contact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_contact_flow_response() :: %{
        "ContactFlow" => contact_flow()
      }

  """
  @type describe_contact_flow_response() :: %{String.t() => any()}

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
        "Problems" => list(problem_detail()())
      }

  """
  @type invalid_contact_flow_module_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      contact_flow() :: %{
        "Arn" => String.t(),
        "Content" => String.t(),
        "Description" => String.t(),
        "Id" => String.t(),
        "Name" => String.t(),
        "State" => list(any()),
        "Tags" => map(),
        "Type" => list(any())
      }

  """
  @type contact_flow() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_traffic_distribution_groups_response() :: %{
        "NextToken" => String.t(),
        "TrafficDistributionGroupSummaryList" => list(traffic_distribution_group_summary()())
      }

  """
  @type list_traffic_distribution_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_contact_flows_response() :: %{
        "ContactFlowSummaryList" => list(contact_flow_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_contact_flows_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      idempotency_exception() :: %{
        "Message" => String.t()
      }

  """
  @type idempotency_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_quick_connects_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SearchCriteria") => quick_connect_search_criteria(),
        optional("SearchFilter") => quick_connect_search_filter(),
        required("InstanceId") => String.t()
      }

  """
  @type search_quick_connects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evaluation_form_section() :: %{
        "Instructions" => String.t(),
        "Items" => list(list()()),
        "RefId" => String.t(),
        "Title" => String.t(),
        "Weight" => float()
      }

  """
  @type evaluation_form_section() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_contacts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SearchCriteria") => search_criteria(),
        optional("Sort") => sort(),
        required("InstanceId") => String.t(),
        required("TimeRange") => search_contacts_time_range()
      }

  """
  @type search_contacts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_quick_connect_request() :: %{}

  """
  @type delete_quick_connect_request() :: %{}

  @typedoc """

  ## Example:

      list_integration_associations_response() :: %{
        "IntegrationAssociationSummaryList" => list(integration_association_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_integration_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      field_value_union() :: %{
        "BooleanValue" => boolean(),
        "DoubleValue" => float(),
        "EmptyValue" => empty_field_value(),
        "StringValue" => String.t()
      }

  """
  @type field_value_union() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      phone_number_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "PhoneNumber" => String.t(),
        "PhoneNumberCountryCode" => list(any()),
        "PhoneNumberType" => list(any())
      }

  """
  @type phone_number_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hierarchy_level_update() :: %{
        "Name" => String.t()
      }

  """
  @type hierarchy_level_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resume_contact_recording_request() :: %{
        required("ContactId") => String.t(),
        required("InitialContactId") => String.t(),
        required("InstanceId") => String.t()
      }

  """
  @type resume_contact_recording_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_security_key_request() :: %{}

  """
  @type disassociate_security_key_request() :: %{}

  @typedoc """

  ## Example:

      instance_summary() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Id" => String.t(),
        "IdentityManagementType" => list(any()),
        "InboundCallsEnabled" => boolean(),
        "InstanceAccessUrl" => String.t(),
        "InstanceAlias" => String.t(),
        "InstanceStatus" => list(any()),
        "OutboundCallsEnabled" => boolean(),
        "ServiceRole" => String.t()
      }

  """
  @type instance_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_instance_storage_config_request() :: %{
        required("ResourceType") => list(any())
      }

  """
  @type describe_instance_storage_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_participant_role_config_request() :: %{
        required("ChannelConfiguration") => list()
      }

  """
  @type update_participant_role_config_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_predefined_attributes_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("SearchCriteria") => predefined_attribute_search_criteria(),
        required("InstanceId") => String.t()
      }

  """
  @type search_predefined_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_instance_request() :: %{}

  """
  @type delete_instance_request() :: %{}

  @typedoc """

  ## Example:

      current_metric_data() :: %{
        "Metric" => current_metric(),
        "Value" => float()
      }

  """
  @type current_metric_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user() :: %{
        "Arn" => String.t(),
        "DirectoryUserId" => String.t(),
        "HierarchyGroupId" => String.t(),
        "Id" => String.t(),
        "IdentityInfo" => user_identity_info(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "PhoneConfig" => user_phone_config(),
        "RoutingProfileId" => String.t(),
        "SecurityProfileIds" => list(String.t()()),
        "Tags" => map(),
        "Username" => String.t()
      }

  """
  @type user() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_contact_flow_name_request() :: %{
        optional("Description") => String.t(),
        optional("Name") => String.t()
      }

  """
  @type update_contact_flow_name_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_vocabulary_request() :: %{}

  """
  @type delete_vocabulary_request() :: %{}

  @typedoc """

  ## Example:

      contact_search_summary() :: %{
        "AgentInfo" => contact_search_summary_agent_info(),
        "Arn" => String.t(),
        "Channel" => list(any()),
        "DisconnectTimestamp" => non_neg_integer(),
        "Id" => String.t(),
        "InitialContactId" => String.t(),
        "InitiationMethod" => list(any()),
        "InitiationTimestamp" => non_neg_integer(),
        "PreviousContactId" => String.t(),
        "QueueInfo" => contact_search_summary_queue_info(),
        "ScheduledTimestamp" => non_neg_integer()
      }

  """
  @type contact_search_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_contact_flow_module_response() :: %{
        "ContactFlowModule" => contact_flow_module()
      }

  """
  @type describe_contact_flow_module_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_flow_response() :: %{}

  """
  @type disassociate_flow_response() :: %{}

  @typedoc """

  ## Example:

      predefined_attribute_search_criteria() :: %{
        "AndConditions" => list(predefined_attribute_search_criteria()()),
        "OrConditions" => list(predefined_attribute_search_criteria()()),
        "StringCondition" => string_condition()
      }

  """
  @type predefined_attribute_search_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_quick_connect_response() :: %{
        "QuickConnect" => quick_connect()
      }

  """
  @type describe_quick_connect_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      predefined_attribute_summary() :: %{
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t()
      }

  """
  @type predefined_attribute_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      real_time_contact_analysis_transcript_item_redaction() :: %{
        "CharacterOffsets" => list(real_time_contact_analysis_character_interval()())
      }

  """
  @type real_time_contact_analysis_transcript_item_redaction() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_user_hierarchy_group_request() :: %{
        optional("ParentGroupId") => String.t(),
        optional("Tags") => map(),
        required("Name") => String.t()
      }

  """
  @type create_user_hierarchy_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_hours_of_operation_response() :: %{
        "HoursOfOperationArn" => String.t(),
        "HoursOfOperationId" => String.t()
      }

  """
  @type create_hours_of_operation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hours_of_operation_search_criteria() :: %{
        "AndConditions" => list(hours_of_operation_search_criteria()()),
        "OrConditions" => list(hours_of_operation_search_criteria()()),
        "StringCondition" => string_condition()
      }

  """
  @type hours_of_operation_search_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_routing_profile_response() :: %{
        "RoutingProfileArn" => String.t(),
        "RoutingProfileId" => String.t()
      }

  """
  @type create_routing_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      assign_contact_category_action_definition() :: %{}

  """
  @type assign_contact_category_action_definition() :: %{}

  @typedoc """

  ## Example:

      get_prompt_file_request() :: %{}

  """
  @type get_prompt_file_request() :: %{}

  @typedoc """

  ## Example:

      analytics_data_association_result() :: %{
        "DataSetId" => String.t(),
        "ResourceShareArn" => String.t(),
        "ResourceShareId" => String.t(),
        "TargetAccountId" => String.t()
      }

  """
  @type analytics_data_association_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_attached_file_upload_response() :: %{
        "CreatedBy" => list(),
        "CreationTime" => String.t(),
        "FileArn" => String.t(),
        "FileId" => String.t(),
        "FileStatus" => list(any()),
        "UploadUrlMetadata" => upload_url_metadata()
      }

  """
  @type start_attached_file_upload_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_view_response() :: %{}

  """
  @type delete_view_response() :: %{}

  @typedoc """

  ## Example:

      list_phone_numbers_v2_response() :: %{
        "ListPhoneNumbersSummaryList" => list(list_phone_numbers_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_phone_numbers_v2_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_user_proficiencies_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_user_proficiencies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_task_template_response() :: %{
        "Arn" => String.t(),
        "Constraints" => task_template_constraints(),
        "ContactFlowId" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Defaults" => task_template_defaults(),
        "Description" => String.t(),
        "Fields" => list(task_template_field()()),
        "Id" => String.t(),
        "InstanceId" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "Status" => list(any())
      }

  """
  @type update_task_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metric_v2() :: %{
        "MetricFilters" => list(metric_filter_v2()()),
        "Name" => String.t(),
        "Threshold" => list(threshold_v2()())
      }

  """
  @type metric_v2() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      threshold() :: %{
        "Comparison" => list(any()),
        "ThresholdValue" => float()
      }

  """
  @type threshold() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_outbound_voice_contact_request() :: %{
        optional("AnswerMachineDetectionConfig") => answer_machine_detection_config(),
        optional("Attributes") => map(),
        optional("CampaignId") => String.t(),
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("Name") => String.t(),
        optional("QueueId") => String.t(),
        optional("References") => map(),
        optional("RelatedContactId") => String.t(),
        optional("SourcePhoneNumber") => String.t(),
        optional("TrafficType") => list(any()),
        required("ContactFlowId") => String.t(),
        required("DestinationPhoneNumber") => String.t(),
        required("InstanceId") => String.t()
      }

  """
  @type start_outbound_voice_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attribute() :: %{
        "AttributeType" => list(any()),
        "Value" => String.t()
      }

  """
  @type attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_use_case_request() :: %{
        optional("Tags") => map(),
        required("UseCaseType") => list(any())
      }

  """
  @type create_use_case_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_users_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      default_vocabulary() :: %{
        "InstanceId" => String.t(),
        "LanguageCode" => list(any()),
        "VocabularyId" => String.t(),
        "VocabularyName" => String.t()
      }

  """
  @type default_vocabulary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_task_contact_response() :: %{
        "ContactId" => String.t()
      }

  """
  @type start_task_contact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      chat_event() :: %{
        "Content" => String.t(),
        "ContentType" => String.t(),
        "Type" => list(any())
      }

  """
  @type chat_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      filters() :: %{
        "Channels" => list(list(any())()),
        "Queues" => list(String.t()()),
        "RoutingProfiles" => list(String.t()()),
        "RoutingStepExpressions" => list(String.t()())
      }

  """
  @type filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_agent_status_response() :: %{
        "AgentStatusSummaryList" => list(agent_status_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_agent_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_user_routing_profile_request() :: %{
        required("RoutingProfileId") => String.t()
      }

  """
  @type update_user_routing_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      task_template_field_identifier() :: %{
        "Name" => String.t()
      }

  """
  @type task_template_field_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_queue_quick_connects_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_queue_quick_connects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "Message" => String.t()
      }

  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_queues_response() :: %{
        "NextToken" => String.t(),
        "QueueSummaryList" => list(queue_summary()())
      }

  """
  @type list_queues_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_evaluation_forms_response() :: %{
        "EvaluationFormSummaryList" => list(evaluation_form_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_evaluation_forms_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evaluation_form_single_select_question_properties() :: %{
        "Automation" => evaluation_form_single_select_question_automation(),
        "DisplayAs" => list(any()),
        "Options" => list(evaluation_form_single_select_question_option()())
      }

  """
  @type evaluation_form_single_select_question_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_traffic_distribution_request() :: %{}

  """
  @type get_traffic_distribution_request() :: %{}

  @typedoc """

  ## Example:

      complete_attached_file_upload_request() :: %{
        required("AssociatedResourceArn") => String.t()
      }

  """
  @type complete_attached_file_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attendee() :: %{
        "AttendeeId" => String.t(),
        "JoinToken" => String.t()
      }

  """
  @type attendee() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      agent_status_summary() :: %{
        "Arn" => String.t(),
        "Id" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "Type" => list(any())
      }

  """
  @type agent_status_summary() :: %{String.t() => any()}

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
        optional("NameStartsWith") => String.t(),
        optional("NextToken") => String.t(),
        optional("State") => list(any())
      }

  """
  @type search_vocabularies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      prompt_search_filter() :: %{
        "TagFilter" => control_plane_tag_filter()
      }

  """
  @type prompt_search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_queue_status_request() :: %{
        required("Status") => list(any())
      }

  """
  @type update_queue_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_vocabulary_response() :: %{
        "Vocabulary" => vocabulary()
      }

  """
  @type describe_vocabulary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_flow_request() :: %{
        required("FlowId") => String.t(),
        required("ResourceId") => String.t(),
        required("ResourceType") => list(any())
      }

  """
  @type associate_flow_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metric_data_v2() :: %{
        "Metric" => metric_v2(),
        "Value" => float()
      }

  """
  @type metric_data_v2() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_prompt_request() :: %{}

  """
  @type describe_prompt_request() :: %{}

  @typedoc """

  ## Example:

      list_phone_numbers_response() :: %{
        "NextToken" => String.t(),
        "PhoneNumberSummaryList" => list(phone_number_summary()())
      }

  """
  @type list_phone_numbers_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      real_time_contact_analysis_attachment() :: %{
        "AttachmentId" => String.t(),
        "AttachmentName" => String.t(),
        "ContentType" => String.t(),
        "Status" => list(any())
      }

  """
  @type real_time_contact_analysis_attachment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      contact_search_summary_queue_info() :: %{
        "EnqueueTimestamp" => non_neg_integer(),
        "Id" => String.t()
      }

  """
  @type contact_search_summary_queue_info() :: %{String.t() => any()}

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
        "EvaluationArn" => String.t(),
        "EvaluationId" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Metadata" => evaluation_metadata(),
        "Notes" => map(),
        "Scores" => map(),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type evaluation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_vocabulary_response() :: %{
        "State" => list(any()),
        "VocabularyArn" => String.t(),
        "VocabularyId" => String.t()
      }

  """
  @type delete_vocabulary_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_phone_number_metadata_request() :: %{
        optional("ClientToken") => String.t(),
        optional("PhoneNumberDescription") => String.t()
      }

  """
  @type update_phone_number_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      sign_in_distribution() :: %{
        "Enabled" => boolean(),
        "Region" => String.t()
      }

  """
  @type sign_in_distribution() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      media_concurrency() :: %{
        "Channel" => list(any()),
        "Concurrency" => integer(),
        "CrossChannelBehavior" => cross_channel_behavior()
      }

  """
  @type media_concurrency() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      control_plane_tag_filter() :: %{
        "AndConditions" => list(tag_condition()()),
        "OrConditions" => list(list(tag_condition()())()),
        "TagCondition" => tag_condition()
      }

  """
  @type control_plane_tag_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evaluation_metadata() :: %{
        "ContactAgentId" => String.t(),
        "ContactId" => String.t(),
        "EvaluatorArn" => String.t(),
        "Score" => evaluation_score()
      }

  """
  @type evaluation_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evaluation_form_scoring_strategy() :: %{
        "Mode" => list(any()),
        "Status" => list(any())
      }

  """
  @type evaluation_form_scoring_strategy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      quick_connect() :: %{
        "Description" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "QuickConnectARN" => String.t(),
        "QuickConnectConfig" => quick_connect_config(),
        "QuickConnectId" => String.t(),
        "Tags" => map()
      }

  """
  @type quick_connect() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pause_contact_response() :: %{}

  """
  @type pause_contact_response() :: %{}

  @typedoc """

  ## Example:

      associate_security_key_response() :: %{
        "AssociationId" => String.t()
      }

  """
  @type associate_security_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hours_of_operation_config() :: %{
        "Day" => list(any()),
        "EndTime" => hours_of_operation_time_slice(),
        "StartTime" => hours_of_operation_time_slice()
      }

  """
  @type hours_of_operation_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_attached_file_upload_request() :: %{
        optional("ClientToken") => String.t(),
        optional("CreatedBy") => list(),
        optional("Tags") => map(),
        optional("UrlExpiryInSeconds") => integer(),
        required("AssociatedResourceArn") => String.t(),
        required("FileName") => String.t(),
        required("FileSizeInBytes") => float(),
        required("FileUseCaseType") => list(any())
      }

  """
  @type start_attached_file_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      activate_evaluation_form_response() :: %{
        "EvaluationFormArn" => String.t(),
        "EvaluationFormId" => String.t(),
        "EvaluationFormVersion" => integer()
      }

  """
  @type activate_evaluation_form_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_approved_origins_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_approved_origins_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      historical_metric() :: %{
        "Name" => list(any()),
        "Statistic" => list(any()),
        "Threshold" => threshold(),
        "Unit" => list(any())
      }

  """
  @type historical_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      failed_request() :: %{
        "FailureReasonCode" => list(any()),
        "FailureReasonMessage" => String.t(),
        "RequestIdentifier" => String.t()
      }

  """
  @type failed_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_associate_analytics_data_set_request() :: %{
        optional("TargetAccountId") => String.t(),
        required("DataSetIds") => list(String.t()())
      }

  """
  @type batch_associate_analytics_data_set_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_queue_quick_connects_request() :: %{
        required("QuickConnectIds") => list(String.t()())
      }

  """
  @type associate_queue_quick_connects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_search_condition() :: %{
        "tagKey" => String.t(),
        "tagKeyComparisonType" => list(any()),
        "tagValue" => String.t(),
        "tagValueComparisonType" => list(any())
      }

  """
  @type tag_search_condition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      task_template_metadata() :: %{
        "Arn" => String.t(),
        "CreatedTime" => non_neg_integer(),
        "Description" => String.t(),
        "Id" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "Status" => list(any())
      }

  """
  @type task_template_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      attachment_reference() :: %{
        "Name" => String.t(),
        "Status" => list(any()),
        "Value" => String.t()
      }

  """
  @type attachment_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      url_reference() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }

  """
  @type url_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      string_reference() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }

  """
  @type string_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_predefined_attributes_response() :: %{
        "NextToken" => String.t(),
        "PredefinedAttributeSummaryList" => list(predefined_attribute_summary()())
      }

  """
  @type list_predefined_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      routing_profile() :: %{
        "AgentAvailabilityTimer" => list(any()),
        "DefaultOutboundQueueId" => String.t(),
        "Description" => String.t(),
        "InstanceId" => String.t(),
        "IsDefault" => boolean(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "MediaConcurrencies" => list(media_concurrency()()),
        "Name" => String.t(),
        "NumberOfAssociatedQueues" => float(),
        "NumberOfAssociatedUsers" => float(),
        "RoutingProfileArn" => String.t(),
        "RoutingProfileId" => String.t(),
        "Tags" => map()
      }

  """
  @type routing_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_routing_profile_response() :: %{
        "RoutingProfile" => routing_profile()
      }

  """
  @type describe_routing_profile_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rule_trigger_event_source() :: %{
        "EventSourceName" => list(any()),
        "IntegrationAssociationId" => String.t()
      }

  """
  @type rule_trigger_event_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_routing_profile_request() :: %{
        optional("AgentAvailabilityTimer") => list(any()),
        optional("QueueConfigs") => list(routing_profile_queue_config()()),
        optional("Tags") => map(),
        required("DefaultOutboundQueueId") => String.t(),
        required("Description") => String.t(),
        required("MediaConcurrencies") => list(media_concurrency()()),
        required("Name") => String.t()
      }

  """
  @type create_routing_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_chat_contact_request() :: %{
        optional("Attributes") => map(),
        optional("ChatDurationInMinutes") => integer(),
        optional("ClientToken") => String.t(),
        optional("InitialMessage") => chat_message(),
        optional("PersistentChat") => persistent_chat(),
        optional("RelatedContactId") => String.t(),
        optional("SegmentAttributes") => map(),
        optional("SupportedMessagingContentTypes") => list(String.t()()),
        required("ContactFlowId") => String.t(),
        required("InstanceId") => String.t(),
        required("ParticipantDetails") => participant_details()
      }

  """
  @type start_chat_contact_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_chat_contact_response() :: %{
        "ContactId" => String.t(),
        "ContinuedFromContactId" => String.t(),
        "ParticipantId" => String.t(),
        "ParticipantToken" => String.t()
      }

  """
  @type start_chat_contact_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_phone_number_request() :: %{
        optional("ClientToken") => String.t(),
        optional("InstanceId") => String.t(),
        optional("TargetArn") => String.t()
      }

  """
  @type update_phone_number_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_contact_schedule_request() :: %{
        required("ContactId") => String.t(),
        required("InstanceId") => String.t(),
        required("ScheduledTime") => non_neg_integer()
      }

  """
  @type update_contact_schedule_request() :: %{String.t() => any()}

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
  @type hours_of_operation_time_slice() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      prompt_search_criteria() :: %{
        "AndConditions" => list(prompt_search_criteria()()),
        "OrConditions" => list(prompt_search_criteria()()),
        "StringCondition" => string_condition()
      }

  """
  @type prompt_search_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_criteria() :: %{
        "AgentHierarchyGroups" => agent_hierarchy_groups(),
        "AgentIds" => list(String.t()()),
        "Channels" => list(list(any())()),
        "ContactAnalysis" => contact_analysis(),
        "InitiationMethods" => list(list(any())()),
        "QueueIds" => list(String.t()()),
        "SearchableContactAttributes" => searchable_contact_attributes()
      }

  """
  @type search_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_contact_flow_module_metadata_response() :: %{}

  """
  @type update_contact_flow_module_metadata_response() :: %{}

  @typedoc """

  ## Example:

      list_security_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_security_profiles_request() :: %{String.t() => any()}

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
        "Prefix" => String.t(),
        "RetentionPeriodHours" => integer()
      }

  """
  @type kinesis_video_stream_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_contact_evaluation_request() :: %{
        optional("ClientToken") => String.t(),
        required("ContactId") => String.t(),
        required("EvaluationFormId") => String.t()
      }

  """
  @type start_contact_evaluation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      claimed_phone_number_summary() :: %{
        "InstanceId" => String.t(),
        "PhoneNumber" => String.t(),
        "PhoneNumberArn" => String.t(),
        "PhoneNumberCountryCode" => list(any()),
        "PhoneNumberDescription" => String.t(),
        "PhoneNumberId" => String.t(),
        "PhoneNumberStatus" => phone_number_status(),
        "PhoneNumberType" => list(any()),
        "SourcePhoneNumberArn" => String.t(),
        "Tags" => map(),
        "TargetArn" => String.t()
      }

  """
  @type claimed_phone_number_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_quick_connects_response() :: %{
        "NextToken" => String.t(),
        "QuickConnectSummaryList" => list(quick_connect_summary()())
      }

  """
  @type list_quick_connects_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_task_template_response() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }

  """
  @type create_task_template_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evaluation_summary() :: %{
        "CreatedTime" => non_neg_integer(),
        "EvaluationArn" => String.t(),
        "EvaluationFormId" => String.t(),
        "EvaluationFormTitle" => String.t(),
        "EvaluationId" => String.t(),
        "EvaluatorArn" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Score" => evaluation_score(),
        "Status" => list(any())
      }

  """
  @type evaluation_summary() :: %{String.t() => any()}

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
  @type historical_metric_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_flow_response() :: %{}

  """
  @type associate_flow_response() :: %{}

  @typedoc """

  ## Example:

      list_instance_storage_configs_response() :: %{
        "NextToken" => String.t(),
        "StorageConfigs" => list(instance_storage_config()())
      }

  """
  @type list_instance_storage_configs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_ready_exception() :: %{
        "Message" => String.t()
      }

  """
  @type resource_not_ready_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evaluation_form_single_select_question_automation() :: %{
        "DefaultOptionRefId" => String.t(),
        "Options" => list(list()())
      }

  """
  @type evaluation_form_single_select_question_automation() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_queues_response() :: %{
        "ApproximateTotalCount" => float(),
        "NextToken" => String.t(),
        "Queues" => list(queue()())
      }

  """
  @type search_queues_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      routing_profile_reference() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }

  """
  @type routing_profile_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      real_time_contact_analysis_issue_detected() :: %{
        "TranscriptItems" => list(real_time_contact_analysis_transcript_item_with_content()())
      }

  """
  @type real_time_contact_analysis_issue_detected() :: %{String.t() => any()}

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
        "UserArn" => String.t(),
        "UserId" => String.t()
      }

  """
  @type create_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_instance_storage_configs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ResourceType") => list(any())
      }

  """
  @type list_instance_storage_configs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_views_response() :: %{
        "NextToken" => String.t(),
        "ViewsSummaryList" => list(view_summary()())
      }

  """
  @type list_views_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      duplicate_resource_exception() :: %{
        "Message" => String.t()
      }

  """
  @type duplicate_resource_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_hours_of_operation_request() :: %{}

  """
  @type delete_hours_of_operation_request() :: %{}

  @typedoc """

  ## Example:

      maximum_result_returned_exception() :: %{
        "Message" => String.t()
      }

  """
  @type maximum_result_returned_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_persistent_contact_association_request() :: %{
        optional("ClientToken") => String.t(),
        required("RehydrationType") => list(any()),
        required("SourceContactId") => String.t()
      }

  """
  @type create_persistent_contact_association_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_analytics_data_associations_response() :: %{
        "NextToken" => String.t(),
        "Results" => list(analytics_data_association_result()())
      }

  """
  @type list_analytics_data_associations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_traffic_distribution_group_response() :: %{}

  """
  @type delete_traffic_distribution_group_response() :: %{}

  @typedoc """

  ## Example:

      resource_conflict_exception() :: %{
        "Message" => String.t()
      }

  """
  @type resource_conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_user_hierarchy_groups_response() :: %{
        "NextToken" => String.t(),
        "UserHierarchyGroupSummaryList" => list(hierarchy_group_summary()())
      }

  """
  @type list_user_hierarchy_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_web_r_t_c_contact_request() :: %{
        optional("AllowedCapabilities") => allowed_capabilities(),
        optional("Attributes") => map(),
        optional("ClientToken") => String.t(),
        optional("Description") => String.t(),
        optional("References") => map(),
        optional("RelatedContactId") => String.t(),
        required("ContactFlowId") => String.t(),
        required("InstanceId") => String.t(),
        required("ParticipantDetails") => participant_details()
      }

  """
  @type start_web_r_t_c_contact_request() :: %{String.t() => any()}

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
  @type hierarchy_structure_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_default_vocabularies_response() :: %{
        "DefaultVocabularyList" => list(default_vocabulary()()),
        "NextToken" => String.t()
      }

  """
  @type list_default_vocabularies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_search_filter() :: %{
        "TagFilter" => control_plane_tag_filter(),
        "UserAttributeFilter" => control_plane_user_attribute_filter()
      }

  """
  @type user_search_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      prompt() :: %{
        "Description" => String.t(),
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "PromptARN" => String.t(),
        "PromptId" => String.t(),
        "Tags" => map()
      }

  """
  @type prompt() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      media_placement() :: %{
        "AudioFallbackUrl" => String.t(),
        "AudioHostUrl" => String.t(),
        "EventIngestionUrl" => String.t(),
        "SignalingUrl" => String.t(),
        "TurnControlUrl" => String.t()
      }

  """
  @type media_placement() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_realtime_contact_analysis_segments_v2_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("OutputType") => list(any()),
        required("SegmentTypes") => list(list(any())())
      }

  """
  @type list_realtime_contact_analysis_segments_v2_request() :: %{String.t() => any()}

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
        "MetricResults" => list(current_metric_result()()),
        "NextToken" => String.t()
      }

  """
  @type get_current_metric_data_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      search_available_phone_numbers_request() :: %{
        optional("InstanceId") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("PhoneNumberPrefix") => String.t(),
        optional("TargetArn") => String.t(),
        required("PhoneNumberCountryCode") => list(any()),
        required("PhoneNumberType") => list(any())
      }

  """
  @type search_available_phone_numbers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_rule_response() :: %{
        "Rule" => rule()
      }

  """
  @type describe_rule_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      participant_details() :: %{
        "DisplayName" => String.t()
      }

  """
  @type participant_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      date_reference() :: %{
        "Name" => String.t(),
        "Value" => String.t()
      }

  """
  @type date_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_queue_response() :: %{
        "QueueArn" => String.t(),
        "QueueId" => String.t()
      }

  """
  @type create_queue_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      predefined_attribute() :: %{
        "LastModifiedRegion" => String.t(),
        "LastModifiedTime" => non_neg_integer(),
        "Name" => String.t(),
        "Values" => list()
      }

  """
  @type predefined_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_user_hierarchy_group_name_request() :: %{
        required("Name") => String.t()
      }

  """
  @type update_user_hierarchy_group_name_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      real_time_contact_analysis_segment_attachments() :: %{
        "Attachments" => list(real_time_contact_analysis_attachment()()),
        "DisplayName" => String.t(),
        "Id" => String.t(),
        "ParticipantId" => String.t(),
        "ParticipantRole" => list(any()),
        "Time" => list()
      }

  """
  @type real_time_contact_analysis_segment_attachments() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      real_time_contact_analysis_segment_transcript() :: %{
        "Content" => String.t(),
        "ContentType" => String.t(),
        "DisplayName" => String.t(),
        "Id" => String.t(),
        "ParticipantId" => String.t(),
        "ParticipantRole" => list(any()),
        "Redaction" => real_time_contact_analysis_transcript_item_redaction(),
        "Sentiment" => list(any()),
        "Time" => list()
      }

  """
  @type real_time_contact_analysis_segment_transcript() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      transcript_criteria() :: %{
        "MatchType" => list(any()),
        "ParticipantRole" => list(any()),
        "SearchText" => list(String.t()())
      }

  """
  @type transcript_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_contact_flow_response() :: %{
        "ContactFlowArn" => String.t(),
        "ContactFlowId" => String.t()
      }

  """
  @type create_contact_flow_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_queue_request() :: %{}

  """
  @type describe_queue_request() :: %{}

  @typedoc """

  ## Example:

      batch_disassociate_analytics_data_set_response() :: %{
        "Deleted" => list(String.t()()),
        "Errors" => list(error_result()())
      }

  """
  @type batch_disassociate_analytics_data_set_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      submit_auto_evaluation_action_definition() :: %{
        "EvaluationFormId" => String.t()
      }

  """
  @type submit_auto_evaluation_action_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_contact_flow_module_content_response() :: %{}

  """
  @type update_contact_flow_module_content_response() :: %{}

  @typedoc """

  ## Example:

      batch_get_flow_association_response() :: %{
        "FlowAssociationSummaryList" => list(flow_association_summary()())
      }

  """
  @type batch_get_flow_association_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_tags_search_criteria() :: %{
        "TagSearchCondition" => tag_search_condition()
      }

  """
  @type resource_tags_search_criteria() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      suspend_contact_recording_request() :: %{
        required("ContactId") => String.t(),
        required("InitialContactId") => String.t(),
        required("InstanceId") => String.t()
      }

  """
  @type suspend_contact_recording_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_user_request() :: %{
        optional("DirectoryUserId") => String.t(),
        optional("HierarchyGroupId") => String.t(),
        optional("IdentityInfo") => user_identity_info(),
        optional("Password") => String.t(),
        optional("Tags") => map(),
        required("PhoneConfig") => user_phone_config(),
        required("RoutingProfileId") => String.t(),
        required("SecurityProfileIds") => list(String.t()()),
        required("Username") => String.t()
      }

  """
  @type create_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      property_validation_exception_property() :: %{
        "Message" => String.t(),
        "PropertyPath" => String.t(),
        "Reason" => list(any())
      }

  """
  @type property_validation_exception_property() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      evaluation_form_content() :: %{
        "Description" => String.t(),
        "EvaluationFormArn" => String.t(),
        "EvaluationFormId" => String.t(),
        "EvaluationFormVersion" => integer(),
        "Items" => list(list()()),
        "ScoringStrategy" => evaluation_form_scoring_strategy(),
        "Title" => String.t()
      }

  """
  @type evaluation_form_content() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dismiss_user_contact_response() :: %{}

  """
  @type dismiss_user_contact_response() :: %{}

  @typedoc """

  ## Example:

      update_contact_flow_module_content_request() :: %{
        required("Content") => String.t()
      }

  """
  @type update_contact_flow_module_content_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      instance_storage_config() :: %{
        "AssociationId" => String.t(),
        "KinesisFirehoseConfig" => kinesis_firehose_config(),
        "KinesisStreamConfig" => kinesis_stream_config(),
        "KinesisVideoStreamConfig" => kinesis_video_stream_config(),
        "S3Config" => s3_config(),
        "StorageType" => list(any())
      }

  """
  @type instance_storage_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_routing_profile_queues_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_routing_profile_queues_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      agent_status_reference() :: %{
        "StatusArn" => String.t(),
        "StatusName" => String.t(),
        "StatusStartTimestamp" => non_neg_integer()
      }

  """
  @type agent_status_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      allowed_capabilities() :: %{
        "Agent" => participant_capabilities(),
        "Customer" => participant_capabilities()
      }

  """
  @type allowed_capabilities() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_contact_attributes_request() :: %{}

  """
  @type get_contact_attributes_request() :: %{}

  @typedoc """

  ## Example:

      batch_associate_analytics_data_set_response() :: %{
        "Created" => list(analytics_data_association_result()()),
        "Errors" => list(error_result()())
      }

  """
  @type batch_associate_analytics_data_set_response() :: %{String.t() => any()}

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

  @type list_approved_origins_errors() ::
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

  @type search_available_phone_numbers_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | internal_service_exception()

  @type search_contacts_errors() ::
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

  @type start_outbound_voice_contact_errors() ::
          limit_exceeded_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | destination_not_allowed_exception()
          | internal_service_exception()
          | outbound_contact_not_permitted_exception()

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

  @type update_contact_errors() ::
          throttling_exception()
          | invalid_parameter_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
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
          String.t(),
          String.t(),
          activate_evaluation_form_request(),
          list()
        ) ::
          {:ok, activate_evaluation_form_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  This API is in preview release for Amazon Connect and is subject to change.

  Associates the specified dataset for a Amazon Connect instance with the target
  account.
  You can associate only one dataset in a single call.
  """
  @spec associate_analytics_data_set(
          map(),
          String.t(),
          associate_analytics_data_set_request(),
          list()
        ) ::
          {:ok, associate_analytics_data_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_analytics_data_set_errors()}
  def associate_analytics_data_set(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/analytics-data/instance/#{AWS.Util.encode_uri(instance_id)}/association"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Associates an approved origin to an Amazon Connect instance.
  """
  @spec associate_approved_origin(map(), String.t(), associate_approved_origin_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_approved_origin_errors()}
  def associate_approved_origin(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/approved-origin"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Allows the specified Amazon Connect instance to access the specified Amazon Lex
  or Amazon Lex V2 bot.
  """
  @spec associate_bot(map(), String.t(), associate_bot_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_bot_errors()}
  def associate_bot(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/bot"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Associates an existing vocabulary as the default.

  Contact Lens for Amazon Connect uses the vocabulary in post-call
  and real-time analysis sessions for the given language.
  """
  @spec associate_default_vocabulary(
          map(),
          String.t(),
          String.t(),
          associate_default_vocabulary_request(),
          list()
        ) ::
          {:ok, associate_default_vocabulary_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Associates a connect resource to a flow.
  """
  @spec associate_flow(map(), String.t(), associate_flow_request(), list()) ::
          {:ok, associate_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_flow_errors()}
  def associate_flow(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/flow-associations/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
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
          String.t(),
          associate_instance_storage_config_request(),
          list()
        ) ::
          {:ok, associate_instance_storage_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_instance_storage_config_errors()}
  def associate_instance_storage_config(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/storage-config"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Allows the specified Amazon Connect instance to access the specified Lambda
  function.
  """
  @spec associate_lambda_function(map(), String.t(), associate_lambda_function_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_lambda_function_errors()}
  def associate_lambda_function(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/lambda-function"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Allows the specified Amazon Connect instance to access the specified Amazon Lex
  V1 bot. This API only supports the association of Amazon Lex V1 bots.
  """
  @spec associate_lex_bot(map(), String.t(), associate_lex_bot_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_lex_bot_errors()}
  def associate_lex_bot(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/lex-bot"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
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
          String.t(),
          associate_phone_number_contact_flow_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_phone_number_contact_flow_errors()}
  def associate_phone_number_contact_flow(
        %Client{} = client,
        phone_number_id,
        input,
        options \\ []
      ) do
    url_path = "/phone-number/#{AWS.Util.encode_uri(phone_number_id)}/contact-flow"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Associates a set of quick connects with a queue.
  """
  @spec associate_queue_quick_connects(
          map(),
          String.t(),
          String.t(),
          associate_queue_quick_connects_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  Associates a set of queues with a routing profile.
  """
  @spec associate_routing_profile_queues(
          map(),
          String.t(),
          String.t(),
          associate_routing_profile_queues_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  This API is in preview release for Amazon Connect and is subject to change.

  Associates a security key to the instance.
  """
  @spec associate_security_key(map(), String.t(), associate_security_key_request(), list()) ::
          {:ok, associate_security_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_security_key_errors()}
  def associate_security_key(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/security-key"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Associates an agent with a traffic distribution group.
  """
  @spec associate_traffic_distribution_group_user(
          map(),
          String.t(),
          associate_traffic_distribution_group_user_request(),
          list()
        ) ::
          {:ok, associate_traffic_distribution_group_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  >Associates a set of proficiencies with a user.
  """
  @spec associate_user_proficiencies(
          map(),
          String.t(),
          String.t(),
          associate_user_proficiencies_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_user_proficiencies_errors()}
  def associate_user_proficiencies(%Client{} = client, instance_id, user_id, input, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/associate-proficiencies"

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
  This API is in preview release for Amazon Connect and is subject to change.

  Associates a list of analytics datasets for a given Amazon Connect instance to a
  target
  account. You can associate multiple datasets in a single call.
  """
  @spec batch_associate_analytics_data_set(
          map(),
          String.t(),
          batch_associate_analytics_data_set_request(),
          list()
        ) ::
          {:ok, batch_associate_analytics_data_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_associate_analytics_data_set_errors()}
  def batch_associate_analytics_data_set(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/analytics-data/instance/#{AWS.Util.encode_uri(instance_id)}/associations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Removes a list of analytics datasets associated with a given Amazon Connect
  instance.
  You can disassociate multiple datasets in a single call.
  """
  @spec batch_disassociate_analytics_data_set(
          map(),
          String.t(),
          batch_disassociate_analytics_data_set_request(),
          list()
        ) ::
          {:ok, batch_disassociate_analytics_data_set_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_disassociate_analytics_data_set_errors()}
  def batch_disassociate_analytics_data_set(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/analytics-data/instance/#{AWS.Util.encode_uri(instance_id)}/associations"
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
  Allows you to retrieve metadata about multiple attached files on an associated
  resource.

  Each attached file provided in the input list must be associated with the input
  AssociatedResourceArn.
  """
  @spec batch_get_attached_file_metadata(
          map(),
          String.t(),
          batch_get_attached_file_metadata_request(),
          list()
        ) ::
          {:ok, batch_get_attached_file_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_attached_file_metadata_errors()}
  def batch_get_attached_file_metadata(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/attached-files/#{AWS.Util.encode_uri(instance_id)}"
    headers = []

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
      headers,
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
          String.t(),
          batch_get_flow_association_request(),
          list()
        ) ::
          {:ok, batch_get_flow_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_get_flow_association_errors()}
  def batch_get_flow_association(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/flow-associations-batch/#{AWS.Util.encode_uri(instance_id)}"
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
  @spec batch_put_contact(map(), String.t(), batch_put_contact_request(), list()) ::
          {:ok, batch_put_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_put_contact_errors()}
  def batch_put_contact(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/contact/batch/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
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

  If you plan to claim and release numbers frequently during a 30 day period,
  contact us for a service quota exception. Otherwise, it is possible you will be
  blocked from
  claiming and releasing any more numbers until 30 days past the oldest number
  released has expired.

  By default you can claim and release up to 200% of your maximum number of active
  phone numbers during any 30 day period. If you claim and release phone numbers
  using
  the UI or API during a rolling 30 day cycle that exceeds 200% of your phone
  number
  service level quota, you will be blocked from claiming any more numbers until 30
  days past the oldest number released has expired.

  For example, if you already have 99 claimed numbers and a service level quota of
  99 phone numbers, and in any 30
  day period you release 99, claim 99, and then release 99, you will have exceeded
  the
  200% limit. At that point you are blocked from claiming any more numbers until
  you
  open an Amazon Web Services support ticket.
  """
  @spec claim_phone_number(map(), claim_phone_number_request(), list()) ::
          {:ok, claim_phone_number_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, claim_phone_number_errors()}
  def claim_phone_number(%Client{} = client, input, options \\ []) do
    url_path = "/phone-number/claim"
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
  Allows you to confirm that the attached file has been uploaded using the
  pre-signed URL
  provided in the StartAttachedFileUpload API.
  """
  @spec complete_attached_file_upload(
          map(),
          String.t(),
          String.t(),
          complete_attached_file_upload_request(),
          list()
        ) ::
          {:ok, complete_attached_file_upload_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Creates an agent status for the specified Amazon Connect instance.
  """
  @spec create_agent_status(map(), String.t(), create_agent_status_request(), list()) ::
          {:ok, create_agent_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_agent_status_errors()}
  def create_agent_status(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/agent-status/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a flow for the specified Amazon Connect instance.

  You can also create and update flows using the [Amazon Connect Flow
  language](https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html).
  """
  @spec create_contact_flow(map(), String.t(), create_contact_flow_request(), list()) ::
          {:ok, create_contact_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_contact_flow_errors()}
  def create_contact_flow(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/contact-flows/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a flow module for the specified Amazon Connect instance.
  """
  @spec create_contact_flow_module(
          map(),
          String.t(),
          create_contact_flow_module_request(),
          list()
        ) ::
          {:ok, create_contact_flow_module_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_contact_flow_module_errors()}
  def create_contact_flow_module(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/contact-flow-modules/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
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
  @spec create_evaluation_form(map(), String.t(), create_evaluation_form_request(), list()) ::
          {:ok, create_evaluation_form_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_evaluation_form_errors()}
  def create_evaluation_form(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/evaluation-forms/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Creates hours of operation.
  """
  @spec create_hours_of_operation(map(), String.t(), create_hours_of_operation_request(), list()) ::
          {:ok, create_hours_of_operation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_hours_of_operation_errors()}
  def create_hours_of_operation(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/hours-of-operations/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Initiates an Amazon Connect instance with all the supported channels enabled. It
  does
  not attach any storage, such as Amazon Simple Storage Service (Amazon S3) or
  Amazon Kinesis. It
  also does not allow for any configurations on features, such as Contact Lens for
  Amazon Connect.

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
          | {:error, create_instance_errors()}
  def create_instance(%Client{} = client, input, options \\ []) do
    url_path = "/instance"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates an Amazon Web Services resource association with an Amazon Connect
  instance.
  """
  @spec create_integration_association(
          map(),
          String.t(),
          create_integration_association_request(),
          list()
        ) ::
          {:ok, create_integration_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_integration_association_errors()}
  def create_integration_association(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/integration-associations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Adds a new participant into an on-going chat contact.

  For more information, see [Customize chat flow experiences by integrating custom
  participants](https://docs.aws.amazon.com/connect/latest/adminguide/chat-customize-flow.html).
  """
  @spec create_participant(map(), create_participant_request(), list()) ::
          {:ok, create_participant_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_participant_errors()}
  def create_participant(%Client{} = client, input, options \\ []) do
    url_path = "/contact/create-participant"
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
  Enables rehydration of chats for the lifespan of a contact.

  For more information about chat
  rehydration, see [Enable persistent chat](https://docs.aws.amazon.com/connect/latest/adminguide/chat-persistence.html)
  in the
  *Amazon Connect Administrator Guide*.
  """
  @spec create_persistent_contact_association(
          map(),
          String.t(),
          String.t(),
          create_persistent_contact_association_request(),
          list()
        ) ::
          {:ok, create_persistent_contact_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Creates a new predefined attribute for the specified Amazon Connect instance.
  """
  @spec create_predefined_attribute(
          map(),
          String.t(),
          create_predefined_attribute_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_predefined_attribute_errors()}
  def create_predefined_attribute(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/predefined-attributes/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a prompt.

  For more information about prompts, such as supported file types and
  maximum length, see [Create prompts](https://docs.aws.amazon.com/connect/latest/adminguide/prompts.html) in
  the *Amazon Connect Administrator's
  Guide*.
  """
  @spec create_prompt(map(), String.t(), create_prompt_request(), list()) ::
          {:ok, create_prompt_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_prompt_errors()}
  def create_prompt(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/prompts/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

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
  @spec create_queue(map(), String.t(), create_queue_request(), list()) ::
          {:ok, create_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_queue_errors()}
  def create_queue(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/queues/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a quick connect for the specified Amazon Connect instance.
  """
  @spec create_quick_connect(map(), String.t(), create_quick_connect_request(), list()) ::
          {:ok, create_quick_connect_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_quick_connect_errors()}
  def create_quick_connect(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/quick-connects/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a new routing profile.
  """
  @spec create_routing_profile(map(), String.t(), create_routing_profile_request(), list()) ::
          {:ok, create_routing_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_routing_profile_errors()}
  def create_routing_profile(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/routing-profiles/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a rule for the specified Amazon Connect instance.

  Use the [Rules Function language](https://docs.aws.amazon.com/connect/latest/APIReference/connect-rules-language.html)
  to
  code conditions for the rule.
  """
  @spec create_rule(map(), String.t(), create_rule_request(), list()) ::
          {:ok, create_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_rule_errors()}
  def create_rule(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(instance_id)}"
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
  Creates a security profile.
  """
  @spec create_security_profile(map(), String.t(), create_security_profile_request(), list()) ::
          {:ok, create_security_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_security_profile_errors()}
  def create_security_profile(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/security-profiles/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a new task template in the specified Amazon Connect instance.
  """
  @spec create_task_template(map(), String.t(), create_task_template_request(), list()) ::
          {:ok, create_task_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_task_template_errors()}
  def create_task_template(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/task/template"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
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
          | {:error, create_traffic_distribution_group_errors()}
  def create_traffic_distribution_group(%Client{} = client, input, options \\ []) do
    url_path = "/traffic-distribution-group"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a use case for an integration association.
  """
  @spec create_use_case(map(), String.t(), String.t(), create_use_case_request(), list()) ::
          {:ok, create_use_case_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a user account for the specified Amazon Connect instance.

  Certain
  [UserIdentityInfo](https://docs.aws.amazon.com/connect/latest/APIReference/API_UserIdentityInfo.html) parameters
  are required in some situations. For example, `Email` is required if you are
  using
  SAML for identity management. `FirstName` and `LastName` are required if
  you are using Amazon Connect or SAML for identity management.

  For information about how to create users using the Amazon Connect admin
  website, see [Add
  Users](https://docs.aws.amazon.com/connect/latest/adminguide/user-management.html)
  in the *Amazon Connect Administrator Guide*.
  """
  @spec create_user(map(), String.t(), create_user_request(), list()) ::
          {:ok, create_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_user_errors()}
  def create_user(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/users/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a new user hierarchy group.
  """
  @spec create_user_hierarchy_group(
          map(),
          String.t(),
          create_user_hierarchy_group_request(),
          list()
        ) ::
          {:ok, create_user_hierarchy_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_user_hierarchy_group_errors()}
  def create_user_hierarchy_group(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/user-hierarchy-groups/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
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
  @spec create_view(map(), String.t(), create_view_request(), list()) ::
          {:ok, create_view_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_view_errors()}
  def create_view(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/views/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
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
  @spec create_view_version(map(), String.t(), String.t(), create_view_version_request(), list()) ::
          {:ok, create_view_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_view_version_errors()}
  def create_view_version(%Client{} = client, instance_id, view_id, input, options \\ []) do
    url_path =
      "/views/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(view_id)}/versions"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a custom vocabulary associated with your Amazon Connect instance.

  You can set a
  custom vocabulary to be your default vocabulary for a given language. Contact
  Lens for Amazon Connect uses the default
  vocabulary in post-call and real-time contact analysis sessions for that
  language.
  """
  @spec create_vocabulary(map(), String.t(), create_vocabulary_request(), list()) ::
          {:ok, create_vocabulary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_vocabulary_errors()}
  def create_vocabulary(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/vocabulary/#{AWS.Util.encode_uri(instance_id)}"
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
  Deactivates an evaluation form in the specified Amazon Connect instance.

  After a form is deactivated,
  it is no longer available for users to start new evaluations based on the form.
  """
  @spec deactivate_evaluation_form(
          map(),
          String.t(),
          String.t(),
          deactivate_evaluation_form_request(),
          list()
        ) ::
          {:ok, deactivate_evaluation_form_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Deletes an attached file along with the underlying S3 Object.

  The attached file is **permanently deleted** if S3 bucket
  versioning is not enabled.
  """
  @spec delete_attached_file(
          map(),
          String.t(),
          String.t(),
          delete_attached_file_request(),
          list()
        ) ::
          {:ok, delete_attached_file_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_attached_file_errors()}
  def delete_attached_file(%Client{} = client, file_id, instance_id, input, options \\ []) do
    url_path =
      "/attached-files/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(file_id)}"

    headers = []

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
      headers,
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
          String.t(),
          String.t(),
          delete_contact_evaluation_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  Deletes a flow for the specified Amazon Connect instance.
  """
  @spec delete_contact_flow(map(), String.t(), String.t(), delete_contact_flow_request(), list()) ::
          {:ok, delete_contact_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_contact_flow_errors()}
  def delete_contact_flow(%Client{} = client, contact_flow_id, instance_id, input, options \\ []) do
    url_path =
      "/contact-flows/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_flow_id)}"

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
  Deletes the specified flow module.
  """
  @spec delete_contact_flow_module(
          map(),
          String.t(),
          String.t(),
          delete_contact_flow_module_request(),
          list()
        ) ::
          {:ok, delete_contact_flow_module_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t(),
          delete_evaluation_form_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Deletes an hours of operation.
  """
  @spec delete_hours_of_operation(
          map(),
          String.t(),
          String.t(),
          delete_hours_of_operation_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  This API is in preview release for Amazon Connect and is subject to change.

  Deletes the Amazon Connect instance.

  Amazon Connect enforces a limit on the total number of instances that you can
  create or delete in 30 days.
  If you exceed this limit, you will get an error message indicating there has
  been an excessive number of attempts at creating or deleting instances.
  You must wait 30 days before you can restart creating and deleting instances in
  your account.
  """
  @spec delete_instance(map(), String.t(), delete_instance_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_instance_errors()}
  def delete_instance(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}"
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
  Deletes an Amazon Web Services resource association from an Amazon Connect
  instance.

  The
  association must not have any use cases associated with it.
  """
  @spec delete_integration_association(
          map(),
          String.t(),
          String.t(),
          delete_integration_association_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  Deletes a predefined attribute from the specified Amazon Connect instance.
  """
  @spec delete_predefined_attribute(
          map(),
          String.t(),
          String.t(),
          delete_predefined_attribute_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_predefined_attribute_errors()}
  def delete_predefined_attribute(%Client{} = client, instance_id, name, input, options \\ []) do
    url_path =
      "/predefined-attributes/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(name)}"

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
  Deletes a prompt.
  """
  @spec delete_prompt(map(), String.t(), String.t(), delete_prompt_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_prompt_errors()}
  def delete_prompt(%Client{} = client, instance_id, prompt_id, input, options \\ []) do
    url_path = "/prompts/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(prompt_id)}"
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
  Deletes a queue.
  """
  @spec delete_queue(map(), String.t(), String.t(), delete_queue_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_queue_errors()}
  def delete_queue(%Client{} = client, instance_id, queue_id, input, options \\ []) do
    url_path = "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}"
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
          String.t(),
          String.t(),
          delete_quick_connect_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  Deletes a routing profile.
  """
  @spec delete_routing_profile(
          map(),
          String.t(),
          String.t(),
          delete_routing_profile_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  Deletes a rule for the specified Amazon Connect instance.
  """
  @spec delete_rule(map(), String.t(), String.t(), delete_rule_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_rule_errors()}
  def delete_rule(%Client{} = client, instance_id, rule_id, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(rule_id)}"
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
  Deletes a security profile.
  """
  @spec delete_security_profile(
          map(),
          String.t(),
          String.t(),
          delete_security_profile_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  Deletes the task template.
  """
  @spec delete_task_template(
          map(),
          String.t(),
          String.t(),
          delete_task_template_request(),
          list()
        ) ::
          {:ok, delete_task_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          delete_traffic_distribution_group_request(),
          list()
        ) ::
          {:ok, delete_traffic_distribution_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_traffic_distribution_group_errors()}
  def delete_traffic_distribution_group(
        %Client{} = client,
        traffic_distribution_group_id,
        input,
        options \\ []
      ) do
    url_path = "/traffic-distribution-group/#{AWS.Util.encode_uri(traffic_distribution_group_id)}"
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
  Deletes a use case from an integration association.
  """
  @spec delete_use_case(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_use_case_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec delete_user(map(), String.t(), String.t(), delete_user_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_user_errors()}
  def delete_user(%Client{} = client, instance_id, user_id, input, options \\ []) do
    url_path = "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}"
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
  Deletes an existing user hierarchy group.

  It must not be associated with any agents or have
  any active child groups.
  """
  @spec delete_user_hierarchy_group(
          map(),
          String.t(),
          String.t(),
          delete_user_hierarchy_group_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  Deletes the view entirely.

  It deletes the view and all associated qualifiers (versions and
  aliases).
  """
  @spec delete_view(map(), String.t(), String.t(), delete_view_request(), list()) ::
          {:ok, delete_view_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_view_errors()}
  def delete_view(%Client{} = client, instance_id, view_id, input, options \\ []) do
    url_path = "/views/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(view_id)}"
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
  Deletes the particular version specified in `ViewVersion` identifier.
  """
  @spec delete_view_version(
          map(),
          String.t(),
          String.t(),
          String.t(),
          delete_view_version_request(),
          list()
        ) ::
          {:ok, delete_view_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Deletes the vocabulary that has the given identifier.
  """
  @spec delete_vocabulary(map(), String.t(), String.t(), delete_vocabulary_request(), list()) ::
          {:ok, delete_vocabulary_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_vocabulary_errors()}
  def delete_vocabulary(%Client{} = client, instance_id, vocabulary_id, input, options \\ []) do
    url_path =
      "/vocabulary-remove/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(vocabulary_id)}"

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
  This API is in preview release for Amazon Connect and is subject to change.

  Describes an agent status.
  """
  @spec describe_agent_status(map(), String.t(), String.t(), list()) ::
          {:ok, describe_agent_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
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

  Describes the specified contact.

  Contact information remains available in Amazon Connect for 24 months, and then
  it is
  deleted.

  Only data from November 12, 2021, and later is returned by this
  API.
  """
  @spec describe_contact(map(), String.t(), String.t(), list()) ::
          {:ok, describe_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec describe_contact_evaluation(map(), String.t(), String.t(), list()) ::
          {:ok, describe_contact_evaluation_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  """
  @spec describe_contact_flow(map(), String.t(), String.t(), list()) ::
          {:ok, describe_contact_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  """
  @spec describe_contact_flow_module(map(), String.t(), String.t(), list()) ::
          {:ok, describe_contact_flow_module_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Describes an evaluation form in the specified Amazon Connect instance.

  If the version
  property is not provided, the latest version of the evaluation form is
  described.
  """
  @spec describe_evaluation_form(map(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, describe_evaluation_form_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  This API is in preview release for Amazon Connect and is subject to change.

  Describes the hours of operation.
  """
  @spec describe_hours_of_operation(map(), String.t(), String.t(), list()) ::
          {:ok, describe_hours_of_operation_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec describe_instance(map(), String.t(), list()) ::
          {:ok, describe_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec describe_instance_attribute(map(), String.t(), String.t(), list()) ::
          {:ok, describe_instance_attribute_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec describe_instance_storage_config(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, describe_instance_storage_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  this scenario, you will receive a
  `ResourceNotFoundException`.
  """
  @spec describe_phone_number(map(), String.t(), list()) ::
          {:ok, describe_phone_number_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  """
  @spec describe_predefined_attribute(map(), String.t(), String.t(), list()) ::
          {:ok, describe_predefined_attribute_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec describe_prompt(map(), String.t(), String.t(), list()) ::
          {:ok, describe_prompt_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_prompt_errors()}
  def describe_prompt(%Client{} = client, instance_id, prompt_id, options \\ []) do
    url_path = "/prompts/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(prompt_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Describes the specified queue.
  """
  @spec describe_queue(map(), String.t(), String.t(), list()) ::
          {:ok, describe_queue_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec describe_quick_connect(map(), String.t(), String.t(), list()) ::
          {:ok, describe_quick_connect_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  """
  @spec describe_routing_profile(map(), String.t(), String.t(), list()) ::
          {:ok, describe_routing_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec describe_rule(map(), String.t(), String.t(), list()) ::
          {:ok, describe_rule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_rule_errors()}
  def describe_rule(%Client{} = client, instance_id, rule_id, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(rule_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets basic information about the security profle.
  """
  @spec describe_security_profile(map(), String.t(), String.t(), list()) ::
          {:ok, describe_security_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec describe_traffic_distribution_group(map(), String.t(), list()) ::
          {:ok, describe_traffic_distribution_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec describe_user(map(), String.t(), String.t(), list()) ::
          {:ok, describe_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec describe_user_hierarchy_group(map(), String.t(), String.t(), list()) ::
          {:ok, describe_user_hierarchy_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec describe_user_hierarchy_structure(map(), String.t(), list()) ::
          {:ok, describe_user_hierarchy_structure_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec describe_view(map(), String.t(), String.t(), list()) ::
          {:ok, describe_view_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec describe_vocabulary(map(), String.t(), String.t(), list()) ::
          {:ok, describe_vocabulary_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  This API is in preview release for Amazon Connect and is subject to change.

  Removes the dataset ID associated with a given Amazon Connect instance.
  """
  @spec disassociate_analytics_data_set(
          map(),
          String.t(),
          disassociate_analytics_data_set_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_analytics_data_set_errors()}
  def disassociate_analytics_data_set(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/analytics-data/instance/#{AWS.Util.encode_uri(instance_id)}/association"
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
  This API is in preview release for Amazon Connect and is subject to change.

  Revokes access to integrated applications from Amazon Connect.
  """
  @spec disassociate_approved_origin(
          map(),
          String.t(),
          disassociate_approved_origin_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_approved_origin_errors()}
  def disassociate_approved_origin(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/approved-origin"
    headers = []

    {query_params, input} =
      [
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
      headers,
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
  @spec disassociate_bot(map(), String.t(), disassociate_bot_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_bot_errors()}
  def disassociate_bot(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/bot"
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
  Disassociates a connect resource from a flow.
  """
  @spec disassociate_flow(
          map(),
          String.t(),
          String.t(),
          String.t(),
          disassociate_flow_request(),
          list()
        ) ::
          {:ok, disassociate_flow_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  This API is in preview release for Amazon Connect and is subject to change.

  Removes the storage type configurations for the specified resource type and
  association
  ID.
  """
  @spec disassociate_instance_storage_config(
          map(),
          String.t(),
          String.t(),
          disassociate_instance_storage_config_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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

    {query_params, input} =
      [
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
      headers,
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
          String.t(),
          disassociate_lambda_function_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_lambda_function_errors()}
  def disassociate_lambda_function(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/lambda-function"
    headers = []

    {query_params, input} =
      [
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
      headers,
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
  @spec disassociate_lex_bot(map(), String.t(), disassociate_lex_bot_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_lex_bot_errors()}
  def disassociate_lex_bot(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/lex-bot"
    headers = []

    {query_params, input} =
      [
        {"BotName", "botName"},
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
      headers,
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
          String.t(),
          disassociate_phone_number_contact_flow_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_phone_number_contact_flow_errors()}
  def disassociate_phone_number_contact_flow(
        %Client{} = client,
        phone_number_id,
        input,
        options \\ []
      ) do
    url_path = "/phone-number/#{AWS.Util.encode_uri(phone_number_id)}/contact-flow"
    headers = []

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
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Disassociates a set of quick connects from a queue.
  """
  @spec disassociate_queue_quick_connects(
          map(),
          String.t(),
          String.t(),
          disassociate_queue_quick_connects_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  Disassociates a set of queues from a routing profile.
  """
  @spec disassociate_routing_profile_queues(
          map(),
          String.t(),
          String.t(),
          disassociate_routing_profile_queues_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  This API is in preview release for Amazon Connect and is subject to change.

  Deletes the specified security key.
  """
  @spec disassociate_security_key(
          map(),
          String.t(),
          String.t(),
          disassociate_security_key_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  Disassociates an agent from a traffic distribution group.
  """
  @spec disassociate_traffic_distribution_group_user(
          map(),
          String.t(),
          disassociate_traffic_distribution_group_user_request(),
          list()
        ) ::
          {:ok, disassociate_traffic_distribution_group_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
      headers,
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
          String.t(),
          String.t(),
          disassociate_user_proficiencies_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t(),
          dismiss_user_contact_request(),
          list()
        ) ::
          {:ok, dismiss_user_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, dismiss_user_contact_errors()}
  def dismiss_user_contact(%Client{} = client, instance_id, user_id, input, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/contact"

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
  Provides a pre-signed URL for download of an approved attached file.

  This API also returns
  metadata about the attached file. It will only return a downloadURL if the
  status of the attached
  file is `APPROVED`.
  """
  @spec get_attached_file(map(), String.t(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, get_attached_file_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_contact_attributes(map(), String.t(), String.t(), list()) ::
          {:ok, get_contact_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Gets the real-time metric data from the specified Amazon Connect instance.

  For a description of each metric, see [Real-time Metrics Definitions](https://docs.aws.amazon.com/connect/latest/adminguide/real-time-metrics-definitions.html)
  in the *Amazon Connect Administrator Guide*.
  """
  @spec get_current_metric_data(map(), String.t(), get_current_metric_data_request(), list()) ::
          {:ok, get_current_metric_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_current_metric_data_errors()}
  def get_current_metric_data(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/metrics/current/#{AWS.Util.encode_uri(instance_id)}"
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
  Gets the real-time active user data from the specified Amazon Connect instance.
  """
  @spec get_current_user_data(map(), String.t(), get_current_user_data_request(), list()) ::
          {:ok, get_current_user_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_current_user_data_errors()}
  def get_current_user_data(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/metrics/userdata/#{AWS.Util.encode_uri(instance_id)}"
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
  @spec get_federation_token(map(), String.t(), list()) ::
          {:ok, get_federation_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_flow_association(map(), String.t(), String.t(), String.t(), list()) ::
          {:ok, get_flow_association_response(), any()}
          | {:error, {:unexpected_response, any()}}
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

  For a description of each historical metric, see [Historical Metrics Definitions](https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics-definitions.html)
  in the *Amazon Connect Administrator Guide*.

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
  @spec get_metric_data(map(), String.t(), get_metric_data_request(), list()) ::
          {:ok, get_metric_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_metric_data_errors()}
  def get_metric_data(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/metrics/historical/#{AWS.Util.encode_uri(instance_id)}"
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
  Gets metric data from the specified Amazon Connect instance.

  `GetMetricDataV2` offers more features than
  [GetMetricData](https://docs.aws.amazon.com/connect/latest/APIReference/API_GetMetricData.html), the previous
  version of this API. It has new metrics, offers filtering at a metric level, and
  offers the
  ability to filter and group data by channels, queues, routing profiles, agents,
  and agent
  hierarchy levels. It can retrieve historical data for the last 3 months, at
  varying intervals.

  For a description of the historical metrics that are supported by
  `GetMetricDataV2` and `GetMetricData`, see [Historical metrics
  definitions](https://docs.aws.amazon.com/connect/latest/adminguide/historical-metrics-definitions.html)
  in the *Amazon Connect Administrator's Guide*.
  """
  @spec get_metric_data_v2(map(), get_metric_data_v2_request(), list()) ::
          {:ok, get_metric_data_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_metric_data_v2_errors()}
  def get_metric_data_v2(%Client{} = client, input, options \\ []) do
    url_path = "/metrics/data"
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
  Gets the prompt file.
  """
  @spec get_prompt_file(map(), String.t(), String.t(), list()) ::
          {:ok, get_prompt_file_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_task_template(map(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, get_task_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec get_traffic_distribution(map(), String.t(), list()) ::
          {:ok, get_traffic_distribution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_traffic_distribution_errors()}
  def get_traffic_distribution(%Client{} = client, id, options \\ []) do
    url_path = "/traffic-distribution/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Imports a claimed phone number from an external service, such as Amazon
  Pinpoint, into an
  Amazon Connect instance.

  You can call this API only in the same Amazon Web Services Region
  where the Amazon Connect instance was created.
  """
  @spec import_phone_number(map(), import_phone_number_request(), list()) ::
          {:ok, import_phone_number_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_phone_number_errors()}
  def import_phone_number(%Client{} = client, input, options \\ []) do
    url_path = "/phone-number/import"
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
  This API is in preview release for Amazon Connect and is subject to change.

  Lists agent statuses.
  """
  @spec list_agent_statuses(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_agent_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  This API is in preview release for Amazon Connect and is subject to change.

  Lists the association status of requested dataset ID for a given Amazon Connect
  instance.
  """
  @spec list_analytics_data_associations(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_analytics_data_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  This API is in preview release for Amazon Connect and is subject to change.

  Returns a paginated list of all approved origins associated with the instance.
  """
  @spec list_approved_origins(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_approved_origins_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  This API is in preview release for Amazon Connect and is subject to change.

  For the specified version of Amazon Lex, returns a paginated list of all the
  Amazon Lex bots currently associated with the instance. Use this API to returns
  both Amazon Lex V1 and V2 bots.
  """
  @spec list_bots(map(), String.t(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_bots_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec list_contact_evaluations(map(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, list_contact_evaluations_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_contact_flow_modules_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_contact_flows_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t(),
          String.t() | nil,
          String.t(),
          list()
        ) ::
          {:ok, list_contact_references_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec list_default_vocabularies(map(), String.t(), list_default_vocabularies_request(), list()) ::
          {:ok, list_default_vocabularies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_default_vocabularies_errors()}
  def list_default_vocabularies(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/default-vocabulary-summary/#{AWS.Util.encode_uri(instance_id)}"
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
  Lists versions of an evaluation form in the specified Amazon Connect instance.
  """
  @spec list_evaluation_form_versions(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_evaluation_form_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec list_evaluation_forms(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_evaluation_forms_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_flow_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Provides information about the hours of operation for the specified Amazon
  Connect
  instance.

  For more information about hours of operation, see [Set the Hours of Operation for a
  Queue](https://docs.aws.amazon.com/connect/latest/adminguide/set-hours-operation.html)
  in the *Amazon Connect Administrator Guide*.
  """
  @spec list_hours_of_operations(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_hours_of_operations_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec list_instance_attributes(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_instance_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t(),
          list()
        ) ::
          {:ok, list_instance_storage_configs_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec list_instances(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_instances_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_integration_associations_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec list_lambda_functions(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_lambda_functions_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec list_lex_bots(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_lex_bots_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_phone_numbers_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          | {:error, list_phone_numbers_v2_errors()}
  def list_phone_numbers_v2(%Client{} = client, input, options \\ []) do
    url_path = "/phone-number/list"
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
  Lists predefined attributes for the specified Amazon Connect instance.
  """
  @spec list_predefined_attributes(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_predefined_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec list_prompts(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_prompts_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  This API is in preview release for Amazon Connect and is subject to change.

  Lists the quick connects associated with a queue.
  """
  @spec list_queue_quick_connects(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_queue_quick_connects_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_queues_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_quick_connects_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Provides a list of analysis segments for a real-time analysis session.
  """
  @spec list_realtime_contact_analysis_segments_v2(
          map(),
          String.t(),
          String.t(),
          list_realtime_contact_analysis_segments_v2_request(),
          list()
        ) ::
          {:ok, list_realtime_contact_analysis_segments_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Lists the queues associated with a routing profile.
  """
  @spec list_routing_profile_queues(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_routing_profile_queues_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec list_routing_profiles(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_routing_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_rules_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec list_security_keys(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_security_keys_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_security_profile_applications_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  """
  @spec list_security_profile_permissions(
          map(),
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_security_profile_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  *Amazon Connect Administrator Guide*.
  """
  @spec list_security_profiles(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_security_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_task_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_traffic_distribution_group_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_traffic_distribution_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec list_use_cases(map(), String.t(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_use_cases_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec list_user_hierarchy_groups(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_user_hierarchy_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_user_proficiencies_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  @spec list_users(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_view_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_views_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
          | {:error, monitor_contact_errors()}
  def monitor_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/monitor"
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
  Allows pausing an ongoing task contact.
  """
  @spec pause_contact(map(), pause_contact_request(), list()) ::
          {:ok, pause_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, pause_contact_errors()}
  def pause_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/pause"
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
  Changes the current status of a user or agent in Amazon Connect.

  If the agent is
  currently handling a contact, this sets the agent's next status.

  For more information, see [Agent status](https://docs.aws.amazon.com/connect/latest/adminguide/metrics-agent-status.html)
  and [Set your next status](https://docs.aws.amazon.com/connect/latest/adminguide/set-next-status.html)
  in the *Amazon Connect Administrator Guide*.
  """
  @spec put_user_status(map(), String.t(), String.t(), put_user_status_request(), list()) ::
          {:ok, put_user_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_user_status_errors()}
  def put_user_status(%Client{} = client, instance_id, user_id, input, options \\ []) do
    url_path = "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/status"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
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
  of 30 days.
  It cannot be searched for or claimed again until the period has ended. If you
  accidentally
  release a phone number, contact Amazon Web Services Support.

  If you plan to claim and release numbers frequently during a 30 day period,
  contact us for a service quota exception. Otherwise, it is possible you will be
  blocked from
  claiming and releasing any more numbers until 30 days past the oldest number
  released has expired.

  By default you can claim and release up to 200% of your maximum number of active
  phone numbers during any 30 day period. If you claim and release phone numbers
  using
  the UI or API during a rolling 30 day cycle that exceeds 200% of your phone
  number
  service level quota, you will be blocked from claiming any more numbers until 30
  days past the oldest number released has expired.

  For example, if you already have 99 claimed numbers and a service level quota of
  99 phone numbers, and in any 30
  day period you release 99, claim 99, and then release 99, you will have exceeded
  the
  200% limit. At that point you are blocked from claiming any more numbers until
  you
  open an Amazon Web Services support ticket.
  """
  @spec release_phone_number(map(), String.t(), release_phone_number_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, release_phone_number_errors()}
  def release_phone_number(%Client{} = client, phone_number_id, input, options \\ []) do
    url_path = "/phone-number/#{AWS.Util.encode_uri(phone_number_id)}"
    headers = []

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
      headers,
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
  @spec replicate_instance(map(), String.t(), replicate_instance_request(), list()) ::
          {:ok, replicate_instance_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, replicate_instance_errors()}
  def replicate_instance(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/instance/#{AWS.Util.encode_uri(instance_id)}/replicate"
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
  Allows resuming a task contact in a paused state.
  """
  @spec resume_contact(map(), resume_contact_request(), list()) ::
          {:ok, resume_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, resume_contact_errors()}
  def resume_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/resume"
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
          | {:error, resume_contact_recording_errors()}
  def resume_contact_recording(%Client{} = client, input, options \\ []) do
    url_path = "/contact/resume-recording"
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
          | {:error, search_available_phone_numbers_errors()}
  def search_available_phone_numbers(%Client{} = client, input, options \\ []) do
    url_path = "/phone-number/search-available"
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
  Searches contacts in an Amazon Connect instance.
  """
  @spec search_contacts(map(), search_contacts_request(), list()) ::
          {:ok, search_contacts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_contacts_errors()}
  def search_contacts(%Client{} = client, input, options \\ []) do
    url_path = "/search-contacts"
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
  Searches the hours of operation in an Amazon Connect instance, with optional
  filtering.
  """
  @spec search_hours_of_operations(map(), search_hours_of_operations_request(), list()) ::
          {:ok, search_hours_of_operations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_hours_of_operations_errors()}
  def search_hours_of_operations(%Client{} = client, input, options \\ []) do
    url_path = "/search-hours-of-operations"
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
  Predefined attributes that meet certain criteria.
  """
  @spec search_predefined_attributes(map(), search_predefined_attributes_request(), list()) ::
          {:ok, search_predefined_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_predefined_attributes_errors()}
  def search_predefined_attributes(%Client{} = client, input, options \\ []) do
    url_path = "/search-predefined-attributes"
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
  Searches prompts in an Amazon Connect instance, with optional filtering.
  """
  @spec search_prompts(map(), search_prompts_request(), list()) ::
          {:ok, search_prompts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_prompts_errors()}
  def search_prompts(%Client{} = client, input, options \\ []) do
    url_path = "/search-prompts"
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
  Searches queues in an Amazon Connect instance, with optional filtering.
  """
  @spec search_queues(map(), search_queues_request(), list()) ::
          {:ok, search_queues_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_queues_errors()}
  def search_queues(%Client{} = client, input, options \\ []) do
    url_path = "/search-queues"
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
  Searches quick connects in an Amazon Connect instance, with optional filtering.
  """
  @spec search_quick_connects(map(), search_quick_connects_request(), list()) ::
          {:ok, search_quick_connects_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_quick_connects_errors()}
  def search_quick_connects(%Client{} = client, input, options \\ []) do
    url_path = "/search-quick-connects"
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
  Searches tags used in an Amazon Connect instance using optional search criteria.
  """
  @spec search_resource_tags(map(), search_resource_tags_request(), list()) ::
          {:ok, search_resource_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_resource_tags_errors()}
  def search_resource_tags(%Client{} = client, input, options \\ []) do
    url_path = "/search-resource-tags"
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
  Searches routing profiles in an Amazon Connect instance, with optional
  filtering.
  """
  @spec search_routing_profiles(map(), search_routing_profiles_request(), list()) ::
          {:ok, search_routing_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_routing_profiles_errors()}
  def search_routing_profiles(%Client{} = client, input, options \\ []) do
    url_path = "/search-routing-profiles"
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
  Searches security profiles in an Amazon Connect instance, with optional
  filtering.
  """
  @spec search_security_profiles(map(), search_security_profiles_request(), list()) ::
          {:ok, search_security_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_security_profiles_errors()}
  def search_security_profiles(%Client{} = client, input, options \\ []) do
    url_path = "/search-security-profiles"
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
  Searches users in an Amazon Connect instance, with optional filtering.

  `AfterContactWorkTimeLimit` is returned in milliseconds.
  """
  @spec search_users(map(), search_users_request(), list()) ::
          {:ok, search_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_users_errors()}
  def search_users(%Client{} = client, input, options \\ []) do
    url_path = "/search-users"
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
  Searches for vocabularies within a specific Amazon Connect instance using
  `State`, `NameStartsWith`, and `LanguageCode`.
  """
  @spec search_vocabularies(map(), String.t(), search_vocabularies_request(), list()) ::
          {:ok, search_vocabularies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, search_vocabularies_errors()}
  def search_vocabularies(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/vocabulary-summary/#{AWS.Util.encode_uri(instance_id)}"
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

  Access to this API is currently restricted to Amazon Pinpoint for supporting SMS
  integration.
  """
  @spec send_chat_integration_event(map(), send_chat_integration_event_request(), list()) ::
          {:ok, send_chat_integration_event_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, send_chat_integration_event_errors()}
  def send_chat_integration_event(%Client{} = client, input, options \\ []) do
    url_path = "/chat-integration-event"
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
  Provides a pre-signed Amazon S3 URL in response for uploading your content.

  You may only use this API to upload attachments to a [Connect Case](https://docs.aws.amazon.com/connect/latest/APIReference/API_connect-cases_CreateCase.html).
  """
  @spec start_attached_file_upload(
          map(),
          String.t(),
          start_attached_file_upload_request(),
          list()
        ) ::
          {:ok, start_attached_file_upload_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_attached_file_upload_errors()}
  def start_attached_file_upload(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/attached-files/#{AWS.Util.encode_uri(instance_id)}"
    headers = []

    {query_params, input} =
      [
        {"AssociatedResourceArn", "associatedResourceArn"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
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

  For more information about chat, see
  [Chat](https://docs.aws.amazon.com/connect/latest/adminguide/chat.html) in the
  *Amazon Connect
  Administrator Guide*.
  """
  @spec start_chat_contact(map(), start_chat_contact_request(), list()) ::
          {:ok, start_chat_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_chat_contact_errors()}
  def start_chat_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/chat"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
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
  @spec start_contact_evaluation(map(), String.t(), start_contact_evaluation_request(), list()) ::
          {:ok, start_contact_evaluation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_contact_evaluation_errors()}
  def start_contact_evaluation(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/contact-evaluations/#{AWS.Util.encode_uri(instance_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
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
          | {:error, start_contact_recording_errors()}
  def start_contact_recording(%Client{} = client, input, options \\ []) do
    url_path = "/contact/start-recording"
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
  Initiates real-time message streaming for a new chat contact.

  For more information about message streaming, see [Enable real-time chat message streaming](https://docs.aws.amazon.com/connect/latest/adminguide/chat-message-streaming.html)
  in the *Amazon Connect Administrator Guide*.
  """
  @spec start_contact_streaming(map(), start_contact_streaming_request(), list()) ::
          {:ok, start_contact_streaming_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_contact_streaming_errors()}
  def start_contact_streaming(%Client{} = client, input, options \\ []) do
    url_path = "/contact/start-streaming"
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
          | {:error, start_outbound_voice_contact_errors()}
  def start_outbound_voice_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/outbound-voice"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
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
          | {:error, start_task_contact_errors()}
  def start_task_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/task"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
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
          | {:error, start_web_r_t_c_contact_errors()}
  def start_web_r_t_c_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/webrtc"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
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

  Chat and task contacts can be terminated in any state, regardless of initiation
  method.
  """
  @spec stop_contact(map(), stop_contact_request(), list()) ::
          {:ok, stop_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_contact_errors()}
  def stop_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/stop"
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
          | {:error, stop_contact_recording_errors()}
  def stop_contact_recording(%Client{} = client, input, options \\ []) do
    url_path = "/contact/stop-recording"
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
  Ends message streaming on a specified contact.

  To restart message streaming on that
  contact, call the
  [StartContactStreaming](https://docs.aws.amazon.com/connect/latest/APIReference/API_StartContactStreaming.html)
  API.
  """
  @spec stop_contact_streaming(map(), stop_contact_streaming_request(), list()) ::
          {:ok, stop_contact_streaming_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_contact_streaming_errors()}
  def stop_contact_streaming(%Client{} = client, input, options \\ []) do
    url_path = "/contact/stop-streaming"
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
          String.t(),
          String.t(),
          submit_contact_evaluation_request(),
          list()
        ) ::
          {:ok, submit_contact_evaluation_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  When a contact is being recorded, this API suspends recording whatever is
  selected in the
  flow configuration: call, screen, or both.

  If only call recording or only screen recording is
  enabled, then it would be suspended. For example, you might suspend the screen
  recording while
  collecting sensitive information, such as a credit card number. Then use
  ResumeContactRecording
  to restart recording the screen.

  The period of time that the recording is suspended is filled with silence in the
  final
  recording.

  Voice and screen recordings are supported.
  """
  @spec suspend_contact_recording(map(), suspend_contact_recording_request(), list()) ::
          {:ok, suspend_contact_recording_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, suspend_contact_recording_errors()}
  def suspend_contact_recording(%Client{} = client, input, options \\ []) do
    url_path = "/contact/suspend-recording"
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
  Adds the specified tags to the contact resource.

  For more information about this API is
  used, see [Set up granular billing for a detailed view of your Amazon Connect
  usage](https://docs.aws.amazon.com/connect/latest/adminguide/granular-billing.html).
  """
  @spec tag_contact(map(), tag_contact_request(), list()) ::
          {:ok, tag_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_contact_errors()}
  def tag_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/tags"
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
  Adds the specified tags to the specified resource.

  Some of the supported resource types are agents, routing profiles, queues, quick
  connects,
  contact flows, agent statuses, hours of operation, phone numbers, security
  profiles, and task
  templates. For a complete list, see [Tagging resources in Amazon Connect](https://docs.aws.amazon.com/connect/latest/adminguide/tagging.html).

  For sample policies that use tags, see [Amazon Connect Identity-Based Policy
  Examples](https://docs.aws.amazon.com/connect/latest/adminguide/security_iam_id-based-policy-examples.html)
  in the *Amazon Connect Administrator
  Guide*.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Transfers contacts from one agent or queue to another agent or queue at any
  point after a
  contact is created.

  You can transfer a contact to another queue by providing the flow which
  orchestrates the contact to the destination queue. This gives you more control
  over contact
  handling and helps you adhere to the service level agreement (SLA) guaranteed to
  your
  customers.

  Note the following requirements:

    *
  Transfer is supported for only `TASK` contacts.

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
          | {:error, transfer_contact_errors()}
  def transfer_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact/transfer"
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
  Removes the specified tags from the contact resource.

  For more information about this API is
  used, see [Set up granular billing for a detailed view of your Amazon Connect
  usage](https://docs.aws.amazon.com/connect/latest/adminguide/granular-billing.html).
  """
  @spec untag_contact(map(), String.t(), String.t(), untag_contact_request(), list()) ::
          {:ok, untag_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_contact_errors()}
  def untag_contact(%Client{} = client, contact_id, instance_id, input, options \\ []) do
    url_path =
      "/contact/tags/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_id)}"

    headers = []

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
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes the specified tags from the specified resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

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
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Updates agent status.
  """
  @spec update_agent_status(map(), String.t(), String.t(), update_agent_status_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_agent_status_errors()}
  def update_agent_status(%Client{} = client, agent_status_id, instance_id, input, options \\ []) do
    url_path =
      "/agent-status/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(agent_status_id)}"

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
  This API is in preview release for Amazon Connect and is subject to change.

  Adds or updates user-defined contact information associated with the specified
  contact. At
  least one field to be updated must be present in the request.

  You can add or update user-defined contact information for both ongoing and
  completed
  contacts.
  """
  @spec update_contact(map(), String.t(), String.t(), update_contact_request(), list()) ::
          {:ok, update_contact_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_contact_errors()}
  def update_contact(%Client{} = client, contact_id, instance_id, input, options \\ []) do
    url_path = "/contacts/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(contact_id)}"
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
          | {:error, update_contact_attributes_errors()}
  def update_contact_attributes(%Client{} = client, input, options \\ []) do
    url_path = "/contact/attributes"
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
          String.t(),
          String.t(),
          update_contact_evaluation_request(),
          list()
        ) ::
          {:ok, update_contact_evaluation_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Updates the specified flow.

  You can also create and update flows using the [Amazon Connect Flow
  language](https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html).
  """
  @spec update_contact_flow_content(
          map(),
          String.t(),
          String.t(),
          update_contact_flow_content_request(),
          list()
        ) ::
          {:ok, update_contact_flow_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Updates metadata about specified flow.
  """
  @spec update_contact_flow_metadata(
          map(),
          String.t(),
          String.t(),
          update_contact_flow_metadata_request(),
          list()
        ) ::
          {:ok, update_contact_flow_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Updates specified flow module for the specified Amazon Connect instance.
  """
  @spec update_contact_flow_module_content(
          map(),
          String.t(),
          String.t(),
          update_contact_flow_module_content_request(),
          list()
        ) ::
          {:ok, update_contact_flow_module_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Updates metadata about specified flow module.
  """
  @spec update_contact_flow_module_metadata(
          map(),
          String.t(),
          String.t(),
          update_contact_flow_module_metadata_request(),
          list()
        ) ::
          {:ok, update_contact_flow_module_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  The name of the flow.

  You can also create and update flows using the [Amazon Connect Flow
  language](https://docs.aws.amazon.com/connect/latest/APIReference/flow-language.html).
  """
  @spec update_contact_flow_name(
          map(),
          String.t(),
          String.t(),
          update_contact_flow_name_request(),
          list()
        ) ::
          {:ok, update_contact_flow_name_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  This API is in preview release for Amazon Connect and is subject to change.

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
  """
  @spec update_contact_routing_data(
          map(),
          String.t(),
          String.t(),
          update_contact_routing_data_request(),
          list()
        ) ::
          {:ok, update_contact_routing_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Updates the scheduled time of a task contact that is already scheduled.
  """
  @spec update_contact_schedule(map(), update_contact_schedule_request(), list()) ::
          {:ok, update_contact_schedule_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_contact_schedule_errors()}
  def update_contact_schedule(%Client{} = client, input, options \\ []) do
    url_path = "/contact/schedule"
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
          String.t(),
          String.t(),
          update_evaluation_form_request(),
          list()
        ) ::
          {:ok, update_evaluation_form_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  This API is in preview release for Amazon Connect and is subject to change.

  Updates the hours of operation.
  """
  @spec update_hours_of_operation(
          map(),
          String.t(),
          String.t(),
          update_hours_of_operation_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  This API is in preview release for Amazon Connect and is subject to change.

  Updates the value for the specified attribute type.
  """
  @spec update_instance_attribute(
          map(),
          String.t(),
          String.t(),
          update_instance_attribute_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  This API is in preview release for Amazon Connect and is subject to change.

  Updates an existing configuration for a resource type. This API is idempotent.
  """
  @spec update_instance_storage_config(
          map(),
          String.t(),
          String.t(),
          update_instance_storage_config_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
      headers,
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
          String.t(),
          String.t(),
          update_participant_role_config_request(),
          list()
        ) ::
          {:ok, update_participant_role_config_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
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
  @spec update_phone_number(map(), String.t(), update_phone_number_request(), list()) ::
          {:ok, update_phone_number_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_phone_number_errors()}
  def update_phone_number(%Client{} = client, phone_number_id, input, options \\ []) do
    url_path = "/phone-number/#{AWS.Util.encode_uri(phone_number_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a phone number’s metadata.

  To verify the status of a previous UpdatePhoneNumberMetadata operation, call the
  [DescribePhoneNumber](https://docs.aws.amazon.com/connect/latest/APIReference/API_DescribePhoneNumber.html)
  API.
  """
  @spec update_phone_number_metadata(
          map(),
          String.t(),
          update_phone_number_metadata_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_phone_number_metadata_errors()}
  def update_phone_number_metadata(%Client{} = client, phone_number_id, input, options \\ []) do
    url_path = "/phone-number/#{AWS.Util.encode_uri(phone_number_id)}/metadata"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a predefined attribute for the specified Amazon Connect instance.
  """
  @spec update_predefined_attribute(
          map(),
          String.t(),
          String.t(),
          update_predefined_attribute_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_predefined_attribute_errors()}
  def update_predefined_attribute(%Client{} = client, instance_id, name, input, options \\ []) do
    url_path =
      "/predefined-attributes/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(name)}"

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
  Updates a prompt.
  """
  @spec update_prompt(map(), String.t(), String.t(), update_prompt_request(), list()) ::
          {:ok, update_prompt_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_prompt_errors()}
  def update_prompt(%Client{} = client, instance_id, prompt_id, input, options \\ []) do
    url_path = "/prompts/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(prompt_id)}"
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
  This API is in preview release for Amazon Connect and is subject to change.

  Updates the hours of operation for the specified queue.
  """
  @spec update_queue_hours_of_operation(
          map(),
          String.t(),
          String.t(),
          update_queue_hours_of_operation_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  This API is in preview release for Amazon Connect and is subject to change.

  Updates the maximum number of contacts allowed in a queue before it is
  considered
  full.
  """
  @spec update_queue_max_contacts(
          map(),
          String.t(),
          String.t(),
          update_queue_max_contacts_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_queue_max_contacts_errors()}
  def update_queue_max_contacts(%Client{} = client, instance_id, queue_id, input, options \\ []) do
    url_path =
      "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/max-contacts"

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
  This API is in preview release for Amazon Connect and is subject to change.

  Updates the name and description of a queue. At least `Name` or `Description`
  must be provided.
  """
  @spec update_queue_name(map(), String.t(), String.t(), update_queue_name_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_queue_name_errors()}
  def update_queue_name(%Client{} = client, instance_id, queue_id, input, options \\ []) do
    url_path = "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/name"
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
  This API is in preview release for Amazon Connect and is subject to change.

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
          String.t(),
          String.t(),
          update_queue_outbound_caller_config_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  This API is in preview release for Amazon Connect and is subject to change.

  Updates the status of the queue.
  """
  @spec update_queue_status(map(), String.t(), String.t(), update_queue_status_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_queue_status_errors()}
  def update_queue_status(%Client{} = client, instance_id, queue_id, input, options \\ []) do
    url_path =
      "/queues/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(queue_id)}/status"

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
  Updates the configuration settings for the specified quick connect.
  """
  @spec update_quick_connect_config(
          map(),
          String.t(),
          String.t(),
          update_quick_connect_config_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  Updates the name and description of a quick connect.

  The request accepts the following data in JSON format. At least `Name` or
  `Description` must be provided.
  """
  @spec update_quick_connect_name(
          map(),
          String.t(),
          String.t(),
          update_quick_connect_name_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  Whether agents with this routing profile will have their routing order
  calculated based on
  *time since their last inbound contact* or *longest idle
  time*.
  """
  @spec update_routing_profile_agent_availability_timer(
          map(),
          String.t(),
          String.t(),
          update_routing_profile_agent_availability_timer_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  Updates the channels that agents can handle in the Contact Control Panel (CCP)
  for a routing
  profile.
  """
  @spec update_routing_profile_concurrency(
          map(),
          String.t(),
          String.t(),
          update_routing_profile_concurrency_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  Updates the default outbound queue of a routing profile.
  """
  @spec update_routing_profile_default_outbound_queue(
          map(),
          String.t(),
          String.t(),
          update_routing_profile_default_outbound_queue_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  Updates the name and description of a routing profile.

  The request accepts the following data in JSON format.
  At least `Name` or `Description` must be provided.
  """
  @spec update_routing_profile_name(
          map(),
          String.t(),
          String.t(),
          update_routing_profile_name_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  Updates the properties associated with a set of queues for a routing profile.
  """
  @spec update_routing_profile_queues(
          map(),
          String.t(),
          String.t(),
          update_routing_profile_queues_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  Updates a rule for the specified Amazon Connect instance.

  Use the [Rules Function language](https://docs.aws.amazon.com/connect/latest/APIReference/connect-rules-language.html)
  to
  code conditions for the rule.
  """
  @spec update_rule(map(), String.t(), String.t(), update_rule_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_rule_errors()}
  def update_rule(%Client{} = client, instance_id, rule_id, input, options \\ []) do
    url_path = "/rules/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(rule_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a security profile.
  """
  @spec update_security_profile(
          map(),
          String.t(),
          String.t(),
          update_security_profile_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  Updates details about a specific task template in the specified Amazon Connect
  instance.

  This operation does not support partial updates. Instead it does a full update
  of template
  content.
  """
  @spec update_task_template(
          map(),
          String.t(),
          String.t(),
          update_task_template_request(),
          list()
        ) ::
          {:ok, update_task_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Updates the traffic distribution for a given traffic distribution group.

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
          String.t(),
          update_traffic_distribution_request(),
          list()
        ) ::
          {:ok, update_traffic_distribution_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_traffic_distribution_errors()}
  def update_traffic_distribution(%Client{} = client, id, input, options \\ []) do
    url_path = "/traffic-distribution/#{AWS.Util.encode_uri(id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Assigns the specified hierarchy group to the specified user.
  """
  @spec update_user_hierarchy(
          map(),
          String.t(),
          String.t(),
          update_user_hierarchy_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_hierarchy_errors()}
  def update_user_hierarchy(%Client{} = client, instance_id, user_id, input, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/hierarchy"

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
  Updates the name of the user hierarchy group.
  """
  @spec update_user_hierarchy_group_name(
          map(),
          String.t(),
          String.t(),
          update_user_hierarchy_group_name_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  Updates the user hierarchy structure: add, remove, and rename user hierarchy
  levels.
  """
  @spec update_user_hierarchy_structure(
          map(),
          String.t(),
          update_user_hierarchy_structure_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_hierarchy_structure_errors()}
  def update_user_hierarchy_structure(%Client{} = client, instance_id, input, options \\ []) do
    url_path = "/user-hierarchy-structure/#{AWS.Util.encode_uri(instance_id)}"
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
          String.t(),
          String.t(),
          update_user_identity_info_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_identity_info_errors()}
  def update_user_identity_info(%Client{} = client, instance_id, user_id, input, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/identity-info"

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
  Updates the phone configuration settings for the specified user.
  """
  @spec update_user_phone_config(
          map(),
          String.t(),
          String.t(),
          update_user_phone_config_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_phone_config_errors()}
  def update_user_phone_config(%Client{} = client, instance_id, user_id, input, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/phone-config"

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
  Updates the properties associated with the proficiencies of a user.
  """
  @spec update_user_proficiencies(
          map(),
          String.t(),
          String.t(),
          update_user_proficiencies_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_proficiencies_errors()}
  def update_user_proficiencies(%Client{} = client, instance_id, user_id, input, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/proficiencies"

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
  Assigns the specified routing profile to the specified user.
  """
  @spec update_user_routing_profile(
          map(),
          String.t(),
          String.t(),
          update_user_routing_profile_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_routing_profile_errors()}
  def update_user_routing_profile(%Client{} = client, instance_id, user_id, input, options \\ []) do
    url_path =
      "/users/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(user_id)}/routing-profile"

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
  Assigns the specified security profiles to the specified user.
  """
  @spec update_user_security_profiles(
          map(),
          String.t(),
          String.t(),
          update_user_security_profiles_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
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
  Updates the view content of the given view identifier in the specified Amazon
  Connect
  instance.

  It performs content validation if `Status` is set to `SAVED` and
  performs full content validation if `Status` is `PUBLISHED`. Note that the
  `$SAVED` alias' content will always be updated, but the `$LATEST` alias'
  content will only be updated if `Status` is `PUBLISHED`.
  """
  @spec update_view_content(map(), String.t(), String.t(), update_view_content_request(), list()) ::
          {:ok, update_view_content_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_view_content_errors()}
  def update_view_content(%Client{} = client, instance_id, view_id, input, options \\ []) do
    url_path = "/views/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(view_id)}"
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
  Updates the view metadata.

  Note that either `Name` or `Description`
  must be provided.
  """
  @spec update_view_metadata(
          map(),
          String.t(),
          String.t(),
          update_view_metadata_request(),
          list()
        ) ::
          {:ok, update_view_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_view_metadata_errors()}
  def update_view_metadata(%Client{} = client, instance_id, view_id, input, options \\ []) do
    url_path =
      "/views/#{AWS.Util.encode_uri(instance_id)}/#{AWS.Util.encode_uri(view_id)}/metadata"

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
