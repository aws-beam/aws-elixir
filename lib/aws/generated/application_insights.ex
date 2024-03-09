# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ApplicationInsights do
  @moduledoc """
  Amazon CloudWatch Application Insights

  Amazon CloudWatch Application Insights is a service that helps you detect common
  problems with your applications.

  It enables you to pinpoint the source of issues in your
  applications (built with technologies such as Microsoft IIS, .NET, and Microsoft
  SQL
  Server), by providing key insights into detected problems.

  After you onboard your application, CloudWatch Application Insights identifies,
  recommends, and sets up metrics and logs. It continuously analyzes and
  correlates your
  metrics and logs for unusual behavior to surface actionable problems with your
  application.
  For example, if your application is slow and unresponsive and leading to HTTP
  500 errors in
  your Application Load Balancer (ALB), Application Insights informs you that a
  memory
  pressure problem with your SQL Server database is occurring. It bases this
  analysis on
  impactful metrics and log errors.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2018-11-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "applicationinsights",
      global?: false,
      protocol: "json",
      service_id: "Application Insights",
      signature_version: "v4",
      signing_name: "applicationinsights",
      target_prefix: "EC2WindowsBarleyService"
    }
  end

  @doc """
  Adds a workload to a component.

  Each component can have at most five workloads.
  """
  def add_workload(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddWorkload", input, options)
  end

  @doc """
  Adds an application that is created from a resource group.
  """
  def create_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateApplication", input, options)
  end

  @doc """
  Creates a custom component by grouping similar standalone instances to monitor.
  """
  def create_component(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateComponent", input, options)
  end

  @doc """
  Adds an log pattern to a `LogPatternSet`.
  """
  def create_log_pattern(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLogPattern", input, options)
  end

  @doc """
  Removes the specified application from monitoring.

  Does not delete the
  application.
  """
  def delete_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApplication", input, options)
  end

  @doc """
  Ungroups a custom component.

  When you ungroup custom components, all applicable monitors
  that are set up for the component are removed and the instances revert to their
  standalone
  status.
  """
  def delete_component(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteComponent", input, options)
  end

  @doc """
  Removes the specified log pattern from a `LogPatternSet`.
  """
  def delete_log_pattern(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteLogPattern", input, options)
  end

  @doc """
  Describes the application.
  """
  def describe_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeApplication", input, options)
  end

  @doc """
  Describes a component and lists the resources that are grouped together in a
  component.
  """
  def describe_component(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeComponent", input, options)
  end

  @doc """
  Describes the monitoring configuration of the component.
  """
  def describe_component_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeComponentConfiguration", input, options)
  end

  @doc """
  Describes the recommended monitoring configuration of the component.
  """
  def describe_component_configuration_recommendation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DescribeComponentConfigurationRecommendation",
      input,
      options
    )
  end

  @doc """
  Describe a specific log pattern from a `LogPatternSet`.
  """
  def describe_log_pattern(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLogPattern", input, options)
  end

  @doc """
  Describes an anomaly or error with the application.
  """
  def describe_observation(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeObservation", input, options)
  end

  @doc """
  Describes an application problem.
  """
  def describe_problem(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeProblem", input, options)
  end

  @doc """
  Describes the anomalies or errors associated with the problem.
  """
  def describe_problem_observations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeProblemObservations", input, options)
  end

  @doc """
  Describes a workload and its configuration.
  """
  def describe_workload(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeWorkload", input, options)
  end

  @doc """
  Lists the IDs of the applications that you are monitoring.
  """
  def list_applications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListApplications", input, options)
  end

  @doc """
  Lists the auto-grouped, standalone, and custom components of the application.
  """
  def list_components(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListComponents", input, options)
  end

  @doc """
  Lists the INFO, WARN, and ERROR events for periodic configuration updates
  performed by
  Application Insights.

  Examples of events represented are:

    *
  INFO: creating a new alarm or updating an alarm threshold.

    *
  WARN: alarm not created due to insufficient data points used to predict
  thresholds.

    *
  ERROR: alarm not created due to permission errors or exceeding quotas.
  """
  def list_configuration_history(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListConfigurationHistory", input, options)
  end

  @doc """
  Lists the log pattern sets in the specific application.
  """
  def list_log_pattern_sets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListLogPatternSets", input, options)
  end

  @doc """
  Lists the log patterns in the specific log `LogPatternSet`.
  """
  def list_log_patterns(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListLogPatterns", input, options)
  end

  @doc """
  Lists the problems with your application.
  """
  def list_problems(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListProblems", input, options)
  end

  @doc """
  Retrieve a list of the tags (keys and values) that are associated with a
  specified
  application.

  A *tag* is a label that you optionally define and associate
  with an application. Each tag consists of a required *tag key* and an
  optional associated *tag value*. A tag key is a general label that acts
  as a category for more specific tag values. A tag value acts as a descriptor
  within a tag
  key.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Lists the workloads that are configured on a given component.
  """
  def list_workloads(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListWorkloads", input, options)
  end

  @doc """
  Remove workload from a component.
  """
  def remove_workload(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RemoveWorkload", input, options)
  end

  @doc """
  Add one or more tags (keys and values) to a specified application.

  A
  *tag* is a label that you optionally define and associate with an
  application. Tags can help you categorize and manage application in different
  ways, such as
  by purpose, owner, environment, or other criteria.

  Each tag consists of a required *tag key* and an associated
  *tag value*, both of which you define. A tag key is a general label
  that acts as a category for more specific tag values. A tag value acts as a
  descriptor
  within a tag key.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Remove one or more tags (keys and values) from a specified application.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates the application.
  """
  def update_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateApplication", input, options)
  end

  @doc """
  Updates the custom component name and/or the list of resources that make up the
  component.
  """
  def update_component(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateComponent", input, options)
  end

  @doc """
  Updates the monitoring configurations for the component.

  The configuration input
  parameter is an escaped JSON of the configuration and should match the schema of
  what is
  returned by `DescribeComponentConfigurationRecommendation`.
  """
  def update_component_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateComponentConfiguration", input, options)
  end

  @doc """
  Adds a log pattern to a `LogPatternSet`.
  """
  def update_log_pattern(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateLogPattern", input, options)
  end

  @doc """
  Updates the visibility of the problem or specifies the problem as
  `RESOLVED`.
  """
  def update_problem(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateProblem", input, options)
  end

  @doc """
  Adds a workload to a component.

  Each component can have at most five workloads.
  """
  def update_workload(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateWorkload", input, options)
  end
end
