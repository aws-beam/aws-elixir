# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudTrail do
  @moduledoc """
  CloudTrail

  This is the CloudTrail API Reference.

  It provides descriptions of actions, data
  types, common parameters, and common errors for CloudTrail.

  CloudTrail is a web service that records Amazon Web Services API calls for your
  Amazon Web Services account and delivers log files to an Amazon S3 bucket. The
  recorded information includes the identity of the user, the start time of the
  Amazon Web Services API call, the source IP address, the request parameters, and
  the response
  elements returned by the service.

  As an alternative to the API, you can use one of the Amazon Web Services SDKs,
  which
  consist of libraries and sample code for various programming languages and
  platforms
  (Java, Ruby, .NET, iOS, Android, etc.). The SDKs provide programmatic access to
  CloudTrail. For example, the SDKs handle cryptographically signing requests,
  managing errors, and retrying requests automatically. For more information about
  the
  Amazon Web Services SDKs, including how to download and install them, see [Tools to Build on Amazon Web Services](http://aws.amazon.com/tools/).

  See the [CloudTrail User
  Guide](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-user-guide.html)
  for information about the data that is included with each Amazon Web Services
  API call listed in the log files.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      partition_key() :: %{
        "Name" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type partition_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_dashboards_request() :: %{
        optional("MaxResults") => integer(),
        optional("NamePrefix") => String.t(),
        optional("NextToken") => String.t(),
        optional("Type") => list(any())
      }
      
  """
  @type list_dashboards_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_dashboard_request() :: %{
        required("DashboardId") => String.t()
      }
      
  """
  @type get_dashboard_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_trail_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type get_trail_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_dashboard_response() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "DashboardArn" => String.t(),
        "Name" => String.t(),
        "RefreshSchedule" => refresh_schedule(),
        "TerminationProtectionEnabled" => boolean(),
        "Type" => list(any()),
        "UpdatedTimestamp" => non_neg_integer(),
        "Widgets" => list(widget()())
      }
      
  """
  @type update_dashboard_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_channel_request() :: %{
        required("Channel") => String.t()
      }
      
  """
  @type delete_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_dashboard_request() :: %{
        optional("RefreshSchedule") => refresh_schedule(),
        optional("TerminationProtectionEnabled") => boolean(),
        optional("Widgets") => list(request_widget()()),
        required("DashboardId") => String.t()
      }
      
  """
  @type update_dashboard_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_max_results_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_max_results_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_federation_request() :: %{
        required("EventDataStore") => String.t()
      }
      
  """
  @type disable_federation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_channel_request() :: %{
        required("Channel") => String.t()
      }
      
  """
  @type get_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_event_data_store_ingestion_response() :: %{}
      
  """
  @type start_event_data_store_ingestion_response() :: %{}

  @typedoc """

  ## Example:
      
      search_sample_queries_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("SearchPhrase") => String.t()
      }
      
  """
  @type search_sample_queries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_trail_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type delete_trail_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_query_response() :: %{
        "DeliveryS3Uri" => String.t(),
        "DeliveryStatus" => list(any()),
        "ErrorMessage" => String.t(),
        "EventDataStoreOwnerAccountId" => String.t(),
        "Prompt" => String.t(),
        "QueryId" => String.t(),
        "QueryStatistics" => query_statistics_for_describe_query(),
        "QueryStatus" => list(any()),
        "QueryString" => String.t()
      }
      
  """
  @type describe_query_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_organization_management_account_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type not_organization_management_account_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_response() :: %{}
      
  """
  @type delete_resource_policy_response() :: %{}

  @typedoc """

  ## Example:
      
      resource_type_not_supported_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_type_not_supported_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trail_not_provided_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type trail_not_provided_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unsupported_operation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type unsupported_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_registered_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type account_registered_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_import_request() :: %{
        required("ImportId") => String.t()
      }
      
  """
  @type stop_import_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_logs_delivery_unavailable_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type cloud_watch_logs_delivery_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_channel_response() :: %{
        "ChannelArn" => String.t(),
        "Destinations" => list(destination()()),
        "Name" => String.t(),
        "Source" => String.t(),
        "Tags" => list(tag()())
      }
      
  """
  @type create_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disable_federation_response() :: %{
        "EventDataStoreArn" => String.t(),
        "FederationStatus" => list(any())
      }
      
  """
  @type disable_federation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delegated_admin_account_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type delegated_admin_account_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insufficient_encryption_policy_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type insufficient_encryption_policy_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_query_results_response() :: %{
        "ErrorMessage" => String.t(),
        "NextToken" => String.t(),
        "QueryResultRows" => list(list(map()())()),
        "QueryStatistics" => query_statistics(),
        "QueryStatus" => list(any())
      }
      
  """
  @type get_query_results_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_event_data_store_ingestion_request() :: %{
        required("EventDataStore") => String.t()
      }
      
  """
  @type stop_event_data_store_ingestion_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_organization_delegated_admin_request() :: %{
        required("DelegatedAdminAccountId") => String.t()
      }
      
  """
  @type deregister_organization_delegated_admin_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_organization_delegated_admin_response() :: %{}
      
  """
  @type register_organization_delegated_admin_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_channel_response() :: %{}
      
  """
  @type delete_channel_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_event_data_store_response() :: %{}
      
  """
  @type delete_event_data_store_response() :: %{}

  @typedoc """

  ## Example:
      
      get_import_response() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "Destinations" => list(String.t()()),
        "EndEventTime" => non_neg_integer(),
        "ImportId" => String.t(),
        "ImportSource" => import_source(),
        "ImportStatistics" => import_statistics(),
        "ImportStatus" => list(any()),
        "StartEventTime" => non_neg_integer(),
        "UpdatedTimestamp" => non_neg_integer()
      }
      
  """
  @type get_import_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_exists_for_e_d_s_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type channel_exists_for_e_d_s_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_public_keys_response() :: %{
        "NextToken" => String.t(),
        "PublicKeyList" => list(public_key()())
      }
      
  """
  @type list_public_keys_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      query_id_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type query_id_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_key_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type kms_key_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_bucket_does_not_exist_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type s3_bucket_does_not_exist_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_data_store_already_exists_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type event_data_store_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_query_results_request() :: %{
        optional("EventDataStore") => String.t(),
        optional("EventDataStoreOwnerAccountId") => String.t(),
        optional("MaxQueryResults") => integer(),
        optional("NextToken") => String.t(),
        required("QueryId") => String.t()
      }
      
  """
  @type get_query_results_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_trail_request() :: %{
        optional("CloudWatchLogsLogGroupArn") => String.t(),
        optional("CloudWatchLogsRoleArn") => String.t(),
        optional("EnableLogFileValidation") => boolean(),
        optional("IncludeGlobalServiceEvents") => boolean(),
        optional("IsMultiRegionTrail") => boolean(),
        optional("IsOrganizationTrail") => boolean(),
        optional("KmsKeyId") => String.t(),
        optional("S3KeyPrefix") => String.t(),
        optional("SnsTopicName") => String.t(),
        optional("TagsList") => list(tag()()),
        required("Name") => String.t(),
        required("S3BucketName") => String.t()
      }
      
  """
  @type create_trail_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_trails_request() :: %{
        optional("includeShadowTrails") => boolean(),
        optional("trailNameList") => list(String.t()())
      }
      
  """
  @type describe_trails_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_trail_response() :: %{}
      
  """
  @type delete_trail_response() :: %{}

  @typedoc """

  ## Example:
      
      update_trail_response() :: %{
        "CloudWatchLogsLogGroupArn" => String.t(),
        "CloudWatchLogsRoleArn" => String.t(),
        "IncludeGlobalServiceEvents" => boolean(),
        "IsMultiRegionTrail" => boolean(),
        "IsOrganizationTrail" => boolean(),
        "KmsKeyId" => String.t(),
        "LogFileValidationEnabled" => boolean(),
        "Name" => String.t(),
        "S3BucketName" => String.t(),
        "S3KeyPrefix" => String.t(),
        "SnsTopicARN" => String.t(),
        "SnsTopicName" => String.t(),
        "TrailARN" => String.t()
      }
      
  """
  @type update_trail_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lookup_events_response() :: %{
        "Events" => list(event()()),
        "NextToken" => String.t()
      }
      
  """
  @type lookup_events_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_event_data_store_response() :: %{
        "AdvancedEventSelectors" => list(advanced_event_selector()()),
        "BillingMode" => list(any()),
        "CreatedTimestamp" => non_neg_integer(),
        "EventDataStoreArn" => String.t(),
        "FederationRoleArn" => String.t(),
        "FederationStatus" => list(any()),
        "KmsKeyId" => String.t(),
        "MultiRegionEnabled" => boolean(),
        "Name" => String.t(),
        "OrganizationEnabled" => boolean(),
        "RetentionPeriod" => integer(),
        "Status" => list(any()),
        "TerminationProtectionEnabled" => boolean(),
        "UpdatedTimestamp" => non_neg_integer()
      }
      
  """
  @type update_event_data_store_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ingestion_status() :: %{
        "LatestIngestionAttemptEventID" => String.t(),
        "LatestIngestionAttemptTime" => non_neg_integer(),
        "LatestIngestionErrorCode" => String.t(),
        "LatestIngestionSuccessEventID" => String.t(),
        "LatestIngestionSuccessTime" => non_neg_integer()
      }
      
  """
  @type ingestion_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_s3_bucket_name_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_s3_bucket_name_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_dashboard_refresh_request() :: %{
        optional("QueryParameterValues") => map(),
        required("DashboardId") => String.t()
      }
      
  """
  @type start_dashboard_refresh_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_response() :: %{
        "NextToken" => String.t(),
        "ResourceTagList" => list(resource_tag()())
      }
      
  """
  @type list_tags_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_response() :: %{
        "DelegatedAdminResourcePolicy" => String.t(),
        "ResourceArn" => String.t(),
        "ResourcePolicy" => String.t()
      }
      
  """
  @type get_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_data_store_arn_invalid_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type event_data_store_arn_invalid_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_tags_response() :: %{}
      
  """
  @type add_tags_response() :: %{}

  @typedoc """

  ## Example:
      
      describe_query_request() :: %{
        optional("EventDataStore") => String.t(),
        optional("EventDataStoreOwnerAccountId") => String.t(),
        optional("QueryAlias") => String.t(),
        optional("QueryId") => String.t(),
        optional("RefreshId") => String.t()
      }
      
  """
  @type describe_query_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_trail_request() :: %{
        optional("CloudWatchLogsLogGroupArn") => String.t(),
        optional("CloudWatchLogsRoleArn") => String.t(),
        optional("EnableLogFileValidation") => boolean(),
        optional("IncludeGlobalServiceEvents") => boolean(),
        optional("IsMultiRegionTrail") => boolean(),
        optional("IsOrganizationTrail") => boolean(),
        optional("KmsKeyId") => String.t(),
        optional("S3BucketName") => String.t(),
        optional("S3KeyPrefix") => String.t(),
        optional("SnsTopicName") => String.t(),
        required("Name") => String.t()
      }
      
  """
  @type update_trail_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_already_exists_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type channel_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type channel_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_home_region_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_home_region_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_query_request() :: %{
        optional("DeliveryS3Uri") => String.t(),
        optional("EventDataStoreOwnerAccountId") => String.t(),
        optional("QueryAlias") => String.t(),
        optional("QueryParameters") => list(String.t()()),
        optional("QueryStatement") => String.t()
      }
      
  """
  @type start_query_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insufficient_sns_topic_policy_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type insufficient_sns_topic_policy_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_query_response() :: %{
        "EventDataStoreOwnerAccountId" => String.t(),
        "QueryId" => String.t(),
        "QueryStatus" => list(any())
      }
      
  """
  @type cancel_query_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      imports_list_item() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "Destinations" => list(String.t()()),
        "ImportId" => String.t(),
        "ImportStatus" => list(any()),
        "UpdatedTimestamp" => non_neg_integer()
      }
      
  """
  @type imports_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_statistics() :: %{
        "EventsCompleted" => float(),
        "FailedEntries" => float(),
        "FilesCompleted" => float(),
        "PrefixesCompleted" => float(),
        "PrefixesFound" => float()
      }
      
  """
  @type import_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generate_query_response() :: %{
        "EventDataStoreOwnerAccountId" => String.t(),
        "QueryAlias" => String.t(),
        "QueryStatement" => String.t()
      }
      
  """
  @type generate_query_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_queries_response() :: %{
        "NextToken" => String.t(),
        "Queries" => list(query()())
      }
      
  """
  @type list_queries_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_tag_parameter_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_tag_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_insights_metric_data_response() :: %{
        "ErrorCode" => String.t(),
        "EventName" => String.t(),
        "EventSource" => String.t(),
        "InsightType" => list(any()),
        "NextToken" => String.t(),
        "Timestamps" => list(non_neg_integer()()),
        "Values" => list(float()())
      }
      
  """
  @type list_insights_metric_data_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_s3_prefix_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_s3_prefix_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trail_info() :: %{
        "HomeRegion" => String.t(),
        "Name" => String.t(),
        "TrailARN" => String.t()
      }
      
  """
  @type trail_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      maximum_number_of_trails_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type maximum_number_of_trails_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      no_management_account_s_l_r_exists_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type no_management_account_s_l_r_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_event_selectors_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_event_selectors_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_federation_request() :: %{
        required("EventDataStore") => String.t(),
        required("FederationRoleArn") => String.t()
      }
      
  """
  @type enable_federation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_combination_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_parameter_combination_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      advanced_event_selector() :: %{
        "FieldSelectors" => list(advanced_field_selector()()),
        "Name" => String.t()
      }
      
  """
  @type advanced_event_selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_public_keys_request() :: %{
        optional("EndTime") => non_neg_integer(),
        optional("NextToken") => String.t(),
        optional("StartTime") => non_neg_integer()
      }
      
  """
  @type list_public_keys_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_imports_response() :: %{
        "Imports" => list(imports_list_item()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_imports_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_event_data_store_response() :: %{
        "AdvancedEventSelectors" => list(advanced_event_selector()()),
        "BillingMode" => list(any()),
        "CreatedTimestamp" => non_neg_integer(),
        "EventDataStoreArn" => String.t(),
        "KmsKeyId" => String.t(),
        "MultiRegionEnabled" => boolean(),
        "Name" => String.t(),
        "OrganizationEnabled" => boolean(),
        "RetentionPeriod" => integer(),
        "Status" => list(any()),
        "TerminationProtectionEnabled" => boolean(),
        "UpdatedTimestamp" => non_neg_integer()
      }
      
  """
  @type restore_event_data_store_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_query_status_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_query_status_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_source_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_source_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      add_tags_request() :: %{
        required("ResourceId") => String.t(),
        required("TagsList") => list(tag()())
      }
      
  """
  @type add_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_event_category_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_event_category_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_has_ongoing_import_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type account_has_ongoing_import_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_logging_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type start_logging_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_logging_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type stop_logging_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insight_not_enabled_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type insight_not_enabled_exception() :: %{String.t() => any()}

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
      
      inactive_query_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type inactive_query_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cancel_query_request() :: %{
        optional("EventDataStore") => String.t(),
        optional("EventDataStoreOwnerAccountId") => String.t(),
        required("QueryId") => String.t()
      }
      
  """
  @type cancel_query_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organization_not_in_all_features_mode_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type organization_not_in_all_features_mode_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_event_data_store_ingestion_request() :: %{
        required("EventDataStore") => String.t()
      }
      
  """
  @type start_event_data_store_ingestion_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_time_range_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_time_range_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insufficient_dependency_service_access_permission_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type insufficient_dependency_service_access_permission_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      request_widget() :: %{
        "QueryParameters" => list(String.t()()),
        "QueryStatement" => String.t(),
        "ViewProperties" => map()
      }
      
  """
  @type request_widget() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_event_data_store_category_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_event_data_store_category_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_queries_request() :: %{
        optional("EndTime") => non_neg_integer(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("QueryStatus") => list(any()),
        optional("StartTime") => non_neg_integer(),
        required("EventDataStore") => String.t()
      }
      
  """
  @type list_queries_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_selector() :: %{
        "DataResources" => list(data_resource()()),
        "ExcludeManagementEventSources" => list(String.t()()),
        "IncludeManagementEvents" => boolean(),
        "ReadWriteType" => list(any())
      }
      
  """
  @type event_selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_data_store_federation_enabled_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type event_data_store_federation_enabled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lookup_attribute() :: %{
        "AttributeKey" => list(any()),
        "AttributeValue" => String.t()
      }
      
  """
  @type lookup_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_next_token_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_not_registered_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type account_not_registered_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_event_data_store_response() :: %{
        "AdvancedEventSelectors" => list(advanced_event_selector()()),
        "BillingMode" => list(any()),
        "CreatedTimestamp" => non_neg_integer(),
        "EventDataStoreArn" => String.t(),
        "KmsKeyId" => String.t(),
        "MultiRegionEnabled" => boolean(),
        "Name" => String.t(),
        "OrganizationEnabled" => boolean(),
        "RetentionPeriod" => integer(),
        "Status" => list(any()),
        "TagsList" => list(tag()()),
        "TerminationProtectionEnabled" => boolean(),
        "UpdatedTimestamp" => non_neg_integer()
      }
      
  """
  @type create_event_data_store_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_event_data_store_request() :: %{
        optional("AdvancedEventSelectors") => list(advanced_event_selector()()),
        optional("BillingMode") => list(any()),
        optional("KmsKeyId") => String.t(),
        optional("MultiRegionEnabled") => boolean(),
        optional("Name") => String.t(),
        optional("OrganizationEnabled") => boolean(),
        optional("RetentionPeriod") => integer(),
        optional("TerminationProtectionEnabled") => boolean(),
        required("EventDataStore") => String.t()
      }
      
  """
  @type update_event_data_store_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trail_already_exists_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type trail_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insight_selector() :: %{
        "InsightType" => list(any())
      }
      
  """
  @type insight_selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_organization_delegated_admin_response() :: %{}
      
  """
  @type deregister_organization_delegated_admin_response() :: %{}

  @typedoc """

  ## Example:
      
      query_statistics_for_describe_query() :: %{
        "BytesScanned" => float(),
        "CreationTime" => non_neg_integer(),
        "EventsMatched" => float(),
        "EventsScanned" => float(),
        "ExecutionTimeInMillis" => integer()
      }
      
  """
  @type query_statistics_for_describe_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_trails_request() :: %{
        optional("NextToken") => String.t()
      }
      
  """
  @type list_trails_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_event_data_store_ingestion_response() :: %{}
      
  """
  @type stop_event_data_store_ingestion_response() :: %{}

  @typedoc """

  ## Example:
      
      create_event_data_store_request() :: %{
        optional("AdvancedEventSelectors") => list(advanced_event_selector()()),
        optional("BillingMode") => list(any()),
        optional("KmsKeyId") => String.t(),
        optional("MultiRegionEnabled") => boolean(),
        optional("OrganizationEnabled") => boolean(),
        optional("RetentionPeriod") => integer(),
        optional("StartIngestion") => boolean(),
        optional("TagsList") => list(tag()()),
        optional("TerminationProtectionEnabled") => boolean(),
        required("Name") => String.t()
      }
      
  """
  @type create_event_data_store_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generate_query_request() :: %{
        required("EventDataStores") => list(String.t()()),
        required("Prompt") => String.t()
      }
      
  """
  @type generate_query_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_channel_request() :: %{
        optional("Tags") => list(tag()()),
        required("Destinations") => list(destination()()),
        required("Name") => String.t(),
        required("Source") => String.t()
      }
      
  """
  @type create_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_import_request() :: %{
        required("ImportId") => String.t()
      }
      
  """
  @type get_import_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_event_data_store_response() :: %{
        "AdvancedEventSelectors" => list(advanced_event_selector()()),
        "BillingMode" => list(any()),
        "CreatedTimestamp" => non_neg_integer(),
        "EventDataStoreArn" => String.t(),
        "FederationRoleArn" => String.t(),
        "FederationStatus" => list(any()),
        "KmsKeyId" => String.t(),
        "MultiRegionEnabled" => boolean(),
        "Name" => String.t(),
        "OrganizationEnabled" => boolean(),
        "PartitionKeys" => list(partition_key()()),
        "RetentionPeriod" => integer(),
        "Status" => list(any()),
        "TerminationProtectionEnabled" => boolean(),
        "UpdatedTimestamp" => non_neg_integer()
      }
      
  """
  @type get_event_data_store_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_cloud_watch_logs_role_arn_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_cloud_watch_logs_role_arn_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_trail_status_request() :: %{
        required("Name") => String.t()
      }
      
  """
  @type get_trail_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trail_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type trail_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_tags_response() :: %{}
      
  """
  @type remove_tags_response() :: %{}

  @typedoc """

  ## Example:
      
      list_event_data_stores_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_event_data_stores_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      refresh_schedule_frequency() :: %{
        "Unit" => list(any()),
        "Value" => integer()
      }
      
  """
  @type refresh_schedule_frequency() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type account_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_insights_metric_data_request() :: %{
        optional("DataType") => list(any()),
        optional("EndTime") => non_neg_integer(),
        optional("ErrorCode") => String.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Period") => integer(),
        optional("StartTime") => non_neg_integer(),
        required("EventName") => String.t(),
        required("EventSource") => String.t(),
        required("InsightType") => list(any())
      }
      
  """
  @type list_insights_metric_data_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      organizations_not_in_use_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type organizations_not_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operation_not_permitted_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type operation_not_permitted_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_channels_response() :: %{
        "Channels" => list(channel()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_channels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      public_key() :: %{
        "Fingerprint" => String.t(),
        "ValidityEndTime" => non_neg_integer(),
        "ValidityStartTime" => non_neg_integer(),
        "Value" => binary()
      }
      
  """
  @type public_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_policy_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type get_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_policy_not_valid_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_policy_not_valid_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tags_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type tags_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_channel_request() :: %{
        optional("Destinations") => list(destination()()),
        optional("Name") => String.t(),
        required("Channel") => String.t()
      }
      
  """
  @type update_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_import_failures_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ImportId") => String.t()
      }
      
  """
  @type list_import_failures_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_dashboard_response() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "DashboardArn" => String.t(),
        "LastRefreshFailureReason" => String.t(),
        "LastRefreshId" => String.t(),
        "RefreshSchedule" => refresh_schedule(),
        "Status" => list(any()),
        "TerminationProtectionEnabled" => boolean(),
        "Type" => list(any()),
        "UpdatedTimestamp" => non_neg_integer(),
        "Widgets" => list(widget()())
      }
      
  """
  @type get_dashboard_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_dashboard_request() :: %{
        required("DashboardId") => String.t()
      }
      
  """
  @type delete_dashboard_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_event_data_store_request() :: %{
        required("EventDataStore") => String.t()
      }
      
  """
  @type get_event_data_store_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_event_selectors_request() :: %{
        required("TrailName") => String.t()
      }
      
  """
  @type get_event_selectors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      refresh_schedule() :: %{
        "Frequency" => refresh_schedule_frequency(),
        "Status" => list(any()),
        "TimeOfDay" => String.t()
      }
      
  """
  @type refresh_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_dashboard_response() :: %{}
      
  """
  @type delete_dashboard_response() :: %{}

  @typedoc """

  ## Example:
      
      start_logging_response() :: %{}
      
  """
  @type start_logging_response() :: %{}

  @typedoc """

  ## Example:
      
      list_import_failures_response() :: %{
        "Failures" => list(import_failure_list_item()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_import_failures_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      restore_event_data_store_request() :: %{
        required("EventDataStore") => String.t()
      }
      
  """
  @type restore_event_data_store_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_dashboard_response() :: %{
        "DashboardArn" => String.t(),
        "Name" => String.t(),
        "RefreshSchedule" => refresh_schedule(),
        "TagsList" => list(tag()()),
        "TerminationProtectionEnabled" => boolean(),
        "Type" => list(any()),
        "Widgets" => list(widget()())
      }
      
  """
  @type create_dashboard_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type import_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_tag() :: %{
        "ResourceId" => String.t(),
        "TagsList" => list(tag()())
      }
      
  """
  @type resource_tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_organization_master_account_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type not_organization_master_account_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event() :: %{
        "AccessKeyId" => String.t(),
        "CloudTrailEvent" => String.t(),
        "EventId" => String.t(),
        "EventName" => String.t(),
        "EventSource" => String.t(),
        "EventTime" => non_neg_integer(),
        "ReadOnly" => String.t(),
        "Resources" => list(resource()()),
        "Username" => String.t()
      }
      
  """
  @type event() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_trail_name_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_trail_name_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insufficient_s3_bucket_policy_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type insufficient_s3_bucket_policy_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s3_import_source() :: %{
        "S3BucketAccessRoleArn" => String.t(),
        "S3BucketRegion" => String.t(),
        "S3LocationUri" => String.t()
      }
      
  """
  @type s3_import_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_query_response() :: %{
        "EventDataStoreOwnerAccountId" => String.t(),
        "QueryId" => String.t()
      }
      
  """
  @type start_query_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_cloud_watch_logs_log_group_arn_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_cloud_watch_logs_log_group_arn_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_insight_selectors_response() :: %{
        "EventDataStoreArn" => String.t(),
        "InsightSelectors" => list(insight_selector()()),
        "InsightsDestination" => String.t(),
        "TrailARN" => String.t()
      }
      
  """
  @type get_insight_selectors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_insight_selectors_response() :: %{
        "EventDataStoreArn" => String.t(),
        "InsightSelectors" => list(insight_selector()()),
        "InsightsDestination" => String.t(),
        "TrailARN" => String.t()
      }
      
  """
  @type put_insight_selectors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_request() :: %{
        required("ResourceArn") => String.t(),
        required("ResourcePolicy") => String.t()
      }
      
  """
  @type put_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_trail_invalid_client_token_id_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type cloud_trail_invalid_client_token_id_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      inactive_event_data_store_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type inactive_event_data_store_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_import_response() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "Destinations" => list(String.t()()),
        "EndEventTime" => non_neg_integer(),
        "ImportId" => String.t(),
        "ImportSource" => import_source(),
        "ImportStatistics" => import_statistics(),
        "ImportStatus" => list(any()),
        "StartEventTime" => non_neg_integer(),
        "UpdatedTimestamp" => non_neg_integer()
      }
      
  """
  @type stop_import_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_import_source_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_import_source_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_parameter_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_parameter_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_dashboard_refresh_response() :: %{
        "RefreshId" => String.t()
      }
      
  """
  @type start_dashboard_refresh_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_logging_response() :: %{}
      
  """
  @type stop_logging_response() :: %{}

  @typedoc """

  ## Example:
      
      max_concurrent_queries_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type max_concurrent_queries_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_key_disabled_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type kms_key_disabled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      concurrent_modification_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type concurrent_modification_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_arn_invalid_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type channel_arn_invalid_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_sample_queries_response() :: %{
        "NextToken" => String.t(),
        "SearchResults" => list(search_sample_queries_search_result()())
      }
      
  """
  @type search_sample_queries_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_data_store() :: %{
        "AdvancedEventSelectors" => list(advanced_event_selector()()),
        "CreatedTimestamp" => non_neg_integer(),
        "EventDataStoreArn" => String.t(),
        "MultiRegionEnabled" => boolean(),
        "Name" => String.t(),
        "OrganizationEnabled" => boolean(),
        "RetentionPeriod" => integer(),
        "Status" => list(any()),
        "TerminationProtectionEnabled" => boolean(),
        "UpdatedTimestamp" => non_neg_integer()
      }
      
  """
  @type event_data_store() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      kms_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type kms_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_event_selectors_response() :: %{
        "AdvancedEventSelectors" => list(advanced_event_selector()()),
        "EventSelectors" => list(event_selector()()),
        "TrailARN" => String.t()
      }
      
  """
  @type put_event_selectors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      destination() :: %{
        "Location" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type destination() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lookup_events_request() :: %{
        optional("EndTime") => non_neg_integer(),
        optional("EventCategory") => list(any()),
        optional("LookupAttributes") => list(lookup_attribute()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("StartTime") => non_neg_integer()
      }
      
  """
  @type lookup_events_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_organization_delegated_admin_request() :: %{
        required("MemberAccountId") => String.t()
      }
      
  """
  @type register_organization_delegated_admin_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_data_store_termination_protected_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type event_data_store_termination_protected_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_kms_key_id_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_kms_key_id_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_insight_selectors_request() :: %{
        optional("EventDataStore") => String.t(),
        optional("TrailName") => String.t()
      }
      
  """
  @type get_insight_selectors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel() :: %{
        "ChannelArn" => String.t(),
        "Name" => String.t()
      }
      
  """
  @type channel() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_data_store_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type event_data_store_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_dashboard_request() :: %{
        optional("RefreshSchedule") => refresh_schedule(),
        optional("TagsList") => list(tag()()),
        optional("TerminationProtectionEnabled") => boolean(),
        optional("Widgets") => list(request_widget()()),
        required("Name") => String.t()
      }
      
  """
  @type create_dashboard_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_imports_request() :: %{
        optional("Destination") => String.t(),
        optional("ImportStatus") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_imports_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_insight_selectors_request() :: %{
        optional("EventDataStore") => String.t(),
        optional("InsightsDestination") => String.t(),
        optional("TrailName") => String.t(),
        required("InsightSelectors") => list(insight_selector()())
      }
      
  """
  @type put_insight_selectors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      advanced_field_selector() :: %{
        "EndsWith" => list(String.t()()),
        "Equals" => list(String.t()()),
        "Field" => String.t(),
        "NotEndsWith" => list(String.t()()),
        "NotEquals" => list(String.t()()),
        "NotStartsWith" => list(String.t()()),
        "StartsWith" => list(String.t()())
      }
      
  """
  @type advanced_field_selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_event_data_stores_response() :: %{
        "EventDataStores" => list(event_data_store()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_event_data_stores_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_resource_policy_response() :: %{
        "DelegatedAdminResourcePolicy" => String.t(),
        "ResourceArn" => String.t(),
        "ResourcePolicy" => String.t()
      }
      
  """
  @type put_resource_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_trails_response() :: %{
        "NextToken" => String.t(),
        "Trails" => list(trail_info()())
      }
      
  """
  @type list_trails_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      widget() :: %{
        "QueryAlias" => String.t(),
        "QueryParameters" => list(String.t()()),
        "QueryStatement" => String.t(),
        "ViewProperties" => map()
      }
      
  """
  @type widget() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_resource() :: %{
        "Type" => String.t(),
        "Values" => list(String.t()())
      }
      
  """
  @type data_resource() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cannot_delegate_management_account_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type cannot_delegate_management_account_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      query_statistics() :: %{
        "BytesScanned" => float(),
        "ResultsCount" => integer(),
        "TotalResultsCount" => integer()
      }
      
  """
  @type query_statistics() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_data_store_has_ongoing_import_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type event_data_store_has_ongoing_import_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source_config() :: %{
        "AdvancedEventSelectors" => list(advanced_event_selector()()),
        "ApplyToAllRegions" => boolean()
      }
      
  """
  @type source_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_channel_response() :: %{
        "ChannelArn" => String.t(),
        "Destinations" => list(destination()()),
        "IngestionStatus" => ingestion_status(),
        "Name" => String.t(),
        "Source" => String.t(),
        "SourceConfig" => source_config()
      }
      
  """
  @type get_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      channel_max_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type channel_max_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      put_event_selectors_request() :: %{
        optional("AdvancedEventSelectors") => list(advanced_event_selector()()),
        optional("EventSelectors") => list(event_selector()()),
        required("TrailName") => String.t()
      }
      
  """
  @type put_event_selectors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_date_range_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_date_range_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_resource_policy_request() :: %{
        required("ResourceArn") => String.t()
      }
      
  """
  @type delete_resource_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_source() :: %{
        "S3" => s3_import_source()
      }
      
  """
  @type import_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      import_failure_list_item() :: %{
        "ErrorMessage" => String.t(),
        "ErrorType" => String.t(),
        "LastUpdatedTime" => non_neg_integer(),
        "Location" => String.t(),
        "Status" => list(any())
      }
      
  """
  @type import_failure_list_item() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_lookup_attributes_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_lookup_attributes_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      event_data_store_max_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type event_data_store_max_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trail() :: %{
        "CloudWatchLogsLogGroupArn" => String.t(),
        "CloudWatchLogsRoleArn" => String.t(),
        "HasCustomEventSelectors" => boolean(),
        "HasInsightSelectors" => boolean(),
        "HomeRegion" => String.t(),
        "IncludeGlobalServiceEvents" => boolean(),
        "IsMultiRegionTrail" => boolean(),
        "IsOrganizationTrail" => boolean(),
        "KmsKeyId" => String.t(),
        "LogFileValidationEnabled" => boolean(),
        "Name" => String.t(),
        "S3BucketName" => String.t(),
        "S3KeyPrefix" => String.t(),
        "SnsTopicARN" => String.t(),
        "SnsTopicName" => String.t(),
        "TrailARN" => String.t()
      }
      
  """
  @type trail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      query() :: %{
        "CreationTime" => non_neg_integer(),
        "QueryId" => String.t(),
        "QueryStatus" => list(any())
      }
      
  """
  @type query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      generate_response_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type generate_response_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_event_data_store_status_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_event_data_store_status_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_trail_access_not_enabled_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type cloud_trail_access_not_enabled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_channel_response() :: %{
        "ChannelArn" => String.t(),
        "Destinations" => list(destination()()),
        "Name" => String.t(),
        "Source" => String.t()
      }
      
  """
  @type update_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_event_data_store_request() :: %{
        required("EventDataStore") => String.t()
      }
      
  """
  @type delete_event_data_store_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_trail_arn_invalid_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type cloud_trail_arn_invalid_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remove_tags_request() :: %{
        required("ResourceId") => String.t(),
        required("TagsList") => list(tag()())
      }
      
  """
  @type remove_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_policy_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_policy_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_request() :: %{
        optional("NextToken") => String.t(),
        required("ResourceIdList") => list(String.t()())
      }
      
  """
  @type list_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_dashboards_response() :: %{
        "Dashboards" => list(dashboard_detail()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_dashboards_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      search_sample_queries_search_result() :: %{
        "Description" => String.t(),
        "Name" => String.t(),
        "Relevance" => float(),
        "SQL" => String.t()
      }
      
  """
  @type search_sample_queries_search_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_arn_not_valid_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_arn_not_valid_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_token_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_insight_selectors_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_insight_selectors_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_channels_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_channels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_sns_topic_name_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_sns_topic_name_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_query_statement_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_query_statement_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_trail_status_response() :: %{
        "IsLogging" => boolean(),
        "LatestCloudWatchLogsDeliveryError" => String.t(),
        "LatestCloudWatchLogsDeliveryTime" => non_neg_integer(),
        "LatestDeliveryAttemptSucceeded" => String.t(),
        "LatestDeliveryAttemptTime" => String.t(),
        "LatestDeliveryError" => String.t(),
        "LatestDeliveryTime" => non_neg_integer(),
        "LatestDigestDeliveryError" => String.t(),
        "LatestDigestDeliveryTime" => non_neg_integer(),
        "LatestNotificationAttemptSucceeded" => String.t(),
        "LatestNotificationAttemptTime" => String.t(),
        "LatestNotificationError" => String.t(),
        "LatestNotificationTime" => non_neg_integer(),
        "StartLoggingTime" => non_neg_integer(),
        "StopLoggingTime" => non_neg_integer(),
        "TimeLoggingStarted" => String.t(),
        "TimeLoggingStopped" => String.t()
      }
      
  """
  @type get_trail_status_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_import_request() :: %{
        optional("Destinations") => list(String.t()()),
        optional("EndEventTime") => non_neg_integer(),
        optional("ImportId") => String.t(),
        optional("ImportSource") => import_source(),
        optional("StartEventTime") => non_neg_integer()
      }
      
  """
  @type start_import_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_import_response() :: %{
        "CreatedTimestamp" => non_neg_integer(),
        "Destinations" => list(String.t()()),
        "EndEventTime" => non_neg_integer(),
        "ImportId" => String.t(),
        "ImportSource" => import_source(),
        "ImportStatus" => list(any()),
        "StartEventTime" => non_neg_integer(),
        "UpdatedTimestamp" => non_neg_integer()
      }
      
  """
  @type start_import_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_event_selectors_response() :: %{
        "AdvancedEventSelectors" => list(advanced_event_selector()()),
        "EventSelectors" => list(event_selector()()),
        "TrailARN" => String.t()
      }
      
  """
  @type get_event_selectors_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_trail_response() :: %{
        "CloudWatchLogsLogGroupArn" => String.t(),
        "CloudWatchLogsRoleArn" => String.t(),
        "IncludeGlobalServiceEvents" => boolean(),
        "IsMultiRegionTrail" => boolean(),
        "IsOrganizationTrail" => boolean(),
        "KmsKeyId" => String.t(),
        "LogFileValidationEnabled" => boolean(),
        "Name" => String.t(),
        "S3BucketName" => String.t(),
        "S3KeyPrefix" => String.t(),
        "SnsTopicARN" => String.t(),
        "SnsTopicName" => String.t(),
        "TrailARN" => String.t()
      }
      
  """
  @type create_trail_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_trails_response() :: %{
        "trailList" => list(trail()())
      }
      
  """
  @type describe_trails_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dashboard_detail() :: %{
        "DashboardArn" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type dashboard_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_trail_response() :: %{
        "Trail" => trail()
      }
      
  """
  @type get_trail_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      enable_federation_response() :: %{
        "EventDataStoreArn" => String.t(),
        "FederationRoleArn" => String.t(),
        "FederationStatus" => list(any())
      }
      
  """
  @type enable_federation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource() :: %{
        "ResourceName" => String.t(),
        "ResourceType" => String.t()
      }
      
  """
  @type resource() :: %{String.t() => any()}

  @type add_tags_errors() ::
          cloud_trail_arn_invalid_exception()
          | event_data_store_not_found_exception()
          | channel_arn_invalid_exception()
          | inactive_event_data_store_exception()
          | invalid_trail_name_exception()
          | not_organization_master_account_exception()
          | tags_limit_exceeded_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | no_management_account_s_l_r_exists_exception()
          | invalid_tag_parameter_exception()
          | channel_not_found_exception()
          | event_data_store_arn_invalid_exception()
          | unsupported_operation_exception()
          | resource_type_not_supported_exception()

  @type cancel_query_errors() ::
          event_data_store_not_found_exception()
          | invalid_parameter_exception()
          | inactive_event_data_store_exception()
          | operation_not_permitted_exception()
          | inactive_query_exception()
          | conflict_exception()
          | no_management_account_s_l_r_exists_exception()
          | event_data_store_arn_invalid_exception()
          | query_id_not_found_exception()
          | unsupported_operation_exception()

  @type create_channel_errors() ::
          channel_max_limit_exceeded_exception()
          | event_data_store_not_found_exception()
          | invalid_parameter_exception()
          | inactive_event_data_store_exception()
          | tags_limit_exceeded_exception()
          | operation_not_permitted_exception()
          | invalid_event_data_store_category_exception()
          | invalid_source_exception()
          | invalid_tag_parameter_exception()
          | channel_already_exists_exception()
          | event_data_store_arn_invalid_exception()
          | unsupported_operation_exception()

  @type create_dashboard_errors() ::
          invalid_query_statement_exception()
          | event_data_store_not_found_exception()
          | inactive_event_data_store_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | invalid_tag_parameter_exception()
          | insufficient_encryption_policy_exception()
          | unsupported_operation_exception()

  @type create_event_data_store_errors() ::
          cloud_trail_access_not_enabled_exception()
          | event_data_store_max_limit_exceeded_exception()
          | invalid_kms_key_id_exception()
          | kms_exception()
          | invalid_parameter_exception()
          | not_organization_master_account_exception()
          | operation_not_permitted_exception()
          | organizations_not_in_use_exception()
          | insufficient_dependency_service_access_permission_exception()
          | organization_not_in_all_features_mode_exception()
          | conflict_exception()
          | invalid_event_selectors_exception()
          | no_management_account_s_l_r_exists_exception()
          | invalid_tag_parameter_exception()
          | event_data_store_already_exists_exception()
          | kms_key_not_found_exception()
          | insufficient_encryption_policy_exception()
          | unsupported_operation_exception()

  @type create_trail_errors() ::
          invalid_sns_topic_name_exception()
          | cloud_trail_access_not_enabled_exception()
          | invalid_kms_key_id_exception()
          | throttling_exception()
          | kms_exception()
          | kms_key_disabled_exception()
          | invalid_parameter_exception()
          | cloud_trail_invalid_client_token_id_exception()
          | invalid_cloud_watch_logs_log_group_arn_exception()
          | insufficient_s3_bucket_policy_exception()
          | invalid_trail_name_exception()
          | not_organization_master_account_exception()
          | tags_limit_exceeded_exception()
          | operation_not_permitted_exception()
          | organizations_not_in_use_exception()
          | invalid_cloud_watch_logs_role_arn_exception()
          | trail_already_exists_exception()
          | insufficient_dependency_service_access_permission_exception()
          | organization_not_in_all_features_mode_exception()
          | conflict_exception()
          | invalid_parameter_combination_exception()
          | no_management_account_s_l_r_exists_exception()
          | maximum_number_of_trails_exceeded_exception()
          | invalid_s3_prefix_exception()
          | invalid_tag_parameter_exception()
          | insufficient_sns_topic_policy_exception()
          | invalid_s3_bucket_name_exception()
          | s3_bucket_does_not_exist_exception()
          | kms_key_not_found_exception()
          | insufficient_encryption_policy_exception()
          | cloud_watch_logs_delivery_unavailable_exception()
          | unsupported_operation_exception()
          | trail_not_provided_exception()

  @type delete_channel_errors() ::
          channel_arn_invalid_exception()
          | operation_not_permitted_exception()
          | channel_not_found_exception()
          | unsupported_operation_exception()

  @type delete_dashboard_errors() ::
          resource_not_found_exception()
          | conflict_exception()
          | unsupported_operation_exception()

  @type delete_event_data_store_errors() ::
          event_data_store_has_ongoing_import_exception()
          | event_data_store_not_found_exception()
          | event_data_store_termination_protected_exception()
          | invalid_parameter_exception()
          | inactive_event_data_store_exception()
          | not_organization_master_account_exception()
          | operation_not_permitted_exception()
          | event_data_store_federation_enabled_exception()
          | insufficient_dependency_service_access_permission_exception()
          | conflict_exception()
          | no_management_account_s_l_r_exists_exception()
          | event_data_store_arn_invalid_exception()
          | channel_exists_for_e_d_s_exception()
          | unsupported_operation_exception()

  @type delete_resource_policy_errors() ::
          resource_arn_not_valid_exception()
          | resource_policy_not_found_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_operation_exception()
          | resource_type_not_supported_exception()

  @type delete_trail_errors() ::
          cloud_trail_arn_invalid_exception()
          | throttling_exception()
          | invalid_trail_name_exception()
          | not_organization_master_account_exception()
          | operation_not_permitted_exception()
          | trail_not_found_exception()
          | insufficient_dependency_service_access_permission_exception()
          | conflict_exception()
          | no_management_account_s_l_r_exists_exception()
          | invalid_home_region_exception()
          | unsupported_operation_exception()

  @type deregister_organization_delegated_admin_errors() ::
          cloud_trail_access_not_enabled_exception()
          | invalid_parameter_exception()
          | operation_not_permitted_exception()
          | organizations_not_in_use_exception()
          | account_not_found_exception()
          | account_not_registered_exception()
          | insufficient_dependency_service_access_permission_exception()
          | organization_not_in_all_features_mode_exception()
          | conflict_exception()
          | unsupported_operation_exception()
          | not_organization_management_account_exception()

  @type describe_query_errors() ::
          event_data_store_not_found_exception()
          | invalid_parameter_exception()
          | inactive_event_data_store_exception()
          | operation_not_permitted_exception()
          | no_management_account_s_l_r_exists_exception()
          | event_data_store_arn_invalid_exception()
          | query_id_not_found_exception()
          | unsupported_operation_exception()

  @type describe_trails_errors() ::
          cloud_trail_arn_invalid_exception()
          | invalid_trail_name_exception()
          | operation_not_permitted_exception()
          | no_management_account_s_l_r_exists_exception()
          | unsupported_operation_exception()

  @type disable_federation_errors() ::
          cloud_trail_access_not_enabled_exception()
          | event_data_store_not_found_exception()
          | concurrent_modification_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | inactive_event_data_store_exception()
          | not_organization_master_account_exception()
          | operation_not_permitted_exception()
          | organizations_not_in_use_exception()
          | insufficient_dependency_service_access_permission_exception()
          | organization_not_in_all_features_mode_exception()
          | no_management_account_s_l_r_exists_exception()
          | event_data_store_arn_invalid_exception()
          | unsupported_operation_exception()

  @type enable_federation_errors() ::
          cloud_trail_access_not_enabled_exception()
          | event_data_store_not_found_exception()
          | concurrent_modification_exception()
          | invalid_parameter_exception()
          | access_denied_exception()
          | inactive_event_data_store_exception()
          | not_organization_master_account_exception()
          | operation_not_permitted_exception()
          | organizations_not_in_use_exception()
          | event_data_store_federation_enabled_exception()
          | insufficient_dependency_service_access_permission_exception()
          | organization_not_in_all_features_mode_exception()
          | no_management_account_s_l_r_exists_exception()
          | event_data_store_arn_invalid_exception()
          | unsupported_operation_exception()

  @type generate_query_errors() ::
          generate_response_exception()
          | event_data_store_not_found_exception()
          | invalid_parameter_exception()
          | inactive_event_data_store_exception()
          | operation_not_permitted_exception()
          | no_management_account_s_l_r_exists_exception()
          | event_data_store_arn_invalid_exception()
          | unsupported_operation_exception()

  @type get_channel_errors() ::
          channel_arn_invalid_exception()
          | operation_not_permitted_exception()
          | channel_not_found_exception()
          | unsupported_operation_exception()

  @type get_dashboard_errors() ::
          resource_not_found_exception() | unsupported_operation_exception()

  @type get_event_data_store_errors() ::
          event_data_store_not_found_exception()
          | invalid_parameter_exception()
          | operation_not_permitted_exception()
          | no_management_account_s_l_r_exists_exception()
          | event_data_store_arn_invalid_exception()
          | unsupported_operation_exception()

  @type get_event_selectors_errors() ::
          cloud_trail_arn_invalid_exception()
          | invalid_trail_name_exception()
          | operation_not_permitted_exception()
          | trail_not_found_exception()
          | no_management_account_s_l_r_exists_exception()
          | unsupported_operation_exception()

  @type get_import_errors() ::
          invalid_parameter_exception()
          | import_not_found_exception()
          | operation_not_permitted_exception()
          | unsupported_operation_exception()

  @type get_insight_selectors_errors() ::
          cloud_trail_arn_invalid_exception()
          | throttling_exception()
          | invalid_parameter_exception()
          | invalid_trail_name_exception()
          | operation_not_permitted_exception()
          | trail_not_found_exception()
          | insight_not_enabled_exception()
          | invalid_parameter_combination_exception()
          | no_management_account_s_l_r_exists_exception()
          | unsupported_operation_exception()

  @type get_query_results_errors() ::
          event_data_store_not_found_exception()
          | invalid_parameter_exception()
          | inactive_event_data_store_exception()
          | operation_not_permitted_exception()
          | invalid_next_token_exception()
          | no_management_account_s_l_r_exists_exception()
          | event_data_store_arn_invalid_exception()
          | query_id_not_found_exception()
          | insufficient_encryption_policy_exception()
          | unsupported_operation_exception()
          | invalid_max_results_exception()

  @type get_resource_policy_errors() ::
          resource_arn_not_valid_exception()
          | resource_policy_not_found_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()
          | unsupported_operation_exception()
          | resource_type_not_supported_exception()

  @type get_trail_errors() ::
          cloud_trail_arn_invalid_exception()
          | invalid_trail_name_exception()
          | operation_not_permitted_exception()
          | trail_not_found_exception()
          | unsupported_operation_exception()

  @type get_trail_status_errors() ::
          cloud_trail_arn_invalid_exception()
          | invalid_trail_name_exception()
          | operation_not_permitted_exception()
          | trail_not_found_exception()
          | unsupported_operation_exception()

  @type list_channels_errors() ::
          operation_not_permitted_exception()
          | invalid_next_token_exception()
          | unsupported_operation_exception()

  @type list_dashboards_errors() :: unsupported_operation_exception()

  @type list_event_data_stores_errors() ::
          operation_not_permitted_exception()
          | invalid_next_token_exception()
          | no_management_account_s_l_r_exists_exception()
          | unsupported_operation_exception()
          | invalid_max_results_exception()

  @type list_import_failures_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | invalid_next_token_exception()
          | unsupported_operation_exception()

  @type list_imports_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | invalid_next_token_exception()
          | event_data_store_arn_invalid_exception()
          | unsupported_operation_exception()

  @type list_insights_metric_data_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | unsupported_operation_exception()

  @type list_public_keys_errors() ::
          invalid_token_exception()
          | operation_not_permitted_exception()
          | invalid_time_range_exception()
          | unsupported_operation_exception()

  @type list_queries_errors() ::
          invalid_date_range_exception()
          | event_data_store_not_found_exception()
          | invalid_parameter_exception()
          | inactive_event_data_store_exception()
          | operation_not_permitted_exception()
          | invalid_next_token_exception()
          | invalid_query_status_exception()
          | no_management_account_s_l_r_exists_exception()
          | event_data_store_arn_invalid_exception()
          | unsupported_operation_exception()
          | invalid_max_results_exception()

  @type list_tags_errors() ::
          invalid_token_exception()
          | cloud_trail_arn_invalid_exception()
          | event_data_store_not_found_exception()
          | channel_arn_invalid_exception()
          | inactive_event_data_store_exception()
          | invalid_trail_name_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()
          | no_management_account_s_l_r_exists_exception()
          | event_data_store_arn_invalid_exception()
          | unsupported_operation_exception()
          | resource_type_not_supported_exception()

  @type list_trails_errors() ::
          operation_not_permitted_exception() | unsupported_operation_exception()

  @type lookup_events_errors() ::
          invalid_lookup_attributes_exception()
          | operation_not_permitted_exception()
          | invalid_next_token_exception()
          | invalid_time_range_exception()
          | invalid_event_category_exception()
          | unsupported_operation_exception()
          | invalid_max_results_exception()

  @type put_event_selectors_errors() ::
          cloud_trail_arn_invalid_exception()
          | throttling_exception()
          | invalid_trail_name_exception()
          | not_organization_master_account_exception()
          | operation_not_permitted_exception()
          | trail_not_found_exception()
          | insufficient_dependency_service_access_permission_exception()
          | conflict_exception()
          | invalid_event_selectors_exception()
          | no_management_account_s_l_r_exists_exception()
          | invalid_home_region_exception()
          | unsupported_operation_exception()

  @type put_insight_selectors_errors() ::
          invalid_insight_selectors_exception()
          | cloud_trail_arn_invalid_exception()
          | throttling_exception()
          | kms_exception()
          | invalid_parameter_exception()
          | insufficient_s3_bucket_policy_exception()
          | invalid_trail_name_exception()
          | not_organization_master_account_exception()
          | operation_not_permitted_exception()
          | trail_not_found_exception()
          | invalid_parameter_combination_exception()
          | no_management_account_s_l_r_exists_exception()
          | invalid_home_region_exception()
          | s3_bucket_does_not_exist_exception()
          | insufficient_encryption_policy_exception()
          | unsupported_operation_exception()

  @type put_resource_policy_errors() ::
          resource_arn_not_valid_exception()
          | resource_policy_not_valid_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | unsupported_operation_exception()
          | resource_type_not_supported_exception()

  @type register_organization_delegated_admin_errors() ::
          cloud_trail_access_not_enabled_exception()
          | cannot_delegate_management_account_exception()
          | invalid_parameter_exception()
          | operation_not_permitted_exception()
          | organizations_not_in_use_exception()
          | account_not_found_exception()
          | insufficient_dependency_service_access_permission_exception()
          | organization_not_in_all_features_mode_exception()
          | conflict_exception()
          | delegated_admin_account_limit_exceeded_exception()
          | account_registered_exception()
          | unsupported_operation_exception()
          | not_organization_management_account_exception()

  @type remove_tags_errors() ::
          cloud_trail_arn_invalid_exception()
          | event_data_store_not_found_exception()
          | channel_arn_invalid_exception()
          | inactive_event_data_store_exception()
          | invalid_trail_name_exception()
          | not_organization_master_account_exception()
          | operation_not_permitted_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | no_management_account_s_l_r_exists_exception()
          | invalid_tag_parameter_exception()
          | channel_not_found_exception()
          | event_data_store_arn_invalid_exception()
          | unsupported_operation_exception()
          | resource_type_not_supported_exception()

  @type restore_event_data_store_errors() ::
          cloud_trail_access_not_enabled_exception()
          | invalid_event_data_store_status_exception()
          | event_data_store_max_limit_exceeded_exception()
          | event_data_store_not_found_exception()
          | invalid_parameter_exception()
          | not_organization_master_account_exception()
          | operation_not_permitted_exception()
          | organizations_not_in_use_exception()
          | insufficient_dependency_service_access_permission_exception()
          | organization_not_in_all_features_mode_exception()
          | no_management_account_s_l_r_exists_exception()
          | event_data_store_arn_invalid_exception()
          | unsupported_operation_exception()

  @type search_sample_queries_errors() ::
          invalid_parameter_exception()
          | operation_not_permitted_exception()
          | unsupported_operation_exception()

  @type start_dashboard_refresh_errors() ::
          event_data_store_not_found_exception()
          | inactive_event_data_store_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | unsupported_operation_exception()

  @type start_event_data_store_ingestion_errors() ::
          invalid_event_data_store_status_exception()
          | event_data_store_not_found_exception()
          | invalid_parameter_exception()
          | not_organization_master_account_exception()
          | operation_not_permitted_exception()
          | invalid_event_data_store_category_exception()
          | insufficient_dependency_service_access_permission_exception()
          | no_management_account_s_l_r_exists_exception()
          | event_data_store_arn_invalid_exception()
          | unsupported_operation_exception()

  @type start_import_errors() ::
          invalid_event_data_store_status_exception()
          | event_data_store_not_found_exception()
          | invalid_parameter_exception()
          | invalid_import_source_exception()
          | inactive_event_data_store_exception()
          | import_not_found_exception()
          | operation_not_permitted_exception()
          | invalid_event_data_store_category_exception()
          | account_has_ongoing_import_exception()
          | event_data_store_arn_invalid_exception()
          | insufficient_encryption_policy_exception()
          | unsupported_operation_exception()

  @type start_logging_errors() ::
          cloud_trail_arn_invalid_exception()
          | throttling_exception()
          | invalid_trail_name_exception()
          | not_organization_master_account_exception()
          | operation_not_permitted_exception()
          | trail_not_found_exception()
          | insufficient_dependency_service_access_permission_exception()
          | conflict_exception()
          | no_management_account_s_l_r_exists_exception()
          | invalid_home_region_exception()
          | unsupported_operation_exception()

  @type start_query_errors() ::
          invalid_query_statement_exception()
          | event_data_store_not_found_exception()
          | max_concurrent_queries_exception()
          | invalid_parameter_exception()
          | inactive_event_data_store_exception()
          | insufficient_s3_bucket_policy_exception()
          | operation_not_permitted_exception()
          | no_management_account_s_l_r_exists_exception()
          | invalid_s3_prefix_exception()
          | event_data_store_arn_invalid_exception()
          | invalid_s3_bucket_name_exception()
          | s3_bucket_does_not_exist_exception()
          | insufficient_encryption_policy_exception()
          | unsupported_operation_exception()

  @type stop_event_data_store_ingestion_errors() ::
          invalid_event_data_store_status_exception()
          | event_data_store_not_found_exception()
          | invalid_parameter_exception()
          | not_organization_master_account_exception()
          | operation_not_permitted_exception()
          | invalid_event_data_store_category_exception()
          | insufficient_dependency_service_access_permission_exception()
          | no_management_account_s_l_r_exists_exception()
          | event_data_store_arn_invalid_exception()
          | unsupported_operation_exception()

  @type stop_import_errors() ::
          invalid_parameter_exception()
          | import_not_found_exception()
          | operation_not_permitted_exception()
          | unsupported_operation_exception()

  @type stop_logging_errors() ::
          cloud_trail_arn_invalid_exception()
          | throttling_exception()
          | invalid_trail_name_exception()
          | not_organization_master_account_exception()
          | operation_not_permitted_exception()
          | trail_not_found_exception()
          | insufficient_dependency_service_access_permission_exception()
          | conflict_exception()
          | no_management_account_s_l_r_exists_exception()
          | invalid_home_region_exception()
          | unsupported_operation_exception()

  @type update_channel_errors() ::
          event_data_store_not_found_exception()
          | channel_arn_invalid_exception()
          | invalid_parameter_exception()
          | inactive_event_data_store_exception()
          | operation_not_permitted_exception()
          | invalid_event_data_store_category_exception()
          | channel_not_found_exception()
          | channel_already_exists_exception()
          | event_data_store_arn_invalid_exception()
          | unsupported_operation_exception()

  @type update_dashboard_errors() ::
          invalid_query_statement_exception()
          | event_data_store_not_found_exception()
          | inactive_event_data_store_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | insufficient_encryption_policy_exception()
          | unsupported_operation_exception()

  @type update_event_data_store_errors() ::
          invalid_insight_selectors_exception()
          | cloud_trail_access_not_enabled_exception()
          | event_data_store_has_ongoing_import_exception()
          | event_data_store_not_found_exception()
          | invalid_kms_key_id_exception()
          | kms_exception()
          | invalid_parameter_exception()
          | inactive_event_data_store_exception()
          | not_organization_master_account_exception()
          | operation_not_permitted_exception()
          | organizations_not_in_use_exception()
          | insufficient_dependency_service_access_permission_exception()
          | organization_not_in_all_features_mode_exception()
          | invalid_event_selectors_exception()
          | no_management_account_s_l_r_exists_exception()
          | event_data_store_arn_invalid_exception()
          | event_data_store_already_exists_exception()
          | kms_key_not_found_exception()
          | insufficient_encryption_policy_exception()
          | unsupported_operation_exception()

  @type update_trail_errors() ::
          invalid_sns_topic_name_exception()
          | cloud_trail_arn_invalid_exception()
          | cloud_trail_access_not_enabled_exception()
          | invalid_kms_key_id_exception()
          | throttling_exception()
          | kms_exception()
          | kms_key_disabled_exception()
          | invalid_parameter_exception()
          | cloud_trail_invalid_client_token_id_exception()
          | invalid_cloud_watch_logs_log_group_arn_exception()
          | insufficient_s3_bucket_policy_exception()
          | invalid_trail_name_exception()
          | not_organization_master_account_exception()
          | operation_not_permitted_exception()
          | organizations_not_in_use_exception()
          | trail_not_found_exception()
          | invalid_cloud_watch_logs_role_arn_exception()
          | insufficient_dependency_service_access_permission_exception()
          | organization_not_in_all_features_mode_exception()
          | conflict_exception()
          | invalid_parameter_combination_exception()
          | invalid_event_selectors_exception()
          | no_management_account_s_l_r_exists_exception()
          | invalid_s3_prefix_exception()
          | insufficient_sns_topic_policy_exception()
          | invalid_home_region_exception()
          | invalid_s3_bucket_name_exception()
          | s3_bucket_does_not_exist_exception()
          | kms_key_not_found_exception()
          | insufficient_encryption_policy_exception()
          | cloud_watch_logs_delivery_unavailable_exception()
          | unsupported_operation_exception()
          | trail_not_provided_exception()

  def metadata do
    %{
      api_version: "2013-11-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cloudtrail",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "CloudTrail",
      signature_version: "v4",
      signing_name: "cloudtrail",
      target_prefix: "CloudTrail_20131101"
    }
  end

  @doc """
  Adds one or more tags to a trail, event data store, dashboard, or channel, up to
  a limit of 50.

  Overwrites an
  existing tag's value when a new value is specified for an existing tag key. Tag
  key names
  must be unique; you cannot have two keys with the same name but different
  values. If you specify a key without a value, the tag will be created with the
  specified
  key and a value of null. You can tag a trail or event data store that applies to
  all
  Amazon Web Services Regions only from the Region in which the trail or event
  data store
  was created (also known as its home Region).
  """
  @spec add_tags(map(), add_tags_request(), list()) ::
          {:ok, add_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_tags_errors()}
  def add_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddTags", input, options)
  end

  @doc """
  Cancels a query if the query is not in a terminated state, such as
  `CANCELLED`, `FAILED`, `TIMED_OUT`, or
  `FINISHED`.

  You must specify an ARN value for `EventDataStore`.
  The ID of the query that you want to cancel is also required. When you run
  `CancelQuery`, the query status might show as `CANCELLED` even if
  the operation is not yet finished.
  """
  @spec cancel_query(map(), cancel_query_request(), list()) ::
          {:ok, cancel_query_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_query_errors()}
  def cancel_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CancelQuery", input, options)
  end

  @doc """
  Creates a channel for CloudTrail to ingest events from a partner or external
  source.

  After you create a channel, a CloudTrail Lake event data store can log events
  from the partner or source that you specify.
  """
  @spec create_channel(map(), create_channel_request(), list()) ::
          {:ok, create_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_channel_errors()}
  def create_channel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateChannel", input, options)
  end

  @doc """

  Creates a custom dashboard or the Highlights dashboard.

    *

  **Custom dashboards** - Custom dashboards allow you to query
  events in any event data store type. You can add up to 10 widgets to a custom
  dashboard. You can manually refresh a custom dashboard, or you can set a refresh
  schedule.

    *

  **Highlights dashboard** - You can create
  the Highlights dashboard to see a summary of key user activities and API usage
  across all your event data stores.
  CloudTrail Lake manages the Highlights dashboard and refreshes the dashboard
  every 6 hours. To create the Highlights dashboard, you must set and enable a
  refresh schedule.

  CloudTrail runs queries to populate the dashboard's widgets during a manual or
  scheduled refresh. CloudTrail must be granted permissions to run the
  `StartQuery` operation on your behalf. To provide permissions, run the
  `PutResourcePolicy` operation to attach a resource-based policy to each event
  data store. For more information,
  see [Example: Allow CloudTrail to run queries to populate a dashboard](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html#security_iam_resource-based-policy-examples-eds-dashboard)
  in the *CloudTrail User Guide*.

  To set a refresh schedule, CloudTrail must be granted permissions to run the
  `StartDashboardRefresh` operation to refresh the dashboard on your behalf. To
  provide permissions, run the `PutResourcePolicy` operation to attach a
  resource-based policy to the dashboard. For more information,
  see [
  Resource-based policy example for a
  dashboard](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html#security_iam_resource-based-policy-examples-dashboards)
  in the *CloudTrail User Guide*.

  For more information about dashboards, see [CloudTrail Lake dashboards](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-dashboard.html)
  in the *CloudTrail User Guide*.
  """
  @spec create_dashboard(map(), create_dashboard_request(), list()) ::
          {:ok, create_dashboard_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_dashboard_errors()}
  def create_dashboard(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDashboard", input, options)
  end

  @doc """
  Creates a new event data store.
  """
  @spec create_event_data_store(map(), create_event_data_store_request(), list()) ::
          {:ok, create_event_data_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_event_data_store_errors()}
  def create_event_data_store(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEventDataStore", input, options)
  end

  @doc """
  Creates a trail that specifies the settings for delivery of log data to an
  Amazon S3 bucket.
  """
  @spec create_trail(map(), create_trail_request(), list()) ::
          {:ok, create_trail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_trail_errors()}
  def create_trail(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTrail", input, options)
  end

  @doc """
  Deletes a channel.
  """
  @spec delete_channel(map(), delete_channel_request(), list()) ::
          {:ok, delete_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_channel_errors()}
  def delete_channel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteChannel", input, options)
  end

  @doc """

  Deletes the specified dashboard.

  You cannot delete a dashboard that has termination protection enabled.
  """
  @spec delete_dashboard(map(), delete_dashboard_request(), list()) ::
          {:ok, delete_dashboard_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_dashboard_errors()}
  def delete_dashboard(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDashboard", input, options)
  end

  @doc """
  Disables the event data store specified by `EventDataStore`, which accepts an
  event data store ARN.

  After you run `DeleteEventDataStore`, the event data store
  enters a `PENDING_DELETION` state, and is automatically deleted after a wait
  period of seven days. `TerminationProtectionEnabled` must be set to
  `False` on the event data store and the `FederationStatus` must be `DISABLED`.
  You cannot delete an event data store if `TerminationProtectionEnabled`
  is `True` or the `FederationStatus` is `ENABLED`.

  After you run `DeleteEventDataStore` on an event data store, you cannot run
  `ListQueries`, `DescribeQuery`, or `GetQueryResults` on
  queries that are using an event data store in a `PENDING_DELETION` state. An
  event data store in the `PENDING_DELETION` state does not incur costs.
  """
  @spec delete_event_data_store(map(), delete_event_data_store_request(), list()) ::
          {:ok, delete_event_data_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_event_data_store_errors()}
  def delete_event_data_store(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEventDataStore", input, options)
  end

  @doc """

  Deletes the resource-based policy attached to the CloudTrail event data store,
  dashboard, or channel.
  """
  @spec delete_resource_policy(map(), delete_resource_policy_request(), list()) ::
          {:ok, delete_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteResourcePolicy", input, options)
  end

  @doc """
  Deletes a trail.

  This operation must be called from the Region in which the trail was
  created. `DeleteTrail` cannot be called on the shadow trails (replicated trails
  in other Regions) of a trail that is enabled in all Regions.
  """
  @spec delete_trail(map(), delete_trail_request(), list()) ::
          {:ok, delete_trail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_trail_errors()}
  def delete_trail(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTrail", input, options)
  end

  @doc """
  Removes CloudTrail delegated administrator permissions from a member account in
  an organization.
  """
  @spec deregister_organization_delegated_admin(
          map(),
          deregister_organization_delegated_admin_request(),
          list()
        ) ::
          {:ok, deregister_organization_delegated_admin_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_organization_delegated_admin_errors()}
  def deregister_organization_delegated_admin(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterOrganizationDelegatedAdmin", input, options)
  end

  @doc """
  Returns metadata about a query, including query run time in milliseconds, number
  of
  events scanned and matched, and query status.

  If the query results were delivered to an S3 bucket,
  the response also provides the S3 URI and the delivery status.

  You must specify either `QueryId` or `QueryAlias`. Specifying the `QueryAlias`
  parameter
  returns information about the last query run for the alias. You can provide
  `RefreshId` along with `QueryAlias` to view the query results
  of a dashboard query for the specified `RefreshId`.
  """
  @spec describe_query(map(), describe_query_request(), list()) ::
          {:ok, describe_query_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_query_errors()}
  def describe_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeQuery", input, options)
  end

  @doc """
  Retrieves settings for one or more trails associated with the current Region for
  your
  account.
  """
  @spec describe_trails(map(), describe_trails_request(), list()) ::
          {:ok, describe_trails_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_trails_errors()}
  def describe_trails(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTrails", input, options)
  end

  @doc """

  Disables Lake query federation on the specified event data store.

  When you disable federation, CloudTrail disables
  the integration with Glue, Lake Formation, and Amazon Athena.
  After disabling Lake query federation, you can no longer query your event data
  in Amazon Athena.

  No CloudTrail Lake data is deleted when you disable federation and you can
  continue to run queries in CloudTrail Lake.
  """
  @spec disable_federation(map(), disable_federation_request(), list()) ::
          {:ok, disable_federation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disable_federation_errors()}
  def disable_federation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisableFederation", input, options)
  end

  @doc """

  Enables Lake query federation on the specified event data store.

  Federating an event data store lets you view the metadata associated with the
  event data store in the Glue
  [Data Catalog](https://docs.aws.amazon.com/glue/latest/dg/components-overview.html#data-catalog-intro)
  and run
  SQL queries against your event data using Amazon Athena. The table metadata
  stored in the Glue Data Catalog
  lets the Athena query engine know how to find, read, and process the data that
  you want to query.

  When you enable Lake query federation, CloudTrail
  creates a managed database named `aws:cloudtrail` (if the database doesn't
  already exist) and a managed federated table in
  the Glue Data Catalog. The event data store ID is used for the table name.
  CloudTrail registers the role ARN and event data store in
  [Lake Formation](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-federation-lake-formation.html),
  the service responsible for allowing fine-grained access control
  of the federated resources in the Glue Data Catalog.

  For more information about Lake query federation, see [Federate an event data store](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/query-federation.html).
  """
  @spec enable_federation(map(), enable_federation_request(), list()) ::
          {:ok, enable_federation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, enable_federation_errors()}
  def enable_federation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EnableFederation", input, options)
  end

  @doc """

  Generates a query from a natural language prompt.

  This operation uses generative artificial intelligence
  (generative AI) to produce a ready-to-use SQL query from the prompt.

  The prompt can be a question or a statement about the event data
  in your event data store. For example, you can enter prompts like "What are my
  top errors in the past month?" and “Give me a list of users that used SNS.”

  The prompt must be in English. For information about limitations, permissions,
  and supported Regions, see
  [Create CloudTrail Lake queries from natural language prompts](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/lake-query-generator.html)
  in the *CloudTrail * user guide.

  Do not include any personally identifying, confidential, or sensitive
  information
  in your prompts.

  This feature uses generative AI large language models (LLMs); we recommend
  double-checking the
  LLM response.
  """
  @spec generate_query(map(), generate_query_request(), list()) ::
          {:ok, generate_query_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, generate_query_errors()}
  def generate_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GenerateQuery", input, options)
  end

  @doc """
  Returns information about a specific channel.
  """
  @spec get_channel(map(), get_channel_request(), list()) ::
          {:ok, get_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_channel_errors()}
  def get_channel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetChannel", input, options)
  end

  @doc """

  Returns the specified dashboard.
  """
  @spec get_dashboard(map(), get_dashboard_request(), list()) ::
          {:ok, get_dashboard_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_dashboard_errors()}
  def get_dashboard(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDashboard", input, options)
  end

  @doc """
  Returns information about an event data store specified as either an ARN or the
  ID
  portion of the ARN.
  """
  @spec get_event_data_store(map(), get_event_data_store_request(), list()) ::
          {:ok, get_event_data_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_event_data_store_errors()}
  def get_event_data_store(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEventDataStore", input, options)
  end

  @doc """
  Describes the settings for the event selectors that you configured for your
  trail.

  The
  information returned for your event selectors includes the following:

    *
  If your event selector includes read-only events, write-only events, or all
  events. This applies to management events, data events, and network activity
  events.

    *
  If your event selector includes management events.

    *
  If your event selector includes network activity events, the event sources
  for which you are logging network activity events.

    *
  If your event selector includes data events, the resources on which you are
  logging data events.

  For more information about logging management, data, and network activity
  events, see the following topics
  in the *CloudTrail User Guide*:

    *

  [Logging management events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-events-with-cloudtrail.html)

    *

  [Logging data events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html)

    *

  [Logging network activity events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-network-events-with-cloudtrail.html)
  """
  @spec get_event_selectors(map(), get_event_selectors_request(), list()) ::
          {:ok, get_event_selectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_event_selectors_errors()}
  def get_event_selectors(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEventSelectors", input, options)
  end

  @doc """
  Returns information about a specific import.
  """
  @spec get_import(map(), get_import_request(), list()) ::
          {:ok, get_import_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_import_errors()}
  def get_import(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetImport", input, options)
  end

  @doc """
  Describes the settings for the Insights event selectors that you configured for
  your
  trail or event data store.

  `GetInsightSelectors` shows if CloudTrail Insights event logging
  is enabled on the trail or event data store, and if it is, which Insights types
  are enabled. If you run
  `GetInsightSelectors` on a trail or event data store that does not have Insights
  events enabled,
  the operation throws the exception `InsightNotEnabledException`

  Specify either the `EventDataStore` parameter to get Insights event selectors
  for an event data store,
  or the `TrailName` parameter to the get Insights event selectors for a trail.
  You cannot specify these parameters together.

  For more information, see [Working with CloudTrail Insights](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-insights-events-with-cloudtrail.html)
  in the *CloudTrail User Guide*.
  """
  @spec get_insight_selectors(map(), get_insight_selectors_request(), list()) ::
          {:ok, get_insight_selectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_insight_selectors_errors()}
  def get_insight_selectors(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetInsightSelectors", input, options)
  end

  @doc """
  Gets event data results of a query.

  You must specify the `QueryID` value
  returned by the `StartQuery` operation.
  """
  @spec get_query_results(map(), get_query_results_request(), list()) ::
          {:ok, get_query_results_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_query_results_errors()}
  def get_query_results(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetQueryResults", input, options)
  end

  @doc """

  Retrieves the JSON text of the resource-based policy document attached to the
  CloudTrail event data store, dashboard, or channel.
  """
  @spec get_resource_policy(map(), get_resource_policy_request(), list()) ::
          {:ok, get_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_policy_errors()}
  def get_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourcePolicy", input, options)
  end

  @doc """
  Returns settings information for a specified trail.
  """
  @spec get_trail(map(), get_trail_request(), list()) ::
          {:ok, get_trail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_trail_errors()}
  def get_trail(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTrail", input, options)
  end

  @doc """
  Returns a JSON-formatted list of information about the specified trail.

  Fields include
  information on delivery errors, Amazon SNS and Amazon S3 errors, and start
  and stop logging times for each trail. This operation returns trail status from
  a single
  Region. To return trail status from all Regions, you must call the operation on
  each
  Region.
  """
  @spec get_trail_status(map(), get_trail_status_request(), list()) ::
          {:ok, get_trail_status_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_trail_status_errors()}
  def get_trail_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTrailStatus", input, options)
  end

  @doc """
  Lists the channels in the current account, and their source names.
  """
  @spec list_channels(map(), list_channels_request(), list()) ::
          {:ok, list_channels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_channels_errors()}
  def list_channels(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListChannels", input, options)
  end

  @doc """

  Returns information about all dashboards in the account, in the current Region.
  """
  @spec list_dashboards(map(), list_dashboards_request(), list()) ::
          {:ok, list_dashboards_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_dashboards_errors()}
  def list_dashboards(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDashboards", input, options)
  end

  @doc """
  Returns information about all event data stores in the account, in the current
  Region.
  """
  @spec list_event_data_stores(map(), list_event_data_stores_request(), list()) ::
          {:ok, list_event_data_stores_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_event_data_stores_errors()}
  def list_event_data_stores(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEventDataStores", input, options)
  end

  @doc """
  Returns a list of failures for the specified import.
  """
  @spec list_import_failures(map(), list_import_failures_request(), list()) ::
          {:ok, list_import_failures_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_import_failures_errors()}
  def list_import_failures(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListImportFailures", input, options)
  end

  @doc """
  Returns information on all imports, or a select set of imports by
  `ImportStatus` or `Destination`.
  """
  @spec list_imports(map(), list_imports_request(), list()) ::
          {:ok, list_imports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_imports_errors()}
  def list_imports(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListImports", input, options)
  end

  @doc """
  Returns Insights metrics data for trails that have enabled Insights.

  The request must include the `EventSource`,
  `EventName`, and `InsightType` parameters.

  If the `InsightType` is set to `ApiErrorRateInsight`, the request must also
  include the `ErrorCode` parameter.

  The following are the available time periods for `ListInsightsMetricData`. Each
  cutoff is inclusive.

    *
  Data points with a period of 60 seconds (1-minute) are available for 15 days.

    *
  Data points with a period of 300 seconds (5-minute) are available for 63 days.

    *
  Data points with a period of 3600 seconds (1 hour) are available for 90 days.

  Access to the `ListInsightsMetricData` API operation is linked to the
  `cloudtrail:LookupEvents` action. To use this operation,
  you must have permissions to perform the `cloudtrail:LookupEvents` action.
  """
  @spec list_insights_metric_data(map(), list_insights_metric_data_request(), list()) ::
          {:ok, list_insights_metric_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_insights_metric_data_errors()}
  def list_insights_metric_data(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListInsightsMetricData", input, options)
  end

  @doc """
  Returns all public keys whose private keys were used to sign the digest files
  within the
  specified time range.

  The public key is needed to validate digest files that were signed
  with its corresponding private key.

  CloudTrail uses different private and public key pairs per Region. Each digest
  file is signed with a private key unique to its Region. When you validate a
  digest file
  from a specific Region, you must look in the same Region for its corresponding
  public
  key.
  """
  @spec list_public_keys(map(), list_public_keys_request(), list()) ::
          {:ok, list_public_keys_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_public_keys_errors()}
  def list_public_keys(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPublicKeys", input, options)
  end

  @doc """
  Returns a list of queries and query statuses for the past seven days.

  You must specify
  an ARN value for `EventDataStore`. Optionally, to shorten the list of results,
  you can specify a time range, formatted as timestamps, by adding `StartTime` and
  `EndTime` parameters, and a `QueryStatus` value. Valid values for
  `QueryStatus` include `QUEUED`, `RUNNING`,
  `FINISHED`, `FAILED`, `TIMED_OUT`, or
  `CANCELLED`.
  """
  @spec list_queries(map(), list_queries_request(), list()) ::
          {:ok, list_queries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_queries_errors()}
  def list_queries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListQueries", input, options)
  end

  @doc """
  Lists the tags for the specified trails, event data stores, dashboards, or
  channels in the current Region.
  """
  @spec list_tags(map(), list_tags_request(), list()) ::
          {:ok, list_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_errors()}
  def list_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTags", input, options)
  end

  @doc """
  Lists trails that are in the current account.
  """
  @spec list_trails(map(), list_trails_request(), list()) ::
          {:ok, list_trails_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_trails_errors()}
  def list_trails(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTrails", input, options)
  end

  @doc """
  Looks up [management events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-management-events)
  or [CloudTrail Insights events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-insights-events)
  that are captured by CloudTrail.

  You can look up events that occurred in a Region within the last 90 days.

  `LookupEvents` returns recent Insights events for trails that enable Insights.
  To view Insights events for an event data store, you can run queries on your
  Insights event data store, and you can also view the Lake dashboard for
  Insights.

  Lookup supports the following attributes for management events:

    *
  Amazon Web Services access key

    *
  Event ID

    *
  Event name

    *
  Event source

    *
  Read only

    *
  Resource name

    *
  Resource type

    *
  User name

  Lookup supports the following attributes for Insights events:

    *
  Event ID

    *
  Event name

    *
  Event source

  All attributes are optional. The default number of results returned is 50, with
  a
  maximum of 50 possible. The response includes a token that you can use to get
  the next page
  of results.

  The rate of lookup requests is limited to two per second, per account, per
  Region. If
  this limit is exceeded, a throttling error occurs.
  """
  @spec lookup_events(map(), lookup_events_request(), list()) ::
          {:ok, lookup_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, lookup_events_errors()}
  def lookup_events(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "LookupEvents", input, options)
  end

  @doc """
  Configures event selectors (also referred to as *basic event selectors*) or
  advanced event selectors for your trail.

  You can use
  either `AdvancedEventSelectors` or `EventSelectors`, but not both. If
  you apply `AdvancedEventSelectors` to a trail, any existing
  `EventSelectors` are overwritten.

  You can use `AdvancedEventSelectors` to
  log management events, data events for all resource types, and network activity
  events.

  You can use `EventSelectors` to log management events and data events for the
  following resource types:

    *

  `AWS::DynamoDB::Table`

    *

  `AWS::Lambda::Function`

    *

  `AWS::S3::Object`

  You can't use `EventSelectors` to log network activity events.

  If you want your trail to log Insights events, be sure the event selector or
  advanced event selector enables
  logging of the Insights event types you want configured for your trail. For more
  information about logging Insights events, see [Working with CloudTrail Insights](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-insights-events-with-cloudtrail.html)
  in the *CloudTrail User Guide*.
  By default, trails created without specific event selectors are configured to
  log all read and write management events, and no data events or network activity
  events.

  When an event occurs in your account, CloudTrail evaluates the event selectors
  or
  advanced event selectors in all trails. For each trail, if the event matches any
  event
  selector, the trail processes and logs the event. If the event doesn't match any
  event
  selector, the trail doesn't log the event.

  Example

    1.
  You create an event selector for a trail and specify that you want to log
  write-only
  events.

    2.
  The EC2 `GetConsoleOutput` and `RunInstances` API operations
  occur in your account.

    3.
  CloudTrail evaluates whether the events match your event selectors.

    4.
  The `RunInstances` is a write-only event and it matches your event
  selector. The trail logs the event.

    5.
  The `GetConsoleOutput` is a read-only event that doesn't match your
  event selector. The trail doesn't log the event.

  The `PutEventSelectors` operation must be called from the Region in which the
  trail was created; otherwise, an `InvalidHomeRegionException` exception is
  thrown.

  You can configure up to five event selectors for each trail.

  You can add advanced event selectors, and conditions for your advanced event
  selectors,
  up to a maximum of 500 values for all conditions and selectors on a trail. For
  more information, see
  [Logging management events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-events-with-cloudtrail.html),
  [Logging data
  events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-data-events-with-cloudtrail.html),
  [Logging network activity
  events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-network-events-with-cloudtrail.html),
  and [Quotas in CloudTrail](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/WhatIsCloudTrail-Limits.html)
  in the *CloudTrail User
  Guide*.
  """
  @spec put_event_selectors(map(), put_event_selectors_request(), list()) ::
          {:ok, put_event_selectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_event_selectors_errors()}
  def put_event_selectors(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutEventSelectors", input, options)
  end

  @doc """
  Lets you enable Insights event logging by specifying the Insights selectors that
  you
  want to enable on an existing trail or event data store.

  You also use `PutInsightSelectors` to turn
  off Insights event logging, by passing an empty list of Insights types. The
  valid Insights
  event types are `ApiErrorRateInsight` and
  `ApiCallRateInsight`.

  To enable Insights on an event data store, you must specify the ARNs (or ID
  suffix of the ARNs) for the source event data store (`EventDataStore`) and the
  destination event data store (`InsightsDestination`). The source event data
  store logs management events and enables Insights.
  The destination event data store logs Insights events based upon the management
  event activity of the source event data store. The source and destination event
  data stores must belong to the same Amazon Web Services account.

  To log Insights events for a trail, you must specify the name (`TrailName`) of
  the CloudTrail trail for which you want to change or add Insights
  selectors.

  To log CloudTrail Insights events on API call volume, the trail or event data
  store
  must log `write` management events. To log CloudTrail
  Insights events on API error rate, the trail or event data store must log `read`
  or
  `write` management events. You can call `GetEventSelectors` on a trail
  to check whether the trail logs management events. You can call
  `GetEventDataStore` on an
  event data store to check whether the event data store logs management events.

  For more information, see [Working with CloudTrail Insights](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-insights-events-with-cloudtrail.html)
  in the *CloudTrail User Guide*.
  """
  @spec put_insight_selectors(map(), put_insight_selectors_request(), list()) ::
          {:ok, put_insight_selectors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_insight_selectors_errors()}
  def put_insight_selectors(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutInsightSelectors", input, options)
  end

  @doc """

  Attaches a resource-based permission policy to a CloudTrail event data store,
  dashboard, or channel.

  For more information about resource-based policies, see
  [CloudTrail resource-based policy examples](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html)
  in the *CloudTrail User Guide*.
  """
  @spec put_resource_policy(map(), put_resource_policy_request(), list()) ::
          {:ok, put_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutResourcePolicy", input, options)
  end

  @doc """
  Registers an organization’s member account as the CloudTrail [delegated administrator](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-delegated-administrator.html).
  """
  @spec register_organization_delegated_admin(
          map(),
          register_organization_delegated_admin_request(),
          list()
        ) ::
          {:ok, register_organization_delegated_admin_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_organization_delegated_admin_errors()}
  def register_organization_delegated_admin(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterOrganizationDelegatedAdmin", input, options)
  end

  @doc """
  Removes the specified tags from a trail, event data store, dashboard, or
  channel.
  """
  @spec remove_tags(map(), remove_tags_request(), list()) ::
          {:ok, remove_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_tags_errors()}
  def remove_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveTags", input, options)
  end

  @doc """
  Restores a deleted event data store specified by `EventDataStore`, which
  accepts an event data store ARN.

  You can only restore a deleted event data store within the
  seven-day wait period after deletion. Restoring an event data store can take
  several
  minutes, depending on the size of the event data store.
  """
  @spec restore_event_data_store(map(), restore_event_data_store_request(), list()) ::
          {:ok, restore_event_data_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, restore_event_data_store_errors()}
  def restore_event_data_store(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreEventDataStore", input, options)
  end

  @doc """

  Searches sample queries and returns a list of sample queries that are sorted by
  relevance.

  To search for sample queries, provide a natural language `SearchPhrase` in
  English.
  """
  @spec search_sample_queries(map(), search_sample_queries_request(), list()) ::
          {:ok, search_sample_queries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_sample_queries_errors()}
  def search_sample_queries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SearchSampleQueries", input, options)
  end

  @doc """

  Starts a refresh of the specified dashboard.

  Each time a dashboard is refreshed, CloudTrail runs queries to populate the
  dashboard's widgets. CloudTrail must be granted permissions to run the
  `StartQuery` operation on your behalf. To provide permissions, run the
  `PutResourcePolicy` operation to attach a resource-based policy to each event
  data store. For more information,
  see [Example: Allow CloudTrail to run queries to populate a dashboard](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html#security_iam_resource-based-policy-examples-eds-dashboard)
  in the *CloudTrail User Guide*.
  """
  @spec start_dashboard_refresh(map(), start_dashboard_refresh_request(), list()) ::
          {:ok, start_dashboard_refresh_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_dashboard_refresh_errors()}
  def start_dashboard_refresh(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartDashboardRefresh", input, options)
  end

  @doc """
  Starts the ingestion of live events on an event data store specified as either
  an ARN or the ID portion of the ARN.

  To start ingestion, the event data store `Status` must be `STOPPED_INGESTION`
  and the `eventCategory` must be `Management`, `Data`, `NetworkActivity`, or
  `ConfigurationItem`.
  """
  @spec start_event_data_store_ingestion(
          map(),
          start_event_data_store_ingestion_request(),
          list()
        ) ::
          {:ok, start_event_data_store_ingestion_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_event_data_store_ingestion_errors()}
  def start_event_data_store_ingestion(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartEventDataStoreIngestion", input, options)
  end

  @doc """
  Starts an import of logged trail events from a source S3 bucket to a destination
  event
  data store.

  By default, CloudTrail only imports events contained in the S3 bucket's
  `CloudTrail` prefix and the prefixes inside the `CloudTrail` prefix, and does
  not check prefixes for other Amazon Web Services
  services. If you want to import CloudTrail events contained in another prefix,
  you
  must include the prefix in the `S3LocationUri`. For more considerations about
  importing trail events, see [Considerations for copying trail events](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-copy-trail-to-lake.html#cloudtrail-trail-copy-considerations)
  in the *CloudTrail User Guide*.

  When you start a new import, the `Destinations` and
  `ImportSource` parameters are required. Before starting a new import, disable
  any access control lists (ACLs) attached to the source S3 bucket. For more
  information
  about disabling ACLs, see [Controlling ownership of objects and disabling ACLs for your
  bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html).

  When you retry an import, the `ImportID` parameter is required.

  If the destination event data store is for an organization, you must use the
  management account to import trail events. You cannot use the delegated
  administrator
  account for the organization.
  """
  @spec start_import(map(), start_import_request(), list()) ::
          {:ok, start_import_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_import_errors()}
  def start_import(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartImport", input, options)
  end

  @doc """
  Starts the recording of Amazon Web Services API calls and log file delivery for
  a trail.

  For a trail that is enabled in all Regions, this operation must be called from
  the Region
  in which the trail was created. This operation cannot be called on the shadow
  trails
  (replicated trails in other Regions) of a trail that is enabled in all Regions.
  """
  @spec start_logging(map(), start_logging_request(), list()) ::
          {:ok, start_logging_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_logging_errors()}
  def start_logging(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartLogging", input, options)
  end

  @doc """
  Starts a CloudTrail Lake query.

  Use the `QueryStatement`
  parameter to provide your SQL query, enclosed in single quotation marks. Use the
  optional
  `DeliveryS3Uri` parameter to deliver the query results to an S3
  bucket.

  `StartQuery` requires you specify either the `QueryStatement` parameter, or a
  `QueryAlias` and any `QueryParameters`. In the current release,
  the `QueryAlias` and `QueryParameters` parameters are used only for the queries
  that populate the CloudTrail Lake dashboards.
  """
  @spec start_query(map(), start_query_request(), list()) ::
          {:ok, start_query_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_query_errors()}
  def start_query(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartQuery", input, options)
  end

  @doc """
  Stops the ingestion of live events on an event data store specified as either an
  ARN or the ID portion of the ARN.

  To stop ingestion, the event data store `Status` must be `ENABLED`
  and the `eventCategory` must be `Management`, `Data`, `NetworkActivity`, or
  `ConfigurationItem`.
  """
  @spec stop_event_data_store_ingestion(map(), stop_event_data_store_ingestion_request(), list()) ::
          {:ok, stop_event_data_store_ingestion_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_event_data_store_ingestion_errors()}
  def stop_event_data_store_ingestion(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopEventDataStoreIngestion", input, options)
  end

  @doc """
  Stops a specified import.
  """
  @spec stop_import(map(), stop_import_request(), list()) ::
          {:ok, stop_import_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_import_errors()}
  def stop_import(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopImport", input, options)
  end

  @doc """
  Suspends the recording of Amazon Web Services API calls and log file delivery
  for the
  specified trail.

  Under most circumstances, there is no need to use this action. You can
  update a trail without stopping it first. This action is the only way to stop
  recording.
  For a trail enabled in all Regions, this operation must be called from the
  Region in which
  the trail was created, or an `InvalidHomeRegionException` will occur. This
  operation cannot be called on the shadow trails (replicated trails in other
  Regions) of a
  trail enabled in all Regions.
  """
  @spec stop_logging(map(), stop_logging_request(), list()) ::
          {:ok, stop_logging_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_logging_errors()}
  def stop_logging(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopLogging", input, options)
  end

  @doc """
  Updates a channel specified by a required channel ARN or UUID.
  """
  @spec update_channel(map(), update_channel_request(), list()) ::
          {:ok, update_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_channel_errors()}
  def update_channel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateChannel", input, options)
  end

  @doc """

  Updates the specified dashboard.

  To set a refresh schedule, CloudTrail must be granted permissions to run the
  `StartDashboardRefresh` operation to refresh the dashboard on your behalf. To
  provide permissions, run the `PutResourcePolicy` operation to attach a
  resource-based policy to the dashboard. For more information,
  see [
  Resource-based policy example for a
  dashboard](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html#security_iam_resource-based-policy-examples-dashboards)
  in the *CloudTrail User Guide*.

  CloudTrail runs queries to populate the dashboard's widgets during a manual or
  scheduled refresh. CloudTrail must be granted permissions to run the
  `StartQuery` operation on your behalf. To provide permissions, run the
  `PutResourcePolicy` operation to attach a resource-based policy to each event
  data store. For more information,
  see [Example: Allow CloudTrail to run queries to populate a dashboard](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/security_iam_resource-based-policy-examples.html#security_iam_resource-based-policy-examples-eds-dashboard)
  in the *CloudTrail User Guide*.
  """
  @spec update_dashboard(map(), update_dashboard_request(), list()) ::
          {:ok, update_dashboard_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_dashboard_errors()}
  def update_dashboard(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDashboard", input, options)
  end

  @doc """
  Updates an event data store.

  The required `EventDataStore` value is an ARN or
  the ID portion of the ARN. Other parameters are optional, but at least one
  optional
  parameter must be specified, or CloudTrail throws an error.
  `RetentionPeriod` is in days, and valid values are integers between 7 and
  3653 if the `BillingMode` is set to `EXTENDABLE_RETENTION_PRICING`, or between 7
  and 2557 if `BillingMode` is set to `FIXED_RETENTION_PRICING`. By default,
  `TerminationProtection` is enabled.

  For event data stores for CloudTrail events, `AdvancedEventSelectors`
  includes or excludes management, data, or network activity events in your event
  data store. For more
  information about `AdvancedEventSelectors`, see
  [AdvancedEventSelectors](https://docs.aws.amazon.com/awscloudtrail/latest/APIReference/API_AdvancedEventSelector.html).

  For event data stores for CloudTrail Insights events, Config configuration
  items, Audit Manager evidence, or non-Amazon Web Services events,
  `AdvancedEventSelectors` includes events of that type in your event data store.
  """
  @spec update_event_data_store(map(), update_event_data_store_request(), list()) ::
          {:ok, update_event_data_store_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_event_data_store_errors()}
  def update_event_data_store(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateEventDataStore", input, options)
  end

  @doc """
  Updates trail settings that control what events you are logging, and how to
  handle log
  files.

  Changes to a trail do not require stopping the CloudTrail service. Use this
  action to designate an existing bucket for log delivery. If the existing bucket
  has
  previously been a target for CloudTrail log files, an IAM policy
  exists for the bucket. `UpdateTrail` must be called from the Region in which the
  trail was created; otherwise, an `InvalidHomeRegionException` is thrown.
  """
  @spec update_trail(map(), update_trail_request(), list()) ::
          {:ok, update_trail_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_trail_errors()}
  def update_trail(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTrail", input, options)
  end
end
