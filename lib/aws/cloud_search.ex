# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudSearch do
  @moduledoc """
  Amazon CloudSearch Configuration Service

  You use the Amazon CloudSearch configuration service to create, configure,
  and manage search domains. Configuration service requests are submitted
  using the AWS Query protocol. AWS Query requests are HTTP or HTTPS requests
  submitted via HTTP GET or POST with a query parameter named Action.

  The endpoint for configuration service requests is region-specific:
  cloudsearch.*region*.amazonaws.com. For example,
  cloudsearch.us-east-1.amazonaws.com. For a current list of supported
  regions and endpoints, see [Regions and
  Endpoints](http://docs.aws.amazon.com/general/latest/gr/rande.html#cloudsearch_region"
  target="_blank).
  """

  @doc """
  Indexes the search suggestions. For more information, see [Configuring
  Suggesters](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html#configuring-suggesters)
  in the *Amazon CloudSearch Developer Guide*.
  """
  def build_suggesters(client, input, options \\ []) do
    request(client, "BuildSuggesters", input, options)
  end

  @doc """
  Creates a new search domain. For more information, see [Creating a Search
  Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/creating-domains.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def create_domain(client, input, options \\ []) do
    request(client, "CreateDomain", input, options)
  end

  @doc """
  Configures an analysis scheme that can be applied to a `text` or
  `text-array` field to define language-specific text processing options. For
  more information, see [Configuring Analysis
  Schemes](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def define_analysis_scheme(client, input, options \\ []) do
    request(client, "DefineAnalysisScheme", input, options)
  end

  @doc """
  Configures an ``Expression`` for the search domain. Used to create new
  expressions and modify existing ones. If the expression exists, the new
  configuration replaces the old one. For more information, see [Configuring
  Expressions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def define_expression(client, input, options \\ []) do
    request(client, "DefineExpression", input, options)
  end

  @doc """
  Configures an ``IndexField`` for the search domain. Used to create new
  fields and modify existing ones. You must specify the name of the domain
  you are configuring and an index field configuration. The index field
  configuration specifies a unique name, the index field type, and the
  options you want to configure for the field. The options you can specify
  depend on the ``IndexFieldType``. If the field exists, the new
  configuration replaces the old one. For more information, see [Configuring
  Index
  Fields](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def define_index_field(client, input, options \\ []) do
    request(client, "DefineIndexField", input, options)
  end

  @doc """
  Configures a suggester for a domain. A suggester enables you to display
  possible matches before users finish typing their queries. When you
  configure a suggester, you must specify the name of the text field you want
  to search for possible matches and a unique name for the suggester. For
  more information, see [Getting Search
  Suggestions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def define_suggester(client, input, options \\ []) do
    request(client, "DefineSuggester", input, options)
  end

  @doc """
  Deletes an analysis scheme. For more information, see [Configuring Analysis
  Schemes](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def delete_analysis_scheme(client, input, options \\ []) do
    request(client, "DeleteAnalysisScheme", input, options)
  end

  @doc """
  Permanently deletes a search domain and all of its data. Once a domain has
  been deleted, it cannot be recovered. For more information, see [Deleting a
  Search
  Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/deleting-domains.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def delete_domain(client, input, options \\ []) do
    request(client, "DeleteDomain", input, options)
  end

  @doc """
  Removes an ``Expression`` from the search domain. For more information, see
  [Configuring
  Expressions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def delete_expression(client, input, options \\ []) do
    request(client, "DeleteExpression", input, options)
  end

  @doc """
  Removes an ``IndexField`` from the search domain. For more information, see
  [Configuring Index
  Fields](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-index-fields.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def delete_index_field(client, input, options \\ []) do
    request(client, "DeleteIndexField", input, options)
  end

  @doc """
  Deletes a suggester. For more information, see [Getting Search
  Suggestions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def delete_suggester(client, input, options \\ []) do
    request(client, "DeleteSuggester", input, options)
  end

  @doc """
  Gets the analysis schemes configured for a domain. An analysis scheme
  defines language-specific text processing options for a `text` field. Can
  be limited to specific analysis schemes by name. By default, shows all
  analysis schemes and includes any pending changes to the configuration. Set
  the `Deployed` option to `true` to show the active configuration and
  exclude pending changes. For more information, see [Configuring Analysis
  Schemes](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def describe_analysis_schemes(client, input, options \\ []) do
    request(client, "DescribeAnalysisSchemes", input, options)
  end

  @doc """
  Gets the availability options configured for a domain. By default, shows
  the configuration with any pending changes. Set the `Deployed` option to
  `true` to show the active configuration and exclude pending changes. For
  more information, see [Configuring Availability
  Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def describe_availability_options(client, input, options \\ []) do
    request(client, "DescribeAvailabilityOptions", input, options)
  end

  @doc """
  Returns the domain's endpoint options, specifically whether all requests to
  the domain must arrive over HTTPS. For more information, see [Configuring
  Domain Endpoint
  Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-domain-endpoint-options.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def describe_domain_endpoint_options(client, input, options \\ []) do
    request(client, "DescribeDomainEndpointOptions", input, options)
  end

  @doc """
  Gets information about the search domains owned by this account. Can be
  limited to specific domains. Shows all domains by default. To get the
  number of searchable documents in a domain, use the console or submit a
  `matchall` request to your domain's search endpoint:
  `q=matchall&amp;amp;q.parser=structured&amp;amp;size=0`. For more
  information, see [Getting Information about a Search
  Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def describe_domains(client, input, options \\ []) do
    request(client, "DescribeDomains", input, options)
  end

  @doc """
  Gets the expressions configured for the search domain. Can be limited to
  specific expressions by name. By default, shows all expressions and
  includes any pending changes to the configuration. Set the `Deployed`
  option to `true` to show the active configuration and exclude pending
  changes. For more information, see [Configuring
  Expressions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-expressions.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def describe_expressions(client, input, options \\ []) do
    request(client, "DescribeExpressions", input, options)
  end

  @doc """
  Gets information about the index fields configured for the search domain.
  Can be limited to specific fields by name. By default, shows all fields and
  includes any pending changes to the configuration. Set the `Deployed`
  option to `true` to show the active configuration and exclude pending
  changes. For more information, see [Getting Domain
  Information](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-domain-info.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def describe_index_fields(client, input, options \\ []) do
    request(client, "DescribeIndexFields", input, options)
  end

  @doc """
  Gets the scaling parameters configured for a domain. A domain's scaling
  parameters specify the desired search instance type and replication count.
  For more information, see [Configuring Scaling
  Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def describe_scaling_parameters(client, input, options \\ []) do
    request(client, "DescribeScalingParameters", input, options)
  end

  @doc """
  Gets information about the access policies that control access to the
  domain's document and search endpoints. By default, shows the configuration
  with any pending changes. Set the `Deployed` option to `true` to show the
  active configuration and exclude pending changes. For more information, see
  [Configuring Access for a Search
  Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def describe_service_access_policies(client, input, options \\ []) do
    request(client, "DescribeServiceAccessPolicies", input, options)
  end

  @doc """
  Gets the suggesters configured for a domain. A suggester enables you to
  display possible matches before users finish typing their queries. Can be
  limited to specific suggesters by name. By default, shows all suggesters
  and includes any pending changes to the configuration. Set the `Deployed`
  option to `true` to show the active configuration and exclude pending
  changes. For more information, see [Getting Search
  Suggestions](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/getting-suggestions.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def describe_suggesters(client, input, options \\ []) do
    request(client, "DescribeSuggesters", input, options)
  end

  @doc """
  Tells the search domain to start indexing its documents using the latest
  indexing options. This operation must be invoked to activate options whose
  `OptionStatus` is `RequiresIndexDocuments`.
  """
  def index_documents(client, input, options \\ []) do
    request(client, "IndexDocuments", input, options)
  end

  @doc """
  Lists all search domains owned by an account.
  """
  def list_domain_names(client, input, options \\ []) do
    request(client, "ListDomainNames", input, options)
  end

  @doc """
  Configures the availability options for a domain. Enabling the Multi-AZ
  option expands an Amazon CloudSearch domain to an additional Availability
  Zone in the same Region to increase fault tolerance in the event of a
  service disruption. Changes to the Multi-AZ option can take about half an
  hour to become active. For more information, see [Configuring Availability
  Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-availability-options.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def update_availability_options(client, input, options \\ []) do
    request(client, "UpdateAvailabilityOptions", input, options)
  end

  @doc """
  Updates the domain's endpoint options, specifically whether all requests to
  the domain must arrive over HTTPS. For more information, see [Configuring
  Domain Endpoint
  Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-domain-endpoint-options.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def update_domain_endpoint_options(client, input, options \\ []) do
    request(client, "UpdateDomainEndpointOptions", input, options)
  end

  @doc """
  Configures scaling parameters for a domain. A domain's scaling parameters
  specify the desired search instance type and replication count. Amazon
  CloudSearch will still automatically scale your domain based on the volume
  of data and traffic, but not below the desired instance type and
  replication count. If the Multi-AZ option is enabled, these values control
  the resources used per Availability Zone. For more information, see
  [Configuring Scaling
  Options](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-scaling-options.html"
  target="_blank) in the *Amazon CloudSearch Developer Guide*.
  """
  def update_scaling_parameters(client, input, options \\ []) do
    request(client, "UpdateScalingParameters", input, options)
  end

  @doc """
  Configures the access rules that control access to the domain's document
  and search endpoints. For more information, see [ Configuring Access for an
  Amazon CloudSearch
  Domain](http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-access.html"
  target="_blank).
  """
  def update_service_access_policies(client, input, options \\ []) do
    request(client, "UpdateServiceAccessPolicies", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "cloudsearch"}
    host = build_host("cloudsearch", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-www-form-urlencoded"}
    ]

    input = Map.merge(input, %{"Action" => action, "Version" => "2013-01-01"})
    payload = encode!(input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    perform_request(:post, url, payload, headers, options, 200)
  end

  defp encode!(input) do
    {encoder, fun} = Application.get_env(:aws_elixir, :json_encoder, {Poison, :encode!})
    apply(encoder, fun, [input])
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    {client, fun} = Application.get_env(:aws_elixir, :http_client, {Aws.Internal.HttpClient, :request})
    apply(client, fun, [method, url, payload, headers, options, success_status_code])
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

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end
end
