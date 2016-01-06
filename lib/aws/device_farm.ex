# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.DeviceFarm do
  @moduledoc """
  AWS Device Farm is a service that enables mobile app developers to test
  Android, iOS, and Fire OS apps on physical phones, tablets, and other
  devices in the cloud.
  """

  @doc """
  Creates a device pool.
  """
  def create_device_pool(client, input, options \\ []) do
    request(client, "CreateDevicePool", input, options)
  end

  @doc """
  Creates a new project.
  """
  def create_project(client, input, options \\ []) do
    request(client, "CreateProject", input, options)
  end

  @doc """
  Uploads an app or test scripts.
  """
  def create_upload(client, input, options \\ []) do
    request(client, "CreateUpload", input, options)
  end

  @doc """
  Deletes a device pool given the pool ARN. Does not allow deletion of
  curated pools owned by the system.
  """
  def delete_device_pool(client, input, options \\ []) do
    request(client, "DeleteDevicePool", input, options)
  end

  @doc """
  Deletes an AWS Device Farm project, given the project ARN.

  **Note** Deleting this resource does not stop an in-progress run.
  """
  def delete_project(client, input, options \\ []) do
    request(client, "DeleteProject", input, options)
  end

  @doc """
  Deletes the run, given the run ARN.

  **Note** Deleting this resource does not stop an in-progress run.
  """
  def delete_run(client, input, options \\ []) do
    request(client, "DeleteRun", input, options)
  end

  @doc """
  Deletes an upload given the upload ARN.
  """
  def delete_upload(client, input, options \\ []) do
    request(client, "DeleteUpload", input, options)
  end

  @doc """
  Returns the number of unmetered iOS and/or unmetered Android devices that
  have been purchased by the account.
  """
  def get_account_settings(client, input, options \\ []) do
    request(client, "GetAccountSettings", input, options)
  end

  @doc """
  Gets information about a unique device type.
  """
  def get_device(client, input, options \\ []) do
    request(client, "GetDevice", input, options)
  end

  @doc """
  Gets information about a device pool.
  """
  def get_device_pool(client, input, options \\ []) do
    request(client, "GetDevicePool", input, options)
  end

  @doc """
  Gets information about compatibility with a device pool.
  """
  def get_device_pool_compatibility(client, input, options \\ []) do
    request(client, "GetDevicePoolCompatibility", input, options)
  end

  @doc """
  Gets information about a job.
  """
  def get_job(client, input, options \\ []) do
    request(client, "GetJob", input, options)
  end

  @doc """
  Gets information about a project.
  """
  def get_project(client, input, options \\ []) do
    request(client, "GetProject", input, options)
  end

  @doc """
  Gets information about a run.
  """
  def get_run(client, input, options \\ []) do
    request(client, "GetRun", input, options)
  end

  @doc """
  Gets information about a suite.
  """
  def get_suite(client, input, options \\ []) do
    request(client, "GetSuite", input, options)
  end

  @doc """
  Gets information about a test.
  """
  def get_test(client, input, options \\ []) do
    request(client, "GetTest", input, options)
  end

  @doc """
  Gets information about an upload.
  """
  def get_upload(client, input, options \\ []) do
    request(client, "GetUpload", input, options)
  end

  @doc """
  Gets information about artifacts.
  """
  def list_artifacts(client, input, options \\ []) do
    request(client, "ListArtifacts", input, options)
  end

  @doc """
  Gets information about device pools.
  """
  def list_device_pools(client, input, options \\ []) do
    request(client, "ListDevicePools", input, options)
  end

  @doc """
  Gets information about unique device types.
  """
  def list_devices(client, input, options \\ []) do
    request(client, "ListDevices", input, options)
  end

  @doc """
  Gets information about jobs.
  """
  def list_jobs(client, input, options \\ []) do
    request(client, "ListJobs", input, options)
  end

  @doc """
  Gets information about projects.
  """
  def list_projects(client, input, options \\ []) do
    request(client, "ListProjects", input, options)
  end

  @doc """
  Gets information about runs.
  """
  def list_runs(client, input, options \\ []) do
    request(client, "ListRuns", input, options)
  end

  @doc """
  Gets information about samples.
  """
  def list_samples(client, input, options \\ []) do
    request(client, "ListSamples", input, options)
  end

  @doc """
  Gets information about suites.
  """
  def list_suites(client, input, options \\ []) do
    request(client, "ListSuites", input, options)
  end

  @doc """
  Gets information about tests.
  """
  def list_tests(client, input, options \\ []) do
    request(client, "ListTests", input, options)
  end

  @doc """
  Gets information about unique problems.
  """
  def list_unique_problems(client, input, options \\ []) do
    request(client, "ListUniqueProblems", input, options)
  end

  @doc """
  Gets information about uploads.
  """
  def list_uploads(client, input, options \\ []) do
    request(client, "ListUploads", input, options)
  end

  @doc """
  Schedules a run.
  """
  def schedule_run(client, input, options \\ []) do
    request(client, "ScheduleRun", input, options)
  end

  @doc """
  Modifies the name, description, and rules in a device pool given the
  attributes and the pool ARN. Rule updates are all-or-nothing, meaning they
  can only be updated as a whole (or not at all).
  """
  def update_device_pool(client, input, options \\ []) do
    request(client, "UpdateDevicePool", input, options)
  end

  @doc """
  Modifies the specified project name, given the project ARN and a new name.
  """
  def update_project(client, input, options \\ []) do
    request(client, "UpdateProject", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "devicefarm"}
    host = get_host("devicefarm", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "DeviceFarm_20150623.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["__type"]
        {:error, reason}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}"
  end

end
