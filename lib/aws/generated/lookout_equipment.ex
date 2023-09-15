# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LookoutEquipment do
  @moduledoc """
  Amazon Lookout for Equipment is a machine learning service that uses advanced
  analytics to identify anomalies in machines from sensor data for use in
  predictive maintenance.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: "LookoutEquipment",
      api_version: "2020-12-15",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "lookoutequipment",
      global?: false,
      protocol: "json",
      service_id: "LookoutEquipment",
      signature_version: "v4",
      signing_name: "lookoutequipment",
      target_prefix: "AWSLookoutEquipmentFrontendService"
    }
  end

  @doc """
  Creates a container for a collection of data being ingested for analysis.

  The dataset contains the metadata describing where the data is and what the data
  actually looks like. For example, it contains the location of the data source,
  the data schema, and other information. A dataset also contains any tags
  associated with the ingested data.
  """
  def create_dataset(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDataset", input, options)
  end

  @doc """
  Creates a scheduled inference.

  Scheduling an inference is setting up a continuous real-time inference plan to
  analyze new measurement data. When setting up the schedule, you provide an S3
  bucket location for the input data, assign it a delimiter between separate
  entries in the data, set an offset delay if desired, and set the frequency of
  inferencing. You must also provide an S3 bucket location for the output data.
  """
  def create_inference_scheduler(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateInferenceScheduler", input, options)
  end

  @doc """
  Creates a label for an event.
  """
  def create_label(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLabel", input, options)
  end

  @doc """
  Creates a group of labels.
  """
  def create_label_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLabelGroup", input, options)
  end

  @doc """
  Creates a machine learning model for data inference.

  A machine-learning (ML) model is a mathematical model that finds patterns in
  your data. In Amazon Lookout for Equipment, the model learns the patterns of
  normal behavior and detects abnormal behavior that could be potential equipment
  failure (or maintenance events). The models are made by analyzing normal data
  and abnormalities in machine behavior that have already occurred.

  Your model is trained using a portion of the data from your dataset and uses
  that data to learn patterns of normal behavior and abnormal patterns that lead
  to equipment failure. Another portion of the data is used to evaluate the
  model's accuracy.
  """
  def create_model(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateModel", input, options)
  end

  @doc """
  Creates a retraining scheduler on the specified model.
  """
  def create_retraining_scheduler(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateRetrainingScheduler", input, options)
  end

  @doc """
  Deletes a dataset and associated artifacts.

  The operation will check to see if any inference scheduler or data ingestion job
  is currently using the dataset, and if there isn't, the dataset, its metadata,
  and any associated data stored in S3 will be deleted. This does not affect any
  models that used this dataset for training and evaluation, but does prevent it
  from being used in the future.
  """
  def delete_dataset(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDataset", input, options)
  end

  @doc """
  Deletes an inference scheduler that has been set up.

  Prior inference results will not be deleted.
  """
  def delete_inference_scheduler(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteInferenceScheduler", input, options)
  end

  @doc """
  Deletes a label.
  """
  def delete_label(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteLabel", input, options)
  end

  @doc """
  Deletes a group of labels.
  """
  def delete_label_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteLabelGroup", input, options)
  end

  @doc """
  Deletes a machine learning model currently available for Amazon Lookout for
  Equipment.

  This will prevent it from being used with an inference scheduler, even one that
  is already set up.
  """
  def delete_model(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteModel", input, options)
  end

  @doc """
  Deletes the resource policy attached to the resource.
  """
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteResourcePolicy", input, options)
  end

  @doc """
  Deletes a retraining scheduler from a model.

  The retraining scheduler must be in the `STOPPED` status.
  """
  def delete_retraining_scheduler(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteRetrainingScheduler", input, options)
  end

  @doc """
  Provides information on a specific data ingestion job such as creation time,
  dataset ARN, and status.
  """
  def describe_data_ingestion_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDataIngestionJob", input, options)
  end

  @doc """
  Provides a JSON description of the data in each time series dataset, including
  names, column names, and data types.
  """
  def describe_dataset(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDataset", input, options)
  end

  @doc """
  Specifies information about the inference scheduler being used, including name,
  model, status, and associated metadata
  """
  def describe_inference_scheduler(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInferenceScheduler", input, options)
  end

  @doc """
  Returns the name of the label.
  """
  def describe_label(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLabel", input, options)
  end

  @doc """
  Returns information about the label group.
  """
  def describe_label_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLabelGroup", input, options)
  end

  @doc """
  Provides a JSON containing the overall information about a specific machine
  learning model, including model name and ARN, dataset, training and evaluation
  information, status, and so on.
  """
  def describe_model(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeModel", input, options)
  end

  @doc """
  Retrieves information about a specific machine learning model version.
  """
  def describe_model_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeModelVersion", input, options)
  end

  @doc """
  Provides the details of a resource policy attached to a resource.
  """
  def describe_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeResourcePolicy", input, options)
  end

  @doc """
  Provides a description of the retraining scheduler, including information such
  as the model name and retraining parameters.
  """
  def describe_retraining_scheduler(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRetrainingScheduler", input, options)
  end

  @doc """
  Imports a dataset.
  """
  def import_dataset(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportDataset", input, options)
  end

  @doc """
  Imports a model that has been trained successfully.
  """
  def import_model_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportModelVersion", input, options)
  end

  @doc """
  Provides a list of all data ingestion jobs, including dataset name and ARN, S3
  location of the input data, status, and so on.
  """
  def list_data_ingestion_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDataIngestionJobs", input, options)
  end

  @doc """
  Lists all datasets currently available in your account, filtering on the dataset
  name.
  """
  def list_datasets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDatasets", input, options)
  end

  @doc """
  Lists all inference events that have been found for the specified inference
  scheduler.
  """
  def list_inference_events(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListInferenceEvents", input, options)
  end

  @doc """
  Lists all inference executions that have been performed by the specified
  inference scheduler.
  """
  def list_inference_executions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListInferenceExecutions", input, options)
  end

  @doc """
  Retrieves a list of all inference schedulers currently available for your
  account.
  """
  def list_inference_schedulers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListInferenceSchedulers", input, options)
  end

  @doc """
  Returns a list of the label groups.
  """
  def list_label_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListLabelGroups", input, options)
  end

  @doc """
  Provides a list of labels.
  """
  def list_labels(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListLabels", input, options)
  end

  @doc """
  Generates a list of all model versions for a given model, including the model
  version, model version ARN, and status.

  To list a subset of versions, use the `MaxModelVersion` and `MinModelVersion`
  fields.
  """
  def list_model_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListModelVersions", input, options)
  end

  @doc """
  Generates a list of all models in the account, including model name and ARN,
  dataset, and status.
  """
  def list_models(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListModels", input, options)
  end

  @doc """
  Lists all retraining schedulers in your account, filtering by model name prefix
  and status.
  """
  def list_retraining_schedulers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRetrainingSchedulers", input, options)
  end

  @doc """
  Lists statistics about the data collected for each of the sensors that have been
  successfully ingested in the particular dataset.

  Can also be used to retreive Sensor Statistics for a previous ingestion job.
  """
  def list_sensor_statistics(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSensorStatistics", input, options)
  end

  @doc """
  Lists all the tags for a specified resource, including key and value.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Creates a resource control policy for a given resource.
  """
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutResourcePolicy", input, options)
  end

  @doc """
  Starts a data ingestion job.

  Amazon Lookout for Equipment returns the job status.
  """
  def start_data_ingestion_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartDataIngestionJob", input, options)
  end

  @doc """
  Starts an inference scheduler.
  """
  def start_inference_scheduler(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartInferenceScheduler", input, options)
  end

  @doc """
  Starts a retraining scheduler.
  """
  def start_retraining_scheduler(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartRetrainingScheduler", input, options)
  end

  @doc """
  Stops an inference scheduler.
  """
  def stop_inference_scheduler(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopInferenceScheduler", input, options)
  end

  @doc """
  Stops a retraining scheduler.
  """
  def stop_retraining_scheduler(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopRetrainingScheduler", input, options)
  end

  @doc """
  Associates a given tag to a resource in your account.

  A tag is a key-value pair which can be added to an Amazon Lookout for Equipment
  resource as metadata. Tags can be used for organizing your resources as well as
  helping you to search and filter by tag. Multiple tags can be added to a
  resource, either when you create it, or later. Up to 50 tags can be associated
  with each resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes a specific tag from a given resource.

  The tag is specified by its key.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Sets the active model version for a given machine learning model.
  """
  def update_active_model_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateActiveModelVersion", input, options)
  end

  @doc """
  Updates an inference scheduler.
  """
  def update_inference_scheduler(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateInferenceScheduler", input, options)
  end

  @doc """
  Updates the label group.
  """
  def update_label_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateLabelGroup", input, options)
  end

  @doc """
  Updates a model in the account.
  """
  def update_model(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateModel", input, options)
  end

  @doc """
  Updates a retraining scheduler.
  """
  def update_retraining_scheduler(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRetrainingScheduler", input, options)
  end
end
