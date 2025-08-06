# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Scheduler do
  @moduledoc """

  Amazon EventBridge Scheduler is a serverless scheduler that allows you to
  create, run, and manage tasks from one central, managed service.

  EventBridge Scheduler delivers your tasks reliably, with built-in mechanisms
  that adjust your schedules based on the availability of downstream targets.
  The following reference lists the available API actions, and data types for
  EventBridge Scheduler.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      delete_schedule_group_output() :: %{}

  """
  @type delete_schedule_group_output() :: %{}

  @typedoc """

  ## Example:

      delete_schedule_output() :: %{}

  """
  @type delete_schedule_output() :: %{}

  @typedoc """

  ## Example:

      get_schedule_group_input() :: %{}

  """
  @type get_schedule_group_input() :: %{}

  @typedoc """

  ## Example:

      schedule_group_summary() :: %{
        "Arn" => String.t() | atom(),
        "CreationDate" => non_neg_integer(),
        "LastModificationDate" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "State" => String.t() | atom()
      }

  """
  @type schedule_group_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sage_maker_pipeline_parameter() :: %{
        "Name" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type sage_maker_pipeline_parameter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      flexible_time_window() :: %{
        "MaximumWindowInMinutes" => integer(),
        "Mode" => String.t() | atom()
      }

  """
  @type flexible_time_window() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        optional("Tags") => list(tag())
      }

  """
  @type list_tags_for_resource_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_schedule_output() :: %{
        optional("ActionAfterCompletion") => String.t() | atom(),
        optional("Arn") => String.t() | atom(),
        optional("CreationDate") => non_neg_integer(),
        optional("Description") => String.t() | atom(),
        optional("EndDate") => non_neg_integer(),
        optional("FlexibleTimeWindow") => flexible_time_window(),
        optional("GroupName") => String.t() | atom(),
        optional("KmsKeyArn") => String.t() | atom(),
        optional("LastModificationDate") => non_neg_integer(),
        optional("Name") => String.t() | atom(),
        optional("ScheduleExpression") => String.t() | atom(),
        optional("ScheduleExpressionTimezone") => String.t() | atom(),
        optional("StartDate") => non_neg_integer(),
        optional("State") => String.t() | atom(),
        optional("Target") => target()
      }

  """
  @type get_schedule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_schedule_input() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("GroupName") => String.t() | atom()
      }

  """
  @type delete_schedule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_schedule_output() :: %{
        required("ScheduleArn") => String.t() | atom()
      }

  """
  @type update_schedule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      target() :: %{
        "Arn" => String.t() | atom(),
        "DeadLetterConfig" => dead_letter_config(),
        "EcsParameters" => ecs_parameters(),
        "EventBridgeParameters" => event_bridge_parameters(),
        "Input" => String.t() | atom(),
        "KinesisParameters" => kinesis_parameters(),
        "RetryPolicy" => retry_policy(),
        "RoleArn" => String.t() | atom(),
        "SageMakerPipelineParameters" => sage_maker_pipeline_parameters(),
        "SqsParameters" => sqs_parameters()
      }

  """
  @type target() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_schedule_group_output() :: %{
        optional("Arn") => String.t() | atom(),
        optional("CreationDate") => non_neg_integer(),
        optional("LastModificationDate") => non_neg_integer(),
        optional("Name") => String.t() | atom(),
        optional("State") => String.t() | atom()
      }

  """
  @type get_schedule_group_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_schedule_groups_output() :: %{
        optional("NextToken") => String.t() | atom(),
        required("ScheduleGroups") => list(schedule_group_summary())
      }

  """
  @type list_schedule_groups_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }

  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      target_summary() :: %{
        "Arn" => String.t() | atom()
      }

  """
  @type target_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_schedule_input() :: %{
        optional("ActionAfterCompletion") => String.t() | atom(),
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("EndDate") => non_neg_integer(),
        optional("GroupName") => String.t() | atom(),
        optional("KmsKeyArn") => String.t() | atom(),
        optional("ScheduleExpressionTimezone") => String.t() | atom(),
        optional("StartDate") => non_neg_integer(),
        optional("State") => String.t() | atom(),
        required("FlexibleTimeWindow") => flexible_time_window(),
        required("ScheduleExpression") => String.t() | atom(),
        required("Target") => target()
      }

  """
  @type update_schedule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sage_maker_pipeline_parameters() :: %{
        "PipelineParameterList" => list(sage_maker_pipeline_parameter())
      }

  """
  @type sage_maker_pipeline_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      sqs_parameters() :: %{
        "MessageGroupId" => String.t() | atom()
      }

  """
  @type sqs_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      schedule_summary() :: %{
        "Arn" => String.t() | atom(),
        "CreationDate" => non_neg_integer(),
        "GroupName" => String.t() | atom(),
        "LastModificationDate" => non_neg_integer(),
        "Name" => String.t() | atom(),
        "State" => String.t() | atom(),
        "Target" => target_summary()
      }

  """
  @type schedule_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      event_bridge_parameters() :: %{
        "DetailType" => String.t() | atom(),
        "Source" => String.t() | atom()
      }

  """
  @type event_bridge_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        required("Tags") => list(tag())
      }

  """
  @type tag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_schedule_input() :: %{
        optional("ActionAfterCompletion") => String.t() | atom(),
        optional("ClientToken") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("EndDate") => non_neg_integer(),
        optional("GroupName") => String.t() | atom(),
        optional("KmsKeyArn") => String.t() | atom(),
        optional("ScheduleExpressionTimezone") => String.t() | atom(),
        optional("StartDate") => non_neg_integer(),
        optional("State") => String.t() | atom(),
        required("FlexibleTimeWindow") => flexible_time_window(),
        required("ScheduleExpression") => String.t() | atom(),
        required("Target") => target()
      }

  """
  @type create_schedule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_schedule_group_input() :: %{
        optional("ClientToken") => String.t() | atom()
      }

  """
  @type delete_schedule_group_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_schedule_input() :: %{
        optional("GroupName") => String.t() | atom()
      }

  """
  @type get_schedule_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tag_resource_output() :: %{}

  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      capacity_provider_strategy_item() :: %{
        "base" => integer(),
        "capacityProvider" => String.t() | atom(),
        "weight" => integer()
      }

  """
  @type capacity_provider_strategy_item() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      placement_constraint() :: %{
        "expression" => String.t() | atom(),
        "type" => String.t() | atom()
      }

  """
  @type placement_constraint() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      network_configuration() :: %{
        "awsvpcConfiguration" => aws_vpc_configuration()
      }

  """
  @type network_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_schedule_group_output() :: %{
        required("ScheduleGroupArn") => String.t() | atom()
      }

  """
  @type create_schedule_group_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_schedule_groups_input() :: %{
        optional("MaxResults") => integer(),
        optional("NamePrefix") => String.t() | atom(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_schedule_groups_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_schedules_output() :: %{
        optional("NextToken") => String.t() | atom(),
        required("Schedules") => list(schedule_summary())
      }

  """
  @type list_schedules_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("TagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      dead_letter_config() :: %{
        "Arn" => String.t() | atom()
      }

  """
  @type dead_letter_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_input() :: %{}

  """
  @type list_tags_for_resource_input() :: %{}

  @typedoc """

  ## Example:

      untag_resource_output() :: %{}

  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:

      list_schedules_input() :: %{
        optional("GroupName") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NamePrefix") => String.t() | atom(),
        optional("NextToken") => String.t() | atom(),
        optional("State") => String.t() | atom()
      }

  """
  @type list_schedules_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => [String.t() | atom()]
      }

  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_schedule_output() :: %{
        required("ScheduleArn") => String.t() | atom()
      }

  """
  @type create_schedule_output() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      aws_vpc_configuration() :: %{
        "AssignPublicIp" => String.t() | atom(),
        "SecurityGroups" => list(String.t() | atom()),
        "Subnets" => list(String.t() | atom())
      }

  """
  @type aws_vpc_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      kinesis_parameters() :: %{
        "PartitionKey" => String.t() | atom()
      }

  """
  @type kinesis_parameters() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_schedule_group_input() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("Tags") => list(tag())
      }

  """
  @type create_schedule_group_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      retry_policy() :: %{
        "MaximumEventAgeInSeconds" => integer(),
        "MaximumRetryAttempts" => integer()
      }

  """
  @type retry_policy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      placement_strategy() :: %{
        "field" => String.t() | atom(),
        "type" => String.t() | atom()
      }

  """
  @type placement_strategy() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      ecs_parameters() :: %{
        "CapacityProviderStrategy" => list(capacity_provider_strategy_item()),
        "EnableECSManagedTags" => boolean(),
        "EnableExecuteCommand" => boolean(),
        "Group" => String.t() | atom(),
        "LaunchType" => String.t() | atom(),
        "NetworkConfiguration" => network_configuration(),
        "PlacementConstraints" => list(placement_constraint()),
        "PlacementStrategy" => list(placement_strategy()),
        "PlatformVersion" => String.t() | atom(),
        "PropagateTags" => String.t() | atom(),
        "ReferenceId" => String.t() | atom(),
        "Tags" => list(map()),
        "TaskCount" => integer(),
        "TaskDefinitionArn" => String.t() | atom()
      }

  """
  @type ecs_parameters() :: %{(String.t() | atom()) => any()}

  @type create_schedule_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_schedule_group_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type delete_schedule_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_schedule_group_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_schedule_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_schedule_group_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_schedule_groups_errors() ::
          throttling_exception() | validation_exception() | internal_server_exception()

  @type list_schedules_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_schedule_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2021-06-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "scheduler",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Scheduler",
      signature_version: "v4",
      signing_name: "scheduler",
      target_prefix: nil
    }
  end

  @doc """
  Creates the specified schedule.
  """
  @spec create_schedule(map(), String.t() | atom(), create_schedule_input(), list()) ::
          {:ok, create_schedule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_schedule_errors()}
  def create_schedule(%Client{} = client, name, input, options \\ []) do
    url_path = "/schedules/#{AWS.Util.encode_uri(name)}"
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
  Creates the specified schedule group.
  """
  @spec create_schedule_group(map(), String.t() | atom(), create_schedule_group_input(), list()) ::
          {:ok, create_schedule_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_schedule_group_errors()}
  def create_schedule_group(%Client{} = client, name, input, options \\ []) do
    url_path = "/schedule-groups/#{AWS.Util.encode_uri(name)}"
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
  Deletes the specified schedule.
  """
  @spec delete_schedule(map(), String.t() | atom(), delete_schedule_input(), list()) ::
          {:ok, delete_schedule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_schedule_errors()}
  def delete_schedule(%Client{} = client, name, input, options \\ []) do
    url_path = "/schedules/#{AWS.Util.encode_uri(name)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"ClientToken", "clientToken"},
        {"GroupName", "groupName"}
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
  Deletes the specified schedule group.

  Deleting a schedule group results in EventBridge Scheduler deleting all
  schedules associated with the group.
  When you delete a group, it remains in a `DELETING` state until all of its
  associated schedules are deleted.
  Schedules associated with the group that are set to run while the schedule group
  is in the process of being deleted might continue to invoke their targets
  until the schedule group and its associated schedules are deleted.

  This operation is eventually consistent.
  """
  @spec delete_schedule_group(map(), String.t() | atom(), delete_schedule_group_input(), list()) ::
          {:ok, delete_schedule_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_schedule_group_errors()}
  def delete_schedule_group(%Client{} = client, name, input, options \\ []) do
    url_path = "/schedule-groups/#{AWS.Util.encode_uri(name)}"
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
  Retrieves the specified schedule.
  """
  @spec get_schedule(map(), String.t() | atom(), String.t() | atom() | nil, list()) ::
          {:ok, get_schedule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_schedule_errors()}
  def get_schedule(%Client{} = client, name, group_name \\ nil, options \\ []) do
    url_path = "/schedules/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(group_name) do
        [{"groupName", group_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves the specified schedule group.
  """
  @spec get_schedule_group(map(), String.t() | atom(), list()) ::
          {:ok, get_schedule_group_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_schedule_group_errors()}
  def get_schedule_group(%Client{} = client, name, options \\ []) do
    url_path = "/schedule-groups/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a paginated list of your schedule groups.
  """
  @spec list_schedule_groups(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_schedule_groups_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_schedule_groups_errors()}
  def list_schedule_groups(
        %Client{} = client,
        max_results \\ nil,
        name_prefix \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/schedule-groups"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name_prefix) do
        [{"NamePrefix", name_prefix} | query_params]
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
  Returns a paginated list of your EventBridge Scheduler schedules.
  """
  @spec list_schedules(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_schedules_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_schedules_errors()}
  def list_schedules(
        %Client{} = client,
        group_name \\ nil,
        max_results \\ nil,
        name_prefix \\ nil,
        next_token \\ nil,
        state \\ nil,
        options \\ []
      ) do
    url_path = "/schedules"
    headers = []
    query_params = []

    query_params =
      if !is_nil(state) do
        [{"State", state} | query_params]
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
      if !is_nil(name_prefix) do
        [{"NamePrefix", name_prefix} | query_params]
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
      if !is_nil(group_name) do
        [{"ScheduleGroup", group_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the tags associated with the Scheduler resource.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
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
  Assigns one or more tags (key-value pairs) to the specified EventBridge
  Scheduler resource.

  You can only assign tags to schedule groups.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_input(), list()) ::
          {:ok, tag_resource_output(), any()}
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
  Removes one or more tags from the specified EventBridge Scheduler schedule
  group.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_input(), list()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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

  Updates the specified schedule.

  When you call `UpdateSchedule`, EventBridge Scheduler uses all values, including
  empty values, specified in the request and
  overrides the existing schedule. This is by design. This means that if you do
  not set an optional field in your request, that field will be set to
  its system-default value after the update.

  Before calling this operation, we recommend that you call the `GetSchedule` API
  operation and make a note of all optional parameters
  for your `UpdateSchedule` call.
  """
  @spec update_schedule(map(), String.t() | atom(), update_schedule_input(), list()) ::
          {:ok, update_schedule_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_schedule_errors()}
  def update_schedule(%Client{} = client, name, input, options \\ []) do
    url_path = "/schedules/#{AWS.Util.encode_uri(name)}"
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
