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
  actually looks like. In other words, it contains the location of the data
  source, the data schema, and other information. A dataset also contains any tags
  associated with the ingested data.
  """
  def create_dataset(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDataset", input, options)
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
    Request.request_post(client, metadata(), "CreateInferenceScheduler", input, options)
  end

  @doc """
  Creates a label for an event.
  """
  def create_label(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateLabel", input, options)
  end

  @doc """
  Creates a group of labels.
  """
  def create_label_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateLabelGroup", input, options)
  end

  @doc """
  Creates an ML model for data inference.

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
    Request.request_post(client, metadata(), "CreateModel", input, options)
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
    Request.request_post(client, metadata(), "DeleteDataset", input, options)
  end

  @doc """
  Deletes an inference scheduler that has been set up.

  Already processed output results are not affected.
  """
  def delete_inference_scheduler(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteInferenceScheduler", input, options)
  end

  @doc """
  Deletes a label.
  """
  def delete_label(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteLabel", input, options)
  end

  @doc """
  Deletes a group of labels.
  """
  def delete_label_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteLabelGroup", input, options)
  end

  @doc """
  Deletes an ML model currently available for Amazon Lookout for Equipment.

  This will prevent it from being used with an inference scheduler, even one that
  is already set up.
  """
  def delete_model(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteModel", input, options)
  end

  @doc """
  Provides information on a specific data ingestion job such as creation time,
  dataset ARN, and status.
  """
  def describe_data_ingestion_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDataIngestionJob", input, options)
  end

  @doc """
  Provides a JSON description of the data in each time series dataset, including
  names, column names, and data types.
  """
  def describe_dataset(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDataset", input, options)
  end

  @doc """
  Specifies information about the inference scheduler being used, including name,
  model, status, and associated metadata
  """
  def describe_inference_scheduler(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeInferenceScheduler", input, options)
  end

  @doc """
  Returns the name of the label.
  """
  def describe_label(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeLabel", input, options)
  end

  @doc """
  Returns information about the label group.
  """
  def describe_label_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeLabelGroup", input, options)
  end

  @doc """
  Provides a JSON containing the overall information about a specific ML model,
  including model name and ARN, dataset, training and evaluation information,
  status, and so on.
  """
  def describe_model(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeModel", input, options)
  end

  @doc """
  Provides a list of all data ingestion jobs, including dataset name and ARN, S3
  location of the input data, status, and so on.
  """
  def list_data_ingestion_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDataIngestionJobs", input, options)
  end

  @doc """
  Lists all datasets currently available in your account, filtering on the dataset
  name.
  """
  def list_datasets(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDatasets", input, options)
  end

  @doc """
  Lists all inference events that have been found for the specified inference
  scheduler.
  """
  def list_inference_events(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListInferenceEvents", input, options)
  end

  @doc """
  Lists all inference executions that have been performed by the specified
  inference scheduler.
  """
  def list_inference_executions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListInferenceExecutions", input, options)
  end

  @doc """
  Retrieves a list of all inference schedulers currently available for your
  account.
  """
  def list_inference_schedulers(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListInferenceSchedulers", input, options)
  end

  @doc """
  Returns a list of the label groups.
  """
  def list_label_groups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListLabelGroups", input, options)
  end

  @doc """
  Provides a list of labels.
  """
  def list_labels(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListLabels", input, options)
  end

  @doc """
  Generates a list of all models in the account, including model name and ARN,
  dataset, and status.
  """
  def list_models(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListModels", input, options)
  end

  @doc """
  Lists statistics about the data collected for each of the sensors that have been
  successfully ingested in the particular dataset.

  Can also be used to retreive Sensor Statistics for a previous ingestion job.
  """
  def list_sensor_statistics(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListSensorStatistics", input, options)
  end

  @doc """
  Lists all the tags for a specified resource, including key and value.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Starts a data ingestion job.

  Amazon Lookout for Equipment returns the job status.
  """
  def start_data_ingestion_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartDataIngestionJob", input, options)
  end

  @doc """
  Starts an inference scheduler.
  """
  def start_inference_scheduler(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartInferenceScheduler", input, options)
  end

  @doc """
  Stops an inference scheduler.
  """
  def stop_inference_scheduler(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopInferenceScheduler", input, options)
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
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Removes a specific tag from a given resource.

  The tag is specified by its key.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Updates an inference scheduler.
  """
  def update_inference_scheduler(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateInferenceScheduler", input, options)
  end

  @doc """
  Updates the label group.
  """
  def update_label_group(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateLabelGroup", input, options)
  end
end
