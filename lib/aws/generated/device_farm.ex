# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DeviceFarm do
  @moduledoc """
  Welcome to the AWS Device Farm API documentation, which contains APIs for:

    *
  Testing on desktop browsers

  Device Farm makes it possible for you to test your web applications on desktop
  browsers using
  Selenium.

  The APIs for desktop browser testing contain `TestGrid` in their names. For
  more information, see [Testing Web Applications on Selenium with Device
  Farm](https://docs.aws.amazon.com/devicefarm/latest/testgrid/).

    *
  Testing on real mobile devices

  Device Farm makes it possible for you to test apps on physical phones, tablets,
  and other
  devices in the cloud. For more information, see the [Device Farm Developer Guide](https://docs.aws.amazon.com/devicefarm/latest/developerguide/).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      update_test_grid_project_request() :: %{
        optional("description") => String.t(),
        optional("name") => String.t(),
        optional("vpcConfig") => test_grid_vpc_config(),
        required("projectArn") => String.t()
      }
      
  """
  @type update_test_grid_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_pool() :: %{
        "arn" => String.t(),
        "description" => String.t(),
        "maxDevices" => integer(),
        "name" => String.t(),
        "rules" => list(rule()()),
        "type" => list(any())
      }
      
  """
  @type device_pool() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vpce_configuration_result() :: %{
        "vpceConfiguration" => vpce_configuration()
      }
      
  """
  @type create_vpce_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_remote_access_session_configuration() :: %{
        "billingMethod" => list(any()),
        "deviceProxy" => device_proxy(),
        "vpceConfigurationArns" => list(String.t()())
      }
      
  """
  @type create_remote_access_session_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_network_profile_request() :: %{
        optional("description") => String.t(),
        optional("downlinkBandwidthBits") => float(),
        optional("downlinkDelayMs") => float(),
        optional("downlinkJitterMs") => float(),
        optional("downlinkLossPercent") => integer(),
        optional("type") => list(any()),
        optional("uplinkBandwidthBits") => float(),
        optional("uplinkDelayMs") => float(),
        optional("uplinkJitterMs") => float(),
        optional("uplinkLossPercent") => integer(),
        required("name") => String.t(),
        required("projectArn") => String.t()
      }
      
  """
  @type create_network_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tests_result() :: %{
        "nextToken" => String.t(),
        "tests" => list(test()())
      }
      
  """
  @type list_tests_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_instance_profiles_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_instance_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_device_pool_request() :: %{
        optional("description") => String.t(),
        optional("maxDevices") => integer(),
        required("name") => String.t(),
        required("projectArn") => String.t(),
        required("rules") => list(rule()())
      }
      
  """
  @type create_device_pool_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_suite_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_suite_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_upload_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_devices_request() :: %{
        optional("arn") => String.t(),
        optional("filters") => list(device_filter()()),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_devices_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_remote_access_session_request() :: %{
        optional("clientId") => String.t(),
        optional("configuration") => create_remote_access_session_configuration(),
        optional("instanceArn") => String.t(),
        optional("interactionMode") => list(any()),
        optional("name") => String.t(),
        optional("remoteDebugEnabled") => boolean(),
        optional("remoteRecordAppArn") => String.t(),
        optional("remoteRecordEnabled") => boolean(),
        optional("skipAppResign") => boolean(),
        optional("sshPublicKey") => String.t(),
        required("deviceArn") => String.t(),
        required("projectArn") => String.t()
      }
      
  """
  @type create_remote_access_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_profile() :: %{
        "arn" => String.t(),
        "description" => String.t(),
        "excludeAppPackagesFromCleanup" => list(String.t()()),
        "name" => String.t(),
        "packageCleanup" => boolean(),
        "rebootAfterUse" => boolean()
      }
      
  """
  @type instance_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_grid_session_actions_request() :: %{
        optional("maxResult") => integer(),
        optional("nextToken") => String.t(),
        required("sessionArn") => String.t()
      }
      
  """
  @type list_test_grid_session_actions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_grid_session_artifacts_request() :: %{
        optional("maxResult") => integer(),
        optional("nextToken") => String.t(),
        optional("type") => list(any()),
        required("sessionArn") => String.t()
      }
      
  """
  @type list_test_grid_session_artifacts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_upload_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_run_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_run_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_remote_access_session_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_remote_access_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      suite() :: %{
        "arn" => String.t(),
        "counters" => counters(),
        "created" => non_neg_integer(),
        "deviceMinutes" => device_minutes(),
        "message" => String.t(),
        "name" => String.t(),
        "result" => list(any()),
        "started" => non_neg_integer(),
        "status" => list(any()),
        "stopped" => non_neg_integer(),
        "type" => list(any())
      }
      
  """
  @type suite() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_operation_exception() :: %{
        "message" => String.t(),
        "resourceName" => String.t()
      }
      
  """
  @type tag_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_unique_problems_request() :: %{
        optional("nextToken") => String.t(),
        required("arn") => String.t()
      }
      
  """
  @type list_unique_problems_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_jobs_result() :: %{
        "jobs" => list(job()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_jobs_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_vpce_configuration_request() :: %{
        optional("vpceConfigurationDescription") => String.t(),
        required("serviceDnsName") => String.t(),
        required("vpceConfigurationName") => String.t(),
        required("vpceServiceName") => String.t()
      }
      
  """
  @type create_vpce_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_eligible_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type not_eligible_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      schedule_run_request() :: %{
        optional("appArn") => String.t(),
        optional("configuration") => schedule_run_configuration(),
        optional("devicePoolArn") => String.t(),
        optional("deviceSelectionConfiguration") => device_selection_configuration(),
        optional("executionConfiguration") => execution_configuration(),
        optional("name") => String.t(),
        required("projectArn") => String.t(),
        required("test") => schedule_run_test()
      }
      
  """
  @type schedule_run_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      renew_offering_request() :: %{
        required("offeringId") => String.t(),
        required("quantity") => integer()
      }
      
  """
  @type renew_offering_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_upload_result() :: %{
        "upload" => upload()
      }
      
  """
  @type update_upload_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_network_profiles_result() :: %{
        "networkProfiles" => list(network_profile()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_network_profiles_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_settings_request() :: %{}
      
  """
  @type get_account_settings_request() :: %{}

  @typedoc """

  ## Example:
      
      list_offering_promotions_result() :: %{
        "nextToken" => String.t(),
        "offeringPromotions" => list(offering_promotion()())
      }
      
  """
  @type list_offering_promotions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      monetary_amount() :: %{
        "amount" => float(),
        "currencyCode" => list(any())
      }
      
  """
  @type monetary_amount() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_jobs_request() :: %{
        optional("nextToken") => String.t(),
        required("arn") => String.t()
      }
      
  """
  @type list_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schedule_run_result() :: %{
        "run" => run()
      }
      
  """
  @type schedule_run_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_devices_result() :: %{
        "devices" => list(device()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_devices_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_upload_result() :: %{}
      
  """
  @type delete_upload_result() :: %{}

  @typedoc """

  ## Example:
      
      device_selection_configuration() :: %{
        "filters" => list(device_filter()()),
        "maxDevices" => integer()
      }
      
  """
  @type device_selection_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_test_grid_session_request() :: %{
        optional("projectArn") => String.t(),
        optional("sessionArn") => String.t(),
        optional("sessionId") => String.t()
      }
      
  """
  @type get_test_grid_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_offerings_request() :: %{
        optional("nextToken") => String.t()
      }
      
  """
  @type list_offerings_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_project_result() :: %{}
      
  """
  @type delete_project_result() :: %{}

  @typedoc """

  ## Example:
      
      get_remote_access_session_result() :: %{
        "remoteAccessSession" => remote_access_session()
      }
      
  """
  @type get_remote_access_session_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_network_profile_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_network_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_vpce_configuration_result() :: %{
        "vpceConfiguration" => vpce_configuration()
      }
      
  """
  @type get_vpce_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_project_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recurring_charge() :: %{
        "cost" => monetary_amount(),
        "frequency" => list(any())
      }
      
  """
  @type recurring_charge() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_instance_profile_result() :: %{}
      
  """
  @type delete_instance_profile_result() :: %{}

  @typedoc """

  ## Example:
      
      update_device_instance_request() :: %{
        optional("labels") => list(String.t()()),
        optional("profileArn") => String.t(),
        required("arn") => String.t()
      }
      
  """
  @type update_device_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_instance_profile_result() :: %{
        "instanceProfile" => instance_profile()
      }
      
  """
  @type get_instance_profile_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_instance_profile_result() :: %{
        "instanceProfile" => instance_profile()
      }
      
  """
  @type create_instance_profile_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_operation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type invalid_operation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_device_instance_result() :: %{
        "deviceInstance" => device_instance()
      }
      
  """
  @type get_device_instance_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_job_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type stop_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpce_configuration() :: %{
        "arn" => String.t(),
        "serviceDnsName" => String.t(),
        "vpceConfigurationDescription" => String.t(),
        "vpceConfigurationName" => String.t(),
        "vpceServiceName" => String.t()
      }
      
  """
  @type vpce_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      install_to_remote_access_session_request() :: %{
        required("appArn") => String.t(),
        required("remoteAccessSessionArn") => String.t()
      }
      
  """
  @type install_to_remote_access_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_offering_status_result() :: %{
        "current" => map(),
        "nextPeriod" => map(),
        "nextToken" => String.t()
      }
      
  """
  @type get_offering_status_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vpce_configuration_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_vpce_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_uploads_request() :: %{
        optional("nextToken") => String.t(),
        optional("type") => list(any()),
        required("arn") => String.t()
      }
      
  """
  @type list_uploads_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      offering_status() :: %{
        "effectiveOn" => non_neg_integer(),
        "offering" => offering(),
        "quantity" => integer(),
        "type" => list(any())
      }
      
  """
  @type offering_status() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_unique_problems_result() :: %{
        "nextToken" => String.t(),
        "uniqueProblems" => map()
      }
      
  """
  @type list_unique_problems_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_remote_access_sessions_request() :: %{
        optional("nextToken") => String.t(),
        required("arn") => String.t()
      }
      
  """
  @type list_remote_access_sessions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_policy_exception() :: %{
        "message" => String.t(),
        "resourceName" => String.t()
      }
      
  """
  @type tag_policy_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_instance_profiles_result() :: %{
        "instanceProfiles" => list(instance_profile()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_instance_profiles_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_device_pool_result() :: %{
        "devicePool" => device_pool()
      }
      
  """
  @type create_device_pool_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_service_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type internal_service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_upload_result() :: %{
        "upload" => upload()
      }
      
  """
  @type get_upload_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test() :: %{
        "arn" => String.t(),
        "counters" => counters(),
        "created" => non_neg_integer(),
        "deviceMinutes" => device_minutes(),
        "message" => String.t(),
        "name" => String.t(),
        "result" => list(any()),
        "started" => non_neg_integer(),
        "status" => list(any()),
        "stopped" => non_neg_integer(),
        "type" => list(any())
      }
      
  """
  @type test() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_device_pool_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_device_pool_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_grid_vpc_config() :: %{
        "securityGroupIds" => list(String.t()()),
        "subnetIds" => list(String.t()()),
        "vpcId" => String.t()
      }
      
  """
  @type test_grid_vpc_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      upload() :: %{
        "arn" => String.t(),
        "category" => list(any()),
        "contentType" => String.t(),
        "created" => non_neg_integer(),
        "message" => String.t(),
        "metadata" => String.t(),
        "name" => String.t(),
        "status" => list(any()),
        "type" => list(any()),
        "url" => String.t()
      }
      
  """
  @type upload() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      network_profile() :: %{
        "arn" => String.t(),
        "description" => String.t(),
        "downlinkBandwidthBits" => float(),
        "downlinkDelayMs" => float(),
        "downlinkJitterMs" => float(),
        "downlinkLossPercent" => integer(),
        "name" => String.t(),
        "type" => list(any()),
        "uplinkBandwidthBits" => float(),
        "uplinkDelayMs" => float(),
        "uplinkJitterMs" => float(),
        "uplinkLossPercent" => integer()
      }
      
  """
  @type network_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_instance_profile_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_instance_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schedule_run_configuration() :: %{
        "auxiliaryApps" => list(String.t()()),
        "billingMethod" => list(any()),
        "customerArtifactPaths" => customer_artifact_paths(),
        "deviceProxy" => device_proxy(),
        "extraDataPackageArn" => String.t(),
        "locale" => String.t(),
        "location" => location(),
        "networkProfileArn" => String.t(),
        "radios" => radios(),
        "vpceConfigurationArns" => list(String.t()())
      }
      
  """
  @type schedule_run_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_instance_profile_request() :: %{
        optional("description") => String.t(),
        optional("excludeAppPackagesFromCleanup") => list(String.t()()),
        optional("packageCleanup") => boolean(),
        optional("rebootAfterUse") => boolean(),
        required("name") => String.t()
      }
      
  """
  @type create_instance_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_device_pools_request() :: %{
        optional("nextToken") => String.t(),
        optional("type") => list(any()),
        required("arn") => String.t()
      }
      
  """
  @type list_device_pools_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unique_problem() :: %{
        "message" => String.t(),
        "problems" => list(problem()())
      }
      
  """
  @type unique_problem() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_network_profiles_request() :: %{
        optional("nextToken") => String.t(),
        optional("type") => list(any()),
        required("arn") => String.t()
      }
      
  """
  @type list_network_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_job_result() :: %{
        "job" => job()
      }
      
  """
  @type get_job_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_vpce_configuration_result() :: %{}
      
  """
  @type delete_vpce_configuration_result() :: %{}

  @typedoc """

  ## Example:
      
      list_tests_request() :: %{
        optional("nextToken") => String.t(),
        required("arn") => String.t()
      }
      
  """
  @type list_tests_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      counters() :: %{
        "errored" => integer(),
        "failed" => integer(),
        "passed" => integer(),
        "skipped" => integer(),
        "stopped" => integer(),
        "total" => integer(),
        "warned" => integer()
      }
      
  """
  @type counters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_network_profile_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_network_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      radios() :: %{
        "bluetooth" => boolean(),
        "gps" => boolean(),
        "nfc" => boolean(),
        "wifi" => boolean()
      }
      
  """
  @type radios() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_vpce_configuration_request() :: %{
        optional("serviceDnsName") => String.t(),
        optional("vpceConfigurationDescription") => String.t(),
        optional("vpceConfigurationName") => String.t(),
        optional("vpceServiceName") => String.t(),
        required("arn") => String.t()
      }
      
  """
  @type update_vpce_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      schedule_run_test() :: %{
        "filter" => String.t(),
        "parameters" => map(),
        "testPackageArn" => String.t(),
        "testSpecArn" => String.t(),
        "type" => list(any())
      }
      
  """
  @type schedule_run_test() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_instance_profile_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_instance_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_device_pool_result() :: %{}
      
  """
  @type delete_device_pool_result() :: %{}

  @typedoc """

  ## Example:
      
      get_project_result() :: %{
        "project" => project()
      }
      
  """
  @type get_project_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trial_minutes() :: %{
        "remaining" => float(),
        "total" => float()
      }
      
  """
  @type trial_minutes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_instance_profile_result() :: %{
        "instanceProfile" => instance_profile()
      }
      
  """
  @type update_instance_profile_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_samples_result() :: %{
        "nextToken" => String.t(),
        "samples" => list(sample()())
      }
      
  """
  @type list_samples_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_suite_result() :: %{
        "suite" => suite()
      }
      
  """
  @type get_suite_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_grid_projects_result() :: %{
        "nextToken" => String.t(),
        "testGridProjects" => list(test_grid_project()())
      }
      
  """
  @type list_test_grid_projects_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_offering_status_request() :: %{
        optional("nextToken") => String.t()
      }
      
  """
  @type get_offering_status_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_offering_transactions_result() :: %{
        "nextToken" => String.t(),
        "offeringTransactions" => list(offering_transaction()())
      }
      
  """
  @type list_offering_transactions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      project() :: %{
        "arn" => String.t(),
        "created" => non_neg_integer(),
        "defaultJobTimeoutMinutes" => integer(),
        "name" => String.t(),
        "vpcConfig" => vpc_config()
      }
      
  """
  @type project() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_grid_session_action() :: %{
        "action" => String.t(),
        "duration" => float(),
        "requestMethod" => String.t(),
        "started" => non_neg_integer(),
        "statusCode" => String.t()
      }
      
  """
  @type test_grid_session_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cannot_delete_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type cannot_delete_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_device_pool_compatibility_result() :: %{
        "compatibleDevices" => list(device_pool_compatibility_result()()),
        "incompatibleDevices" => list(device_pool_compatibility_result()())
      }
      
  """
  @type get_device_pool_compatibility_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_device_pool_compatibility_request() :: %{
        optional("appArn") => String.t(),
        optional("configuration") => schedule_run_configuration(),
        optional("test") => schedule_run_test(),
        optional("testType") => list(any()),
        required("devicePoolArn") => String.t()
      }
      
  """
  @type get_device_pool_compatibility_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      offering_transaction() :: %{
        "cost" => monetary_amount(),
        "createdOn" => non_neg_integer(),
        "offeringPromotionId" => String.t(),
        "offeringStatus" => offering_status(),
        "transactionId" => String.t()
      }
      
  """
  @type offering_transaction() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_grid_project() :: %{
        "arn" => String.t(),
        "created" => non_neg_integer(),
        "description" => String.t(),
        "name" => String.t(),
        "vpcConfig" => test_grid_vpc_config()
      }
      
  """
  @type test_grid_project() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      purchase_offering_result() :: %{
        "offeringTransaction" => offering_transaction()
      }
      
  """
  @type purchase_offering_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_vpce_configuration_result() :: %{
        "vpceConfiguration" => vpce_configuration()
      }
      
  """
  @type update_vpce_configuration_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_remote_access_session_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_remote_access_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      c_p_u() :: %{
        "architecture" => String.t(),
        "clock" => float(),
        "frequency" => String.t()
      }
      
  """
  @type c_p_u() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_run_result() :: %{
        "run" => run()
      }
      
  """
  @type get_run_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_test_grid_project_result() :: %{
        "testGridProject" => test_grid_project()
      }
      
  """
  @type create_test_grid_project_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_device_instances_result() :: %{
        "deviceInstances" => list(device_instance()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_device_instances_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_runs_result() :: %{
        "nextToken" => String.t(),
        "runs" => list(run()())
      }
      
  """
  @type list_runs_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      renew_offering_result() :: %{
        "offeringTransaction" => offering_transaction()
      }
      
  """
  @type renew_offering_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_test_grid_project_request() :: %{
        required("projectArn") => String.t()
      }
      
  """
  @type delete_test_grid_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      sample() :: %{
        "arn" => String.t(),
        "type" => list(any()),
        "url" => String.t()
      }
      
  """
  @type sample() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_device_pool_request() :: %{
        optional("clearMaxDevices") => boolean(),
        optional("description") => String.t(),
        optional("maxDevices") => integer(),
        optional("name") => String.t(),
        optional("rules") => list(rule()()),
        required("arn") => String.t()
      }
      
  """
  @type update_device_pool_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      vpc_config() :: %{
        "securityGroupIds" => list(String.t()()),
        "subnetIds" => list(String.t()()),
        "vpcId" => String.t()
      }
      
  """
  @type vpc_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_grid_session_artifacts_result() :: %{
        "artifacts" => list(test_grid_session_artifact()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_test_grid_session_artifacts_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_device_result() :: %{
        "device" => device()
      }
      
  """
  @type get_device_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      problem_detail() :: %{
        "arn" => String.t(),
        "name" => String.t()
      }
      
  """
  @type problem_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_network_profile_result() :: %{
        "networkProfile" => network_profile()
      }
      
  """
  @type create_network_profile_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      location() :: %{
        "latitude" => float(),
        "longitude" => float()
      }
      
  """
  @type location() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      execution_configuration() :: %{
        "accountsCleanup" => boolean(),
        "appPackagesCleanup" => boolean(),
        "jobTimeoutMinutes" => integer(),
        "skipAppResign" => boolean(),
        "videoCapture" => boolean()
      }
      
  """
  @type execution_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_offering_transactions_request() :: %{
        optional("nextToken") => String.t()
      }
      
  """
  @type list_offering_transactions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_account_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type service_account_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_test_grid_project_request() :: %{
        required("projectArn") => String.t()
      }
      
  """
  @type get_test_grid_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      install_to_remote_access_session_result() :: %{
        "appUpload" => upload()
      }
      
  """
  @type install_to_remote_access_session_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_samples_request() :: %{
        optional("nextToken") => String.t(),
        required("arn") => String.t()
      }
      
  """
  @type list_samples_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_grid_session_artifact() :: %{
        "filename" => String.t(),
        "type" => list(any()),
        "url" => String.t()
      }
      
  """
  @type test_grid_session_artifact() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rule() :: %{
        "attribute" => list(any()),
        "operator" => list(any()),
        "value" => String.t()
      }
      
  """
  @type rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_run_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_run_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_pool_compatibility_result() :: %{
        "compatible" => boolean(),
        "device" => device(),
        "incompatibilityMessages" => list(incompatibility_message()())
      }
      
  """
  @type device_pool_compatibility_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_device_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_device_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_selection_result() :: %{
        "filters" => list(device_filter()()),
        "matchedDevicesCount" => integer(),
        "maxDevices" => integer()
      }
      
  """
  @type device_selection_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_upload_result() :: %{
        "upload" => upload()
      }
      
  """
  @type create_upload_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_test_grid_url_result() :: %{
        "expires" => non_neg_integer(),
        "url" => String.t()
      }
      
  """
  @type create_test_grid_url_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_network_profile_result() :: %{
        "networkProfile" => network_profile()
      }
      
  """
  @type get_network_profile_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_remote_access_session_result() :: %{
        "remoteAccessSession" => remote_access_session()
      }
      
  """
  @type stop_remote_access_session_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_device_instance_result() :: %{
        "deviceInstance" => device_instance()
      }
      
  """
  @type update_device_instance_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_remote_access_session_result() :: %{}
      
  """
  @type delete_remote_access_session_result() :: %{}

  @typedoc """

  ## Example:
      
      stop_run_result() :: %{
        "run" => run()
      }
      
  """
  @type stop_run_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_offering_promotions_request() :: %{
        optional("nextToken") => String.t()
      }
      
  """
  @type list_offering_promotions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_project_request() :: %{
        optional("defaultJobTimeoutMinutes") => integer(),
        optional("name") => String.t(),
        optional("vpcConfig") => vpc_config(),
        required("arn") => String.t()
      }
      
  """
  @type update_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      test_grid_session() :: %{
        "arn" => String.t(),
        "billingMinutes" => float(),
        "created" => non_neg_integer(),
        "ended" => non_neg_integer(),
        "seleniumProperties" => String.t(),
        "status" => list(any())
      }
      
  """
  @type test_grid_session() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_upload_request() :: %{
        optional("contentType") => String.t(),
        optional("editContent") => boolean(),
        optional("name") => String.t(),
        required("arn") => String.t()
      }
      
  """
  @type update_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_run_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type stop_run_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_test_grid_project_result() :: %{}
      
  """
  @type delete_test_grid_project_result() :: %{}

  @typedoc """

  ## Example:
      
      incompatibility_message() :: %{
        "message" => String.t(),
        "type" => list(any())
      }
      
  """
  @type incompatibility_message() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      problem() :: %{
        "device" => device(),
        "job" => problem_detail(),
        "message" => String.t(),
        "result" => list(any()),
        "run" => problem_detail(),
        "suite" => problem_detail(),
        "test" => problem_detail()
      }
      
  """
  @type problem() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_run_result() :: %{}
      
  """
  @type delete_run_result() :: %{}

  @typedoc """

  ## Example:
      
      update_test_grid_project_result() :: %{
        "testGridProject" => test_grid_project()
      }
      
  """
  @type update_test_grid_project_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      remote_access_session() :: %{
        "arn" => String.t(),
        "billingMethod" => list(any()),
        "clientId" => String.t(),
        "created" => non_neg_integer(),
        "device" => device(),
        "deviceMinutes" => device_minutes(),
        "deviceProxy" => device_proxy(),
        "deviceUdid" => String.t(),
        "endpoint" => String.t(),
        "hostAddress" => String.t(),
        "instanceArn" => String.t(),
        "interactionMode" => list(any()),
        "message" => String.t(),
        "name" => String.t(),
        "remoteDebugEnabled" => boolean(),
        "remoteRecordAppArn" => String.t(),
        "remoteRecordEnabled" => boolean(),
        "result" => list(any()),
        "skipAppResign" => boolean(),
        "started" => non_neg_integer(),
        "status" => list(any()),
        "stopped" => non_neg_integer(),
        "vpcConfig" => vpc_config()
      }
      
  """
  @type remote_access_session() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_grid_sessions_result() :: %{
        "nextToken" => String.t(),
        "testGridSessions" => list(test_grid_session()())
      }
      
  """
  @type list_test_grid_sessions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      customer_artifact_paths() :: %{
        "androidPaths" => list(String.t()()),
        "deviceHostPaths" => list(String.t()()),
        "iosPaths" => list(String.t()())
      }
      
  """
  @type customer_artifact_paths() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_instance() :: %{
        "arn" => String.t(),
        "deviceArn" => String.t(),
        "instanceProfile" => instance_profile(),
        "labels" => list(String.t()()),
        "status" => list(any()),
        "udid" => String.t()
      }
      
  """
  @type device_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_remote_access_session_result() :: %{
        "remoteAccessSession" => remote_access_session()
      }
      
  """
  @type create_remote_access_session_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      get_device_pool_result() :: %{
        "devicePool" => device_pool()
      }
      
  """
  @type get_device_pool_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_device_pool_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_device_pool_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_network_profile_result() :: %{
        "networkProfile" => network_profile()
      }
      
  """
  @type update_network_profile_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      account_settings() :: %{
        "awsAccountNumber" => String.t(),
        "defaultJobTimeoutMinutes" => integer(),
        "maxJobTimeoutMinutes" => integer(),
        "maxSlots" => map(),
        "skipAppResign" => boolean(),
        "trialMinutes" => trial_minutes(),
        "unmeteredDevices" => map(),
        "unmeteredRemoteAccessDevices" => map()
      }
      
  """
  @type account_settings() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_device_pool_result() :: %{
        "devicePool" => device_pool()
      }
      
  """
  @type update_device_pool_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_network_profile_request() :: %{
        optional("description") => String.t(),
        optional("downlinkBandwidthBits") => float(),
        optional("downlinkDelayMs") => float(),
        optional("downlinkJitterMs") => float(),
        optional("downlinkLossPercent") => integer(),
        optional("name") => String.t(),
        optional("type") => list(any()),
        optional("uplinkBandwidthBits") => float(),
        optional("uplinkDelayMs") => float(),
        optional("uplinkJitterMs") => float(),
        optional("uplinkLossPercent") => integer(),
        required("arn") => String.t()
      }
      
  """
  @type update_network_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_upload_request() :: %{
        optional("contentType") => String.t(),
        required("name") => String.t(),
        required("projectArn") => String.t(),
        required("type") => list(any())
      }
      
  """
  @type create_upload_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      idempotency_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type idempotency_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      job() :: %{
        "arn" => String.t(),
        "counters" => counters(),
        "created" => non_neg_integer(),
        "device" => device(),
        "deviceMinutes" => device_minutes(),
        "instanceArn" => String.t(),
        "message" => String.t(),
        "name" => String.t(),
        "result" => list(any()),
        "started" => non_neg_integer(),
        "status" => list(any()),
        "stopped" => non_neg_integer(),
        "type" => list(any()),
        "videoCapture" => boolean(),
        "videoEndpoint" => String.t()
      }
      
  """
  @type job() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_artifacts_request() :: %{
        optional("nextToken") => String.t(),
        required("arn") => String.t(),
        required("type") => list(any())
      }
      
  """
  @type list_artifacts_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_network_profile_result() :: %{}
      
  """
  @type delete_network_profile_result() :: %{}

  @typedoc """

  ## Example:
      
      list_device_instances_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_device_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_job_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_project_request() :: %{
        optional("defaultJobTimeoutMinutes") => integer(),
        optional("vpcConfig") => vpc_config(),
        required("name") => String.t()
      }
      
  """
  @type create_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_vpce_configurations_result() :: %{
        "nextToken" => String.t(),
        "vpceConfigurations" => list(vpce_configuration()())
      }
      
  """
  @type list_vpce_configurations_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_suites_request() :: %{
        optional("nextToken") => String.t(),
        required("arn") => String.t()
      }
      
  """
  @type list_suites_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_projects_request() :: %{
        optional("arn") => String.t(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_projects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_account_settings_result() :: %{
        "accountSettings" => account_settings()
      }
      
  """
  @type get_account_settings_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_vpce_configurations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_vpce_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      offering() :: %{
        "description" => String.t(),
        "id" => String.t(),
        "platform" => list(any()),
        "recurringCharges" => list(recurring_charge()()),
        "type" => list(any())
      }
      
  """
  @type offering() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_minutes() :: %{
        "metered" => float(),
        "total" => float(),
        "unmetered" => float()
      }
      
  """
  @type device_minutes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      limit_exceeded_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resolution() :: %{
        "height" => integer(),
        "width" => integer()
      }
      
  """
  @type resolution() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_instance_profile_request() :: %{
        optional("description") => String.t(),
        optional("excludeAppPackagesFromCleanup") => list(String.t()()),
        optional("name") => String.t(),
        optional("packageCleanup") => boolean(),
        optional("rebootAfterUse") => boolean(),
        required("arn") => String.t()
      }
      
  """
  @type update_instance_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_test_grid_url_request() :: %{
        required("expiresInSeconds") => integer(),
        required("projectArn") => String.t()
      }
      
  """
  @type create_test_grid_url_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_test_result() :: %{
        "test" => test()
      }
      
  """
  @type get_test_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_device_pools_result() :: %{
        "devicePools" => list(device_pool()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_device_pools_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_suites_result() :: %{
        "nextToken" => String.t(),
        "suites" => list(suite()())
      }
      
  """
  @type list_suites_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_test_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_test_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_test_grid_project_request() :: %{
        optional("description") => String.t(),
        optional("vpcConfig") => test_grid_vpc_config(),
        required("name") => String.t()
      }
      
  """
  @type create_test_grid_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_remote_access_session_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type stop_remote_access_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      artifact() :: %{
        "arn" => String.t(),
        "extension" => String.t(),
        "name" => String.t(),
        "type" => list(any()),
        "url" => String.t()
      }
      
  """
  @type artifact() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_artifacts_result() :: %{
        "artifacts" => list(artifact()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_artifacts_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device() :: %{
        "arn" => String.t(),
        "availability" => list(any()),
        "carrier" => String.t(),
        "cpu" => c_p_u(),
        "fleetName" => String.t(),
        "fleetType" => String.t(),
        "formFactor" => list(any()),
        "heapSize" => float(),
        "image" => String.t(),
        "instances" => list(device_instance()()),
        "manufacturer" => String.t(),
        "memory" => float(),
        "model" => String.t(),
        "modelId" => String.t(),
        "name" => String.t(),
        "os" => String.t(),
        "platform" => list(any()),
        "radio" => String.t(),
        "remoteAccessEnabled" => boolean(),
        "remoteDebugEnabled" => boolean(),
        "resolution" => resolution()
      }
      
  """
  @type device() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_projects_result() :: %{
        "nextToken" => String.t(),
        "projects" => list(project()())
      }
      
  """
  @type list_projects_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_project_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type delete_project_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_remote_access_sessions_result() :: %{
        "nextToken" => String.t(),
        "remoteAccessSessions" => list(remote_access_session()())
      }
      
  """
  @type list_remote_access_sessions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_test_grid_project_result() :: %{
        "testGridProject" => test_grid_project()
      }
      
  """
  @type get_test_grid_project_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      offering_promotion() :: %{
        "description" => String.t(),
        "id" => String.t()
      }
      
  """
  @type offering_promotion() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_offerings_result() :: %{
        "nextToken" => String.t(),
        "offerings" => list(offering()())
      }
      
  """
  @type list_offerings_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_grid_session_actions_result() :: %{
        "actions" => list(test_grid_session_action()()),
        "nextToken" => String.t()
      }
      
  """
  @type list_test_grid_session_actions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_project_result() :: %{
        "project" => project()
      }
      
  """
  @type create_project_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_proxy() :: %{
        "host" => String.t(),
        "port" => integer()
      }
      
  """
  @type device_proxy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_job_result() :: %{
        "job" => job()
      }
      
  """
  @type stop_job_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_runs_request() :: %{
        optional("nextToken") => String.t(),
        required("arn") => String.t()
      }
      
  """
  @type list_runs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_vpce_configuration_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_vpce_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      device_filter() :: %{
        "attribute" => list(any()),
        "operator" => list(any()),
        "values" => list(String.t()())
      }
      
  """
  @type device_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_grid_sessions_request() :: %{
        optional("creationTimeAfter") => non_neg_integer(),
        optional("creationTimeBefore") => non_neg_integer(),
        optional("endTimeAfter") => non_neg_integer(),
        optional("endTimeBefore") => non_neg_integer(),
        optional("maxResult") => integer(),
        optional("nextToken") => String.t(),
        optional("status") => list(any()),
        required("projectArn") => String.t()
      }
      
  """
  @type list_test_grid_sessions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_uploads_result() :: %{
        "nextToken" => String.t(),
        "uploads" => list(upload()())
      }
      
  """
  @type list_uploads_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_tags_exception() :: %{
        "message" => String.t(),
        "resourceName" => String.t()
      }
      
  """
  @type too_many_tags_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_test_grid_session_result() :: %{
        "testGridSession" => test_grid_session()
      }
      
  """
  @type get_test_grid_session_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_device_instance_request() :: %{
        required("arn") => String.t()
      }
      
  """
  @type get_device_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      purchase_offering_request() :: %{
        optional("offeringPromotionId") => String.t(),
        required("offeringId") => String.t(),
        required("quantity") => integer()
      }
      
  """
  @type purchase_offering_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      run() :: %{
        "resultCode" => list(any()),
        "testSpecArn" => String.t(),
        "seed" => integer(),
        "message" => String.t(),
        "billingMethod" => list(any()),
        "name" => String.t(),
        "eventCount" => integer(),
        "networkProfile" => network_profile(),
        "jobTimeoutMinutes" => integer(),
        "deviceSelectionResult" => device_selection_result(),
        "started" => non_neg_integer(),
        "location" => location(),
        "webUrl" => String.t(),
        "radios" => radios(),
        "locale" => String.t(),
        "platform" => list(any()),
        "type" => list(any()),
        "customerArtifactPaths" => customer_artifact_paths(),
        "deviceProxy" => device_proxy(),
        "deviceMinutes" => device_minutes(),
        "devicePoolArn" => String.t(),
        "arn" => String.t(),
        "parsingResultUrl" => String.t(),
        "counters" => counters(),
        "totalJobs" => integer(),
        "appUpload" => String.t(),
        "created" => non_neg_integer(),
        "result" => list(any()),
        "status" => list(any()),
        "vpcConfig" => vpc_config(),
        "skipAppResign" => boolean(),
        "stopped" => non_neg_integer(),
        "completedJobs" => integer()
      }
      
  """
  @type run() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      argument_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type argument_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_test_grid_projects_request() :: %{
        optional("maxResult") => integer(),
        optional("nextToken") => String.t()
      }
      
  """
  @type list_test_grid_projects_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_project_result() :: %{
        "project" => project()
      }
      
  """
  @type update_project_result() :: %{String.t() => any()}

  @type create_device_pool_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type create_instance_profile_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type create_network_profile_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type create_project_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()
          | tag_operation_exception()

  @type create_remote_access_session_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type create_test_grid_project_errors() ::
          argument_exception() | limit_exceeded_exception() | internal_service_exception()

  @type create_test_grid_url_errors() ::
          argument_exception() | not_found_exception() | internal_service_exception()

  @type create_upload_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type create_vpce_configuration_errors() ::
          argument_exception() | limit_exceeded_exception() | service_account_exception()

  @type delete_device_pool_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type delete_instance_profile_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type delete_network_profile_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type delete_project_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type delete_remote_access_session_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type delete_run_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type delete_test_grid_project_errors() ::
          argument_exception()
          | not_found_exception()
          | cannot_delete_exception()
          | internal_service_exception()

  @type delete_upload_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type delete_vpce_configuration_errors() ::
          argument_exception()
          | service_account_exception()
          | not_found_exception()
          | invalid_operation_exception()

  @type get_account_settings_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_device_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_device_instance_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_device_pool_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_device_pool_compatibility_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_instance_profile_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_job_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_network_profile_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_offering_status_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()
          | not_eligible_exception()

  @type get_project_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_remote_access_session_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_run_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_suite_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_test_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_test_grid_project_errors() ::
          argument_exception() | not_found_exception() | internal_service_exception()

  @type get_test_grid_session_errors() ::
          argument_exception() | not_found_exception() | internal_service_exception()

  @type get_upload_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type get_vpce_configuration_errors() ::
          argument_exception() | service_account_exception() | not_found_exception()

  @type install_to_remote_access_session_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_artifacts_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_device_instances_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_device_pools_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_devices_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_instance_profiles_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_jobs_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_network_profiles_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_offering_promotions_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()
          | not_eligible_exception()

  @type list_offering_transactions_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()
          | not_eligible_exception()

  @type list_offerings_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()
          | not_eligible_exception()

  @type list_projects_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_remote_access_sessions_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_runs_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_samples_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_suites_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_tags_for_resource_errors() ::
          argument_exception() | not_found_exception() | tag_operation_exception()

  @type list_test_grid_projects_errors() :: argument_exception() | internal_service_exception()

  @type list_test_grid_session_actions_errors() ::
          argument_exception() | not_found_exception() | internal_service_exception()

  @type list_test_grid_session_artifacts_errors() ::
          argument_exception() | not_found_exception() | internal_service_exception()

  @type list_test_grid_sessions_errors() ::
          argument_exception() | not_found_exception() | internal_service_exception()

  @type list_tests_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_unique_problems_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_uploads_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type list_vpce_configurations_errors() :: argument_exception() | service_account_exception()

  @type purchase_offering_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()
          | not_eligible_exception()

  @type renew_offering_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()
          | not_eligible_exception()

  @type schedule_run_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | idempotency_exception()
          | service_account_exception()
          | not_found_exception()

  @type stop_job_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type stop_remote_access_session_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type stop_run_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type tag_resource_errors() ::
          argument_exception()
          | too_many_tags_exception()
          | not_found_exception()
          | tag_policy_exception()
          | tag_operation_exception()

  @type untag_resource_errors() ::
          argument_exception() | not_found_exception() | tag_operation_exception()

  @type update_device_instance_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type update_device_pool_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type update_instance_profile_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type update_network_profile_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type update_project_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type update_test_grid_project_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | not_found_exception()
          | internal_service_exception()

  @type update_upload_errors() ::
          argument_exception()
          | limit_exceeded_exception()
          | service_account_exception()
          | not_found_exception()

  @type update_vpce_configuration_errors() ::
          argument_exception()
          | service_account_exception()
          | not_found_exception()
          | invalid_operation_exception()

  def metadata do
    %{
      api_version: "2015-06-23",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "devicefarm",
      global?: false,
      hostname: nil,
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
  @spec create_device_pool(map(), create_device_pool_request(), list()) ::
          {:ok, create_device_pool_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_device_pool_errors()}
  def create_device_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDevicePool", input, options)
  end

  @doc """
  Creates a profile that can be applied to one or more private fleet device
  instances.
  """
  @spec create_instance_profile(map(), create_instance_profile_request(), list()) ::
          {:ok, create_instance_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_instance_profile_errors()}
  def create_instance_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateInstanceProfile", input, options)
  end

  @doc """
  Creates a network profile.
  """
  @spec create_network_profile(map(), create_network_profile_request(), list()) ::
          {:ok, create_network_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_network_profile_errors()}
  def create_network_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateNetworkProfile", input, options)
  end

  @doc """
  Creates a project.
  """
  @spec create_project(map(), create_project_request(), list()) ::
          {:ok, create_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_project_errors()}
  def create_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateProject", input, options)
  end

  @doc """
  Specifies and starts a remote access session.
  """
  @spec create_remote_access_session(map(), create_remote_access_session_request(), list()) ::
          {:ok, create_remote_access_session_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_remote_access_session_errors()}
  def create_remote_access_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRemoteAccessSession", input, options)
  end

  @doc """
  Creates a Selenium testing project.

  Projects are used to track `TestGridSession`
  instances.
  """
  @spec create_test_grid_project(map(), create_test_grid_project_request(), list()) ::
          {:ok, create_test_grid_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_test_grid_project_errors()}
  def create_test_grid_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTestGridProject", input, options)
  end

  @doc """
  Creates a signed, short-term URL that can be passed to a Selenium
  `RemoteWebDriver`
  constructor.
  """
  @spec create_test_grid_url(map(), create_test_grid_url_request(), list()) ::
          {:ok, create_test_grid_url_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_test_grid_url_errors()}
  def create_test_grid_url(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTestGridUrl", input, options)
  end

  @doc """
  Uploads an app or test scripts.
  """
  @spec create_upload(map(), create_upload_request(), list()) ::
          {:ok, create_upload_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_upload_errors()}
  def create_upload(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateUpload", input, options)
  end

  @doc """
  Creates a configuration record in Device Farm for your Amazon Virtual Private
  Cloud
  (VPC) endpoint.
  """
  @spec create_vpce_configuration(map(), create_vpce_configuration_request(), list()) ::
          {:ok, create_vpce_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_vpce_configuration_errors()}
  def create_vpce_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateVPCEConfiguration", input, options)
  end

  @doc """
  Deletes a device pool given the pool ARN.

  Does not allow deletion of curated pools
  owned by the system.
  """
  @spec delete_device_pool(map(), delete_device_pool_request(), list()) ::
          {:ok, delete_device_pool_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_device_pool_errors()}
  def delete_device_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDevicePool", input, options)
  end

  @doc """
  Deletes a profile that can be applied to one or more private device instances.
  """
  @spec delete_instance_profile(map(), delete_instance_profile_request(), list()) ::
          {:ok, delete_instance_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_instance_profile_errors()}
  def delete_instance_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteInstanceProfile", input, options)
  end

  @doc """
  Deletes a network profile.
  """
  @spec delete_network_profile(map(), delete_network_profile_request(), list()) ::
          {:ok, delete_network_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_network_profile_errors()}
  def delete_network_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteNetworkProfile", input, options)
  end

  @doc """
  Deletes an AWS Device Farm project, given the project ARN.

  Deleting this resource does not stop an in-progress run.
  """
  @spec delete_project(map(), delete_project_request(), list()) ::
          {:ok, delete_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_project_errors()}
  def delete_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteProject", input, options)
  end

  @doc """
  Deletes a completed remote access session and its results.
  """
  @spec delete_remote_access_session(map(), delete_remote_access_session_request(), list()) ::
          {:ok, delete_remote_access_session_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_remote_access_session_errors()}
  def delete_remote_access_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRemoteAccessSession", input, options)
  end

  @doc """
  Deletes the run, given the run ARN.

  Deleting this resource does not stop an in-progress run.
  """
  @spec delete_run(map(), delete_run_request(), list()) ::
          {:ok, delete_run_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_run_errors()}
  def delete_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRun", input, options)
  end

  @doc """
  Deletes a Selenium testing project and all content generated under it.

  You cannot undo this operation.

  You cannot delete a project if it has active sessions.
  """
  @spec delete_test_grid_project(map(), delete_test_grid_project_request(), list()) ::
          {:ok, delete_test_grid_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_test_grid_project_errors()}
  def delete_test_grid_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTestGridProject", input, options)
  end

  @doc """
  Deletes an upload given the upload ARN.
  """
  @spec delete_upload(map(), delete_upload_request(), list()) ::
          {:ok, delete_upload_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_upload_errors()}
  def delete_upload(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteUpload", input, options)
  end

  @doc """
  Deletes a configuration for your Amazon Virtual Private Cloud (VPC) endpoint.
  """
  @spec delete_vpce_configuration(map(), delete_vpce_configuration_request(), list()) ::
          {:ok, delete_vpce_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_vpce_configuration_errors()}
  def delete_vpce_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteVPCEConfiguration", input, options)
  end

  @doc """
  Returns the number of unmetered iOS or unmetered Android devices that have been
  purchased by the
  account.
  """
  @spec get_account_settings(map(), get_account_settings_request(), list()) ::
          {:ok, get_account_settings_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_account_settings_errors()}
  def get_account_settings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAccountSettings", input, options)
  end

  @doc """
  Gets information about a unique device type.
  """
  @spec get_device(map(), get_device_request(), list()) ::
          {:ok, get_device_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_device_errors()}
  def get_device(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDevice", input, options)
  end

  @doc """
  Returns information about a device instance that belongs to a private device
  fleet.
  """
  @spec get_device_instance(map(), get_device_instance_request(), list()) ::
          {:ok, get_device_instance_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_device_instance_errors()}
  def get_device_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDeviceInstance", input, options)
  end

  @doc """
  Gets information about a device pool.
  """
  @spec get_device_pool(map(), get_device_pool_request(), list()) ::
          {:ok, get_device_pool_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_device_pool_errors()}
  def get_device_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDevicePool", input, options)
  end

  @doc """
  Gets information about compatibility with a device pool.
  """
  @spec get_device_pool_compatibility(map(), get_device_pool_compatibility_request(), list()) ::
          {:ok, get_device_pool_compatibility_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_device_pool_compatibility_errors()}
  def get_device_pool_compatibility(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDevicePoolCompatibility", input, options)
  end

  @doc """
  Returns information about the specified instance profile.
  """
  @spec get_instance_profile(map(), get_instance_profile_request(), list()) ::
          {:ok, get_instance_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_instance_profile_errors()}
  def get_instance_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetInstanceProfile", input, options)
  end

  @doc """
  Gets information about a job.
  """
  @spec get_job(map(), get_job_request(), list()) ::
          {:ok, get_job_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_job_errors()}
  def get_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetJob", input, options)
  end

  @doc """
  Returns information about a network profile.
  """
  @spec get_network_profile(map(), get_network_profile_request(), list()) ::
          {:ok, get_network_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_network_profile_errors()}
  def get_network_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetNetworkProfile", input, options)
  end

  @doc """
  Gets the current status and future status of all offerings purchased by an AWS
  account.

  The response
  indicates how many offerings are currently available and the offerings that will
  be available in the next
  period. The API returns a `NotEligible` error if the user is not permitted to
  invoke the
  operation. If you must be able to invoke this operation, contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com).
  """
  @spec get_offering_status(map(), get_offering_status_request(), list()) ::
          {:ok, get_offering_status_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_offering_status_errors()}
  def get_offering_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetOfferingStatus", input, options)
  end

  @doc """
  Gets information about a project.
  """
  @spec get_project(map(), get_project_request(), list()) ::
          {:ok, get_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_project_errors()}
  def get_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetProject", input, options)
  end

  @doc """
  Returns a link to a currently running remote access session.
  """
  @spec get_remote_access_session(map(), get_remote_access_session_request(), list()) ::
          {:ok, get_remote_access_session_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_remote_access_session_errors()}
  def get_remote_access_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRemoteAccessSession", input, options)
  end

  @doc """
  Gets information about a run.
  """
  @spec get_run(map(), get_run_request(), list()) ::
          {:ok, get_run_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_run_errors()}
  def get_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRun", input, options)
  end

  @doc """
  Gets information about a suite.
  """
  @spec get_suite(map(), get_suite_request(), list()) ::
          {:ok, get_suite_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_suite_errors()}
  def get_suite(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSuite", input, options)
  end

  @doc """
  Gets information about a test.
  """
  @spec get_test(map(), get_test_request(), list()) ::
          {:ok, get_test_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_test_errors()}
  def get_test(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTest", input, options)
  end

  @doc """
  Retrieves information about a Selenium testing project.
  """
  @spec get_test_grid_project(map(), get_test_grid_project_request(), list()) ::
          {:ok, get_test_grid_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_test_grid_project_errors()}
  def get_test_grid_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTestGridProject", input, options)
  end

  @doc """
  A session is an instance of a browser created through a `RemoteWebDriver` with
  the URL from `CreateTestGridUrlResult$url`.

  You can use the following to look up sessions:

    *
  The session ARN (`GetTestGridSessionRequest$sessionArn`).

    *
  The project ARN and a session ID (`GetTestGridSessionRequest$projectArn` and
  `GetTestGridSessionRequest$sessionId`).
  """
  @spec get_test_grid_session(map(), get_test_grid_session_request(), list()) ::
          {:ok, get_test_grid_session_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_test_grid_session_errors()}
  def get_test_grid_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTestGridSession", input, options)
  end

  @doc """
  Gets information about an upload.
  """
  @spec get_upload(map(), get_upload_request(), list()) ::
          {:ok, get_upload_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_upload_errors()}
  def get_upload(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetUpload", input, options)
  end

  @doc """
  Returns information about the configuration settings for your Amazon Virtual
  Private
  Cloud (VPC) endpoint.
  """
  @spec get_vpce_configuration(map(), get_vpce_configuration_request(), list()) ::
          {:ok, get_vpce_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_vpce_configuration_errors()}
  def get_vpce_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetVPCEConfiguration", input, options)
  end

  @doc """
  Installs an application to the device in a remote access session.

  For Android
  applications, the file must be in .apk format. For iOS applications, the file
  must be in
  .ipa format.
  """
  @spec install_to_remote_access_session(
          map(),
          install_to_remote_access_session_request(),
          list()
        ) ::
          {:ok, install_to_remote_access_session_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, install_to_remote_access_session_errors()}
  def install_to_remote_access_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "InstallToRemoteAccessSession", input, options)
  end

  @doc """
  Gets information about artifacts.
  """
  @spec list_artifacts(map(), list_artifacts_request(), list()) ::
          {:ok, list_artifacts_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_artifacts_errors()}
  def list_artifacts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListArtifacts", input, options)
  end

  @doc """
  Returns information about the private device instances associated with one or
  more AWS
  accounts.
  """
  @spec list_device_instances(map(), list_device_instances_request(), list()) ::
          {:ok, list_device_instances_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_device_instances_errors()}
  def list_device_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDeviceInstances", input, options)
  end

  @doc """
  Gets information about device pools.
  """
  @spec list_device_pools(map(), list_device_pools_request(), list()) ::
          {:ok, list_device_pools_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_device_pools_errors()}
  def list_device_pools(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDevicePools", input, options)
  end

  @doc """
  Gets information about unique device types.
  """
  @spec list_devices(map(), list_devices_request(), list()) ::
          {:ok, list_devices_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_devices_errors()}
  def list_devices(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDevices", input, options)
  end

  @doc """
  Returns information about all the instance profiles in an AWS account.
  """
  @spec list_instance_profiles(map(), list_instance_profiles_request(), list()) ::
          {:ok, list_instance_profiles_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_instance_profiles_errors()}
  def list_instance_profiles(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListInstanceProfiles", input, options)
  end

  @doc """
  Gets information about jobs for a given test run.
  """
  @spec list_jobs(map(), list_jobs_request(), list()) ::
          {:ok, list_jobs_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_jobs_errors()}
  def list_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListJobs", input, options)
  end

  @doc """
  Returns the list of available network profiles.
  """
  @spec list_network_profiles(map(), list_network_profiles_request(), list()) ::
          {:ok, list_network_profiles_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_network_profiles_errors()}
  def list_network_profiles(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListNetworkProfiles", input, options)
  end

  @doc """
  Returns a list of offering promotions.

  Each offering promotion record contains the ID and description
  of the promotion. The API returns a `NotEligible` error if the caller is not
  permitted to invoke
  the operation. Contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com) if
  you must be able to invoke this operation.
  """
  @spec list_offering_promotions(map(), list_offering_promotions_request(), list()) ::
          {:ok, list_offering_promotions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_offering_promotions_errors()}
  def list_offering_promotions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListOfferingPromotions", input, options)
  end

  @doc """
  Returns a list of all historical purchases, renewals, and system renewal
  transactions for an AWS
  account.

  The list is paginated and ordered by a descending timestamp (most recent
  transactions are first).
  The API returns a `NotEligible` error if the user is not permitted to invoke the
  operation. If
  you must be able to invoke this operation, contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com).
  """
  @spec list_offering_transactions(map(), list_offering_transactions_request(), list()) ::
          {:ok, list_offering_transactions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_offering_transactions_errors()}
  def list_offering_transactions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListOfferingTransactions", input, options)
  end

  @doc """
  Returns a list of products or offerings that the user can manage through the
  API.

  Each offering record
  indicates the recurring price per unit and the frequency for that offering. The
  API returns a
  `NotEligible` error if the user is not permitted to invoke the operation. If you
  must be
  able to invoke this operation, contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com).
  """
  @spec list_offerings(map(), list_offerings_request(), list()) ::
          {:ok, list_offerings_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_offerings_errors()}
  def list_offerings(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListOfferings", input, options)
  end

  @doc """
  Gets information about projects.
  """
  @spec list_projects(map(), list_projects_request(), list()) ::
          {:ok, list_projects_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_projects_errors()}
  def list_projects(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListProjects", input, options)
  end

  @doc """
  Returns a list of all currently running remote access sessions.
  """
  @spec list_remote_access_sessions(map(), list_remote_access_sessions_request(), list()) ::
          {:ok, list_remote_access_sessions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_remote_access_sessions_errors()}
  def list_remote_access_sessions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRemoteAccessSessions", input, options)
  end

  @doc """
  Gets information about runs, given an AWS Device Farm project ARN.
  """
  @spec list_runs(map(), list_runs_request(), list()) ::
          {:ok, list_runs_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_runs_errors()}
  def list_runs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRuns", input, options)
  end

  @doc """
  Gets information about samples, given an AWS Device Farm job ARN.
  """
  @spec list_samples(map(), list_samples_request(), list()) ::
          {:ok, list_samples_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_samples_errors()}
  def list_samples(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSamples", input, options)
  end

  @doc """
  Gets information about test suites for a given job.
  """
  @spec list_suites(map(), list_suites_request(), list()) ::
          {:ok, list_suites_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_suites_errors()}
  def list_suites(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSuites", input, options)
  end

  @doc """
  List the tags for an AWS Device Farm resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Gets a list of all Selenium testing projects in your account.
  """
  @spec list_test_grid_projects(map(), list_test_grid_projects_request(), list()) ::
          {:ok, list_test_grid_projects_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_test_grid_projects_errors()}
  def list_test_grid_projects(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTestGridProjects", input, options)
  end

  @doc """
  Returns a list of the actions taken in a `TestGridSession`.
  """
  @spec list_test_grid_session_actions(map(), list_test_grid_session_actions_request(), list()) ::
          {:ok, list_test_grid_session_actions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_test_grid_session_actions_errors()}
  def list_test_grid_session_actions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTestGridSessionActions", input, options)
  end

  @doc """
  Retrieves a list of artifacts created during the session.
  """
  @spec list_test_grid_session_artifacts(
          map(),
          list_test_grid_session_artifacts_request(),
          list()
        ) ::
          {:ok, list_test_grid_session_artifacts_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_test_grid_session_artifacts_errors()}
  def list_test_grid_session_artifacts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTestGridSessionArtifacts", input, options)
  end

  @doc """
  Retrieves a list of sessions for a `TestGridProject`.
  """
  @spec list_test_grid_sessions(map(), list_test_grid_sessions_request(), list()) ::
          {:ok, list_test_grid_sessions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_test_grid_sessions_errors()}
  def list_test_grid_sessions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTestGridSessions", input, options)
  end

  @doc """
  Gets information about tests in a given test suite.
  """
  @spec list_tests(map(), list_tests_request(), list()) ::
          {:ok, list_tests_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tests_errors()}
  def list_tests(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTests", input, options)
  end

  @doc """
  Gets information about unique problems, such as exceptions or crashes.

  Unique problems are defined as a single instance of an error across a run, job,
  or suite. For example,
  if a call in your application consistently raises an exception (

  ```
  OutOfBoundsException in
  MyActivity.java:386
  ```

  ), `ListUniqueProblems` returns a single entry instead of many
  individual entries for that exception.
  """
  @spec list_unique_problems(map(), list_unique_problems_request(), list()) ::
          {:ok, list_unique_problems_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_unique_problems_errors()}
  def list_unique_problems(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListUniqueProblems", input, options)
  end

  @doc """
  Gets information about uploads, given an AWS Device Farm project ARN.
  """
  @spec list_uploads(map(), list_uploads_request(), list()) ::
          {:ok, list_uploads_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_uploads_errors()}
  def list_uploads(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListUploads", input, options)
  end

  @doc """
  Returns information about all Amazon Virtual Private Cloud (VPC) endpoint
  configurations in the AWS account.
  """
  @spec list_vpce_configurations(map(), list_vpce_configurations_request(), list()) ::
          {:ok, list_vpce_configurations_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_vpce_configurations_errors()}
  def list_vpce_configurations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListVPCEConfigurations", input, options)
  end

  @doc """
  Immediately purchases offerings for an AWS account.

  Offerings renew with the latest total purchased
  quantity for an offering, unless the renewal was overridden. The API returns a
  `NotEligible`
  error if the user is not permitted to invoke the operation. If you must be able
  to invoke this operation,
  contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com).
  """
  @spec purchase_offering(map(), purchase_offering_request(), list()) ::
          {:ok, purchase_offering_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, purchase_offering_errors()}
  def purchase_offering(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PurchaseOffering", input, options)
  end

  @doc """
  Explicitly sets the quantity of devices to renew for an offering, starting from
  the
  `effectiveDate` of the next period.

  The API returns a `NotEligible` error if the
  user is not permitted to invoke the operation. If you must be able to invoke
  this operation, contact
  [aws-devicefarm-support@amazon.com](mailto:aws-devicefarm-support@amazon.com).
  """
  @spec renew_offering(map(), renew_offering_request(), list()) ::
          {:ok, renew_offering_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, renew_offering_errors()}
  def renew_offering(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RenewOffering", input, options)
  end

  @doc """
  Schedules a run.
  """
  @spec schedule_run(map(), schedule_run_request(), list()) ::
          {:ok, schedule_run_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, schedule_run_errors()}
  def schedule_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ScheduleRun", input, options)
  end

  @doc """
  Initiates a stop request for the current job.

  AWS Device Farm immediately stops the job on the device
  where tests have not started. You are not billed for this device. On the device
  where tests have started,
  setup suite and teardown suite tests run to completion on the device. You are
  billed for setup, teardown,
  and any tests that were in progress or already completed.
  """
  @spec stop_job(map(), stop_job_request(), list()) ::
          {:ok, stop_job_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_job_errors()}
  def stop_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopJob", input, options)
  end

  @doc """
  Ends a specified remote access session.
  """
  @spec stop_remote_access_session(map(), stop_remote_access_session_request(), list()) ::
          {:ok, stop_remote_access_session_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_remote_access_session_errors()}
  def stop_remote_access_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopRemoteAccessSession", input, options)
  end

  @doc """
  Initiates a stop request for the current test run.

  AWS Device Farm immediately stops the run on devices
  where tests have not started. You are not billed for these devices. On devices
  where tests have started
  executing, setup suite and teardown suite tests run to completion on those
  devices. You are billed for
  setup, teardown, and any tests that were in progress or already completed.
  """
  @spec stop_run(map(), stop_run_request(), list()) ::
          {:ok, stop_run_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_run_errors()}
  def stop_run(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopRun", input, options)
  end

  @doc """
  Associates the specified tags to a resource with the specified `resourceArn`.

  If existing tags
  on a resource are not specified in the request parameters, they are not changed.
  When a resource is deleted,
  the tags associated with that resource are also deleted.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Deletes the specified tags from a resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates information about a private device instance.
  """
  @spec update_device_instance(map(), update_device_instance_request(), list()) ::
          {:ok, update_device_instance_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_device_instance_errors()}
  def update_device_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDeviceInstance", input, options)
  end

  @doc """
  Modifies the name, description, and rules in a device pool given the attributes
  and
  the pool ARN.

  Rule updates are all-or-nothing, meaning they can only be updated as a
  whole (or not at all).
  """
  @spec update_device_pool(map(), update_device_pool_request(), list()) ::
          {:ok, update_device_pool_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_device_pool_errors()}
  def update_device_pool(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDevicePool", input, options)
  end

  @doc """
  Updates information about an existing private device instance profile.
  """
  @spec update_instance_profile(map(), update_instance_profile_request(), list()) ::
          {:ok, update_instance_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_instance_profile_errors()}
  def update_instance_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateInstanceProfile", input, options)
  end

  @doc """
  Updates the network profile.
  """
  @spec update_network_profile(map(), update_network_profile_request(), list()) ::
          {:ok, update_network_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_network_profile_errors()}
  def update_network_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateNetworkProfile", input, options)
  end

  @doc """
  Modifies the specified project name, given the project ARN and a new
  name.
  """
  @spec update_project(map(), update_project_request(), list()) ::
          {:ok, update_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_project_errors()}
  def update_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateProject", input, options)
  end

  @doc """
  Change details of a project.
  """
  @spec update_test_grid_project(map(), update_test_grid_project_request(), list()) ::
          {:ok, update_test_grid_project_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_test_grid_project_errors()}
  def update_test_grid_project(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTestGridProject", input, options)
  end

  @doc """
  Updates an uploaded test spec.
  """
  @spec update_upload(map(), update_upload_request(), list()) ::
          {:ok, update_upload_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_upload_errors()}
  def update_upload(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateUpload", input, options)
  end

  @doc """
  Updates information about an Amazon Virtual Private Cloud (VPC) endpoint
  configuration.
  """
  @spec update_vpce_configuration(map(), update_vpce_configuration_request(), list()) ::
          {:ok, update_vpce_configuration_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_vpce_configuration_errors()}
  def update_vpce_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateVPCEConfiguration", input, options)
  end
end
