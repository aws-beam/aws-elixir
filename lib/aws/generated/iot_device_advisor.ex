# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IotDeviceAdvisor do
  @moduledoc """
  Amazon Web Services IoT Core Device Advisor is a cloud-based, fully managed test
  capability for validating IoT
  devices during device software development.

  Device Advisor provides pre-built tests that you
  can use to validate IoT devices for reliable and secure connectivity with Amazon
  Web Services IoT Core
  before deploying devices to production. By using Device Advisor, you can confirm
  that your
  devices can connect to Amazon Web Services IoT Core, follow security best
  practices and, if applicable,
  receive software updates from IoT Device Management. You can also download
  signed
  qualification reports to submit to the Amazon Web Services Partner Network to
  get your device
  qualified for the Amazon Web Services Partner Device Catalog without the need to
  send your device in
  and wait for it to be tested.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      list_suite_definitions_response() :: %{
        "nextToken" => String.t() | Atom.t(),
        "suiteDefinitionInformationList" => list(suite_definition_information())
      }

  """
  @type list_suite_definitions_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_suite_run_request() :: %{}

  """
  @type get_suite_run_request() :: %{}

  @typedoc """

  ## Example:

      start_suite_run_response() :: %{
        "createdAt" => non_neg_integer(),
        "endpoint" => String.t() | Atom.t(),
        "suiteRunArn" => String.t() | Atom.t(),
        "suiteRunId" => String.t() | Atom.t()
      }

  """
  @type start_suite_run_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      suite_run_configuration() :: %{
        "parallelRun" => boolean(),
        "primaryDevice" => device_under_test(),
        "selectedTestList" => list(String.t() | Atom.t())
      }

  """
  @type suite_run_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      suite_definition_information() :: %{
        "createdAt" => non_neg_integer(),
        "defaultDevices" => list(device_under_test()),
        "intendedForQualification" => boolean(),
        "isLongDurationTest" => boolean(),
        "protocol" => list(any()),
        "suiteDefinitionId" => String.t() | Atom.t(),
        "suiteDefinitionName" => String.t() | Atom.t()
      }

  """
  @type suite_definition_information() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_suite_definition_response() :: %{
        "createdAt" => non_neg_integer(),
        "suiteDefinitionArn" => String.t() | Atom.t(),
        "suiteDefinitionId" => String.t() | Atom.t(),
        "suiteDefinitionName" => String.t() | Atom.t()
      }

  """
  @type create_suite_definition_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      test_result() :: %{
        "groups" => list(group_result())
      }

  """
  @type test_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      suite_run_information() :: %{
        "createdAt" => non_neg_integer(),
        "endAt" => non_neg_integer(),
        "failed" => integer(),
        "passed" => integer(),
        "startedAt" => non_neg_integer(),
        "status" => list(any()),
        "suiteDefinitionId" => String.t() | Atom.t(),
        "suiteDefinitionName" => String.t() | Atom.t(),
        "suiteDefinitionVersion" => String.t() | Atom.t(),
        "suiteRunId" => String.t() | Atom.t()
      }

  """
  @type suite_run_information() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      device_under_test() :: %{
        "certificateArn" => String.t() | Atom.t(),
        "deviceRoleArn" => String.t() | Atom.t(),
        "thingArn" => String.t() | Atom.t()
      }

  """
  @type device_under_test() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t() | Atom.t())
      }

  """
  @type untag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      stop_suite_run_response() :: %{}

  """
  @type stop_suite_run_response() :: %{}

  @typedoc """

  ## Example:

      get_suite_run_report_response() :: %{
        "qualificationReportDownloadUrl" => String.t() | Atom.t()
      }

  """
  @type get_suite_run_report_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_suite_definitions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t()
      }

  """
  @type list_suite_definitions_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_suite_run_report_request() :: %{}

  """
  @type get_suite_run_report_request() :: %{}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_endpoint_response() :: %{
        "endpoint" => String.t() | Atom.t()
      }

  """
  @type get_endpoint_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_suite_run_response() :: %{
        "endTime" => non_neg_integer(),
        "errorReason" => String.t() | Atom.t(),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "suiteDefinitionId" => String.t() | Atom.t(),
        "suiteDefinitionVersion" => String.t() | Atom.t(),
        "suiteRunArn" => String.t() | Atom.t(),
        "suiteRunConfiguration" => suite_run_configuration(),
        "suiteRunId" => String.t() | Atom.t(),
        "tags" => map(),
        "testResult" => test_result()
      }

  """
  @type get_suite_run_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_suite_definition_request() :: %{
        optional("clientToken") => String.t() | Atom.t(),
        optional("tags") => map(),
        required("suiteDefinitionConfiguration") => suite_definition_configuration()
      }

  """
  @type create_suite_definition_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      stop_suite_run_request() :: %{}

  """
  @type stop_suite_run_request() :: %{}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_suite_definition_request() :: %{
        optional("suiteDefinitionVersion") => String.t() | Atom.t()
      }

  """
  @type get_suite_definition_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_suite_runs_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t() | Atom.t(),
        optional("suiteDefinitionId") => String.t() | Atom.t(),
        optional("suiteDefinitionVersion") => String.t() | Atom.t()
      }

  """
  @type list_suite_runs_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_suite_definition_request() :: %{}

  """
  @type delete_suite_definition_request() :: %{}

  @typedoc """

  ## Example:

      suite_definition_configuration() :: %{
        "devicePermissionRoleArn" => String.t() | Atom.t(),
        "devices" => list(device_under_test()),
        "intendedForQualification" => boolean(),
        "isLongDurationTest" => boolean(),
        "protocol" => list(any()),
        "rootGroup" => String.t() | Atom.t(),
        "suiteDefinitionName" => String.t() | Atom.t()
      }

  """
  @type suite_definition_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      test_case_scenario() :: %{
        "failure" => String.t() | Atom.t(),
        "status" => list(any()),
        "systemMessage" => String.t() | Atom.t(),
        "testCaseScenarioId" => String.t() | Atom.t(),
        "testCaseScenarioType" => list(any())
      }

  """
  @type test_case_scenario() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      delete_suite_definition_response() :: %{}

  """
  @type delete_suite_definition_response() :: %{}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t() | Atom.t()
      }

  """
  @type validation_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      update_suite_definition_request() :: %{
        required("suiteDefinitionConfiguration") => suite_definition_configuration()
      }

  """
  @type update_suite_definition_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_suite_definition_response() :: %{
        "createdAt" => non_neg_integer(),
        "lastModifiedAt" => non_neg_integer(),
        "latestVersion" => String.t() | Atom.t(),
        "suiteDefinitionArn" => String.t() | Atom.t(),
        "suiteDefinitionConfiguration" => suite_definition_configuration(),
        "suiteDefinitionId" => String.t() | Atom.t(),
        "suiteDefinitionVersion" => String.t() | Atom.t(),
        "tags" => map()
      }

  """
  @type get_suite_definition_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_suite_runs_response() :: %{
        "nextToken" => String.t() | Atom.t(),
        "suiteRunsList" => list(suite_run_information())
      }

  """
  @type list_suite_runs_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      group_result() :: %{
        "groupId" => String.t() | Atom.t(),
        "groupName" => String.t() | Atom.t(),
        "tests" => list(test_case_run())
      }

  """
  @type group_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      start_suite_run_request() :: %{
        optional("suiteDefinitionVersion") => String.t() | Atom.t(),
        optional("tags") => map(),
        required("suiteRunConfiguration") => suite_run_configuration()
      }

  """
  @type start_suite_run_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      test_case_run() :: %{
        "endTime" => non_neg_integer(),
        "failure" => String.t() | Atom.t(),
        "logUrl" => String.t() | Atom.t(),
        "startTime" => non_neg_integer(),
        "status" => list(any()),
        "testCaseDefinitionId" => String.t() | Atom.t(),
        "testCaseDefinitionName" => String.t() | Atom.t(),
        "testCaseRunId" => String.t() | Atom.t(),
        "testScenarios" => list(test_case_scenario()),
        "warnings" => String.t() | Atom.t()
      }

  """
  @type test_case_run() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_endpoint_request() :: %{
        optional("authenticationMethod") => list(any()),
        optional("certificateArn") => String.t() | Atom.t(),
        optional("deviceRoleArn") => String.t() | Atom.t(),
        optional("thingArn") => String.t() | Atom.t()
      }

  """
  @type get_endpoint_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_suite_definition_response() :: %{
        "createdAt" => non_neg_integer(),
        "lastUpdatedAt" => non_neg_integer(),
        "suiteDefinitionArn" => String.t() | Atom.t(),
        "suiteDefinitionId" => String.t() | Atom.t(),
        "suiteDefinitionName" => String.t() | Atom.t(),
        "suiteDefinitionVersion" => String.t() | Atom.t()
      }

  """
  @type update_suite_definition_response() :: %{String.t() | Atom.t() => any()}

  @type create_suite_definition_errors() :: validation_exception() | internal_server_exception()

  @type delete_suite_definition_errors() :: validation_exception() | internal_server_exception()

  @type get_endpoint_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_suite_definition_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_suite_run_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_suite_run_report_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_suite_definitions_errors() :: validation_exception() | internal_server_exception()

  @type list_suite_runs_errors() :: validation_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type start_suite_run_errors() ::
          validation_exception() | internal_server_exception() | conflict_exception()

  @type stop_suite_run_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_suite_definition_errors() :: validation_exception() | internal_server_exception()

  def metadata do
    %{
      api_version: "2020-09-18",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.iotdeviceadvisor",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "IotDeviceAdvisor",
      signature_version: "v4",
      signing_name: "iotdeviceadvisor",
      target_prefix: nil
    }
  end

  @doc """
  Creates a Device Advisor test suite.

  Requires permission to access the
  [CreateSuiteDefinition](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec create_suite_definition(map(), create_suite_definition_request(), list()) ::
          {:ok, create_suite_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_suite_definition_errors()}
  def create_suite_definition(%Client{} = client, input, options \\ []) do
    url_path = "/suiteDefinitions"
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
  Deletes a Device Advisor test suite.

  Requires permission to access the
  [DeleteSuiteDefinition](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec delete_suite_definition(
          map(),
          String.t() | Atom.t(),
          delete_suite_definition_request(),
          list()
        ) ::
          {:ok, delete_suite_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_suite_definition_errors()}
  def delete_suite_definition(%Client{} = client, suite_definition_id, input, options \\ []) do
    url_path = "/suiteDefinitions/#{AWS.Util.encode_uri(suite_definition_id)}"
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
      200
    )
  end

  @doc """
  Gets information about an Device Advisor endpoint.
  """
  @spec get_endpoint(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, get_endpoint_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_endpoint_errors()}
  def get_endpoint(
        %Client{} = client,
        authentication_method \\ nil,
        certificate_arn \\ nil,
        device_role_arn \\ nil,
        thing_arn \\ nil,
        options \\ []
      ) do
    url_path = "/endpoint"
    headers = []
    query_params = []

    query_params =
      if !is_nil(thing_arn) do
        [{"thingArn", thing_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(device_role_arn) do
        [{"deviceRoleArn", device_role_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(certificate_arn) do
        [{"certificateArn", certificate_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(authentication_method) do
        [{"authenticationMethod", authentication_method} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a Device Advisor test suite.

  Requires permission to access the
  [GetSuiteDefinition](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec get_suite_definition(map(), String.t() | Atom.t(), String.t() | Atom.t() | nil, list()) ::
          {:ok, get_suite_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_suite_definition_errors()}
  def get_suite_definition(
        %Client{} = client,
        suite_definition_id,
        suite_definition_version \\ nil,
        options \\ []
      ) do
    url_path = "/suiteDefinitions/#{AWS.Util.encode_uri(suite_definition_id)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(suite_definition_version) do
        [{"suiteDefinitionVersion", suite_definition_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a Device Advisor test suite run.

  Requires permission to access the
  [GetSuiteRun](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec get_suite_run(map(), String.t() | Atom.t(), String.t() | Atom.t(), list()) ::
          {:ok, get_suite_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_suite_run_errors()}
  def get_suite_run(%Client{} = client, suite_definition_id, suite_run_id, options \\ []) do
    url_path =
      "/suiteDefinitions/#{AWS.Util.encode_uri(suite_definition_id)}/suiteRuns/#{AWS.Util.encode_uri(suite_run_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets a report download link for a successful Device Advisor qualifying test
  suite run.

  Requires permission to access the
  [GetSuiteRunReport](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec get_suite_run_report(map(), String.t() | Atom.t(), String.t() | Atom.t(), list()) ::
          {:ok, get_suite_run_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_suite_run_report_errors()}
  def get_suite_run_report(%Client{} = client, suite_definition_id, suite_run_id, options \\ []) do
    url_path =
      "/suiteDefinitions/#{AWS.Util.encode_uri(suite_definition_id)}/suiteRuns/#{AWS.Util.encode_uri(suite_run_id)}/report"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the Device Advisor test suites you have created.

  Requires permission to access the
  [ListSuiteDefinitions](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_suite_definitions(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_suite_definitions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_suite_definitions_errors()}
  def list_suite_definitions(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/suiteDefinitions"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists runs of the specified Device Advisor test suite.

  You can list all runs of the test
  suite, or the runs of a specific version of the test suite.

  Requires permission to access the
  [ListSuiteRuns](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_suite_runs(
          map(),
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          String.t() | Atom.t() | nil,
          list()
        ) ::
          {:ok, list_suite_runs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_suite_runs_errors()}
  def list_suite_runs(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        suite_definition_id \\ nil,
        suite_definition_version \\ nil,
        options \\ []
      ) do
    url_path = "/suiteRuns"
    headers = []
    query_params = []

    query_params =
      if !is_nil(suite_definition_version) do
        [{"suiteDefinitionVersion", suite_definition_version} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(suite_definition_id) do
        [{"suiteDefinitionId", suite_definition_id} | query_params]
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
  Lists the tags attached to an IoT Device Advisor resource.

  Requires permission to access the
  [ListTagsForResource](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec list_tags_for_resource(map(), String.t() | Atom.t(), list()) ::
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
  Starts a Device Advisor test suite run.

  Requires permission to access the
  [StartSuiteRun](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec start_suite_run(map(), String.t() | Atom.t(), start_suite_run_request(), list()) ::
          {:ok, start_suite_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_suite_run_errors()}
  def start_suite_run(%Client{} = client, suite_definition_id, input, options \\ []) do
    url_path = "/suiteDefinitions/#{AWS.Util.encode_uri(suite_definition_id)}/suiteRuns"
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
  Stops a Device Advisor test suite run that is currently running.

  Requires permission to access the
  [StopSuiteRun](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec stop_suite_run(
          map(),
          String.t() | Atom.t(),
          String.t() | Atom.t(),
          stop_suite_run_request(),
          list()
        ) ::
          {:ok, stop_suite_run_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_suite_run_errors()}
  def stop_suite_run(%Client{} = client, suite_definition_id, suite_run_id, input, options \\ []) do
    url_path =
      "/suiteDefinitions/#{AWS.Util.encode_uri(suite_definition_id)}/suiteRuns/#{AWS.Util.encode_uri(suite_run_id)}/stop"

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
  Adds to and modifies existing tags of an IoT Device Advisor resource.

  Requires permission to access the
  [TagResource](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec tag_resource(map(), String.t() | Atom.t(), tag_resource_request(), list()) ::
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
  Removes tags from an IoT Device Advisor resource.

  Requires permission to access the
  [UntagResource](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec untag_resource(map(), String.t() | Atom.t(), untag_resource_request(), list()) ::
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

  @doc """
  Updates a Device Advisor test suite.

  Requires permission to access the
  [UpdateSuiteDefinition](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  @spec update_suite_definition(
          map(),
          String.t() | Atom.t(),
          update_suite_definition_request(),
          list()
        ) ::
          {:ok, update_suite_definition_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_suite_definition_errors()}
  def update_suite_definition(%Client{} = client, suite_definition_id, input, options \\ []) do
    url_path = "/suiteDefinitions/#{AWS.Util.encode_uri(suite_definition_id)}"
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
