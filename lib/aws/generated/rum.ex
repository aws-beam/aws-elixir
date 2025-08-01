# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RUM do
  @moduledoc """
  With Amazon CloudWatch RUM, you can perform real-user monitoring to collect
  client-side data about
  your web application performance from actual user sessions in real time.

  The data collected includes page load
  times, client-side errors, and user behavior. When you view this data, you can
  see it all aggregated together and
  also see breakdowns by the browsers and devices that your customers use.

  You can use the collected data to quickly identify and debug client-side
  performance issues. CloudWatch
  RUM helps you visualize anomalies in your application performance and find
  relevant debugging data such as error
  messages, stack traces, and user sessions. You can also use RUM to
  understand the range of end-user impact including the number of users,
  geolocations, and browsers used.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      put_rum_metrics_destination_response() :: %{}

  """
  @type put_rum_metrics_destination_response() :: %{}

  @typedoc """

  ## Example:

      data_storage() :: %{
        "CwLog" => cw_log()
      }

  """
  @type data_storage() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      query_filter() :: %{
        "Name" => String.t() | Atom.t(),
        "Values" => list(String.t() | Atom.t())
      }

  """
  @type query_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_resource_policy_response() :: %{
        "PolicyRevisionId" => String.t() | Atom.t()
      }

  """
  @type delete_resource_policy_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      put_rum_events_request() :: %{
        optional("Alias") => String.t() | Atom.t(),
        required("AppMonitorDetails") => app_monitor_details(),
        required("BatchId") => [String.t() | Atom.t()],
        required("RumEvents") => list(rum_event()),
        required("UserDetails") => user_details()
      }

  """
  @type put_rum_events_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      app_monitor_summary() :: %{
        "Created" => String.t() | Atom.t(),
        "Id" => String.t() | Atom.t(),
        "LastModified" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "State" => String.t() | Atom.t()
      }

  """
  @type app_monitor_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_app_monitor_response() :: %{
        optional("AppMonitor") => app_monitor()
      }

  """
  @type get_app_monitor_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      app_monitor_details() :: %{
        "id" => [String.t() | Atom.t()],
        "name" => [String.t() | Atom.t()],
        "version" => [String.t() | Atom.t()]
      }

  """
  @type app_monitor_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      metric_destination_summary() :: %{
        "Destination" => String.t() | Atom.t(),
        "DestinationArn" => String.t() | Atom.t(),
        "IamRoleArn" => String.t() | Atom.t()
      }

  """
  @type metric_destination_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      cw_log() :: %{
        "CwLogEnabled" => [boolean()],
        "CwLogGroup" => [String.t() | Atom.t()]
      }

  """
  @type cw_log() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_rum_metric_definitions_request() :: %{
        optional("DestinationArn") => String.t() | Atom.t(),
        required("Destination") => String.t() | Atom.t(),
        required("MetricDefinitionIds") => list(String.t() | Atom.t())
      }

  """
  @type batch_delete_rum_metric_definitions_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      app_monitor_configuration() :: %{
        "AllowCookies" => [boolean()],
        "EnableXRay" => [boolean()],
        "ExcludedPages" => list(String.t() | Atom.t()),
        "FavoritePages" => list([String.t() | Atom.t()]()),
        "GuestRoleArn" => String.t() | Atom.t(),
        "IdentityPoolId" => String.t() | Atom.t(),
        "IncludedPages" => list(String.t() | Atom.t()),
        "SessionSampleRate" => float(),
        "Telemetries" => list(String.t() | Atom.t())
      }

  """
  @type app_monitor_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      user_details() :: %{
        "sessionId" => [String.t() | Atom.t()],
        "userId" => [String.t() | Atom.t()]
      }

  """
  @type user_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_resource_policy_response() :: %{
        "PolicyDocument" => [String.t() | Atom.t()],
        "PolicyRevisionId" => String.t() | Atom.t()
      }

  """
  @type get_resource_policy_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_app_monitor_request() :: %{
        optional("AppMonitorConfiguration") => app_monitor_configuration(),
        optional("CustomEvents") => custom_events(),
        optional("CwLogEnabled") => [boolean()],
        optional("DeobfuscationConfiguration") => deobfuscation_configuration(),
        optional("Domain") => String.t() | Atom.t(),
        optional("DomainList") => list(String.t() | Atom.t())
      }

  """
  @type update_app_monitor_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_app_monitor_data_request() :: %{
        optional("Filters") => list(query_filter()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        required("TimeRange") => time_range()
      }

  """
  @type get_app_monitor_data_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      metric_definition() :: %{
        "DimensionKeys" => map(),
        "EventPattern" => String.t() | Atom.t(),
        "MetricDefinitionId" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "Namespace" => String.t() | Atom.t(),
        "UnitLabel" => String.t() | Atom.t(),
        "ValueKey" => String.t() | Atom.t()
      }

  """
  @type metric_definition() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      policy_size_limit_exceeded_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type policy_size_limit_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_app_monitors_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t() | Atom.t()]
      }

  """
  @type list_app_monitors_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t() | Atom.t())
      }

  """
  @type untag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      rum_event() :: %{
        "details" => String.t() | Atom.t(),
        "id" => [String.t() | Atom.t()],
        "metadata" => String.t() | Atom.t(),
        "timestamp" => [non_neg_integer()],
        "type" => [String.t() | Atom.t()]
      }

  """
  @type rum_event() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_app_monitor_request() :: %{}

  """
  @type get_app_monitor_request() :: %{}

  @typedoc """

  ## Example:

      create_app_monitor_response() :: %{
        optional("Id") => String.t() | Atom.t()
      }

  """
  @type create_app_monitor_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      java_script_source_maps() :: %{
        "S3Uri" => String.t() | Atom.t(),
        "Status" => String.t() | Atom.t()
      }

  """
  @type java_script_source_maps() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      app_monitor() :: %{
        "AppMonitorConfiguration" => app_monitor_configuration(),
        "Created" => String.t() | Atom.t(),
        "CustomEvents" => custom_events(),
        "DataStorage" => data_storage(),
        "DeobfuscationConfiguration" => deobfuscation_configuration(),
        "Domain" => String.t() | Atom.t(),
        "DomainList" => list(String.t() | Atom.t()),
        "Id" => String.t() | Atom.t(),
        "LastModified" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "State" => String.t() | Atom.t(),
        "Tags" => map()
      }

  """
  @type app_monitor() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_app_monitor_response() :: %{}

  """
  @type delete_app_monitor_response() :: %{}

  @typedoc """

  ## Example:

      create_app_monitor_request() :: %{
        optional("AppMonitorConfiguration") => app_monitor_configuration(),
        optional("CustomEvents") => custom_events(),
        optional("CwLogEnabled") => [boolean()],
        optional("DeobfuscationConfiguration") => deobfuscation_configuration(),
        optional("Domain") => String.t() | Atom.t(),
        optional("DomainList") => list(String.t() | Atom.t()),
        optional("Tags") => map(),
        required("Name") => String.t() | Atom.t()
      }

  """
  @type create_app_monitor_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_rum_metrics_destination_request() :: %{
        optional("DestinationArn") => String.t() | Atom.t(),
        required("Destination") => String.t() | Atom.t()
      }

  """
  @type delete_rum_metrics_destination_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      policy_not_found_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type policy_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_create_rum_metric_definitions_error() :: %{
        "ErrorCode" => [String.t() | Atom.t()],
        "ErrorMessage" => [String.t() | Atom.t()],
        "MetricDefinition" => metric_definition_request()
      }

  """
  @type batch_create_rum_metric_definitions_error() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_create_rum_metric_definitions_request() :: %{
        optional("DestinationArn") => String.t() | Atom.t(),
        required("Destination") => String.t() | Atom.t(),
        required("MetricDefinitions") => list(metric_definition_request())
      }

  """
  @type batch_create_rum_metric_definitions_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      invalid_policy_revision_id_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type invalid_policy_revision_id_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_rum_metric_definition_request() :: %{
        optional("DestinationArn") => String.t() | Atom.t(),
        required("Destination") => String.t() | Atom.t(),
        required("MetricDefinition") => metric_definition_request(),
        required("MetricDefinitionId") => String.t() | Atom.t()
      }

  """
  @type update_rum_metric_definition_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => [String.t() | Atom.t()],
        "resourceName" => [String.t() | Atom.t()],
        "resourceType" => [String.t() | Atom.t()]
      }

  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t() | Atom.t()],
        "resourceName" => [String.t() | Atom.t()],
        "resourceType" => [String.t() | Atom.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_rum_metric_definitions_response() :: %{
        optional("MetricDefinitionIds") => list(String.t() | Atom.t()),
        required("Errors") => list(batch_delete_rum_metric_definitions_error())
      }

  """
  @type batch_delete_rum_metric_definitions_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      deobfuscation_configuration() :: %{
        "JavaScriptSourceMaps" => java_script_source_maps()
      }

  """
  @type deobfuscation_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_delete_rum_metric_definitions_error() :: %{
        "ErrorCode" => [String.t() | Atom.t()],
        "ErrorMessage" => [String.t() | Atom.t()],
        "MetricDefinitionId" => String.t() | Atom.t()
      }

  """
  @type batch_delete_rum_metric_definitions_error() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_app_monitor_data_response() :: %{
        optional("Events") => list(String.t() | Atom.t()),
        optional("NextToken") => String.t() | Atom.t()
      }

  """
  @type get_app_monitor_data_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      put_rum_events_response() :: %{}

  """
  @type put_rum_events_response() :: %{}

  @typedoc """

  ## Example:

      put_rum_metrics_destination_request() :: %{
        optional("DestinationArn") => String.t() | Atom.t(),
        optional("IamRoleArn") => String.t() | Atom.t(),
        required("Destination") => String.t() | Atom.t()
      }

  """
  @type put_rum_metrics_destination_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        required("ResourceArn") => String.t() | Atom.t(),
        required("Tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_app_monitor_request() :: %{}

  """
  @type delete_app_monitor_request() :: %{}

  @typedoc """

  ## Example:

      list_rum_metrics_destinations_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t() | Atom.t()]
      }

  """
  @type list_rum_metrics_destinations_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_resource_policy_request() :: %{}

  """
  @type get_resource_policy_request() :: %{}

  @typedoc """

  ## Example:

      delete_rum_metrics_destination_response() :: %{}

  """
  @type delete_rum_metrics_destination_response() :: %{}

  @typedoc """

  ## Example:

      batch_get_rum_metric_definitions_response() :: %{
        optional("MetricDefinitions") => list(metric_definition()),
        optional("NextToken") => [String.t() | Atom.t()]
      }

  """
  @type batch_get_rum_metric_definitions_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t() | Atom.t()],
        "retryAfterSeconds" => [integer()]
      }

  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_get_rum_metric_definitions_request() :: %{
        optional("DestinationArn") => String.t() | Atom.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => [String.t() | Atom.t()],
        required("Destination") => String.t() | Atom.t()
      }

  """
  @type batch_get_rum_metric_definitions_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      put_resource_policy_request() :: %{
        optional("PolicyRevisionId") => String.t() | Atom.t(),
        required("PolicyDocument") => [String.t() | Atom.t()]
      }

  """
  @type put_resource_policy_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      time_range() :: %{
        "After" => float(),
        "Before" => float()
      }

  """
  @type time_range() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      batch_create_rum_metric_definitions_response() :: %{
        optional("MetricDefinitions") => list(metric_definition()),
        required("Errors") => list(batch_create_rum_metric_definitions_error())
      }

  """
  @type batch_create_rum_metric_definitions_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type validation_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      update_app_monitor_response() :: %{}

  """
  @type update_app_monitor_response() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t() | Atom.t()],
        "quotaCode" => [String.t() | Atom.t()],
        "retryAfterSeconds" => [integer()],
        "serviceCode" => [String.t() | Atom.t()]
      }

  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      malformed_policy_document_exception() :: %{
        "message" => [String.t() | Atom.t()]
      }

  """
  @type malformed_policy_document_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      metric_definition_request() :: %{
        "DimensionKeys" => map(),
        "EventPattern" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "Namespace" => String.t() | Atom.t(),
        "UnitLabel" => String.t() | Atom.t(),
        "ValueKey" => String.t() | Atom.t()
      }

  """
  @type metric_definition_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_rum_metric_definition_response() :: %{}

  """
  @type update_rum_metric_definition_response() :: %{}

  @typedoc """

  ## Example:

      put_resource_policy_response() :: %{
        "PolicyDocument" => [String.t() | Atom.t()],
        "PolicyRevisionId" => String.t() | Atom.t()
      }

  """
  @type put_resource_policy_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_resource_policy_request() :: %{
        optional("PolicyRevisionId") => String.t() | Atom.t()
      }

  """
  @type delete_resource_policy_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_app_monitors_response() :: %{
        optional("AppMonitorSummaries") => list(app_monitor_summary()),
        optional("NextToken") => [String.t() | Atom.t()]
      }

  """
  @type list_app_monitors_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_rum_metrics_destinations_response() :: %{
        optional("Destinations") => list(metric_destination_summary()),
        optional("NextToken") => [String.t() | Atom.t()]
      }

  """
  @type list_rum_metrics_destinations_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      custom_events() :: %{
        "Status" => String.t() | Atom.t()
      }

  """
  @type custom_events() :: %{String.t() | Atom.t() => any()}

  @type batch_create_rum_metric_definitions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type batch_delete_rum_metric_definitions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type batch_get_rum_metric_definitions_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_app_monitor_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_app_monitor_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | invalid_policy_revision_id_exception()
          | policy_not_found_exception()

  @type delete_rum_metrics_destination_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_app_monitor_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_app_monitor_data_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_resource_policy_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | policy_not_found_exception()

  @type list_app_monitors_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_rum_metrics_destinations_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type put_resource_policy_errors() ::
          malformed_policy_document_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()
          | invalid_policy_revision_id_exception()
          | policy_size_limit_exceeded_exception()

  @type put_rum_events_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type put_rum_metrics_destination_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_app_monitor_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_rum_metric_definition_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "rum",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "RUM",
      signature_version: "v4",
      signing_name: "rum",
      target_prefix: nil
    }
  end

  @doc """
  Specifies the extended metrics and custom metrics that you want a CloudWatch RUM
  app monitor to send to a destination.

  Valid
  destinations include CloudWatch and Evidently.

  By default, RUM app monitors send some metrics to CloudWatch. These default
  metrics
  are listed in [CloudWatch metrics that you can collect with CloudWatch
  RUM](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-metrics.html).

  In addition to these default metrics, you can choose to send extended metrics,
  custom
  metrics, or both.

    *
  Extended metrics let you send metrics with additional dimensions that aren't
  included in the
  default metrics. You can also send extended metrics to both Evidently and
  CloudWatch. The valid dimension names for the additional dimensions for extended
  metrics are `BrowserName`, `CountryCode`,
  `DeviceType`, `FileType`, `OSName`, and
  `PageId`. For more information, see [
  Extended metrics that you can send to CloudWatch and CloudWatch
  Evidently](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-vended-metrics.html).

    *
  Custom metrics are metrics that you define. You can send custom metrics to
  CloudWatch.
  CloudWatch Evidently, or both. With custom metrics, you can use any metric
  name and namespace. To derive the metrics, you can use any custom events,
  built-in
  events, custom attributes, or default attributes.

  You can't send custom metrics to the `AWS/RUM` namespace. You must send custom
  metrics to a
  custom namespace that you define. The namespace that you use can't start with
  `AWS/`.
  CloudWatch RUM prepends `RUM/CustomMetrics/` to the custom namespace that you
  define,
  so the final namespace for your metrics in CloudWatch is

  ```
  RUM/CustomMetrics/*your-custom-namespace*

  ```

  .

  The maximum number of metric definitions that you can specify in one
  `BatchCreateRumMetricDefinitions` operation is 200.

  The maximum number of metric definitions that one destination can contain is
  2000.

  Extended metrics sent to CloudWatch and RUM custom metrics are charged as
  CloudWatch custom metrics. Each combination of additional dimension name and
  dimension
  value counts as a custom metric. For more information, see
  [Amazon CloudWatch Pricing](https://aws.amazon.com/cloudwatch/pricing/).   You must have
  already created a destination for the metrics before you send them. For more
  information, see
  [PutRumMetricsDestination](https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_PutRumMetricsDestination.html).

  If some metric definitions specified in a `BatchCreateRumMetricDefinitions`
  operations are not valid,
  those metric definitions fail and return errors, but all valid metric
  definitions in the same operation still succeed.
  """
  @spec batch_create_rum_metric_definitions(
          map(),
          String.t() | Atom.t(),
          batch_create_rum_metric_definitions_request(),
          list()
        ) ::
          {:ok, batch_create_rum_metric_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_create_rum_metric_definitions_errors()}
  def batch_create_rum_metric_definitions(
        %Client{} = client,
        app_monitor_name,
        input,
        options \\ []
      ) do
    url_path = "/rummetrics/#{AWS.Util.encode_uri(app_monitor_name)}/metrics"
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
  Removes the specified metrics from being sent to an extended metrics
  destination.

  If some metric definition IDs specified in a `BatchDeleteRumMetricDefinitions`
  operations are not valid,
  those metric definitions fail and return errors, but all valid metric definition
  IDs in the same operation are still
  deleted.

  The maximum number of metric definitions that you can specify in one
  `BatchDeleteRumMetricDefinitions` operation is 200.
  """
  @spec batch_delete_rum_metric_definitions(
          map(),
          String.t() | Atom.t(),
          batch_delete_rum_metric_definitions_request(),
          list()
        ) ::
          {:ok, batch_delete_rum_metric_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_delete_rum_metric_definitions_errors()}
  def batch_delete_rum_metric_definitions(
        %Client{} = client,
        app_monitor_name,
        input,
        options \\ []
      ) do
    url_path = "/rummetrics/#{AWS.Util.encode_uri(app_monitor_name)}/metrics"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Destination", "destination"},
        {"DestinationArn", "destinationArn"},
        {"MetricDefinitionIds", "metricDefinitionIds"}
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
  Retrieves the list of metrics and dimensions that a RUM app monitor is sending
  to a single destination.
  """
  @spec batch_get_rum_metric_definitions(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, batch_get_rum_metric_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_rum_metric_definitions_errors()}
  def batch_get_rum_metric_definitions(
        %Client{} = client,
        app_monitor_name,
        destination,
        destination_arn \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/rummetrics/#{AWS.Util.encode_uri(app_monitor_name)}/metrics"
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
      if !is_nil(destination_arn) do
        [{"destinationArn", destination_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(destination) do
        [{"destination", destination} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Creates a Amazon CloudWatch RUM app monitor, which collects telemetry data from
  your application and sends that
  data to RUM.

  The data includes performance and reliability information such as page load
  time, client-side errors,
  and user behavior.

  You use this operation only to create a new app monitor. To update an existing
  app monitor, use
  [UpdateAppMonitor](https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_UpdateAppMonitor.html) instead.

  After you create an app monitor, sign in to the CloudWatch RUM console to get
  the JavaScript code snippet to add to your web application. For more
  information, see
  [How do I find a code snippet
  that I've already
  generated?](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-find-code-snippet.html)
  """
  @spec create_app_monitor(map(), create_app_monitor_request(), list()) ::
          {:ok, create_app_monitor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_app_monitor_errors()}
  def create_app_monitor(%Client{} = client, input, options \\ []) do
    url_path = "/appmonitor"
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
  Deletes an existing app monitor.

  This immediately stops the collection of data.
  """
  @spec delete_app_monitor(map(), String.t() | Atom.t(), delete_app_monitor_request(), list()) ::
          {:ok, delete_app_monitor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_app_monitor_errors()}
  def delete_app_monitor(%Client{} = client, name, input, options \\ []) do
    url_path = "/appmonitor/#{AWS.Util.encode_uri(name)}"
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
  Removes the association of a resource-based policy from an app monitor.
  """
  @spec delete_resource_policy(
          map(),
          String.t() | Atom.t(),
          delete_resource_policy_request(),
          list()
        ) ::
          {:ok, delete_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, name, input, options \\ []) do
    url_path = "/appmonitor/#{AWS.Util.encode_uri(name)}/policy"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"PolicyRevisionId", "policyRevisionId"}
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
  Deletes a destination for CloudWatch RUM extended metrics, so that the specified
  app monitor stops
  sending extended metrics to that destination.
  """
  @spec delete_rum_metrics_destination(
          map(),
          String.t() | Atom.t(),
          delete_rum_metrics_destination_request(),
          list()
        ) ::
          {:ok, delete_rum_metrics_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_rum_metrics_destination_errors()}
  def delete_rum_metrics_destination(%Client{} = client, app_monitor_name, input, options \\ []) do
    url_path = "/rummetrics/#{AWS.Util.encode_uri(app_monitor_name)}/metricsdestination"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Destination", "destination"},
        {"DestinationArn", "destinationArn"}
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
  Retrieves the complete configuration information for one app monitor.
  """
  @spec get_app_monitor(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_app_monitor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_app_monitor_errors()}
  def get_app_monitor(%Client{} = client, name, options \\ []) do
    url_path = "/appmonitor/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the raw performance events that RUM has collected from your web
  application,
  so that you can do your own processing or analysis of this data.
  """
  @spec get_app_monitor_data(map(), String.t() | Atom.t(), get_app_monitor_data_request(), list()) ::
          {:ok, get_app_monitor_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_app_monitor_data_errors()}
  def get_app_monitor_data(%Client{} = client, name, input, options \\ []) do
    url_path = "/appmonitor/#{AWS.Util.encode_uri(name)}/data"
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
  Use this operation to retrieve information about a resource-based policy that is
  attached to an app monitor.
  """
  @spec get_resource_policy(map(), String.t() | Atom.t(), list()) ::
          {:ok, get_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_policy_errors()}
  def get_resource_policy(%Client{} = client, name, options \\ []) do
    url_path = "/appmonitor/#{AWS.Util.encode_uri(name)}/policy"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of the Amazon CloudWatch RUM app monitors in the account.
  """
  @spec list_app_monitors(map(), list_app_monitors_request(), list()) ::
          {:ok, list_app_monitors_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_app_monitors_errors()}
  def list_app_monitors(%Client{} = client, input, options \\ []) do
    url_path = "/appmonitors"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"MaxResults", "maxResults"},
        {"NextToken", "nextToken"}
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
  Returns a list of destinations that you have created to receive RUM extended
  metrics,
  for the specified app monitor.

  For more information about extended metrics, see
  [AddRumMetrics](https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_AddRumMetrcs.html).
  """
  @spec list_rum_metrics_destinations(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_rum_metrics_destinations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_rum_metrics_destinations_errors()}
  def list_rum_metrics_destinations(
        %Client{} = client,
        app_monitor_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/rummetrics/#{AWS.Util.encode_uri(app_monitor_name)}/metricsdestination"
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
  Displays the tags associated with a CloudWatch RUM resource.
  """
  @spec list_tags_for_resource(map(), String.t() | Atom.t(), list()) ::
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
  Use this operation to assign a resource-based policy to a CloudWatch RUM app
  monitor to control access to it.

  Each app monitor can
  have one resource-based policy. The maximum size of the policy is 4 KB. To learn
  more about using resource policies with RUM, see [Using resource-based policies with CloudWatch
  RUM](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-resource-policies.html).
  """
  @spec put_resource_policy(map(), String.t() | Atom.t(), put_resource_policy_request(), list()) ::
          {:ok, put_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, name, input, options \\ []) do
    url_path = "/appmonitor/#{AWS.Util.encode_uri(name)}/policy"
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
  Sends telemetry events about your application performance and user behavior to
  CloudWatch RUM.

  The code
  snippet that RUM generates for you to add to your application includes
  `PutRumEvents` operations to
  send this data to RUM.

  Each `PutRumEvents` operation can send a batch of events from one user session.
  """
  @spec put_rum_events(map(), String.t() | Atom.t(), put_rum_events_request(), list()) ::
          {:ok, put_rum_events_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_rum_events_errors()}
  def put_rum_events(%Client{} = client, id, input, options \\ []) do
    url_path = "/appmonitors/#{AWS.Util.encode_uri(id)}/"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "dataplane.")

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
  Creates or updates a destination to receive extended metrics from CloudWatch
  RUM.

  You can send
  extended metrics to CloudWatch or to a CloudWatch Evidently experiment.

  For more information about extended metrics, see
  [BatchCreateRumMetricDefinitions](https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_BatchCreateRumMetricDefinitions.html).
  """
  @spec put_rum_metrics_destination(
          map(),
          String.t() | Atom.t(),
          put_rum_metrics_destination_request(),
          list()
        ) ::
          {:ok, put_rum_metrics_destination_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_rum_metrics_destination_errors()}
  def put_rum_metrics_destination(%Client{} = client, app_monitor_name, input, options \\ []) do
    url_path = "/rummetrics/#{AWS.Util.encode_uri(app_monitor_name)}/metricsdestination"
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
  Assigns one or more tags (key-value pairs) to the specified CloudWatch RUM
  resource.

  Currently,
  the only resources that
  can be tagged app monitors.

  Tags can help you organize and categorize your resources. You can also use them
  to scope user
  permissions by granting a user
  permission to access or change only resources with certain tag values.

  Tags don't have any semantic meaning to Amazon Web Services and are interpreted
  strictly as strings of characters.

  You can use the `TagResource` action with a resource that already has tags.
  If you specify a new tag key for the resource,
  this tag is appended to the list of tags associated
  with the alarm. If you specify a tag key that is already associated with the
  resource, the new tag value that you specify replaces
  the previous value for that tag.

  You can associate as many as 50 tags with a resource.

  For more information, see [Tagging Amazon Web Services resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html).
  """
  @spec tag_resource(map(), String.t() | Atom.t(), tag_resource_request(), list()) ::
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
  Removes one or more tags from the specified resource.
  """
  @spec untag_resource(map(), String.t() | Atom.t(), untag_resource_request(), list()) ::
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
        {"TagKeys", "tagKeys"}
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
  Updates the configuration of an existing app monitor.

  When you use this operation, only the parts of the app monitor
  configuration that you specify in this operation are changed. For any parameters
  that you omit, the existing
  values are kept.

  You can't use this operation to change the tags of an existing app monitor. To
  change the tags of an existing app monitor, use
  [TagResource](https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_TagResource.html). 
  To create a new app monitor, use
  [CreateAppMonitor](https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_CreateAppMonitor.html).

  After you update an app monitor, sign in to the CloudWatch RUM console to get
  the updated JavaScript code snippet to add to your web application. For more
  information, see
  [How do I find a code snippet that I've already
  generated?](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch-RUM-find-code-snippet.html)
  """
  @spec update_app_monitor(map(), String.t() | Atom.t(), update_app_monitor_request(), list()) ::
          {:ok, update_app_monitor_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_app_monitor_errors()}
  def update_app_monitor(%Client{} = client, name, input, options \\ []) do
    url_path = "/appmonitor/#{AWS.Util.encode_uri(name)}"
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
  Modifies one existing metric definition for CloudWatch RUM extended metrics.

  For
  more information about extended metrics, see
  [BatchCreateRumMetricsDefinitions](https://docs.aws.amazon.com/cloudwatchrum/latest/APIReference/API_BatchCreateRumMetricsDefinitions.html).
  """
  @spec update_rum_metric_definition(
          map(),
          String.t() | Atom.t(),
          update_rum_metric_definition_request(),
          list()
        ) ::
          {:ok, update_rum_metric_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_rum_metric_definition_errors()}
  def update_rum_metric_definition(%Client{} = client, app_monitor_name, input, options \\ []) do
    url_path = "/rummetrics/#{AWS.Util.encode_uri(app_monitor_name)}/metrics"
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
