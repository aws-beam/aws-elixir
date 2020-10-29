# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DeviceFarm do
  @moduledoc """
  Welcome to the AWS Device Farm API documentation, which contains APIs for:

  <ul> <li> Testing on desktop browsers

  Device Farm makes it possible for you to test your web applications on
  desktop browsers using Selenium. The APIs for desktop browser testing
  contain `TestGrid` in their names. For more information, see [Testing Web
  Applications on Selenium with Device
  Farm](https://docs.aws.amazon.com/devicefarm/latest/testgrid/).

  </li> <li> Testing on real mobile devices

  Device Farm makes it possible for you to test apps on physical phones,
  tablets, and other devices in the cloud. For more information, see the
  [Device Farm Developer
  Guide](https://docs.aws.amazon.com/devicefarm/latest/developerguide/).

  </li> </ul>
  """

  @doc """
  Creates a device pool.
  """
  def create_device_pool(client, input, options \\ []) do
    request(client, "CreateDevicePool", input, options)
  end

  @doc """
  Creates a profile that can be applied to one or more private fleet device
  instances.
  """
  def create_instance_profile(client, input, options \\ []) do
    request(client, "CreateInstanceProfile", input, options)
  end

  @doc """
  Creates a network profile.
  """
  def create_network_profile(client, input, options \\ []) do
    request(client, "CreateNetworkProfile", input, options)
  end

  @doc """
  Creates a project.
  """
  def create_project(client, input, options \\ []) do
    request(client, "CreateProject", input, options)
  end

  @doc """
  Specifies and starts a remote access session.
  """
  def create_remote_access_session(client, input, options \\ []) do
    request(client, "CreateRemoteAccessSession", input, options)
  end

  @doc """
  Creates a Selenium testing project. Projects are used to track
  `TestGridSession` instances.
  """
  def create_test_grid_project(client, input, options \\ []) do
    request(client, "CreateTestGridProject", input, options)
  end

  @doc """
  Creates a signed, short-term URL that can be passed to a Selenium
  `RemoteWebDriver` constructor.
  """
  def create_test_grid_url(client, input, options \\ []) do
    request(client, "CreateTestGridUrl", input, options)
  end

  @doc """
  Uploads an app or test scripts.
  """
  def create_upload(client, input, options \\ []) do
    request(client, "CreateUpload", input, options)
  end

  @doc """
  Creates a configuration record in Device Farm for your Amazon Virtual
  Private Cloud (VPC) endpoint.
  """
  def create_v_p_c_e_configuration(client, input, options \\ []) do
    request(client, "CreateVPCEConfiguration", input, options)
  end

  @doc """
  Deletes a device pool given the pool ARN. Does not allow deletion of
  curated pools owned by the system.
  """
  def delete_device_pool(client, input, options \\ []) do
    request(client, "DeleteDevicePool", input, options)
  end

  @doc """
  Deletes a profile that can be applied to one or more private device
  instances.
  """
  def delete_instance_profile(client, input, options \\ []) do
    request(client, "DeleteInstanceProfile", input, options)
  end

  @doc """
  Deletes a network profile.
  """
  def delete_network_profile(client, input, options \\ []) do
    request(client, "DeleteNetworkProfile", input, options)
  end

  @doc """
  Deletes an AWS Device Farm project, given the project ARN.

  Deleting this resource does not stop an in-progress run.
  """
  def delete_project(client, input, options \\ []) do
    request(client, "DeleteProject", input, options)
  end

  @doc """
  Deletes a completed remote access session and its results.
  """
  def delete_remote_access_session(client, input, options \\ []) do
    request(client, "DeleteRemoteAccessSession", input, options)
  end

  @doc """
  Deletes the run, given the run ARN.

  Deleting this resource does not stop an in-progress run.
  """
  def delete_run(client, input, options \\ []) do
    request(client, "DeleteRun", input, options)
  end

  @doc """
  Deletes a Selenium testing project and all content generated under it.

  <important> You cannot undo this operation.

  </important> <note> You cannot delete a project if it has active sessions.

  </note>
  """
  def delete_test_grid_project(client, input, options \\ []) do
    request(client, "DeleteTestGridProject", input, options)
  end

  @doc """
  Deletes an upload given the upload ARN.
  """
  def delete_upload(client, input, options \\ []) do
    request(client, "DeleteUpload", input, options)
  end

  @doc """
  Deletes a configuration for your Amazon Virtual Private Cloud (VPC)
  endpoint.
  """
  def delete_v_p_c_e_configuration(client, input, options \\ []) do
    request(client, "DeleteVPCEConfiguration", input, options)
  end

  @doc """
  Returns the number of unmetered iOS or unmetered Android devices that have
  been purchased by the account.
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
  Returns information about a device instance that belongs to a private
  device fleet.
  """
  def get_device_instance(client, input, options \\ []) do
    request(client, "GetDeviceInstance", input, options)
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
  Returns information about the specified instance profile.
  """
  def get_instance_profile(client, input, options \\ []) do
    request(client, "GetInstanceProfile", input, options)
  end

  @doc """
  Gets information about a job.
  """
  def get_job(client, input, options \\ []) do
    request(client, "GetJob", input, options)
  end

  @doc """
  Returns information about a network profile.
  """
  def get_network_profile(client, input, options \\ []) do
    request(client, "GetNetworkProfile", input, options)
  end

  @doc """
  Gets the current status and future status of all offerings purchased by an
  AWS account. The response indicates how many offerings are currently
  available and the offerings that will be available in the next period. The
  API returns a `NotEligible` error if the user is not permitted to invoke
  the operation. If you must be able to invoke this operation, contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com).
  """
  def get_offering_status(client, input, options \\ []) do
    request(client, "GetOfferingStatus", input, options)
  end

  @doc """
  Gets information about a project.
  """
  def get_project(client, input, options \\ []) do
    request(client, "GetProject", input, options)
  end

  @doc """
  Returns a link to a currently running remote access session.
  """
  def get_remote_access_session(client, input, options \\ []) do
    request(client, "GetRemoteAccessSession", input, options)
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
  Retrieves information about a Selenium testing project.
  """
  def get_test_grid_project(client, input, options \\ []) do
    request(client, "GetTestGridProject", input, options)
  end

  @doc """
  A session is an instance of a browser created through a `RemoteWebDriver`
  with the URL from `CreateTestGridUrlResult$url`. You can use the following
  to look up sessions:

  <ul> <li> The session ARN (`GetTestGridSessionRequest$sessionArn`).

  </li> <li> The project ARN and a session ID
  (`GetTestGridSessionRequest$projectArn` and
  `GetTestGridSessionRequest$sessionId`).

  </li> </ul> <p/>
  """
  def get_test_grid_session(client, input, options \\ []) do
    request(client, "GetTestGridSession", input, options)
  end

  @doc """
  Gets information about an upload.
  """
  def get_upload(client, input, options \\ []) do
    request(client, "GetUpload", input, options)
  end

  @doc """
  Returns information about the configuration settings for your Amazon
  Virtual Private Cloud (VPC) endpoint.
  """
  def get_v_p_c_e_configuration(client, input, options \\ []) do
    request(client, "GetVPCEConfiguration", input, options)
  end

  @doc """
  Installs an application to the device in a remote access session. For
  Android applications, the file must be in .apk format. For iOS
  applications, the file must be in .ipa format.
  """
  def install_to_remote_access_session(client, input, options \\ []) do
    request(client, "InstallToRemoteAccessSession", input, options)
  end

  @doc """
  Gets information about artifacts.
  """
  def list_artifacts(client, input, options \\ []) do
    request(client, "ListArtifacts", input, options)
  end

  @doc """
  Returns information about the private device instances associated with one
  or more AWS accounts.
  """
  def list_device_instances(client, input, options \\ []) do
    request(client, "ListDeviceInstances", input, options)
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
  Returns information about all the instance profiles in an AWS account.
  """
  def list_instance_profiles(client, input, options \\ []) do
    request(client, "ListInstanceProfiles", input, options)
  end

  @doc """
  Gets information about jobs for a given test run.
  """
  def list_jobs(client, input, options \\ []) do
    request(client, "ListJobs", input, options)
  end

  @doc """
  Returns the list of available network profiles.
  """
  def list_network_profiles(client, input, options \\ []) do
    request(client, "ListNetworkProfiles", input, options)
  end

  @doc """
  Returns a list of offering promotions. Each offering promotion record
  contains the ID and description of the promotion. The API returns a
  `NotEligible` error if the caller is not permitted to invoke the operation.
  Contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com)
  if you must be able to invoke this operation.
  """
  def list_offering_promotions(client, input, options \\ []) do
    request(client, "ListOfferingPromotions", input, options)
  end

  @doc """
  Returns a list of all historical purchases, renewals, and system renewal
  transactions for an AWS account. The list is paginated and ordered by a
  descending timestamp (most recent transactions are first). The API returns
  a `NotEligible` error if the user is not permitted to invoke the operation.
  If you must be able to invoke this operation, contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com).
  """
  def list_offering_transactions(client, input, options \\ []) do
    request(client, "ListOfferingTransactions", input, options)
  end

  @doc """
  Returns a list of products or offerings that the user can manage through
  the API. Each offering record indicates the recurring price per unit and
  the frequency for that offering. The API returns a `NotEligible` error if
  the user is not permitted to invoke the operation. If you must be able to
  invoke this operation, contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com).
  """
  def list_offerings(client, input, options \\ []) do
    request(client, "ListOfferings", input, options)
  end

  @doc """
  Gets information about projects.
  """
  def list_projects(client, input, options \\ []) do
    request(client, "ListProjects", input, options)
  end

  @doc """
  Returns a list of all currently running remote access sessions.
  """
  def list_remote_access_sessions(client, input, options \\ []) do
    request(client, "ListRemoteAccessSessions", input, options)
  end

  @doc """
  Gets information about runs, given an AWS Device Farm project ARN.
  """
  def list_runs(client, input, options \\ []) do
    request(client, "ListRuns", input, options)
  end

  @doc """
  Gets information about samples, given an AWS Device Farm job ARN.
  """
  def list_samples(client, input, options \\ []) do
    request(client, "ListSamples", input, options)
  end

  @doc """
  Gets information about test suites for a given job.
  """
  def list_suites(client, input, options \\ []) do
    request(client, "ListSuites", input, options)
  end

  @doc """
  List the tags for an AWS Device Farm resource.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Gets a list of all Selenium testing projects in your account.
  """
  def list_test_grid_projects(client, input, options \\ []) do
    request(client, "ListTestGridProjects", input, options)
  end

  @doc """
  Returns a list of the actions taken in a `TestGridSession`.
  """
  def list_test_grid_session_actions(client, input, options \\ []) do
    request(client, "ListTestGridSessionActions", input, options)
  end

  @doc """
  Retrieves a list of artifacts created during the session.
  """
  def list_test_grid_session_artifacts(client, input, options \\ []) do
    request(client, "ListTestGridSessionArtifacts", input, options)
  end

  @doc """
  Retrieves a list of sessions for a `TestGridProject`.
  """
  def list_test_grid_sessions(client, input, options \\ []) do
    request(client, "ListTestGridSessions", input, options)
  end

  @doc """
  Gets information about tests in a given test suite.
  """
  def list_tests(client, input, options \\ []) do
    request(client, "ListTests", input, options)
  end

  @doc """
  Gets information about unique problems, such as exceptions or crashes.

  Unique problems are defined as a single instance of an error across a run,
  job, or suite. For example, if a call in your application consistently
  raises an exception (`OutOfBoundsException in MyActivity.java:386`),
  `ListUniqueProblems` returns a single entry instead of many individual
  entries for that exception.
  """
  def list_unique_problems(client, input, options \\ []) do
    request(client, "ListUniqueProblems", input, options)
  end

  @doc """
  Gets information about uploads, given an AWS Device Farm project ARN.
  """
  def list_uploads(client, input, options \\ []) do
    request(client, "ListUploads", input, options)
  end

  @doc """
  Returns information about all Amazon Virtual Private Cloud (VPC) endpoint
  configurations in the AWS account.
  """
  def list_v_p_c_e_configurations(client, input, options \\ []) do
    request(client, "ListVPCEConfigurations", input, options)
  end

  @doc """
  Immediately purchases offerings for an AWS account. Offerings renew with
  the latest total purchased quantity for an offering, unless the renewal was
  overridden. The API returns a `NotEligible` error if the user is not
  permitted to invoke the operation. If you must be able to invoke this
  operation, contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com).
  """
  def purchase_offering(client, input, options \\ []) do
    request(client, "PurchaseOffering", input, options)
  end

  @doc """
  Explicitly sets the quantity of devices to renew for an offering, starting
  from the `effectiveDate` of the next period. The API returns a
  `NotEligible` error if the user is not permitted to invoke the operation.
  If you must be able to invoke this operation, contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com).
  """
  def renew_offering(client, input, options \\ []) do
    request(client, "RenewOffering", input, options)
  end

  @doc """
  Schedules a run.
  """
  def schedule_run(client, input, options \\ []) do
    request(client, "ScheduleRun", input, options)
  end

  @doc """
  Initiates a stop request for the current job. AWS Device Farm immediately
  stops the job on the device where tests have not started. You are not
  billed for this device. On the device where tests have started, setup suite
  and teardown suite tests run to completion on the device. You are billed
  for setup, teardown, and any tests that were in progress or already
  completed.
  """
  def stop_job(client, input, options \\ []) do
    request(client, "StopJob", input, options)
  end

  @doc """
  Ends a specified remote access session.
  """
  def stop_remote_access_session(client, input, options \\ []) do
    request(client, "StopRemoteAccessSession", input, options)
  end

  @doc """
  Initiates a stop request for the current test run. AWS Device Farm
  immediately stops the run on devices where tests have not started. You are
  not billed for these devices. On devices where tests have started
  executing, setup suite and teardown suite tests run to completion on those
  devices. You are billed for setup, teardown, and any tests that were in
  progress or already completed.
  """
  def stop_run(client, input, options \\ []) do
    request(client, "StopRun", input, options)
  end

  @doc """
  Associates the specified tags to a resource with the specified
  `resourceArn`. If existing tags on a resource are not specified in the
  request parameters, they are not changed. When a resource is deleted, the
  tags associated with that resource are also deleted.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Deletes the specified tags from a resource.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Updates information about a private device instance.
  """
  def update_device_instance(client, input, options \\ []) do
    request(client, "UpdateDeviceInstance", input, options)
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
  Updates information about an existing private device instance profile.
  """
  def update_instance_profile(client, input, options \\ []) do
    request(client, "UpdateInstanceProfile", input, options)
  end

  @doc """
  Updates the network profile.
  """
  def update_network_profile(client, input, options \\ []) do
    request(client, "UpdateNetworkProfile", input, options)
  end

  @doc """
  Modifies the specified project name, given the project ARN and a new name.
  """
  def update_project(client, input, options \\ []) do
    request(client, "UpdateProject", input, options)
  end

  @doc """
  Change details of a project.
  """
  def update_test_grid_project(client, input, options \\ []) do
    request(client, "UpdateTestGridProject", input, options)
  end

  @doc """
  Updates an uploaded test spec.
  """
  def update_upload(client, input, options \\ []) do
    request(client, "UpdateUpload", input, options)
  end

  @doc """
  Updates information about an Amazon Virtual Private Cloud (VPC) endpoint
  configuration.
  """
  def update_v_p_c_e_configuration(client, input, options \\ []) do
    request(client, "UpdateVPCEConfiguration", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, map(), map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "devicefarm"}
    host = build_host("devicefarm", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "DeviceFarm_20150623.#{action}"}
    ]

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case AWS.Client.request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
        {:ok, body, response}

      {:ok, %{body: body} = response} ->
        {:error, decode!(client, body), response}

      error = {:error, _reason} -> error
    end
  end

  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

  defp encode!(client, payload) do
    AWS.Client.encode!(client, payload, :json)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
