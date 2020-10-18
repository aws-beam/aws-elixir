# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule Aws.Internal.HttpClient do

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
        {:ok, parse!(body), response}

      {:ok, %{body: body}} ->
        error = parse!(body)
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
        {:ok, parse!(body), response}

      {:ok, %{body: body}} ->
        error = parse!(body)
        {:error, error}

      {:error, %{reason: reason}} ->
        {:error, %{reason: reason}}
    end
  end

  defp parse!(body) do
    {decoder, fun} = Application.get_env(:aws_elixir, :json_decoder, {Poison, :decode!})
    apply(decoder, fun, [body])
  end
end
