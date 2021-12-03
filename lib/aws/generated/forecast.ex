# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Forecast do
  @moduledoc """
  Provides APIs for creating and managing Amazon Forecast resources.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
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
  can use CreateAutoPredictor to create new predictors or upgrade/retrain existing
  predictors.

  ## Creating new predictors

  The following parameters are required when creating a new predictor:

    * `PredictorName` - A unique name for the predictor.

    * `DatasetGroupArn` - The ARN of the dataset group used to train the
  predictor.

    * `ForecastFrequency` - The granularity of your forecasts (hourly,
  daily, weekly, etc).

    * `ForecastHorizon` - The number of time steps being forecasted.

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
    Request.request_post(client, metadata(), "CreateAutoPredictor", input, options)
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
  more information, see `howitworks-datasets-groups`.

  To get a list of all your datasets, use the `ListDatasets` operation.

  For example Forecast datasets, see the [Amazon Forecast Sample GitHub repository](https://github.com/aws-samples/amazon-forecast-samples).

  The `Status` of a dataset must be `ACTIVE` before you can import training data.
  Use the `DescribeDataset` operation to get the status.
  """
  def create_dataset(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDataset", input, options)
  end

  @doc """
  Creates a dataset group, which holds a collection of related datasets.

  You can add datasets to the dataset group when you create the dataset group, or
  later by using the `UpdateDatasetGroup` operation.

  After creating a dataset group and adding datasets, you use the dataset group
  when you create a predictor. For more information, see
  `howitworks-datasets-groups`.

  To get a list of all your datasets groups, use the `ListDatasetGroups`
  operation.

  The `Status` of a dataset group must be `ACTIVE` before you can use the dataset
  group to create a predictor. To get the status, use the `DescribeDatasetGroup`
  operation.
  """
  def create_dataset_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDatasetGroup", input, options)
  end

  @doc """
  Imports your training data to an Amazon Forecast dataset.

  You provide the location of your training data in an Amazon Simple Storage
  Service (Amazon S3) bucket and the Amazon Resource Name (ARN) of the dataset
  that you want to import the data to.

  You must specify a `DataSource` object that includes an AWS Identity and Access
  Management (IAM) role that Amazon Forecast can assume to access the data, as
  Amazon Forecast makes a copy of your data and processes it in an internal AWS
  system. For more information, see `aws-forecast-iam-roles`.

  The training data must be in CSV format. The delimiter must be a comma (,).

  You can specify the path to a specific CSV file, the S3 bucket, or to a folder
  in the S3 bucket. For the latter two cases, Amazon Forecast imports all files up
  to the limit of 10,000 files.

  Because dataset imports are not aggregated, your most recent dataset import is
  the one that is used when training a predictor or generating a forecast. Make
  sure that your most recent dataset import contains all of the data you want to
  model off of, and not just the new data collected since the previous import.

  To get a list of all your dataset import jobs, filtered by specified criteria,
  use the `ListDatasetImportJobs` operation.
  """
  def create_dataset_import_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDatasetImportJob", input, options)
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

  You can specify a maximum of 50 time series and 1500 time points.

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
    Request.request_post(client, metadata(), "CreateExplainability", input, options)
  end

  @doc """
  Exports an Explainability resource created by the `CreateExplainability`
  operation.

  Exported files are exported to an Amazon Simple Storage Service (Amazon S3)
  bucket.

  You must specify a `DataDestination` object that includes an Amazon S3 bucket
  and an AWS Identity and Access Management (IAM) role that Amazon Forecast can
  assume to access the Amazon S3 bucket. For more information, see
  `aws-forecast-iam-roles`.

  The `Status` of the export job must be `ACTIVE` before you can access the export
  in your Amazon S3 bucket. To get the status, use the
  `DescribeExplainabilityExport` operation.
  """
  def create_explainability_export(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateExplainabilityExport", input, options)
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
  """
  def create_forecast(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateForecast", input, options)
  end

  @doc """
  Exports a forecast created by the `CreateForecast` operation to your Amazon
  Simple Storage Service (Amazon S3) bucket.

  The forecast file name will match the following conventions:

  <ForecastExportJobName>_<ExportTimestamp>_<PartNumber>

  where the <ExportTimestamp> component is in Java SimpleDateFormat
  (yyyy-MM-ddTHH-mm-ssZ).

  You must specify a `DataDestination` object that includes an AWS Identity and
  Access Management (IAM) role that Amazon Forecast can assume to access the
  Amazon S3 bucket. For more information, see `aws-forecast-iam-roles`.

  For more information, see `howitworks-forecast`.

  To get a list of all your forecast export jobs, use the `ListForecastExportJobs`
  operation.

  The `Status` of the forecast export job must be `ACTIVE` before you can access
  the forecast in your Amazon S3 bucket. To get the status, use the
  `DescribeForecastExportJob` operation.
  """
  def create_forecast_export_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateForecastExportJob", input, options)
  end

  @doc """
  This operation creates a legacy predictor that does not include all the
  predictor functionalities provided by Amazon Forecast.

  To create a predictor that is compatible with all aspects of Forecast, use
  CreateAutoPredictor.

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
    Request.request_post(client, metadata(), "CreatePredictor", input, options)
  end

  @doc """
  Exports backtest forecasts and accuracy metrics generated by the
  `CreatePredictor` operation.

  Two folders containing CSV files are exported to your specified S3 bucket.

  The export file names will match the following conventions:

  `<ExportJobName>_<ExportTimestamp>_<PartNumber>.csv`

  The <ExportTimestamp> component is in Java SimpleDate format
  (yyyy-MM-ddTHH-mm-ssZ).

  You must specify a `DataDestination` object that includes an Amazon S3 bucket
  and an AWS Identity and Access Management (IAM) role that Amazon Forecast can
  assume to access the Amazon S3 bucket. For more information, see
  `aws-forecast-iam-roles`.

  The `Status` of the export job must be `ACTIVE` before you can access the export
  in your Amazon S3 bucket. To get the status, use the
  `DescribePredictorBacktestExportJob` operation.
  """
  def create_predictor_backtest_export_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreatePredictorBacktestExportJob", input, options)
  end

  @doc """
  Deletes an Amazon Forecast dataset that was created using the `CreateDataset`
  operation.

  You can only delete datasets that have a status of `ACTIVE` or `CREATE_FAILED`.
  To get the status use the `DescribeDataset` operation.

  Forecast does not automatically update any dataset groups that contain the
  deleted dataset. In order to update the dataset group, use the operation,
  omitting the deleted dataset's ARN.
  """
  def delete_dataset(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDataset", input, options)
  end

  @doc """
  Deletes a dataset group created using the `CreateDatasetGroup` operation.

  You can only delete dataset groups that have a status of `ACTIVE`,
  `CREATE_FAILED`, or `UPDATE_FAILED`. To get the status, use the
  `DescribeDatasetGroup` operation.

  This operation deletes only the dataset group, not the datasets in the group.
  """
  def delete_dataset_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDatasetGroup", input, options)
  end

  @doc """
  Deletes a dataset import job created using the `CreateDatasetImportJob`
  operation.

  You can delete only dataset import jobs that have a status of `ACTIVE` or
  `CREATE_FAILED`. To get the status, use the `DescribeDatasetImportJob`
  operation.
  """
  def delete_dataset_import_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDatasetImportJob", input, options)
  end

  @doc """
  Deletes an Explainability resource.

  You can delete only predictor that have a status of `ACTIVE` or `CREATE_FAILED`.
  To get the status, use the `DescribeExplainability` operation.
  """
  def delete_explainability(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteExplainability", input, options)
  end

  @doc """
  Deletes an Explainability export job.
  """
  def delete_explainability_export(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteExplainabilityExport", input, options)
  end

  @doc """
  Deletes a forecast created using the `CreateForecast` operation.

  You can delete only forecasts that have a status of `ACTIVE` or `CREATE_FAILED`.
  To get the status, use the `DescribeForecast` operation.

  You can't delete a forecast while it is being exported. After a forecast is
  deleted, you can no longer query the forecast.
  """
  def delete_forecast(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteForecast", input, options)
  end

  @doc """
  Deletes a forecast export job created using the `CreateForecastExportJob`
  operation.

  You can delete only export jobs that have a status of `ACTIVE` or
  `CREATE_FAILED`. To get the status, use the `DescribeForecastExportJob`
  operation.
  """
  def delete_forecast_export_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteForecastExportJob", input, options)
  end

  @doc """
  Deletes a predictor created using the `CreatePredictor` operation.

  You can delete only predictor that have a status of `ACTIVE` or `CREATE_FAILED`.
  To get the status, use the `DescribePredictor` operation.
  """
  def delete_predictor(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeletePredictor", input, options)
  end

  @doc """
  Deletes a predictor backtest export job.
  """
  def delete_predictor_backtest_export_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeletePredictorBacktestExportJob", input, options)
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
    Request.request_post(client, metadata(), "DeleteResourceTree", input, options)
  end

  @doc """
  Describes a predictor created using the CreateAutoPredictor operation.
  """
  def describe_auto_predictor(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeAutoPredictor", input, options)
  end

  @doc """
  Describes an Amazon Forecast dataset created using the `CreateDataset`
  operation.

  In addition to listing the parameters specified in the `CreateDataset` request,
  this operation includes the following dataset properties:

    * `CreationTime`

    * `LastModificationTime`

    * `Status`
  """
  def describe_dataset(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDataset", input, options)
  end

  @doc """
  Describes a dataset group created using the `CreateDatasetGroup` operation.

  In addition to listing the parameters provided in the `CreateDatasetGroup`
  request, this operation includes the following properties:

    * `DatasetArns` - The datasets belonging to the group.

    * `CreationTime`

    * `LastModificationTime`

    * `Status`
  """
  def describe_dataset_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDatasetGroup", input, options)
  end

  @doc """
  Describes a dataset import job created using the `CreateDatasetImportJob`
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
    Request.request_post(client, metadata(), "DescribeDatasetImportJob", input, options)
  end

  @doc """
  Describes an Explainability resource created using the `CreateExplainability`
  operation.
  """
  def describe_explainability(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeExplainability", input, options)
  end

  @doc """
  Describes an Explainability export created using the
  `CreateExplainabilityExport` operation.
  """
  def describe_explainability_export(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeExplainabilityExport", input, options)
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
    Request.request_post(client, metadata(), "DescribeForecast", input, options)
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
    Request.request_post(client, metadata(), "DescribeForecastExportJob", input, options)
  end

  @doc """
  This operation is only valid for legacy predictors created with CreatePredictor.

  If you are not using a legacy predictor, use DescribeAutoPredictor.

  To upgrade a legacy predictor to AutoPredictor, see Upgrading to AutoPredictor.

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
    Request.request_post(client, metadata(), "DescribePredictor", input, options)
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
    Request.request_post(client, metadata(), "DescribePredictorBacktestExportJob", input, options)
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
    Request.request_post(client, metadata(), "GetAccuracyMetrics", input, options)
  end

  @doc """
  Returns a list of dataset groups created using the `CreateDatasetGroup`
  operation.

  For each dataset group, this operation returns a summary of its properties,
  including its Amazon Resource Name (ARN). You can retrieve the complete set of
  properties by using the dataset group ARN with the `DescribeDatasetGroup`
  operation.
  """
  def list_dataset_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDatasetGroups", input, options)
  end

  @doc """
  Returns a list of dataset import jobs created using the `CreateDatasetImportJob`
  operation.

  For each import job, this operation returns a summary of its properties,
  including its Amazon Resource Name (ARN). You can retrieve the complete set of
  properties by using the ARN with the `DescribeDatasetImportJob` operation. You
  can filter the list by providing an array of `Filter` objects.
  """
  def list_dataset_import_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDatasetImportJobs", input, options)
  end

  @doc """
  Returns a list of datasets created using the `CreateDataset` operation.

  For each dataset, a summary of its properties, including its Amazon Resource
  Name (ARN), is returned. To retrieve the complete set of properties, use the ARN
  with the `DescribeDataset` operation.
  """
  def list_datasets(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDatasets", input, options)
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
    Request.request_post(client, metadata(), "ListExplainabilities", input, options)
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
    Request.request_post(client, metadata(), "ListExplainabilityExports", input, options)
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
    Request.request_post(client, metadata(), "ListForecastExportJobs", input, options)
  end

  @doc """
  Returns a list of forecasts created using the `CreateForecast` operation.

  For each forecast, this operation returns a summary of its properties, including
  its Amazon Resource Name (ARN). To retrieve the complete set of properties,
  specify the ARN with the `DescribeForecast` operation. You can filter the list
  using an array of `Filter` objects.
  """
  def list_forecasts(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListForecasts", input, options)
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
    Request.request_post(client, metadata(), "ListPredictorBacktestExportJobs", input, options)
  end

  @doc """
  Returns a list of predictors created using the `CreatePredictor` operation.

  For each predictor, this operation returns a summary of its properties,
  including its Amazon Resource Name (ARN). You can retrieve the complete set of
  properties by using the ARN with the `DescribePredictor` operation. You can
  filter the list using an array of `Filter` objects.
  """
  def list_predictors(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListPredictors", input, options)
  end

  @doc """
  Lists the tags for an Amazon Forecast resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
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
  """
  def stop_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopResource", input, options)
  end

  @doc """
  Associates the specified tags to a resource with the specified `resourceArn`.

  If existing tags on a resource are not specified in the request parameters, they
  are not changed. When a resource is deleted, the tags associated with that
  resource are also deleted.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Deletes the specified tags from a resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Replaces the datasets in a dataset group with the specified datasets.

  The `Status` of the dataset group must be `ACTIVE` before you can use the
  dataset group to create a predictor. Use the `DescribeDatasetGroup` operation to
  get the status.
  """
  def update_dataset_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateDatasetGroup", input, options)
  end
end
