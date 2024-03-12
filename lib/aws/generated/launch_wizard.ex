# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LaunchWizard do
  @moduledoc """
  Launch Wizard offers a guided way of sizing, configuring, and deploying Amazon
  Web Services resources for
  third party applications, such as Microsoft SQL Server Always On and HANA based
  SAP
  systems, without the need to manually identify and provision individual Amazon
  Web Services
  resources.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  create_deployment_input() :: %{
    optional("dryRun") => [boolean()],
    required("deploymentPatternName") => String.t(),
    required("name") => String.t(),
    required("specifications") => map(),
    required("workloadName") => String.t()
  }
  """
  @type create_deployment_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_deployment_output() :: %{
    "deploymentId" => String.t()
  }
  """
  @type create_deployment_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_deployment_input() :: %{
    required("deploymentId") => String.t()
  }
  """
  @type delete_deployment_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_deployment_output() :: %{
    "status" => list(any()),
    "statusReason" => [String.t()]
  }
  """
  @type delete_deployment_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  deployment_data() :: %{
    "createdAt" => [non_neg_integer()],
    "deletedAt" => [non_neg_integer()],
    "id" => String.t(),
    "name" => [String.t()],
    "patternName" => String.t(),
    "resourceGroup" => [String.t()],
    "specifications" => map(),
    "status" => list(any()),
    "workloadName" => String.t()
  }
  """
  @type deployment_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  deployment_data_summary() :: %{
    "createdAt" => [non_neg_integer()],
    "id" => String.t(),
    "name" => [String.t()],
    "patternName" => String.t(),
    "status" => list(any()),
    "workloadName" => String.t()
  }
  """
  @type deployment_data_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  deployment_event_data_summary() :: %{
    "description" => [String.t()],
    "name" => [String.t()],
    "status" => list(any()),
    "statusReason" => [String.t()],
    "timestamp" => [non_neg_integer()]
  }
  """
  @type deployment_event_data_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  deployment_filter() :: %{
    "name" => list(any()),
    "values" => list([String.t()]())
  }
  """
  @type deployment_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_deployment_input() :: %{
    required("deploymentId") => String.t()
  }
  """
  @type get_deployment_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_deployment_output() :: %{
    "deployment" => deployment_data()
  }
  """
  @type get_deployment_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_workload_input() :: %{
    required("workloadName") => String.t()
  }
  """
  @type get_workload_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_workload_output() :: %{
    "workload" => workload_data()
  }
  """
  @type get_workload_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_server_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_deployment_events_input() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    required("deploymentId") => String.t()
  }
  """
  @type list_deployment_events_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_deployment_events_output() :: %{
    "deploymentEvents" => list(deployment_event_data_summary()()),
    "nextToken" => String.t()
  }
  """
  @type list_deployment_events_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_deployments_input() :: %{
    optional("filters") => list(deployment_filter()()),
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_deployments_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_deployments_output() :: %{
    "deployments" => list(deployment_data_summary()()),
    "nextToken" => String.t()
  }
  """
  @type list_deployments_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_workload_deployment_patterns_input() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t(),
    required("workloadName") => String.t()
  }
  """
  @type list_workload_deployment_patterns_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_workload_deployment_patterns_output() :: %{
    "nextToken" => String.t(),
    "workloadDeploymentPatterns" => list(workload_deployment_pattern_data_summary()())
  }
  """
  @type list_workload_deployment_patterns_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_workloads_input() :: %{
    optional("maxResults") => integer(),
    optional("nextToken") => String.t()
  }
  """
  @type list_workloads_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_workloads_output() :: %{
    "nextToken" => String.t(),
    "workloads" => list(workload_data_summary()())
  }
  """
  @type list_workloads_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_limit_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type resource_limit_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_not_found_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  validation_exception() :: %{
    "message" => [String.t()]
  }
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  workload_data() :: %{
    "description" => [String.t()],
    "displayName" => [String.t()],
    "documentationUrl" => [String.t()],
    "iconUrl" => [String.t()],
    "status" => list(any()),
    "statusMessage" => [String.t()],
    "workloadName" => String.t()
  }
  """
  @type workload_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  workload_data_summary() :: %{
    "displayName" => [String.t()],
    "workloadName" => String.t()
  }
  """
  @type workload_data_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  workload_deployment_pattern_data_summary() :: %{
    "deploymentPatternName" => String.t(),
    "description" => [String.t()],
    "displayName" => [String.t()],
    "status" => list(any()),
    "statusMessage" => [String.t()],
    "workloadName" => String.t(),
    "workloadVersionName" => String.t()
  }
  """
  @type workload_deployment_pattern_data_summary() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "launchwizard",
      global?: false,
      protocol: "rest-json",
      service_id: "Launch Wizard",
      signature_version: "v4",
      signing_name: "launchwizard",
      target_prefix: nil
    }
  end

  @doc """
  Creates a deployment for the given workload.

  Deployments created by this operation are
  not available in the Launch Wizard console to use the `Clone deployment` action
  on.
  """
  @spec create_deployment(map(), create_deployment_input(), list()) ::
          {:ok, create_deployment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, resource_limit_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def create_deployment(%Client{} = client, input, options \\ []) do
    url_path = "/createDeployment"
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
  Deletes a deployment.
  """
  @spec delete_deployment(map(), delete_deployment_input(), list()) ::
          {:ok, delete_deployment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def delete_deployment(%Client{} = client, input, options \\ []) do
    url_path = "/deleteDeployment"
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
  Returns information about the deployment.
  """
  @spec get_deployment(map(), get_deployment_input(), list()) ::
          {:ok, get_deployment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def get_deployment(%Client{} = client, input, options \\ []) do
    url_path = "/getDeployment"
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
  Returns information about a workload.
  """
  @spec get_workload(map(), get_workload_input(), list()) ::
          {:ok, get_workload_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def get_workload(%Client{} = client, input, options \\ []) do
    url_path = "/getWorkload"
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
  Lists the events of a deployment.
  """
  @spec list_deployment_events(map(), list_deployment_events_input(), list()) ::
          {:ok, list_deployment_events_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def list_deployment_events(%Client{} = client, input, options \\ []) do
    url_path = "/listDeploymentEvents"
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
  Lists the deployments that have been created.
  """
  @spec list_deployments(map(), list_deployments_input(), list()) ::
          {:ok, list_deployments_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, validation_exception()}
  def list_deployments(%Client{} = client, input, options \\ []) do
    url_path = "/listDeployments"
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
  Lists the workload deployment patterns.
  """
  @spec list_workload_deployment_patterns(
          map(),
          list_workload_deployment_patterns_input(),
          list()
        ) ::
          {:ok, list_workload_deployment_patterns_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def list_workload_deployment_patterns(%Client{} = client, input, options \\ []) do
    url_path = "/listWorkloadDeploymentPatterns"
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
  Lists the workloads.
  """
  @spec list_workloads(map(), list_workloads_input(), list()) ::
          {:ok, list_workloads_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, internal_server_exception()}
          | {:error, validation_exception()}
  def list_workloads(%Client{} = client, input, options \\ []) do
    url_path = "/listWorkloads"
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
end
