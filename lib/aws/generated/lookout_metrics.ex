# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LookoutMetrics do
  @moduledoc """
  This is the *Amazon Lookout for Metrics API Reference*.

  For an introduction to the service with tutorials for getting started, visit
  [Amazon Lookout for Metrics Developer Guide](https://docs.aws.amazon.com/lookoutmetrics/latest/dev).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2017-07-25",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "lookoutmetrics",
      global?: false,
      protocol: "rest-json",
      service_id: "LookoutMetrics",
      signature_version: "v4",
      signing_name: "lookoutmetrics",
      target_prefix: nil
    }
  end

  @doc """
  Activates an anomaly detector.
  """
  def activate_anomaly_detector(%Client{} = client, input, options \\ []) do
    url_path = "/ActivateAnomalyDetector"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ActivateAnomalyDetector",
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
  Runs a backtest for anomaly detection for the specified resource.
  """
  def back_test_anomaly_detector(%Client{} = client, input, options \\ []) do
    url_path = "/BackTestAnomalyDetector"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "BackTestAnomalyDetector",
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
  Creates an alert for an anomaly detector.
  """
  def create_alert(%Client{} = client, input, options \\ []) do
    url_path = "/CreateAlert"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateAlert",
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
  Creates an anomaly detector.
  """
  def create_anomaly_detector(%Client{} = client, input, options \\ []) do
    url_path = "/CreateAnomalyDetector"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateAnomalyDetector",
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
  Creates a dataset.
  """
  def create_metric_set(%Client{} = client, input, options \\ []) do
    url_path = "/CreateMetricSet"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "CreateMetricSet",
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
  Deactivates an anomaly detector.
  """
  def deactivate_anomaly_detector(%Client{} = client, input, options \\ []) do
    url_path = "/DeactivateAnomalyDetector"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeactivateAnomalyDetector",
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
  Deletes an alert.
  """
  def delete_alert(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteAlert"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteAlert",
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
  Deletes a detector.

  Deleting an anomaly detector will delete all of its corresponding resources
  including any configured datasets and alerts.
  """
  def delete_anomaly_detector(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteAnomalyDetector"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DeleteAnomalyDetector",
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
  Describes an alert.

  Amazon Lookout for Metrics API actions are eventually consistent. If you do a
  read operation on a resource immediately after creating or modifying it, use
  retries to allow time for the write operation to complete.
  """
  def describe_alert(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeAlert"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeAlert",
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
  Returns information about the status of the specified anomaly detection jobs.
  """
  def describe_anomaly_detection_executions(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeAnomalyDetectionExecutions"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeAnomalyDetectionExecutions",
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
  Describes a detector.

  Amazon Lookout for Metrics API actions are eventually consistent. If you do a
  read operation on a resource immediately after creating or modifying it, use
  retries to allow time for the write operation to complete.
  """
  def describe_anomaly_detector(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeAnomalyDetector"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeAnomalyDetector",
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
  Describes a dataset.

  Amazon Lookout for Metrics API actions are eventually consistent. If you do a
  read operation on a resource immediately after creating or modifying it, use
  retries to allow time for the write operation to complete.
  """
  def describe_metric_set(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeMetricSet"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DescribeMetricSet",
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
  Detects an Amazon S3 dataset's file format, interval, and offset.
  """
  def detect_metric_set_config(%Client{} = client, input, options \\ []) do
    url_path = "/DetectMetricSetConfig"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "DetectMetricSetConfig",
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
  Returns details about a group of anomalous metrics.
  """
  def get_anomaly_group(%Client{} = client, input, options \\ []) do
    url_path = "/GetAnomalyGroup"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetAnomalyGroup",
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
  Returns details about the requested data quality metrics.
  """
  def get_data_quality_metrics(%Client{} = client, input, options \\ []) do
    url_path = "/GetDataQualityMetrics"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetDataQualityMetrics",
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
  Get feedback for an anomaly group.
  """
  def get_feedback(%Client{} = client, input, options \\ []) do
    url_path = "/GetFeedback"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetFeedback",
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
  Returns a selection of sample records from an Amazon S3 datasource.
  """
  def get_sample_data(%Client{} = client, input, options \\ []) do
    url_path = "/GetSampleData"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "GetSampleData",
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
  Lists the alerts attached to a detector.

  Amazon Lookout for Metrics API actions are eventually consistent. If you do a
  read operation on a resource immediately after creating or modifying it, use
  retries to allow time for the write operation to complete.
  """
  def list_alerts(%Client{} = client, input, options \\ []) do
    url_path = "/ListAlerts"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListAlerts",
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
  Lists the detectors in the current AWS Region.

  Amazon Lookout for Metrics API actions are eventually consistent. If you do a
  read operation on a resource immediately after creating or modifying it, use
  retries to allow time for the write operation to complete.
  """
  def list_anomaly_detectors(%Client{} = client, input, options \\ []) do
    url_path = "/ListAnomalyDetectors"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListAnomalyDetectors",
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
  Returns a list of measures that are potential causes or effects of an anomaly
  group.
  """
  def list_anomaly_group_related_metrics(%Client{} = client, input, options \\ []) do
    url_path = "/ListAnomalyGroupRelatedMetrics"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListAnomalyGroupRelatedMetrics",
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
  Returns a list of anomaly groups.
  """
  def list_anomaly_group_summaries(%Client{} = client, input, options \\ []) do
    url_path = "/ListAnomalyGroupSummaries"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListAnomalyGroupSummaries",
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
  Gets a list of anomalous metrics for a measure in an anomaly group.
  """
  def list_anomaly_group_time_series(%Client{} = client, input, options \\ []) do
    url_path = "/ListAnomalyGroupTimeSeries"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListAnomalyGroupTimeSeries",
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
  Lists the datasets in the current AWS Region.

  Amazon Lookout for Metrics API actions are eventually consistent. If you do a
  read operation on a resource immediately after creating or modifying it, use
  retries to allow time for the write operation to complete.
  """
  def list_metric_sets(%Client{} = client, input, options \\ []) do
    url_path = "/ListMetricSets"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListMetricSets",
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
  Gets a list of
  [tags](https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html)
  for a detector, dataset, or alert.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "ListTagsForResource",
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Add feedback for an anomalous metric.
  """
  def put_feedback(%Client{} = client, input, options \\ []) do
    url_path = "/PutFeedback"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "PutFeedback",
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
  Adds
  [tags](https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html)
  to a detector, dataset, or alert.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "TagResource",
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Removes
  [tags](https://docs.aws.amazon.com/lookoutmetrics/latest/dev/detectors-tags.html)
  from a detector, dataset, or alert.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UntagResource",
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Make changes to an existing alert.
  """
  def update_alert(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateAlert"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateAlert",
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
  Updates a detector.

  After activation, you can only change a detector's ingestion delay and
  description.
  """
  def update_anomaly_detector(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateAnomalyDetector"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateAnomalyDetector",
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
  Updates a dataset.
  """
  def update_metric_set(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateMetricSet"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      "UpdateMetricSet",
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
