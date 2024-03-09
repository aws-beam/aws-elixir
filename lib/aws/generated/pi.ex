# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PI do
  @moduledoc """
  Amazon RDS Performance Insights

  Amazon RDS Performance Insights enables you to monitor and explore different
  dimensions of database load based on data captured from a running DB instance.

  The guide
  provides detailed information about Performance Insights data types, parameters
  and errors.

  When Performance Insights is enabled, the Amazon RDS Performance Insights API
  provides visibility into the performance of your DB instance. Amazon CloudWatch
  provides the
  authoritative source for Amazon Web Services service-vended monitoring metrics.
  Performance Insights offers a domain-specific view of DB load.

  DB load is measured as average active sessions. Performance Insights provides
  the data to API consumers as a two-dimensional time-series dataset. The time
  dimension
  provides DB load data for each time point in the queried time range. Each time
  point decomposes overall load in relation to the requested
  dimensions, measured at that time point. Examples include SQL, Wait event, User,
  and Host.

    *
  To learn more about Performance Insights and Amazon Aurora DB instances, go to
  the *
  [ Amazon Aurora User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/USER_PerfInsights.html)
  *.

    *
  To learn more about Performance Insights and Amazon RDS DB instances, go to the
  *
  [ Amazon RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html)
  *.

    *
  To learn more about Performance Insights and Amazon DocumentDB clusters, go to
  the *
  [ Amazon DocumentDB Developer Guide](https://docs.aws.amazon.com/documentdb/latest/developerguide/performance-insights.html)
  *.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2018-02-27",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "pi",
      global?: false,
      protocol: "json",
      service_id: "PI",
      signature_version: "v4",
      signing_name: "pi",
      target_prefix: "PerformanceInsightsv20180227"
    }
  end

  @doc """
  Creates a new performance analysis report for a specific time period for the
  DB instance.
  """
  def create_performance_analysis_report(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePerformanceAnalysisReport", input, options)
  end

  @doc """
  Deletes a performance analysis report.
  """
  def delete_performance_analysis_report(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePerformanceAnalysisReport", input, options)
  end

  @doc """
  For a specific time period, retrieve the top `N` dimension keys for a metric.

  Each response element returns a maximum of 500 bytes. For larger elements, such
  as SQL statements,
  only the first 500 bytes are returned.
  """
  def describe_dimension_keys(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDimensionKeys", input, options)
  end

  @doc """
  Get the attributes of the specified dimension group for a DB instance or data
  source.

  For example, if you specify a SQL ID,
  `GetDimensionKeyDetails` retrieves the full text of the dimension
  `db.sql.statement` associated with this ID.
  This operation is useful because `GetResourceMetrics` and
  `DescribeDimensionKeys` don't support retrieval of large
  SQL statement text.
  """
  def get_dimension_key_details(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetDimensionKeyDetails", input, options)
  end

  @doc """
  Retrieves the report including the report ID, status, time details, and the
  insights
  with recommendations.

  The report status can be `RUNNING`,
  `SUCCEEDED`, or `FAILED`. The insights include the
  `description` and `recommendation` fields.
  """
  def get_performance_analysis_report(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPerformanceAnalysisReport", input, options)
  end

  @doc """
  Retrieve the metadata for different features.

  For example, the metadata might indicate
  that a feature is turned on or off on a specific DB instance.
  """
  def get_resource_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourceMetadata", input, options)
  end

  @doc """
  Retrieve Performance Insights metrics for a set of data sources over a time
  period.

  You can provide
  specific dimension groups and dimensions, and provide aggregation and filtering
  criteria for
  each group.

  Each response element returns a maximum of 500 bytes. For larger elements, such
  as SQL statements,
  only the first 500 bytes are returned.
  """
  def get_resource_metrics(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourceMetrics", input, options)
  end

  @doc """
  Retrieve the dimensions that can be queried for each specified metric type on a
  specified DB instance.
  """
  def list_available_resource_dimensions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAvailableResourceDimensions", input, options)
  end

  @doc """
  Retrieve metrics of the specified types that can be queried for a specified DB
  instance.
  """
  def list_available_resource_metrics(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAvailableResourceMetrics", input, options)
  end

  @doc """
  Lists all the analysis reports created for the DB instance.

  The reports are sorted based on the start time of each report.
  """
  def list_performance_analysis_reports(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPerformanceAnalysisReports", input, options)
  end

  @doc """
  Retrieves all the metadata tags associated with Amazon RDS Performance Insights
  resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Adds metadata tags to the Amazon RDS Performance Insights resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Deletes the metadata tags from the Amazon RDS Performance Insights resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end
end
