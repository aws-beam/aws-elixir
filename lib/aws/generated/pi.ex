# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.PI do
  @moduledoc """
  AWS Performance Insights enables you to monitor and explore different dimensions
  of database load based on data captured from a running RDS instance.

  The guide provides detailed information about Performance Insights data types,
  parameters and errors. For more information about Performance Insights
  capabilities see [Using Amazon RDS Performance Insights
  ](http://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_PerfInsights.html)
  in the *Amazon RDS User Guide*.

  The AWS Performance Insights API provides visibility into the performance of
  your RDS instance, when Performance Insights is enabled for supported engine
  types. While Amazon CloudWatch provides the authoritative source for AWS service
  vended monitoring metrics, AWS Performance Insights offers a domain-specific
  view of database load measured as Average Active Sessions and provided to API
  consumers as a 2-dimensional time-series dataset. The time dimension of the data
  provides DB load data for each time point in the queried time range, and each
  time point decomposes overall load in relation to the requested dimensions, such
  as SQL, Wait-event, User or Host, measured at that time point.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: "AWS PI",
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
  For a specific time period, retrieve the top `N` dimension keys for a metric.
  """
  def describe_dimension_keys(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDimensionKeys", input, options)
  end

  @doc """
  Retrieve Performance Insights metrics for a set of data sources, over a time
  period.

  You can provide specific dimension groups and dimensions, and provide
  aggregation and filtering criteria for each group.
  """
  def get_resource_metrics(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetResourceMetrics", input, options)
  end
end