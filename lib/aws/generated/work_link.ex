# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WorkLink do
  @moduledoc """
  Amazon WorkLink is a cloud-based service that provides secure access to internal
  websites and web apps from iOS and Android phones.

  In a single step, your users, such as employees, can access internal websites as
  efficiently as they access any other public website. They enter a URL in their
  web browser, or choose a link to an internal website in an email. Amazon
  WorkLink authenticates the user's access and securely renders authorized
  internal web content in a secure rendering service in the AWS cloud. Amazon
  WorkLink doesn't download or store any internal web content on mobile devices.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2018-09-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "worklink",
      global?: false,
      protocol: "rest-json",
      service_id: "WorkLink",
      signature_version: "v4",
      signing_name: "worklink",
      target_prefix: nil
    }
  end

  @doc """
  Specifies a domain to be associated to Amazon WorkLink.
  """
  def associate_domain(%Client{} = client, input, options \\ []) do
    url_path = "/associateDomain"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Associates a website authorization provider with a specified fleet.

  This is used to authorize users against associated websites in the company
  network.
  """
  def associate_website_authorization_provider(%Client{} = client, input, options \\ []) do
    url_path = "/associateWebsiteAuthorizationProvider"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Imports the root certificate of a certificate authority (CA) used to obtain TLS
  certificates used by associated websites within the company network.
  """
  def associate_website_certificate_authority(%Client{} = client, input, options \\ []) do
    url_path = "/associateWebsiteCertificateAuthority"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a fleet.

  A fleet consists of resources and the configuration that delivers associated
  websites to authorized users who download and set up the Amazon WorkLink app.
  """
  def create_fleet(%Client{} = client, input, options \\ []) do
    url_path = "/createFleet"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Deletes a fleet.

  Prevents users from accessing previously associated websites.
  """
  def delete_fleet(%Client{} = client, input, options \\ []) do
    url_path = "/deleteFleet"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Describes the configuration for delivering audit streams to the customer
  account.
  """
  def describe_audit_stream_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/describeAuditStreamConfiguration"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Describes the networking configuration to access the internal websites
  associated with the specified fleet.
  """
  def describe_company_network_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/describeCompanyNetworkConfiguration"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Provides information about a user's device.
  """
  def describe_device(%Client{} = client, input, options \\ []) do
    url_path = "/describeDevice"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Describes the device policy configuration for the specified fleet.
  """
  def describe_device_policy_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/describeDevicePolicyConfiguration"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Provides information about the domain.
  """
  def describe_domain(%Client{} = client, input, options \\ []) do
    url_path = "/describeDomain"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Provides basic information for the specified fleet, excluding identity provider,
  networking, and device configuration details.
  """
  def describe_fleet_metadata(%Client{} = client, input, options \\ []) do
    url_path = "/describeFleetMetadata"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Describes the identity provider configuration of the specified fleet.
  """
  def describe_identity_provider_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/describeIdentityProviderConfiguration"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Provides information about the certificate authority.
  """
  def describe_website_certificate_authority(%Client{} = client, input, options \\ []) do
    url_path = "/describeWebsiteCertificateAuthority"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Disassociates a domain from Amazon WorkLink.

  End users lose the ability to access the domain with Amazon WorkLink.
  """
  def disassociate_domain(%Client{} = client, input, options \\ []) do
    url_path = "/disassociateDomain"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Disassociates a website authorization provider from a specified fleet.

  After the disassociation, users can't load any associated websites that require
  this authorization provider.
  """
  def disassociate_website_authorization_provider(%Client{} = client, input, options \\ []) do
    url_path = "/disassociateWebsiteAuthorizationProvider"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Removes a certificate authority (CA).
  """
  def disassociate_website_certificate_authority(%Client{} = client, input, options \\ []) do
    url_path = "/disassociateWebsiteCertificateAuthority"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Retrieves a list of devices registered with the specified fleet.
  """
  def list_devices(%Client{} = client, input, options \\ []) do
    url_path = "/listDevices"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Retrieves a list of domains associated to a specified fleet.
  """
  def list_domains(%Client{} = client, input, options \\ []) do
    url_path = "/listDomains"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Retrieves a list of fleets for the current account and Region.
  """
  def list_fleets(%Client{} = client, input, options \\ []) do
    url_path = "/listFleets"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Retrieves a list of tags for the specified resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Retrieves a list of website authorization providers associated with a specified
  fleet.
  """
  def list_website_authorization_providers(%Client{} = client, input, options \\ []) do
    url_path = "/listWebsiteAuthorizationProviders"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Retrieves a list of certificate authorities added for the current account and
  Region.
  """
  def list_website_certificate_authorities(%Client{} = client, input, options \\ []) do
    url_path = "/listWebsiteCertificateAuthorities"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Moves a domain to ACTIVE status if it was in the INACTIVE status.
  """
  def restore_domain_access(%Client{} = client, input, options \\ []) do
    url_path = "/restoreDomainAccess"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Moves a domain to INACTIVE status if it was in the ACTIVE status.
  """
  def revoke_domain_access(%Client{} = client, input, options \\ []) do
    url_path = "/revokeDomainAccess"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Signs the user out from all of their devices.

  The user can sign in again if they have valid credentials.
  """
  def sign_out_user(%Client{} = client, input, options \\ []) do
    url_path = "/signOutUser"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Adds or overwrites one or more tags for the specified resource, such as a fleet.

  Each tag consists of a key and an optional value. If a resource already has a
  tag with the same key, this operation updates its value.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Removes one or more tags from the specified resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the audit stream configuration for the fleet.
  """
  def update_audit_stream_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/updateAuditStreamConfiguration"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the company network configuration for the fleet.
  """
  def update_company_network_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/updateCompanyNetworkConfiguration"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the device policy configuration for the fleet.
  """
  def update_device_policy_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/updateDevicePolicyConfiguration"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates domain metadata, such as DisplayName.
  """
  def update_domain_metadata(%Client{} = client, input, options \\ []) do
    url_path = "/updateDomainMetadata"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates fleet metadata, such as DisplayName.
  """
  def update_fleet_metadata(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateFleetMetadata"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates the identity provider configuration for the fleet.
  """
  def update_identity_provider_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/updateIdentityProviderConfiguration"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
