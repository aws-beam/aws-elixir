# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.GameLiftStreams do
  @moduledoc """
  Amazon GameLift Streams

  Amazon GameLift Streams provides a global cloud solution for content streaming
  experiences.

  Use Amazon GameLift Streams tools to upload and configure content for streaming,
  deploy and scale computing resources to host streams, and manage stream session
  placement to meet customer demand.

  This Reference Guide describes the Amazon GameLift Streams service API. You can
  use the API through the Amazon Web Services SDK, the Command Line Interface
  (CLI), or by making direct REST calls through HTTPS.

  See the *Amazon GameLift Streams Developer Guide* for more information on how
  Amazon GameLift Streams works and how to work with it.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      stream_session_summary() :: %{
        "ApplicationArn" => String.t() | atom(),
        "Arn" => String.t() | atom(),
        "CreatedAt" => [non_neg_integer()],
        "ExportFilesMetadata" => export_files_metadata(),
        "LastUpdatedAt" => [non_neg_integer()],
        "Location" => String.t() | atom(),
        "Protocol" => list(any()),
        "Status" => list(any()),
        "UserId" => String.t() | atom()
      }

  """
  @type stream_session_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_stream_session_connection_input() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("SignalRequest") => String.t() | atom()
      }

  """
  @type create_stream_session_connection_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_applications_input() :: %{
        required("ApplicationIdentifiers") => list(String.t() | atom())
      }

  """
  @type disassociate_applications_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remove_stream_group_locations_input() :: %{
        required("Locations") => list([String.t() | atom()]())
      }

  """
  @type remove_stream_group_locations_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_stream_sessions_output() :: %{
        "Items" => list(stream_session_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_stream_sessions_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_stream_group_input() :: %{}

  """
  @type get_stream_group_input() :: %{}

  @typedoc """

  ## Example:

      associate_applications_input() :: %{
        required("ApplicationIdentifiers") => list(String.t() | atom())
      }

  """
  @type associate_applications_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_stream_session_output() :: %{
        "AdditionalEnvironmentVariables" => map(),
        "AdditionalLaunchArgs" => list([String.t() | atom()]()),
        "ApplicationArn" => String.t() | atom(),
        "Arn" => String.t() | atom(),
        "ConnectionTimeoutSeconds" => integer(),
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t() | atom(),
        "ExportFilesMetadata" => export_files_metadata(),
        "LastUpdatedAt" => [non_neg_integer()],
        "Location" => String.t() | atom(),
        "LogFileLocationUri" => String.t() | atom(),
        "Protocol" => list(any()),
        "SessionLengthSeconds" => integer(),
        "SignalRequest" => String.t() | atom(),
        "SignalResponse" => String.t() | atom(),
        "Status" => list(any()),
        "StatusReason" => list(any()),
        "StreamGroupId" => String.t() | atom(),
        "UserId" => String.t() | atom(),
        "WebSdkProtocolUrl" => String.t() | atom()
      }

  """
  @type start_stream_session_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_stream_sessions_by_account_output() :: %{
        "Items" => list(stream_session_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_stream_sessions_by_account_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_application_output() :: %{
        "ApplicationLogOutputUri" => String.t() | atom(),
        "ApplicationLogPaths" => list(String.t() | atom()),
        "ApplicationSourceUri" => String.t() | atom(),
        "Arn" => String.t() | atom(),
        "AssociatedStreamGroups" => list(String.t() | atom()),
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t() | atom(),
        "ExecutablePath" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LastUpdatedAt" => [non_neg_integer()],
        "ReplicationStatuses" => list(replication_status()),
        "RuntimeEnvironment" => runtime_environment(),
        "Status" => list(any()),
        "StatusReason" => list(any())
      }

  """
  @type create_application_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      default_application() :: %{
        "Arn" => String.t() | atom(),
        "Id" => String.t() | atom()
      }

  """
  @type default_application() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_stream_group_output() :: %{
        "Arn" => String.t() | atom(),
        "AssociatedApplications" => list(String.t() | atom()),
        "CreatedAt" => [non_neg_integer()],
        "DefaultApplication" => default_application(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LastUpdatedAt" => [non_neg_integer()],
        "LocationStates" => list(location_state()),
        "Status" => list(any()),
        "StatusReason" => list(any()),
        "StreamClass" => list(any())
      }

  """
  @type create_stream_group_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      location_configuration() :: %{
        "AlwaysOnCapacity" => integer(),
        "LocationName" => String.t() | atom(),
        "OnDemandCapacity" => integer()
      }

  """
  @type location_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      location_state() :: %{
        "AllocatedCapacity" => integer(),
        "AlwaysOnCapacity" => integer(),
        "IdleCapacity" => integer(),
        "LocationName" => String.t() | atom(),
        "OnDemandCapacity" => integer(),
        "RequestedCapacity" => integer(),
        "Status" => list(any())
      }

  """
  @type location_state() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_stream_group_input() :: %{}

  """
  @type delete_stream_group_input() :: %{}

  @typedoc """

  ## Example:

      export_stream_session_files_output() :: %{}

  """
  @type export_stream_session_files_output() :: %{}

  @typedoc """

  ## Example:

      associate_applications_output() :: %{
        "ApplicationArns" => list(String.t() | atom()),
        "Arn" => String.t() | atom()
      }

  """
  @type associate_applications_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_applications_output() :: %{
        "Items" => list(application_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_applications_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_applications_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_applications_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      terminate_stream_session_input() :: %{}

  """
  @type terminate_stream_session_input() :: %{}

  @typedoc """

  ## Example:

      create_application_input() :: %{
        optional("ApplicationLogOutputUri") => String.t() | atom(),
        optional("ApplicationLogPaths") => list(String.t() | atom()),
        optional("ClientToken") => String.t() | atom(),
        optional("Tags") => map(),
        required("ApplicationSourceUri") => String.t() | atom(),
        required("Description") => String.t() | atom(),
        required("ExecutablePath") => String.t() | atom(),
        required("RuntimeEnvironment") => runtime_environment()
      }

  """
  @type create_application_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_stream_sessions_by_account_input() :: %{
        optional("ExportFilesStatus") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Status") => list(any())
      }

  """
  @type list_stream_sessions_by_account_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      export_files_metadata() :: %{
        "OutputUri" => String.t() | atom(),
        "Status" => list(any()),
        "StatusReason" => String.t() | atom()
      }

  """
  @type export_files_metadata() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      disassociate_applications_output() :: %{
        "ApplicationArns" => list(String.t() | atom()),
        "Arn" => String.t() | atom()
      }

  """
  @type disassociate_applications_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      add_stream_group_locations_output() :: %{
        "Identifier" => String.t() | atom(),
        "Locations" => list(location_state())
      }

  """
  @type add_stream_group_locations_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_stream_session_input() :: %{
        optional("AdditionalEnvironmentVariables") => map(),
        optional("AdditionalLaunchArgs") => list([String.t() | atom()]()),
        optional("ClientToken") => String.t() | atom(),
        optional("ConnectionTimeoutSeconds") => integer(),
        optional("Description") => String.t() | atom(),
        optional("Locations") => list(String.t() | atom()),
        optional("SessionLengthSeconds") => integer(),
        optional("UserId") => String.t() | atom(),
        required("ApplicationIdentifier") => String.t() | atom(),
        required("Protocol") => list(any()),
        required("SignalRequest") => String.t() | atom()
      }

  """
  @type start_stream_session_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_stream_group_input() :: %{
        optional("DefaultApplicationIdentifier") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("LocationConfigurations") => list(location_configuration())
      }

  """
  @type update_stream_group_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_stream_groups_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_stream_groups_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      replication_status() :: %{
        "Location" => String.t() | atom(),
        "Status" => list(any())
      }

  """
  @type replication_status() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_application_output() :: %{
        "ApplicationLogOutputUri" => String.t() | atom(),
        "ApplicationLogPaths" => list(String.t() | atom()),
        "ApplicationSourceUri" => String.t() | atom(),
        "Arn" => String.t() | atom(),
        "AssociatedStreamGroups" => list(String.t() | atom()),
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t() | atom(),
        "ExecutablePath" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LastUpdatedAt" => [non_neg_integer()],
        "ReplicationStatuses" => list(replication_status()),
        "RuntimeEnvironment" => runtime_environment(),
        "Status" => list(any()),
        "StatusReason" => list(any())
      }

  """
  @type get_application_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stream_group_summary() :: %{
        "Arn" => String.t() | atom(),
        "CreatedAt" => [non_neg_integer()],
        "DefaultApplication" => default_application(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LastUpdatedAt" => [non_neg_integer()],
        "Status" => list(any()),
        "StreamClass" => list(any())
      }

  """
  @type stream_group_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_stream_group_input() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("DefaultApplicationIdentifier") => String.t() | atom(),
        optional("LocationConfigurations") => list(location_configuration()),
        optional("Tags") => map(),
        required("Description") => String.t() | atom(),
        required("StreamClass") => list(any())
      }

  """
  @type create_stream_group_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_application_input() :: %{}

  """
  @type delete_application_input() :: %{}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      create_stream_session_connection_output() :: %{
        "SignalResponse" => String.t() | atom()
      }

  """
  @type create_stream_session_connection_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      runtime_environment() :: %{
        "Type" => list(any()),
        "Version" => String.t() | atom()
      }

  """
  @type runtime_environment() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_stream_group_output() :: %{
        "Arn" => String.t() | atom(),
        "AssociatedApplications" => list(String.t() | atom()),
        "CreatedAt" => [non_neg_integer()],
        "DefaultApplication" => default_application(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LastUpdatedAt" => [non_neg_integer()],
        "LocationStates" => list(location_state()),
        "Status" => list(any()),
        "StatusReason" => list(any()),
        "StreamClass" => list(any())
      }

  """
  @type get_stream_group_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      application_summary() :: %{
        "Arn" => String.t() | atom(),
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LastUpdatedAt" => [non_neg_integer()],
        "RuntimeEnvironment" => runtime_environment(),
        "Status" => list(any())
      }

  """
  @type application_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_application_input() :: %{
        optional("ApplicationLogOutputUri") => String.t() | atom(),
        optional("ApplicationLogPaths") => list(String.t() | atom()),
        optional("Description") => String.t() | atom()
      }

  """
  @type update_application_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      add_stream_group_locations_input() :: %{
        required("LocationConfigurations") => list(location_configuration())
      }

  """
  @type add_stream_group_locations_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_stream_group_output() :: %{
        "Arn" => String.t() | atom(),
        "AssociatedApplications" => list(String.t() | atom()),
        "CreatedAt" => [non_neg_integer()],
        "DefaultApplication" => default_application(),
        "Description" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LastUpdatedAt" => [non_neg_integer()],
        "LocationStates" => list(location_state()),
        "Status" => list(any()),
        "StatusReason" => list(any()),
        "StreamClass" => list(any())
      }

  """
  @type update_stream_group_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      export_stream_session_files_input() :: %{
        required("OutputUri") => String.t() | atom()
      }

  """
  @type export_stream_session_files_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_stream_groups_output() :: %{
        "Items" => list(stream_group_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_stream_groups_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_application_input() :: %{}

  """
  @type get_application_input() :: %{}

  @typedoc """

  ## Example:

      list_stream_sessions_input() :: %{
        optional("ExportFilesStatus") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Status") => list(any())
      }

  """
  @type list_stream_sessions_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_stream_session_output() :: %{
        "AdditionalEnvironmentVariables" => map(),
        "AdditionalLaunchArgs" => list([String.t() | atom()]()),
        "ApplicationArn" => String.t() | atom(),
        "Arn" => String.t() | atom(),
        "ConnectionTimeoutSeconds" => integer(),
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t() | atom(),
        "ExportFilesMetadata" => export_files_metadata(),
        "LastUpdatedAt" => [non_neg_integer()],
        "Location" => String.t() | atom(),
        "LogFileLocationUri" => String.t() | atom(),
        "Protocol" => list(any()),
        "SessionLengthSeconds" => integer(),
        "SignalRequest" => String.t() | atom(),
        "SignalResponse" => String.t() | atom(),
        "Status" => list(any()),
        "StatusReason" => list(any()),
        "StreamGroupId" => String.t() | atom(),
        "UserId" => String.t() | atom(),
        "WebSdkProtocolUrl" => String.t() | atom()
      }

  """
  @type get_stream_session_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_stream_session_input() :: %{}

  """
  @type get_stream_session_input() :: %{}

  @typedoc """

  ## Example:

      update_application_output() :: %{
        "ApplicationLogOutputUri" => String.t() | atom(),
        "ApplicationLogPaths" => list(String.t() | atom()),
        "ApplicationSourceUri" => String.t() | atom(),
        "Arn" => String.t() | atom(),
        "AssociatedStreamGroups" => list(String.t() | atom()),
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t() | atom(),
        "ExecutablePath" => String.t() | atom(),
        "Id" => String.t() | atom(),
        "LastUpdatedAt" => [non_neg_integer()],
        "ReplicationStatuses" => list(replication_status()),
        "RuntimeEnvironment" => runtime_environment(),
        "Status" => list(any()),
        "StatusReason" => list(any())
      }

  """
  @type update_application_output() :: %{(String.t() | atom()) => any()}

  @type add_stream_group_locations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type associate_applications_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_stream_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_stream_session_connection_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_stream_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_applications_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type export_stream_session_files_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_stream_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_stream_session_errors() ::
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

  @type list_stream_groups_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_stream_sessions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_stream_sessions_by_account_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type remove_stream_group_locations_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type start_stream_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type terminate_stream_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type update_application_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type update_stream_group_errors() ::
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
      endpoint_prefix: "gameliftstreams",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "GameLiftStreams",
      signature_version: "v4",
      signing_name: "gameliftstreams",
      target_prefix: nil
    }
  end

  @doc """
  Add locations that can host stream sessions.

  You configure locations and their corresponding capacity for each stream group.
  Creating a stream group in a location that's nearest to your end users can help
  minimize latency and improve quality.

  This operation provisions stream capacity at the specified locations. By
  default, all locations have 1 or 2 capacity, depending on the stream class
  option: 2 for 'High' and 1 for 'Ultra' and 'Win2022'. This operation also copies
  the content files of all associated applications to an internal S3 bucket at
  each location. This allows Amazon GameLift Streams to host performant stream
  sessions.
  """
  @spec add_stream_group_locations(
          map(),
          String.t() | atom(),
          add_stream_group_locations_input(),
          list()
        ) ::
          {:ok, add_stream_group_locations_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_stream_group_locations_errors()}
  def add_stream_group_locations(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/streamgroups/#{AWS.Util.encode_uri(identifier)}/locations"
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
  When you associate, or link, an application with a stream group, then Amazon
  GameLift Streams can launch the application using the stream group's allocated
  compute resources.

  The stream group must be in `ACTIVE` status. You can reverse this action by
  using
  [DisassociateApplications](https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_DisassociateApplications.html).

  If a stream group does not already have a linked application, Amazon GameLift
  Streams will automatically assign the first application provided in
  `ApplicationIdentifiers` as the default.
  """
  @spec associate_applications(map(), String.t() | atom(), associate_applications_input(), list()) ::
          {:ok, associate_applications_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_applications_errors()}
  def associate_applications(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/streamgroups/#{AWS.Util.encode_uri(identifier)}/associations"
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
  Creates an application resource in Amazon GameLift Streams, which specifies the
  application content you want to stream, such as a game build or other software,
  and configures the settings to run it.

  Before you create an application, upload your application content files to an
  Amazon Simple Storage Service (Amazon S3) bucket. For more information, see
  **Getting Started** in the Amazon GameLift Streams Developer Guide.

  Make sure that your files in the Amazon S3 bucket are the correct version you
  want to use. If you change the files at a later time, you will need to create a
  new Amazon GameLift Streams application.

  If the request is successful, Amazon GameLift Streams begins to create an
  application and sets the status to `INITIALIZED`. When an application reaches
  `READY` status, you can use the application to set up stream groups and start
  streams. To track application status, call
  [GetApplication](https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetApplication.html).
  """
  @spec create_application(map(), create_application_input(), list()) ::
          {:ok, create_application_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
      201
    )
  end

  @doc """
  Manage how Amazon GameLift Streams streams your applications by using a stream
  group.

  A stream group is a collection of resources that Amazon GameLift Streams uses to
  stream your application to end-users. When you create a stream group, you
  specify an application to stream by default and the type of hardware to use,
  such as the graphical processing unit (GPU). You can also link additional
  applications, which allows you to stream those applications using this stream
  group. Depending on your expected users, you also scale the number of concurrent
  streams you want to support at one time, and in what locations.

  Stream capacity represents the number of concurrent streams that can be active
  at a time. You set stream capacity per location, per stream group. There are two
  types of capacity, always-on and on-demand:

    * **Always-on**: The streaming capacity that is allocated and ready
  to handle stream requests without delay. You pay for this capacity whether it's
  in use or not. Best for quickest time from streaming request to streaming
  session. Default is 1 when creating a stream group or adding a location.

    * **On-demand**: The streaming capacity that Amazon GameLift Streams
  can allocate in response to stream requests, and then de-allocate when the
  session has terminated. This offers a cost control measure at the expense of a
  greater startup time (typically under 5 minutes). Default is 0 when creating a
  stream group or adding a location.

  To adjust the capacity of any `ACTIVE` stream group, call
  [UpdateStreamGroup](https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_UpdateStreamGroup.html).  If the request is successful, Amazon GameLift Streams begins creating the stream
  group. Amazon GameLift Streams assigns a unique ID to the stream group resource
  and sets the status to `ACTIVATING`. When the stream group reaches `ACTIVE`
  status, you can start stream sessions by using
  [StartStreamSession](https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_StartStreamSession.html).
  To check the stream group's status, call
  [GetStreamGroup](https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamGroup.html).
  """
  @spec create_stream_group(map(), create_stream_group_input(), list()) ::
          {:ok, create_stream_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_stream_group_errors()}
  def create_stream_group(%Client{} = client, input, options \\ []) do
    url_path = "/streamgroups"
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
  Enables clients to reconnect to a stream session while preserving all session
  state and data in the disconnected session.

  This reconnection process can be initiated when a stream session is in either
  `PENDING_CLIENT_RECONNECTION` or `ACTIVE` status. The process works as follows:

    1. Initial disconnect:

      * When a client disconnects or loses connection, the
  stream session transitions from `CONNECTED` to `PENDING_CLIENT_RECONNECTION`

    2. Reconnection time window:

      * Clients have `ConnectionTimeoutSeconds` (defined in
  [StartStreamSession](https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_StartStreamSession.html)) to reconnect before session termination

      * Your backend server must call
  **CreateStreamSessionConnection** to initiate reconnection

      * Session transitions to `RECONNECTING` status

    3. Reconnection completion:

      * On successful **CreateStreamSessionConnection**,
  session status changes to `ACTIVE`

      * Provide the new connection information to the
  requesting client

      * Client must establish connection within
  `ConnectionTimeoutSeconds`

      * Session terminates automatically if client fails to
  connect in time

  For more information about the stream session lifecycle, see [Stream
  sessions](https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/stream-sessions.html)
  in the *Amazon GameLift Streams Developer Guide*.

  To begin re-connecting to an existing stream session, specify the stream group
  ID and stream session ID that you want to reconnect to, and the signal request
  to use with the stream.
  """
  @spec create_stream_session_connection(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_stream_session_connection_input(),
          list()
        ) ::
          {:ok, create_stream_session_connection_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_stream_session_connection_errors()}
  def create_stream_session_connection(
        %Client{} = client,
        identifier,
        stream_session_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/streamgroups/#{AWS.Util.encode_uri(identifier)}/streamsessions/#{AWS.Util.encode_uri(stream_session_identifier)}/connections"

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
  Permanently deletes an Amazon GameLift Streams application resource.

  This also deletes the application content files stored with Amazon GameLift
  Streams. However, this does not delete the original files that you uploaded to
  your Amazon S3 bucket; you can delete these any time after Amazon GameLift
  Streams creates an application, which is the only time Amazon GameLift Streams
  accesses your Amazon S3 bucket.

  You can only delete an application that meets the following conditions:

    * The application is in `READY` or `ERROR` status. You cannot delete
  an application that's in `PROCESSING` or `INITIALIZED` status.

    * The application is not the default application of any stream
  groups. You must first delete the stream group by using
  [DeleteStreamGroup](https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_DeleteStreamGroup.html).     * The application is not linked to any stream groups. You must first
  unlink the stream group by using
  [DisassociateApplications](https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_DisassociateApplications.html).

    * An application is not streaming in any ongoing stream session. You
  must wait until the client ends the stream session or call
  [TerminateStreamSession](https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_TerminateStreamSession.html)
  to end the stream.

  If any active stream groups exist for this application, this request returns a
  `ValidationException`.
  """
  @spec delete_application(map(), String.t() | atom(), delete_application_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_application_errors()}
  def delete_application(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(identifier)}"
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
  Permanently deletes all compute resources and information related to a stream
  group.

  To delete a stream group, specify the unique stream group identifier. During the
  deletion process, the stream group's status is `DELETING`. This operation stops
  streams in progress and prevents new streams from starting. As a best practice,
  before deleting the stream group, call
  [ListStreamSessions](https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_ListStreamSessions.html)
  to check for streams in progress and take action to stop them. When you delete a
  stream group, any application associations referring to that stream group are
  automatically removed.
  """
  @spec delete_stream_group(map(), String.t() | atom(), delete_stream_group_input(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_stream_group_errors()}
  def delete_stream_group(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/streamgroups/#{AWS.Util.encode_uri(identifier)}"
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
  When you disassociate, or unlink, an application from a stream group, you can no
  longer stream this application by using that stream group's allocated compute
  resources.

  Any streams in process will continue until they terminate, which helps avoid
  interrupting an end-user's stream. Amazon GameLift Streams will not initiate new
  streams in the stream group using the disassociated application. The
  disassociate action does not affect the stream capacity of a stream group.

  If you disassociate the default application, Amazon GameLift Streams will
  automatically choose a new default application from the remaining associated
  applications. To change which application is the default application, call
  [UpdateStreamGroup](https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_UpdateStreamGroup.html)
  and specify a new `DefaultApplicationIdentifier`.
  """
  @spec disassociate_applications(
          map(),
          String.t() | atom(),
          disassociate_applications_input(),
          list()
        ) ::
          {:ok, disassociate_applications_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_applications_errors()}
  def disassociate_applications(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/streamgroups/#{AWS.Util.encode_uri(identifier)}/disassociations"
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
  Export the files that your application modifies or generates in a stream
  session, which can help you debug or verify your application.

  When your application runs, it generates output files such as logs, diagnostic
  information, crash dumps, save files, user data, screenshots, and so on. The
  files can be defined by the engine or frameworks that your application uses, or
  information that you've programmed your application to output.

  You can only call this action on a stream session that is in progress,
  specifically in one of the following statuses `ACTIVE`, `CONNECTED`,
  `PENDING_CLIENT_RECONNECTION`, and `RECONNECTING`. You must provide an Amazon
  Simple Storage Service (Amazon S3) bucket to store the files in. When the
  session ends, Amazon GameLift Streams produces a compressed folder that contains
  all of the files and directories that were modified or created by the
  application during the stream session. AWS uses your security credentials to
  authenticate and authorize access to your Amazon S3 bucket.

  Amazon GameLift Streams collects the following generated and modified files.
  Find them in the corresponding folders in the `.zip` archive.

    * `application/`: The folder where your application or game is
  stored.

    * `profile/`: The user profile folder.

    * `temp/`: The system temp folder.

  To verify the status of the exported files, use GetStreamSession.

  To delete the files, delete the object in the S3 bucket.
  """
  @spec export_stream_session_files(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          export_stream_session_files_input(),
          list()
        ) ::
          {:ok, export_stream_session_files_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, export_stream_session_files_errors()}
  def export_stream_session_files(
        %Client{} = client,
        identifier,
        stream_session_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/streamgroups/#{AWS.Util.encode_uri(identifier)}/streamsessions/#{AWS.Util.encode_uri(stream_session_identifier)}/exportfiles"

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
  Retrieves properties for an Amazon GameLift Streams application resource.

  Specify the ID of the application that you want to retrieve. If the operation is
  successful, it returns properties for the requested application.
  """
  @spec get_application(map(), String.t() | atom(), list()) ::
          {:ok, get_application_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_application_errors()}
  def get_application(%Client{} = client, identifier, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves properties for a Amazon GameLift Streams stream group resource.

  Specify the ID of the stream group that you want to retrieve. If the operation
  is successful, it returns properties for the requested stream group.
  """
  @spec get_stream_group(map(), String.t() | atom(), list()) ::
          {:ok, get_stream_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_stream_group_errors()}
  def get_stream_group(%Client{} = client, identifier, options \\ []) do
    url_path = "/streamgroups/#{AWS.Util.encode_uri(identifier)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves properties for a Amazon GameLift Streams stream session resource.

  Specify the Amazon Resource Name (ARN) of the stream session that you want to
  retrieve and its stream group ARN. If the operation is successful, it returns
  properties for the requested resource.
  """
  @spec get_stream_session(map(), String.t() | atom(), String.t() | atom(), list()) ::
          {:ok, get_stream_session_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_stream_session_errors()}
  def get_stream_session(%Client{} = client, identifier, stream_session_identifier, options \\ []) do
    url_path =
      "/streamgroups/#{AWS.Util.encode_uri(identifier)}/streamsessions/#{AWS.Util.encode_uri(stream_session_identifier)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of all Amazon GameLift Streams applications that are associated
  with the Amazon Web Services account in use.

  This operation returns applications in all statuses, in no particular order. You
  can paginate the results as needed.
  """
  @spec list_applications(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_applications_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_applications_errors()}
  def list_applications(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/applications"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of all Amazon GameLift Streams stream groups that are
  associated with the Amazon Web Services account in use.

  This operation returns stream groups in all statuses, in no particular order.
  You can paginate the results as needed.
  """
  @spec list_stream_groups(map(), String.t() | atom() | nil, String.t() | atom() | nil, list()) ::
          {:ok, list_stream_groups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_stream_groups_errors()}
  def list_stream_groups(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/streamgroups"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of Amazon GameLift Streams stream sessions that a stream group
  is hosting.

  To retrieve stream sessions, specify the stream group, and optionally filter by
  stream session status. You can paginate the results as needed.

  This operation returns the requested stream sessions in no particular order.
  """
  @spec list_stream_sessions(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_stream_sessions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_stream_sessions_errors()}
  def list_stream_sessions(
        %Client{} = client,
        identifier,
        export_files_status \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/streamgroups/#{AWS.Util.encode_uri(identifier)}/streamsessions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"Status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(export_files_status) do
        [{"ExportFilesStatus", export_files_status} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves a list of Amazon GameLift Streams stream sessions that this user
  account has access to.

  In the returned list of stream sessions, the `ExportFilesMetadata` property only
  shows the `Status` value. To get the `OutpurUri` and `StatusReason` values, use
  [GetStreamSession](https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamSession.html).  We don't recommend using this operation to regularly check stream session
  statuses because it's costly. Instead, to check status updates for a specific
  stream session, use
  [GetStreamSession](https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamSession.html).
  """
  @spec list_stream_sessions_by_account(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_stream_sessions_by_account_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_stream_sessions_by_account_errors()}
  def list_stream_sessions_by_account(
        %Client{} = client,
        export_files_status \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path = "/streamsessions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"Status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(export_files_status) do
        [{"ExportFilesStatus", export_files_status} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves all tags assigned to a Amazon GameLift Streams resource.

  To list tags for a resource, specify the ARN value for the resource.

  ## Learn more

  [Tagging Amazon Web Services Resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in
  the *Amazon Web Services General Reference*

  [ Amazon Web Services Tagging Strategies](http://aws.amazon.com/answers/account-management/aws-tagging-strategies/)
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
  Removes a set of remote locations from this stream group.

  Amazon GameLift Streams works to release allocated compute resources in these
  location. Thus, stream sessions can no longer start from these locations by
  using this stream group. Amazon GameLift Streams also deletes the content files
  of all associated applications that were in Amazon GameLift Streams's internal
  S3 bucket at this location.

  You cannot remove the region where you initially created this stream group,
  known as the primary location. However, you can set the stream capacity to zero.
  """
  @spec remove_stream_group_locations(
          map(),
          String.t() | atom(),
          remove_stream_group_locations_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_stream_group_locations_errors()}
  def remove_stream_group_locations(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/streamgroups/#{AWS.Util.encode_uri(identifier)}/locations"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"Locations", "locations"}
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
  This action initiates a new stream session and outputs connection information
  that clients can use to access the stream.

  A stream session refers to an instance of a stream that Amazon GameLift Streams
  transmits from the server to the end-user. A stream session runs on a compute
  resource that a stream group has allocated. The start stream session process
  works as follows:

    1. Prerequisites:

      * You must have a stream group in `ACTIVE` state

      * You must have idle or on-demand capacity in a stream
  group in the location you want to stream from

      * You must have at least one application associated to
  the stream group (use
  [AssociateApplications](https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_AssociateApplications.html) if needed)

    2. Start stream request:

      * Your backend server calls **StartStreamSession** to
  initiate connection

      * Amazon GameLift Streams creates the stream session
  resource, assigns an Amazon Resource Name (ARN) value, and begins searching for
  available stream capacity to run the stream

      * Session transitions to `ACTIVATING` status

    3. Placement completion:

      * If Amazon GameLift Streams is successful in finding
  capacity for the stream, the stream session status changes to `ACTIVE` status
  and **StartStreamSession** returns stream connection information

      * If Amazon GameLift Streams was not successful in
  finding capacity within the placement timeout period (defined according to the
  capacity type and platform type), the stream session status changes to `ERROR`
  status and **StartStreamSession** returns a `StatusReason` of `placementTimeout`

    4. Connection completion:

      * Provide the new connection information to the
  requesting client

      * Client must establish connection within
  `ConnectionTimeoutSeconds` (specified in **StartStreamSession** parameters)

      * Session terminates automatically if client fails to
  connect in time

  For more information about the stream session lifecycle, see [Stream
  sessions](https://docs.aws.amazon.com/gameliftstreams/latest/developerguide/stream-sessions.html)
  in the *Amazon GameLift Streams Developer Guide*.

  Timeouts to be aware of that affect a stream session:

    * **Placement timeout**: The amount of time that Amazon GameLift
  Streams has to find capacity for a stream request. Placement timeout varies
  based on the capacity type used to fulfill your stream request:

      * **Always-on capacity**: 75 seconds

      * **On-demand capacity**:

        * Linux/Proton runtimes: 90 seconds

        * Windows runtime: 10 minutes

    * **Connection timeout**: The amount of time that Amazon GameLift
  Streams waits for a client to connect to a stream session in `ACTIVE` status, or
  reconnect to a stream session in `PENDING_CLIENT_RECONNECTION` status, the
  latter of which occurs when a client disconnects or loses connection from a
  stream session. If no client connects before the timeout, Amazon GameLift
  Streams terminates the stream session. This value is specified by
  `ConnectionTimeoutSeconds` in the `StartStreamSession` parameters.

    * **Idle timeout**: A stream session will be terminated if no user
  input has been received for 60 minutes.

    * **Maximum session length**: A stream session will be terminated
  after this amount of time has elapsed since it started, regardless of any
  existing client connections. This value is specified by `SessionLengthSeconds`
  in the `StartStreamSession` parameters.

  To start a new stream session, specify a stream group ID and application ID,
  along with the transport protocol and signal request to use with the stream
  session.

  For stream groups that have multiple locations, provide a set of locations
  ordered by priority using a `Locations` parameter. Amazon GameLift Streams will
  start a single stream session in the next available location. An application
  must be finished replicating to a remote location before the remote location can
  host a stream.

  To reconnect to a stream session after a client disconnects or loses connection,
  use
  [CreateStreamSessionConnection](https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_CreateStreamSessionConnection.html).
  """
  @spec start_stream_session(map(), String.t() | atom(), start_stream_session_input(), list()) ::
          {:ok, start_stream_session_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_stream_session_errors()}
  def start_stream_session(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/streamgroups/#{AWS.Util.encode_uri(identifier)}/streamsessions"
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
  Assigns one or more tags to a Amazon GameLift Streams resource.

  Use tags to organize Amazon Web Services resources for a range of purposes. You
  can assign tags to the following Amazon GameLift Streams resource types:

    * Application

    * StreamGroup

  ## Learn more

  [Tagging Amazon Web Services Resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in
  the *Amazon Web Services General Reference*

  [ Amazon Web Services Tagging Strategies](http://aws.amazon.com/answers/account-management/aws-tagging-strategies/)
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
  Permanently terminates an active stream session.

  When called, the stream session status changes to `TERMINATING`. You can
  terminate a stream session in any status except `ACTIVATING`. If the stream
  session is in `ACTIVATING` status, an exception is thrown.
  """
  @spec terminate_stream_session(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          terminate_stream_session_input(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, terminate_stream_session_errors()}
  def terminate_stream_session(
        %Client{} = client,
        identifier,
        stream_session_identifier,
        input,
        options \\ []
      ) do
    url_path =
      "/streamgroups/#{AWS.Util.encode_uri(identifier)}/streamsessions/#{AWS.Util.encode_uri(stream_session_identifier)}"

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
  Removes one or more tags from a Amazon GameLift Streams resource.

  To remove tags, specify the Amazon GameLift Streams resource and a list of one
  or more tags to remove.
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
  Updates the mutable configuration settings for a Amazon GameLift Streams
  application resource.

  You can change the `Description`, `ApplicationLogOutputUri`, and
  `ApplicationLogPaths`.

  To update application settings, specify the application ID and provide the new
  values. If the operation is successful, it returns the complete updated set of
  settings for the application.
  """
  @spec update_application(map(), String.t() | atom(), update_application_input(), list()) ::
          {:ok, update_application_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_application_errors()}
  def update_application(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/applications/#{AWS.Util.encode_uri(identifier)}"
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
  Updates the configuration settings for an Amazon GameLift Streams stream group
  resource.

  You can change the description, the set of locations, and the requested capacity
  of a stream group per location. If you want to change the stream class, create a
  new stream group.

  Stream capacity represents the number of concurrent streams that can be active
  at a time. You set stream capacity per location, per stream group. There are two
  types of capacity, always-on and on-demand:

    * **Always-on**: The streaming capacity that is allocated and ready
  to handle stream requests without delay. You pay for this capacity whether it's
  in use or not. Best for quickest time from streaming request to streaming
  session. Default is 1 when creating a stream group or adding a location.

    * **On-demand**: The streaming capacity that Amazon GameLift Streams
  can allocate in response to stream requests, and then de-allocate when the
  session has terminated. This offers a cost control measure at the expense of a
  greater startup time (typically under 5 minutes). Default is 0 when creating a
  stream group or adding a location.

  To update a stream group, specify the stream group's Amazon Resource Name (ARN)
  and provide the new values. If the request is successful, Amazon GameLift
  Streams returns the complete updated metadata for the stream group.
  """
  @spec update_stream_group(map(), String.t() | atom(), update_stream_group_input(), list()) ::
          {:ok, update_stream_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_stream_group_errors()}
  def update_stream_group(%Client{} = client, identifier, input, options \\ []) do
    url_path = "/streamgroups/#{AWS.Util.encode_uri(identifier)}"
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
