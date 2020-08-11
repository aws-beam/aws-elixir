# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CostAndUsageReport do
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
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, action, input, options) do
    client = %{client | service: "cur"}
    host = get_host("cur", client)
    url = get_url(host, client)

    headers = if client.session_token do
      [{"X-Amz-Security-Token", client.session_token}]
    else
      []
    end

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSOrigamiServiceGatewayService.#{action}"} | headers]

    payload = Poison.Encoder.encode(input, %{})
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)

    case HTTPoison.post(url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %HTTPoison.Response{status_code: 200, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end
end
