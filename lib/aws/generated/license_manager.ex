# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LicenseManager do
  @moduledoc """
  AWS License Manager

  AWS License Manager makes it easier to manage licenses from software vendors
  across multiple AWS accounts and on-premises servers.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2018-08-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "license-manager",
      global?: false,
      protocol: "json",
      service_id: "License Manager",
      signature_version: "v4",
      signing_name: "license-manager",
      target_prefix: "AWSLicenseManager"
    }
  end

  @doc """
  Creates a license configuration.

  A license configuration is an abstraction of a customer license agreement that
  can be consumed and enforced by License Manager. Components include
  specifications for the license type (licensing by instance, socket, CPU, or
  vCPU), allowed tenancy (shared tenancy, Dedicated Instance, Dedicated Host, or
  all of these), license affinity to host (how long a license must be associated
  with a host), and the number of licenses purchased and used.
  """
  def create_license_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateLicenseConfiguration", input, options)
  end

  @doc """
  Deletes the specified license configuration.

  You cannot delete a license configuration that is in use.
  """
  def delete_license_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteLicenseConfiguration", input, options)
  end

  @doc """
  Gets detailed information about the specified license configuration.
  """
  def get_license_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetLicenseConfiguration", input, options)
  end

  @doc """
  Gets the License Manager settings for the current Region.
  """
  def get_service_settings(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetServiceSettings", input, options)
  end

  @doc """
  Lists the resource associations for the specified license configuration.

  Resource associations need not consume licenses from a license configuration.
  For example, an AMI or a stopped instance might not consume a license (depending
  on the license rules).
  """
  def list_associations_for_license_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "ListAssociationsForLicenseConfiguration",
      input,
      options
    )
  end

  @doc """
  Lists the license configuration operations that failed.
  """
  def list_failures_for_license_configuration_operations(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "ListFailuresForLicenseConfigurationOperations",
      input,
      options
    )
  end

  @doc """
  Lists the license configurations for your account.
  """
  def list_license_configurations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListLicenseConfigurations", input, options)
  end

  @doc """
  Describes the license configurations for the specified resource.
  """
  def list_license_specifications_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "ListLicenseSpecificationsForResource",
      input,
      options
    )
  end

  @doc """
  Lists resources managed using Systems Manager inventory.
  """
  def list_resource_inventory(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListResourceInventory", input, options)
  end

  @doc """
  Lists the tags for the specified license configuration.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Lists all license usage records for a license configuration, displaying license
  consumption details by resource at a selected point in time.

  Use this action to audit the current license consumption for any license
  inventory and configuration.
  """
  def list_usage_for_license_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListUsageForLicenseConfiguration", input, options)
  end

  @doc """
  Adds the specified tags to the specified license configuration.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Removes the specified tags from the specified license configuration.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Modifies the attributes of an existing license configuration.
  """
  def update_license_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateLicenseConfiguration", input, options)
  end

  @doc """
  Adds or removes the specified license configurations for the specified AWS
  resource.

  You can update the license specifications of AMIs, instances, and hosts. You
  cannot update the license specifications for launch templates and AWS
  CloudFormation templates, as they send license configurations to the operation
  that creates the resource.
  """
  def update_license_specifications_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "UpdateLicenseSpecificationsForResource",
      input,
      options
    )
  end

  @doc """
  Updates License Manager settings for the current Region.
  """
  def update_service_settings(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateServiceSettings", input, options)
  end
end