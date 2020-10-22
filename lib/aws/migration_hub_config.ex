# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MigrationHubConfig do
  @moduledoc """
  The AWS Migration Hub home region APIs are available specifically for
  working with your Migration Hub home region. You can use these APIs to
  determine a home region, as well as to create and work with controls that
  describe the home region.

  <ul> <li> You must make API calls for write actions (create, notify,
  associate, disassociate, import, or put) while in your home region, or a
  `HomeRegionNotSetException` error is returned.

  </li> <li> API calls for read actions (list, describe, stop, and delete)
  are permitted outside of your home region.

  </li> <li> If you call a write API outside the home region, an
  `InvalidInputException` is returned.

  </li> <li> You can call `GetHomeRegion` action to obtain the account's
  Migration Hub home region.

  </li> </ul> For specific API usage, see the sections that follow in this
  AWS Migration Hub Home Region API reference.
  """

  @doc """
  This API sets up the home region for the calling account only.
  """
  def create_home_region_control(client, input, options \\ []) do
    request(client, "CreateHomeRegionControl", input, options)
  end

  @doc """
  This API permits filtering on the `ControlId` and `HomeRegion` fields.
  """
  def describe_home_region_controls(client, input, options \\ []) do
    request(client, "DescribeHomeRegionControls", input, options)
  end

  @doc """
  Returns the calling account’s home region, if configured. This API is used
  by other AWS services to determine the regional endpoint for calling AWS
  Application Discovery Service and Migration Hub. You must call
  `GetHomeRegion` at least once before you call any other AWS Application
  Discovery Service and AWS Migration Hub APIs, to obtain the account's
  Migration Hub home region.
  """
  def get_home_region(client, input, options \\ []) do
    request(client, "GetHomeRegion", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "mgh"}
    host = build_host("migrationhub-config", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSMigrationHubMultiAccountService.#{action}"}
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
