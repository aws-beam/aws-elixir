# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Forecast do
  @moduledoc """
  Provides APIs for creating and managing Amazon Forecast resources.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2018-06-26",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "forecast",
      global?: false,
      protocol: "json",
      service_id: "forecast",
      signature_version: "v4",
      signing_name: "forecast",
      target_prefix: "AmazonForecast"
    }
  end

  @doc """
  Creates an Amazon Forecast predictor.

  Amazon Forecast creates predictors with AutoPredictor, which involves applying
  the optimal combination of algorithms to each time series in your datasets. You
  can use `CreateAutoPredictor` to create new predictors or upgrade/retrain
  existing predictors.

  ## Creating new predictors

  The following parameters are required when creating a new predictor:

    * `PredictorName` - A unique name for the predictor.

    * `DatasetGroupArn` - The ARN of the dataset group used to train the
  predictor.

    * `ForecastFrequency` - The granularity of your forecasts (hourly,
  daily, weekly, etc).

    * `ForecastHorizon` - The number of time-steps that the model
  predicts. The forecast horizon is also called the prediction length.

  When creating a new predictor, do not specify a value for
  `ReferencePredictorArn`.

  ## Upgrading and retraining predictors

  The following parameters are required when retraining or upgrading a predictor:

    * `PredictorName` - A unique name for the predictor.

    * `ReferencePredictorArn` - The ARN of the predictor to retrain or
  upgrade.

  When upgrading or retraining a predictor, only specify values for the
  `ReferencePredictorArn` and `PredictorName`.
  """
  def create_auto_predictor(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateAutoPredictor", input, options)
  end

  @doc """
  Creates an Amazon Forecast dataset.

  The information about the dataset that you provide helps Forecast understand how
  to consume the data for model training. This includes the following:

    * * `DataFrequency` * - How frequently your historical time-series
  data is collected.

    * * `Domain` * and * `DatasetType` * - Each dataset has an
  associated dataset domain and a type within the domain. Amazon Forecast provides
  a list of predefined domains and types within each domain. For each unique
  dataset domain and type within the domain, Amazon Forecast requires your data to
  include a minimum set of predefined fields.

    * * `Schema` * - A schema specifies the fields in the dataset,
  including the field name and data type.

  After creating a dataset, you import your training data into it and add the
  dataset to a dataset group. You use the dataset group to create a predictor. For
  more information, see [Importing datasets](https://docs.aws.amazon.com/forecast/latest/dg/howitworks-datasets-groups.html).

  To get a list of all your datasets, use the
  [ListDatasets](https://docs.aws.amazon.com/forecast/latest/dg/API_ListDatasets.html) operation.

  For example Forecast datasets, see the [Amazon Forecast Sample GitHub
  repository](https://github.com/aws-samples/amazon-forecast-samples).

  The `Status` of a dataset must be `ACTIVE` before you can import training data.
  Use the
  [DescribeDataset](https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDataset.html)
  operation to get the status.
  """
  def create_dataset(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDataset", input, options)
  end

  @doc """
  Creates a dataset group, which holds a collection of related datasets.

  You can add datasets to the dataset group when you create the dataset group, or
  later by using the
  [UpdateDatasetGroup](https://docs.aws.amazon.com/forecast/latest/dg/API_UpdateDatasetGroup.html) operation.

  After creating a dataset group and adding datasets, you use the dataset group
  when you create a predictor. For more information, see [Dataset
  groups](https://docs.aws.amazon.com/forecast/latest/dg/howitworks-datasets-groups.html).

  To get a list of all your datasets groups, use the
  [ListDatasetGroups](https://docs.aws.amazon.com/forecast/latest/dg/API_ListDatasetGroups.html) operation.

  The `Status` of a dataset group must be `ACTIVE` before you can use the dataset
  group to create a predictor. To get the status, use the
  [DescribeDatasetGroup](https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html)
  operation.
  """
  def create_dataset_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDatasetGroup", input, options)
  end

  @doc """
  Imports your training data to an Amazon Forecast dataset.

  You provide the location of your training data in an Amazon Simple Storage
  Service (Amazon S3) bucket and the Amazon Resource Name (ARN) of the dataset
  that you want to import the data to.

  You must specify a
  [DataSource](https://docs.aws.amazon.com/forecast/latest/dg/API_DataSource.html) object that includes an Identity and Access Management (IAM) role that Amazon
  Forecast can assume to access the data, as Amazon Forecast makes a copy of your
  data and processes it in an internal Amazon Web Services system. For more
  information, see [Set up
  permissions](https://docs.aws.amazon.com/forecast/latest/dg/aws-forecast-iam-roles.html).

  The training data must be in CSV or Parquet format. The delimiter must be a
  comma (,).

  You can specify the path to a specific file, the S3 bucket, or to a folder in
  the S3 bucket. For the latter two cases, Amazon Forecast imports all files up to
  the limit of 10,000 files.

  Because dataset imports are not aggregated, your most recent dataset import is
  the one that is used when training a predictor or generating a forecast. Make
  sure that your most recent dataset import contains all of the data you want to
  model off of, and not just the new data collected since the previous import.

  To get a list of all your dataset import jobs, filtered by specified criteria,
  use the
  [ListDatasetImportJobs](https://docs.aws.amazon.com/forecast/latest/dg/API_ListDatasetImportJobs.html)
  operation.
  """
  def create_dataset_import_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDatasetImportJob", input, options)
  end

  @doc """
  Explainability is only available for Forecasts and Predictors generated from an
  AutoPredictor (`CreateAutoPredictor`)

  Creates an Amazon Forecast Explainability.

  Explainability helps you better understand how the attributes in your datasets
  impact forecast. Amazon Forecast uses a metric called Impact scores to quantify
  the relative impact of each attribute and determine whether they increase or
  decrease forecast values.

  To enable Forecast Explainability, your predictor must include at least one of
  the following: related time series, item metadata, or additional datasets like
  Holidays and the Weather Index.

  CreateExplainability accepts either a Predictor ARN or Forecast ARN. To receive
  aggregated Impact scores for all time series and time points in your datasets,
  provide a Predictor ARN. To receive Impact scores for specific time series and
  time points, provide a Forecast ARN.

  ## CreateExplainability with a Predictor ARN

  You can only have one Explainability resource per predictor. If you already
  enabled `ExplainPredictor` in `CreateAutoPredictor`, that predictor already has
  an Explainability resource.

  The following parameters are required when providing a Predictor ARN:

    * `ExplainabilityName` - A unique name for the Explainability.

    * `ResourceArn` - The Arn of the predictor.

    * `TimePointGranularity` - Must be set to “ALL”.

    * `TimeSeriesGranularity` - Must be set to “ALL”.

  Do not specify a value for the following parameters:

    * `DataSource` - Only valid when TimeSeriesGranularity is
  “SPECIFIC”.

    * `Schema` - Only valid when TimeSeriesGranularity is “SPECIFIC”.

    * `StartDateTime` - Only valid when TimePointGranularity is
  “SPECIFIC”.

    * `EndDateTime` - Only valid when TimePointGranularity is
  “SPECIFIC”.

  ## CreateExplainability with a Forecast ARN

  You can specify a maximum of 50 time series and 500 time points.

  The following parameters are required when providing a Predictor ARN:

    * `ExplainabilityName` - A unique name for the Explainability.

    * `ResourceArn` - The Arn of the forecast.

    * `TimePointGranularity` - Either “ALL” or “SPECIFIC”.

    * `TimeSeriesGranularity` - Either “ALL” or “SPECIFIC”.

  If you set TimeSeriesGranularity to “SPECIFIC”, you must also provide the
  following:

    * `DataSource` - The S3 location of the CSV file specifying your
  time series.

    * `Schema` - The Schema defines the attributes and attribute types
  listed in the Data Source.

  If you set TimePointGranularity to “SPECIFIC”, you must also provide the
  following:

    * `StartDateTime` - The first timestamp in the range of time points.

    * `EndDateTime` - The last timestamp in the range of time points.
  """
  def create_explainability(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateExplainability", input, options)
  end

  @doc """
  Exports an Explainability resource created by the `CreateExplainability`
  operation.

  Exported files are exported to an Amazon Simple Storage Service (Amazon S3)
  bucket.

  You must specify a `DataDestination` object that includes an Amazon S3 bucket
  and an Identity and Access Management (IAM) role that Amazon Forecast can assume
  to access the Amazon S3 bucket. For more information, see
  `aws-forecast-iam-roles`.

  The `Status` of the export job must be `ACTIVE` before you can access the export
  in your Amazon S3 bucket. To get the status, use the
  `DescribeExplainabilityExport` operation.
  """
  def create_explainability_export(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateExplainabilityExport", input, options)
  end

  @doc """
  Creates a forecast for each item in the `TARGET_TIME_SERIES` dataset that was
  used to train the predictor.

  This is known as inference. To retrieve the forecast for a single item at low
  latency, use the operation. To export the complete forecast into your Amazon
  Simple Storage Service (Amazon S3) bucket, use the `CreateForecastExportJob`
  operation.

  The range of the forecast is determined by the `ForecastHorizon` value, which
  you specify in the `CreatePredictor` request. When you query a forecast, you can
  request a specific date range within the forecast.

  To get a list of all your forecasts, use the `ListForecasts` operation.

  The forecasts generated by Amazon Forecast are in the same time zone as the
  dataset that was used to create the predictor.

  For more information, see `howitworks-forecast`.

  The `Status` of the forecast must be `ACTIVE` before you can query or export the
  forecast. Use the `DescribeForecast` operation to get the status.

  By default, a forecast includes predictions for every item (`item_id`) in the
  dataset group that was used to train the predictor. However, you can use the
  `TimeSeriesSelector` object to generate a forecast on a subset of time series.
  Forecast creation is skipped for any time series that you specify that are not
  in the input dataset. The forecast export file will not contain these time
  series or their forecasted values.
  """
  def create_forecast(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateForecast", input, options)
  end

  @doc """
  Exports a forecast created by the `CreateForecast` operation to your Amazon
  Simple Storage Service (Amazon S3) bucket.

  The forecast file name will match the following conventions:

  <ForecastExportJobName>_<ExportTimestamp>_<PartNumber>

  where the <ExportTimestamp> component is in Java SimpleDateFormat
  (yyyy-MM-ddTHH-mm-ssZ).

  You must specify a `DataDestination` object that includes an Identity and Access
  Management (IAM) role that Amazon Forecast can assume to access the Amazon S3
  bucket. For more information, see `aws-forecast-iam-roles`.

  For more information, see `howitworks-forecast`.

  To get a list of all your forecast export jobs, use the `ListForecastExportJobs`
  operation.

  The `Status` of the forecast export job must be `ACTIVE` before you can access
  the forecast in your Amazon S3 bucket. To get the status, use the
  `DescribeForecastExportJob` operation.
  """
  def create_forecast_export_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateForecastExportJob", input, options)
  end

  @doc """
  Creates a predictor monitor resource for an existing auto predictor.

  Predictor monitoring allows you to see how your predictor's performance changes
  over time. For more information, see [Predictor Monitoring](https://docs.aws.amazon.com/forecast/latest/dg/predictor-monitoring.html).
  """
  def create_monitor(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateMonitor", input, options)
  end

  @doc """
  This operation creates a legacy predictor that does not include all the
  predictor functionalities provided by Amazon Forecast.

  To create a predictor that is compatible with all aspects of Forecast, use
  `CreateAutoPredictor`.

  Creates an Amazon Forecast predictor.

  In the request, provide a dataset group and either specify an algorithm or let
  Amazon Forecast choose an algorithm for you using AutoML. If you specify an
  algorithm, you also can override algorithm-specific hyperparameters.

  Amazon Forecast uses the algorithm to train a predictor using the latest version
  of the datasets in the specified dataset group. You can then generate a forecast
  using the `CreateForecast` operation.

  To see the evaluation metrics, use the `GetAccuracyMetrics` operation.

  You can specify a featurization configuration to fill and aggregate the data
  fields in the `TARGET_TIME_SERIES` dataset to improve model training. For more
  information, see `FeaturizationConfig`.

  For RELATED_TIME_SERIES datasets, `CreatePredictor` verifies that the
  `DataFrequency` specified when the dataset was created matches the
  `ForecastFrequency`. TARGET_TIME_SERIES datasets don't have this restriction.
  Amazon Forecast also verifies the delimiter and timestamp format. For more
  information, see `howitworks-datasets-groups`.

  By default, predictors are trained and evaluated at the 0.1 (P10), 0.5 (P50),
  and 0.9 (P90) quantiles. You can choose custom forecast types to train and
  evaluate your predictor by setting the `ForecastTypes`.

  ## AutoML

  If you want Amazon Forecast to evaluate each algorithm and choose the one that
  minimizes the `objective function`, set `PerformAutoML` to `true`. The
  `objective function` is defined as the mean of the weighted losses over the
  forecast types. By default, these are the p10, p50, and p90 quantile losses. For
  more information, see `EvaluationResult`.

  When AutoML is enabled, the following properties are disallowed:

    * `AlgorithmArn`

    * `HPOConfig`

    * `PerformHPO`

    * `TrainingParameters`

  To get a list of all of your predictors, use the `ListPredictors` operation.

  Before you can use the predictor to create a forecast, the `Status` of the
  predictor must be `ACTIVE`, signifying that training has completed. To get the
  status, use the `DescribePredictor` operation.
  """
  def create_predictor(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePredictor", input, options)
  end

  @doc """
  Exports backtest forecasts and accuracy metrics generated by the
  `CreateAutoPredictor` or `CreatePredictor` operations.

  Two folders containing CSV or Parquet files are exported to your specified S3
  bucket.

  The export file names will match the following conventions:

  `<ExportJobName>_<ExportTimestamp>_<PartNumber>.csv`

  The <ExportTimestamp> component is in Java SimpleDate format
  (yyyy-MM-ddTHH-mm-ssZ).

  You must specify a `DataDestination` object that includes an Amazon S3 bucket
  and an Identity and Access Management (IAM) role that Amazon Forecast can assume
  to access the Amazon S3 bucket. For more information, see
  `aws-forecast-iam-roles`.

  The `Status` of the export job must be `ACTIVE` before you can access the export
  in your Amazon S3 bucket. To get the status, use the
  `DescribePredictorBacktestExportJob` operation.
  """
  def create_predictor_backtest_export_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreatePredictorBacktestExportJob", input, options)
  end

  @doc """
  What-if analysis is a scenario modeling technique where you make a hypothetical
  change to a time series and compare the forecasts generated by these changes
  against the baseline, unchanged time series.

  It is important to remember that the purpose of a what-if analysis is to
  understand how a forecast can change given different modifications to the
  baseline time series.

  For example, imagine you are a clothing retailer who is considering an end of
  season sale to clear space for new styles. After creating a baseline forecast,
  you can use a what-if analysis to investigate how different sales tactics might
  affect your goals.

  You could create a scenario where everything is given a 25% markdown, and
  another where everything is given a fixed dollar markdown. You could create a
  scenario where the sale lasts for one week and another where the sale lasts for
  one month. With a what-if analysis, you can compare many different scenarios
  against each other.

  Note that a what-if analysis is meant to display what the forecasting model has
  learned and how it will behave in the scenarios that you are evaluating. Do not
  blindly use the results of the what-if analysis to make business decisions. For
  instance, forecasts might not be accurate for novel scenarios where there is no
  reference available to determine whether a forecast is good.

  The `TimeSeriesSelector` object defines the items that you want in the what-if
  analysis.
  """
  def create_what_if_analysis(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateWhatIfAnalysis", input, options)
  end

  @doc """
  A what-if forecast is a forecast that is created from a modified version of the
  baseline forecast.

  Each what-if forecast incorporates either a replacement dataset or a set of
  transformations to the original dataset.
  """
  def create_what_if_forecast(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateWhatIfForecast", input, options)
  end

  @doc """
  Exports a forecast created by the `CreateWhatIfForecast` operation to your
  Amazon Simple Storage Service (Amazon S3) bucket.

  The forecast file name will match the following conventions:

  `≈<ForecastExportJobName>_<ExportTimestamp>_<PartNumber>`

  The <ExportTimestamp> component is in Java SimpleDateFormat
  (yyyy-MM-ddTHH-mm-ssZ).

  You must specify a `DataDestination` object that includes an Identity and Access
  Management (IAM) role that Amazon Forecast can assume to access the Amazon S3
  bucket. For more information, see `aws-forecast-iam-roles`.

  For more information, see `howitworks-forecast`.

  To get a list of all your what-if forecast export jobs, use the
  `ListWhatIfForecastExports` operation.

  The `Status` of the forecast export job must be `ACTIVE` before you can access
  the forecast in your Amazon S3 bucket. To get the status, use the
  `DescribeWhatIfForecastExport` operation.
  """
  def create_what_if_forecast_export(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateWhatIfForecastExport", input, options)
  end

  @doc """
  Deletes an Amazon Forecast dataset that was created using the
  [CreateDataset](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDataset.html) operation.

  You can only delete datasets that have a status of `ACTIVE` or `CREATE_FAILED`.
  To get the status use the
  [DescribeDataset](https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDataset.html)
  operation.

  Forecast does not automatically update any dataset groups that contain the
  deleted dataset. In order to update the dataset group, use the
  [UpdateDatasetGroup](https://docs.aws.amazon.com/forecast/latest/dg/API_UpdateDatasetGroup.html)
  operation, omitting the deleted dataset's ARN.
  """
  def delete_dataset(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDataset", input, options)
  end

  @doc """
  Deletes a dataset group created using the
  [CreateDatasetGroup](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetGroup.html) operation.

  You can only delete dataset groups that have a status of `ACTIVE`,
  `CREATE_FAILED`, or `UPDATE_FAILED`. To get the status, use the
  [DescribeDatasetGroup](https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html)
  operation.

  This operation deletes only the dataset group, not the datasets in the group.
  """
  def delete_dataset_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDatasetGroup", input, options)
  end

  @doc """
  Deletes a dataset import job created using the
  [CreateDatasetImportJob](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html) operation.

  You can delete only dataset import jobs that have a status of `ACTIVE` or
  `CREATE_FAILED`. To get the status, use the
  [DescribeDatasetImportJob](https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetImportJob.html)
  operation.
  """
  def delete_dataset_import_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDatasetImportJob", input, options)
  end

  @doc """
  Deletes an Explainability resource.

  You can delete only predictor that have a status of `ACTIVE` or `CREATE_FAILED`.
  To get the status, use the `DescribeExplainability` operation.
  """
  def delete_explainability(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteExplainability", input, options)
  end

  @doc """
  Deletes an Explainability export.
  """
  def delete_explainability_export(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteExplainabilityExport", input, options)
  end

  @doc """
  Deletes a forecast created using the `CreateForecast` operation.

  You can delete only forecasts that have a status of `ACTIVE` or `CREATE_FAILED`.
  To get the status, use the `DescribeForecast` operation.

  You can't delete a forecast while it is being exported. After a forecast is
  deleted, you can no longer query the forecast.
  """
  def delete_forecast(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteForecast", input, options)
  end

  @doc """
  Deletes a forecast export job created using the `CreateForecastExportJob`
  operation.

  You can delete only export jobs that have a status of `ACTIVE` or
  `CREATE_FAILED`. To get the status, use the `DescribeForecastExportJob`
  operation.
  """
  def delete_forecast_export_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteForecastExportJob", input, options)
  end

  @doc """
  Deletes a monitor resource.

  You can only delete a monitor resource with a status of `ACTIVE`,
  `ACTIVE_STOPPED`, `CREATE_FAILED`, or `CREATE_STOPPED`.
  """
  def delete_monitor(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteMonitor", input, options)
  end

  @doc """
  Deletes a predictor created using the `DescribePredictor` or `CreatePredictor`
  operations.

  You can delete only predictor that have a status of `ACTIVE` or `CREATE_FAILED`.
  To get the status, use the `DescribePredictor` operation.
  """
  def delete_predictor(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePredictor", input, options)
  end

  @doc """
  Deletes a predictor backtest export job.
  """
  def delete_predictor_backtest_export_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeletePredictorBacktestExportJob", input, options)
  end

  @doc """
  Deletes an entire resource tree.

  This operation will delete the parent resource and its child resources.

  Child resources are resources that were created from another resource. For
  example, when a forecast is generated from a predictor, the forecast is the
  child resource and the predictor is the parent resource.

  Amazon Forecast resources possess the following parent-child resource
  hierarchies:

    * **Dataset**: dataset import jobs

    * **Dataset Group**: predictors, predictor backtest export jobs,
  forecasts, forecast export jobs

    * **Predictor**: predictor backtest export jobs, forecasts, forecast
  export jobs

    * **Forecast**: forecast export jobs

  `DeleteResourceTree` will only delete Amazon Forecast resources, and will not
  delete datasets or exported files stored in Amazon S3.
  """
  def delete_resource_tree(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteResourceTree", input, options)
  end

  @doc """
  Deletes a what-if analysis created using the `CreateWhatIfAnalysis` operation.

  You can delete only what-if analyses that have a status of `ACTIVE` or
  `CREATE_FAILED`. To get the status, use the `DescribeWhatIfAnalysis` operation.

  You can't delete a what-if analysis while any of its forecasts are being
  exported.
  """
  def delete_what_if_analysis(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteWhatIfAnalysis", input, options)
  end

  @doc """
  Deletes a what-if forecast created using the `CreateWhatIfForecast` operation.

  You can delete only what-if forecasts that have a status of `ACTIVE` or
  `CREATE_FAILED`. To get the status, use the `DescribeWhatIfForecast` operation.

  You can't delete a what-if forecast while it is being exported. After a what-if
  forecast is deleted, you can no longer query the what-if analysis.
  """
  def delete_what_if_forecast(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteWhatIfForecast", input, options)
  end

  @doc """
  Deletes a what-if forecast export created using the `CreateWhatIfForecastExport`
  operation.

  You can delete only what-if forecast exports that have a status of `ACTIVE` or
  `CREATE_FAILED`. To get the status, use the `DescribeWhatIfForecastExport`
  operation.
  """
  def delete_what_if_forecast_export(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteWhatIfForecastExport", input, options)
  end

  @doc """
  Describes a predictor created using the CreateAutoPredictor operation.
  """
  def describe_auto_predictor(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAutoPredictor", input, options)
  end

  @doc """
  Describes an Amazon Forecast dataset created using the
  [CreateDataset](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDataset.html)
  operation.

  In addition to listing the parameters specified in the `CreateDataset` request,
  this operation includes the following dataset properties:

    * `CreationTime`

    * `LastModificationTime`

    * `Status`
  """
  def describe_dataset(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDataset", input, options)
  end

  @doc """
  Describes a dataset group created using the
  [CreateDatasetGroup](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetGroup.html)
  operation.

  In addition to listing the parameters provided in the `CreateDatasetGroup`
  request, this operation includes the following properties:

    * `DatasetArns` - The datasets belonging to the group.

    * `CreationTime`

    * `LastModificationTime`

    * `Status`
  """
  def describe_dataset_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDatasetGroup", input, options)
  end

  @doc """
  Describes a dataset import job created using the
  [CreateDatasetImportJob](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html)
  operation.

  In addition to listing the parameters provided in the `CreateDatasetImportJob`
  request, this operation includes the following properties:

    * `CreationTime`

    * `LastModificationTime`

    * `DataSize`

    * `FieldStatistics`

    * `Status`

    * `Message` - If an error occurred, information about the error.
  """
  def describe_dataset_import_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDatasetImportJob", input, options)
  end

  @doc """
  Describes an Explainability resource created using the `CreateExplainability`
  operation.
  """
  def describe_explainability(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeExplainability", input, options)
  end

  @doc """
  Describes an Explainability export created using the
  `CreateExplainabilityExport` operation.
  """
  def describe_explainability_export(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeExplainabilityExport", input, options)
  end

  @doc """
  Describes a forecast created using the `CreateForecast` operation.

  In addition to listing the properties provided in the `CreateForecast` request,
  this operation lists the following properties:

    * `DatasetGroupArn` - The dataset group that provided the training
  data.

    * `CreationTime`

    * `LastModificationTime`

    * `Status`

    * `Message` - If an error occurred, information about the error.
  """
  def describe_forecast(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeForecast", input, options)
  end

  @doc """
  Describes a forecast export job created using the `CreateForecastExportJob`
  operation.

  In addition to listing the properties provided by the user in the
  `CreateForecastExportJob` request, this operation lists the following
  properties:

    * `CreationTime`

    * `LastModificationTime`

    * `Status`

    * `Message` - If an error occurred, information about the error.
  """
  def describe_forecast_export_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeForecastExportJob", input, options)
  end

  @doc """
  Describes a monitor resource.

  In addition to listing the properties provided in the `CreateMonitor` request,
  this operation lists the following properties:

    * `Baseline`

    * `CreationTime`

    * `LastEvaluationTime`

    * `LastEvaluationState`

    * `LastModificationTime`

    * `Message`

    * `Status`
  """
  def describe_monitor(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMonitor", input, options)
  end

  @doc """
  This operation is only valid for legacy predictors created with CreatePredictor.

  If you are not using a legacy predictor, use `DescribeAutoPredictor`.

  Describes a predictor created using the `CreatePredictor` operation.

  In addition to listing the properties provided in the `CreatePredictor` request,
  this operation lists the following properties:

    * `DatasetImportJobArns` - The dataset import jobs used to import
  training data.

    * `AutoMLAlgorithmArns` - If AutoML is performed, the algorithms
  that were evaluated.

    * `CreationTime`

    * `LastModificationTime`

    * `Status`

    * `Message` - If an error occurred, information about the error.
  """
  def describe_predictor(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePredictor", input, options)
  end

  @doc """
  Describes a predictor backtest export job created using the
  `CreatePredictorBacktestExportJob` operation.

  In addition to listing the properties provided by the user in the
  `CreatePredictorBacktestExportJob` request, this operation lists the following
  properties:

    * `CreationTime`

    * `LastModificationTime`

    * `Status`

    * `Message` (if an error occurred)
  """
  def describe_predictor_backtest_export_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePredictorBacktestExportJob", input, options)
  end

  @doc """
  Describes the what-if analysis created using the `CreateWhatIfAnalysis`
  operation.

  In addition to listing the properties provided in the `CreateWhatIfAnalysis`
  request, this operation lists the following properties:

    * `CreationTime`

    * `LastModificationTime`

    * `Message` - If an error occurred, information about the error.

    * `Status`
  """
  def describe_what_if_analysis(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeWhatIfAnalysis", input, options)
  end

  @doc """
  Describes the what-if forecast created using the `CreateWhatIfForecast`
  operation.

  In addition to listing the properties provided in the `CreateWhatIfForecast`
  request, this operation lists the following properties:

    * `CreationTime`

    * `LastModificationTime`

    * `Message` - If an error occurred, information about the error.

    * `Status`
  """
  def describe_what_if_forecast(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeWhatIfForecast", input, options)
  end

  @doc """
  Describes the what-if forecast export created using the
  `CreateWhatIfForecastExport` operation.

  In addition to listing the properties provided in the
  `CreateWhatIfForecastExport` request, this operation lists the following
  properties:

    * `CreationTime`

    * `LastModificationTime`

    * `Message` - If an error occurred, information about the error.

    * `Status`
  """
  def describe_what_if_forecast_export(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeWhatIfForecastExport", input, options)
  end

  @doc """
  Provides metrics on the accuracy of the models that were trained by the
  `CreatePredictor` operation.

  Use metrics to see how well the model performed and to decide whether to use the
  predictor to generate a forecast. For more information, see [Predictor Metrics](https://docs.aws.amazon.com/forecast/latest/dg/metrics.html).

  This operation generates metrics for each backtest window that was evaluated.
  The number of backtest windows (`NumberOfBacktestWindows`) is specified using
  the `EvaluationParameters` object, which is optionally included in the
  `CreatePredictor` request. If `NumberOfBacktestWindows` isn't specified, the
  number defaults to one.

  The parameters of the `filling` method determine which items contribute to the
  metrics. If you want all items to contribute, specify `zero`. If you want only
  those items that have complete data in the range being evaluated to contribute,
  specify `nan`. For more information, see `FeaturizationMethod`.

  Before you can get accuracy metrics, the `Status` of the predictor must be
  `ACTIVE`, signifying that training has completed. To get the status, use the
  `DescribePredictor` operation.
  """
  def get_accuracy_metrics(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetAccuracyMetrics", input, options)
  end

  @doc """
  Returns a list of dataset groups created using the
  [CreateDatasetGroup](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetGroup.html) operation.

  For each dataset group, this operation returns a summary of its properties,
  including its Amazon Resource Name (ARN). You can retrieve the complete set of
  properties by using the dataset group ARN with the
  [DescribeDatasetGroup](https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html)
  operation.
  """
  def list_dataset_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDatasetGroups", input, options)
  end

  @doc """
  Returns a list of dataset import jobs created using the
  [CreateDatasetImportJob](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDatasetImportJob.html) operation.

  For each import job, this operation returns a summary of its properties,
  including its Amazon Resource Name (ARN). You can retrieve the complete set of
  properties by using the ARN with the
  [DescribeDatasetImportJob](https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetImportJob.html)
  operation. You can filter the list by providing an array of
  [Filter](https://docs.aws.amazon.com/forecast/latest/dg/API_Filter.html)
  objects.
  """
  def list_dataset_import_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDatasetImportJobs", input, options)
  end

  @doc """
  Returns a list of datasets created using the
  [CreateDataset](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateDataset.html) operation.

  For each dataset, a summary of its properties, including its Amazon Resource
  Name (ARN), is returned. To retrieve the complete set of properties, use the ARN
  with the
  [DescribeDataset](https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDataset.html)
  operation.
  """
  def list_datasets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDatasets", input, options)
  end

  @doc """
  Returns a list of Explainability resources created using the
  `CreateExplainability` operation.

  This operation returns a summary for each Explainability. You can filter the
  list using an array of `Filter` objects.

  To retrieve the complete set of properties for a particular Explainability
  resource, use the ARN with the `DescribeExplainability` operation.
  """
  def list_explainabilities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListExplainabilities", input, options)
  end

  @doc """
  Returns a list of Explainability exports created using the
  `CreateExplainabilityExport` operation.

  This operation returns a summary for each Explainability export. You can filter
  the list using an array of `Filter` objects.

  To retrieve the complete set of properties for a particular Explainability
  export, use the ARN with the `DescribeExplainability` operation.
  """
  def list_explainability_exports(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListExplainabilityExports", input, options)
  end

  @doc """
  Returns a list of forecast export jobs created using the
  `CreateForecastExportJob` operation.

  For each forecast export job, this operation returns a summary of its
  properties, including its Amazon Resource Name (ARN). To retrieve the complete
  set of properties, use the ARN with the `DescribeForecastExportJob` operation.
  You can filter the list using an array of `Filter` objects.
  """
  def list_forecast_export_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListForecastExportJobs", input, options)
  end

  @doc """
  Returns a list of forecasts created using the `CreateForecast` operation.

  For each forecast, this operation returns a summary of its properties, including
  its Amazon Resource Name (ARN). To retrieve the complete set of properties,
  specify the ARN with the `DescribeForecast` operation. You can filter the list
  using an array of `Filter` objects.
  """
  def list_forecasts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListForecasts", input, options)
  end

  @doc """
  Returns a list of the monitoring evaluation results and predictor events
  collected by the monitor resource during different windows of time.

  For information about monitoring see `predictor-monitoring`. For more
  information about retrieving monitoring results see [Viewing Monitoring Results](https://docs.aws.amazon.com/forecast/latest/dg/predictor-monitoring-results.html).
  """
  def list_monitor_evaluations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListMonitorEvaluations", input, options)
  end

  @doc """
  Returns a list of monitors created with the `CreateMonitor` operation and
  `CreateAutoPredictor` operation.

  For each monitor resource, this operation returns of a summary of its
  properties, including its Amazon Resource Name (ARN). You can retrieve a
  complete set of properties of a monitor resource by specify the monitor's ARN in
  the `DescribeMonitor` operation.
  """
  def list_monitors(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListMonitors", input, options)
  end

  @doc """
  Returns a list of predictor backtest export jobs created using the
  `CreatePredictorBacktestExportJob` operation.

  This operation returns a summary for each backtest export job. You can filter
  the list using an array of `Filter` objects.

  To retrieve the complete set of properties for a particular backtest export job,
  use the ARN with the `DescribePredictorBacktestExportJob` operation.
  """
  def list_predictor_backtest_export_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPredictorBacktestExportJobs", input, options)
  end

  @doc """
  Returns a list of predictors created using the `CreateAutoPredictor` or
  `CreatePredictor` operations.

  For each predictor, this operation returns a summary of its properties,
  including its Amazon Resource Name (ARN).

  You can retrieve the complete set of properties by using the ARN with the
  `DescribeAutoPredictor` and `DescribePredictor` operations. You can filter the
  list using an array of `Filter` objects.
  """
  def list_predictors(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPredictors", input, options)
  end

  @doc """
  Lists the tags for an Amazon Forecast resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Returns a list of what-if analyses created using the `CreateWhatIfAnalysis`
  operation.

  For each what-if analysis, this operation returns a summary of its properties,
  including its Amazon Resource Name (ARN). You can retrieve the complete set of
  properties by using the what-if analysis ARN with the `DescribeWhatIfAnalysis`
  operation.
  """
  def list_what_if_analyses(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListWhatIfAnalyses", input, options)
  end

  @doc """
  Returns a list of what-if forecast exports created using the
  `CreateWhatIfForecastExport` operation.

  For each what-if forecast export, this operation returns a summary of its
  properties, including its Amazon Resource Name (ARN). You can retrieve the
  complete set of properties by using the what-if forecast export ARN with the
  `DescribeWhatIfForecastExport` operation.
  """
  def list_what_if_forecast_exports(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListWhatIfForecastExports", input, options)
  end

  @doc """
  Returns a list of what-if forecasts created using the `CreateWhatIfForecast`
  operation.

  For each what-if forecast, this operation returns a summary of its properties,
  including its Amazon Resource Name (ARN). You can retrieve the complete set of
  properties by using the what-if forecast ARN with the `DescribeWhatIfForecast`
  operation.
  """
  def list_what_if_forecasts(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListWhatIfForecasts", input, options)
  end

  @doc """
  Resumes a stopped monitor resource.
  """
  def resume_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ResumeResource", input, options)
  end

  @doc """
  Stops a resource.

  The resource undergoes the following states: `CREATE_STOPPING` and
  `CREATE_STOPPED`. You cannot resume a resource once it has been stopped.

  This operation can be applied to the following resources (and their
  corresponding child resources):

    * Dataset Import Job

    * Predictor Job

    * Forecast Job

    * Forecast Export Job

    * Predictor Backtest Export Job

    * Explainability Job

    * Explainability Export Job
  """
  def stop_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopResource", input, options)
  end

  @doc """
  Associates the specified tags to a resource with the specified `resourceArn`.

  If existing tags on a resource are not specified in the request parameters, they
  are not changed. When a resource is deleted, the tags associated with that
  resource are also deleted.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Deletes the specified tags from a resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Replaces the datasets in a dataset group with the specified datasets.

  The `Status` of the dataset group must be `ACTIVE` before you can use the
  dataset group to create a predictor. Use the
  [DescribeDatasetGroup](https://docs.aws.amazon.com/forecast/latest/dg/API_DescribeDatasetGroup.html)
  operation to get the status.
  """
  def update_dataset_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDatasetGroup", input, options)
  end
end
