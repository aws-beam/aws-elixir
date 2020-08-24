# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Importexport do
  @moduledoc """
  AWS Import/Export Service

  AWS Import/Export accelerates transferring large amounts of data between
  the AWS cloud and portable storage devices that you mail to us. AWS
  Import/Export transfers data directly onto and off of your storage devices
  using Amazon's high-speed internal network and bypassing the Internet. For
  large data sets, AWS Import/Export is often faster than Internet transfer
  and more cost effective than upgrading your connectivity.
  """

  @doc """
  This operation cancels a specified job. Only the job owner can cancel it.
  The operation fails if the job has already started or is complete.
  """
  def cancel_job(client, input, options \\ []) do
    request(client, "CancelJob", input, options)
  end

  @doc """
  This operation initiates the process of scheduling an upload or download of
  your data. You include in the request a manifest that describes the data
  transfer specifics. The response to the request includes a job ID, which
  you can use in other operations, a signature that you use to identify your
  storage device, and the address where you should ship your storage device.
  """
  def create_job(client, input, options \\ []) do
    request(client, "CreateJob", input, options)
  end

  @doc """
  This operation generates a pre-paid UPS shipping label that you will use to
  ship your device to AWS for processing.
  """
  def get_shipping_label(client, input, options \\ []) do
    request(client, "GetShippingLabel", input, options)
  end

  @doc """
  This operation returns information about a job, including where the job is
  in the processing pipeline, the status of the results, and the signature
  value associated with the job. You can only return information about jobs
  you own.
  """
  def get_status(client, input, options \\ []) do
    request(client, "GetStatus", input, options)
  end

  @doc """
  This operation returns the jobs associated with the requester. AWS
  Import/Export lists the jobs in reverse chronological order based on the
  date of creation. For example if Job Test1 was created 2009Dec30 and Test2
  was created 2010Feb05, the ListJobs operation would return Test2 followed
  by Test1.
  """
  def list_jobs(client, input, options \\ []) do
    request(client, "ListJobs", input, options)
  end

  @doc """
  You use this operation to change the parameters specified in the original
  manifest file by supplying a new manifest file. The manifest file attached
  to this request replaces the original manifest file. You can only use the
  operation after a CreateJob request but before the data transfer starts and
  you can only use it on jobs you own.
  """
  def update_job(client, input, options \\ []) do
    request(client, "UpdateJob", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, action, input, options) do
    client = %{client | service: "importexport",
                        region:  "us-east-1"}
    host = build_host("importexport", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-www-form-urlencoded"}
    ]

    input = Map.merge(input, %{"Action" => action, "Version" => "2010-06-01"})
    payload = AWS.Util.encode_query(input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)

    case HTTPoison.post(url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %HTTPoison.Response{status_code: 200, body: body} = response} ->
        {:ok, AWS.Util.decode_xml(body), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = AWS.Util.decode_xml(body)
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{endpoint: endpoint}) do
    "#{endpoint_prefix}.#{endpoint}"
  end

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end
end
