# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MWAA do
  @moduledoc """
  Amazon Managed Workflows for Apache Airflow

  This section contains the Amazon Managed Workflows for Apache Airflow (MWAA) API
  reference documentation.

  For more information, see [What is Amazon MWAA?](https://docs.aws.amazon.com/mwaa/latest/userguide/what-is-mwaa.html).

  ## Endpoints

    *

  `api.airflow.{region}.amazonaws.com` - This endpoint is used for environment
  management.

      *

  [CreateEnvironment](https://docs.aws.amazon.com/mwaa/latest/API/API_CreateEnvironment.html) 

      *

  [DeleteEnvironment](https://docs.aws.amazon.com/mwaa/latest/API/API_DeleteEnvironment.html)

      *

  [GetEnvironment](https://docs.aws.amazon.com/mwaa/latest/API/API_GetEnvironment.html) 

      *

  [ListEnvironments](https://docs.aws.amazon.com/mwaa/latest/API/API_ListEnvironments.html)

      *

  [ListTagsForResource](https://docs.aws.amazon.com/mwaa/latest/API/API_ListTagsForResource.html) 

      *

  [TagResource](https://docs.aws.amazon.com/mwaa/latest/API/API_TagResource.html)

      *

  [UntagResource](https://docs.aws.amazon.com/mwaa/latest/API/API_UntagResource.html) 

      *

  [UpdateEnvironment](https://docs.aws.amazon.com/mwaa/latest/API/API_UpdateEnvironment.html)

    *

  `env.airflow.{region}.amazonaws.com` - This endpoint is used to operate the
  Airflow environment.

      *

  [CreateCliToken](https://docs.aws.amazon.com/mwaa/latest/API/API_CreateCliToken.html )

      *

  [CreateWebLoginToken](https://docs.aws.amazon.com/mwaa/latest/API/API_CreateWebLoginToken.html)

      *

  [InvokeRestApi](https://docs.aws.amazon.com/mwaa/latest/API/API_InvokeRestApi.html) 

  ## Regions

  For a list of supported regions, see [Amazon MWAA endpoints and
  quotas](https://docs.aws.amazon.com/general/latest/gr/mwaa.html) in the *Amazon
  Web Services General Reference*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      get_environment_output() :: %{
        optional("Environment") => environment()
      }

  """
  @type get_environment_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invoke_rest_api_response() :: %{
        "RestApiResponse" => any(),
        "RestApiStatusCode" => [integer()]
      }

  """
  @type invoke_rest_api_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_environment_input() :: %{
        "AirflowConfigurationOptions" => map(),
        "AirflowVersion" => String.t(),
        "DagS3Path" => String.t(),
        "EndpointManagement" => String.t(),
        "EnvironmentClass" => String.t(),
        "ExecutionRoleArn" => String.t(),
        "KmsKey" => String.t(),
        "LoggingConfiguration" => logging_configuration_input(),
        "MaxWebservers" => integer(),
        "MaxWorkers" => integer(),
        "MinWebservers" => integer(),
        "MinWorkers" => integer(),
        "NetworkConfiguration" => network_configuration(),
        "PluginsS3ObjectVersion" => String.t(),
        "PluginsS3Path" => String.t(),
        "RequirementsS3ObjectVersion" => String.t(),
        "RequirementsS3Path" => String.t(),
        "Schedulers" => integer(),
        "SourceBucketArn" => String.t(),
        "StartupScriptS3ObjectVersion" => String.t(),
        "StartupScriptS3Path" => String.t(),
        "Tags" => map(),
        "WebserverAccessMode" => String.t(),
        "WeeklyMaintenanceWindowStart" => String.t()
      }

  """
  @type create_environment_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_environment_input() :: %{}

  """
  @type delete_environment_input() :: %{}

  @typedoc """

  ## Example:

      module_logging_configuration() :: %{
        "CloudWatchLogGroupArn" => String.t(),
        "Enabled" => boolean(),
        "LogLevel" => String.t()
      }

  """
  @type module_logging_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logging_configuration_input() :: %{
        "DagProcessingLogs" => module_logging_configuration_input(),
        "SchedulerLogs" => module_logging_configuration_input(),
        "TaskLogs" => module_logging_configuration_input(),
        "WebserverLogs" => module_logging_configuration_input(),
        "WorkerLogs" => module_logging_configuration_input()
      }

  """
  @type logging_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_environments_input() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => String.t()
      }

  """
  @type list_environments_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        optional("Tags") => map()
      }

  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_network_configuration_input() :: %{
        "SecurityGroupIds" => list(String.t()())
      }

  """
  @type update_network_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      logging_configuration() :: %{
        "DagProcessingLogs" => module_logging_configuration(),
        "SchedulerLogs" => module_logging_configuration(),
        "TaskLogs" => module_logging_configuration(),
        "WebserverLogs" => module_logging_configuration(),
        "WorkerLogs" => module_logging_configuration()
      }

  """
  @type logging_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_environment_output() :: %{
        optional("Arn") => String.t()
      }

  """
  @type create_environment_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_error() :: %{
        "ErrorCode" => String.t(),
        "ErrorMessage" => String.t()
      }

  """
  @type update_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      metric_datum() :: %{
        "Dimensions" => list(dimension()()),
        "MetricName" => [String.t()],
        "StatisticValues" => statistic_set(),
        "Timestamp" => [non_neg_integer()],
        "Unit" => String.t(),
        "Value" => [float()]
      }

  """
  @type metric_datum() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_environment_output() :: %{
        optional("Arn") => String.t()
      }

  """
  @type update_environment_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      last_update() :: %{
        "CreatedAt" => non_neg_integer(),
        "Error" => update_error(),
        "Source" => String.t(),
        "Status" => String.t(),
        "WorkerReplacementStrategy" => String.t()
      }

  """
  @type last_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      environment() :: %{
        "EnvironmentClass" => String.t(),
        "Status" => String.t(),
        "LastUpdate" => last_update(),
        "MinWorkers" => integer(),
        "AirflowVersion" => String.t(),
        "ServiceRoleArn" => String.t(),
        "MaxWebservers" => integer(),
        "DatabaseVpcEndpointService" => String.t(),
        "EndpointManagement" => String.t(),
        "Tags" => map(),
        "NetworkConfiguration" => network_configuration(),
        "KmsKey" => String.t(),
        "ExecutionRoleArn" => String.t(),
        "CreatedAt" => non_neg_integer(),
        "LoggingConfiguration" => logging_configuration(),
        "WeeklyMaintenanceWindowStart" => String.t(),
        "RequirementsS3ObjectVersion" => String.t(),
        "WebserverUrl" => String.t(),
        "StartupScriptS3ObjectVersion" => [String.t()],
        "MinWebservers" => integer(),
        "WebserverAccessMode" => String.t(),
        "CeleryExecutorQueue" => String.t(),
        "SourceBucketArn" => String.t(),
        "RequirementsS3Path" => String.t(),
        "Schedulers" => integer(),
        "WebserverVpcEndpointService" => String.t(),
        "AirflowConfigurationOptions" => map(),
        "Arn" => String.t(),
        "Name" => String.t(),
        "PluginsS3Path" => String.t(),
        "MaxWorkers" => integer(),
        "StartupScriptS3Path" => [String.t()],
        "PluginsS3ObjectVersion" => String.t(),
        "DagS3Path" => String.t()
      }

  """
  @type environment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_environment_input() :: %{}

  """
  @type get_environment_input() :: %{}

  @typedoc """

  ## Example:

      list_environments_output() :: %{
        optional("NextToken") => String.t(),
        required("Environments") => list(String.t()())
      }

  """
  @type list_environments_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_environment_input() :: %{
        optional("AirflowConfigurationOptions") => map(),
        optional("AirflowVersion") => String.t(),
        optional("DagS3Path") => String.t(),
        optional("EnvironmentClass") => String.t(),
        optional("ExecutionRoleArn") => String.t(),
        optional("LoggingConfiguration") => logging_configuration_input(),
        optional("MaxWebservers") => integer(),
        optional("MaxWorkers") => integer(),
        optional("MinWebservers") => integer(),
        optional("MinWorkers") => integer(),
        optional("NetworkConfiguration") => update_network_configuration_input(),
        optional("PluginsS3ObjectVersion") => String.t(),
        optional("PluginsS3Path") => String.t(),
        optional("RequirementsS3ObjectVersion") => String.t(),
        optional("RequirementsS3Path") => String.t(),
        optional("Schedulers") => integer(),
        optional("SourceBucketArn") => String.t(),
        optional("StartupScriptS3ObjectVersion") => String.t(),
        optional("StartupScriptS3Path") => String.t(),
        optional("WebserverAccessMode") => String.t(),
        optional("WeeklyMaintenanceWindowStart") => String.t(),
        optional("WorkerReplacementStrategy") => String.t()
      }

  """
  @type update_environment_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      rest_api_client_exception() :: %{
        "RestApiResponse" => any(),
        "RestApiStatusCode" => [integer()]
      }

  """
  @type rest_api_client_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_web_login_token_request() :: %{}

  """
  @type create_web_login_token_request() :: %{}

  @typedoc """

  ## Example:

      invoke_rest_api_request() :: %{
        optional("Body") => any(),
        optional("QueryParameters") => [any()],
        required("Method") => String.t(),
        required("Path") => String.t()
      }

  """
  @type invoke_rest_api_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_output() :: %{}

  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_environment_output() :: %{}

  """
  @type delete_environment_output() :: %{}

  @typedoc """

  ## Example:

      create_cli_token_response() :: %{
        optional("CliToken") => String.t(),
        optional("WebServerHostname") => String.t()
      }

  """
  @type create_cli_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      network_configuration() :: %{
        "SecurityGroupIds" => list(String.t()()),
        "SubnetIds" => list(String.t()())
      }

  """
  @type network_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => [String.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_cli_token_request() :: %{}

  """
  @type create_cli_token_request() :: %{}

  @typedoc """

  ## Example:

      rest_api_server_exception() :: %{
        "RestApiResponse" => any(),
        "RestApiStatusCode" => [integer()]
      }

  """
  @type rest_api_server_exception() :: %{String.t() => any()}

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

      untag_resource_output() :: %{}

  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:

      create_web_login_token_response() :: %{
        optional("AirflowIdentity") => String.t(),
        optional("IamIdentity") => String.t(),
        optional("WebServerHostname") => String.t(),
        optional("WebToken") => String.t()
      }

  """
  @type create_web_login_token_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dimension() :: %{
        "Name" => [String.t()],
        "Value" => [String.t()]
      }

  """
  @type dimension() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      publish_metrics_input() :: %{
        "MetricData" => list(metric_datum()())
      }

  """
  @type publish_metrics_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      publish_metrics_output() :: %{}

  """
  @type publish_metrics_output() :: %{}

  @typedoc """

  ## Example:

      module_logging_configuration_input() :: %{
        "Enabled" => boolean(),
        "LogLevel" => String.t()
      }

  """
  @type module_logging_configuration_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      statistic_set() :: %{
        "Maximum" => [float()],
        "Minimum" => [float()],
        "SampleCount" => [integer()],
        "Sum" => [float()]
      }

  """
  @type statistic_set() :: %{String.t() => any()}

  @type create_cli_token_errors() :: resource_not_found_exception()

  @type create_environment_errors() :: validation_exception() | internal_server_exception()

  @type create_web_login_token_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_environment_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_environment_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type invoke_rest_api_errors() ::
          validation_exception()
          | rest_api_server_exception()
          | access_denied_exception()
          | internal_server_exception()
          | rest_api_client_exception()
          | resource_not_found_exception()

  @type list_environments_errors() :: validation_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type publish_metrics_errors() :: validation_exception() | internal_server_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_environment_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2020-07-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "airflow",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "MWAA",
      signature_version: "v4",
      signing_name: "airflow",
      target_prefix: nil
    }
  end

  @doc """
  Creates a CLI token for the Airflow CLI.

  To learn more, see [Creating an Apache Airflow CLI token](https://docs.aws.amazon.com/mwaa/latest/userguide/call-mwaa-apis-cli.html).
  """
  @spec create_cli_token(map(), String.t(), create_cli_token_request(), list()) ::
          {:ok, create_cli_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_cli_token_errors()}
  def create_cli_token(%Client{} = client, name, input, options \\ []) do
    url_path = "/clitoken/#{AWS.Util.encode_uri(name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "env.")

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
  Creates an Amazon Managed Workflows for Apache Airflow (Amazon MWAA)
  environment.
  """
  @spec create_environment(map(), String.t(), create_environment_input(), list()) ::
          {:ok, create_environment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_environment_errors()}
  def create_environment(%Client{} = client, name, input, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a web login token for the Airflow Web UI.

  To learn more, see [Creating an Apache Airflow web login token](https://docs.aws.amazon.com/mwaa/latest/userguide/call-mwaa-apis-web.html).
  """
  @spec create_web_login_token(map(), String.t(), create_web_login_token_request(), list()) ::
          {:ok, create_web_login_token_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_web_login_token_errors()}
  def create_web_login_token(%Client{} = client, name, input, options \\ []) do
    url_path = "/webtoken/#{AWS.Util.encode_uri(name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "env.")

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
  Deletes an Amazon Managed Workflows for Apache Airflow (Amazon MWAA)
  environment.
  """
  @spec delete_environment(map(), String.t(), delete_environment_input(), list()) ::
          {:ok, delete_environment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_environment_errors()}
  def delete_environment(%Client{} = client, name, input, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
  Describes an Amazon Managed Workflows for Apache Airflow (MWAA) environment.
  """
  @spec get_environment(map(), String.t(), list()) ::
          {:ok, get_environment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_environment_errors()}
  def get_environment(%Client{} = client, name, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Invokes the Apache Airflow REST API on the webserver with the specified inputs.

  To
  learn more, see [Using the Apache Airflow REST API](https://docs.aws.amazon.com/mwaa/latest/userguide/access-mwaa-apache-airflow-rest-api.html)
  """
  @spec invoke_rest_api(map(), String.t(), invoke_rest_api_request(), list()) ::
          {:ok, invoke_rest_api_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, invoke_rest_api_errors()}
  def invoke_rest_api(%Client{} = client, name, input, options \\ []) do
    url_path = "/restapi/#{AWS.Util.encode_uri(name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "env.")

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
  Lists the Amazon Managed Workflows for Apache Airflow (MWAA) environments.
  """
  @spec list_environments(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_environments_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_environments_errors()}
  def list_environments(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/environments"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"NextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"MaxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the key-value tag pairs associated to the Amazon Managed Workflows for
  Apache Airflow (MWAA) environment.

  For example, `"Environment": "Staging"`.
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

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """

  **Internal only**.

  Publishes environment health metrics to Amazon CloudWatch.
  """
  @spec publish_metrics(map(), String.t(), publish_metrics_input(), list()) ::
          {:ok, publish_metrics_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, publish_metrics_errors()}
  def publish_metrics(%Client{} = client, environment_name, input, options \\ []) do
    url_path = "/metrics/environments/#{AWS.Util.encode_uri(environment_name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "ops.")

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
  Associates key-value tag pairs to your Amazon Managed Workflows for Apache
  Airflow (MWAA) environment.
  """
  @spec tag_resource(map(), String.t(), tag_resource_input(), list()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
  Removes key-value tag pairs associated to your Amazon Managed Workflows for
  Apache Airflow (MWAA) environment.

  For example, `"Environment": "Staging"`.
  """
  @spec untag_resource(map(), String.t(), untag_resource_input(), list()) ::
          {:ok, untag_resource_output(), any()}
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

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
  Updates an Amazon Managed Workflows for Apache Airflow (MWAA) environment.
  """
  @spec update_environment(map(), String.t(), update_environment_input(), list()) ::
          {:ok, update_environment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_environment_errors()}
  def update_environment(%Client{} = client, name, input, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

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
