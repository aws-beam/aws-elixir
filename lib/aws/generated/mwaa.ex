# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MWAA do
  @moduledoc """
  Amazon Managed Workflows for Apache Airflow

  This section contains the Amazon Managed Workflows for Apache Airflow (MWAA) API
  reference documentation.

  For more information, see [What Is Amazon MWAA?](https://docs.aws.amazon.com/mwaa/latest/userguide/what-is-mwaa.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2020-07-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "airflow",
      global?: false,
      protocol: "rest-json",
      service_id: "MWAA",
      signature_version: "v4",
      signing_name: "airflow",
      target_prefix: nil
    }
  end

  @doc """
  Create a CLI token to use Airflow CLI.
  """
  def create_cli_token(%Client{} = client, name, input, options \\ []) do
    url_path = "/clitoken/#{URI.encode(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Creates an Amazon Managed Workflows for Apache Airflow (MWAA) environment.
  """
  def create_environment(%Client{} = client, name, input, options \\ []) do
    url_path = "/environments/#{URI.encode(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Create a JWT token to be used to login to Airflow Web UI with claims based
  Authentication.
  """
  def create_web_login_token(%Client{} = client, name, input, options \\ []) do
    url_path = "/webtoken/#{URI.encode(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Deletes an Amazon Managed Workflows for Apache Airflow (MWAA) environment.
  """
  def delete_environment(%Client{} = client, name, input, options \\ []) do
    url_path = "/environments/#{URI.encode(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Retrieves the details of an Amazon Managed Workflows for Apache Airflow (MWAA)
  environment.
  """
  def get_environment(%Client{} = client, name, options \\ []) do
    url_path = "/environments/#{URI.encode(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Lists the Amazon Managed Workflows for Apache Airflow (MWAA) environments.
  """
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Lists the key-value tag pairs associated to the Amazon Managed Workflows for
  Apache Airflow (MWAA) environment.

  For example, `"Environment": "Staging"`.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  An operation for publishing metrics from the customers to the Ops plane.
  """
  def publish_metrics(%Client{} = client, environment_name, input, options \\ []) do
    url_path = "/metrics/environments/#{URI.encode(environment_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Associates key-value tag pairs to your Amazon Managed Workflows for Apache
  Airflow (MWAA) environment.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
  Removes key-value tag pairs associated to your Amazon Managed Workflows for
  Apache Airflow (MWAA) environment.

  For example, `"Environment": "Staging"`.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{URI.encode(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
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
  Updates an Amazon Managed Workflows for Apache Airflow (MWAA) environment.
  """
  def update_environment(%Client{} = client, name, input, options \\ []) do
    url_path = "/environments/#{URI.encode(name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
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
