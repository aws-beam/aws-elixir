# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Elasticsearch do
  @moduledoc """
  Amazon Elasticsearch Configuration Service

  Use the Amazon Elasticsearch Configuration API to create, configure, and manage
  Elasticsearch domains.

  For sample code that uses the Configuration API, see the [Amazon Elasticsearch Service Developer
  Guide](https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-configuration-samples.html).
  The guide also contains [sample code for sending signed HTTP requests to the Elasticsearch
  APIs](https://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-request-signing.html).

  The endpoint for configuration service requests is region-specific:
  es.*region*.amazonaws.com. For example, es.us-east-1.amazonaws.com. For a
  current list of supported regions and endpoints, see [Regions and Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html#elasticsearch-service-regions).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2015-01-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "es",
      global?: false,
      protocol: "rest-json",
      service_id: "Elasticsearch Service",
      signature_version: "v4",
      signing_name: "es",
      target_prefix: nil
    }
  end

  @doc """
  Allows the destination domain owner to accept an inbound cross-cluster search
  connection request.
  """
  def accept_inbound_cross_cluster_search_connection(
        %Client{} = client,
        cross_cluster_search_connection_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2015-01-01/es/ccs/inboundConnection/#{AWS.Util.encode_uri(cross_cluster_search_connection_id)}/accept"

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
  Attaches tags to an existing Elasticsearch domain.

  Tags are a set of case-sensitive key value pairs. An Elasticsearch domain may
  have up to 10 tags. See [ Tagging Amazon Elasticsearch Service Domains for more information.](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-awsresorcetagging)
  """
  def add_tags(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/tags"
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
  Associates a package with an Amazon ES domain.
  """
  def associate_package(%Client{} = client, domain_name, package_id, input, options \\ []) do
    url_path =
      "/2015-01-01/packages/associate/#{AWS.Util.encode_uri(package_id)}/#{AWS.Util.encode_uri(domain_name)}"

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
  Cancels a scheduled service software update for an Amazon ES domain.

  You can only perform this operation before the `AutomatedUpdateDate` and when
  the `UpdateStatus` is in the `PENDING_UPDATE` state.
  """
  def cancel_elasticsearch_service_software_update(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/es/serviceSoftwareUpdate/cancel"
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
  Creates a new Elasticsearch domain.

  For more information, see [Creating Elasticsearch Domains](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-createupdatedomains.html#es-createdomains)
  in the *Amazon Elasticsearch Service Developer Guide*.
  """
  def create_elasticsearch_domain(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/es/domain"
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
  Creates a new cross-cluster search connection from a source domain to a
  destination domain.
  """
  def create_outbound_cross_cluster_search_connection(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/es/ccs/outboundConnection"
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
  Create a package for use with Amazon ES domains.
  """
  def create_package(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/packages"
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
  Permanently deletes the specified Elasticsearch domain and all of its data.

  Once a domain is deleted, it cannot be recovered.
  """
  def delete_elasticsearch_domain(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/2015-01-01/es/domain/#{AWS.Util.encode_uri(domain_name)}"
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
  Deletes the service-linked role that Elasticsearch Service uses to manage and
  maintain VPC domains.

  Role deletion will fail if any existing VPC domains use the role. You must
  delete any such Elasticsearch domains before deleting the role. See [Deleting Elasticsearch Service
  Role](http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-vpc.html#es-enabling-slr)
  in *VPC Endpoints for Amazon Elasticsearch Service Domains*.
  """
  def delete_elasticsearch_service_role(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/es/role"
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
  Allows the destination domain owner to delete an existing inbound cross-cluster
  search connection.
  """
  def delete_inbound_cross_cluster_search_connection(
        %Client{} = client,
        cross_cluster_search_connection_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2015-01-01/es/ccs/inboundConnection/#{AWS.Util.encode_uri(cross_cluster_search_connection_id)}"

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
  Allows the source domain owner to delete an existing outbound cross-cluster
  search connection.
  """
  def delete_outbound_cross_cluster_search_connection(
        %Client{} = client,
        cross_cluster_search_connection_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2015-01-01/es/ccs/outboundConnection/#{AWS.Util.encode_uri(cross_cluster_search_connection_id)}"

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
  Delete the package.
  """
  def delete_package(%Client{} = client, package_id, input, options \\ []) do
    url_path = "/2015-01-01/packages/#{AWS.Util.encode_uri(package_id)}"
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
  Provides scheduled Auto-Tune action details for the Elasticsearch domain, such
  as Auto-Tune action type, description, severity, and scheduled date.
  """
  def describe_domain_auto_tunes(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2015-01-01/es/domain/#{AWS.Util.encode_uri(domain_name)}/autoTunes"
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
    url_path = "/2015-01-01/es/domain/#{AWS.Util.encode_uri(domain_name)}/progress"
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
  Returns domain configuration information about the specified Elasticsearch
  domain, including the domain ID, domain endpoint, and domain ARN.
  """
  def describe_elasticsearch_domain(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2015-01-01/es/domain/#{AWS.Util.encode_uri(domain_name)}"
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
  Provides cluster configuration information about the specified Elasticsearch
  domain, such as the state, creation date, update version, and update date for
  cluster options.
  """
  def describe_elasticsearch_domain_config(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2015-01-01/es/domain/#{AWS.Util.encode_uri(domain_name)}/config"
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
  Returns domain configuration information about the specified Elasticsearch
  domains, including the domain ID, domain endpoint, and domain ARN.
  """
  def describe_elasticsearch_domains(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/es/domain-info"
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
  Describe Elasticsearch Limits for a given InstanceType and ElasticsearchVersion.

  When modifying existing Domain, specify the ` `DomainName` ` to know what Limits
  are supported for modifying.
  """
  def describe_elasticsearch_instance_type_limits(
        %Client{} = client,
        elasticsearch_version,
        instance_type,
        domain_name \\ nil,
        options \\ []
      ) do
    url_path =
      "/2015-01-01/es/instanceTypeLimits/#{AWS.Util.encode_uri(elasticsearch_version)}/#{AWS.Util.encode_uri(instance_type)}"

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
  Lists all the inbound cross-cluster search connections for a destination domain.
  """
  def describe_inbound_cross_cluster_search_connections(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/es/ccs/inboundConnection/search"
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
  Lists all the outbound cross-cluster search connections for a source domain.
  """
  def describe_outbound_cross_cluster_search_connections(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/es/ccs/outboundConnection/search"
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
  Describes all packages available to Amazon ES.

  Includes options for filtering, limiting the number of results, and pagination.
  """
  def describe_packages(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/packages/describe"
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
  Lists available reserved Elasticsearch instance offerings.
  """
  def describe_reserved_elasticsearch_instance_offerings(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        reserved_elasticsearch_instance_offering_id \\ nil,
        options \\ []
      ) do
    url_path = "/2015-01-01/es/reservedInstanceOfferings"
    headers = []
    query_params = []

    query_params =
      if !is_nil(reserved_elasticsearch_instance_offering_id) do
        [{"offeringId", reserved_elasticsearch_instance_offering_id} | query_params]
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
  Returns information about reserved Elasticsearch instances for this account.
  """
  def describe_reserved_elasticsearch_instances(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        reserved_elasticsearch_instance_id \\ nil,
        options \\ []
      ) do
    url_path = "/2015-01-01/es/reservedInstances"
    headers = []
    query_params = []

    query_params =
      if !is_nil(reserved_elasticsearch_instance_id) do
        [{"reservationId", reserved_elasticsearch_instance_id} | query_params]
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
  Dissociates a package from the Amazon ES domain.
  """
  def dissociate_package(%Client{} = client, domain_name, package_id, input, options \\ []) do
    url_path =
      "/2015-01-01/packages/dissociate/#{AWS.Util.encode_uri(package_id)}/#{AWS.Util.encode_uri(domain_name)}"

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
  Returns a list of upgrade compatible Elastisearch versions.

  You can optionally pass a ` `DomainName` ` to get all upgrade compatible
  Elasticsearch versions for that specific domain.
  """
  def get_compatible_elasticsearch_versions(%Client{} = client, domain_name \\ nil, options \\ []) do
    url_path = "/2015-01-01/es/compatibleVersions"
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
  Returns a list of versions of the package, along with their creation time and
  commit message.
  """
  def get_package_version_history(
        %Client{} = client,
        package_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2015-01-01/packages/#{AWS.Util.encode_uri(package_id)}/history"
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
  Retrieves the complete history of the last 10 upgrades that were performed on
  the domain.
  """
  def get_upgrade_history(
        %Client{} = client,
        domain_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2015-01-01/es/upgradeDomain/#{AWS.Util.encode_uri(domain_name)}/history"
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
  that was performed on the domain.
  """
  def get_upgrade_status(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2015-01-01/es/upgradeDomain/#{AWS.Util.encode_uri(domain_name)}/status"
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
  Returns the name of all Elasticsearch domains owned by the current user's
  account.
  """
  def list_domain_names(%Client{} = client, engine_type \\ nil, options \\ []) do
    url_path = "/2015-01-01/domain"
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
  Lists all Amazon ES domains associated with the package.
  """
  def list_domains_for_package(
        %Client{} = client,
        package_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2015-01-01/packages/#{AWS.Util.encode_uri(package_id)}/domains"
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
  List all Elasticsearch instance types that are supported for given
  ElasticsearchVersion
  """
  def list_elasticsearch_instance_types(
        %Client{} = client,
        elasticsearch_version,
        domain_name \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2015-01-01/es/instanceTypes/#{AWS.Util.encode_uri(elasticsearch_version)}"
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
  List all supported Elasticsearch versions
  """
  def list_elasticsearch_versions(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2015-01-01/es/versions"
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
  Lists all packages associated with the Amazon ES domain.
  """
  def list_packages_for_domain(
        %Client{} = client,
        domain_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2015-01-01/domain/#{AWS.Util.encode_uri(domain_name)}/packages"
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
  Returns all tags for the given Elasticsearch domain.
  """
  def list_tags(%Client{} = client, arn, options \\ []) do
    url_path = "/2015-01-01/tags/"
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
  Allows you to purchase reserved Elasticsearch instances.
  """
  def purchase_reserved_elasticsearch_instance_offering(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/es/purchaseReservedInstanceOffering"
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
  Allows the destination domain owner to reject an inbound cross-cluster search
  connection request.
  """
  def reject_inbound_cross_cluster_search_connection(
        %Client{} = client,
        cross_cluster_search_connection_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2015-01-01/es/ccs/inboundConnection/#{AWS.Util.encode_uri(cross_cluster_search_connection_id)}/reject"

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
  Removes the specified set of tags from the specified Elasticsearch domain.
  """
  def remove_tags(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/tags-removal"
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
  Schedules a service software update for an Amazon ES domain.
  """
  def start_elasticsearch_service_software_update(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/es/serviceSoftwareUpdate/start"
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
  Modifies the cluster configuration of the specified Elasticsearch domain,
  setting as setting the instance type and the number of instances.
  """
  def update_elasticsearch_domain_config(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/2015-01-01/es/domain/#{AWS.Util.encode_uri(domain_name)}/config"
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
  Updates a package for use with Amazon ES domains.
  """
  def update_package(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/packages/update"
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
  Allows you to either upgrade your domain or perform an Upgrade eligibility check
  to a compatible Elasticsearch version.
  """
  def upgrade_elasticsearch_domain(%Client{} = client, input, options \\ []) do
    url_path = "/2015-01-01/es/upgradeDomain"
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
