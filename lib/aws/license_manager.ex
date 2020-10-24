# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LicenseManager do
  @moduledoc """
  AWS License Manager

  AWS License Manager makes it easier to manage licenses from software
  vendors across multiple AWS accounts and on-premises servers.
  """

  @doc """
  Creates a license configuration.

  A license configuration is an abstraction of a customer license agreement
  that can be consumed and enforced by License Manager. Components include
  specifications for the license type (licensing by instance, socket, CPU, or
  vCPU), allowed tenancy (shared tenancy, Dedicated Instance, Dedicated Host,
  or all of these), license affinity to host (how long a license must be
  associated with a host), and the number of licenses purchased and used.
  """
  def create_license_configuration(client, input, options \\ []) do
    request(client, "CreateLicenseConfiguration", input, options)
  end

  @doc """
  Deletes the specified license configuration.

  You cannot delete a license configuration that is in use.
  """
  def delete_license_configuration(client, input, options \\ []) do
    request(client, "DeleteLicenseConfiguration", input, options)
  end

  @doc """
  Gets detailed information about the specified license configuration.
  """
  def get_license_configuration(client, input, options \\ []) do
    request(client, "GetLicenseConfiguration", input, options)
  end

  @doc """
  Gets the License Manager settings for the current Region.
  """
  def get_service_settings(client, input, options \\ []) do
    request(client, "GetServiceSettings", input, options)
  end

  @doc """
  Lists the resource associations for the specified license configuration.

  Resource associations need not consume licenses from a license
  configuration. For example, an AMI or a stopped instance might not consume
  a license (depending on the license rules).
  """
  def list_associations_for_license_configuration(client, input, options \\ []) do
    request(client, "ListAssociationsForLicenseConfiguration", input, options)
  end

  @doc """
  Lists the license configuration operations that failed.
  """
  def list_failures_for_license_configuration_operations(client, input, options \\ []) do
    request(client, "ListFailuresForLicenseConfigurationOperations", input, options)
  end

  @doc """
  Lists the license configurations for your account.
  """
  def list_license_configurations(client, input, options \\ []) do
    request(client, "ListLicenseConfigurations", input, options)
  end

  @doc """
  Describes the license configurations for the specified resource.
  """
  def list_license_specifications_for_resource(client, input, options \\ []) do
    request(client, "ListLicenseSpecificationsForResource", input, options)
  end

  @doc """
  Lists resources managed using Systems Manager inventory.
  """
  def list_resource_inventory(client, input, options \\ []) do
    request(client, "ListResourceInventory", input, options)
  end

  @doc """
  Lists the tags for the specified license configuration.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Lists all license usage records for a license configuration, displaying
  license consumption details by resource at a selected point in time. Use
  this action to audit the current license consumption for any license
  inventory and configuration.
  """
  def list_usage_for_license_configuration(client, input, options \\ []) do
    request(client, "ListUsageForLicenseConfiguration", input, options)
  end

  @doc """
  Adds the specified tags to the specified license configuration.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Removes the specified tags from the specified license configuration.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Modifies the attributes of an existing license configuration.
  """
  def update_license_configuration(client, input, options \\ []) do
    request(client, "UpdateLicenseConfiguration", input, options)
  end

  @doc """
  Adds or removes the specified license configurations for the specified AWS
  resource.

  You can update the license specifications of AMIs, instances, and hosts.
  You cannot update the license specifications for launch templates and AWS
  CloudFormation templates, as they send license configurations to the
  operation that creates the resource.
  """
  def update_license_specifications_for_resource(client, input, options \\ []) do
    request(client, "UpdateLicenseSpecificationsForResource", input, options)
  end

  @doc """
  Updates License Manager settings for the current Region.
  """
  def update_service_settings(client, input, options \\ []) do
    request(client, "UpdateServiceSettings", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "license-manager"}
    host = build_host("license-manager", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSLicenseManager.#{action}"}
    ]

    payload = AWS.JSON.encode!(input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(url, payload, headers, options)
  end

  defp post(url, payload, headers, options) do
    case AWS.HTTP.request(:post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %{status_code: 200, body: body} = response} ->
        {:ok, AWS.JSON.decode!(body), response}

      {:ok, %{body: body}} ->
        {:error, AWS.JSON.decode!(body)}

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
end
