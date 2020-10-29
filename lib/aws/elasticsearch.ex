# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Elasticsearch do
  @moduledoc """
  Amazon Elasticsearch Configuration Service

  Use the Amazon Elasticsearch Configuration API to create, configure, and
  manage Elasticsearch domains.

  For sample code that uses the Configuration API, see the [Amazon
  Elasticsearch Service Developer
  Guide](https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-configuration-samples.html).
  The guide also contains [sample code for sending signed HTTP requests to
  the Elasticsearch
  APIs](https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-request-signing.html).

  The endpoint for configuration service requests is region-specific:
  es.*region*.amazonaws.com. For example, es.us-east-1.amazonaws.com. For a
  current list of supported regions and endpoints, see [Regions and
  Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticsearch-service-regions"
  target="_blank).
  """

  @doc """
  Allows the destination domain owner to accept an inbound cross-cluster
  search connection request.
  """
  def accept_inbound_cross_cluster_search_connection(client, cross_cluster_search_connection_id, input, options \\ []) do
    path_ = "/2015-01-01/es/ccs/inboundConnection/#{URI.encode(cross_cluster_search_connection_id)}/accept"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Attaches tags to an existing Elasticsearch domain. Tags are a set of
  case-sensitive key value pairs. An Elasticsearch domain may have up to 10
  tags. See [ Tagging Amazon Elasticsearch Service Domains for more
  information.](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-awsresorcetagging"
  target="_blank)
  """
  def add_tags(client, input, options \\ []) do
    path_ = "/2015-01-01/tags"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Associates a package with an Amazon ES domain.
  """
  def associate_package(client, domain_name, package_i_d, input, options \\ []) do
    path_ = "/2015-01-01/packages/associate/#{URI.encode(package_i_d)}/#{URI.encode(domain_name)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Cancels a scheduled service software update for an Amazon ES domain. You
  can only perform this operation before the `AutomatedUpdateDate` and when
  the `UpdateStatus` is in the `PENDING_UPDATE` state.
  """
  def cancel_elasticsearch_service_software_update(client, input, options \\ []) do
    path_ = "/2015-01-01/es/serviceSoftwareUpdate/cancel"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a new Elasticsearch domain. For more information, see [Creating
  Elasticsearch
  Domains](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains"
  target="_blank) in the *Amazon Elasticsearch Service Developer Guide*.
  """
  def create_elasticsearch_domain(client, input, options \\ []) do
    path_ = "/2015-01-01/es/domain"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Creates a new cross-cluster search connection from a source domain to a
  destination domain.
  """
  def create_outbound_cross_cluster_search_connection(client, input, options \\ []) do
    path_ = "/2015-01-01/es/ccs/outboundConnection"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Create a package for use with Amazon ES domains.
  """
  def create_package(client, input, options \\ []) do
    path_ = "/2015-01-01/packages"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Permanently deletes the specified Elasticsearch domain and all of its data.
  Once a domain is deleted, it cannot be recovered.
  """
  def delete_elasticsearch_domain(client, domain_name, input, options \\ []) do
    path_ = "/2015-01-01/es/domain/#{URI.encode(domain_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Deletes the service-linked role that Elasticsearch Service uses to manage
  and maintain VPC domains. Role deletion will fail if any existing VPC
  domains use the role. You must delete any such Elasticsearch domains before
  deleting the role. See [Deleting Elasticsearch Service
  Role](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-enabling-slr"
  target="_blank) in *VPC Endpoints for Amazon Elasticsearch Service
  Domains*.
  """
  def delete_elasticsearch_service_role(client, input, options \\ []) do
    path_ = "/2015-01-01/es/role"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Allows the destination domain owner to delete an existing inbound
  cross-cluster search connection.
  """
  def delete_inbound_cross_cluster_search_connection(client, cross_cluster_search_connection_id, input, options \\ []) do
    path_ = "/2015-01-01/es/ccs/inboundConnection/#{URI.encode(cross_cluster_search_connection_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Allows the source domain owner to delete an existing outbound cross-cluster
  search connection.
  """
  def delete_outbound_cross_cluster_search_connection(client, cross_cluster_search_connection_id, input, options \\ []) do
    path_ = "/2015-01-01/es/ccs/outboundConnection/#{URI.encode(cross_cluster_search_connection_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Delete the package.
  """
  def delete_package(client, package_i_d, input, options \\ []) do
    path_ = "/2015-01-01/packages/#{URI.encode(package_i_d)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns domain configuration information about the specified Elasticsearch
  domain, including the domain ID, domain endpoint, and domain ARN.
  """
  def describe_elasticsearch_domain(client, domain_name, options \\ []) do
    path_ = "/2015-01-01/es/domain/#{URI.encode(domain_name)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Provides cluster configuration information about the specified
  Elasticsearch domain, such as the state, creation date, update version, and
  update date for cluster options.
  """
  def describe_elasticsearch_domain_config(client, domain_name, options \\ []) do
    path_ = "/2015-01-01/es/domain/#{URI.encode(domain_name)}/config"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns domain configuration information about the specified Elasticsearch
  domains, including the domain ID, domain endpoint, and domain ARN.
  """
  def describe_elasticsearch_domains(client, input, options \\ []) do
    path_ = "/2015-01-01/es/domain-info"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Describe Elasticsearch Limits for a given InstanceType and
  ElasticsearchVersion. When modifying existing Domain, specify the `
  `DomainName` ` to know what Limits are supported for modifying.
  """
  def describe_elasticsearch_instance_type_limits(client, elasticsearch_version, instance_type, domain_name \\ nil, options \\ []) do
    path_ = "/2015-01-01/es/instanceTypeLimits/#{URI.encode(elasticsearch_version)}/#{URI.encode(instance_type)}"
    headers = []
    query_ = []
    query_ = if !is_nil(domain_name) do
      [{"domainName", domain_name} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists all the inbound cross-cluster search connections for a destination
  domain.
  """
  def describe_inbound_cross_cluster_search_connections(client, input, options \\ []) do
    path_ = "/2015-01-01/es/ccs/inboundConnection/search"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Lists all the outbound cross-cluster search connections for a source
  domain.
  """
  def describe_outbound_cross_cluster_search_connections(client, input, options \\ []) do
    path_ = "/2015-01-01/es/ccs/outboundConnection/search"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Describes all packages available to Amazon ES. Includes options for
  filtering, limiting the number of results, and pagination.
  """
  def describe_packages(client, input, options \\ []) do
    path_ = "/2015-01-01/packages/describe"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Lists available reserved Elasticsearch instance offerings.
  """
  def describe_reserved_elasticsearch_instance_offerings(client, max_results \\ nil, next_token \\ nil, reserved_elasticsearch_instance_offering_id \\ nil, options \\ []) do
    path_ = "/2015-01-01/es/reservedInstanceOfferings"
    headers = []
    query_ = []
    query_ = if !is_nil(reserved_elasticsearch_instance_offering_id) do
      [{"offeringId", reserved_elasticsearch_instance_offering_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns information about reserved Elasticsearch instances for this
  account.
  """
  def describe_reserved_elasticsearch_instances(client, max_results \\ nil, next_token \\ nil, reserved_elasticsearch_instance_id \\ nil, options \\ []) do
    path_ = "/2015-01-01/es/reservedInstances"
    headers = []
    query_ = []
    query_ = if !is_nil(reserved_elasticsearch_instance_id) do
      [{"reservationId", reserved_elasticsearch_instance_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Dissociates a package from the Amazon ES domain.
  """
  def dissociate_package(client, domain_name, package_i_d, input, options \\ []) do
    path_ = "/2015-01-01/packages/dissociate/#{URI.encode(package_i_d)}/#{URI.encode(domain_name)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Returns a list of upgrade compatible Elastisearch versions. You can
  optionally pass a ` `DomainName` ` to get all upgrade compatible
  Elasticsearch versions for that specific domain.
  """
  def get_compatible_elasticsearch_versions(client, domain_name \\ nil, options \\ []) do
    path_ = "/2015-01-01/es/compatibleVersions"
    headers = []
    query_ = []
    query_ = if !is_nil(domain_name) do
      [{"domainName", domain_name} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves the complete history of the last 10 upgrades that were performed
  on the domain.
  """
  def get_upgrade_history(client, domain_name, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/2015-01-01/es/upgradeDomain/#{URI.encode(domain_name)}/history"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Retrieves the latest status of the last upgrade or upgrade eligibility
  check that was performed on the domain.
  """
  def get_upgrade_status(client, domain_name, options \\ []) do
    path_ = "/2015-01-01/es/upgradeDomain/#{URI.encode(domain_name)}/status"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns the name of all Elasticsearch domains owned by the current user's
  account.
  """
  def list_domain_names(client, options \\ []) do
    path_ = "/2015-01-01/domain"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists all Amazon ES domains associated with the package.
  """
  def list_domains_for_package(client, package_i_d, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/2015-01-01/packages/#{URI.encode(package_i_d)}/domains"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  List all Elasticsearch instance types that are supported for given
  ElasticsearchVersion
  """
  def list_elasticsearch_instance_types(client, elasticsearch_version, domain_name \\ nil, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/2015-01-01/es/instanceTypes/#{URI.encode(elasticsearch_version)}"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    query_ = if !is_nil(domain_name) do
      [{"domainName", domain_name} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  List all supported Elasticsearch versions
  """
  def list_elasticsearch_versions(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/2015-01-01/es/versions"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Lists all packages associated with the Amazon ES domain.
  """
  def list_packages_for_domain(client, domain_name, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/2015-01-01/domain/#{URI.encode(domain_name)}/packages"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Returns all tags for the given Elasticsearch domain.
  """
  def list_tags(client, a_r_n, options \\ []) do
    path_ = "/2015-01-01/tags/"
    headers = []
    query_ = []
    query_ = if !is_nil(a_r_n) do
      [{"arn", a_r_n} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, nil)
  end

  @doc """
  Allows you to purchase reserved Elasticsearch instances.
  """
  def purchase_reserved_elasticsearch_instance_offering(client, input, options \\ []) do
    path_ = "/2015-01-01/es/purchaseReservedInstanceOffering"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Allows the destination domain owner to reject an inbound cross-cluster
  search connection request.
  """
  def reject_inbound_cross_cluster_search_connection(client, cross_cluster_search_connection_id, input, options \\ []) do
    path_ = "/2015-01-01/es/ccs/inboundConnection/#{URI.encode(cross_cluster_search_connection_id)}/reject"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, nil)
  end

  @doc """
  Removes the specified set of tags from the specified Elasticsearch domain.
  """
  def remove_tags(client, input, options \\ []) do
    path_ = "/2015-01-01/tags-removal"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Schedules a service software update for an Amazon ES domain.
  """
  def start_elasticsearch_service_software_update(client, input, options \\ []) do
    path_ = "/2015-01-01/es/serviceSoftwareUpdate/start"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Modifies the cluster configuration of the specified Elasticsearch domain,
  setting as setting the instance type and the number of instances.
  """
  def update_elasticsearch_domain_config(client, domain_name, input, options \\ []) do
    path_ = "/2015-01-01/es/domain/#{URI.encode(domain_name)}/config"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Allows you to either upgrade your domain or perform an Upgrade eligibility
  check to a compatible Elasticsearch version.
  """
  def upgrade_elasticsearch_domain(client, input, options \\ []) do
    path_ = "/2015-01-01/es/upgradeDomain"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "es"}
    host = build_host("es", client)
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
    case AWS.Client.request(client, method, url, payload, headers, options) do
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
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: ^success_status_code, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
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

  defp encode!(client, payload, format \\ :json) do
    AWS.Client.encode!(client, payload, format)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
