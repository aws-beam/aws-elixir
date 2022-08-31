# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LicenseManager do
  @moduledoc """
  License Manager makes it easier to manage licenses from software vendors across
  multiple Amazon Web Services accounts and on-premises servers.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
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
  Accepts the specified grant.
  """
  def accept_grant(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AcceptGrant", input, options)
  end

  @doc """
  Checks in the specified license.

  Check in a license when it is no longer in use.
  """
  def check_in_license(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CheckInLicense", input, options)
  end

  @doc """
  Checks out the specified license for offline use.
  """
  def checkout_borrow_license(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CheckoutBorrowLicense", input, options)
  end

  @doc """
  Checks out the specified license.
  """
  def checkout_license(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CheckoutLicense", input, options)
  end

  @doc """
  Creates a grant for the specified license.

  A grant shares the use of license entitlements with specific Amazon Web Services
  accounts.
  """
  def create_grant(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateGrant", input, options)
  end

  @doc """
  Creates a new version of the specified grant.
  """
  def create_grant_version(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateGrantVersion", input, options)
  end

  @doc """
  Creates a license.
  """
  def create_license(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateLicense", input, options)
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
  Creates a new license conversion task.
  """
  def create_license_conversion_task_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "CreateLicenseConversionTaskForResource",
      input,
      options
    )
  end

  @doc """
  Creates a report generator.
  """
  def create_license_manager_report_generator(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "CreateLicenseManagerReportGenerator",
      input,
      options
    )
  end

  @doc """
  Creates a new version of the specified license.
  """
  def create_license_version(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateLicenseVersion", input, options)
  end

  @doc """
  Creates a long-lived token.

  A refresh token is a JWT token used to get an access token. With an access
  token, you can call AssumeRoleWithWebIdentity to get role credentials that you
  can use to call License Manager to manage the specified license.
  """
  def create_token(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateToken", input, options)
  end

  @doc """
  Deletes the specified grant.
  """
  def delete_grant(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteGrant", input, options)
  end

  @doc """
  Deletes the specified license.
  """
  def delete_license(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteLicense", input, options)
  end

  @doc """
  Deletes the specified license configuration.

  You cannot delete a license configuration that is in use.
  """
  def delete_license_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteLicenseConfiguration", input, options)
  end

  @doc """
  Deletes the specified report generator.

  This action deletes the report generator, which stops it from generating future
  reports. The action cannot be reversed. It has no effect on the previous reports
  from this generator.
  """
  def delete_license_manager_report_generator(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DeleteLicenseManagerReportGenerator",
      input,
      options
    )
  end

  @doc """
  Deletes the specified token.

  Must be called in the license home Region.
  """
  def delete_token(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteToken", input, options)
  end

  @doc """
  Extends the expiration date for license consumption.
  """
  def extend_license_consumption(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ExtendLicenseConsumption", input, options)
  end

  @doc """
  Gets a temporary access token to use with AssumeRoleWithWebIdentity.

  Access tokens are valid for one hour.
  """
  def get_access_token(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetAccessToken", input, options)
  end

  @doc """
  Gets detailed information about the specified grant.
  """
  def get_grant(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetGrant", input, options)
  end

  @doc """
  Gets detailed information about the specified license.
  """
  def get_license(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetLicense", input, options)
  end

  @doc """
  Gets detailed information about the specified license configuration.
  """
  def get_license_configuration(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetLicenseConfiguration", input, options)
  end

  @doc """
  Gets information about the specified license type conversion task.
  """
  def get_license_conversion_task(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetLicenseConversionTask", input, options)
  end

  @doc """
  Gets information about the specified report generator.
  """
  def get_license_manager_report_generator(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetLicenseManagerReportGenerator", input, options)
  end

  @doc """
  Gets detailed information about the usage of the specified license.
  """
  def get_license_usage(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetLicenseUsage", input, options)
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
  Lists the grants distributed for the specified license.
  """
  def list_distributed_grants(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDistributedGrants", input, options)
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
  Lists the license type conversion tasks for your account.
  """
  def list_license_conversion_tasks(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListLicenseConversionTasks", input, options)
  end

  @doc """
  Lists the report generators for your account.
  """
  def list_license_manager_report_generators(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListLicenseManagerReportGenerators", input, options)
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
  Lists all versions of the specified license.
  """
  def list_license_versions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListLicenseVersions", input, options)
  end

  @doc """
  Lists the licenses for your account.
  """
  def list_licenses(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListLicenses", input, options)
  end

  @doc """
  Lists grants that are received but not accepted.
  """
  def list_received_grants(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListReceivedGrants", input, options)
  end

  @doc """
  Lists received licenses.
  """
  def list_received_licenses(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListReceivedLicenses", input, options)
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
  Lists your tokens.
  """
  def list_tokens(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTokens", input, options)
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
  Rejects the specified grant.
  """
  def reject_grant(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RejectGrant", input, options)
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
  Updates a report generator.

  After you make changes to a report generator, it starts generating new reports
  within 60 minutes of being updated.
  """
  def update_license_manager_report_generator(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "UpdateLicenseManagerReportGenerator",
      input,
      options
    )
  end

  @doc """
  Adds or removes the specified license configurations for the specified Amazon
  Web Services resource.

  You can update the license specifications of AMIs, instances, and hosts. You
  cannot update the license specifications for launch templates and CloudFormation
  templates, as they send license configurations to the operation that creates the
  resource.
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
