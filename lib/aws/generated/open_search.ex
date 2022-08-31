# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.OpenSearch do
  @moduledoc """
  Amazon OpenSearch Configuration Service

  Use the Amazon OpenSearch configuration API to create, configure, and manage
  Amazon OpenSearch Service domains.

  For sample code that uses the configuration API, see the [ Amazon OpenSearch Service Developer
  Guide](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/opensearch-configuration-samples.html).
  The guide also contains [ sample code for sending signed HTTP requests to the OpenSearch
  APIs](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/request-signing.html).

  The endpoint for configuration service requests is region-specific:
  es.*region*.amazonaws.com. For example, es.us-east-1.amazonaws.com. For a
  current list of supported regions and endpoints, see [Regions and Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html#service-regions).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2021-01-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "es",
      global?: false,
      protocol: "rest-json",
      service_id: "OpenSearch",
      signature_version: "v4",
      signing_name: "es",
      target_prefix: nil
    }
  end

  @doc """
  Allows the remote domain owner to accept an inbound cross-cluster connection
  request.
  """
  def accept_inbound_connection(%Client{} = client, connection_id, input, options \\ []) do
    url_path =
      "/2021-01-01/opensearch/cc/inboundConnection/#{AWS.Util.encode_uri(connection_id)}/accept"

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
      nil
    )
  end

  @doc """
  Attaches tags to an existing domain.

  Tags are a set of case-sensitive key value pairs. An domain can have up to 10
  tags. See [ Tagging Amazon OpenSearch Service domains](http://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains.html#managedomains-awsresorcetagging)
  for more information.
  """
  def add_tags(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/tags"
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
  Associates a package with an Amazon OpenSearch Service domain.
  """
  def associate_package(%Client{} = client, domain_name, package_id, input, options \\ []) do
    url_path =
      "/2021-01-01/packages/associate/#{AWS.Util.encode_uri(package_id)}/#{AWS.Util.encode_uri(domain_name)}"

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
  Cancels a scheduled service software update for an Amazon OpenSearch Service
  domain.

  You can only perform this operation before the `AutomatedUpdateDate` and when
  the `UpdateStatus` is in the `PENDING_UPDATE` state.
  """
  def cancel_service_software_update(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/serviceSoftwareUpdate/cancel"
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
  Creates a new Amazon OpenSearch Service domain.

  For more information, see [Creating and managing Amazon OpenSearch Service domains
  ](http://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html)
  in the *Amazon OpenSearch Service Developer Guide*.
  """
  def create_domain(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain"
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
  Creates a new cross-cluster connection from a local OpenSearch domain to a
  remote OpenSearch domain.
  """
  def create_outbound_connection(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/cc/outboundConnection"
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
  Create a package for use with Amazon OpenSearch Service domains.
  """
  def create_package(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/packages"
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
  Permanently deletes the specified domain and all of its data.

  Once a domain is deleted, it cannot be recovered.
  """
  def delete_domain(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}"
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
      nil
    )
  end

  @doc """
  Allows the remote domain owner to delete an existing inbound cross-cluster
  connection.
  """
  def delete_inbound_connection(%Client{} = client, connection_id, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/cc/inboundConnection/#{AWS.Util.encode_uri(connection_id)}"
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
      nil
    )
  end

  @doc """
  Allows the local domain owner to delete an existing outbound cross-cluster
  connection.
  """
  def delete_outbound_connection(%Client{} = client, connection_id, input, options \\ []) do
    url_path =
      "/2021-01-01/opensearch/cc/outboundConnection/#{AWS.Util.encode_uri(connection_id)}"

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
      nil
    )
  end

  @doc """
  Deletes the package.
  """
  def delete_package(%Client{} = client, package_id, input, options \\ []) do
    url_path = "/2021-01-01/packages/#{AWS.Util.encode_uri(package_id)}"
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
      nil
    )
  end

  @doc """
  Returns domain configuration information about the specified domain, including
  the domain ID, domain endpoint, and domain ARN.
  """
  def describe_domain(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}"
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
  Provides scheduled Auto-Tune action details for the domain, such as Auto-Tune
  action type, description, severity, and scheduled date.
  """
  def describe_domain_auto_tunes(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/autoTunes"
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
  Returns information about the current blue/green deployment happening on a
  domain, including a change ID, status, and progress stages.
  """
  def describe_domain_change_progress(
        %Client{} = client,
        domain_name,
        change_id \\ nil,
        options \\ []
      ) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/progress"
    headers = []
    query_params = []

    query_params =
      if !is_nil(change_id) do
        [{"changeid", change_id} | query_params]
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
      nil
    )
  end

  @doc """
  Provides cluster configuration information about the specified domain, such as
  the state, creation date, update version, and update date for cluster options.
  """
  def describe_domain_config(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/config"
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
  Returns domain configuration information about the specified domains, including
  the domain ID, domain endpoint, and domain ARN.
  """
  def describe_domains(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain-info"
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
  Lists all the inbound cross-cluster connections for a remote domain.
  """
  def describe_inbound_connections(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/cc/inboundConnection/search"
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
  Describe the limits for a given instance type and OpenSearch or Elasticsearch
  version.

  When modifying an existing domain, specify the ` `DomainName` ` to see which
  limits you can modify.
  """
  def describe_instance_type_limits(
        %Client{} = client,
        engine_version,
        instance_type,
        domain_name \\ nil,
        options \\ []
      ) do
    url_path =
      "/2021-01-01/opensearch/instanceTypeLimits/#{AWS.Util.encode_uri(engine_version)}/#{AWS.Util.encode_uri(instance_type)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(domain_name) do
        [{"domainName", domain_name} | query_params]
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
      nil
    )
  end

  @doc """
  Lists all the outbound cross-cluster connections for a local domain.
  """
  def describe_outbound_connections(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/cc/outboundConnection/search"
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
  Describes all packages available to Amazon OpenSearch Service domains.

  Includes options for filtering, limiting the number of results, and pagination.
  """
  def describe_packages(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/packages/describe"
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
  Lists available reserved OpenSearch instance offerings.
  """
  def describe_reserved_instance_offerings(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        reserved_instance_offering_id \\ nil,
        options \\ []
      ) do
    url_path = "/2021-01-01/opensearch/reservedInstanceOfferings"
    headers = []
    query_params = []

    query_params =
      if !is_nil(reserved_instance_offering_id) do
        [{"offeringId", reserved_instance_offering_id} | query_params]
      else
        query_params
      end

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
      nil
    )
  end

  @doc """
  Returns information about reserved OpenSearch instances for this account.
  """
  def describe_reserved_instances(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        reserved_instance_id \\ nil,
        options \\ []
      ) do
    url_path = "/2021-01-01/opensearch/reservedInstances"
    headers = []
    query_params = []

    query_params =
      if !is_nil(reserved_instance_id) do
        [{"reservationId", reserved_instance_id} | query_params]
      else
        query_params
      end

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
      nil
    )
  end

  @doc """
  Dissociates a package from the Amazon OpenSearch Service domain.
  """
  def dissociate_package(%Client{} = client, domain_name, package_id, input, options \\ []) do
    url_path =
      "/2021-01-01/packages/dissociate/#{AWS.Util.encode_uri(package_id)}/#{AWS.Util.encode_uri(domain_name)}"

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
  Returns a list of upgrade-compatible versions of OpenSearch/Elasticsearch.

  You can optionally pass a ` `DomainName` ` to get all upgrade-compatible
  versions of OpenSearch/Elasticsearch for that specific domain.
  """
  def get_compatible_versions(%Client{} = client, domain_name \\ nil, options \\ []) do
    url_path = "/2021-01-01/opensearch/compatibleVersions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(domain_name) do
        [{"domainName", domain_name} | query_params]
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
      nil
    )
  end

  @doc """
  Returns a list of package versions, along with their creation time and commit
  message.
  """
  def get_package_version_history(
        %Client{} = client,
        package_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2021-01-01/packages/#{AWS.Util.encode_uri(package_id)}/history"
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
      nil
    )
  end

  @doc """
  Retrieves the complete history of the last 10 upgrades performed on the domain.
  """
  def get_upgrade_history(
        %Client{} = client,
        domain_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2021-01-01/opensearch/upgradeDomain/#{AWS.Util.encode_uri(domain_name)}/history"
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
      nil
    )
  end

  @doc """
  Retrieves the latest status of the last upgrade or upgrade eligibility check
  performed on the domain.
  """
  def get_upgrade_status(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2021-01-01/opensearch/upgradeDomain/#{AWS.Util.encode_uri(domain_name)}/status"
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
  Returns the names of all domains owned by the current user's account.
  """
  def list_domain_names(%Client{} = client, engine_type \\ nil, options \\ []) do
    url_path = "/2021-01-01/domain"
    headers = []
    query_params = []

    query_params =
      if !is_nil(engine_type) do
        [{"engineType", engine_type} | query_params]
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
      nil
    )
  end

  @doc """
  Lists all Amazon OpenSearch Service domains associated with the package.
  """
  def list_domains_for_package(
        %Client{} = client,
        package_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2021-01-01/packages/#{AWS.Util.encode_uri(package_id)}/domains"
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
      nil
    )
  end

  def list_instance_type_details(
        %Client{} = client,
        engine_version,
        domain_name \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2021-01-01/opensearch/instanceTypeDetails/#{AWS.Util.encode_uri(engine_version)}"
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

    query_params =
      if !is_nil(domain_name) do
        [{"domainName", domain_name} | query_params]
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
      nil
    )
  end

  @doc """
  Lists all packages associated with the Amazon OpenSearch Service domain.
  """
  def list_packages_for_domain(
        %Client{} = client,
        domain_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2021-01-01/domain/#{AWS.Util.encode_uri(domain_name)}/packages"
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
      nil
    )
  end

  @doc """
  Returns all tags for the given domain.
  """
  def list_tags(%Client{} = client, arn, options \\ []) do
    url_path = "/2021-01-01/tags/"
    headers = []
    query_params = []

    query_params =
      if !is_nil(arn) do
        [{"arn", arn} | query_params]
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
      nil
    )
  end

  @doc """
  List all supported versions of OpenSearch and Elasticsearch.
  """
  def list_versions(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/2021-01-01/opensearch/versions"
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
      nil
    )
  end

  @doc """
  Allows you to purchase reserved OpenSearch instances.
  """
  def purchase_reserved_instance_offering(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/purchaseReservedInstanceOffering"
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
  Allows the remote domain owner to reject an inbound cross-cluster connection
  request.
  """
  def reject_inbound_connection(%Client{} = client, connection_id, input, options \\ []) do
    url_path =
      "/2021-01-01/opensearch/cc/inboundConnection/#{AWS.Util.encode_uri(connection_id)}/reject"

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
      nil
    )
  end

  @doc """
  Removes the specified set of tags from the given domain.
  """
  def remove_tags(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/tags-removal"
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
  Schedules a service software update for an Amazon OpenSearch Service domain.
  """
  def start_service_software_update(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/serviceSoftwareUpdate/start"
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
  Modifies the cluster configuration of the specified domain, such as setting the
  instance type and the number of instances.
  """
  def update_domain_config(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/config"
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
  Updates a package for use with Amazon OpenSearch Service domains.
  """
  def update_package(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/packages/update"
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
  Allows you to either upgrade your domain or perform an upgrade eligibility check
  to a compatible version of OpenSearch or Elasticsearch.
  """
  def upgrade_domain(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/upgradeDomain"
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
