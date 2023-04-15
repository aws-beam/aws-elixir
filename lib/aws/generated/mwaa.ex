# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MWAA do
  @moduledoc """
  Amazon Managed Workflows for Apache Airflow

  This section contains the Amazon Managed Workflows for Apache Airflow (MWAA) API
  reference documentation.

  For more information, see [What Is Amazon MWAA?](https://docs.aws.amazon.com/mwaa/latest/userguide/what-is-mwaa.html).

  ## Endpoints

    * `api.airflow.{region}.amazonaws.com` - This endpoint is used for
  environment management.

      *
  [CreateEnvironment](https://docs.aws.amazon.com/mwaa/latest/API/API_CreateEnvironment.html)       *
  [DeleteEnvironment](https://docs.aws.amazon.com/mwaa/latest/API/API_DeleteEnvironment.html)

      *
  [GetEnvironment](https://docs.aws.amazon.com/mwaa/latest/API/API_GetEnvironment.html)       *
  [ListEnvironments](https://docs.aws.amazon.com/mwaa/latest/API/API_ListEnvironments.html)

      *
  [ListTagsForResource](https://docs.aws.amazon.com/mwaa/latest/API/API_ListTagsForResource.html)       *
  [TagResource](https://docs.aws.amazon.com/mwaa/latest/API/API_TagResource.html)

      *
  [UntagResource](https://docs.aws.amazon.com/mwaa/latest/API/API_UntagResource.html)       *
  [UpdateEnvironment](https://docs.aws.amazon.com/mwaa/latest/API/API_UpdateEnvironment.html)

    * `env.airflow.{region}.amazonaws.com` - This endpoint is used to
  operate the Airflow environment.

      *
  [CreateCliToken](https://docs.aws.amazon.com/mwaa/latest/API/API_CreateCliToken.html )

      *
  [CreateWebLoginToken](https://docs.aws.amazon.com/mwaa/latest/API/API_CreateWebLoginToken.html)

    * `ops.airflow.{region}.amazonaws.com` - This endpoint is used to
  push environment metrics that track environment health.

      *
  [PublishMetrics](https://docs.aws.amazon.com/mwaa/latest/API/API_PublishMetrics.html )

  ## Regions

  For a list of regions that Amazon MWAA supports, see [Region
  availability](https://docs.aws.amazon.com/mwaa/latest/userguide/what-is-mwaa.html#regions-mwaa)
  in the *Amazon MWAA User Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
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
  Creates a CLI token for the Airflow CLI.

  To learn more, see [Creating an Apache Airflow CLI token](https://docs.aws.amazon.com/mwaa/latest/userguide/call-mwaa-apis-cli.html).
  """
  def create_cli_token(%Client{} = client, name, input, options \\ []) do
    url_path = "/clitoken/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "env.")

    Request.request_rest(
      client,
      meta,
      "CreateCliToken",
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
    url_path = "/environments/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      "CreateEnvironment",
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
  Creates a web login token for the Airflow Web UI.

  To learn more, see [Creating an Apache Airflow web login token](https://docs.aws.amazon.com/mwaa/latest/userguide/call-mwaa-apis-web.html).
  """
  def create_web_login_token(%Client{} = client, name, input, options \\ []) do
    url_path = "/webtoken/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "env.")

    Request.request_rest(
      client,
      meta,
      "CreateWebLoginToken",
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
    url_path = "/environments/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      "DeleteEnvironment",
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
  Describes an Amazon Managed Workflows for Apache Airflow (MWAA) environment.
  """
  def get_environment(%Client{} = client, name, options \\ []) do
    url_path = "/environments/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      "GetEnvironment",
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

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      "ListEnvironments",
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
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      "ListTagsForResource",
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
  **Internal only**.

  Publishes environment health metrics to Amazon CloudWatch.
  """
  def publish_metrics(%Client{} = client, environment_name, input, options \\ []) do
    url_path = "/metrics/environments/#{AWS.Util.encode_uri(environment_name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "ops.")

    Request.request_rest(
      client,
      meta,
      "PublishMetrics",
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
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      "TagResource",
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
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      "UntagResource",
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
    url_path = "/environments/#{AWS.Util.encode_uri(name)}"
    headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "api.")

    Request.request_rest(
      client,
      meta,
      "UpdateEnvironment",
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
