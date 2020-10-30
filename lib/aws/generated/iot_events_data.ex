# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTEventsData do
  @moduledoc """
  AWS IoT Events monitors your equipment or device fleets for failures or
  changes in operation, and triggers actions when such events occur. AWS IoT
  Events Data API commands enable you to send inputs to detectors, list
  detectors, and view or update a detector's status.
  """

  @doc """
  Sends a set of messages to the AWS IoT Events system. Each message payload
  is transformed into the input you specify (`"inputName"`) and ingested into
  any detectors that monitor that input. If multiple messages are sent, the
  order in which the messages are processed isn't guaranteed. To guarantee
  ordering, you must send messages one at a time and wait for a successful
  response.
  """
  def batch_put_message(client, input, options \\ []) do
    path_ = "/inputs/messages"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates the state, variable values, and timer settings of one or more
  detectors (instances) of a specified detector model.
  """
  def batch_update_detector(client, input, options \\ []) do
    path_ = "/detectors"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Returns information about the specified detector (instance).
  """
  def describe_detector(client, detector_model_name, key_value \\ nil, options \\ []) do
    path_ = "/detectors/#{URI.encode(detector_model_name)}/keyValues/"
    headers = []
    query_ = []
    query_ = if !is_nil(key_value) do
      [{"keyValue", key_value} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists detectors (the instances of a detector model).
  """
  def list_detectors(client, detector_model_name, max_results \\ nil, next_token \\ nil, state_name \\ nil, options \\ []) do
    path_ = "/detectors/#{URI.encode(detector_model_name)}"
    headers = []
    query_ = []
    query_ = if !is_nil(state_name) do
      [{"stateName", state_name} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "ioteventsdata"}
    host = build_host("data.iotevents", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when is_nil(success_status_code) and status_code in [200, 202, 204]
      when status_code == success_status_code ->
        body = if(body != "", do: decode!(client, body))
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

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, [], _client) do
    url
  end
  defp add_query(url, query, client) do
    querystring = encode!(client, query, :query)
    "#{url}?#{querystring}"
  end

  defp encode!(client, payload, format \\ :json) do
    AWS.Client.encode!(client, payload, format)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
