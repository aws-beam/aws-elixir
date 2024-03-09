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

  def metadata do
    %{
      api_version: "2020-09-18",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "api.iotdeviceadvisor",
      global?: false,
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
  def create_suite_definition(%Client{} = client, input, options \\ []) do
    url_path = "/suiteDefinitions"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Deletes a Device Advisor test suite.

  Requires permission to access the
  [DeleteSuiteDefinition](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def delete_suite_definition(%Client{} = client, suite_definition_id, input, options \\ []) do
    url_path = "/suiteDefinitions/#{AWS.Util.encode_uri(suite_definition_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Gets information about an Device Advisor endpoint.
  """
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
  def start_suite_run(%Client{} = client, suite_definition_id, input, options \\ []) do
    url_path = "/suiteDefinitions/#{AWS.Util.encode_uri(suite_definition_id)}/suiteRuns"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Stops a Device Advisor test suite run that is currently running.

  Requires permission to access the
  [StopSuiteRun](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def stop_suite_run(%Client{} = client, suite_definition_id, suite_run_id, input, options \\ []) do
    url_path =
      "/suiteDefinitions/#{AWS.Util.encode_uri(suite_definition_id)}/suiteRuns/#{AWS.Util.encode_uri(suite_run_id)}/stop"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Adds to and modifies existing tags of an IoT Device Advisor resource.

  Requires permission to access the
  [TagResource](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Removes tags from an IoT Device Advisor resource.

  Requires permission to access the
  [UntagResource](https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions)
  action.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

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
      headers,
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
  def update_suite_definition(%Client{} = client, suite_definition_id, input, options \\ []) do
    url_path = "/suiteDefinitions/#{AWS.Util.encode_uri(suite_definition_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
