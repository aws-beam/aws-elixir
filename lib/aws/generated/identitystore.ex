# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Identitystore do
  @moduledoc """

  """

  @doc """
  Retrieves the group metadata and attributes from `GroupId` in an identity store.
  """
  def describe_group(client, input, options \\ []) do
    request(client, "DescribeGroup", input, options)
  end

  @doc """
  Retrieves the user metadata and attributes from `UserId` in an identity store.
  """
  def describe_user(client, input, options \\ []) do
    request(client, "DescribeUser", input, options)
  end

  @doc """
  Lists the attribute name and value of the group that you specified in the
  search.

  We only support `DisplayName` as a valid filter attribute path currently, and
  filter is required. This API returns minimum attributes, including `GroupId` and
  group `DisplayName` in the response.
  """
  def list_groups(client, input, options \\ []) do
    request(client, "ListGroups", input, options)
  end

  @doc """
  Lists the attribute name and value of the user that you specified in the search.

  We only support `UserName` as a valid filter attribute path currently, and
  filter is required. This API returns minimum attributes, including `UserId` and
  `UserName` in the response.
  """
  def list_users(client, input, options \\ []) do
    request(client, "ListUsers", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "identitystore"}
    host = build_host("identitystore", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSIdentityStore.#{action}"}
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
