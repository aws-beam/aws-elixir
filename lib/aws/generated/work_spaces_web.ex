# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WorkSpacesWeb do
  @moduledoc """
  WorkSpaces Web is a low cost, fully managed WorkSpace built specifically to
  facilitate secure, web-based workloads.

  WorkSpaces Web makes it easy for customers to safely provide their employees
  with access to internal websites and SaaS web applications without the
  administrative burden of appliances or specialized client software. WorkSpaces
  Web provides simple policy tools tailored for user interactions, while
  offloading common tasks like capacity management, scaling, and maintaining
  browser images.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2020-07-08",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "workspaces-web",
      global?: false,
      protocol: "rest-json",
      service_id: "WorkSpaces Web",
      signature_version: "v4",
      signing_name: "workspaces-web",
      target_prefix: nil
    }
  end

  @doc """
  Associates a browser settings resource with a web portal.
  """
  def associate_browser_settings(%Client{} = client, portal_arn, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/browserSettings"
    headers = []

    {query_params, input} =
      [
        {"browserSettingsArn", "browserSettingsArn"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associates a network settings resource with a web portal.
  """
  def associate_network_settings(%Client{} = client, portal_arn, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/networkSettings"
    headers = []

    {query_params, input} =
      [
        {"networkSettingsArn", "networkSettingsArn"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associates a trust store with a web portal.
  """
  def associate_trust_store(%Client{} = client, portal_arn, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/trustStores"
    headers = []

    {query_params, input} =
      [
        {"trustStoreArn", "trustStoreArn"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associates a user settings resource with a web portal.
  """
  def associate_user_settings(%Client{} = client, portal_arn, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/userSettings"
    headers = []

    {query_params, input} =
      [
        {"userSettingsArn", "userSettingsArn"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a browser settings resource that can be associated with a web portal.

  Once associated with a web portal, browser settings control how the browser will
  behave once a user starts a streaming session for the web portal.
  """
  def create_browser_settings(%Client{} = client, input, options \\ []) do
    url_path = "/browserSettings"
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
      200
    )
  end

  @doc """
  Creates an identity provider resource that is then associated with a web portal.
  """
  def create_identity_provider(%Client{} = client, input, options \\ []) do
    url_path = "/identityProviders"
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
      200
    )
  end

  @doc """
  Creates a network settings resource that can be associated with a web portal.

  Once associated with a web portal, network settings define how streaming
  instances will connect with your specified VPC.
  """
  def create_network_settings(%Client{} = client, input, options \\ []) do
    url_path = "/networkSettings"
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
      200
    )
  end

  @doc """
  Creates a web portal.
  """
  def create_portal(%Client{} = client, input, options \\ []) do
    url_path = "/portals"
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
      200
    )
  end

  @doc """
  Creates a trust store that can be associated with a web portal.

  A trust store contains certificate authority (CA) certificates. Once associated
  with a web portal, the browser in a streaming session will recognize
  certificates that have been issued using any of the CAs in the trust store. If
  your organization has internal websites that use certificates issued by private
  CAs, you should add the private CA certificate to the trust store.
  """
  def create_trust_store(%Client{} = client, input, options \\ []) do
    url_path = "/trustStores"
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
      200
    )
  end

  @doc """
  Creates a user settings resource that can be associated with a web portal.

  Once associated with a web portal, user settings control how users can transfer
  data between a streaming session and the their local devices.
  """
  def create_user_settings(%Client{} = client, input, options \\ []) do
    url_path = "/userSettings"
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
      200
    )
  end

  @doc """
  Deletes browser settings.
  """
  def delete_browser_settings(%Client{} = client, browser_settings_arn, input, options \\ []) do
    url_path = "/browserSettings/#{AWS.Util.encode_multi_segment_uri(browser_settings_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the identity provider.
  """
  def delete_identity_provider(%Client{} = client, identity_provider_arn, input, options \\ []) do
    url_path = "/identityProviders/#{AWS.Util.encode_multi_segment_uri(identity_provider_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes network settings.
  """
  def delete_network_settings(%Client{} = client, network_settings_arn, input, options \\ []) do
    url_path = "/networkSettings/#{AWS.Util.encode_multi_segment_uri(network_settings_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a web portal.
  """
  def delete_portal(%Client{} = client, portal_arn, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the trust store.
  """
  def delete_trust_store(%Client{} = client, trust_store_arn, input, options \\ []) do
    url_path = "/trustStores/#{AWS.Util.encode_multi_segment_uri(trust_store_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes user settings.
  """
  def delete_user_settings(%Client{} = client, user_settings_arn, input, options \\ []) do
    url_path = "/userSettings/#{AWS.Util.encode_multi_segment_uri(user_settings_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disassociates browser settings from a web portal.
  """
  def disassociate_browser_settings(%Client{} = client, portal_arn, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/browserSettings"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disassociates network settings from a web portal.
  """
  def disassociate_network_settings(%Client{} = client, portal_arn, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/networkSettings"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disassociates a trust store from a web portal.
  """
  def disassociate_trust_store(%Client{} = client, portal_arn, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/trustStores"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disassociates user settings from a web portal.
  """
  def disassociate_user_settings(%Client{} = client, portal_arn, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/userSettings"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Gets browser settings.
  """
  def get_browser_settings(%Client{} = client, browser_settings_arn, options \\ []) do
    url_path = "/browserSettings/#{AWS.Util.encode_multi_segment_uri(browser_settings_arn)}"
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
      200
    )
  end

  @doc """
  Gets the identity provider.
  """
  def get_identity_provider(%Client{} = client, identity_provider_arn, options \\ []) do
    url_path = "/identityProviders/#{AWS.Util.encode_multi_segment_uri(identity_provider_arn)}"
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
      200
    )
  end

  @doc """
  Gets the network settings.
  """
  def get_network_settings(%Client{} = client, network_settings_arn, options \\ []) do
    url_path = "/networkSettings/#{AWS.Util.encode_multi_segment_uri(network_settings_arn)}"
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
      200
    )
  end

  @doc """
  Gets the web portal.
  """
  def get_portal(%Client{} = client, portal_arn, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}"
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
      200
    )
  end

  @doc """
  Gets the service provider metadata.
  """
  def get_portal_service_provider_metadata(%Client{} = client, portal_arn, options \\ []) do
    url_path = "/portalIdp/#{AWS.Util.encode_multi_segment_uri(portal_arn)}"
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
      200
    )
  end

  @doc """
  Gets the trust store.
  """
  def get_trust_store(%Client{} = client, trust_store_arn, options \\ []) do
    url_path = "/trustStores/#{AWS.Util.encode_multi_segment_uri(trust_store_arn)}"
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
      200
    )
  end

  @doc """
  Gets the trust store certificate.
  """
  def get_trust_store_certificate(%Client{} = client, trust_store_arn, thumbprint, options \\ []) do
    url_path = "/trustStores/#{AWS.Util.encode_multi_segment_uri(trust_store_arn)}/certificate"
    headers = []
    query_params = []

    query_params =
      if !is_nil(thumbprint) do
        [{"thumbprint", thumbprint} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Gets user settings.
  """
  def get_user_settings(%Client{} = client, user_settings_arn, options \\ []) do
    url_path = "/userSettings/#{AWS.Util.encode_multi_segment_uri(user_settings_arn)}"
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
      200
    )
  end

  @doc """
  Retrieves a list of browser settings.
  """
  def list_browser_settings(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/browserSettings"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Retrieves a list of identity providers for a specific web portal.
  """
  def list_identity_providers(
        %Client{} = client,
        portal_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}/identityProviders"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Retrieves a list of network settings.
  """
  def list_network_settings(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/networkSettings"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Retrieves a list or web portals.
  """
  def list_portals(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/portals"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Retrieves a list of tags for a resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_multi_segment_uri(resource_arn)}"
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
      200
    )
  end

  @doc """
  Retrieves a list of trust store certificates.
  """
  def list_trust_store_certificates(
        %Client{} = client,
        trust_store_arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/trustStores/#{AWS.Util.encode_multi_segment_uri(trust_store_arn)}/certificates"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Retrieves a list of trust stores.
  """
  def list_trust_stores(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/trustStores"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Retrieves a list of user settings.
  """
  def list_user_settings(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/userSettings"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Adds or overwrites one or more tags for the specified resource.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_multi_segment_uri(resource_arn)}"
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
      200
    )
  end

  @doc """
  Removes one or more tags from the specified resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_multi_segment_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
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
      200
    )
  end

  @doc """
  Updates browser settings.
  """
  def update_browser_settings(%Client{} = client, browser_settings_arn, input, options \\ []) do
    url_path = "/browserSettings/#{AWS.Util.encode_multi_segment_uri(browser_settings_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the identity provider.
  """
  def update_identity_provider(%Client{} = client, identity_provider_arn, input, options \\ []) do
    url_path = "/identityProviders/#{AWS.Util.encode_multi_segment_uri(identity_provider_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates network settings.
  """
  def update_network_settings(%Client{} = client, network_settings_arn, input, options \\ []) do
    url_path = "/networkSettings/#{AWS.Util.encode_multi_segment_uri(network_settings_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a web portal.
  """
  def update_portal(%Client{} = client, portal_arn, input, options \\ []) do
    url_path = "/portals/#{AWS.Util.encode_multi_segment_uri(portal_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the trust store.
  """
  def update_trust_store(%Client{} = client, trust_store_arn, input, options \\ []) do
    url_path = "/trustStores/#{AWS.Util.encode_multi_segment_uri(trust_store_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the user settings.
  """
  def update_user_settings(%Client{} = client, user_settings_arn, input, options \\ []) do
    url_path = "/userSettings/#{AWS.Util.encode_multi_segment_uri(user_settings_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
