# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ApplicationInsights do
  @moduledoc """
  Amazon CloudWatch Application Insights for .NET and SQL Server

  Amazon CloudWatch Application Insights for .NET and SQL Server is a service
  that helps you detect common problems with your .NET and SQL Server-based
  applications. It enables you to pinpoint the source of issues in your
  applications (built with technologies such as Microsoft IIS, .NET, and
  Microsoft SQL Server), by providing key insights into detected problems.

  After you onboard your application, CloudWatch Application Insights for
  .NET and SQL Server identifies, recommends, and sets up metrics and logs.
  It continuously analyzes and correlates your metrics and logs for unusual
  behavior to surface actionable problems with your application. For example,
  if your application is slow and unresponsive and leading to HTTP 500 errors
  in your Application Load Balancer (ALB), Application Insights informs you
  that a memory pressure problem with your SQL Server database is occurring.
  It bases this analysis on impactful metrics and log errors.
  """

  @doc """
  Adds an application that is created from a resource group.
  """
  def create_application(client, input, options \\ []) do
    request(client, "CreateApplication", input, options)
  end

  @doc """
  Creates a custom component by grouping similar standalone instances to
  monitor.
  """
  def create_component(client, input, options \\ []) do
    request(client, "CreateComponent", input, options)
  end

  @doc """
  Adds an log pattern to a `LogPatternSet`.
  """
  def create_log_pattern(client, input, options \\ []) do
    request(client, "CreateLogPattern", input, options)
  end

  @doc """
  Removes the specified application from monitoring. Does not delete the
  application.
  """
  def delete_application(client, input, options \\ []) do
    request(client, "DeleteApplication", input, options)
  end

  @doc """
  Ungroups a custom component. When you ungroup custom components, all
  applicable monitors that are set up for the component are removed and the
  instances revert to their standalone status.
  """
  def delete_component(client, input, options \\ []) do
    request(client, "DeleteComponent", input, options)
  end

  @doc """
  Removes the specified log pattern from a `LogPatternSet`.
  """
  def delete_log_pattern(client, input, options \\ []) do
    request(client, "DeleteLogPattern", input, options)
  end

  @doc """
  Describes the application.
  """
  def describe_application(client, input, options \\ []) do
    request(client, "DescribeApplication", input, options)
  end

  @doc """
  Describes a component and lists the resources that are grouped together in
  a component.
  """
  def describe_component(client, input, options \\ []) do
    request(client, "DescribeComponent", input, options)
  end

  @doc """
  Describes the monitoring configuration of the component.
  """
  def describe_component_configuration(client, input, options \\ []) do
    request(client, "DescribeComponentConfiguration", input, options)
  end

  @doc """
  Describes the recommended monitoring configuration of the component.
  """
  def describe_component_configuration_recommendation(client, input, options \\ []) do
    request(client, "DescribeComponentConfigurationRecommendation", input, options)
  end

  @doc """
  Describe a specific log pattern from a `LogPatternSet`.
  """
  def describe_log_pattern(client, input, options \\ []) do
    request(client, "DescribeLogPattern", input, options)
  end

  @doc """
  Describes an anomaly or error with the application.
  """
  def describe_observation(client, input, options \\ []) do
    request(client, "DescribeObservation", input, options)
  end

  @doc """
  Describes an application problem.
  """
  def describe_problem(client, input, options \\ []) do
    request(client, "DescribeProblem", input, options)
  end

  @doc """
  Describes the anomalies or errors associated with the problem.
  """
  def describe_problem_observations(client, input, options \\ []) do
    request(client, "DescribeProblemObservations", input, options)
  end

  @doc """
  Lists the IDs of the applications that you are monitoring.
  """
  def list_applications(client, input, options \\ []) do
    request(client, "ListApplications", input, options)
  end

  @doc """
  Lists the auto-grouped, standalone, and custom components of the
  application.
  """
  def list_components(client, input, options \\ []) do
    request(client, "ListComponents", input, options)
  end

  @doc """
  Lists the INFO, WARN, and ERROR events for periodic configuration updates
  performed by Application Insights. Examples of events represented are:

  <ul> <li> INFO: creating a new alarm or updating an alarm threshold.

  </li> <li> WARN: alarm not created due to insufficient data points used to
  predict thresholds.

  </li> <li> ERROR: alarm not created due to permission errors or exceeding
  quotas.

  </li> </ul>
  """
  def list_configuration_history(client, input, options \\ []) do
    request(client, "ListConfigurationHistory", input, options)
  end

  @doc """
  Lists the log pattern sets in the specific application.
  """
  def list_log_pattern_sets(client, input, options \\ []) do
    request(client, "ListLogPatternSets", input, options)
  end

  @doc """
  Lists the log patterns in the specific log `LogPatternSet`.
  """
  def list_log_patterns(client, input, options \\ []) do
    request(client, "ListLogPatterns", input, options)
  end

  @doc """
  Lists the problems with your application.
  """
  def list_problems(client, input, options \\ []) do
    request(client, "ListProblems", input, options)
  end

  @doc """
  Retrieve a list of the tags (keys and values) that are associated with a
  specified application. A *tag* is a label that you optionally define and
  associate with an application. Each tag consists of a required *tag key*
  and an optional associated *tag value*. A tag key is a general label that
  acts as a category for more specific tag values. A tag value acts as a
  descriptor within a tag key.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Add one or more tags (keys and values) to a specified application. A *tag*
  is a label that you optionally define and associate with an application.
  Tags can help you categorize and manage application in different ways, such
  as by purpose, owner, environment, or other criteria.

  Each tag consists of a required *tag key* and an associated *tag value*,
  both of which you define. A tag key is a general label that acts as a
  category for more specific tag values. A tag value acts as a descriptor
  within a tag key.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Remove one or more tags (keys and values) from a specified application.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Updates the application.
  """
  def update_application(client, input, options \\ []) do
    request(client, "UpdateApplication", input, options)
  end

  @doc """
  Updates the custom component name and/or the list of resources that make up
  the component.
  """
  def update_component(client, input, options \\ []) do
    request(client, "UpdateComponent", input, options)
  end

  @doc """
  Updates the monitoring configurations for the component. The configuration
  input parameter is an escaped JSON of the configuration and should match
  the schema of what is returned by
  `DescribeComponentConfigurationRecommendation`.
  """
  def update_component_configuration(client, input, options \\ []) do
    request(client, "UpdateComponentConfiguration", input, options)
  end

  @doc """
  Adds a log pattern to a `LogPatternSet`.
  """
  def update_log_pattern(client, input, options \\ []) do
    request(client, "UpdateLogPattern", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "applicationinsights"}
    host = build_host("applicationinsights", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "EC2WindowsBarleyService.#{action}"}
    ]

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case AWS.Client.request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
        {:ok, body, response}

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

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

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

  defp encode!(client, payload) do
    AWS.Client.encode!(client, payload, :json)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
