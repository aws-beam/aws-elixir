# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.SnowDeviceManagement do
  @moduledoc """
  Amazon Web Services Snow Device Management documentation.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      physical_network_interface() :: %{
        "defaultGateway" => [String.t()],
        "ipAddress" => [String.t()],
        "ipAddressAssignment" => String.t(),
        "macAddress" => [String.t()],
        "netmask" => [String.t()],
        "physicalConnectorType" => String.t(),
        "physicalNetworkInterfaceId" => [String.t()]
      }

  """
  @type physical_network_interface() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_devices_output() :: %{
        optional("devices") => list(device_summary()),
        optional("nextToken") => String.t()
      }

  """
  @type list_devices_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_executions_output() :: %{
        optional("executions") => list(execution_summary()),
        optional("nextToken") => String.t()
      }

  """
  @type list_executions_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_device_ec2_output() :: %{
        optional("instances") => list(instance_summary())
      }

  """
  @type describe_device_ec2_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_task_input() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("tags") => map(),
        required("command") => list(),
        required("targets") => list([String.t()]())
      }

  """
  @type create_task_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_execution_input() :: %{}

  """
  @type describe_execution_input() :: %{}

  @typedoc """

  ## Example:

      describe_execution_output() :: %{
        optional("executionId") => String.t(),
        optional("lastUpdatedAt") => [non_neg_integer()],
        optional("managedDeviceId") => String.t(),
        optional("startedAt") => [non_neg_integer()],
        optional("state") => String.t(),
        optional("taskId") => String.t()
      }

  """
  @type describe_execution_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      instance_block_device_mapping() :: %{
        "deviceName" => [String.t()],
        "ebs" => ebs_instance_block_device()
      }

  """
  @type instance_block_device_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_task_output() :: %{
        optional("taskId") => [String.t()]
      }

  """
  @type cancel_task_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      task_summary() :: %{
        "state" => String.t(),
        "tags" => map(),
        "taskArn" => [String.t()],
        "taskId" => String.t()
      }

  """
  @type task_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_device_input() :: %{}

  """
  @type describe_device_input() :: %{}

  @typedoc """

  ## Example:

      create_task_output() :: %{
        optional("taskArn") => [String.t()],
        optional("taskId") => [String.t()]
      }

  """
  @type create_task_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_summary() :: %{
        "arn" => [String.t()],
        "id" => [String.t()],
        "resourceType" => [String.t()]
      }

  """
  @type resource_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        optional("tags") => map()
      }

  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      capacity() :: %{
        "available" => [float()],
        "name" => [String.t()],
        "total" => [float()],
        "unit" => [String.t()],
        "used" => [float()]
      }

  """
  @type capacity() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      execution_summary() :: %{
        "executionId" => String.t(),
        "managedDeviceId" => String.t(),
        "state" => String.t(),
        "taskId" => String.t()
      }

  """
  @type execution_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tasks_output() :: %{
        optional("nextToken") => String.t(),
        optional("tasks") => list(task_summary())
      }

  """
  @type list_tasks_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_device_output() :: %{
        optional("associatedWithJob") => [String.t()],
        optional("deviceCapacities") => list(capacity()),
        optional("deviceState") => String.t(),
        optional("deviceType") => [String.t()],
        optional("lastReachedOutAt") => [non_neg_integer()],
        optional("lastUpdatedAt") => [non_neg_integer()],
        optional("managedDeviceArn") => [String.t()],
        optional("managedDeviceId") => String.t(),
        optional("physicalNetworkInterfaces") => list(physical_network_interface()),
        optional("software") => software_information(),
        optional("tags") => map()
      }

  """
  @type describe_device_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cpu_options() :: %{
        "coreCount" => [integer()],
        "threadsPerCore" => [integer()]
      }

  """
  @type cpu_options() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_devices_input() :: %{
        optional("jobId") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_devices_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      instance_state() :: %{
        "code" => [integer()],
        "name" => String.t()
      }

  """
  @type instance_state() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reboot() :: %{}

  """
  @type reboot() :: %{}

  @typedoc """

  ## Example:

      list_device_resources_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("type") => [String.t()]
      }

  """
  @type list_device_resources_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      device_summary() :: %{
        "associatedWithJob" => [String.t()],
        "managedDeviceArn" => [String.t()],
        "managedDeviceId" => String.t(),
        "tags" => map()
      }

  """
  @type device_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_device_ec2_input() :: %{
        required("instanceIds") => list([String.t()]())
      }

  """
  @type describe_device_ec2_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      instance() :: %{
        "amiLaunchIndex" => [integer()],
        "blockDeviceMappings" => list(instance_block_device_mapping()),
        "cpuOptions" => cpu_options(),
        "createdAt" => [non_neg_integer()],
        "imageId" => [String.t()],
        "instanceId" => [String.t()],
        "instanceType" => [String.t()],
        "privateIpAddress" => [String.t()],
        "publicIpAddress" => [String.t()],
        "rootDeviceName" => [String.t()],
        "securityGroups" => list(security_group_identifier()),
        "state" => instance_state(),
        "updatedAt" => [non_neg_integer()]
      }

  """
  @type instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unlock() :: %{}

  """
  @type unlock() :: %{}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("tagKeys") => list([String.t()]())
      }

  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_device_resources_output() :: %{
        optional("nextToken") => String.t(),
        optional("resources") => list(resource_summary())
      }

  """
  @type list_device_resources_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      describe_task_output() :: %{
        optional("completedAt") => [non_neg_integer()],
        optional("createdAt") => [non_neg_integer()],
        optional("description") => String.t(),
        optional("lastUpdatedAt") => [non_neg_integer()],
        optional("state") => String.t(),
        optional("tags") => map(),
        optional("targets") => list([String.t()]()),
        optional("taskArn") => [String.t()],
        optional("taskId") => [String.t()]
      }

  """
  @type describe_task_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ebs_instance_block_device() :: %{
        "attachTime" => [non_neg_integer()],
        "deleteOnTermination" => [boolean()],
        "status" => String.t(),
        "volumeId" => [String.t()]
      }

  """
  @type ebs_instance_block_device() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_input() :: %{}

  """
  @type list_tags_for_resource_input() :: %{}

  @typedoc """

  ## Example:

      describe_task_input() :: %{}

  """
  @type describe_task_input() :: %{}

  @typedoc """

  ## Example:

      instance_summary() :: %{
        "instance" => instance(),
        "lastUpdatedAt" => [non_neg_integer()]
      }

  """
  @type instance_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      security_group_identifier() :: %{
        "groupId" => [String.t()],
        "groupName" => [String.t()]
      }

  """
  @type security_group_identifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      software_information() :: %{
        "installState" => [String.t()],
        "installedVersion" => [String.t()],
        "installingVersion" => [String.t()]
      }

  """
  @type software_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tasks_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("state") => String.t()
      }

  """
  @type list_tasks_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_executions_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        optional("state") => String.t(),
        required("taskId") => String.t()
      }

  """
  @type list_executions_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      cancel_task_input() :: %{}

  """
  @type cancel_task_input() :: %{}

  @type cancel_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type create_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type describe_device_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_device_ec2_instances_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_execution_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_task_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_device_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_devices_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_executions_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_tasks_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2021-08-04",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "snow-device-management",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Snow Device Management",
      signature_version: "v4",
      signing_name: "snow-device-management",
      target_prefix: nil
    }
  end

  @doc """
  Sends a cancel request for a specified task.

  You can cancel a task only if it's still in a
  `QUEUED` state. Tasks that are already running can't be cancelled.

  A task might still run if it's processed from the queue before the
  `CancelTask` operation changes the task's state.
  """
  @spec cancel_task(map(), String.t(), cancel_task_input(), list()) ::
          {:ok, cancel_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_task_errors()}
  def cancel_task(%Client{} = client, task_id, input, options \\ []) do
    url_path = "/task/#{AWS.Util.encode_uri(task_id)}/cancel"
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
  Instructs one or more devices to start a task, such as unlocking or rebooting.
  """
  @spec create_task(map(), create_task_input(), list()) ::
          {:ok, create_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_task_errors()}
  def create_task(%Client{} = client, input, options \\ []) do
    url_path = "/task"
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
  Checks device-specific information, such as the device type, software version,
  IP
  addresses, and lock status.
  """
  @spec describe_device(map(), String.t(), describe_device_input(), list()) ::
          {:ok, describe_device_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_device_errors()}
  def describe_device(%Client{} = client, managed_device_id, input, options \\ []) do
    url_path = "/managed-device/#{AWS.Util.encode_uri(managed_device_id)}/describe"
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
  Checks the current state of the Amazon EC2 instances.

  The output is similar to
  `describeDevice`, but the results are sourced from the device cache in the
  Amazon Web Services Cloud and include a subset of the available fields.
  """
  @spec describe_device_ec2_instances(map(), String.t(), describe_device_ec2_input(), list()) ::
          {:ok, describe_device_ec2_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_device_ec2_instances_errors()}
  def describe_device_ec2_instances(%Client{} = client, managed_device_id, input, options \\ []) do
    url_path = "/managed-device/#{AWS.Util.encode_uri(managed_device_id)}/resources/ec2/describe"
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
  Checks the status of a remote task running on one or more target devices.
  """
  @spec describe_execution(map(), String.t(), String.t(), describe_execution_input(), list()) ::
          {:ok, describe_execution_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_execution_errors()}
  def describe_execution(%Client{} = client, managed_device_id, task_id, input, options \\ []) do
    url_path =
      "/task/#{AWS.Util.encode_uri(task_id)}/execution/#{AWS.Util.encode_uri(managed_device_id)}"

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
  Checks the metadata for a given task on a device.
  """
  @spec describe_task(map(), String.t(), describe_task_input(), list()) ::
          {:ok, describe_task_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_task_errors()}
  def describe_task(%Client{} = client, task_id, input, options \\ []) do
    url_path = "/task/#{AWS.Util.encode_uri(task_id)}"
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
  Returns a list of the Amazon Web Services resources available for a device.

  Currently, Amazon EC2 instances are the only supported resource type.
  """
  @spec list_device_resources(
          map(),
          String.t(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          list()
        ) ::
          {:ok, list_device_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_device_resources_errors()}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of all devices on your Amazon Web Services account that have
  Amazon Web Services Snow Device Management
  enabled in the Amazon Web Services Region where the command is run.
  """
  @spec list_devices(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_devices_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_devices_errors()}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the status of tasks for one or more target devices.
  """
  @spec list_executions(
          map(),
          String.t() | nil,
          String.t() | nil,
          String.t() | nil,
          String.t(),
          list()
        ) ::
          {:ok, list_executions_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_executions_errors()}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of tags for a managed device or task.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
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
  Returns a list of tasks that can be filtered by state.
  """
  @spec list_tasks(map(), String.t() | nil, String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_tasks_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tasks_errors()}
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Adds or replaces tags on a device or task.
  """
  @spec tag_resource(map(), String.t(), tag_resource_input(), list()) ::
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
  Removes a tag from a device or task.
  """
  @spec untag_resource(map(), String.t(), untag_resource_input(), list()) ::
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
end
