# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SnowDeviceManagement do
  @moduledoc """
  Amazon Web Services Snow Device Management documentation.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2021-08-04",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "snow-device-management",
      global?: false,
      protocol: "rest-json",
      service_id: "Snow Device Management",
      signature_version: "v4",
      signing_name: "snow-device-management",
      target_prefix: nil
    }
  end

  @doc """
  Sends a cancel request for a specified task.

  You can cancel a task only if it's still in a `QUEUED` state. Tasks that are
  already running can't be cancelled.

  A task might still run if it's processed from the queue before the `CancelTask`
  operation changes the task's state.
  """
  def cancel_task(%Client{} = client, task_id, input, options \\ []) do
    url_path = "/task/#{AWS.Util.encode_uri(task_id)}/cancel"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Instructs one or more devices to start a task, such as unlocking or rebooting.
  """
  def create_task(%Client{} = client, input, options \\ []) do
    url_path = "/task"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Checks device-specific information, such as the device type, software version,
  IP addresses, and lock status.
  """
  def describe_device(%Client{} = client, managed_device_id, input, options \\ []) do
    url_path = "/managed-device/#{AWS.Util.encode_uri(managed_device_id)}/describe"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Checks the current state of the Amazon EC2 instances.

  The output is similar to `describeDevice`, but the results are sourced from the
  device cache in the Amazon Web Services Cloud and include a subset of the
  available fields.
  """
  def describe_device_ec2_instances(%Client{} = client, managed_device_id, input, options \\ []) do
    url_path = "/managed-device/#{AWS.Util.encode_uri(managed_device_id)}/resources/ec2/describe"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Checks the status of a remote task running on one or more target devices.
  """
  def describe_execution(%Client{} = client, managed_device_id, task_id, input, options \\ []) do
    url_path =
      "/task/#{AWS.Util.encode_uri(task_id)}/execution/#{AWS.Util.encode_uri(managed_device_id)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Checks the metadata for a given task on a device.
  """
  def describe_task(%Client{} = client, task_id, input, options \\ []) do
    url_path = "/task/#{AWS.Util.encode_uri(task_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Returns a list of the Amazon Web Services resources available for a device.

  Currently, Amazon EC2 instances are the only supported resource type.
  """
  def list_device_resources(
        %Client{} = client,
        managed_device_id,
        max_results \\ nil,
        next_token \\ nil,
        type \\ nil,
        options \\ []
      ) do
    url_path = "/managed-device/#{AWS.Util.encode_uri(managed_device_id)}/resources"
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

    Request.request_rest(
      client,
      metadata(),
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
  Returns a list of all devices on your Amazon Web Services account that have
  Amazon Web Services Snow Device Management enabled in the Amazon Web Services
  Region where the command is run.
  """
  def list_devices(
        %Client{} = client,
        job_id \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/managed-devices"
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
      if !is_nil(job_id) do
        [{"jobId", job_id} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
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
  Returns the status of tasks for one or more target devices.
  """
  def list_executions(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        state \\ nil,
        task_id,
        options \\ []
      ) do
    url_path = "/executions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(task_id) do
        [{"taskId", task_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(state) do
        [{"state", state} | query_params]
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

    Request.request_rest(
      client,
      metadata(),
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
  Returns a list of tags for a managed device or task.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Returns a list of tasks that can be filtered by state.
  """
  def list_tasks(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        state \\ nil,
        options \\ []
      ) do
    url_path = "/tasks"
    headers = []
    query_params = []

    query_params =
      if !is_nil(state) do
        [{"state", state} | query_params]
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

    Request.request_rest(
      client,
      metadata(),
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
  Adds or replaces tags on a device or task.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Removes a tag from a device or task.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
