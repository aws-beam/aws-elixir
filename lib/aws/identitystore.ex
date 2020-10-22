# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Identitystore do
  @moduledoc """

  """

  @doc """
  Retrieves the group metadata and attributes from `GroupId` in an identity
  store.
  """
  def describe_group(client, input, options \\ []) do
    request(client, "DescribeGroup", input, options)
  end

  @doc """
  Retrieves the user metadata and attributes from `UserId` in an identity
  store.
  """
  def describe_user(client, input, options \\ []) do
    request(client, "DescribeUser", input, options)
  end

  @doc """
  Lists the attribute name and value of the group that you specified in the
  search. We only support `DisplayName` as a valid filter attribute path
  currently, and filter is required. This API returns minimum attributes,
  including `GroupId` and group `DisplayName` in the response.
  """
  def list_groups(client, input, options \\ []) do
    request(client, "ListGroups", input, options)
  end

  @doc """
  Lists the attribute name and value of the user that you specified in the
  search. We only support `UserName` as a valid filter attribute path
  currently, and filter is required. This API returns minimum attributes,
  including `UserId` and `UserName` in the response.
  """
  def list_users(client, input, options \\ []) do
    request(client, "ListUsers", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
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

    payload = AWS.JSON.encode!(input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    AWS.HTTP.request(:post, url, payload, headers, options, 200)
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
end
