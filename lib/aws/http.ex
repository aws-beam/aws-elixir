defmodule AWS.HTTP do

  @spec request(atom(), binary(), binary(), list(), map()) ::
  {:ok, map(), term()}
  | {:error, any()}
  def request(method, url, payload, headers, options) do
    do_request(method, url, payload, headers, options)
  end

  defp do_request(method, url, payload, headers, options) do
    HTTPoison.request(method, url, payload, headers, options)
  end
end
