# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WorkLink do
  @moduledoc """
  Amazon WorkLink is a cloud-based service that provides secure access to
  internal websites and web apps from iOS and Android phones. In a single
  step, your users, such as employees, can access internal websites as
  efficiently as they access any other public website. They enter a URL in
  their web browser, or choose a link to an internal website in an email.
  Amazon WorkLink authenticates the user's access and securely renders
  authorized internal web content in a secure rendering service in the AWS
  cloud. Amazon WorkLink doesn't download or store any internal web content
  on mobile devices.
  """

  @doc """
  Specifies a domain to be associated to Amazon WorkLink.
  """
  def associate_domain(client, input, options \\ []) do
    path_ = "/associateDomain"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Associates a website authorization provider with a specified fleet. This is
  used to authorize users against associated websites in the company network.
  """
  def associate_website_authorization_provider(client, input, options \\ []) do
    path_ = "/associateWebsiteAuthorizationProvider"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Imports the root certificate of a certificate authority (CA) used to obtain
  TLS certificates used by associated websites within the company network.
  """
  def associate_website_certificate_authority(client, input, options \\ []) do
    path_ = "/associateWebsiteCertificateAuthority"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a fleet. A fleet consists of resources and the configuration that
  delivers associated websites to authorized users who download and set up
  the Amazon WorkLink app.
  """
  def create_fleet(client, input, options \\ []) do
    path_ = "/createFleet"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes a fleet. Prevents users from accessing previously associated
  websites.
  """
  def delete_fleet(client, input, options \\ []) do
    path_ = "/deleteFleet"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Describes the configuration for delivering audit streams to the customer
  account.
  """
  def describe_audit_stream_configuration(client, input, options \\ []) do
    path_ = "/describeAuditStreamConfiguration"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Describes the networking configuration to access the internal websites
  associated with the specified fleet.
  """
  def describe_company_network_configuration(client, input, options \\ []) do
    path_ = "/describeCompanyNetworkConfiguration"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Provides information about a user's device.
  """
  def describe_device(client, input, options \\ []) do
    path_ = "/describeDevice"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Describes the device policy configuration for the specified fleet.
  """
  def describe_device_policy_configuration(client, input, options \\ []) do
    path_ = "/describeDevicePolicyConfiguration"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Provides information about the domain.
  """
  def describe_domain(client, input, options \\ []) do
    path_ = "/describeDomain"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Provides basic information for the specified fleet, excluding identity
  provider, networking, and device configuration details.
  """
  def describe_fleet_metadata(client, input, options \\ []) do
    path_ = "/describeFleetMetadata"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Describes the identity provider configuration of the specified fleet.
  """
  def describe_identity_provider_configuration(client, input, options \\ []) do
    path_ = "/describeIdentityProviderConfiguration"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Provides information about the certificate authority.
  """
  def describe_website_certificate_authority(client, input, options \\ []) do
    path_ = "/describeWebsiteCertificateAuthority"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Disassociates a domain from Amazon WorkLink. End users lose the ability to
  access the domain with Amazon WorkLink.
  """
  def disassociate_domain(client, input, options \\ []) do
    path_ = "/disassociateDomain"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Disassociates a website authorization provider from a specified fleet.
  After the disassociation, users can't load any associated websites that
  require this authorization provider.
  """
  def disassociate_website_authorization_provider(client, input, options \\ []) do
    path_ = "/disassociateWebsiteAuthorizationProvider"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes a certificate authority (CA).
  """
  def disassociate_website_certificate_authority(client, input, options \\ []) do
    path_ = "/disassociateWebsiteCertificateAuthority"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Retrieves a list of devices registered with the specified fleet.
  """
  def list_devices(client, input, options \\ []) do
    path_ = "/listDevices"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Retrieves a list of domains associated to a specified fleet.
  """
  def list_domains(client, input, options \\ []) do
    path_ = "/listDomains"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Retrieves a list of fleets for the current account and Region.
  """
  def list_fleets(client, input, options \\ []) do
    path_ = "/listFleets"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Retrieves a list of tags for the specified resource.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves a list of website authorization providers associated with a
  specified fleet.
  """
  def list_website_authorization_providers(client, input, options \\ []) do
    path_ = "/listWebsiteAuthorizationProviders"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Retrieves a list of certificate authorities added for the current account
  and Region.
  """
  def list_website_certificate_authorities(client, input, options \\ []) do
    path_ = "/listWebsiteCertificateAuthorities"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Moves a domain to ACTIVE status if it was in the INACTIVE status.
  """
  def restore_domain_access(client, input, options \\ []) do
    path_ = "/restoreDomainAccess"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Moves a domain to INACTIVE status if it was in the ACTIVE status.
  """
  def revoke_domain_access(client, input, options \\ []) do
    path_ = "/revokeDomainAccess"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Signs the user out from all of their devices. The user can sign in again if
  they have valid credentials.
  """
  def sign_out_user(client, input, options \\ []) do
    path_ = "/signOutUser"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Adds or overwrites one or more tags for the specified resource, such as a
  fleet. Each tag consists of a key and an optional value. If a resource
  already has a tag with the same key, this operation updates its value.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes one or more tags from the specified resource.
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    {query_, input} =
      [
        {"TagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the audit stream configuration for the fleet.
  """
  def update_audit_stream_configuration(client, input, options \\ []) do
    path_ = "/updateAuditStreamConfiguration"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the company network configuration for the fleet.
  """
  def update_company_network_configuration(client, input, options \\ []) do
    path_ = "/updateCompanyNetworkConfiguration"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the device policy configuration for the fleet.
  """
  def update_device_policy_configuration(client, input, options \\ []) do
    path_ = "/updateDevicePolicyConfiguration"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates domain metadata, such as DisplayName.
  """
  def update_domain_metadata(client, input, options \\ []) do
    path_ = "/updateDomainMetadata"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates fleet metadata, such as DisplayName.
  """
  def update_fleet_metadata(client, input, options \\ []) do
    path_ = "/UpdateFleetMetadata"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Updates the identity provider configuration for the fleet.
  """
  def update_identity_provider_configuration(client, input, options \\ []) do
    path_ = "/updateIdentityProviderConfiguration"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "worklink"}
    host = build_host("worklink", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, nil) do
    case do_request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when status_code in [200, 202, 204] ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

      error = {:error, _reason} -> error
    end
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case do_request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: ^success_status_code, body: body} = response} ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

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

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, [], _client) do
    url
  end
  defp add_query(url, query, client) do
    querystring = encode!(client, query, :query)
    "#{url}?#{querystring}"
  end

  defp do_request(client, method, url, payload, headers, options) do
    {mod, fun} = Map.fetch(client, :http_client)
    apply(mod, fun, [method, url, payload, headers, options])
  end

  defp encode!(client, payload, type \\ :json) do
    {mod, fun} = client
      |> Map.fetch(:encode)
      |> Map.fetch(type)
    apply(mod, fun, [payload])
  end

  defp decode!(client, payload) do
    {mod, fun} = client
      |> Map.fetch(:decode)
      |> Map.fetch(:json)
    apply(mod, fun, [payload])
  end
end
