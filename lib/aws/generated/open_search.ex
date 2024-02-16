# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.OpenSearch do
  @moduledoc """
  Use the Amazon OpenSearch Service configuration API to create, configure, and
  manage OpenSearch Service domains.

  The endpoint for configuration service requests is Region specific:
  es.*region*.amazonaws.com. For example, es.us-east-1.amazonaws.com. For a
  current list of supported Regions and endpoints, see [Amazon Web Services service
  endpoints](https://docs.aws.amazon.com/general/latest/gr/rande.html#service-regions).
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
  Allows the destination Amazon OpenSearch Service domain owner to accept an
  inbound cross-cluster search connection request.

  For more information, see [Cross-cluster search for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).
  """
  def accept_inbound_connection(%Client{} = client, connection_id, input, options \\ []) do
    url_path =
      "/2021-01-01/opensearch/cc/inboundConnection/#{AWS.Util.encode_uri(connection_id)}/accept"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Creates a new direct-query data source to the specified domain.

  For more information, see [Creating Amazon OpenSearch Service data source integrations with Amazon
  S3](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/direct-query-s3-creating.html).
  """
  def add_data_source(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/dataSource"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Attaches tags to an existing Amazon OpenSearch Service domain.

  Tags are a set of case-sensitive key-value pairs. A domain can have up to 10
  tags. For more information, see [Tagging Amazon OpenSearch Service domains](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-awsresourcetagging.html).
  """
  def add_tags(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/tags"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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

  For more information, see [Custom packages for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).
  """
  def associate_package(%Client{} = client, domain_name, package_id, input, options \\ []) do
    url_path =
      "/2021-01-01/packages/associate/#{AWS.Util.encode_uri(package_id)}/#{AWS.Util.encode_uri(domain_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Provides access to an Amazon OpenSearch Service domain through the use of an
  interface VPC endpoint.
  """
  def authorize_vpc_endpoint_access(%Client{} = client, domain_name, input, options \\ []) do
    url_path =
      "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/authorizeVpcEndpointAccess"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Cancels a pending configuration change on an Amazon OpenSearch Service domain.
  """
  def cancel_domain_config_change(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/config/cancel"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  the domain's `UpdateStatus` is `PENDING_UPDATE`. For more information, see
  [Service software updates in Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html).
  """
  def cancel_service_software_update(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/serviceSoftwareUpdate/cancel"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Creates an Amazon OpenSearch Service domain.

  For more information, see [Creating and managing Amazon OpenSearch Service domains](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/createupdatedomains.html).
  """
  def create_domain(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Creates a new cross-cluster search connection from a source Amazon OpenSearch
  Service domain to a destination domain.

  For more information, see [Cross-cluster search for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).
  """
  def create_outbound_connection(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/cc/outboundConnection"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Creates a package for use with Amazon OpenSearch Service domains.

  For more information, see [Custom packages for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).
  """
  def create_package(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/packages"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Creates an Amazon OpenSearch Service-managed VPC endpoint.
  """
  def create_vpc_endpoint(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/vpcEndpoints"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Deletes a direct-query data source.

  For more information, see [Deleting an Amazon OpenSearch Service data source with Amazon
  S3](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/direct-query-s3-delete.html).
  """
  def delete_data_source(%Client{} = client, domain_name, name, input, options \\ []) do
    url_path =
      "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/dataSource/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Deletes an Amazon OpenSearch Service domain and all of its data.

  You can't recover a domain after you delete it.
  """
  def delete_domain(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Allows the destination Amazon OpenSearch Service domain owner to delete an
  existing inbound cross-cluster search connection.

  For more information, see [Cross-cluster search for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).
  """
  def delete_inbound_connection(%Client{} = client, connection_id, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/cc/inboundConnection/#{AWS.Util.encode_uri(connection_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Allows the source Amazon OpenSearch Service domain owner to delete an existing
  outbound cross-cluster search connection.

  For more information, see [Cross-cluster search for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).
  """
  def delete_outbound_connection(%Client{} = client, connection_id, input, options \\ []) do
    url_path =
      "/2021-01-01/opensearch/cc/outboundConnection/#{AWS.Util.encode_uri(connection_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Deletes an Amazon OpenSearch Service package.

  For more information, see [Custom packages for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).
  """
  def delete_package(%Client{} = client, package_id, input, options \\ []) do
    url_path = "/2021-01-01/packages/#{AWS.Util.encode_uri(package_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Deletes an Amazon OpenSearch Service-managed interface VPC endpoint.
  """
  def delete_vpc_endpoint(%Client{} = client, vpc_endpoint_id, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/vpcEndpoints/#{AWS.Util.encode_uri(vpc_endpoint_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Describes the domain configuration for the specified Amazon OpenSearch Service
  domain, including the domain ID, domain service endpoint, and domain ARN.
  """
  def describe_domain(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the list of optimizations that Auto-Tune has made to an Amazon
  OpenSearch Service domain.

  For more information, see [Auto-Tune for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html).
  """
  def describe_domain_auto_tunes(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/autoTunes"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns information about the current blue/green deployment happening on an
  Amazon OpenSearch Service domain.

  For more information, see [Making configuration changes in Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-configuration-changes.html).
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the configuration of an Amazon OpenSearch Service domain.
  """
  def describe_domain_config(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/config"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns information about domain and node health, the standby Availability Zone,
  number of nodes per Availability Zone, and shard count per node.
  """
  def describe_domain_health(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/health"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns information about domain and nodes, including data nodes, master nodes,
  ultrawarm nodes, Availability Zone(s), standby nodes, node configurations, and
  node states.
  """
  def describe_domain_nodes(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/nodes"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns domain configuration information about the specified Amazon OpenSearch
  Service domains.
  """
  def describe_domains(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain-info"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Describes the progress of a pre-update dry run analysis on an Amazon OpenSearch
  Service domain.

  For more information, see [Determining whether a change will cause a blue/green deployment](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-configuration-changes#dryrun).
  """
  def describe_dry_run_progress(
        %Client{} = client,
        domain_name,
        dry_run_id \\ nil,
        load_dry_run_config \\ nil,
        options \\ []
      ) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/dryRun"
    headers = []
    query_params = []

    query_params =
      if !is_nil(load_dry_run_config) do
        [{"loadDryRunConfig", load_dry_run_config} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(dry_run_id) do
        [{"dryRunId", dry_run_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists all the inbound cross-cluster search connections for a destination
  (remote) Amazon OpenSearch Service domain.

  For more information, see [Cross-cluster search for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).
  """
  def describe_inbound_connections(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/cc/inboundConnection/search"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Describes the instance count, storage, and master node limits for a given
  OpenSearch or Elasticsearch version and instance type.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists all the outbound cross-cluster connections for a local (source) Amazon
  OpenSearch Service domain.

  For more information, see [Cross-cluster search for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cross-cluster-search.html).
  """
  def describe_outbound_connections(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/cc/outboundConnection/search"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Describes all packages available to OpenSearch Service.

  For more information, see [Custom packages for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).
  """
  def describe_packages(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/packages/describe"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Describes the available Amazon OpenSearch Service Reserved Instance offerings
  for a given Region.

  For more information, see [Reserved Instances in Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/ri.html).
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Describes the Amazon OpenSearch Service instances that you have reserved in a
  given Region.

  For more information, see [Reserved Instances in Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/ri.html).
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Describes one or more Amazon OpenSearch Service-managed VPC endpoints.
  """
  def describe_vpc_endpoints(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/vpcEndpoints/describe"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Removes a package from the specified Amazon OpenSearch Service domain.

  The package can't be in use with any OpenSearch index for the dissociation to
  succeed. The package is still available in OpenSearch Service for association
  later. For more information, see [Custom packages for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).
  """
  def dissociate_package(%Client{} = client, domain_name, package_id, input, options \\ []) do
    url_path =
      "/2021-01-01/packages/dissociate/#{AWS.Util.encode_uri(package_id)}/#{AWS.Util.encode_uri(domain_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Returns a map of OpenSearch or Elasticsearch versions and the versions you can
  upgrade them to.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves information about a direct query data source.
  """
  def get_data_source(%Client{} = client, domain_name, name, options \\ []) do
    url_path =
      "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/dataSource/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  The status of the maintenance action.
  """
  def get_domain_maintenance_status(
        %Client{} = client,
        domain_name,
        maintenance_id,
        options \\ []
      ) do
    url_path =
      "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/domainMaintenance"

    headers = []
    query_params = []

    query_params =
      if !is_nil(maintenance_id) do
        [{"maintenanceId", maintenance_id} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns a list of Amazon OpenSearch Service package versions, along with their
  creation time, commit message, and plugin properties (if the package is a zip
  plugin package).

  For more information, see [Custom packages for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves the complete history of the last 10 upgrades performed on an Amazon
  OpenSearch Service domain.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the most recent status of the last upgrade or upgrade eligibility check
  performed on an Amazon OpenSearch Service domain.
  """
  def get_upgrade_status(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2021-01-01/opensearch/upgradeDomain/#{AWS.Util.encode_uri(domain_name)}/status"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists direct-query data sources for a specific domain.

  For more information, see For more information, see [Working with Amazon OpenSearch Service direct queries with Amazon
  S3](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/direct-query-s3.html).
  """
  def list_data_sources(%Client{} = client, domain_name, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/dataSource"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  A list of maintenance actions for the domain.
  """
  def list_domain_maintenances(
        %Client{} = client,
        domain_name,
        action \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        options \\ []
      ) do
    url_path =
      "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/domainMaintenances"

    headers = []
    query_params = []

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
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

    query_params =
      if !is_nil(action) do
        [{"action", action} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns the names of all Amazon OpenSearch Service domains owned by the current
  user in the active Region.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists all Amazon OpenSearch Service domains associated with a given package.

  For more information, see [Custom packages for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists all instance types and available features for a given OpenSearch or
  Elasticsearch version.
  """
  def list_instance_type_details(
        %Client{} = client,
        engine_version,
        domain_name \\ nil,
        instance_type \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        retrieve_a_zs \\ nil,
        options \\ []
      ) do
    url_path = "/2021-01-01/opensearch/instanceTypeDetails/#{AWS.Util.encode_uri(engine_version)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(retrieve_a_zs) do
        [{"retrieveAZs", retrieve_a_zs} | query_params]
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

    query_params =
      if !is_nil(instance_type) do
        [{"instanceType", instance_type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(domain_name) do
        [{"domainName", domain_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists all packages associated with an Amazon OpenSearch Service domain.

  For more information, see [Custom packages for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves a list of configuration changes that are scheduled for a domain.

  These changes can be [service software updates](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html)
  or [blue/green Auto-Tune enhancements](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html#auto-tune-types).
  """
  def list_scheduled_actions(
        %Client{} = client,
        domain_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/scheduledActions"

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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns all resource tags for an Amazon OpenSearch Service domain.

  For more information, see [Tagging Amazon OpenSearch Service domains](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains-awsresourcetagging.html).
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists all versions of OpenSearch and Elasticsearch that Amazon OpenSearch
  Service supports.
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves information about each Amazon Web Services principal that is allowed
  to access a given Amazon OpenSearch Service domain through the use of an
  interface VPC endpoint.
  """
  def list_vpc_endpoint_access(%Client{} = client, domain_name, next_token \\ nil, options \\ []) do
    url_path =
      "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/listVpcEndpointAccess"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves all Amazon OpenSearch Service-managed VPC endpoints in the current
  Amazon Web Services account and Region.
  """
  def list_vpc_endpoints(%Client{} = client, next_token \\ nil, options \\ []) do
    url_path = "/2021-01-01/opensearch/vpcEndpoints"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Retrieves all Amazon OpenSearch Service-managed VPC endpoints associated with a
  particular domain.
  """
  def list_vpc_endpoints_for_domain(
        %Client{} = client,
        domain_name,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/vpcEndpoints"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Allows you to purchase Amazon OpenSearch Service Reserved Instances.
  """
  def purchase_reserved_instance_offering(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/purchaseReservedInstanceOffering"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Allows the remote Amazon OpenSearch Service domain owner to reject an inbound
  cross-cluster connection request.
  """
  def reject_inbound_connection(%Client{} = client, connection_id, input, options \\ []) do
    url_path =
      "/2021-01-01/opensearch/cc/inboundConnection/#{AWS.Util.encode_uri(connection_id)}/reject"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Removes the specified set of tags from an Amazon OpenSearch Service domain.

  For more information, see [ Tagging Amazon OpenSearch Service domains](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/managedomains.html#managedomains-awsresorcetagging).
  """
  def remove_tags(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/tags-removal"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Revokes access to an Amazon OpenSearch Service domain that was provided through
  an interface VPC endpoint.
  """
  def revoke_vpc_endpoint_access(%Client{} = client, domain_name, input, options \\ []) do
    url_path =
      "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/revokeVpcEndpointAccess"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Starts the node maintenance process on the data node.

  These processes can include a node reboot, an Opensearch or Elasticsearch
  process restart, or a Dashboard or Kibana restart.
  """
  def start_domain_maintenance(%Client{} = client, domain_name, input, options \\ []) do
    url_path =
      "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/domainMaintenance"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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

  For more information, see [Service software updates in Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html).
  """
  def start_service_software_update(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/serviceSoftwareUpdate/start"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Updates a direct-query data source.

  For more information, see [Working with Amazon OpenSearch Service data source integrations with Amazon
  S3](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/direct-query-s3-creating.html).
  """
  def update_data_source(%Client{} = client, domain_name, name, input, options \\ []) do
    url_path =
      "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/dataSource/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Modifies the cluster configuration of the specified Amazon OpenSearch Service
  domain.
  """
  def update_domain_config(%Client{} = client, domain_name, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/config"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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

  For more information, see [Custom packages for Amazon OpenSearch Service](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/custom-packages.html).
  """
  def update_package(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/packages/update"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Reschedules a planned domain configuration change for a later time.

  This change can be a scheduled [service software update](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/service-software.html)
  or a [blue/green Auto-Tune enhancement](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/auto-tune.html#auto-tune-types).
  """
  def update_scheduled_action(%Client{} = client, domain_name, input, options \\ []) do
    url_path =
      "/2021-01-01/opensearch/domain/#{AWS.Util.encode_uri(domain_name)}/scheduledAction/update"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end

  @doc """
  Modifies an Amazon OpenSearch Service-managed interface VPC endpoint.
  """
  def update_vpc_endpoint(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/vpcEndpoints/update"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Allows you to either upgrade your Amazon OpenSearch Service domain or perform an
  upgrade eligibility check to a compatible version of OpenSearch or
  Elasticsearch.
  """
  def upgrade_domain(%Client{} = client, input, options \\ []) do
    url_path = "/2021-01-01/opensearch/upgradeDomain"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
