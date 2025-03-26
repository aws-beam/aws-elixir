# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.GameLiftStreams do
  @moduledoc """
  Amazon GameLift Streams

  Amazon GameLift Streams provides a global cloud solution for content streaming
  experiences.

  Use Amazon GameLift Streams tools to upload and configure content for
  streaming, deploy and scale computing resources to host streams, and manage
  stream session placement to meet customer demand.

  This Reference Guide describes the Amazon GameLift Streams service API. You can
  use the API through the Amazon Web Services SDK, the Command Line Interface (AWS
  CLI), or by making
  direct REST calls through HTTPS.

  See the *Amazon GameLift Streams Developer Guide* for more information on how
  Amazon GameLift Streams works and how to work with it.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      stream_session_summary() :: %{
        "ApplicationArn" => String.t(),
        "Arn" => String.t(),
        "CreatedAt" => [non_neg_integer()],
        "ExportFilesMetadata" => export_files_metadata(),
        "LastUpdatedAt" => [non_neg_integer()],
        "Location" => String.t(),
        "Protocol" => list(any()),
        "Status" => list(any()),
        "UserId" => String.t()
      }

  """
  @type stream_session_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_stream_session_connection_input() :: %{
        optional("ClientToken") => String.t(),
        required("SignalRequest") => String.t()
      }

  """
  @type create_stream_session_connection_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_applications_input() :: %{
        required("ApplicationIdentifiers") => list(String.t()())
      }

  """
  @type disassociate_applications_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      remove_stream_group_locations_input() :: %{
        required("Locations") => list([String.t()]())
      }

  """
  @type remove_stream_group_locations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      list_stream_sessions_output() :: %{
        "Items" => list(stream_session_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_stream_sessions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_stream_group_input() :: %{}

  """
  @type get_stream_group_input() :: %{}

  @typedoc """

  ## Example:

      associate_applications_input() :: %{
        required("ApplicationIdentifiers") => list(String.t()())
      }

  """
  @type associate_applications_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_stream_session_output() :: %{
        "AdditionalEnvironmentVariables" => map(),
        "AdditionalLaunchArgs" => list([String.t()]()),
        "ApplicationArn" => String.t(),
        "Arn" => String.t(),
        "ConnectionTimeoutSeconds" => integer(),
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t(),
        "ExportFilesMetadata" => export_files_metadata(),
        "LastUpdatedAt" => [non_neg_integer()],
        "Location" => String.t(),
        "LogFileLocationUri" => String.t(),
        "Protocol" => list(any()),
        "SessionLengthSeconds" => integer(),
        "SignalRequest" => String.t(),
        "SignalResponse" => String.t(),
        "Status" => list(any()),
        "StatusReason" => list(any()),
        "StreamGroupId" => String.t(),
        "UserId" => String.t(),
        "WebSdkProtocolUrl" => String.t()
      }

  """
  @type start_stream_session_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_stream_sessions_by_account_output() :: %{
        "Items" => list(stream_session_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_stream_sessions_by_account_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_application_output() :: %{
        "ApplicationLogOutputUri" => String.t(),
        "ApplicationLogPaths" => list(String.t()()),
        "ApplicationSourceUri" => String.t(),
        "Arn" => String.t(),
        "AssociatedStreamGroups" => list(String.t()()),
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t(),
        "ExecutablePath" => String.t(),
        "Id" => String.t(),
        "LastUpdatedAt" => [non_neg_integer()],
        "ReplicationStatuses" => list(replication_status()()),
        "RuntimeEnvironment" => runtime_environment(),
        "Status" => list(any()),
        "StatusReason" => list(any())
      }

  """
  @type create_application_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      default_application() :: %{
        "Arn" => String.t(),
        "Id" => String.t()
      }

  """
  @type default_application() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_stream_group_output() :: %{
        "Arn" => String.t(),
        "AssociatedApplications" => list(String.t()()),
        "CreatedAt" => [non_neg_integer()],
        "DefaultApplication" => default_application(),
        "Description" => String.t(),
        "Id" => String.t(),
        "LastUpdatedAt" => [non_neg_integer()],
        "LocationStates" => list(location_state()()),
        "Status" => list(any()),
        "StatusReason" => list(any()),
        "StreamClass" => list(any())
      }

  """
  @type create_stream_group_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      location_configuration() :: %{
        "AlwaysOnCapacity" => integer(),
        "LocationName" => String.t(),
        "OnDemandCapacity" => integer()
      }

  """
  @type location_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      location_state() :: %{
        "AllocatedCapacity" => integer(),
        "AlwaysOnCapacity" => integer(),
        "IdleCapacity" => integer(),
        "LocationName" => String.t(),
        "OnDemandCapacity" => integer(),
        "RequestedCapacity" => integer(),
        "Status" => list(any())
      }

  """
  @type location_state() :: %{String.t() => any()}

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
        "ApplicationArns" => list(String.t()()),
        "Arn" => String.t()
      }

  """
  @type associate_applications_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_applications_output() :: %{
        "Items" => list(application_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_applications_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_applications_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_applications_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      terminate_stream_session_input() :: %{}

  """
  @type terminate_stream_session_input() :: %{}

  @typedoc """

  ## Example:

      create_application_input() :: %{
        optional("ApplicationLogOutputUri") => String.t(),
        optional("ApplicationLogPaths") => list(String.t()()),
        optional("ClientToken") => String.t(),
        optional("Tags") => map(),
        required("ApplicationSourceUri") => String.t(),
        required("Description") => String.t(),
        required("ExecutablePath") => String.t(),
        required("RuntimeEnvironment") => runtime_environment()
      }

  """
  @type create_application_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_stream_sessions_by_account_input() :: %{
        optional("ExportFilesStatus") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("Status") => list(any())
      }

  """
  @type list_stream_sessions_by_account_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_files_metadata() :: %{
        "OutputUri" => String.t(),
        "Status" => list(any()),
        "StatusReason" => String.t()
      }

  """
  @type export_files_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_applications_output() :: %{
        "ApplicationArns" => list(String.t()()),
        "Arn" => String.t()
      }

  """
  @type disassociate_applications_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      add_stream_group_locations_output() :: %{
        "Identifier" => String.t(),
        "Locations" => list(location_state()())
      }

  """
  @type add_stream_group_locations_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_stream_session_input() :: %{
        optional("AdditionalEnvironmentVariables") => map(),
        optional("AdditionalLaunchArgs") => list([String.t()]()),
        optional("ClientToken") => String.t(),
        optional("ConnectionTimeoutSeconds") => integer(),
        optional("Description") => String.t(),
        optional("Locations") => list(String.t()()),
        optional("SessionLengthSeconds") => integer(),
        optional("UserId") => String.t(),
        required("ApplicationIdentifier") => String.t(),
        required("Protocol") => list(any()),
        required("SignalRequest") => String.t()
      }

  """
  @type start_stream_session_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_stream_group_input() :: %{
        optional("Description") => String.t(),
        optional("LocationConfigurations") => list(location_configuration()())
      }

  """
  @type update_stream_group_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_stream_groups_input() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }

  """
  @type list_stream_groups_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      replication_status() :: %{
        "Location" => String.t(),
        "Status" => list(any())
      }

  """
  @type replication_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_application_output() :: %{
        "ApplicationLogOutputUri" => String.t(),
        "ApplicationLogPaths" => list(String.t()()),
        "ApplicationSourceUri" => String.t(),
        "Arn" => String.t(),
        "AssociatedStreamGroups" => list(String.t()()),
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t(),
        "ExecutablePath" => String.t(),
        "Id" => String.t(),
        "LastUpdatedAt" => [non_neg_integer()],
        "ReplicationStatuses" => list(replication_status()()),
        "RuntimeEnvironment" => runtime_environment(),
        "Status" => list(any()),
        "StatusReason" => list(any())
      }

  """
  @type get_application_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stream_group_summary() :: %{
        "Arn" => String.t(),
        "CreatedAt" => [non_neg_integer()],
        "DefaultApplication" => default_application(),
        "Description" => String.t(),
        "Id" => String.t(),
        "LastUpdatedAt" => [non_neg_integer()],
        "Status" => list(any()),
        "StreamClass" => list(any())
      }

  """
  @type stream_group_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_stream_group_input() :: %{
        optional("ClientToken") => String.t(),
        optional("DefaultApplicationIdentifier") => String.t(),
        optional("LocationConfigurations") => list(location_configuration()()),
        optional("Tags") => map(),
        required("Description") => String.t(),
        required("StreamClass") => list(any())
      }

  """
  @type create_stream_group_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

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
        "SignalResponse" => String.t()
      }

  """
  @type create_stream_session_connection_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      runtime_environment() :: %{
        "Type" => list(any()),
        "Version" => String.t()
      }

  """
  @type runtime_environment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_stream_group_output() :: %{
        "Arn" => String.t(),
        "AssociatedApplications" => list(String.t()()),
        "CreatedAt" => [non_neg_integer()],
        "DefaultApplication" => default_application(),
        "Description" => String.t(),
        "Id" => String.t(),
        "LastUpdatedAt" => [non_neg_integer()],
        "LocationStates" => list(location_state()()),
        "Status" => list(any()),
        "StatusReason" => list(any()),
        "StreamClass" => list(any())
      }

  """
  @type get_stream_group_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => [String.t()]
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

      throttling_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      application_summary() :: %{
        "Arn" => String.t(),
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t(),
        "Id" => String.t(),
        "LastUpdatedAt" => [non_neg_integer()],
        "RuntimeEnvironment" => runtime_environment(),
        "Status" => list(any())
      }

  """
  @type application_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_application_input() :: %{
        optional("ApplicationLogOutputUri") => String.t(),
        optional("ApplicationLogPaths") => list(String.t()()),
        optional("Description") => String.t()
      }

  """
  @type update_application_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      add_stream_group_locations_input() :: %{
        required("LocationConfigurations") => list(location_configuration()())
      }

  """
  @type add_stream_group_locations_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_stream_group_output() :: %{
        "Arn" => String.t(),
        "AssociatedApplications" => list(String.t()()),
        "CreatedAt" => [non_neg_integer()],
        "DefaultApplication" => default_application(),
        "Description" => String.t(),
        "Id" => String.t(),
        "LastUpdatedAt" => [non_neg_integer()],
        "LocationStates" => list(location_state()()),
        "Status" => list(any()),
        "StatusReason" => list(any()),
        "StreamClass" => list(any())
      }

  """
  @type update_stream_group_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      export_stream_session_files_input() :: %{
        required("OutputUri") => String.t()
      }

  """
  @type export_stream_session_files_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_stream_groups_output() :: %{
        "Items" => list(stream_group_summary()()),
        "NextToken" => String.t()
      }

  """
  @type list_stream_groups_output() :: %{String.t() => any()}

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
        optional("NextToken") => String.t(),
        optional("Status") => list(any())
      }

  """
  @type list_stream_sessions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_stream_session_output() :: %{
        "AdditionalEnvironmentVariables" => map(),
        "AdditionalLaunchArgs" => list([String.t()]()),
        "ApplicationArn" => String.t(),
        "Arn" => String.t(),
        "ConnectionTimeoutSeconds" => integer(),
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t(),
        "ExportFilesMetadata" => export_files_metadata(),
        "LastUpdatedAt" => [non_neg_integer()],
        "Location" => String.t(),
        "LogFileLocationUri" => String.t(),
        "Protocol" => list(any()),
        "SessionLengthSeconds" => integer(),
        "SignalRequest" => String.t(),
        "SignalResponse" => String.t(),
        "Status" => list(any()),
        "StatusReason" => list(any()),
        "StreamGroupId" => String.t(),
        "UserId" => String.t(),
        "WebSdkProtocolUrl" => String.t()
      }

  """
  @type get_stream_session_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_stream_session_input() :: %{}

  """
  @type get_stream_session_input() :: %{}

  @typedoc """

  ## Example:

      update_application_output() :: %{
        "ApplicationLogOutputUri" => String.t(),
        "ApplicationLogPaths" => list(String.t()()),
        "ApplicationSourceUri" => String.t(),
        "Arn" => String.t(),
        "AssociatedStreamGroups" => list(String.t()()),
        "CreatedAt" => [non_neg_integer()],
        "Description" => String.t(),
        "ExecutablePath" => String.t(),
        "Id" => String.t(),
        "LastUpdatedAt" => [non_neg_integer()],
        "ReplicationStatuses" => list(replication_status()()),
        "RuntimeEnvironment" => runtime_environment(),
        "Status" => list(any()),
        "StatusReason" => list(any())
      }

  """
  @type update_application_output() :: %{String.t() => any()}

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
  Creating a
  stream group in a location that's nearest to your end users can help minimize
  latency and improve quality.

  This operation provisions stream capacity at the specified locations. By
  default, all locations have 1 or 2 capacity, depending on the
  stream class option: 2 for 'High' and 1 for 'Ultra' and 'Win2022'. This
  operation also copies the content files of all associated
  applications to an internal S3 bucket at each location. This allows Amazon
  GameLift Streams to host performant stream sessions.
  """
  @spec add_stream_group_locations(map(), String.t(), add_stream_group_locations_input(), list()) ::
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
  GameLift Streams can launch the application using the stream group's
  allocated compute resources.

  The stream group must be in `ACTIVE` status. You can reverse this action by
  using
  [DisassociateApplications](https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_DisassociateApplications.html).
  """
  @spec associate_applications(map(), String.t(), associate_applications_input(), list()) ::
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
  application content you want to stream, such as a game build or other
  software, and configures the settings to run it.

  Before you create an application, upload your application content files to an
  Amazon Simple Storage Service (Amazon S3) bucket. For more information, see
  **Getting Started** in the Amazon GameLift Streams Developer Guide.

  Make sure that your files in the Amazon S3 bucket are the correct version you
  want to use. As soon as you create a Amazon GameLift Streams application,
  you cannot change the files at a later time.

  If the request is successful, Amazon GameLift Streams begins to create an
  application and sets the status to `INITIALIZED`. When an
  application reaches `READY` status, you can use the application to set up stream
  groups and start streams. To track application
  status, call
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
  specify an application to stream by default and the type of
  hardware to use, such as the graphical processing unit (GPU). You can also link
  additional applications, which allows you to stream those
  applications using this stream group. Depending on your expected users, you also
  scale the number of concurrent streams you want to
  support at one time, and in what locations.

  Stream capacity represents the number of concurrent streams that can be active
  at a time. You set stream capacity per location, per stream group. There are two
  types of capacity: always-on and on-demand:

    *

  **Always-on**:
  The streaming capacity that is allocated and ready to handle stream requests
  without delay. You pay for this capacity whether it's in use or not. Best for
  quickest time from streaming request to streaming session.

    *

  **On-demand**:
  The streaming capacity that Amazon GameLift Streams can allocate in response to
  stream requests, and then de-allocate when the session has terminated. This
  offers a cost control measure at the expense of a greater startup time
  (typically under 5 minutes).

  To adjust the capacity of any `ACTIVE` stream group, call
  [UpdateStreamGroup](https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_UpdateStreamGroup.html).   If the request is successful, Amazon GameLift Streams begins creating the stream
  group. Amazon GameLift Streams assigns a unique ID to the stream group resource
  and
  sets the status to `ACTIVATING`. When the stream group reaches `ACTIVE` status,
  you can start stream sessions by
  using
  [StartStreamSession](https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_StartStreamSession.html).
  To check the stream
  group's status, call
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
  Allows clients to reconnect to a recently disconnected stream session without
  losing any data from the last session.

  A client can reconnect to a stream session that's in
  `PENDING_CLIENT_RECONNECTION` or `ACTIVE` status. In the
  stream session life cycle, when the client disconnects from the stream session,
  the stream session transitions from `CONNECTED`
  to `PENDING_CLIENT_RECONNECTION` status. When a client requests to reconnect by
  calling
  `CreateStreamSessionConnection`, the stream session transitions to
  `RECONNECTING` status. When the reconnection
  is successful, the stream session transitions to `ACTIVE` status. After a stream
  session is disconnected for longer than
  `ConnectionTimeoutSeconds`, the stream session transitions to the `TERMINATED`
  status.

  To connect to an existing stream session, specify the stream group ID and stream
  session ID that you want to reconnect to, as well as
  the signal request settings to use with the stream.

  `ConnectionTimeoutSeconds` defines the amount of time after the stream session
  disconnects that a reconnection is allowed. If
  a client is disconnected from the stream for longer than
  `ConnectionTimeoutSeconds`, the stream session ends.
  """
  @spec create_stream_session_connection(
          map(),
          String.t(),
          String.t(),
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
  Streams. However,
  this does not delete the original files that you uploaded to your Amazon S3
  bucket; you can delete these any time after Amazon GameLift Streams creates an
  application, which is the only time Amazon GameLift Streams accesses your Amazon
  S3 bucket.

  You can only delete an application that meets the following conditions:

    *
  The application is in `READY` or `ERROR` status. You cannot delete an
  application that's in
  `PROCESSING` or `INITIALIZED` status.

    *
  The application is not the default application of any stream groups. You must
  first delete the stream group by using
  [DeleteStreamGroup](https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_DeleteStreamGroup.html). 

    *
  The application is not linked to any stream groups. You must first unlink the
  stream group by using
  [DisassociateApplications](https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_DisassociateApplications.html).

    *
  An application is not streaming in any ongoing stream session. You must wait
  until the client ends the stream session or call
  [TerminateStreamSession](https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_TerminateStreamSession.html)
  to end the
  stream.

  If any active stream groups exist for this application, this request returns a
  `ValidationException`.
  """
  @spec delete_application(map(), String.t(), delete_application_input(), list()) ::
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

  To delete a stream group, specify the unique stream
  group identifier. During the deletion process, the stream group's status is
  `DELETING`. This operation stops streams in
  progress and prevents new streams from starting. As a best practice, before
  deleting the stream group, call
  [ListStreamSessions](https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_ListStreamSessions.html)
  to check for streams in progress and take action to stop
  them. When you delete a stream group, any application associations referring to
  that stream group are automatically removed.
  """
  @spec delete_stream_group(map(), String.t(), delete_stream_group_input(), list()) ::
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
  longer stream this application by using that stream
  group's allocated compute resources.

  Any streams in process will continue until they terminate, which helps avoid
  interrupting an
  end-user's stream. Amazon GameLift Streams will not initiate new streams using
  this stream group. The disassociate action does not affect the stream
  capacity of a stream group.

  You can only disassociate an application if it's not a default application of
  the stream group. Check
  `DefaultApplicationIdentifier` by calling
  [GetStreamGroup](https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamGroup.html).
  """
  @spec disassociate_applications(map(), String.t(), disassociate_applications_input(), list()) ::
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
  information, crash dumps, save files, user data,
  screenshots, and so on. The files can be defined by the engine or frameworks
  that your application uses, or information that you've
  programmed your application to output.

  You can only call this action on a stream session that is in progress,
  specifically in one of the following statuses
  `ACTIVE`, `CONNECTED`, `PENDING_CLIENT_RECONNECTION`, and `RECONNECTING`. You
  must provide
  an Amazon Simple Storage Service (Amazon S3) bucket to store the files in. When
  the session ends, Amazon GameLift Streams produces a compressed folder
  that contains all of the files and directories that were modified or created by
  the application during the stream session. AWS uses your
  security credentials to authenticate and authorize access to your Amazon S3
  bucket.

  Amazon GameLift Streams collects the following generated and modified files.
  Find them in the corresponding folders in the `.zip`
  archive.

    *

  `application/`: The folder where your application or game is stored.

    *

  `profile/`: The user profile folder.

    *

  `temp/`: The system temp folder.

  To verify the status of the exported files, use GetStreamSession.

  To delete the files, delete the object in the S3 bucket.
  """
  @spec export_stream_session_files(
          map(),
          String.t(),
          String.t(),
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

  Specify the ID of the application that you want to retrieve. If the
  operation is successful, it returns properties for the requested application.
  """
  @spec get_application(map(), String.t(), list()) ::
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
  @spec get_stream_group(map(), String.t(), list()) ::
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
  retrieve and its
  stream group ARN. If the operation is successful, it returns properties for the
  requested resource.
  """
  @spec get_stream_session(map(), String.t(), String.t(), list()) ::
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

  This operation returns applications in
  all statuses, in no particular order. You can paginate the results as needed.
  """
  @spec list_applications(map(), String.t() | nil, String.t() | nil, list()) ::
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

  This operation returns stream groups in
  all statuses, in no particular order. You can paginate the results as needed.
  """
  @spec list_stream_groups(map(), String.t() | nil, String.t() | nil, list()) ::
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
  stream session status. You can paginate the results as
  needed.

  This operation returns the requested stream sessions in no particular order.
  """
  @spec list_stream_sessions(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
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
  shows the `Status` value. To get
  the `OutpurUri` and `StatusReason` values, use
  [GetStreamSession](https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamSession.html).   We don't recommend using this operation to regularly check stream session
  statuses because it's costly. Instead, to check status updates
  for a specific stream session, use
  [GetStreamSession](https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_GetStreamSession.html).
  """
  @spec list_stream_sessions_by_account(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
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
  the *Amazon Web Services General
  Reference*

  [ Amazon Web Services Tagging Strategies](http://aws.amazon.com/answers/account-management/aws-tagging-strategies/)
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
  Removes a set of remote locations from this stream group.

  Amazon GameLift Streams works to release allocated compute resources in these
  location. Thus,
  stream sessions can no longer start from these locations by using this stream
  group. Amazon GameLift Streams also deletes the content files of all
  associated applications that were in Amazon GameLift Streams's internal S3
  bucket at this location.

  You cannot remove the region where you initially created this stream group,
  known as the primary location. However, you can set the stream
  capacity to zero.
  """
  @spec remove_stream_group_locations(
          map(),
          String.t(),
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

  A stream
  session refers to an instance of a stream that Amazon GameLift Streams transmits
  from the server to the end-user. A stream session runs on a compute
  resource, or stream capacity, that a stream group has allocated.

  To start a new stream session, specify a stream group and application ID, along
  with the transport protocol and signal request settings
  to use with the stream. You must have associated at least one application to the
  stream group before starting a stream session, either
  when creating the stream group, or by using
  [AssociateApplications](https://docs.aws.amazon.com/gameliftstreams/latest/apireference/API_AssociateApplications.html).

  For stream groups that have multiple locations, provide a set of locations
  ordered by priority by setting `Locations`.
  Amazon GameLift Streams will start a single stream session in the next available
  location. An application must be finished replicating in a remote
  location before the remote location can host a stream.

  If the request is successful, Amazon GameLift Streams begins to prepare the
  stream. Amazon GameLift Streams assigns an Amazon Resource Name (ARN) value to
  the stream
  session resource and sets the status to `ACTIVATING`. During the stream
  preparation process, Amazon GameLift Streams queues the request and
  searches for available stream capacity to run the stream. This can result to one
  of the following:

    *
  Amazon GameLift Streams identifies an available compute resource to run the
  application content and start the stream. When the stream is ready,
  the stream session's status changes to `ACTIVE` and includes stream connection
  information. Provide the connection
  information to the requesting client to join the stream session.

    *
  Amazon GameLift Streams doesn't identify an available resource within a certain
  time, set by `ClientToken`. In this case, Amazon GameLift Streams
  stops processing the request, and the stream session object status changes to
  `ERROR` with status reason
  `placementTimeout`.
  """
  @spec start_stream_session(map(), String.t(), start_stream_session_input(), list()) ::
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
  can assign tags to
  the following Amazon GameLift Streams resource types:

    *
  Application

    *
  StreamGroup

  ## Learn more

  [Tagging Amazon Web Services Resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) in
  the *Amazon Web Services General
  Reference*

  [ Amazon Web Services Tagging Strategies](http://aws.amazon.com/answers/account-management/aws-tagging-strategies/)
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
  Permanently terminates an active stream session.

  When called, the stream session status changes to `TERMINATING`. You can
  terminate a stream session in any status except `ACTIVATING`. If the stream
  session is in `ACTIVATING` status, an
  exception is thrown.
  """
  @spec terminate_stream_session(
          map(),
          String.t(),
          String.t(),
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
  or more tags to
  remove.
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

  You can change the `Description`,
  `ApplicationLogOutputUri`, and `ApplicationLogPaths`.

  To update application settings, specify the application ID and provide the new
  values. If the operation is successful, it returns the
  complete updated set of settings for the application.
  """
  @spec update_application(map(), String.t(), update_application_input(), list()) ::
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

  You can change the description, the set of locations, and
  the requested capacity of a stream group per location. If you want to change the
  stream class, create a new stream group.

  Stream capacity represents the number of concurrent streams that can be active
  at a time. You set stream capacity per location, per stream group. There are two
  types of capacity: always-on and on-demand:

    *

  **Always-on**:
  The streaming capacity that is allocated and ready to handle stream requests
  without delay. You pay for this capacity whether it's in use or not. Best for
  quickest time from streaming request to streaming session.

    *

  **On-demand**:
  The streaming capacity that Amazon GameLift Streams can allocate in response to
  stream requests, and then de-allocate when the session has terminated. This
  offers a cost control measure at the expense of a greater startup time
  (typically under 5 minutes).

  To update a stream group, specify the stream group's Amazon Resource Name (ARN)
  and provide the new values. If the request is successful, Amazon GameLift
  Streams returns the
  complete updated metadata for the stream group.
  """
  @spec update_stream_group(map(), String.t(), update_stream_group_input(), list()) ::
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
