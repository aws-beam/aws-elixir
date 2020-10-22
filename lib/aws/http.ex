defmodule AWS.HTTP do

  @spec request(binary(), binary(), list(), list(), map(),  pos_integer()) ::
  {:ok, map(), term()}
  | {:error, any()}
  def request(method, url, payload, headers, options, success_status_code \\ nil) do
    do_request(method, url, payload, headers, options, success_status_code)
  end

  defp do_request(method, url, payload, headers, options, nil) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %{status_code: status_code, body: body} = response}
      when status_code == 200 or status_code == 202 or status_code == 204 ->
        {:ok, AWS.JSON.decode!(body), response}

      {:ok, %{body: body}} ->
        error = AWS.JSON.decode!(body)
        {:error, error}

      {:error, %{reason: reason}} ->
        {:error, %{reason: reason}}
    end
  end

  defp do_request(method, url, payload, headers, options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %{status_code: ^success_status_code, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %{status_code: ^success_status_code, body: body} = response} ->
        {:ok, AWS.JSON.decode!(body), response}

      {:ok, %{body: body}} ->
        error = AWS.JSON.decode!(body)
        {:error, error}

      {:error, %{reason: reason}} ->
        {:error, %{reason: reason}}
    end
  end
end
