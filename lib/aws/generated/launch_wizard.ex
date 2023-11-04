# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LaunchWizard do
  @moduledoc """
  Launch Wizard offers a guided way of sizing, configuring, and deploying Amazon
  Web Services resources for third party applications, such as Microsoft SQL
  Server Always On and HANA based SAP systems, without the need to manually
  identify and provision individual Amazon Web Services resources.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
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

  Deployments created by this operation are not available in the Launch Wizard
  console to use the `Clone deployment` action on.
  """
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
