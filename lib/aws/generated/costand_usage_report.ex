# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CostandUsageReport do
  @moduledoc """
  The AWS Cost and Usage Report API enables you to programmatically create,
  query, and delete AWS Cost and Usage report definitions.

  AWS Cost and Usage reports track the monthly AWS costs and usage associated
  with your AWS account. The report contains line items for each unique
  combination of AWS product, usage type, and operation that your AWS account
  uses. You can configure the AWS Cost and Usage report to show only the data
  that you want, using the AWS Cost and Usage API.

  Service Endpoint

  The AWS Cost and Usage Report API provides the following endpoint:

  <ul> <li> cur.us-east-1.amazonaws.com

  </li> </ul>
  """

  @doc """
  Deletes the specified report.
  """
  def delete_report_definition(client, input, options \\ []) do
    request(client, "DeleteReportDefinition", input, options)
  end

  @doc """
  Lists the AWS Cost and Usage reports available to this account.
  """
  def describe_report_definitions(client, input, options \\ []) do
    request(client, "DescribeReportDefinitions", input, options)
  end

  @doc """
  Allows you to programatically update your report preferences.
  """
  def modify_report_definition(client, input, options \\ []) do
    request(client, "ModifyReportDefinition", input, options)
  end

  @doc """
  Creates a new report using the description that you provide.
  """
  def put_report_definition(client, input, options \\ []) do
    request(client, "PutReportDefinition", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "cur"}
    host = build_host("cur", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSOrigamiServiceGatewayService.#{action}"}
    ]

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case AWS.Client.request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
        {:ok, body, response}

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

      error = {:error, _reason} -> error
    end
  end

  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

  defp encode!(client, payload) do
    AWS.Client.encode!(client, payload, :json)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
