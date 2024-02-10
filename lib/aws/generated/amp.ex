# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Amp do
  @moduledoc """
  Amazon Managed Service for Prometheus is a serverless, Prometheus-compatible
  monitoring service for container metrics that makes it easier to securely
  monitor container environments at scale.

  With Amazon Managed Service for Prometheus, you can use the same open-source
  Prometheus data model and query language that you use today to monitor the
  performance of your containerized workloads, and also enjoy improved
  scalability, availability, and security without having to manage the underlying
  infrastructure.

  For more information about Amazon Managed Service for Prometheus, see the
  [Amazon Managed Service for Prometheus](https://docs.aws.amazon.com/prometheus/latest/userguide/what-is-Amazon-Managed-Service-Prometheus.html)
  User Guide.

  Amazon Managed Service for Prometheus includes two APIs.

    * Use the Amazon Web Services API described in this guide to manage
  Amazon Managed Service for Prometheus resources, such as workspaces, rule
  groups, and alert managers.

    * Use the [Prometheus-compatible API](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-APIReference.html#AMP-APIReference-Prometheus-Compatible-Apis)
  to work within your Prometheus workspace.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2020-08-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "aps",
      global?: false,
      protocol: "rest-json",
      service_id: "amp",
      signature_version: "v4",
      signing_name: "aps",
      target_prefix: nil
    }
  end

  @doc """
  The `CreateAlertManagerDefinition` operation creates the alert manager
  definition in a workspace.

  If a workspace already has an alert manager definition, don't use this operation
  to update it. Instead, use `PutAlertManagerDefinition`.
  """
  def create_alert_manager_definition(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/alertmanager/definition"
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
      202
    )
  end

  @doc """
  The `CreateLoggingConfiguration` operation creates a logging configuration for
  the workspace.

  Use this operation to set the CloudWatch log group to which the logs will be
  published to.
  """
  def create_logging_configuration(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/logging"
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
      202
    )
  end

  @doc """
  The `CreateRuleGroupsNamespace` operation creates a rule groups namespace within
  a workspace.

  A rule groups namespace is associated with exactly one rules file. A workspace
  can have multiple rule groups namespaces.

  Use this operation only to create new rule groups namespaces. To update an
  existing rule groups namespace, use `PutRuleGroupsNamespace`.
  """
  def create_rule_groups_namespace(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/rulegroupsnamespaces"
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
      202
    )
  end

  @doc """
  The `CreateScraper` operation creates a scraper to collect metrics.

  A scraper pulls metrics from Prometheus-compatible sources within an Amazon EKS
  cluster, and sends them to your Amazon Managed Service for Prometheus workspace.
  You can configure the scraper to control what metrics are collected, and what
  transformations are applied prior to sending them to your workspace.

  If needed, an IAM role will be created for you that gives Amazon Managed Service
  for Prometheus access to the metrics in your cluster. For more information, see
  [Using roles for scraping metrics from EKS](https://docs.aws.amazon.com/prometheus/latest/userguide/using-service-linked-roles.html#using-service-linked-roles-prom-scraper)
  in the *Amazon Managed Service for Prometheus User Guide*.

  You cannot update a scraper. If you want to change the configuration of the
  scraper, create a new scraper and delete the old one.

  The `scrapeConfiguration` parameter contains the base64-encoded version of the
  YAML configuration file.

  For more information about collectors, including what metrics are collected, and
  how to configure the scraper, see [Amazon Web Services managed collectors](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector.html)
  in the *Amazon Managed Service for Prometheus User Guide*.
  """
  def create_scraper(%Client{} = client, input, options \\ []) do
    url_path = "/scrapers"
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
      202
    )
  end

  @doc """
  Creates a Prometheus workspace.

  A workspace is a logical space dedicated to the storage and querying of
  Prometheus metrics. You can have one or more workspaces in each Region in your
  account.
  """
  def create_workspace(%Client{} = client, input, options \\ []) do
    url_path = "/workspaces"
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
      202
    )
  end

  @doc """
  Deletes the alert manager definition from a workspace.
  """
  def delete_alert_manager_definition(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/alertmanager/definition"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end

  @doc """
  Deletes the logging configuration for a workspace.
  """
  def delete_logging_configuration(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/logging"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end

  @doc """
  Deletes one rule groups namespace and its associated rule groups definition.
  """
  def delete_rule_groups_namespace(%Client{} = client, name, workspace_id, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/rulegroupsnamespaces/#{AWS.Util.encode_uri(name)}"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end

  @doc """
  The `DeleteScraper` operation deletes one scraper, and stops any metrics
  collection that the scraper performs.
  """
  def delete_scraper(%Client{} = client, scraper_id, input, options \\ []) do
    url_path = "/scrapers/#{AWS.Util.encode_uri(scraper_id)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end

  @doc """
  Deletes an existing workspace.

  When you delete a workspace, the data that has been ingested into it is not
  immediately deleted. It will be permanently deleted within one month.
  """
  def delete_workspace(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

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
      202
    )
  end

  @doc """
  Retrieves the full information about the alert manager definition for a
  workspace.
  """
  def describe_alert_manager_definition(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/alertmanager/definition"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns complete information about the current logging configuration of the
  workspace.
  """
  def describe_logging_configuration(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/logging"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns complete information about one rule groups namespace.

  To retrieve a list of rule groups namespaces, use `ListRuleGroupsNamespaces`.
  """
  def describe_rule_groups_namespace(%Client{} = client, name, workspace_id, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/rulegroupsnamespaces/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The `DescribeScraper` operation displays information about an existing scraper.
  """
  def describe_scraper(%Client{} = client, scraper_id, options \\ []) do
    url_path = "/scrapers/#{AWS.Util.encode_uri(scraper_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about an existing workspace.
  """
  def describe_workspace(%Client{} = client, workspace_id, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The `GetDefaultScraperConfiguration` operation returns the default scraper
  configuration used when Amazon EKS creates a scraper for you.
  """
  def get_default_scraper_configuration(%Client{} = client, options \\ []) do
    url_path = "/scraperconfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of rule groups namespaces in a workspace.
  """
  def list_rule_groups_namespaces(
        %Client{} = client,
        workspace_id,
        max_results \\ nil,
        name \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/rulegroupsnamespaces"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(name) do
        [{"name", name} | query_params]
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

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The `ListScrapers` operation lists all of the scrapers in your account.

  This includes scrapers being created or deleted. You can optionally filter the
  returned list.
  """
  def list_scrapers(
        %Client{} = client,
        filters \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/scrapers"
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
      if !is_nil(filters) do
        [{"", filters} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  The `ListTagsForResource` operation returns the tags that are associated with an
  Amazon Managed Service for Prometheus resource.

  Currently, the only resources that can be tagged are workspaces and rule groups
  namespaces.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all of the Amazon Managed Service for Prometheus workspaces in your
  account.

  This includes workspaces being created or deleted.
  """
  def list_workspaces(
        %Client{} = client,
        alias \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/workspaces"
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
      if !is_nil(alias) do
        [{"alias", alias} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Updates an existing alert manager definition in a workspace.

  If the workspace does not already have an alert manager definition, don't use
  this operation to create it. Instead, use `CreateAlertManagerDefinition`.
  """
  def put_alert_manager_definition(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/alertmanager/definition"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates an existing rule groups namespace within a workspace.

  A rule groups namespace is associated with exactly one rules file. A workspace
  can have multiple rule groups namespaces.

  Use this operation only to update existing rule groups namespaces. To create a
  new rule groups namespace, use `CreateRuleGroupsNamespace`.

  You can't use this operation to add tags to an existing rule groups namespace.
  Instead, use `TagResource`.
  """
  def put_rule_groups_namespace(%Client{} = client, name, workspace_id, input, options \\ []) do
    url_path =
      "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/rulegroupsnamespaces/#{AWS.Util.encode_uri(name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  The `TagResource` operation associates tags with an Amazon Managed Service for
  Prometheus resource.

  The only resources that can be tagged are workspaces and rule groups namespaces.

  If you specify a new tag key for the resource, this tag is appended to the list
  of tags associated with the resource. If you specify a tag key that is already
  associated with the resource, the new tag value that you specify replaces the
  previous value for that tag.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      200
    )
  end

  @doc """
  Removes the specified tags from an Amazon Managed Service for Prometheus
  resource.

  The only resources that can be tagged are workspaces and rule groups namespaces.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

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
      200
    )
  end

  @doc """
  Updates the log group ARN or the workspace ID of the current logging
  configuration.
  """
  def update_logging_configuration(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/logging"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 202)
  end

  @doc """
  Updates the alias of an existing workspace.
  """
  def update_workspace_alias(%Client{} = client, workspace_id, input, options \\ []) do
    url_path = "/workspaces/#{AWS.Util.encode_uri(workspace_id)}/alias"
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
      204
    )
  end
end
