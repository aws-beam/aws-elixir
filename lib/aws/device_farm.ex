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
  def create_device_pool(client, input, http_options \\ []) do
    request(client, "CreateDevicePool", input, http_options)
  end

  @doc """
  Creates a new project.
  """
  def create_project(client, input, http_options \\ []) do
    request(client, "CreateProject", input, http_options)
  end

  @doc """
  Uploads an app or test scripts.
  """
  def create_upload(client, input, http_options \\ []) do
    request(client, "CreateUpload", input, http_options)
  end

  @doc """
  Returns the number of unmetered iOS and/or unmetered Android devices that
  have been purchased by the account.
  """
  def get_account_settings(client, input, http_options \\ []) do
    request(client, "GetAccountSettings", input, http_options)
  end

  @doc """
  Gets information about a unique device type.
  """
  def get_device(client, input, http_options \\ []) do
    request(client, "GetDevice", input, http_options)
  end

  @doc """
  Gets information about a device pool.
  """
  def get_device_pool(client, input, http_options \\ []) do
    request(client, "GetDevicePool", input, http_options)
  end

  @doc """
  Gets information about compatibility with a device pool.
  """
  def get_device_pool_compatibility(client, input, http_options \\ []) do
    request(client, "GetDevicePoolCompatibility", input, http_options)
  end

  @doc """
  Gets information about a job.
  """
  def get_job(client, input, http_options \\ []) do
    request(client, "GetJob", input, http_options)
  end

  @doc """
  Gets information about a project.
  """
  def get_project(client, input, http_options \\ []) do
    request(client, "GetProject", input, http_options)
  end

  @doc """
  Gets information about a run.
  """
  def get_run(client, input, http_options \\ []) do
    request(client, "GetRun", input, http_options)
  end

  @doc """
  Gets information about a suite.
  """
  def get_suite(client, input, http_options \\ []) do
    request(client, "GetSuite", input, http_options)
  end

  @doc """
  Gets information about a test.
  """
  def get_test(client, input, http_options \\ []) do
    request(client, "GetTest", input, http_options)
  end

  @doc """
  Gets information about an upload.
  """
  def get_upload(client, input, http_options \\ []) do
    request(client, "GetUpload", input, http_options)
  end

  @doc """
  Gets information about artifacts.
  """
  def list_artifacts(client, input, http_options \\ []) do
    request(client, "ListArtifacts", input, http_options)
  end

  @doc """
  Gets information about device pools.
  """
  def list_device_pools(client, input, http_options \\ []) do
    request(client, "ListDevicePools", input, http_options)
  end

  @doc """
  Gets information about unique device types.
  """
  def list_devices(client, input, http_options \\ []) do
    request(client, "ListDevices", input, http_options)
  end

  @doc """
  Gets information about jobs.
  """
  def list_jobs(client, input, http_options \\ []) do
    request(client, "ListJobs", input, http_options)
  end

  @doc """
  Gets information about projects.
  """
  def list_projects(client, input, http_options \\ []) do
    request(client, "ListProjects", input, http_options)
  end

  @doc """
  Gets information about runs.
  """
  def list_runs(client, input, http_options \\ []) do
    request(client, "ListRuns", input, http_options)
  end

  @doc """
  Gets information about samples.
  """
  def list_samples(client, input, http_options \\ []) do
    request(client, "ListSamples", input, http_options)
  end

  @doc """
  Gets information about suites.
  """
  def list_suites(client, input, http_options \\ []) do
    request(client, "ListSuites", input, http_options)
  end

  @doc """
  Gets information about tests.
  """
  def list_tests(client, input, http_options \\ []) do
    request(client, "ListTests", input, http_options)
  end

  @doc """
  Gets information about unique problems.
  """
  def list_unique_problems(client, input, http_options \\ []) do
    request(client, "ListUniqueProblems", input, http_options)
  end

  @doc """
  Gets information about uploads.
  """
  def list_uploads(client, input, http_options \\ []) do
    request(client, "ListUploads", input, http_options)
  end

  @doc """
  Schedules a run.
  """
  def schedule_run(client, input, http_options \\ []) do
    request(client, "ScheduleRun", input, http_options)
  end

  defp request(client, action, input, http_options) do
    client = %{client | service: "devicefarm"}
    host = "devicefarm.#{client.region}.#{client.endpoint}"
    url = "https://#{host}/"
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "DeviceFarm_20150623.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, http_options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["__type"]
        {:error, reason, response}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end
end
