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

  @typedoc """

  ## Example:
      
      dimension_key_detail() :: %{
        "Dimension" => String.t(),
        "Status" => list(any()),
        "Value" => String.t()
      }
      
  """
  @type dimension_key_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_available_resource_dimensions_request() :: %{
        optional("AuthorizedActions") => list(list(any())()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Identifier") => String.t(),
        required("Metrics") => list(String.t()()),
        required("ServiceType") => list(any())
      }
      
  """
  @type list_available_resource_dimensions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      performance_insights_metric() :: %{
        "Dimensions" => map(),
        "DisplayName" => String.t(),
        "Metric" => String.t(),
        "Value" => float()
      }
      
  """
  @type performance_insights_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("ServiceType") => list(any()),
        required("Tags") => list(tag()())
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_point() :: %{
        "Timestamp" => non_neg_integer(),
        "Value" => float()
      }
      
  """
  @type data_point() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_available_resource_metrics_response() :: %{
        "Metrics" => list(response_resource_metric()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_available_resource_metrics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_dimension_key_details_response() :: %{
        "Dimensions" => list(dimension_key_detail()())
      }
      
  """
  @type get_dimension_key_details_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_performance_analysis_report_request() :: %{
        optional("AcceptLanguage") => list(any()),
        optional("TextFormat") => list(any()),
        required("AnalysisReportId") => String.t(),
        required("Identifier") => String.t(),
        required("ServiceType") => list(any())
      }
      
  """
  @type get_performance_analysis_report_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_key_data_points() :: %{
        "DataPoints" => list(data_point()()),
        "Key" => response_resource_metric_key()
      }
      
  """
  @type metric_key_data_points() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      get_resource_metadata_request() :: %{
        required("Identifier") => String.t(),
        required("ServiceType") => list(any())
      }
      
  """
  @type get_resource_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_performance_analysis_report_response() :: %{
        "AnalysisReport" => analysis_report()
      }
      
  """
  @type get_performance_analysis_report_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      response_resource_metric() :: %{
        "Description" => String.t(),
        "Metric" => String.t(),
        "Unit" => String.t()
      }
      
  """
  @type response_resource_metric() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      feature_metadata() :: %{
        "Status" => list(any())
      }
      
  """
  @type feature_metadata() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_available_resource_dimensions_response() :: %{
        "MetricDimensions" => list(metric_dimension_groups()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_available_resource_dimensions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_metrics_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("PeriodAlignment") => list(any()),
        optional("PeriodInSeconds") => integer(),
        required("EndTime") => non_neg_integer(),
        required("Identifier") => String.t(),
        required("MetricQueries") => list(metric_query()()),
        required("ServiceType") => list(any()),
        required("StartTime") => non_neg_integer()
      }
      
  """
  @type get_resource_metrics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("ServiceType") => list(any()),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_metrics_response() :: %{
        "AlignedEndTime" => non_neg_integer(),
        "AlignedStartTime" => non_neg_integer(),
        "Identifier" => String.t(),
        "MetricList" => list(metric_key_data_points()()),
        "NextToken" => String.t()
      }
      
  """
  @type get_resource_metrics_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_performance_analysis_report_request() :: %{
        optional("Tags") => list(tag()()),
        required("EndTime") => non_neg_integer(),
        required("Identifier") => String.t(),
        required("ServiceType") => list(any()),
        required("StartTime") => non_neg_integer()
      }
      
  """
  @type create_performance_analysis_report_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_performance_analysis_report_response() :: %{
        "AnalysisReportId" => String.t()
      }
      
  """
  @type create_performance_analysis_report_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_performance_analysis_report_request() :: %{
        required("AnalysisReportId") => String.t(),
        required("Identifier") => String.t(),
        required("ServiceType") => list(any())
      }
      
  """
  @type delete_performance_analysis_report_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t(),
        "Value" => String.t()
      }
      
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      response_resource_metric_key() :: %{
        "Dimensions" => map(),
        "Metric" => String.t()
      }
      
  """
  @type response_resource_metric_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recommendation() :: %{
        "RecommendationDescription" => String.t(),
        "RecommendationId" => String.t()
      }
      
  """
  @type recommendation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      analysis_report() :: %{
        "AnalysisReportId" => String.t(),
        "CreateTime" => non_neg_integer(),
        "EndTime" => non_neg_integer(),
        "Identifier" => String.t(),
        "Insights" => list(insight()()),
        "ServiceType" => list(any()),
        "StartTime" => non_neg_integer(),
        "Status" => list(any())
      }
      
  """
  @type analysis_report() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      analysis_report_summary() :: %{
        "AnalysisReportId" => String.t(),
        "CreateTime" => non_neg_integer(),
        "EndTime" => non_neg_integer(),
        "StartTime" => non_neg_integer(),
        "Status" => list(any()),
        "Tags" => list(tag()())
      }
      
  """
  @type analysis_report_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag()())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_available_resource_metrics_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Identifier") => String.t(),
        required("MetricTypes") => list(String.t()()),
        required("ServiceType") => list(any())
      }
      
  """
  @type list_available_resource_metrics_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dimension_group() :: %{
        "Dimensions" => list(String.t()()),
        "Group" => String.t(),
        "Limit" => integer()
      }
      
  """
  @type dimension_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_query() :: %{
        "Filter" => map(),
        "GroupBy" => dimension_group(),
        "Metric" => String.t()
      }
      
  """
  @type metric_query() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dimension_detail() :: %{
        "Identifier" => String.t()
      }
      
  """
  @type dimension_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dimension_key_description() :: %{
        "AdditionalMetrics" => map(),
        "Dimensions" => map(),
        "Partitions" => list(float()()),
        "Total" => float()
      }
      
  """
  @type dimension_key_description() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_dimension_key_details_request() :: %{
        optional("RequestedDimensions") => list(String.t()()),
        required("Group") => String.t(),
        required("GroupIdentifier") => String.t(),
        required("Identifier") => String.t(),
        required("ServiceType") => list(any())
      }
      
  """
  @type get_dimension_key_details_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      not_authorized_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type not_authorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      invalid_argument_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_argument_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_performance_analysis_report_response() :: %{}
      
  """
  @type delete_performance_analysis_report_response() :: %{}

  @typedoc """

  ## Example:
      
      internal_service_error() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_service_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t(),
        required("ServiceType") => list(any())
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      response_partition_key() :: %{
        "Dimensions" => map()
      }
      
  """
  @type response_partition_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_performance_analysis_reports_request() :: %{
        optional("ListTags") => boolean(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("Identifier") => String.t(),
        required("ServiceType") => list(any())
      }
      
  """
  @type list_performance_analysis_reports_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_dimension_keys_request() :: %{
        optional("AdditionalMetrics") => list(String.t()()),
        optional("Filter") => map(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("PartitionBy") => dimension_group(),
        optional("PeriodInSeconds") => integer(),
        required("EndTime") => non_neg_integer(),
        required("GroupBy") => dimension_group(),
        required("Identifier") => String.t(),
        required("Metric") => String.t(),
        required("ServiceType") => list(any()),
        required("StartTime") => non_neg_integer()
      }
      
  """
  @type describe_dimension_keys_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      dimension_group_detail() :: %{
        "Dimensions" => list(dimension_detail()()),
        "Group" => String.t()
      }
      
  """
  @type dimension_group_detail() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_dimension_keys_response() :: %{
        "AlignedEndTime" => non_neg_integer(),
        "AlignedStartTime" => non_neg_integer(),
        "Keys" => list(dimension_key_description()()),
        "NextToken" => String.t(),
        "PartitionKeys" => list(response_partition_key()())
      }
      
  """
  @type describe_dimension_keys_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data() :: %{
        "PerformanceInsightsMetric" => performance_insights_metric()
      }
      
  """
  @type data() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      insight() :: %{
        "BaselineData" => list(data()()),
        "Context" => list(any()),
        "Description" => String.t(),
        "EndTime" => non_neg_integer(),
        "InsightData" => list(data()()),
        "InsightId" => String.t(),
        "InsightType" => String.t(),
        "Recommendations" => list(recommendation()()),
        "Severity" => list(any()),
        "StartTime" => non_neg_integer(),
        "SupportingInsights" => list(insight()())
      }
      
  """
  @type insight() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_performance_analysis_reports_response() :: %{
        "AnalysisReports" => list(analysis_report_summary()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_performance_analysis_reports_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      metric_dimension_groups() :: %{
        "Groups" => list(dimension_group_detail()()),
        "Metric" => String.t()
      }
      
  """
  @type metric_dimension_groups() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_resource_metadata_response() :: %{
        "Features" => map(),
        "Identifier" => String.t()
      }
      
  """
  @type get_resource_metadata_response() :: %{String.t() => any()}

  @type create_performance_analysis_report_errors() ::
          internal_service_error() | invalid_argument_exception() | not_authorized_exception()

  @type delete_performance_analysis_report_errors() ::
          internal_service_error() | invalid_argument_exception() | not_authorized_exception()

  @type describe_dimension_keys_errors() ::
          internal_service_error() | invalid_argument_exception() | not_authorized_exception()

  @type get_dimension_key_details_errors() ::
          internal_service_error() | invalid_argument_exception() | not_authorized_exception()

  @type get_performance_analysis_report_errors() ::
          internal_service_error() | invalid_argument_exception() | not_authorized_exception()

  @type get_resource_metadata_errors() ::
          internal_service_error() | invalid_argument_exception() | not_authorized_exception()

  @type get_resource_metrics_errors() ::
          internal_service_error() | invalid_argument_exception() | not_authorized_exception()

  @type list_available_resource_dimensions_errors() ::
          internal_service_error() | invalid_argument_exception() | not_authorized_exception()

  @type list_available_resource_metrics_errors() ::
          internal_service_error() | invalid_argument_exception() | not_authorized_exception()

  @type list_performance_analysis_reports_errors() ::
          internal_service_error() | invalid_argument_exception() | not_authorized_exception()

  @type list_tags_for_resource_errors() ::
          internal_service_error() | invalid_argument_exception() | not_authorized_exception()

  @type tag_resource_errors() ::
          internal_service_error() | invalid_argument_exception() | not_authorized_exception()

  @type untag_resource_errors() ::
          internal_service_error() | invalid_argument_exception() | not_authorized_exception()

  def metadata do
    %{
      api_version: "2018-02-27",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "pi",
      global?: false,
      hostname: nil,
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
  @spec create_performance_analysis_report(
          map(),
          create_performance_analysis_report_request(),
          list()
        ) ::
          {:ok, create_performance_analysis_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_performance_analysis_report_errors()}
  def create_performance_analysis_report(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePerformanceAnalysisReport", input, options)
  end

  @doc """
  Deletes a performance analysis report.
  """
  @spec delete_performance_analysis_report(
          map(),
          delete_performance_analysis_report_request(),
          list()
        ) ::
          {:ok, delete_performance_analysis_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_performance_analysis_report_errors()}
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
  @spec describe_dimension_keys(map(), describe_dimension_keys_request(), list()) ::
          {:ok, describe_dimension_keys_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_dimension_keys_errors()}
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
  @spec get_dimension_key_details(map(), get_dimension_key_details_request(), list()) ::
          {:ok, get_dimension_key_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_dimension_key_details_errors()}
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
  @spec get_performance_analysis_report(map(), get_performance_analysis_report_request(), list()) ::
          {:ok, get_performance_analysis_report_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_performance_analysis_report_errors()}
  def get_performance_analysis_report(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetPerformanceAnalysisReport", input, options)
  end

  @doc """
  Retrieve the metadata for different features.

  For example, the metadata might indicate
  that a feature is turned on or off on a specific DB instance.
  """
  @spec get_resource_metadata(map(), get_resource_metadata_request(), list()) ::
          {:ok, get_resource_metadata_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_metadata_errors()}
  def get_resource_metadata(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourceMetadata", input, options)
  end

  @doc """
  Retrieve Performance Insights metrics for a set of data sources over a time
  period.

  You can provide
  specific dimension groups and dimensions, and provide filtering criteria for
  each group. You must specify an aggregate function for
  each metric.

  Each response element returns a maximum of 500 bytes. For larger elements, such
  as SQL statements,
  only the first 500 bytes are returned.
  """
  @spec get_resource_metrics(map(), get_resource_metrics_request(), list()) ::
          {:ok, get_resource_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_resource_metrics_errors()}
  def get_resource_metrics(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourceMetrics", input, options)
  end

  @doc """
  Retrieve the dimensions that can be queried for each specified metric type on a
  specified DB instance.
  """
  @spec list_available_resource_dimensions(
          map(),
          list_available_resource_dimensions_request(),
          list()
        ) ::
          {:ok, list_available_resource_dimensions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_available_resource_dimensions_errors()}
  def list_available_resource_dimensions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAvailableResourceDimensions", input, options)
  end

  @doc """
  Retrieve metrics of the specified types that can be queried for a specified DB
  instance.
  """
  @spec list_available_resource_metrics(map(), list_available_resource_metrics_request(), list()) ::
          {:ok, list_available_resource_metrics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_available_resource_metrics_errors()}
  def list_available_resource_metrics(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAvailableResourceMetrics", input, options)
  end

  @doc """
  Lists all the analysis reports created for the DB instance.

  The reports are sorted based on the start time of each report.
  """
  @spec list_performance_analysis_reports(
          map(),
          list_performance_analysis_reports_request(),
          list()
        ) ::
          {:ok, list_performance_analysis_reports_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_performance_analysis_reports_errors()}
  def list_performance_analysis_reports(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPerformanceAnalysisReports", input, options)
  end

  @doc """
  Retrieves all the metadata tags associated with Amazon RDS Performance Insights
  resource.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Adds metadata tags to the Amazon RDS Performance Insights resource.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Deletes the metadata tags from the Amazon RDS Performance Insights resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end
end
