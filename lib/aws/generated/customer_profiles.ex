# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CustomerProfiles do
  @moduledoc """
  Amazon Connect Customer Profiles

    *

  [Customer Profiles actions](https://docs.aws.amazon.com/connect/latest/APIReference/API_Operations_Amazon_Connect_Customer_Profiles.html)

    *

  [Customer Profiles data types](https://docs.aws.amazon.com/connect/latest/APIReference/API_Types_Amazon_Connect_Customer_Profiles.html)

  Amazon Connect Customer Profiles is a unified customer profile for your contact
  center that has pre-built connectors powered by AppFlow that make it easy to
  combine
  customer information from third party applications, such as Salesforce (CRM),
  ServiceNow
  (ITSM), and your enterprise resource planning (ERP), with contact history from
  your Amazon Connect contact center.

  For more information about the Amazon Connect Customer Profiles feature, see
  [Use Customer Profiles](https://docs.aws.amazon.com/connect/latest/adminguide/customer-profiles.html)
  in the *Amazon Connect Administrator's Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      get_domain_layout_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "DisplayName" => String.t() | atom(),
        "IsDefault" => boolean(),
        "LastUpdatedAt" => non_neg_integer(),
        "Layout" => String.t() | atom(),
        "LayoutDefinitionName" => String.t() | atom(),
        "LayoutType" => list(any()),
        "Tags" => map(),
        "Version" => String.t() | atom()
      }

  """
  @type get_domain_layout_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      profile() :: %{
        "AccountNumber" => String.t() | atom(),
        "AdditionalInformation" => String.t() | atom(),
        "Address" => address(),
        "Attributes" => map(),
        "BillingAddress" => address(),
        "BirthDate" => String.t() | atom(),
        "BusinessEmailAddress" => String.t() | atom(),
        "BusinessName" => String.t() | atom(),
        "BusinessPhoneNumber" => String.t() | atom(),
        "EmailAddress" => String.t() | atom(),
        "EngagementPreferences" => engagement_preferences(),
        "FirstName" => String.t() | atom(),
        "FoundByItems" => list(found_by_key_value()),
        "Gender" => list(any()),
        "GenderString" => String.t() | atom(),
        "HomePhoneNumber" => String.t() | atom(),
        "LastName" => String.t() | atom(),
        "MailingAddress" => address(),
        "MiddleName" => String.t() | atom(),
        "MobilePhoneNumber" => String.t() | atom(),
        "PartyType" => list(any()),
        "PartyTypeString" => String.t() | atom(),
        "PersonalEmailAddress" => String.t() | atom(),
        "PhoneNumber" => String.t() | atom(),
        "ProfileId" => String.t() | atom(),
        "ProfileType" => list(any()),
        "ShippingAddress" => address()
      }

  """
  @type profile() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      integration_config() :: %{
        "AppflowIntegration" => appflow_integration()
      }

  """
  @type integration_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_profile_object_type_item() :: %{
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "LastUpdatedAt" => non_neg_integer(),
        "MaxAvailableProfileObjectCount" => integer(),
        "MaxProfileObjectCount" => integer(),
        "ObjectTypeName" => String.t() | atom(),
        "SourcePriority" => integer(),
        "Tags" => map()
      }

  """
  @type list_profile_object_type_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      auto_merging() :: %{
        "ConflictResolution" => conflict_resolution(),
        "Consolidation" => consolidation(),
        "Enabled" => boolean(),
        "MinAllowedConfidenceScoreForMerging" => float()
      }

  """
  @type auto_merging() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      event_trigger_limits() :: %{
        "EventExpiration" => float(),
        "Periods" => list(period())
      }

  """
  @type event_trigger_limits() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_segment_estimate_request() :: %{
        optional("SegmentQuery") => segment_group_structure(),
        optional("SegmentSqlQuery") => String.t() | atom()
      }

  """
  @type create_segment_estimate_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_calculated_attribute_definition_response() :: %{
        "AttributeDetails" => attribute_details(),
        "CalculatedAttributeName" => String.t() | atom(),
        "Conditions" => conditions(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "DisplayName" => String.t() | atom(),
        "Filter" => filter(),
        "LastUpdatedAt" => non_neg_integer(),
        "Readiness" => readiness(),
        "Statistic" => list(any()),
        "Status" => list(any()),
        "Tags" => map(),
        "UseHistoricalData" => boolean()
      }

  """
  @type create_calculated_attribute_definition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_domain_request() :: %{}

  """
  @type get_domain_request() :: %{}

  @typedoc """

  ## Example:

      create_segment_snapshot_request() :: %{
        optional("DestinationUri") => String.t() | atom(),
        optional("EncryptionKey") => String.t() | atom(),
        optional("RoleArn") => String.t() | atom(),
        required("DataFormat") => list(any())
      }

  """
  @type create_segment_snapshot_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_profile_object_type_response() :: %{
        "AllowProfileCreation" => boolean(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "EncryptionKey" => String.t() | atom(),
        "ExpirationDays" => integer(),
        "Fields" => map(),
        "Keys" => map(),
        "LastUpdatedAt" => non_neg_integer(),
        "MaxAvailableProfileObjectCount" => integer(),
        "MaxProfileObjectCount" => integer(),
        "ObjectTypeName" => String.t() | atom(),
        "SourceLastUpdatedTimestampFormat" => String.t() | atom(),
        "SourcePriority" => integer(),
        "Tags" => map(),
        "TemplateId" => String.t() | atom()
      }

  """
  @type put_profile_object_type_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      date_dimension() :: %{
        "DimensionType" => list(any()),
        "Values" => list([String.t() | atom()]())
      }

  """
  @type date_dimension() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_domain_response() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type delete_domain_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_profile_object_response() :: %{
        "ProfileObjectUniqueKey" => String.t() | atom()
      }

  """
  @type put_profile_object_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_schedule() :: %{
        "DayOfTheWeek" => list(any()),
        "Time" => String.t() | atom()
      }

  """
  @type job_schedule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_integration_response() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type delete_integration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      task() :: %{
        "ConnectorOperator" => connector_operator(),
        "DestinationField" => String.t() | atom(),
        "SourceFields" => list(String.t() | atom()),
        "TaskProperties" => map(),
        "TaskType" => list(any())
      }

  """
  @type task() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_domain_request() :: %{
        optional("DataStore") => data_store_request(),
        optional("DeadLetterQueueUrl") => String.t() | atom(),
        optional("DefaultEncryptionKey") => String.t() | atom(),
        optional("DefaultExpirationDays") => integer(),
        optional("Matching") => matching_request(),
        optional("RuleBasedMatching") => rule_based_matching_request(),
        optional("Tags") => map()
      }

  """
  @type update_domain_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      scheduled_trigger_properties() :: %{
        "DataPullMode" => list(any()),
        "FirstExecutionFrom" => non_neg_integer(),
        "ScheduleEndTime" => non_neg_integer(),
        "ScheduleExpression" => String.t() | atom(),
        "ScheduleOffset" => float(),
        "ScheduleStartTime" => non_neg_integer(),
        "Timezone" => String.t() | atom()
      }

  """
  @type scheduled_trigger_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_object_type_attribute_values_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_object_type_attribute_values_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      range() :: %{
        "TimestampFormat" => String.t() | atom(),
        "TimestampSource" => String.t() | atom(),
        "Unit" => list(any()),
        "Value" => integer(),
        "ValueRange" => value_range()
      }

  """
  @type range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      profile_query_result() :: %{
        "Profile" => profile(),
        "ProfileId" => String.t() | atom(),
        "QueryResult" => list(any())
      }

  """
  @type profile_query_result() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_profile_key_response() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type delete_profile_key_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_profile_object_type_template_item() :: %{
        "SourceName" => String.t() | atom(),
        "SourceObject" => String.t() | atom(),
        "TemplateId" => String.t() | atom()
      }

  """
  @type list_profile_object_type_template_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      attribute_details() :: %{
        "Attributes" => list(attribute_item()),
        "Expression" => String.t() | atom()
      }

  """
  @type attribute_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_domain_object_type_request() :: %{}

  """
  @type delete_domain_object_type_request() :: %{}

  @typedoc """

  ## Example:

      detect_profile_object_type_response() :: %{
        "DetectedProfileObjectTypes" => list(detected_profile_object_type())
      }

  """
  @type detect_profile_object_type_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_identity_resolution_jobs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_identity_resolution_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_profile_recommendations_response() :: %{
        "Recommendations" => list(recommendation())
      }

  """
  @type get_profile_recommendations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      job_stats() :: %{
        "NumberOfMatchesFound" => float(),
        "NumberOfMergesDone" => float(),
        "NumberOfProfilesReviewed" => float()
      }

  """
  @type job_stats() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      marketo_source_properties() :: %{
        "Object" => String.t() | atom()
      }

  """
  @type marketo_source_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_domain_layout_request() :: %{}

  """
  @type get_domain_layout_request() :: %{}

  @typedoc """

  ## Example:

      list_upload_jobs_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_upload_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_profile_object_type_response() :: %{
        "AllowProfileCreation" => boolean(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "EncryptionKey" => String.t() | atom(),
        "ExpirationDays" => integer(),
        "Fields" => map(),
        "Keys" => map(),
        "LastUpdatedAt" => non_neg_integer(),
        "MaxAvailableProfileObjectCount" => integer(),
        "MaxProfileObjectCount" => integer(),
        "ObjectTypeName" => String.t() | atom(),
        "SourceLastUpdatedTimestampFormat" => String.t() | atom(),
        "SourcePriority" => integer(),
        "Tags" => map(),
        "TemplateId" => String.t() | atom()
      }

  """
  @type get_profile_object_type_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_recommender_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("RecommenderConfig") => recommender_config(),
        optional("Tags") => map(),
        required("RecommenderRecipeName") => list(any())
      }

  """
  @type create_recommender_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      attribute_item() :: %{
        "Name" => String.t() | atom()
      }

  """
  @type attribute_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_recommender_request() :: %{
        optional("TrainingMetricsCount") => integer()
      }

  """
  @type get_recommender_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_calculated_attribute_for_profile_request() :: %{}

  """
  @type get_calculated_attribute_for_profile_request() :: %{}

  @typedoc """

  ## Example:

      conflict_resolution() :: %{
        "ConflictResolvingModel" => list(any()),
        "SourceName" => String.t() | atom()
      }

  """
  @type conflict_resolution() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_recommender_response() :: %{
        "RecommenderName" => String.t() | atom()
      }

  """
  @type update_recommender_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      profile_history_record() :: %{
        "ActionType" => list(any()),
        "CreatedAt" => non_neg_integer(),
        "Id" => String.t() | atom(),
        "LastUpdatedAt" => non_neg_integer(),
        "ObjectTypeName" => String.t() | atom(),
        "PerformedBy" => String.t() | atom(),
        "ProfileObjectUniqueKey" => String.t() | atom()
      }

  """
  @type profile_history_record() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_profile_request() :: %{
        required("ProfileId") => String.t() | atom()
      }

  """
  @type delete_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_segment_definition_request() :: %{}

  """
  @type delete_segment_definition_request() :: %{}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      event_trigger_condition() :: %{
        "EventTriggerDimensions" => list(event_trigger_dimension()),
        "LogicalOperator" => list(any())
      }

  """
  @type event_trigger_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      domain_stats() :: %{
        "MeteringProfileCount" => float(),
        "ObjectCount" => float(),
        "ProfileCount" => float(),
        "TotalSize" => float()
      }

  """
  @type domain_stats() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_workflow_request() :: %{}

  """
  @type delete_workflow_request() :: %{}

  @typedoc """

  ## Example:

      list_account_integrations_request() :: %{
        optional("IncludeHidden") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("Uri") => String.t() | atom()
      }

  """
  @type list_account_integrations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_event_trigger_response() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type delete_event_trigger_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      object_filter() :: %{
        "KeyName" => String.t() | atom(),
        "Values" => list(String.t() | atom())
      }

  """
  @type object_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_object_type_attribute_statistics_stats() :: %{
        "Average" => float(),
        "Maximum" => float(),
        "Minimum" => float(),
        "Percentiles" => get_object_type_attribute_statistics_percentiles(),
        "StandardDeviation" => float()
      }

  """
  @type get_object_type_attribute_statistics_stats() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_source_properties() :: %{
        "BucketName" => String.t() | atom(),
        "BucketPrefix" => String.t() | atom()
      }

  """
  @type s3_source_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      segment_definition_item() :: %{
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "DisplayName" => String.t() | atom(),
        "SegmentDefinitionArn" => String.t() | atom(),
        "SegmentDefinitionName" => String.t() | atom(),
        "SegmentType" => list(any()),
        "Tags" => map()
      }

  """
  @type segment_definition_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      found_by_key_value() :: %{
        "KeyName" => String.t() | atom(),
        "Values" => list(String.t() | atom())
      }

  """
  @type found_by_key_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_domain_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "DataStore" => data_store_response(),
        "DeadLetterQueueUrl" => String.t() | atom(),
        "DefaultEncryptionKey" => String.t() | atom(),
        "DefaultExpirationDays" => integer(),
        "DomainName" => String.t() | atom(),
        "LastUpdatedAt" => non_neg_integer(),
        "Matching" => matching_response(),
        "RuleBasedMatching" => rule_based_matching_response(),
        "Tags" => map()
      }

  """
  @type update_domain_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      merge_profiles_response() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type merge_profiles_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_profile_response() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type delete_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_segment_definitions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_segment_definitions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_identity_resolution_job_request() :: %{}

  """
  @type get_identity_resolution_job_request() :: %{}

  @typedoc """

  ## Example:

      start_recommender_response() :: %{}

  """
  @type start_recommender_response() :: %{}

  @typedoc """

  ## Example:

      appflow_integration_workflow_step() :: %{
        "BatchRecordsEndTime" => String.t() | atom(),
        "BatchRecordsStartTime" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "ExecutionMessage" => String.t() | atom(),
        "FlowName" => String.t() | atom(),
        "LastUpdatedAt" => non_neg_integer(),
        "RecordsProcessed" => float(),
        "Status" => list(any())
      }

  """
  @type appflow_integration_workflow_step() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detect_profile_object_type_request() :: %{
        required("Objects") => list(String.t() | atom())
      }

  """
  @type detect_profile_object_type_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      calculated_attribute_value() :: %{
        "CalculatedAttributeName" => String.t() | atom(),
        "DisplayName" => String.t() | atom(),
        "IsDataPartial" => String.t() | atom(),
        "LastObjectTimestamp" => non_neg_integer(),
        "ProfileId" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type calculated_attribute_value() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_domain_object_type_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "EncryptionKey" => String.t() | atom(),
        "Fields" => map(),
        "LastUpdatedAt" => non_neg_integer(),
        "ObjectTypeName" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type get_domain_object_type_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_domain_layout_response() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type delete_domain_layout_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      address_dimension() :: %{
        "City" => profile_dimension(),
        "Country" => profile_dimension(),
        "County" => profile_dimension(),
        "PostalCode" => profile_dimension(),
        "Province" => profile_dimension(),
        "State" => profile_dimension()
      }

  """
  @type address_dimension() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_object_type_attribute_statistics_request() :: %{}

  """
  @type get_object_type_attribute_statistics_request() :: %{}

  @typedoc """

  ## Example:

      exporting_location() :: %{
        "S3Exporting" => s3_exporting_location()
      }

  """
  @type exporting_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_object_type_attribute_values_response() :: %{
        "Items" => list(list_object_type_attribute_values_item()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_object_type_attribute_values_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      profile_type_dimension() :: %{
        "DimensionType" => list(any()),
        "Values" => list(list(any())())
      }

  """
  @type profile_type_dimension() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_similar_profiles_response() :: %{
        "ConfidenceScore" => float(),
        "MatchId" => String.t() | atom(),
        "MatchType" => list(any()),
        "NextToken" => String.t() | atom(),
        "ProfileIds" => list(String.t() | atom()),
        "RuleLevel" => integer()
      }

  """
  @type get_similar_profiles_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_integration_request() :: %{
        optional("EventTriggerNames") => list(String.t() | atom()),
        optional("FlowDefinition") => flow_definition(),
        optional("ObjectTypeName") => String.t() | atom(),
        optional("ObjectTypeNames") => map(),
        optional("RoleArn") => String.t() | atom(),
        optional("Scope") => list(any()),
        optional("Tags") => map(),
        optional("Uri") => String.t() | atom()
      }

  """
  @type put_integration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_upload_job_response() :: %{
        "CompletedAt" => non_neg_integer(),
        "CreatedAt" => non_neg_integer(),
        "DataExpiry" => integer(),
        "DisplayName" => String.t() | atom(),
        "Fields" => map(),
        "JobId" => String.t() | atom(),
        "ResultsSummary" => results_summary(),
        "Status" => list(any()),
        "StatusReason" => list(any()),
        "UniqueKey" => String.t() | atom()
      }

  """
  @type get_upload_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_domain_object_types_response() :: %{
        "Items" => list(domain_object_types_list_item()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_domain_object_types_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      event_parameters() :: %{
        "EventType" => String.t() | atom(),
        "EventValueThreshold" => float()
      }

  """
  @type event_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_domain_layout_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "DisplayName" => String.t() | atom(),
        "IsDefault" => boolean(),
        "LastUpdatedAt" => non_neg_integer(),
        "Layout" => String.t() | atom(),
        "LayoutDefinitionName" => String.t() | atom(),
        "LayoutType" => list(any()),
        "Tags" => map(),
        "Version" => String.t() | atom()
      }

  """
  @type create_domain_layout_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      flow_definition() :: %{
        "Description" => String.t() | atom(),
        "FlowName" => String.t() | atom(),
        "KmsArn" => String.t() | atom(),
        "SourceFlowConfig" => source_flow_config(),
        "Tasks" => list(task()),
        "TriggerConfig" => trigger_config()
      }

  """
  @type flow_definition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_object_type_attribute_statistics_percentiles() :: %{
        "P25" => float(),
        "P5" => float(),
        "P50" => float(),
        "P75" => float(),
        "P95" => float()
      }

  """
  @type get_object_type_attribute_statistics_percentiles() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_event_triggers_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_event_triggers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_rule_based_matches_response() :: %{
        "MatchIds" => list(String.t() | atom()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_rule_based_matches_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      appflow_integration_workflow_attributes() :: %{
        "ConnectorProfileName" => String.t() | atom(),
        "RoleArn" => String.t() | atom(),
        "SourceConnectorType" => list(any())
      }

  """
  @type appflow_integration_workflow_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      add_profile_key_response() :: %{
        "KeyName" => String.t() | atom(),
        "Values" => list(String.t() | atom())
      }

  """
  @type add_profile_key_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter_group() :: %{
        "Dimensions" => list(filter_dimension()),
        "Type" => list(any())
      }

  """
  @type filter_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_identity_resolution_jobs_response() :: %{
        "IdentityResolutionJobsList" => list(identity_resolution_job()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_identity_resolution_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_calculated_attribute_for_profile_error() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom(),
        "ProfileId" => String.t() | atom()
      }

  """
  @type batch_get_calculated_attribute_for_profile_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      condition_overrides() :: %{
        "Range" => range_override()
      }

  """
  @type condition_overrides() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      catalog_item() :: %{
        "AdditionalInformation" => String.t() | atom(),
        "Attributes" => map(),
        "Category" => String.t() | atom(),
        "Code" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "ImageLink" => String.t() | atom(),
        "Link" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "Price" => String.t() | atom(),
        "Type" => String.t() | atom(),
        "UpdatedAt" => non_neg_integer()
      }

  """
  @type catalog_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      matching_rule() :: %{
        "Rule" => list(String.t() | atom())
      }

  """
  @type matching_rule() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      attribute_value_item() :: %{
        "Value" => String.t() | atom()
      }

  """
  @type attribute_value_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_integration_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "DomainName" => String.t() | atom(),
        "EventTriggerNames" => list(String.t() | atom()),
        "IsUnstructured" => boolean(),
        "LastUpdatedAt" => non_neg_integer(),
        "ObjectTypeName" => String.t() | atom(),
        "ObjectTypeNames" => map(),
        "RoleArn" => String.t() | atom(),
        "Scope" => list(any()),
        "Tags" => map(),
        "Uri" => String.t() | atom(),
        "WorkflowId" => String.t() | atom()
      }

  """
  @type put_integration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      zendesk_source_properties() :: %{
        "Object" => String.t() | atom()
      }

  """
  @type zendesk_source_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_integration_workflow_request() :: %{
        optional("Tags") => map(),
        required("IntegrationConfig") => integration_config(),
        required("ObjectTypeName") => String.t() | atom(),
        required("RoleArn") => String.t() | atom(),
        required("WorkflowType") => list(any())
      }

  """
  @type create_integration_workflow_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_identity_resolution_job_response() :: %{
        "AutoMerging" => auto_merging(),
        "DomainName" => String.t() | atom(),
        "ExportingLocation" => exporting_location(),
        "JobEndTime" => non_neg_integer(),
        "JobExpirationTime" => non_neg_integer(),
        "JobId" => String.t() | atom(),
        "JobStartTime" => non_neg_integer(),
        "JobStats" => job_stats(),
        "LastUpdatedAt" => non_neg_integer(),
        "Message" => String.t() | atom(),
        "Status" => list(any())
      }

  """
  @type get_identity_resolution_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_similar_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("MatchType") => list(any()),
        required("SearchKey") => String.t() | atom(),
        required("SearchValue") => String.t() | atom()
      }

  """
  @type get_similar_profiles_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      trigger_properties() :: %{
        "Scheduled" => scheduled_trigger_properties()
      }

  """
  @type trigger_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_upload_job_path_request() :: %{}

  """
  @type get_upload_job_path_request() :: %{}

  @typedoc """

  ## Example:

      list_event_triggers_response() :: %{
        "Items" => list(event_trigger_summary_item()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_event_triggers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_profile_history_record_request() :: %{}

  """
  @type get_profile_history_record_request() :: %{}

  @typedoc """

  ## Example:

      range_override() :: %{
        "End" => integer(),
        "Start" => integer(),
        "Unit" => list(any())
      }

  """
  @type range_override() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_calculated_attribute_definition_request() :: %{}

  """
  @type get_calculated_attribute_definition_request() :: %{}

  @typedoc """

  ## Example:

      get_workflow_request() :: %{}

  """
  @type get_workflow_request() :: %{}

  @typedoc """

  ## Example:

      create_calculated_attribute_definition_request() :: %{
        optional("Conditions") => conditions(),
        optional("Description") => String.t() | atom(),
        optional("DisplayName") => String.t() | atom(),
        optional("Filter") => filter(),
        optional("Tags") => map(),
        optional("UseHistoricalData") => boolean(),
        required("AttributeDetails") => attribute_details(),
        required("Statistic") => list(any())
      }

  """
  @type create_calculated_attribute_definition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_calculated_attribute_definition_item() :: %{
        "CalculatedAttributeName" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "DisplayName" => String.t() | atom(),
        "LastUpdatedAt" => non_neg_integer(),
        "Status" => list(any()),
        "Tags" => map(),
        "UseHistoricalData" => boolean()
      }

  """
  @type list_calculated_attribute_definition_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_integrations_request() :: %{
        optional("IncludeHidden") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_integrations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_calculated_attribute_definition_response() :: %{}

  """
  @type delete_calculated_attribute_definition_response() :: %{}

  @typedoc """

  ## Example:

      recommender_summary() :: %{
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "FailureReason" => [String.t() | atom()],
        "LastUpdatedAt" => non_neg_integer(),
        "LatestRecommenderUpdate" => recommender_update(),
        "RecipeName" => list(any()),
        "RecommenderConfig" => recommender_config(),
        "RecommenderName" => String.t() | atom(),
        "Status" => list(any()),
        "Tags" => map()
      }

  """
  @type recommender_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workflow_step_item() :: %{
        "AppflowIntegration" => appflow_integration_workflow_step()
      }

  """
  @type workflow_step_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      object_type_field() :: %{
        "ContentType" => list(any()),
        "Source" => String.t() | atom(),
        "Target" => String.t() | atom()
      }

  """
  @type object_type_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_recommender_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("RecommenderConfig") => recommender_config()
      }

  """
  @type update_recommender_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_domain_item() :: %{
        "CreatedAt" => non_neg_integer(),
        "DomainName" => String.t() | atom(),
        "LastUpdatedAt" => non_neg_integer(),
        "Tags" => map()
      }

  """
  @type list_domain_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_address() :: %{
        "Address1" => String.t() | atom(),
        "Address2" => String.t() | atom(),
        "Address3" => String.t() | atom(),
        "Address4" => String.t() | atom(),
        "City" => String.t() | atom(),
        "Country" => String.t() | atom(),
        "County" => String.t() | atom(),
        "PostalCode" => String.t() | atom(),
        "Province" => String.t() | atom(),
        "State" => String.t() | atom()
      }

  """
  @type update_address() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_object_type_attributes_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_object_type_attributes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_object_type_attribute_item() :: %{
        "AttributeName" => String.t() | atom(),
        "LastUpdatedAt" => non_neg_integer()
      }

  """
  @type list_object_type_attribute_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_integration_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "DomainName" => String.t() | atom(),
        "EventTriggerNames" => list(String.t() | atom()),
        "IsUnstructured" => boolean(),
        "LastUpdatedAt" => non_neg_integer(),
        "ObjectTypeName" => String.t() | atom(),
        "ObjectTypeNames" => map(),
        "RoleArn" => String.t() | atom(),
        "Scope" => list(any()),
        "Tags" => map(),
        "Uri" => String.t() | atom(),
        "WorkflowId" => String.t() | atom()
      }

  """
  @type get_integration_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_profile_object_response() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type delete_profile_object_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_domain_request() :: %{}

  """
  @type delete_domain_request() :: %{}

  @typedoc """

  ## Example:

      delete_profile_key_request() :: %{
        required("KeyName") => String.t() | atom(),
        required("ProfileId") => String.t() | atom(),
        required("Values") => list(String.t() | atom())
      }

  """
  @type delete_profile_key_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      calculated_attribute_dimension() :: %{
        "ConditionOverrides" => condition_overrides(),
        "DimensionType" => list(any()),
        "Values" => list(String.t() | atom())
      }

  """
  @type calculated_attribute_dimension() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      workflow_attributes() :: %{
        "AppflowIntegration" => appflow_integration_workflow_attributes()
      }

  """
  @type workflow_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      match_item() :: %{
        "ConfidenceScore" => float(),
        "MatchId" => String.t() | atom(),
        "ProfileIds" => list(String.t() | atom())
      }

  """
  @type match_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_profile_request() :: %{
        optional("AccountNumber") => String.t() | atom(),
        optional("AdditionalInformation") => String.t() | atom(),
        optional("Address") => address(),
        optional("Attributes") => map(),
        optional("BillingAddress") => address(),
        optional("BirthDate") => String.t() | atom(),
        optional("BusinessEmailAddress") => String.t() | atom(),
        optional("BusinessName") => String.t() | atom(),
        optional("BusinessPhoneNumber") => String.t() | atom(),
        optional("EmailAddress") => String.t() | atom(),
        optional("EngagementPreferences") => engagement_preferences(),
        optional("FirstName") => String.t() | atom(),
        optional("Gender") => list(any()),
        optional("GenderString") => String.t() | atom(),
        optional("HomePhoneNumber") => String.t() | atom(),
        optional("LastName") => String.t() | atom(),
        optional("MailingAddress") => address(),
        optional("MiddleName") => String.t() | atom(),
        optional("MobilePhoneNumber") => String.t() | atom(),
        optional("PartyType") => list(any()),
        optional("PartyTypeString") => String.t() | atom(),
        optional("PersonalEmailAddress") => String.t() | atom(),
        optional("PhoneNumber") => String.t() | atom(),
        optional("ProfileType") => list(any()),
        optional("ShippingAddress") => address()
      }

  """
  @type create_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_workflow_response() :: %{}

  """
  @type delete_workflow_response() :: %{}

  @typedoc """

  ## Example:

      get_profile_recommendations_request() :: %{
        optional("Context") => map(),
        optional("MaxResults") => integer(),
        required("RecommenderName") => String.t() | atom()
      }

  """
  @type get_profile_recommendations_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_segment_definition_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "DisplayName" => String.t() | atom(),
        "SegmentDefinitionArn" => String.t() | atom(),
        "SegmentDefinitionName" => String.t() | atom(),
        "SegmentGroups" => segment_group(),
        "SegmentSqlQuery" => String.t() | atom(),
        "SegmentType" => list(any()),
        "Tags" => map()
      }

  """
  @type get_segment_definition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_based_matching_response() :: %{
        "AttributeTypesSelector" => attribute_types_selector(),
        "ConflictResolution" => conflict_resolution(),
        "Enabled" => boolean(),
        "ExportingConfig" => exporting_config(),
        "MatchingRules" => list(matching_rule()),
        "MaxAllowedRuleLevelForMatching" => integer(),
        "MaxAllowedRuleLevelForMerging" => integer(),
        "Status" => list(any())
      }

  """
  @type rule_based_matching_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      domain_object_type_field() :: %{
        "ContentType" => list(any()),
        "FeatureType" => list(any()),
        "Source" => String.t() | atom(),
        "Target" => String.t() | atom()
      }

  """
  @type domain_object_type_field() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_calculated_attribute_definition_response() :: %{
        "AttributeDetails" => attribute_details(),
        "CalculatedAttributeName" => String.t() | atom(),
        "Conditions" => conditions(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "DisplayName" => String.t() | atom(),
        "LastUpdatedAt" => non_neg_integer(),
        "Readiness" => readiness(),
        "Statistic" => list(any()),
        "Status" => list(any()),
        "Tags" => map(),
        "UseHistoricalData" => boolean()
      }

  """
  @type update_calculated_attribute_definition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      additional_search_key() :: %{
        "KeyName" => String.t() | atom(),
        "Values" => list(String.t() | atom())
      }

  """
  @type additional_search_key() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      profile_query_failures() :: %{
        "Message" => String.t() | atom(),
        "ProfileId" => String.t() | atom(),
        "Status" => integer()
      }

  """
  @type profile_query_failures() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      segment_group_structure() :: %{
        "Groups" => list(group()),
        "Include" => list(any())
      }

  """
  @type segment_group_structure() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_integration_request() :: %{
        required("Uri") => String.t() | atom()
      }

  """
  @type delete_integration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_upload_job_request() :: %{}

  """
  @type stop_upload_job_request() :: %{}

  @typedoc """

  ## Example:

      create_domain_request() :: %{
        optional("DataStore") => data_store_request(),
        optional("DeadLetterQueueUrl") => String.t() | atom(),
        optional("DefaultEncryptionKey") => String.t() | atom(),
        optional("Matching") => matching_request(),
        optional("RuleBasedMatching") => rule_based_matching_request(),
        optional("Tags") => map(),
        required("DefaultExpirationDays") => integer()
      }

  """
  @type create_domain_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_profile_request() :: %{
        optional("AccountNumber") => String.t() | atom(),
        optional("AdditionalInformation") => String.t() | atom(),
        optional("Address") => update_address(),
        optional("Attributes") => map(),
        optional("BillingAddress") => update_address(),
        optional("BirthDate") => String.t() | atom(),
        optional("BusinessEmailAddress") => String.t() | atom(),
        optional("BusinessName") => String.t() | atom(),
        optional("BusinessPhoneNumber") => String.t() | atom(),
        optional("EmailAddress") => String.t() | atom(),
        optional("EngagementPreferences") => engagement_preferences(),
        optional("FirstName") => String.t() | atom(),
        optional("Gender") => list(any()),
        optional("GenderString") => String.t() | atom(),
        optional("HomePhoneNumber") => String.t() | atom(),
        optional("LastName") => String.t() | atom(),
        optional("MailingAddress") => update_address(),
        optional("MiddleName") => String.t() | atom(),
        optional("MobilePhoneNumber") => String.t() | atom(),
        optional("PartyType") => list(any()),
        optional("PartyTypeString") => String.t() | atom(),
        optional("PersonalEmailAddress") => String.t() | atom(),
        optional("PhoneNumber") => String.t() | atom(),
        optional("ProfileType") => list(any()),
        optional("ShippingAddress") => update_address(),
        required("ProfileId") => String.t() | atom()
      }

  """
  @type update_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_calculated_attribute_for_profile_response() :: %{
        "CalculatedAttributeName" => String.t() | atom(),
        "DisplayName" => String.t() | atom(),
        "IsDataPartial" => String.t() | atom(),
        "LastObjectTimestamp" => non_neg_integer(),
        "Value" => String.t() | atom()
      }

  """
  @type get_calculated_attribute_for_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      engagement_preferences() :: %{
        "Email" => list(contact_preference()),
        "Phone" => list(contact_preference())
      }

  """
  @type engagement_preferences() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_rule_based_matches_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_rule_based_matches_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_event_trigger_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("EventTriggerLimits") => event_trigger_limits(),
        optional("SegmentFilter") => String.t() | atom(),
        optional("Tags") => map(),
        required("EventTriggerConditions") => list(event_trigger_condition()),
        required("ObjectTypeName") => String.t() | atom()
      }

  """
  @type create_event_trigger_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      profile_dimension() :: %{
        "DimensionType" => list(any()),
        "Values" => list(String.t() | atom())
      }

  """
  @type profile_dimension() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_calculated_attribute_for_profile_response() :: %{
        "CalculatedAttributeValues" => list(calculated_attribute_value()),
        "ConditionOverrides" => condition_overrides(),
        "Errors" => list(batch_get_calculated_attribute_for_profile_error())
      }

  """
  @type batch_get_calculated_attribute_for_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_event_streams_response() :: %{
        "Items" => list(event_stream_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_event_streams_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_object_type_attributes_response() :: %{
        "Items" => list(list_object_type_attribute_item()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_object_type_attributes_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_profile_objects_response() :: %{
        "Items" => list(list_profile_objects_item()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_profile_objects_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_recommender_request() :: %{}

  """
  @type delete_recommender_request() :: %{}

  @typedoc """

  ## Example:

      delete_domain_object_type_response() :: %{}

  """
  @type delete_domain_object_type_response() :: %{}

  @typedoc """

  ## Example:

      recommendation() :: %{
        "CatalogItem" => catalog_item(),
        "Score" => float()
      }

  """
  @type recommendation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_workflows_item() :: %{
        "CreatedAt" => non_neg_integer(),
        "LastUpdatedAt" => non_neg_integer(),
        "Status" => list(any()),
        "StatusDescription" => String.t() | atom(),
        "WorkflowId" => String.t() | atom(),
        "WorkflowType" => list(any())
      }

  """
  @type list_workflows_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      merge_profiles_request() :: %{
        optional("FieldSourceProfileIds") => field_source_profile_ids(),
        required("MainProfileId") => String.t() | atom(),
        required("ProfileIdsToBeMerged") => list(String.t() | atom())
      }

  """
  @type merge_profiles_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      appflow_integration_workflow_metrics() :: %{
        "RecordsProcessed" => float(),
        "StepsCompleted" => float(),
        "TotalSteps" => float()
      }

  """
  @type appflow_integration_workflow_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_event_trigger_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "EventTriggerConditions" => list(event_trigger_condition()),
        "EventTriggerLimits" => event_trigger_limits(),
        "EventTriggerName" => String.t() | atom(),
        "LastUpdatedAt" => non_neg_integer(),
        "ObjectTypeName" => String.t() | atom(),
        "SegmentFilter" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type get_event_trigger_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_domains_response() :: %{
        "Items" => list(list_domain_item()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_domains_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_upload_job_response() :: %{
        "JobId" => String.t() | atom()
      }

  """
  @type create_upload_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_profile_object_type_template_response() :: %{
        "AllowProfileCreation" => boolean(),
        "Fields" => map(),
        "Keys" => map(),
        "SourceLastUpdatedTimestampFormat" => String.t() | atom(),
        "SourceName" => String.t() | atom(),
        "SourceObject" => String.t() | atom(),
        "TemplateId" => String.t() | atom()
      }

  """
  @type get_profile_object_type_template_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_object_type_attribute_values_item() :: %{
        "LastUpdatedAt" => non_neg_integer(),
        "Value" => String.t() | atom()
      }

  """
  @type list_object_type_attribute_values_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_profile_response() :: %{
        "ProfileId" => String.t() | atom()
      }

  """
  @type create_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_matches_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type get_matches_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_profile_object_types_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_profile_object_types_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_workflows_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("QueryEndDate") => non_neg_integer(),
        optional("QueryStartDate") => non_neg_integer(),
        optional("Status") => list(any()),
        optional("WorkflowType") => list(any())
      }

  """
  @type list_workflows_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_profile_response() :: %{
        "Errors" => list(batch_get_profile_error()),
        "Profiles" => list(profile())
      }

  """
  @type batch_get_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_object_type_attribute_statistics_response() :: %{
        "CalculatedAt" => non_neg_integer(),
        "Statistics" => get_object_type_attribute_statistics_stats()
      }

  """
  @type get_object_type_attribute_statistics_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_recommender_recipes_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_recommender_recipes_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      exporting_config() :: %{
        "S3Exporting" => s3_exporting_config()
      }

  """
  @type exporting_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_store_response() :: %{
        "Enabled" => boolean(),
        "Readiness" => readiness()
      }

  """
  @type data_store_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      destination_summary() :: %{
        "Status" => list(any()),
        "UnhealthySince" => non_neg_integer(),
        "Uri" => String.t() | atom()
      }

  """
  @type destination_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_recommender_response() :: %{}

  """
  @type delete_recommender_response() :: %{}

  @typedoc """

  ## Example:

      update_domain_layout_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "DisplayName" => String.t() | atom(),
        "IsDefault" => boolean(),
        "LastUpdatedAt" => non_neg_integer(),
        "Layout" => String.t() | atom(),
        "LayoutDefinitionName" => String.t() | atom(),
        "LayoutType" => list(any()),
        "Tags" => map(),
        "Version" => String.t() | atom()
      }

  """
  @type update_domain_layout_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_event_stream_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "DestinationDetails" => event_stream_destination_details(),
        "DomainName" => String.t() | atom(),
        "EventStreamArn" => String.t() | atom(),
        "State" => list(any()),
        "StoppedSince" => non_neg_integer(),
        "Tags" => map()
      }

  """
  @type get_event_stream_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_exporting_location() :: %{
        "S3BucketName" => String.t() | atom(),
        "S3KeyName" => String.t() | atom()
      }

  """
  @type s3_exporting_location() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_segment_definition_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "DisplayName" => String.t() | atom(),
        "SegmentDefinitionArn" => String.t() | atom(),
        "SegmentDefinitionName" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type create_segment_definition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      matching_response() :: %{
        "AutoMerging" => auto_merging(),
        "Enabled" => boolean(),
        "ExportingConfig" => exporting_config(),
        "JobSchedule" => job_schedule()
      }

  """
  @type matching_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conditions() :: %{
        "ObjectCount" => integer(),
        "Range" => range(),
        "Threshold" => threshold()
      }

  """
  @type conditions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      source_segment() :: %{
        "SegmentDefinitionName" => String.t() | atom()
      }

  """
  @type source_segment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_recommender_request() :: %{}

  """
  @type start_recommender_request() :: %{}

  @typedoc """

  ## Example:

      stop_recommender_response() :: %{}

  """
  @type stop_recommender_response() :: %{}

  @typedoc """

  ## Example:

      list_domain_object_types_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_domain_object_types_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_auto_merging_preview_request() :: %{
        optional("MinAllowedConfidenceScoreForMerging") => float(),
        required("ConflictResolution") => conflict_resolution(),
        required("Consolidation") => consolidation()
      }

  """
  @type get_auto_merging_preview_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      recommender_update() :: %{
        "CreatedAt" => non_neg_integer(),
        "FailureReason" => [String.t() | atom()],
        "LastUpdatedAt" => non_neg_integer(),
        "RecommenderConfig" => recommender_config(),
        "Status" => list(any())
      }

  """
  @type recommender_update() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      source_connector_properties() :: %{
        "Marketo" => marketo_source_properties(),
        "S3" => s3_source_properties(),
        "Salesforce" => salesforce_source_properties(),
        "ServiceNow" => service_now_source_properties(),
        "Zendesk" => zendesk_source_properties()
      }

  """
  @type source_connector_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_upload_job_response() :: %{}

  """
  @type start_upload_job_response() :: %{}

  @typedoc """

  ## Example:

      training_metrics() :: %{
        "Metrics" => map(),
        "Time" => non_neg_integer()
      }

  """
  @type training_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      events_config() :: %{
        "EventParametersList" => list(event_parameters())
      }

  """
  @type events_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_integration_request() :: %{
        required("Uri") => String.t() | atom()
      }

  """
  @type get_integration_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      event_trigger_dimension() :: %{
        "ObjectAttributes" => list(object_attribute())
      }

  """
  @type event_trigger_dimension() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_calculated_attribute_definitions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_calculated_attribute_definitions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      consolidation() :: %{
        "MatchingAttributesList" => list(list(String.t() | atom())())
      }

  """
  @type consolidation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_domain_layout_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("DisplayName") => String.t() | atom(),
        optional("IsDefault") => boolean(),
        optional("Layout") => String.t() | atom(),
        optional("LayoutType") => list(any())
      }

  """
  @type update_domain_layout_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      rule_based_matching_request() :: %{
        "AttributeTypesSelector" => attribute_types_selector(),
        "ConflictResolution" => conflict_resolution(),
        "Enabled" => boolean(),
        "ExportingConfig" => exporting_config(),
        "MatchingRules" => list(matching_rule()),
        "MaxAllowedRuleLevelForMatching" => integer(),
        "MaxAllowedRuleLevelForMerging" => integer()
      }

  """
  @type rule_based_matching_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      object_type_key() :: %{
        "FieldNames" => list(String.t() | atom()),
        "StandardIdentifiers" => list(list(any())())
      }

  """
  @type object_type_key() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_matches_response() :: %{
        "MatchGenerationDate" => non_neg_integer(),
        "Matches" => list(match_item()),
        "NextToken" => String.t() | atom(),
        "PotentialMatches" => integer()
      }

  """
  @type get_matches_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_upload_job_request() :: %{}

  """
  @type start_upload_job_request() :: %{}

  @typedoc """

  ## Example:

      update_event_trigger_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "EventTriggerConditions" => list(event_trigger_condition()),
        "EventTriggerLimits" => event_trigger_limits(),
        "EventTriggerName" => String.t() | atom(),
        "LastUpdatedAt" => non_neg_integer(),
        "ObjectTypeName" => String.t() | atom(),
        "SegmentFilter" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type update_event_trigger_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_segment_snapshot_response() :: %{
        "SnapshotId" => String.t() | atom()
      }

  """
  @type create_segment_snapshot_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter() :: %{
        "Groups" => list(filter_group()),
        "Include" => list(any())
      }

  """
  @type filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_segment_snapshot_response() :: %{
        "DataFormat" => list(any()),
        "DestinationUri" => String.t() | atom(),
        "EncryptionKey" => String.t() | atom(),
        "RoleArn" => String.t() | atom(),
        "SnapshotId" => String.t() | atom(),
        "Status" => list(any()),
        "StatusMessage" => String.t() | atom()
      }

  """
  @type get_segment_snapshot_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_profile_objects_item() :: %{
        "Object" => String.t() | atom(),
        "ObjectTypeName" => String.t() | atom(),
        "ProfileObjectUniqueKey" => String.t() | atom()
      }

  """
  @type list_profile_objects_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_calculated_attributes_for_profile_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_calculated_attributes_for_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_domain_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "DataStore" => data_store_response(),
        "DeadLetterQueueUrl" => String.t() | atom(),
        "DefaultEncryptionKey" => String.t() | atom(),
        "DefaultExpirationDays" => integer(),
        "DomainName" => String.t() | atom(),
        "LastUpdatedAt" => non_neg_integer(),
        "Matching" => matching_response(),
        "RuleBasedMatching" => rule_based_matching_response(),
        "Stats" => domain_stats(),
        "Tags" => map()
      }

  """
  @type get_domain_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      field_source_profile_ids() :: %{
        "AccountNumber" => String.t() | atom(),
        "AdditionalInformation" => String.t() | atom(),
        "Address" => String.t() | atom(),
        "Attributes" => map(),
        "BillingAddress" => String.t() | atom(),
        "BirthDate" => String.t() | atom(),
        "BusinessEmailAddress" => String.t() | atom(),
        "BusinessName" => String.t() | atom(),
        "BusinessPhoneNumber" => String.t() | atom(),
        "EmailAddress" => String.t() | atom(),
        "EngagementPreferences" => String.t() | atom(),
        "FirstName" => String.t() | atom(),
        "Gender" => String.t() | atom(),
        "HomePhoneNumber" => String.t() | atom(),
        "LastName" => String.t() | atom(),
        "MailingAddress" => String.t() | atom(),
        "MiddleName" => String.t() | atom(),
        "MobilePhoneNumber" => String.t() | atom(),
        "PartyType" => String.t() | atom(),
        "PersonalEmailAddress" => String.t() | atom(),
        "PhoneNumber" => String.t() | atom(),
        "ProfileType" => String.t() | atom(),
        "ShippingAddress" => String.t() | atom()
      }

  """
  @type field_source_profile_ids() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      event_stream_destination_details() :: %{
        "Message" => String.t() | atom(),
        "Status" => list(any()),
        "UnhealthySince" => non_neg_integer(),
        "Uri" => String.t() | atom()
      }

  """
  @type event_stream_destination_details() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter_attribute_dimension() :: %{
        "DimensionType" => list(any()),
        "Values" => list(String.t() | atom())
      }

  """
  @type filter_attribute_dimension() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_profile_history_records_request() :: %{
        optional("ActionType") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ObjectTypeName") => String.t() | atom(),
        optional("PerformedBy") => String.t() | atom(),
        required("ProfileId") => String.t() | atom()
      }

  """
  @type list_profile_history_records_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      segment_group() :: %{
        "Groups" => list(group()),
        "Include" => list(any())
      }

  """
  @type segment_group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_event_trigger_request() :: %{}

  """
  @type delete_event_trigger_request() :: %{}

  @typedoc """

  ## Example:

      search_profiles_request() :: %{
        optional("AdditionalSearchKeys") => list(additional_search_key()),
        optional("LogicalOperator") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("KeyName") => String.t() | atom(),
        required("Values") => list(String.t() | atom())
      }

  """
  @type search_profiles_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_segment_definitions_response() :: %{
        "Items" => list(segment_definition_item()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_segment_definitions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_segment_estimate_response() :: %{
        "DomainName" => String.t() | atom(),
        "Estimate" => String.t() | atom(),
        "EstimateId" => String.t() | atom(),
        "Message" => String.t() | atom(),
        "Status" => list(any()),
        "StatusCode" => integer()
      }

  """
  @type get_segment_estimate_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_profile_object_type_request() :: %{}

  """
  @type get_profile_object_type_request() :: %{}

  @typedoc """

  ## Example:

      list_domains_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_domains_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_event_stream_request() :: %{}

  """
  @type get_event_stream_request() :: %{}

  @typedoc """

  ## Example:

      source_flow_config() :: %{
        "ConnectorProfileName" => String.t() | atom(),
        "ConnectorType" => list(any()),
        "IncrementalPullConfig" => incremental_pull_config(),
        "SourceConnectorProperties" => source_connector_properties()
      }

  """
  @type source_flow_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_event_trigger_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "EventTriggerConditions" => list(event_trigger_condition()),
        "EventTriggerLimits" => event_trigger_limits(),
        "EventTriggerName" => String.t() | atom(),
        "LastUpdatedAt" => non_neg_integer(),
        "ObjectTypeName" => String.t() | atom(),
        "SegmentFilter" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type create_event_trigger_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      recommender_recipe() :: %{
        "description" => [String.t() | atom()],
        "name" => list(any())
      }

  """
  @type recommender_recipe() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_recommender_response() :: %{
        "RecommenderArn" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type create_recommender_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_domain_object_type_request() :: %{}

  """
  @type get_domain_object_type_request() :: %{}

  @typedoc """

  ## Example:

      object_attribute() :: %{
        "ComparisonOperator" => list(any()),
        "FieldName" => String.t() | atom(),
        "Source" => String.t() | atom(),
        "Values" => list(String.t() | atom())
      }

  """
  @type object_attribute() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      value_range() :: %{
        "End" => integer(),
        "Start" => integer()
      }

  """
  @type value_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_segment_snapshot_request() :: %{}

  """
  @type get_segment_snapshot_request() :: %{}

  @typedoc """

  ## Example:

      stop_recommender_request() :: %{}

  """
  @type stop_recommender_request() :: %{}

  @typedoc """

  ## Example:

      salesforce_source_properties() :: %{
        "EnableDynamicFieldUpdate" => boolean(),
        "IncludeDeletedRecords" => boolean(),
        "Object" => String.t() | atom()
      }

  """
  @type salesforce_source_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workflow_steps_response() :: %{
        "Items" => list(workflow_step_item()),
        "NextToken" => String.t() | atom(),
        "WorkflowId" => String.t() | atom(),
        "WorkflowType" => list(any())
      }

  """
  @type get_workflow_steps_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_domain_object_type_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("EncryptionKey") => String.t() | atom(),
        optional("Tags") => map(),
        required("Fields") => map()
      }

  """
  @type put_domain_object_type_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_domain_layout_request() :: %{
        optional("IsDefault") => boolean(),
        optional("Tags") => map(),
        required("Description") => String.t() | atom(),
        required("DisplayName") => String.t() | atom(),
        required("Layout") => String.t() | atom(),
        required("LayoutType") => list(any())
      }

  """
  @type create_domain_layout_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_calculated_attributes_for_profile_response() :: %{
        "Items" => list(list_calculated_attribute_for_profile_item()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_calculated_attributes_for_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workflow_steps_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type get_workflow_steps_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_segment_membership_request() :: %{
        required("ProfileIds") => list(String.t() | atom())
      }

  """
  @type get_segment_membership_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_calculated_attribute_definition_request() :: %{}

  """
  @type delete_calculated_attribute_definition_request() :: %{}

  @typedoc """

  ## Example:

      filter_dimension() :: %{
        "Attributes" => map()
      }

  """
  @type filter_dimension() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_auto_merging_preview_response() :: %{
        "DomainName" => String.t() | atom(),
        "NumberOfMatchesInSample" => float(),
        "NumberOfProfilesInSample" => float(),
        "NumberOfProfilesWillBeMerged" => float()
      }

  """
  @type get_auto_merging_preview_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_profiles_response() :: %{
        "Items" => list(profile()),
        "NextToken" => String.t() | atom()
      }

  """
  @type search_profiles_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_integration_workflow_response() :: %{
        "Message" => String.t() | atom(),
        "WorkflowId" => String.t() | atom()
      }

  """
  @type create_integration_workflow_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_calculated_attribute_definition_request() :: %{
        optional("Conditions") => conditions(),
        optional("Description") => String.t() | atom(),
        optional("DisplayName") => String.t() | atom()
      }

  """
  @type update_calculated_attribute_definition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_segment_definition_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("SegmentGroups") => segment_group(),
        optional("SegmentSqlQuery") => String.t() | atom(),
        optional("Tags") => map(),
        required("DisplayName") => String.t() | atom()
      }

  """
  @type create_segment_definition_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      identity_resolution_job() :: %{
        "DomainName" => String.t() | atom(),
        "ExportingLocation" => exporting_location(),
        "JobEndTime" => non_neg_integer(),
        "JobId" => String.t() | atom(),
        "JobStartTime" => non_neg_integer(),
        "JobStats" => job_stats(),
        "Message" => String.t() | atom(),
        "Status" => list(any())
      }

  """
  @type identity_resolution_job() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_calculated_attribute_for_profile_request() :: %{
        optional("ConditionOverrides") => condition_overrides(),
        required("ProfileIds") => list(String.t() | atom())
      }

  """
  @type batch_get_calculated_attribute_for_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_event_stream_response() :: %{}

  """
  @type delete_event_stream_response() :: %{}

  @typedoc """

  ## Example:

      attribute_types_selector() :: %{
        "Address" => list(String.t() | atom()),
        "AttributeMatchingModel" => list(any()),
        "EmailAddress" => list(String.t() | atom()),
        "PhoneNumber" => list(String.t() | atom())
      }

  """
  @type attribute_types_selector() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      upload_job_item() :: %{
        "CompletedAt" => non_neg_integer(),
        "CreatedAt" => non_neg_integer(),
        "DataExpiry" => integer(),
        "DisplayName" => String.t() | atom(),
        "JobId" => String.t() | atom(),
        "Status" => list(any()),
        "StatusReason" => list(any())
      }

  """
  @type upload_job_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_recommenders_response() :: %{
        "NextToken" => String.t() | atom(),
        "Recommenders" => list(recommender_summary())
      }

  """
  @type list_recommenders_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_profile_response() :: %{
        "ProfileId" => String.t() | atom()
      }

  """
  @type update_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_upload_job_path_response() :: %{
        "ClientToken" => String.t() | atom(),
        "Url" => String.t() | atom(),
        "ValidUntil" => non_neg_integer()
      }

  """
  @type get_upload_job_path_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_profile_object_type_request() :: %{
        optional("AllowProfileCreation") => boolean(),
        optional("EncryptionKey") => String.t() | atom(),
        optional("ExpirationDays") => integer(),
        optional("Fields") => map(),
        optional("Keys") => map(),
        optional("MaxProfileObjectCount") => integer(),
        optional("SourceLastUpdatedTimestampFormat") => String.t() | atom(),
        optional("SourcePriority") => integer(),
        optional("Tags") => map(),
        optional("TemplateId") => String.t() | atom(),
        required("Description") => String.t() | atom()
      }

  """
  @type put_profile_object_type_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      recommender_config() :: %{
        "EventsConfig" => events_config(),
        "TrainingFrequency" => integer()
      }

  """
  @type recommender_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch() :: %{
        "EndTime" => non_neg_integer(),
        "StartTime" => non_neg_integer()
      }

  """
  @type batch() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      get_segment_membership_response() :: %{
        "Failures" => list(profile_query_failures()),
        "LastComputedAt" => non_neg_integer(),
        "Profiles" => list(profile_query_result()),
        "SegmentDefinitionName" => String.t() | atom()
      }

  """
  @type get_segment_membership_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      contact_preference() :: %{
        "ContactType" => list(any()),
        "KeyName" => String.t() | atom(),
        "KeyValue" => String.t() | atom(),
        "ProfileId" => String.t() | atom()
      }

  """
  @type contact_preference() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      s3_exporting_config() :: %{
        "S3BucketName" => String.t() | atom(),
        "S3KeyName" => String.t() | atom()
      }

  """
  @type s3_exporting_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      attribute_dimension() :: %{
        "DimensionType" => list(any()),
        "Values" => list(String.t() | atom())
      }

  """
  @type attribute_dimension() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      group() :: %{
        "Dimensions" => list(list()),
        "SourceSegments" => list(source_segment()),
        "SourceType" => list(any()),
        "Type" => list(any())
      }

  """
  @type group() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_domain_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "DataStore" => data_store_response(),
        "DeadLetterQueueUrl" => String.t() | atom(),
        "DefaultEncryptionKey" => String.t() | atom(),
        "DefaultExpirationDays" => integer(),
        "DomainName" => String.t() | atom(),
        "LastUpdatedAt" => non_neg_integer(),
        "Matching" => matching_response(),
        "RuleBasedMatching" => rule_based_matching_response(),
        "Tags" => map()
      }

  """
  @type create_domain_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_profile_objects_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ObjectFilter") => object_filter(),
        required("ObjectTypeName") => String.t() | atom(),
        required("ProfileId") => String.t() | atom()
      }

  """
  @type list_profile_objects_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_upload_job_request() :: %{
        optional("DataExpiry") => integer(),
        required("DisplayName") => String.t() | atom(),
        required("Fields") => map(),
        required("UniqueKey") => String.t() | atom()
      }

  """
  @type create_upload_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_profile_object_type_templates_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_profile_object_type_templates_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      event_trigger_summary_item() :: %{
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "EventTriggerName" => String.t() | atom(),
        "LastUpdatedAt" => non_neg_integer(),
        "ObjectTypeName" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type event_trigger_summary_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_event_stream_request() :: %{
        optional("Tags") => map(),
        required("Uri") => String.t() | atom()
      }

  """
  @type create_event_stream_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_recommender_recipes_response() :: %{
        "NextToken" => String.t() | atom(),
        "RecommenderRecipes" => list(recommender_recipe())
      }

  """
  @type list_recommender_recipes_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      threshold() :: %{
        "Operator" => list(any()),
        "Value" => String.t() | atom()
      }

  """
  @type threshold() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_profile_history_record_response() :: %{
        "ActionType" => list(any()),
        "Content" => String.t() | atom(),
        "CreatedAt" => non_neg_integer(),
        "Id" => String.t() | atom(),
        "LastUpdatedAt" => non_neg_integer(),
        "ObjectTypeName" => String.t() | atom(),
        "PerformedBy" => String.t() | atom(),
        "ProfileObjectUniqueKey" => String.t() | atom()
      }

  """
  @type get_profile_history_record_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_store_request() :: %{
        "Enabled" => boolean()
      }

  """
  @type data_store_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      detected_profile_object_type() :: %{
        "Fields" => map(),
        "Keys" => map(),
        "SourceLastUpdatedTimestampFormat" => String.t() | atom()
      }

  """
  @type detected_profile_object_type() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_upload_jobs_response() :: %{
        "Items" => list(upload_job_item()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_upload_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_profile_request() :: %{
        required("ProfileIds") => list(String.t() | atom())
      }

  """
  @type batch_get_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_segment_definition_response() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type delete_segment_definition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_profile_object_type_request() :: %{}

  """
  @type delete_profile_object_type_request() :: %{}

  @typedoc """

  ## Example:

      update_event_trigger_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("EventTriggerConditions") => list(event_trigger_condition()),
        optional("EventTriggerLimits") => event_trigger_limits(),
        optional("ObjectTypeName") => String.t() | atom(),
        optional("SegmentFilter") => String.t() | atom()
      }

  """
  @type update_event_trigger_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type bad_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      period() :: %{
        "MaxInvocationsPerProfile" => integer(),
        "Unit" => list(any()),
        "Unlimited" => boolean(),
        "Value" => integer()
      }

  """
  @type period() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      connector_operator() :: %{
        "Marketo" => list(any()),
        "S3" => list(any()),
        "Salesforce" => list(any()),
        "ServiceNow" => list(any()),
        "Zendesk" => list(any())
      }

  """
  @type connector_operator() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      profile_attribute_values_request() :: %{}

  """
  @type profile_attribute_values_request() :: %{}

  @typedoc """

  ## Example:

      get_event_trigger_request() :: %{}

  """
  @type get_event_trigger_request() :: %{}

  @typedoc """

  ## Example:

      put_profile_object_request() :: %{
        required("Object") => String.t() | atom(),
        required("ObjectTypeName") => String.t() | atom()
      }

  """
  @type put_profile_object_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_profile_history_records_response() :: %{
        "NextToken" => String.t() | atom(),
        "ProfileHistoryRecords" => list(profile_history_record())
      }

  """
  @type list_profile_history_records_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_event_stream_request() :: %{}

  """
  @type delete_event_stream_request() :: %{}

  @typedoc """

  ## Example:

      layout_item() :: %{
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "DisplayName" => String.t() | atom(),
        "IsDefault" => boolean(),
        "LastUpdatedAt" => non_neg_integer(),
        "LayoutDefinitionName" => String.t() | atom(),
        "LayoutType" => list(any()),
        "Tags" => map()
      }

  """
  @type layout_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      appflow_integration() :: %{
        "Batches" => list(batch()),
        "FlowDefinition" => flow_definition()
      }

  """
  @type appflow_integration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_domain_layouts_response() :: %{
        "Items" => list(layout_item()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_domain_layouts_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_calculated_attribute_for_profile_item() :: %{
        "CalculatedAttributeName" => String.t() | atom(),
        "DisplayName" => String.t() | atom(),
        "IsDataPartial" => String.t() | atom(),
        "LastObjectTimestamp" => non_neg_integer(),
        "Value" => String.t() | atom()
      }

  """
  @type list_calculated_attribute_for_profile_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_event_streams_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_event_streams_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      address() :: %{
        "Address1" => String.t() | atom(),
        "Address2" => String.t() | atom(),
        "Address3" => String.t() | atom(),
        "Address4" => String.t() | atom(),
        "City" => String.t() | atom(),
        "Country" => String.t() | atom(),
        "County" => String.t() | atom(),
        "PostalCode" => String.t() | atom(),
        "Province" => String.t() | atom(),
        "State" => String.t() | atom()
      }

  """
  @type address() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      profile_attribute_values_response() :: %{
        "AttributeName" => String.t() | atom(),
        "DomainName" => String.t() | atom(),
        "Items" => list(attribute_value_item()),
        "StatusCode" => integer()
      }

  """
  @type profile_attribute_values_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_profile_object_request() :: %{
        required("ObjectTypeName") => String.t() | atom(),
        required("ProfileId") => String.t() | atom(),
        required("ProfileObjectUniqueKey") => String.t() | atom()
      }

  """
  @type delete_profile_object_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_calculated_attribute_definitions_response() :: %{
        "Items" => list(list_calculated_attribute_definition_item()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_calculated_attribute_definitions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_segment_estimate_request() :: %{}

  """
  @type get_segment_estimate_request() :: %{}

  @typedoc """

  ## Example:

      list_workflows_response() :: %{
        "Items" => list(list_workflows_item()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_workflows_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      readiness() :: %{
        "Message" => String.t() | atom(),
        "ProgressPercentage" => integer()
      }

  """
  @type readiness() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      extra_length_value_profile_dimension() :: %{
        "DimensionType" => list(any()),
        "Values" => list(String.t() | atom())
      }

  """
  @type extra_length_value_profile_dimension() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      domain_object_types_list_item() :: %{
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "LastUpdatedAt" => non_neg_integer(),
        "ObjectTypeName" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type domain_object_types_list_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      results_summary() :: %{
        "CreatedRecords" => float(),
        "FailedRecords" => float(),
        "UpdatedRecords" => float()
      }

  """
  @type results_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_segment_definition_request() :: %{}

  """
  @type get_segment_definition_request() :: %{}

  @typedoc """

  ## Example:

      list_profile_object_type_templates_response() :: %{
        "Items" => list(list_profile_object_type_template_item()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_profile_object_type_templates_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_profile_object_type_response() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type delete_profile_object_type_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_account_integrations_response() :: %{
        "Items" => list(list_integration_item()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_account_integrations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_now_source_properties() :: %{
        "Object" => String.t() | atom()
      }

  """
  @type service_now_source_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_recommender_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "FailureReason" => [String.t() | atom()],
        "LastUpdatedAt" => non_neg_integer(),
        "LatestRecommenderUpdate" => recommender_update(),
        "RecommenderConfig" => recommender_config(),
        "RecommenderName" => String.t() | atom(),
        "RecommenderRecipeName" => list(any()),
        "Status" => list(any()),
        "Tags" => map(),
        "TrainingMetrics" => list(training_metrics())
      }

  """
  @type get_recommender_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_integration_item() :: %{
        "CreatedAt" => non_neg_integer(),
        "DomainName" => String.t() | atom(),
        "EventTriggerNames" => list(String.t() | atom()),
        "IsUnstructured" => boolean(),
        "LastUpdatedAt" => non_neg_integer(),
        "ObjectTypeName" => String.t() | atom(),
        "ObjectTypeNames" => map(),
        "RoleArn" => String.t() | atom(),
        "Scope" => list(any()),
        "Tags" => map(),
        "Uri" => String.t() | atom(),
        "WorkflowId" => String.t() | atom()
      }

  """
  @type list_integration_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_profile_object_type_template_request() :: %{}

  """
  @type get_profile_object_type_template_request() :: %{}

  @typedoc """

  ## Example:

      workflow_metrics() :: %{
        "AppflowIntegration" => appflow_integration_workflow_metrics()
      }

  """
  @type workflow_metrics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_upload_job_response() :: %{}

  """
  @type stop_upload_job_response() :: %{}

  @typedoc """

  ## Example:

      incremental_pull_config() :: %{
        "DatetimeTypeFieldName" => String.t() | atom()
      }

  """
  @type incremental_pull_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_get_profile_error() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom(),
        "ProfileId" => String.t() | atom()
      }

  """
  @type batch_get_profile_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_domain_layouts_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_domain_layouts_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_event_stream_response() :: %{
        "EventStreamArn" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type create_event_stream_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_upload_job_request() :: %{}

  """
  @type get_upload_job_request() :: %{}

  @typedoc """

  ## Example:

      trigger_config() :: %{
        "TriggerProperties" => trigger_properties(),
        "TriggerType" => list(any())
      }

  """
  @type trigger_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      add_profile_key_request() :: %{
        required("KeyName") => String.t() | atom(),
        required("ProfileId") => String.t() | atom(),
        required("Values") => list(String.t() | atom())
      }

  """
  @type add_profile_key_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      matching_request() :: %{
        "AutoMerging" => auto_merging(),
        "Enabled" => boolean(),
        "ExportingConfig" => exporting_config(),
        "JobSchedule" => job_schedule()
      }

  """
  @type matching_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      profile_attributes() :: %{
        "AccountNumber" => profile_dimension(),
        "AdditionalInformation" => extra_length_value_profile_dimension(),
        "Address" => address_dimension(),
        "Attributes" => map(),
        "BillingAddress" => address_dimension(),
        "BirthDate" => date_dimension(),
        "BusinessEmailAddress" => profile_dimension(),
        "BusinessName" => profile_dimension(),
        "BusinessPhoneNumber" => profile_dimension(),
        "EmailAddress" => profile_dimension(),
        "FirstName" => profile_dimension(),
        "GenderString" => profile_dimension(),
        "HomePhoneNumber" => profile_dimension(),
        "LastName" => profile_dimension(),
        "MailingAddress" => address_dimension(),
        "MiddleName" => profile_dimension(),
        "MobilePhoneNumber" => profile_dimension(),
        "PartyTypeString" => profile_dimension(),
        "PersonalEmailAddress" => profile_dimension(),
        "PhoneNumber" => profile_dimension(),
        "ProfileType" => profile_type_dimension(),
        "ShippingAddress" => address_dimension()
      }

  """
  @type profile_attributes() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_recommenders_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_recommenders_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_calculated_attribute_definition_response() :: %{
        "AttributeDetails" => attribute_details(),
        "CalculatedAttributeName" => String.t() | atom(),
        "Conditions" => conditions(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "DisplayName" => String.t() | atom(),
        "Filter" => filter(),
        "LastUpdatedAt" => non_neg_integer(),
        "Readiness" => readiness(),
        "Statistic" => list(any()),
        "Status" => list(any()),
        "Tags" => map(),
        "UseHistoricalData" => boolean()
      }

  """
  @type get_calculated_attribute_definition_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_segment_estimate_response() :: %{
        "DomainName" => String.t() | atom(),
        "EstimateId" => String.t() | atom(),
        "StatusCode" => integer()
      }

  """
  @type create_segment_estimate_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_profile_object_types_response() :: %{
        "Items" => list(list_profile_object_type_item()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_profile_object_types_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_domain_object_type_response() :: %{
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | atom(),
        "EncryptionKey" => String.t() | atom(),
        "Fields" => map(),
        "LastUpdatedAt" => non_neg_integer(),
        "ObjectTypeName" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type put_domain_object_type_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_domain_layout_request() :: %{}

  """
  @type delete_domain_layout_request() :: %{}

  @typedoc """

  ## Example:

      list_integrations_response() :: %{
        "Items" => list(list_integration_item()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_integrations_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_workflow_response() :: %{
        "Attributes" => workflow_attributes(),
        "ErrorDescription" => String.t() | atom(),
        "LastUpdatedAt" => non_neg_integer(),
        "Metrics" => workflow_metrics(),
        "StartDate" => non_neg_integer(),
        "Status" => list(any()),
        "WorkflowId" => String.t() | atom(),
        "WorkflowType" => list(any())
      }

  """
  @type get_workflow_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      event_stream_summary() :: %{
        "DestinationSummary" => destination_summary(),
        "DomainName" => String.t() | atom(),
        "EventStreamArn" => String.t() | atom(),
        "EventStreamName" => String.t() | atom(),
        "State" => list(any()),
        "StoppedSince" => non_neg_integer(),
        "Tags" => map()
      }

  """
  @type event_stream_summary() :: %{(String.t() | atom()) => any()}

  @type add_profile_key_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_get_calculated_attribute_for_profile_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_get_profile_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_calculated_attribute_definition_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_domain_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_domain_layout_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_event_stream_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_event_trigger_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_integration_workflow_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_profile_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_recommender_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_segment_definition_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_segment_estimate_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_segment_snapshot_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_upload_job_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_calculated_attribute_definition_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_domain_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_domain_layout_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_domain_object_type_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_event_stream_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_event_trigger_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_integration_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_profile_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_profile_key_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_profile_object_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_profile_object_type_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_recommender_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_segment_definition_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_workflow_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type detect_profile_object_type_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_auto_merging_preview_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_calculated_attribute_definition_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_calculated_attribute_for_profile_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_domain_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_domain_layout_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_domain_object_type_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_event_stream_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_event_trigger_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_identity_resolution_job_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_integration_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_matches_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_object_type_attribute_statistics_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_profile_history_record_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_profile_object_type_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_profile_object_type_template_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_profile_recommendations_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_recommender_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_segment_definition_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_segment_estimate_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_segment_membership_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_segment_snapshot_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_similar_profiles_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_upload_job_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_upload_job_path_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_workflow_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_workflow_steps_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_account_integrations_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_calculated_attribute_definitions_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_calculated_attributes_for_profile_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_domain_layouts_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_domain_object_types_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_domains_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_event_streams_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_event_triggers_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_identity_resolution_jobs_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_integrations_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_object_type_attribute_values_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_object_type_attributes_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_profile_attribute_values_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_profile_history_records_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_profile_object_type_templates_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_profile_object_types_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_profile_objects_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_recommender_recipes_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_recommenders_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_rule_based_matches_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_segment_definitions_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_upload_jobs_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_workflows_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type merge_profiles_errors() ::
          bad_request_exception()
          | throttling_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_domain_object_type_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_integration_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_profile_object_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_profile_object_type_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type search_profiles_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_recommender_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_upload_job_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type stop_recommender_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type stop_upload_job_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          bad_request_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_calculated_attribute_definition_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_domain_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_domain_layout_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_event_trigger_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_profile_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_recommender_errors() ::
          bad_request_exception()
          | throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2020-08-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "profile",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Customer Profiles",
      signature_version: "v4",
      signing_name: "profile",
      target_prefix: nil
    }
  end

  @doc """
  Associates a new key value with a specific profile, such as a Contact Record
  ContactId.

  A profile object can have a single unique key and any number of additional keys
  that can
  be used to identify the profile that it belongs to.
  """
  @spec add_profile_key(map(), String.t() | atom(), add_profile_key_request(), list()) ::
          {:ok, add_profile_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_profile_key_errors()}
  def add_profile_key(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/keys"
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
  Fetch the possible attribute values given the attribute name.
  """
  @spec batch_get_calculated_attribute_for_profile(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          batch_get_calculated_attribute_for_profile_request(),
          list()
        ) ::
          {:ok, batch_get_calculated_attribute_for_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_calculated_attribute_for_profile_errors()}
  def batch_get_calculated_attribute_for_profile(
        %Client{} = client,
        calculated_attribute_name,
        domain_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/calculated-attributes/#{AWS.Util.encode_uri(calculated_attribute_name)}/batch-get-for-profiles"

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
  Get a batch of profiles.
  """
  @spec batch_get_profile(map(), String.t() | atom(), batch_get_profile_request(), list()) ::
          {:ok, batch_get_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_profile_errors()}
  def batch_get_profile(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/batch-get-profiles"
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
  Creates a new calculated attribute definition.

  After creation, new object data ingested
  into Customer Profiles will be included in the calculated attribute, which can
  be retrieved
  for a profile using the
  [GetCalculatedAttributeForProfile](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetCalculatedAttributeForProfile.html)
  API. Defining a calculated attribute makes it
  available for all profiles within a domain. Each calculated attribute can only
  reference
  one `ObjectType` and at most, two fields from that
  `ObjectType`.
  """
  @spec create_calculated_attribute_definition(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_calculated_attribute_definition_request(),
          list()
        ) ::
          {:ok, create_calculated_attribute_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_calculated_attribute_definition_errors()}
  def create_calculated_attribute_definition(
        %Client{} = client,
        calculated_attribute_name,
        domain_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/calculated-attributes/#{AWS.Util.encode_uri(calculated_attribute_name)}"

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
  Creates a domain, which is a container for all customer data, such as customer
  profile
  attributes, object types, profile keys, and encryption keys.

  You can create multiple
  domains, and each domain can have multiple third-party integrations.

  Each Amazon Connect instance can be associated with only one domain. Multiple
  Amazon Connect instances can be associated with one domain.

  Use this API or
  [UpdateDomain](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UpdateDomain.html) to
  enable [identity
  resolution](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html):
  set `Matching` to true.

  To prevent cross-service impersonation when you call this API, see
  [Cross-service confused deputy prevention](https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html)
  for sample policies that you should
  apply.

  It is not possible to associate a Customer Profiles domain with an Amazon
  Connect Instance directly from
  the API. If you would like to create a domain and associate a Customer Profiles
  domain, use the Amazon Connect
  admin website. For more information, see [Enable Customer Profiles](https://docs.aws.amazon.com/connect/latest/adminguide/enable-customer-profiles.html#enable-customer-profiles-step1).

  Each Amazon Connect instance can be associated with only one domain. Multiple
  Amazon Connect instances
  can be associated with one domain.
  """
  @spec create_domain(map(), String.t() | atom(), create_domain_request(), list()) ::
          {:ok, create_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_domain_errors()}
  def create_domain(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}"
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
  Creates the layout to view data for a specific domain.

  This API can only be invoked from
  the Amazon Connect admin website.
  """
  @spec create_domain_layout(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_domain_layout_request(),
          list()
        ) ::
          {:ok, create_domain_layout_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_domain_layout_errors()}
  def create_domain_layout(
        %Client{} = client,
        domain_name,
        layout_definition_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/layouts/#{AWS.Util.encode_uri(layout_definition_name)}"

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
  Creates an event stream, which is a subscription to real-time events, such as
  when
  profiles are created and updated through Amazon Connect Customer Profiles.

  Each event stream can be associated with only one Kinesis Data Stream
  destination in the
  same region and Amazon Web Services account as the customer profiles domain
  """
  @spec create_event_stream(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_event_stream_request(),
          list()
        ) ::
          {:ok, create_event_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_event_stream_errors()}
  def create_event_stream(
        %Client{} = client,
        domain_name,
        event_stream_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/event-streams/#{AWS.Util.encode_uri(event_stream_name)}"

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
  Creates an event trigger, which specifies the rules when to perform action based
  on
  customer's ingested data.

  Each event stream can be associated with only one integration in the same region
  and AWS
  account as the event stream.
  """
  @spec create_event_trigger(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_event_trigger_request(),
          list()
        ) ::
          {:ok, create_event_trigger_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_event_trigger_errors()}
  def create_event_trigger(
        %Client{} = client,
        domain_name,
        event_trigger_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/event-triggers/#{AWS.Util.encode_uri(event_trigger_name)}"

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
  Creates an integration workflow.

  An integration workflow is an async process which
  ingests historic data and sets up an integration for ongoing updates. The
  supported Amazon AppFlow sources are Salesforce, ServiceNow, and Marketo.
  """
  @spec create_integration_workflow(
          map(),
          String.t() | atom(),
          create_integration_workflow_request(),
          list()
        ) ::
          {:ok, create_integration_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_integration_workflow_errors()}
  def create_integration_workflow(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/workflows/integrations"
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
  Creates a standard profile.

  A standard profile represents the following attributes for a customer profile in
  a
  domain.
  """
  @spec create_profile(map(), String.t() | atom(), create_profile_request(), list()) ::
          {:ok, create_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_profile_errors()}
  def create_profile(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles"
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
  Creates a recommender
  """
  @spec create_recommender(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_recommender_request(),
          list()
        ) ::
          {:ok, create_recommender_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_recommender_errors()}
  def create_recommender(%Client{} = client, domain_name, recommender_name, input, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/recommenders/#{AWS.Util.encode_uri(recommender_name)}"

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
  Creates a segment definition associated to the given domain.
  """
  @spec create_segment_definition(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_segment_definition_request(),
          list()
        ) ::
          {:ok, create_segment_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_segment_definition_errors()}
  def create_segment_definition(
        %Client{} = client,
        domain_name,
        segment_definition_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/segment-definitions/#{AWS.Util.encode_uri(segment_definition_name)}"

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
  Creates a segment estimate query.
  """
  @spec create_segment_estimate(
          map(),
          String.t() | atom(),
          create_segment_estimate_request(),
          list()
        ) ::
          {:ok, create_segment_estimate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_segment_estimate_errors()}
  def create_segment_estimate(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/segment-estimates"
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
  Triggers a job to export a segment to a specified destination.
  """
  @spec create_segment_snapshot(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_segment_snapshot_request(),
          list()
        ) ::
          {:ok, create_segment_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_segment_snapshot_errors()}
  def create_segment_snapshot(
        %Client{} = client,
        domain_name,
        segment_definition_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/segments/#{AWS.Util.encode_uri(segment_definition_name)}/snapshots"

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
  Creates an Upload job to ingest data for segment imports.

  The metadata is created for
  the job with the provided field mapping and unique key.
  """
  @spec create_upload_job(map(), String.t() | atom(), create_upload_job_request(), list()) ::
          {:ok, create_upload_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_upload_job_errors()}
  def create_upload_job(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/upload-jobs"
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
  Deletes an existing calculated attribute definition.

  Note that deleting a default
  calculated attribute is possible, however once deleted, you will be unable to
  undo that
  action and will need to recreate it on your own using the
  CreateCalculatedAttributeDefinition API if you want it back.
  """
  @spec delete_calculated_attribute_definition(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_calculated_attribute_definition_request(),
          list()
        ) ::
          {:ok, delete_calculated_attribute_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_calculated_attribute_definition_errors()}
  def delete_calculated_attribute_definition(
        %Client{} = client,
        calculated_attribute_name,
        domain_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/calculated-attributes/#{AWS.Util.encode_uri(calculated_attribute_name)}"

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
  Deletes a specific domain and all of its customer data, such as customer profile
  attributes and their related objects.
  """
  @spec delete_domain(map(), String.t() | atom(), delete_domain_request(), list()) ::
          {:ok, delete_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_domain_errors()}
  def delete_domain(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}"
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
  Deletes the layout used to view data for a specific domain.

  This API can only be invoked
  from the Amazon Connect admin website.
  """
  @spec delete_domain_layout(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_domain_layout_request(),
          list()
        ) ::
          {:ok, delete_domain_layout_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_domain_layout_errors()}
  def delete_domain_layout(
        %Client{} = client,
        domain_name,
        layout_definition_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/layouts/#{AWS.Util.encode_uri(layout_definition_name)}"

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
  Delete a DomainObjectType for the given Domain and ObjectType name.
  """
  @spec delete_domain_object_type(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_domain_object_type_request(),
          list()
        ) ::
          {:ok, delete_domain_object_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_domain_object_type_errors()}
  def delete_domain_object_type(
        %Client{} = client,
        domain_name,
        object_type_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/domain-object-types/#{AWS.Util.encode_uri(object_type_name)}"

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
  Disables and deletes the specified event stream.
  """
  @spec delete_event_stream(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_event_stream_request(),
          list()
        ) ::
          {:ok, delete_event_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_event_stream_errors()}
  def delete_event_stream(
        %Client{} = client,
        domain_name,
        event_stream_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/event-streams/#{AWS.Util.encode_uri(event_stream_name)}"

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
  Disable and deletes the Event Trigger.

  You cannot delete an Event Trigger with an active Integration associated.
  """
  @spec delete_event_trigger(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_event_trigger_request(),
          list()
        ) ::
          {:ok, delete_event_trigger_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_event_trigger_errors()}
  def delete_event_trigger(
        %Client{} = client,
        domain_name,
        event_trigger_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/event-triggers/#{AWS.Util.encode_uri(event_trigger_name)}"

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
  Removes an integration from a specific domain.
  """
  @spec delete_integration(map(), String.t() | atom(), delete_integration_request(), list()) ::
          {:ok, delete_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_integration_errors()}
  def delete_integration(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/integrations/delete"
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
  Deletes the standard customer profile and all data pertaining to the profile.
  """
  @spec delete_profile(map(), String.t() | atom(), delete_profile_request(), list()) ::
          {:ok, delete_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_profile_errors()}
  def delete_profile(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/delete"
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
  Removes a searchable key from a customer profile.
  """
  @spec delete_profile_key(map(), String.t() | atom(), delete_profile_key_request(), list()) ::
          {:ok, delete_profile_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_profile_key_errors()}
  def delete_profile_key(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/keys/delete"
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
  Removes an object associated with a profile of a given ProfileObjectType.
  """
  @spec delete_profile_object(map(), String.t() | atom(), delete_profile_object_request(), list()) ::
          {:ok, delete_profile_object_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_profile_object_errors()}
  def delete_profile_object(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/objects/delete"
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
  Removes a ProfileObjectType from a specific domain as well as removes all the
  ProfileObjects of that type.

  It also disables integrations from this specific
  ProfileObjectType. In addition, it scrubs all of the fields of the standard
  profile that
  were populated from this ProfileObjectType.
  """
  @spec delete_profile_object_type(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_profile_object_type_request(),
          list()
        ) ::
          {:ok, delete_profile_object_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_profile_object_type_errors()}
  def delete_profile_object_type(
        %Client{} = client,
        domain_name,
        object_type_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/object-types/#{AWS.Util.encode_uri(object_type_name)}"

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
  Deletes a recommender.
  """
  @spec delete_recommender(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_recommender_request(),
          list()
        ) ::
          {:ok, delete_recommender_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_recommender_errors()}
  def delete_recommender(%Client{} = client, domain_name, recommender_name, input, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/recommenders/#{AWS.Util.encode_uri(recommender_name)}"

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
  Deletes a segment definition from the domain.
  """
  @spec delete_segment_definition(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_segment_definition_request(),
          list()
        ) ::
          {:ok, delete_segment_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_segment_definition_errors()}
  def delete_segment_definition(
        %Client{} = client,
        domain_name,
        segment_definition_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/segment-definitions/#{AWS.Util.encode_uri(segment_definition_name)}"

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
  Deletes the specified workflow and all its corresponding resources.

  This is an async
  process.
  """
  @spec delete_workflow(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_workflow_request(),
          list()
        ) ::
          {:ok, delete_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_workflow_errors()}
  def delete_workflow(%Client{} = client, domain_name, workflow_id, input, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/workflows/#{AWS.Util.encode_uri(workflow_id)}"

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
  The process of detecting profile object type mapping by using given objects.
  """
  @spec detect_profile_object_type(
          map(),
          String.t() | atom(),
          detect_profile_object_type_request(),
          list()
        ) ::
          {:ok, detect_profile_object_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, detect_profile_object_type_errors()}
  def detect_profile_object_type(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/detect/object-types"
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
  Tests the auto-merging settings of your Identity Resolution Job without merging
  your data.

  It randomly
  selects a sample of matching groups from the existing matching results, and
  applies the
  automerging settings that you provided. You can then view the number of profiles
  in the
  sample, the number of matches, and the number of profiles identified to be
  merged. This
  enables you to evaluate the accuracy of the attributes in your matching list.

  You can't view which profiles are matched and would be merged.

  We strongly recommend you use this API to do a dry run of the automerging
  process
  before running the Identity Resolution Job. Include **at least** two matching
  attributes. If your matching list includes too few attributes (such as only
  `FirstName` or only `LastName`), there may be a large number of
  matches. This increases the chances of erroneous merges.
  """
  @spec get_auto_merging_preview(
          map(),
          String.t() | atom(),
          get_auto_merging_preview_request(),
          list()
        ) ::
          {:ok, get_auto_merging_preview_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_auto_merging_preview_errors()}
  def get_auto_merging_preview(%Client{} = client, domain_name, input, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/identity-resolution-jobs/auto-merging-preview"

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
  Provides more information on a calculated attribute definition for Customer
  Profiles.
  """
  @spec get_calculated_attribute_definition(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_calculated_attribute_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_calculated_attribute_definition_errors()}
  def get_calculated_attribute_definition(
        %Client{} = client,
        calculated_attribute_name,
        domain_name,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/calculated-attributes/#{AWS.Util.encode_uri(calculated_attribute_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieve a calculated attribute for a customer profile.
  """
  @spec get_calculated_attribute_for_profile(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_calculated_attribute_for_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_calculated_attribute_for_profile_errors()}
  def get_calculated_attribute_for_profile(
        %Client{} = client,
        calculated_attribute_name,
        domain_name,
        profile_id,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/profile/#{AWS.Util.encode_uri(profile_id)}/calculated-attributes/#{AWS.Util.encode_uri(calculated_attribute_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a specific domain.
  """
  @spec get_domain(map(), String.t() | atom(), list()) ::
          {:ok, get_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_domain_errors()}
  def get_domain(%Client{} = client, domain_name, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the layout to view data for a specific domain.

  This API can only be invoked from
  the Amazon Connect admin website.
  """
  @spec get_domain_layout(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_domain_layout_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_domain_layout_errors()}
  def get_domain_layout(%Client{} = client, domain_name, layout_definition_name, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/layouts/#{AWS.Util.encode_uri(layout_definition_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Return a DomainObjectType for the input Domain and ObjectType names.
  """
  @spec get_domain_object_type(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_domain_object_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_domain_object_type_errors()}
  def get_domain_object_type(%Client{} = client, domain_name, object_type_name, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/domain-object-types/#{AWS.Util.encode_uri(object_type_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about the specified event stream in a specific domain.
  """
  @spec get_event_stream(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_event_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_event_stream_errors()}
  def get_event_stream(%Client{} = client, domain_name, event_stream_name, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/event-streams/#{AWS.Util.encode_uri(event_stream_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get a specific Event Trigger from the domain.
  """
  @spec get_event_trigger(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_event_trigger_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_event_trigger_errors()}
  def get_event_trigger(%Client{} = client, domain_name, event_trigger_name, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/event-triggers/#{AWS.Util.encode_uri(event_trigger_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about an Identity Resolution Job in a specific domain.

  Identity Resolution Jobs are set up using the Amazon Connect admin console. For
  more information, see [Use Identity Resolution to consolidate similar
  profiles](https://docs.aws.amazon.com/connect/latest/adminguide/use-identity-resolution.html).
  """
  @spec get_identity_resolution_job(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_identity_resolution_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_identity_resolution_job_errors()}
  def get_identity_resolution_job(%Client{} = client, domain_name, job_id, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/identity-resolution-jobs/#{AWS.Util.encode_uri(job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns an integration for a domain.
  """
  @spec get_integration(map(), String.t() | atom(), get_integration_request(), list()) ::
          {:ok, get_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_integration_errors()}
  def get_integration(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/integrations"
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
  Before calling this API, use
  [CreateDomain](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_CreateDomain.html) or
  [UpdateDomain](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UpdateDomain.html)
  to
  enable identity resolution: set `Matching` to true.

  GetMatches returns potentially matching profiles, based on the results of the
  latest run
  of a machine learning process.

  The process of matching duplicate profiles. If `Matching` = `true`, Amazon
  Connect Customer Profiles starts a weekly
  batch process called Identity Resolution Job. If you do not specify a date and
  time for Identity Resolution Job to run, by default it runs every
  Saturday at 12AM UTC to detect duplicate profiles in your domains.

  After the Identity Resolution Job completes, use the
  [GetMatches](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html)

  API to return and review the results. Or, if you have configured
  `ExportingConfig` in the `MatchingRequest`, you can download the results from
  S3.

  Amazon Connect uses the following profile attributes to identify matches:

    *
  PhoneNumber

    *
  HomePhoneNumber

    *
  BusinessPhoneNumber

    *
  MobilePhoneNumber

    *
  EmailAddress

    *
  PersonalEmailAddress

    *
  BusinessEmailAddress

    *
  FullName

  For example, two or more profiles—with spelling mistakes such as ## John Doe
  and **Jhn Doe**, or different casing
  email addresses such as **JOHN_DOE@ANYCOMPANY.COM** and
  **johndoe@anycompany.com**, or different phone number
  formats such as **555-010-0000** and **+1-555-010-0000**—can be detected as
  belonging to the same customer **John Doe** and merged into a unified profile.
  """
  @spec get_matches(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_matches_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_matches_errors()}
  def get_matches(
        %Client{} = client,
        domain_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/matches"
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
  The GetObjectTypeAttributeValues API delivers statistical insights about
  attributes within a specific object type, but is exclusively available for
  domains with data store enabled.

  This API performs daily calculations to provide statistical information about
  your attribute values, helping you understand patterns and trends in your data.
  The statistical calculations are performed once per day, providing a consistent
  snapshot of your attribute data characteristics.

  You'll receive null values in two scenarios:

  During the first period after enabling data vault (unless a calculation cycle
  occurs, which happens once daily).

  For attributes that don't contain numeric values.
  """
  @spec get_object_type_attribute_statistics(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          get_object_type_attribute_statistics_request(),
          list()
        ) ::
          {:ok, get_object_type_attribute_statistics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_object_type_attribute_statistics_errors()}
  def get_object_type_attribute_statistics(
        %Client{} = client,
        attribute_name,
        domain_name,
        object_type_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/object-types/#{AWS.Util.encode_uri(object_type_name)}/attributes/#{AWS.Util.encode_uri(attribute_name)}/statistics"

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
  Returns a history record for a specific profile, for a specific domain.
  """
  @spec get_profile_history_record(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_profile_history_record_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_profile_history_record_errors()}
  def get_profile_history_record(%Client{} = client, domain_name, id, profile_id, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/#{AWS.Util.encode_uri(profile_id)}/history-records/#{AWS.Util.encode_uri(id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the object types for a specific domain.
  """
  @spec get_profile_object_type(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_profile_object_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_profile_object_type_errors()}
  def get_profile_object_type(%Client{} = client, domain_name, object_type_name, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/object-types/#{AWS.Util.encode_uri(object_type_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the template information for a specific object type.

  A template is a predefined ProfileObjectType, such as “Salesforce-Account” or
  “Salesforce-Contact.” When a user sends a ProfileObject, using the
  PutProfileObject API,
  with an ObjectTypeName that matches one of the TemplateIds, it uses the mappings
  from the
  template.
  """
  @spec get_profile_object_type_template(map(), String.t() | atom(), list()) ::
          {:ok, get_profile_object_type_template_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_profile_object_type_template_errors()}
  def get_profile_object_type_template(%Client{} = client, template_id, options \\ []) do
    url_path = "/templates/#{AWS.Util.encode_uri(template_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Fetches the recommendations for a profile in the input Customer Profiles domain.

  Fetches all the profile recommendations
  """
  @spec get_profile_recommendations(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          get_profile_recommendations_request(),
          list()
        ) ::
          {:ok, get_profile_recommendations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_profile_recommendations_errors()}
  def get_profile_recommendations(
        %Client{} = client,
        domain_name,
        profile_id,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/#{AWS.Util.encode_uri(profile_id)}/recommendations"

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
  Retrieves a recommender.
  """
  @spec get_recommender(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_recommender_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_recommender_errors()}
  def get_recommender(
        %Client{} = client,
        domain_name,
        recommender_name,
        training_metrics_count \\ nil,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/recommenders/#{AWS.Util.encode_uri(recommender_name)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(training_metrics_count) do
        [{"training-metrics-count", training_metrics_count} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a segment definition from the domain.
  """
  @spec get_segment_definition(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_segment_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_segment_definition_errors()}
  def get_segment_definition(
        %Client{} = client,
        domain_name,
        segment_definition_name,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/segment-definitions/#{AWS.Util.encode_uri(segment_definition_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the result of a segment estimate query.
  """
  @spec get_segment_estimate(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_segment_estimate_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_segment_estimate_errors()}
  def get_segment_estimate(%Client{} = client, domain_name, estimate_id, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/segment-estimates/#{AWS.Util.encode_uri(estimate_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Determines if the given profiles are within a segment.
  """
  @spec get_segment_membership(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          get_segment_membership_request(),
          list()
        ) ::
          {:ok, get_segment_membership_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_segment_membership_errors()}
  def get_segment_membership(
        %Client{} = client,
        domain_name,
        segment_definition_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/segments/#{AWS.Util.encode_uri(segment_definition_name)}/membership"

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
  Retrieve the latest status of a segment snapshot.
  """
  @spec get_segment_snapshot(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          list()
        ) ::
          {:ok, get_segment_snapshot_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_segment_snapshot_errors()}
  def get_segment_snapshot(
        %Client{} = client,
        domain_name,
        segment_definition_name,
        snapshot_id,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/segments/#{AWS.Util.encode_uri(segment_definition_name)}/snapshots/#{AWS.Util.encode_uri(snapshot_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a set of profiles that belong to the same matching group using the
  `matchId` or `profileId`.

  You can also specify the type of
  matching that you want for finding similar profiles using either
  `RULE_BASED_MATCHING` or `ML_BASED_MATCHING`.
  """
  @spec get_similar_profiles(map(), String.t() | atom(), get_similar_profiles_request(), list()) ::
          {:ok, get_similar_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_similar_profiles_errors()}
  def get_similar_profiles(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/matches"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"MaxResults", "max-results"},
        {"NextToken", "next-token"}
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
  This API retrieves the details of a specific upload job.
  """
  @spec get_upload_job(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_upload_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_upload_job_errors()}
  def get_upload_job(%Client{} = client, domain_name, job_id, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/upload-jobs/#{AWS.Util.encode_uri(job_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  This API retrieves the pre-signed URL and client token for uploading the file
  associated
  with the upload job.
  """
  @spec get_upload_job_path(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_upload_job_path_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_upload_job_path_errors()}
  def get_upload_job_path(%Client{} = client, domain_name, job_id, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/upload-jobs/#{AWS.Util.encode_uri(job_id)}/path"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get details of specified workflow.
  """
  @spec get_workflow(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_workflow_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_workflow_errors()}
  def get_workflow(%Client{} = client, domain_name, workflow_id, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/workflows/#{AWS.Util.encode_uri(workflow_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get granular list of steps in workflow.
  """
  @spec get_workflow_steps(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_workflow_steps_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_workflow_steps_errors()}
  def get_workflow_steps(
        %Client{} = client,
        domain_name,
        workflow_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/workflows/#{AWS.Util.encode_uri(workflow_id)}/steps"

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
  Lists all of the integrations associated to a specific URI in the AWS account.
  """
  @spec list_account_integrations(map(), list_account_integrations_request(), list()) ::
          {:ok, list_account_integrations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_account_integrations_errors()}
  def list_account_integrations(%Client{} = client, input, options \\ []) do
    url_path = "/integrations"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"IncludeHidden", "include-hidden"},
        {"MaxResults", "max-results"},
        {"NextToken", "next-token"}
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
  Lists calculated attribute definitions for Customer Profiles
  """
  @spec list_calculated_attribute_definitions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_calculated_attribute_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_calculated_attribute_definitions_errors()}
  def list_calculated_attribute_definitions(
        %Client{} = client,
        domain_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/calculated-attributes"
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
  Retrieve a list of calculated attributes for a customer profile.
  """
  @spec list_calculated_attributes_for_profile(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_calculated_attributes_for_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_calculated_attributes_for_profile_errors()}
  def list_calculated_attributes_for_profile(
        %Client{} = client,
        domain_name,
        profile_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/profile/#{AWS.Util.encode_uri(profile_id)}/calculated-attributes"

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
  Lists the existing layouts that can be used to view data for a specific domain.

  This API
  can only be invoked from the Amazon Connect admin website.
  """
  @spec list_domain_layouts(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_domain_layouts_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_domain_layouts_errors()}
  def list_domain_layouts(
        %Client{} = client,
        domain_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/layouts"
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
  List all DomainObjectType(s) in a Customer Profiles domain.
  """
  @spec list_domain_object_types(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_domain_object_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_domain_object_types_errors()}
  def list_domain_object_types(
        %Client{} = client,
        domain_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/domain-object-types"
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
  Returns a list of all the domains for an AWS account that have been created.
  """
  @spec list_domains(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_domains_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_domains_errors()}
  def list_domains(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/domains"
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
  Returns a list of all the event streams in a specific domain.
  """
  @spec list_event_streams(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_event_streams_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_event_streams_errors()}
  def list_event_streams(
        %Client{} = client,
        domain_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/event-streams"
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
  List all Event Triggers under a domain.
  """
  @spec list_event_triggers(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_event_triggers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_event_triggers_errors()}
  def list_event_triggers(
        %Client{} = client,
        domain_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/event-triggers"
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
  Lists all of the Identity Resolution Jobs in your domain.

  The response sorts the list by
  `JobStartTime`.
  """
  @spec list_identity_resolution_jobs(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_identity_resolution_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_identity_resolution_jobs_errors()}
  def list_identity_resolution_jobs(
        %Client{} = client,
        domain_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/identity-resolution-jobs"
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
  Lists all of the integrations in your domain.
  """
  @spec list_integrations(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_integrations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_integrations_errors()}
  def list_integrations(
        %Client{} = client,
        domain_name,
        include_hidden \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/integrations"
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

    query_params =
      if !is_nil(include_hidden) do
        [{"include-hidden", include_hidden} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The ListObjectTypeAttributeValues API provides access to the most recent
  distinct values for any specified attribute, making it valuable for real-time
  data validation and consistency checks within your object types.

  This API works across domain, supporting both custom and standard object types.
  The API accepts the object type name, attribute name, and domain name as input
  parameters and returns values up to the storage limit of approximately 350KB.
  """
  @spec list_object_type_attribute_values(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_object_type_attribute_values_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_object_type_attribute_values_errors()}
  def list_object_type_attribute_values(
        %Client{} = client,
        attribute_name,
        domain_name,
        object_type_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/object-types/#{AWS.Util.encode_uri(object_type_name)}/attributes/#{AWS.Util.encode_uri(attribute_name)}/values"

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
  Fetch the possible attribute values given the attribute name.
  """
  @spec list_object_type_attributes(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_object_type_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_object_type_attributes_errors()}
  def list_object_type_attributes(
        %Client{} = client,
        domain_name,
        object_type_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/object-types/#{AWS.Util.encode_uri(object_type_name)}/attributes"

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
  Fetch the possible attribute values given the attribute name.
  """
  @spec list_profile_attribute_values(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, profile_attribute_values_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_profile_attribute_values_errors()}
  def list_profile_attribute_values(
        %Client{} = client,
        attribute_name,
        domain_name,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/profile-attributes/#{AWS.Util.encode_uri(attribute_name)}/values"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of history records for a specific profile, for a specific domain.
  """
  @spec list_profile_history_records(
          map(),
          String.t() | atom(),
          list_profile_history_records_request(),
          list()
        ) ::
          {:ok, list_profile_history_records_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_profile_history_records_errors()}
  def list_profile_history_records(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/history-records"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"MaxResults", "max-results"},
        {"NextToken", "next-token"}
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
  Lists all of the template information for object types.
  """
  @spec list_profile_object_type_templates(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_profile_object_type_templates_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_profile_object_type_templates_errors()}
  def list_profile_object_type_templates(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/templates"
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
  Lists all of the templates available within the service.
  """
  @spec list_profile_object_types(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_profile_object_types_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_profile_object_types_errors()}
  def list_profile_object_types(
        %Client{} = client,
        domain_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/object-types"
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
  Returns a list of objects associated with a profile of a given
  ProfileObjectType.
  """
  @spec list_profile_objects(map(), String.t() | atom(), list_profile_objects_request(), list()) ::
          {:ok, list_profile_objects_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_profile_objects_errors()}
  def list_profile_objects(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/objects"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"MaxResults", "max-results"},
        {"NextToken", "next-token"}
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
  Returns a list of available recommender recipes that can be used to create
  recommenders.
  """
  @spec list_recommender_recipes(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_recommender_recipes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_recommender_recipes_errors()}
  def list_recommender_recipes(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/recommender-recipes"
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
  Returns a list of recommenders in the specified domain.
  """
  @spec list_recommenders(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_recommenders_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_recommenders_errors()}
  def list_recommenders(
        %Client{} = client,
        domain_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/recommenders"
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
  Returns a set of `MatchIds` that belong to the given domain.
  """
  @spec list_rule_based_matches(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_rule_based_matches_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_rule_based_matches_errors()}
  def list_rule_based_matches(
        %Client{} = client,
        domain_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/ruleBasedMatches"
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
  Lists all segment definitions under a domain.
  """
  @spec list_segment_definitions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_segment_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_segment_definitions_errors()}
  def list_segment_definitions(
        %Client{} = client,
        domain_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/segment-definitions"
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
  Displays the tags associated with an Amazon Connect Customer Profiles resource.

  In Connect
  Customer Profiles, domains, profile object types, and integrations can be
  tagged.
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
  This API retrieves a list of upload jobs for the specified domain.
  """
  @spec list_upload_jobs(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_upload_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_upload_jobs_errors()}
  def list_upload_jobs(
        %Client{} = client,
        domain_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/upload-jobs"
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
  Query to list all workflows.
  """
  @spec list_workflows(map(), String.t() | atom(), list_workflows_request(), list()) ::
          {:ok, list_workflows_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_workflows_errors()}
  def list_workflows(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/workflows"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"MaxResults", "max-results"},
        {"NextToken", "next-token"}
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
  Runs an AWS Lambda job that does the following:

    1.

  All the profileKeys in the `ProfileToBeMerged` will be moved to the
  main profile.

    2.
  All the objects in the `ProfileToBeMerged` will be moved to the main
  profile.

    3.
  All the `ProfileToBeMerged` will be deleted at the end.

    4.
  All the profileKeys in the `ProfileIdsToBeMerged` will be moved to the
  main profile.

    5.
  Standard fields are merged as follows:

      1.
  Fields are always "union"-ed if there are no conflicts in standard fields or
  attributeKeys.

      2.
  When there are conflicting fields:

        1.
  If no `SourceProfileIds` entry is specified, the main
  Profile value is always taken.

        2.
  If a `SourceProfileIds` entry is specified, the specified
  profileId is always taken, even if it is a NULL value.

  You can use MergeProfiles together with
  [GetMatches](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html),
  which
  returns potentially matching profiles, or use it with the results of another
  matching
  system. After profiles have been merged, they cannot be separated (unmerged).
  """
  @spec merge_profiles(map(), String.t() | atom(), merge_profiles_request(), list()) ::
          {:ok, merge_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, merge_profiles_errors()}
  def merge_profiles(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/objects/merge"
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
  Create/Update a DomainObjectType in a Customer Profiles domain.

  To create a new DomainObjectType, Data Store needs to be enabled on the Domain.
  """
  @spec put_domain_object_type(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          put_domain_object_type_request(),
          list()
        ) ::
          {:ok, put_domain_object_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_domain_object_type_errors()}
  def put_domain_object_type(
        %Client{} = client,
        domain_name,
        object_type_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/domain-object-types/#{AWS.Util.encode_uri(object_type_name)}"

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
  Adds an integration between the service and a third-party service, which
  includes
  Amazon AppFlow and Amazon Connect.

  An integration can belong to only one domain.

  To add or remove tags on an existing Integration, see [ TagResource
  ](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_TagResource.html)/[

  UntagResource](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UntagResource.html).
  """
  @spec put_integration(map(), String.t() | atom(), put_integration_request(), list()) ::
          {:ok, put_integration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_integration_errors()}
  def put_integration(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/integrations"
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
  Adds additional objects to customer profiles of a given ObjectType.

  When adding a specific profile object, like a Contact Record, an inferred
  profile can
  get created if it is not mapped to an existing profile. The resulting profile
  will only
  have a phone number populated in the standard ProfileObject. Any additional
  Contact Records
  with the same phone number will be mapped to the same inferred profile.

  When a ProfileObject is created and if a ProfileObjectType already exists for
  the
  ProfileObject, it will provide data to a standard profile depending on the
  ProfileObjectType definition.

  PutProfileObject needs an ObjectType, which can be created using
  PutProfileObjectType.
  """
  @spec put_profile_object(map(), String.t() | atom(), put_profile_object_request(), list()) ::
          {:ok, put_profile_object_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_profile_object_errors()}
  def put_profile_object(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/objects"
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
  Defines a ProfileObjectType.

  To add or remove tags on an existing ObjectType, see [
  TagResource](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_TagResource.html)/[UntagResource](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UntagResource.html).
  """
  @spec put_profile_object_type(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          put_profile_object_type_request(),
          list()
        ) ::
          {:ok, put_profile_object_type_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_profile_object_type_errors()}
  def put_profile_object_type(
        %Client{} = client,
        domain_name,
        object_type_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/object-types/#{AWS.Util.encode_uri(object_type_name)}"

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
  Searches for profiles within a specific domain using one or more predefined
  search keys
  (e.g., _fullName, _phone, _email, _account, etc.) and/or custom-defined search
  keys.

  A
  search key is a data type pair that consists of a `KeyName` and
  `Values` list.

  This operation supports searching for profiles with a minimum of 1 key-value(s)
  pair and
  up to 5 key-value(s) pairs using either `AND` or `OR` logic.
  """
  @spec search_profiles(map(), String.t() | atom(), search_profiles_request(), list()) ::
          {:ok, search_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_profiles_errors()}
  def search_profiles(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles/search"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"MaxResults", "max-results"},
        {"NextToken", "next-token"}
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
  Starts a recommender that was previously stopped.

  Starting a recommender resumes its ability to generate recommendations.
  """
  @spec start_recommender(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          start_recommender_request(),
          list()
        ) ::
          {:ok, start_recommender_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_recommender_errors()}
  def start_recommender(%Client{} = client, domain_name, recommender_name, input, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/recommenders/#{AWS.Util.encode_uri(recommender_name)}/start"

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
  This API starts the processing of an upload job to ingest profile data.
  """
  @spec start_upload_job(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          start_upload_job_request(),
          list()
        ) ::
          {:ok, start_upload_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_upload_job_errors()}
  def start_upload_job(%Client{} = client, domain_name, job_id, input, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/upload-jobs/#{AWS.Util.encode_uri(job_id)}"

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
  Stops a recommender, suspending its ability to generate recommendations.

  The recommender can be restarted later using StartRecommender.
  """
  @spec stop_recommender(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          stop_recommender_request(),
          list()
        ) ::
          {:ok, stop_recommender_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_recommender_errors()}
  def stop_recommender(%Client{} = client, domain_name, recommender_name, input, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/recommenders/#{AWS.Util.encode_uri(recommender_name)}/stop"

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
  This API stops the processing of an upload job.
  """
  @spec stop_upload_job(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          stop_upload_job_request(),
          list()
        ) ::
          {:ok, stop_upload_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_upload_job_errors()}
  def stop_upload_job(%Client{} = client, domain_name, job_id, input, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/upload-jobs/#{AWS.Util.encode_uri(job_id)}/stop"

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
  Assigns one or more tags (key-value pairs) to the specified Amazon Connect
  Customer Profiles
  resource.

  Tags can help you organize and categorize your resources. You can also use them
  to scope user permissions by granting a user permission to access or change only
  resources
  with certain tag values. In Connect Customer Profiles, domains, profile object
  types, and
  integrations can be tagged.

  Tags don't have any semantic meaning to AWS and are interpreted strictly as
  strings of
  characters.

  You can use the TagResource action with a resource that already has tags. If you
  specify
  a new tag key, this tag is appended to the list of tags associated with the
  resource. If
  you specify a tag key that is already associated with the resource, the new tag
  value that
  you specify replaces the previous value for that tag.

  You can associate as many as 50 tags with a resource.
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
      200
    )
  end

  @doc """
  Removes one or more tags from the specified Amazon Connect Customer Profiles
  resource.

  In Connect
  Customer Profiles, domains, profile object types, and integrations can be
  tagged.
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
      200
    )
  end

  @doc """
  Updates an existing calculated attribute definition.

  When updating the Conditions, note
  that increasing the date range of a calculated attribute will not trigger
  inclusion of
  historical data greater than the current date range.
  """
  @spec update_calculated_attribute_definition(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_calculated_attribute_definition_request(),
          list()
        ) ::
          {:ok, update_calculated_attribute_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_calculated_attribute_definition_errors()}
  def update_calculated_attribute_definition(
        %Client{} = client,
        calculated_attribute_name,
        domain_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/calculated-attributes/#{AWS.Util.encode_uri(calculated_attribute_name)}"

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
  Updates the properties of a domain, including creating or selecting a dead
  letter queue
  or an encryption key.

  After a domain is created, the name can’t be changed.

  Use this API or
  [CreateDomain](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_CreateDomain.html) to
  enable [identity
  resolution](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_GetMatches.html):
  set `Matching` to true.

  To prevent cross-service impersonation when you call this API, see
  [Cross-service confused deputy prevention](https://docs.aws.amazon.com/connect/latest/adminguide/cross-service-confused-deputy-prevention.html)
  for sample policies that you should
  apply.

  To add or remove tags on an existing Domain, see
  [TagResource](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_TagResource.html)/[UntagResource](https://docs.aws.amazon.com/customerprofiles/latest/APIReference/API_UntagResource.html).
  """
  @spec update_domain(map(), String.t() | atom(), update_domain_request(), list()) ::
          {:ok, update_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_domain_errors()}
  def update_domain(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}"
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
  Updates the layout used to view data for a specific domain.

  This API can only be invoked
  from the Amazon Connect admin website.
  """
  @spec update_domain_layout(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_domain_layout_request(),
          list()
        ) ::
          {:ok, update_domain_layout_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_domain_layout_errors()}
  def update_domain_layout(
        %Client{} = client,
        domain_name,
        layout_definition_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/layouts/#{AWS.Util.encode_uri(layout_definition_name)}"

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
  Update the properties of an Event Trigger.
  """
  @spec update_event_trigger(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_event_trigger_request(),
          list()
        ) ::
          {:ok, update_event_trigger_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_event_trigger_errors()}
  def update_event_trigger(
        %Client{} = client,
        domain_name,
        event_trigger_name,
        input,
        options \\ []
      ) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/event-triggers/#{AWS.Util.encode_uri(event_trigger_name)}"

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
  Updates the properties of a profile.

  The ProfileId is required for updating a customer
  profile.

  When calling the UpdateProfile API, specifying an empty string value means that
  any
  existing value will be removed. Not specifying a string value means that any
  value already
  there will be kept.
  """
  @spec update_profile(map(), String.t() | atom(), update_profile_request(), list()) ::
          {:ok, update_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_profile_errors()}
  def update_profile(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/domains/#{AWS.Util.encode_uri(domain_name)}/profiles"
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
  Updates the properties of an existing recommender, allowing you to modify its
  configuration and description.
  """
  @spec update_recommender(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_recommender_request(),
          list()
        ) ::
          {:ok, update_recommender_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_recommender_errors()}
  def update_recommender(%Client{} = client, domain_name, recommender_name, input, options \\ []) do
    url_path =
      "/domains/#{AWS.Util.encode_uri(domain_name)}/recommenders/#{AWS.Util.encode_uri(recommender_name)}"

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
end
