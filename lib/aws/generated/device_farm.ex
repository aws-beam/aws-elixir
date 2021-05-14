# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DeviceFarm do
  @moduledoc """
  Welcome to the AWS Device Farm API documentation, which contains APIs for:

    * Testing on desktop browsers

  Device Farm makes it possible for you to test your web applications on desktop
  browsers using Selenium.

  The APIs for desktop browser testing contain `TestGrid` in their names. For more
  information, see [Testing Web Applications on Selenium with Device Farm](https://docs.aws.amazon.com/devicefarm/latest/testgrid/).

    * Testing on real mobile devices

  Device Farm makes it possible for you to test apps on physical phones, tablets,
  and other devices in the cloud. For more information, see the [Device Farm Developer Guide](https://docs.aws.amazon.com/devicefarm/latest/developerguide/).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2015-06-23",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "devicefarm",
      global?: false,
      protocol: "json",
      service_id: "Device Farm",
      signature_version: "v4",
      signing_name: "devicefarm",
      target_prefix: "DeviceFarm_20150623"
    }
  end

  @doc """
  Creates a device pool.
  """
  def create_device_pool(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDevicePool", input, options)
  end

  @doc """
  Creates a profile that can be applied to one or more private fleet device
  instances.
  """
  def create_instance_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateInstanceProfile", input, options)
  end

  @doc """
  Creates a network profile.
  """
  def create_network_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateNetworkProfile", input, options)
  end

  @doc """
  Creates a project.
  """
  def create_project(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateProject", input, options)
  end

  @doc """
  Specifies and starts a remote access session.
  """
  def create_remote_access_session(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateRemoteAccessSession", input, options)
  end

  @doc """
  Creates a Selenium testing project.

  Projects are used to track `TestGridSession` instances.
  """
  def create_test_grid_project(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateTestGridProject", input, options)
  end

  @doc """
  Creates a signed, short-term URL that can be passed to a Selenium
  `RemoteWebDriver` constructor.
  """
  def create_test_grid_url(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateTestGridUrl", input, options)
  end

  @doc """
  Uploads an app or test scripts.
  """
  def create_upload(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateUpload", input, options)
  end

  @doc """
  Creates a configuration record in Device Farm for your Amazon Virtual Private
  Cloud (VPC) endpoint.
  """
  def create_vpce_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateVPCEConfiguration", input, options)
  end

  @doc """
  Deletes a device pool given the pool ARN.

  Does not allow deletion of curated pools owned by the system.
  """
  def delete_device_pool(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDevicePool", input, options)
  end

  @doc """
  Deletes a profile that can be applied to one or more private device instances.
  """
  def delete_instance_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteInstanceProfile", input, options)
  end

  @doc """
  Deletes a network profile.
  """
  def delete_network_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteNetworkProfile", input, options)
  end

  @doc """
  Deletes an AWS Device Farm project, given the project ARN.

  Deleting this resource does not stop an in-progress run.
  """
  def delete_project(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteProject", input, options)
  end

  @doc """
  Deletes a completed remote access session and its results.
  """
  def delete_remote_access_session(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteRemoteAccessSession", input, options)
  end

  @doc """
  Deletes the run, given the run ARN.

  Deleting this resource does not stop an in-progress run.
  """
  def delete_run(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteRun", input, options)
  end

  @doc """
  Deletes a Selenium testing project and all content generated under it.

  You cannot undo this operation.

  You cannot delete a project if it has active sessions.
  """
  def delete_test_grid_project(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteTestGridProject", input, options)
  end

  @doc """
  Deletes an upload given the upload ARN.
  """
  def delete_upload(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteUpload", input, options)
  end

  @doc """
  Deletes a configuration for your Amazon Virtual Private Cloud (VPC) endpoint.
  """
  def delete_vpce_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteVPCEConfiguration", input, options)
  end

  @doc """
  Returns the number of unmetered iOS or unmetered Android devices that have been
  purchased by the account.
  """
  def get_account_settings(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetAccountSettings", input, options)
  end

  @doc """
  Gets information about a unique device type.
  """
  def get_device(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetDevice", input, options)
  end

  @doc """
  Returns information about a device instance that belongs to a private device
  fleet.
  """
  def get_device_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetDeviceInstance", input, options)
  end

  @doc """
  Gets information about a device pool.
  """
  def get_device_pool(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetDevicePool", input, options)
  end

  @doc """
  Gets information about compatibility with a device pool.
  """
  def get_device_pool_compatibility(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetDevicePoolCompatibility", input, options)
  end

  @doc """
  Returns information about the specified instance profile.
  """
  def get_instance_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetInstanceProfile", input, options)
  end

  @doc """
  Gets information about a job.
  """
  def get_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetJob", input, options)
  end

  @doc """
  Returns information about a network profile.
  """
  def get_network_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetNetworkProfile", input, options)
  end

  @doc """
  Gets the current status and future status of all offerings purchased by an AWS
  account.

  The response indicates how many offerings are currently available and the
  offerings that will be available in the next period. The API returns a
  `NotEligible` error if the user is not permitted to invoke the operation. If you
  must be able to invoke this operation, contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com).
  """
  def get_offering_status(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetOfferingStatus", input, options)
  end

  @doc """
  Gets information about a project.
  """
  def get_project(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetProject", input, options)
  end

  @doc """
  Returns a link to a currently running remote access session.
  """
  def get_remote_access_session(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetRemoteAccessSession", input, options)
  end

  @doc """
  Gets information about a run.
  """
  def get_run(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetRun", input, options)
  end

  @doc """
  Gets information about a suite.
  """
  def get_suite(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetSuite", input, options)
  end

  @doc """
  Gets information about a test.
  """
  def get_test(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetTest", input, options)
  end

  @doc """
  Retrieves information about a Selenium testing project.
  """
  def get_test_grid_project(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetTestGridProject", input, options)
  end

  @doc """
  A session is an instance of a browser created through a `RemoteWebDriver` with
  the URL from `CreateTestGridUrlResult$url`.

  You can use the following to look up sessions:

    * The session ARN (`GetTestGridSessionRequest$sessionArn`).

    * The project ARN and a session ID
  (`GetTestGridSessionRequest$projectArn` and
  `GetTestGridSessionRequest$sessionId`).
  """
  def get_test_grid_session(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetTestGridSession", input, options)
  end

  @doc """
  Gets information about an upload.
  """
  def get_upload(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetUpload", input, options)
  end

  @doc """
  Returns information about the configuration settings for your Amazon Virtual
  Private Cloud (VPC) endpoint.
  """
  def get_vpce_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetVPCEConfiguration", input, options)
  end

  @doc """
  Installs an application to the device in a remote access session.

  For Android applications, the file must be in .apk format. For iOS applications,
  the file must be in .ipa format.
  """
  def install_to_remote_access_session(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "InstallToRemoteAccessSession", input, options)
  end

  @doc """
  Gets information about artifacts.
  """
  def list_artifacts(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListArtifacts", input, options)
  end

  @doc """
  Returns information about the private device instances associated with one or
  more AWS accounts.
  """
  def list_device_instances(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDeviceInstances", input, options)
  end

  @doc """
  Gets information about device pools.
  """
  def list_device_pools(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDevicePools", input, options)
  end

  @doc """
  Gets information about unique device types.
  """
  def list_devices(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDevices", input, options)
  end

  @doc """
  Returns information about all the instance profiles in an AWS account.
  """
  def list_instance_profiles(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListInstanceProfiles", input, options)
  end

  @doc """
  Gets information about jobs for a given test run.
  """
  def list_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListJobs", input, options)
  end

  @doc """
  Returns the list of available network profiles.
  """
  def list_network_profiles(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListNetworkProfiles", input, options)
  end

  @doc """
  Returns a list of offering promotions.

  Each offering promotion record contains the ID and description of the promotion.
  The API returns a `NotEligible` error if the caller is not permitted to invoke
  the operation. Contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com) if
  you must be able to invoke this operation.
  """
  def list_offering_promotions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListOfferingPromotions", input, options)
  end

  @doc """
  Returns a list of all historical purchases, renewals, and system renewal
  transactions for an AWS account.

  The list is paginated and ordered by a descending timestamp (most recent
  transactions are first). The API returns a `NotEligible` error if the user is
  not permitted to invoke the operation. If you must be able to invoke this
  operation, contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com).
  """
  def list_offering_transactions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListOfferingTransactions", input, options)
  end

  @doc """
  Returns a list of products or offerings that the user can manage through the
  API.

  Each offering record indicates the recurring price per unit and the frequency
  for that offering. The API returns a `NotEligible` error if the user is not
  permitted to invoke the operation. If you must be able to invoke this operation,
  contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com).
  """
  def list_offerings(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListOfferings", input, options)
  end

  @doc """
  Gets information about projects.
  """
  def list_projects(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListProjects", input, options)
  end

  @doc """
  Returns a list of all currently running remote access sessions.
  """
  def list_remote_access_sessions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListRemoteAccessSessions", input, options)
  end

  @doc """
  Gets information about runs, given an AWS Device Farm project ARN.
  """
  def list_runs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListRuns", input, options)
  end

  @doc """
  Gets information about samples, given an AWS Device Farm job ARN.
  """
  def list_samples(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListSamples", input, options)
  end

  @doc """
  Gets information about test suites for a given job.
  """
  def list_suites(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListSuites", input, options)
  end

  @doc """
  List the tags for an AWS Device Farm resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Gets a list of all Selenium testing projects in your account.
  """
  def list_test_grid_projects(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTestGridProjects", input, options)
  end

  @doc """
  Returns a list of the actions taken in a `TestGridSession`.
  """
  def list_test_grid_session_actions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTestGridSessionActions", input, options)
  end

  @doc """
  Retrieves a list of artifacts created during the session.
  """
  def list_test_grid_session_artifacts(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTestGridSessionArtifacts", input, options)
  end

  @doc """
  Retrieves a list of sessions for a `TestGridProject`.
  """
  def list_test_grid_sessions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTestGridSessions", input, options)
  end

  @doc """
  Gets information about tests in a given test suite.
  """
  def list_tests(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTests", input, options)
  end

  @doc """
  Gets information about unique problems, such as exceptions or crashes.

  Unique problems are defined as a single instance of an error across a run, job,
  or suite. For example, if a call in your application consistently raises an
  exception (`OutOfBoundsException in MyActivity.java:386`), `ListUniqueProblems`
  returns a single entry instead of many individual entries for that exception.
  """
  def list_unique_problems(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListUniqueProblems", input, options)
  end

  @doc """
  Gets information about uploads, given an AWS Device Farm project ARN.
  """
  def list_uploads(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListUploads", input, options)
  end

  @doc """
  Returns information about all Amazon Virtual Private Cloud (VPC) endpoint
  configurations in the AWS account.
  """
  def list_vpce_configurations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListVPCEConfigurations", input, options)
  end

  @doc """
  Immediately purchases offerings for an AWS account.

  Offerings renew with the latest total purchased quantity for an offering, unless
  the renewal was overridden. The API returns a `NotEligible` error if the user is
  not permitted to invoke the operation. If you must be able to invoke this
  operation, contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com).
  """
  def purchase_offering(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PurchaseOffering", input, options)
  end

  @doc """
  Explicitly sets the quantity of devices to renew for an offering, starting from
  the `effectiveDate` of the next period.

  The API returns a `NotEligible` error if the user is not permitted to invoke the
  operation. If you must be able to invoke this operation, contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com).
  """
  def renew_offering(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RenewOffering", input, options)
  end

  @doc """
  Schedules a run.
  """
  def schedule_run(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ScheduleRun", input, options)
  end

  @doc """
  Initiates a stop request for the current job.

  AWS Device Farm immediately stops the job on the device where tests have not
  started. You are not billed for this device. On the device where tests have
  started, setup suite and teardown suite tests run to completion on the device.
  You are billed for setup, teardown, and any tests that were in progress or
  already completed.
  """
  def stop_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopJob", input, options)
  end

  @doc """
  Ends a specified remote access session.
  """
  def stop_remote_access_session(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopRemoteAccessSession", input, options)
  end

  @doc """
  Initiates a stop request for the current test run.

  AWS Device Farm immediately stops the run on devices where tests have not
  started. You are not billed for these devices. On devices where tests have
  started executing, setup suite and teardown suite tests run to completion on
  those devices. You are billed for setup, teardown, and any tests that were in
  progress or already completed.
  """
  def stop_run(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopRun", input, options)
  end

  @doc """
  Associates the specified tags to a resource with the specified `resourceArn`.

  If existing tags on a resource are not specified in the request parameters, they
  are not changed. When a resource is deleted, the tags associated with that
  resource are also deleted.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Deletes the specified tags from a resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Updates information about a private device instance.
  """
  def update_device_instance(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateDeviceInstance", input, options)
  end

  @doc """
  Modifies the name, description, and rules in a device pool given the attributes
  and the pool ARN.

  Rule updates are all-or-nothing, meaning they can only be updated as a whole (or
  not at all).
  """
  def update_device_pool(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateDevicePool", input, options)
  end

  @doc """
  Updates information about an existing private device instance profile.
  """
  def update_instance_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateInstanceProfile", input, options)
  end

  @doc """
  Updates the network profile.
  """
  def update_network_profile(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateNetworkProfile", input, options)
  end

  @doc """
  Modifies the specified project name, given the project ARN and a new name.
  """
  def update_project(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateProject", input, options)
  end

  @doc """
  Change details of a project.
  """
  def update_test_grid_project(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateTestGridProject", input, options)
  end

  @doc """
  Updates an uploaded test spec.
  """
  def update_upload(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateUpload", input, options)
  end

  @doc """
  Updates information about an Amazon Virtual Private Cloud (VPC) endpoint
  configuration.
  """
  def update_vpce_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateVPCEConfiguration", input, options)
  end
end
