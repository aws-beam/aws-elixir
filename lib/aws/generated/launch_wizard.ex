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

      resource_limit_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type resource_limit_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_workload_output() :: %{
        "workload" => workload_data()
      }

  """
  @type get_workload_output() :: %{String.t() => any()}

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

      list_workloads_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_workloads_input() :: %{String.t() => any()}

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

      get_deployment_output() :: %{
        "deployment" => deployment_data()
      }

  """
  @type get_deployment_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_deployment_input() :: %{
        optional("dryRun") => [boolean()],
        optional("tags") => map(),
        required("deploymentPatternName") => String.t(),
        required("name") => String.t(),
        required("specifications") => map(),
        required("workloadName") => String.t()
      }

  """
  @type create_deployment_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_deployment_input() :: %{
        required("deploymentId") => String.t()
      }

  """
  @type get_deployment_input() :: %{String.t() => any()}

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

      list_tags_for_resource_output() :: %{
        "tags" => map()
      }

  """
  @type list_tags_for_resource_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_workload_input() :: %{
        required("workloadName") => String.t()
      }

  """
  @type get_workload_input() :: %{String.t() => any()}

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

      list_deployment_events_output() :: %{
        "deploymentEvents" => list(deployment_event_data_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_deployment_events_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => [String.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

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

      delete_deployment_input() :: %{
        required("deploymentId") => String.t()
      }

  """
  @type delete_deployment_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        required("tags") => map()
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

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_input() :: %{String.t() => any()}

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

      delete_deployment_output() :: %{
        "status" => list(any()),
        "statusReason" => [String.t()]
      }

  """
  @type delete_deployment_output() :: %{String.t() => any()}

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

      list_workload_deployment_patterns_input() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("workloadName") => String.t()
      }

  """
  @type list_workload_deployment_patterns_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_output() :: %{}

  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:

      deployment_specifications_field() :: %{
        "allowedValues" => list(String.t()()),
        "conditionals" => list(deployment_conditional_field()()),
        "description" => [String.t()],
        "name" => [String.t()],
        "required" => [String.t()]
      }

  """
  @type deployment_specifications_field() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_workload_deployment_pattern_input() :: %{
        required("deploymentPatternName") => String.t(),
        required("workloadName") => String.t()
      }

  """
  @type get_workload_deployment_pattern_input() :: %{String.t() => any()}

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

      deployment_conditional_field() :: %{
        "comparator" => [String.t()],
        "name" => [String.t()],
        "value" => [String.t()]
      }

  """
  @type deployment_conditional_field() :: %{String.t() => any()}

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

      create_deployment_output() :: %{
        "deploymentId" => String.t()
      }

  """
  @type create_deployment_output() :: %{String.t() => any()}

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

      deployment_data() :: %{
        "createdAt" => [non_neg_integer()],
        "deletedAt" => [non_neg_integer()],
        "deploymentArn" => [String.t()],
        "id" => String.t(),
        "name" => [String.t()],
        "patternName" => String.t(),
        "resourceGroup" => [String.t()],
        "specifications" => map(),
        "status" => list(any()),
        "tags" => map(),
        "workloadName" => String.t()
      }

  """
  @type deployment_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      workload_deployment_pattern_data() :: %{
        "deploymentPatternName" => String.t(),
        "description" => [String.t()],
        "displayName" => [String.t()],
        "specifications" => list(deployment_specifications_field()()),
        "status" => list(any()),
        "statusMessage" => [String.t()],
        "workloadName" => String.t(),
        "workloadVersionName" => String.t()
      }

  """
  @type workload_deployment_pattern_data() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_workload_deployment_pattern_output() :: %{
        "workloadDeploymentPattern" => workload_deployment_pattern_data()
      }

  """
  @type get_workload_deployment_pattern_output() :: %{String.t() => any()}

  @type create_deployment_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | resource_limit_exception()

  @type delete_deployment_errors() ::
          validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | resource_limit_exception()

  @type get_deployment_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_workload_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type get_workload_deployment_pattern_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_deployment_events_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_deployments_errors() :: validation_exception() | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_workload_deployment_patterns_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type list_workloads_errors() :: validation_exception() | internal_server_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "launchwizard",
      global?: false,
      hostname: nil,
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
          | {:error, create_deployment_errors()}
  def create_deployment(%Client{} = client, input, options \\ []) do
    url_path = "/createDeployment"
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
  Deletes a deployment.
  """
  @spec delete_deployment(map(), delete_deployment_input(), list()) ::
          {:ok, delete_deployment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_deployment_errors()}
  def delete_deployment(%Client{} = client, input, options \\ []) do
    url_path = "/deleteDeployment"
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
  Returns information about the deployment.
  """
  @spec get_deployment(map(), get_deployment_input(), list()) ::
          {:ok, get_deployment_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_deployment_errors()}
  def get_deployment(%Client{} = client, input, options \\ []) do
    url_path = "/getDeployment"
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
  Returns information about a workload.
  """
  @spec get_workload(map(), get_workload_input(), list()) ::
          {:ok, get_workload_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_workload_errors()}
  def get_workload(%Client{} = client, input, options \\ []) do
    url_path = "/getWorkload"
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
  Returns details for a given workload and deployment pattern, including the
  available
  specifications.

  You can use the
  [ListWorkloads](https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloads.html) operation to discover the available workload names and the
  [ListWorkloadDeploymentPatterns](https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloadDeploymentPatterns.html)
  operation to discover the available deployment
  pattern names of a given workload.
  """
  @spec get_workload_deployment_pattern(map(), get_workload_deployment_pattern_input(), list()) ::
          {:ok, get_workload_deployment_pattern_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_workload_deployment_pattern_errors()}
  def get_workload_deployment_pattern(%Client{} = client, input, options \\ []) do
    url_path = "/getWorkloadDeploymentPattern"
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
  Lists the events of a deployment.
  """
  @spec list_deployment_events(map(), list_deployment_events_input(), list()) ::
          {:ok, list_deployment_events_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_deployment_events_errors()}
  def list_deployment_events(%Client{} = client, input, options \\ []) do
    url_path = "/listDeploymentEvents"
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
  Lists the deployments that have been created.
  """
  @spec list_deployments(map(), list_deployments_input(), list()) ::
          {:ok, list_deployments_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_deployments_errors()}
  def list_deployments(%Client{} = client, input, options \\ []) do
    url_path = "/listDeployments"
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
  Lists the tags associated with a specified resource.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists the workload deployment patterns for a given workload name.

  You can use the
  [ListWorkloads](https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloads.html)
  operation to discover the available workload names.
  """
  @spec list_workload_deployment_patterns(
          map(),
          list_workload_deployment_patterns_input(),
          list()
        ) ::
          {:ok, list_workload_deployment_patterns_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_workload_deployment_patterns_errors()}
  def list_workload_deployment_patterns(%Client{} = client, input, options \\ []) do
    url_path = "/listWorkloadDeploymentPatterns"
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
  Lists the available workload names.

  You can use the
  [ListWorkloadDeploymentPatterns](https://docs.aws.amazon.com/launchwizard/latest/APIReference/API_ListWorkloadDeploymentPatterns.html)
  operation to discover the available deployment patterns for a given workload.
  """
  @spec list_workloads(map(), list_workloads_input(), list()) ::
          {:ok, list_workloads_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_workloads_errors()}
  def list_workloads(%Client{} = client, input, options \\ []) do
    url_path = "/listWorkloads"
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
  Adds the specified tags to the given resource.
  """
  @spec tag_resource(map(), String.t(), tag_resource_input(), list()) ::
          {:ok, tag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
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
  Removes the specified tags from the given resource.
  """
  @spec untag_resource(map(), String.t(), untag_resource_input(), list()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
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
