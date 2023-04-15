# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Scheduler do
  @moduledoc """
  Amazon EventBridge Scheduler is a serverless scheduler that allows you to
  create, run, and manage tasks from one central, managed service.

  EventBridge Scheduler delivers your tasks reliably, with built-in mechanisms
  that adjust your schedules based on the availability of downstream targets. The
  following reference lists the available API actions, and data types for
  EventBridge Scheduler.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2021-06-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "scheduler",
      global?: false,
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
  def create_schedule(%Client{} = client, name, input, options \\ []) do
    url_path = "/schedules/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateSchedule",
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
  Creates the specified schedule group.
  """
  def create_schedule_group(%Client{} = client, name, input, options \\ []) do
    url_path = "/schedule-groups/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateScheduleGroup",
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
  Deletes the specified schedule.
  """
  def delete_schedule(%Client{} = client, name, input, options \\ []) do
    url_path = "/schedules/#{AWS.Util.encode_uri(name)}"
    headers = []

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
      "DeleteSchedule",
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
  Deletes the specified schedule group.

  Deleting a schedule group results in EventBridge Scheduler deleting all
  schedules associated with the group. When you delete a group, it remains in a
  `DELETING` state until all of its associated schedules are deleted. Schedules
  associated with the group that are set to run while the schedule group is in the
  process of being deleted might continue to invoke their targets until the
  schedule group and its associated schedules are deleted.

  This operation is eventually consistent.
  """
  def delete_schedule_group(%Client{} = client, name, input, options \\ []) do
    url_path = "/schedule-groups/#{AWS.Util.encode_uri(name)}"
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
      "DeleteScheduleGroup",
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
  Retrieves the specified schedule.
  """
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

    Request.request_rest(
      client,
      meta,
      "GetSchedule",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Retrieves the specified schedule group.
  """
  def get_schedule_group(%Client{} = client, name, options \\ []) do
    url_path = "/schedule-groups/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetScheduleGroup",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns a paginated list of your schedule groups.
  """
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

    Request.request_rest(
      client,
      meta,
      "ListScheduleGroups",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Returns a paginated list of your EventBridge Scheduler schedules.
  """
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

    Request.request_rest(
      client,
      meta,
      "ListSchedules",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Lists the tags associated with the Scheduler resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListTagsForResource",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Assigns one or more tags (key-value pairs) to the specified EventBridge
  Scheduler resource.

  You can only assign tags to schedule groups.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "TagResource",
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
  Removes one or more tags from the specified EventBridge Scheduler schedule
  group.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      "UntagResource",
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
  Updates the specified schedule.

  When you call `UpdateSchedule`, EventBridge Scheduler uses all values, including
  empty values, specified in the request and overrides the existing schedule. This
  is by design. This means that if you do not set an optional field in your
  request, that field will be set to its system-default value after the update.

  Before calling this operation, we recommend that you call the `GetSchedule` API
  operation and make a note of all optional parameters for your `UpdateSchedule`
  call.
  """
  def update_schedule(%Client{} = client, name, input, options \\ []) do
    url_path = "/schedules/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateSchedule",
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
