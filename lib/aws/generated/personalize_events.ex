# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PersonalizeEvents do
  @moduledoc """
  Amazon Personalize can consume real-time user event data, such as *stream* or
  *click* data, and use it for model training either alone or combined with
  historical data.

  For more information see `recording-events`.
  """

  @doc """
  Records user interaction event data.

  For more information see `event-record-api`.
  """
  def put_events(client, input, options \\ []) do
    path_ = "/events"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Adds one or more items to an Items dataset.

  For more information see `importing-items`.
  """
  def put_items(client, input, options \\ []) do
    path_ = "/items"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Adds one or more users to a Users dataset.

  For more information see `importing-users`.
  """
  def put_users(client, input, options \\ []) do
    path_ = "/users"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "personalize"}
    host = build_host("personalize-events", client)
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
