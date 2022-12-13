# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LookoutVision do
  @moduledoc """
  This is the Amazon Lookout for Vision API Reference.

  It provides descriptions of actions, data types, common parameters, and common
  errors.

  Amazon Lookout for Vision enables you to find visual defects in industrial
  products, accurately and at scale. It uses computer vision to identify missing
  components in an industrial product, damage to vehicles or structures,
  irregularities in production lines, and even minuscule defects in silicon wafers
  — or any other physical item where quality is important such as a missing
  capacitor on printed circuit boards.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2020-11-20",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "lookoutvision",
      global?: false,
      protocol: "rest-json",
      service_id: "LookoutVision",
      signature_version: "v4",
      signing_name: "lookoutvision",
      target_prefix: nil
    }
  end

  @doc """
  Creates a new dataset in an Amazon Lookout for Vision project.

  `CreateDataset` can create a training or a test dataset from a valid dataset
  source (`DatasetSource`).

  If you want a single dataset project, specify `train` for the value of
  `DatasetType`.

  To have a project with separate training and test datasets, call `CreateDataset`
  twice. On the first call, specify `train` for the value of `DatasetType`. On the
  second call, specify `test` for the value of `DatasetType`.

  This operation requires permissions to perform the `lookoutvision:CreateDataset`
  operation.
  """
  def create_dataset(%Client{} = client, project_name, input, options \\ []) do
    url_path = "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/datasets"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Creates a new version of a model within an an Amazon Lookout for Vision project.

  `CreateModel` is an asynchronous operation in which Amazon Lookout for Vision
  trains, tests, and evaluates a new version of a model.

  To get the current status, check the `Status` field returned in the response
  from `DescribeModel`.

  If the project has a single dataset, Amazon Lookout for Vision internally splits
  the dataset to create a training and a test dataset. If the project has a
  training and a test dataset, Lookout for Vision uses the respective datasets to
  train and test the model.

  After training completes, the evaluation metrics are stored at the location
  specified in `OutputConfig`.

  This operation requires permissions to perform the `lookoutvision:CreateModel`
  operation. If you want to tag your model, you also require permission to the
  `lookoutvision:TagResource` operation.
  """
  def create_model(%Client{} = client, project_name, input, options \\ []) do
    url_path = "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/models"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Creates an empty Amazon Lookout for Vision project.

  After you create the project, add a dataset by calling `CreateDataset`.

  This operation requires permissions to perform the `lookoutvision:CreateProject`
  operation.
  """
  def create_project(%Client{} = client, input, options \\ []) do
    url_path = "/2020-11-20/projects"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Deletes an existing Amazon Lookout for Vision `dataset`.

  If your the project has a single dataset, you must create a new dataset before
  you can create a model.

  If you project has a training dataset and a test dataset consider the following.

    * If you delete the test dataset, your project reverts to a single
  dataset project. If you then train the model, Amazon Lookout for Vision
  internally splits the remaining dataset into a training and test dataset.

    * If you delete the training dataset, you must create a training
  dataset before you can create a model.

  This operation requires permissions to perform the `lookoutvision:DeleteDataset`
  operation.
  """
  def delete_dataset(%Client{} = client, dataset_type, project_name, input, options \\ []) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/datasets/#{AWS.Util.encode_uri(dataset_type)}"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Deletes an Amazon Lookout for Vision model.

  You can't delete a running model. To stop a running model, use the `StopModel`
  operation.

  It might take a few seconds to delete a model. To determine if a model has been
  deleted, call `ListModels` and check if the version of the model
  (`ModelVersion`) is in the `Models` array.

  This operation requires permissions to perform the `lookoutvision:DeleteModel`
  operation.
  """
  def delete_model(%Client{} = client, model_version, project_name, input, options \\ []) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/models/#{AWS.Util.encode_uri(model_version)}"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Deletes an Amazon Lookout for Vision project.

  To delete a project, you must first delete each version of the model associated
  with the project. To delete a model use the `DeleteModel` operation.

  You also have to delete the dataset(s) associated with the model. For more
  information, see `DeleteDataset`. The images referenced by the training and test
  datasets aren't deleted.

  This operation requires permissions to perform the `lookoutvision:DeleteProject`
  operation.
  """
  def delete_project(%Client{} = client, project_name, input, options \\ []) do
    url_path = "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Describe an Amazon Lookout for Vision dataset.

  This operation requires permissions to perform the
  `lookoutvision:DescribeDataset` operation.
  """
  def describe_dataset(%Client{} = client, dataset_type, project_name, options \\ []) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/datasets/#{AWS.Util.encode_uri(dataset_type)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Describes a version of an Amazon Lookout for Vision model.

  This operation requires permissions to perform the `lookoutvision:DescribeModel`
  operation.
  """
  def describe_model(%Client{} = client, model_version, project_name, options \\ []) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/models/#{AWS.Util.encode_uri(model_version)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Describes an Amazon Lookout for Vision model packaging job.

  This operation requires permissions to perform the
  `lookoutvision:DescribeModelPackagingJob` operation.

  For more information, see *Using your Amazon Lookout for Vision model on an edge
  device* in the Amazon Lookout for Vision Developer Guide.
  """
  def describe_model_packaging_job(%Client{} = client, job_name, project_name, options \\ []) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/modelpackagingjobs/#{AWS.Util.encode_uri(job_name)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Describes an Amazon Lookout for Vision project.

  This operation requires permissions to perform the
  `lookoutvision:DescribeProject` operation.
  """
  def describe_project(%Client{} = client, project_name, options \\ []) do
    url_path = "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Detects anomalies in an image that you supply.

  The response from `DetectAnomalies` includes a boolean prediction that the image
  contains one or more anomalies and a confidence value for the prediction. If the
  model is an image segmentation model, the response also includes segmentation
  information for each type of anomaly found in the image.

  Before calling `DetectAnomalies`, you must first start your model with the
  `StartModel` operation. You are charged for the amount of time, in minutes, that
  a model runs and for the number of anomaly detection units that your model uses.
  If you are not using a model, use the `StopModel` operation to stop your model.

  For more information, see *Detecting anomalies in an image* in the Amazon
  Lookout for Vision developer guide.

  This operation requires permissions to perform the
  `lookoutvision:DetectAnomalies` operation.
  """
  def detect_anomalies(%Client{} = client, model_version, project_name, input, options \\ []) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/models/#{AWS.Util.encode_uri(model_version)}/detect"

    {headers, input} =
      [
        {"ContentType", "Content-Type"}
      ]
      |> Request.build_params(input)

    query_params = []

    options =
      Keyword.put(
        options,
        :send_body_as_binary?,
        true
      )

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Lists the JSON Lines within a dataset.

  An Amazon Lookout for Vision JSON Line contains the anomaly information for a
  single image, including the image location and the assigned label.

  This operation requires permissions to perform the
  `lookoutvision:ListDatasetEntries` operation.
  """
  def list_dataset_entries(
        %Client{} = client,
        dataset_type,
        project_name,
        after_creation_date \\ nil,
        anomaly_class \\ nil,
        before_creation_date \\ nil,
        labeled \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        source_ref_contains \\ nil,
        options \\ []
      ) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/datasets/#{AWS.Util.encode_uri(dataset_type)}/entries"

    headers = []
    query_params = []

    query_params =
      if !is_nil(source_ref_contains) do
        [{"sourceRefContains", source_ref_contains} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(labeled) do
        [{"labeled", labeled} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(before_creation_date) do
        [{"createdBefore", before_creation_date} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(anomaly_class) do
        [{"anomalyClass", anomaly_class} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(after_creation_date) do
        [{"createdAfter", after_creation_date} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists the model packaging jobs created for an Amazon Lookout for Vision project.

  This operation requires permissions to perform the
  `lookoutvision:ListModelPackagingJobs` operation.

  For more information, see *Using your Amazon Lookout for Vision model on an edge
  device* in the Amazon Lookout for Vision Developer Guide.
  """
  def list_model_packaging_jobs(
        %Client{} = client,
        project_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/modelpackagingjobs"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists the versions of a model in an Amazon Lookout for Vision project.

  The `ListModels` operation is eventually consistent. Recent calls to
  `CreateModel` might take a while to appear in the response from `ListProjects`.

  This operation requires permissions to perform the `lookoutvision:ListModels`
  operation.
  """
  def list_models(
        %Client{} = client,
        project_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/models"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists the Amazon Lookout for Vision projects in your AWS account that are in the
  AWS Region in which you call `ListProjects`.

  The `ListProjects` operation is eventually consistent. Recent calls to
  `CreateProject` and `DeleteProject` might take a while to appear in the response
  from `ListProjects`.

  This operation requires permissions to perform the `lookoutvision:ListProjects`
  operation.
  """
  def list_projects(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/2020-11-20/projects"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Returns a list of tags attached to the specified Amazon Lookout for Vision
  model.

  This operation requires permissions to perform the
  `lookoutvision:ListTagsForResource` operation.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/2020-11-20/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Starts the running of the version of an Amazon Lookout for Vision model.

  Starting a model takes a while to complete. To check the current state of the
  model, use `DescribeModel`.

  A model is ready to use when its status is `HOSTED`.

  Once the model is running, you can detect custom labels in new images by calling
  `DetectAnomalies`.

  You are charged for the amount of time that the model is running. To stop a
  running model, call `StopModel`.

  This operation requires permissions to perform the `lookoutvision:StartModel`
  operation.
  """
  def start_model(%Client{} = client, model_version, project_name, input, options \\ []) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/models/#{AWS.Util.encode_uri(model_version)}/start"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Starts an Amazon Lookout for Vision model packaging job.

  A model packaging job creates an AWS IoT Greengrass component for a Lookout for
  Vision model. You can use the component to deploy your model to an edge device
  managed by Greengrass.

  Use the `DescribeModelPackagingJob` API to determine the current status of the
  job. The model packaging job is complete if the value of `Status` is
  `SUCCEEDED`.

  To deploy the component to the target device, use the component name and
  component version with the AWS IoT Greengrass
  [CreateDeployment](https://docs.aws.amazon.com/greengrass/v2/APIReference/API_CreateDeployment.html)
  API.

  This operation requires the following permissions:

    * `lookoutvision:StartModelPackagingJob`

    * `s3:PutObject`

    * `s3:GetBucketLocation`

    * `kms:GenerateDataKey`

    * `greengrass:CreateComponentVersion`

    * `greengrass:DescribeComponent`

    * (Optional) `greengrass:TagResource`. Only required if you want to
  tag the component.

  For more information, see *Using your Amazon Lookout for Vision model on an edge
  device* in the Amazon Lookout for Vision Developer Guide.
  """
  def start_model_packaging_job(%Client{} = client, project_name, input, options \\ []) do
    url_path = "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/modelpackagingjobs"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Stops the hosting of a running model.

  The operation might take a while to complete. To check the current status, call
  `DescribeModel`.

  After the model hosting stops, the `Status` of the model is `TRAINED`.

  This operation requires permissions to perform the `lookoutvision:StopModel`
  operation.
  """
  def stop_model(%Client{} = client, model_version, project_name, input, options \\ []) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/models/#{AWS.Util.encode_uri(model_version)}/stop"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end

  @doc """
  Adds one or more key-value tags to an Amazon Lookout for Vision model.

  For more information, see *Tagging a model* in the *Amazon Lookout for Vision
  Developer Guide*.

  This operation requires permissions to perform the `lookoutvision:TagResource`
  operation.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/2020-11-20/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Removes one or more tags from an Amazon Lookout for Vision model.

  For more information, see *Tagging a model* in the *Amazon Lookout for Vision
  Developer Guide*.

  This operation requires permissions to perform the `lookoutvision:UntagResource`
  operation.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/2020-11-20/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Adds or updates one or more JSON Line entries in a dataset.

  A JSON Line includes information about an image used for training or testing an
  Amazon Lookout for Vision model.

  To update an existing JSON Line, use the `source-ref` field to identify the JSON
  Line. The JSON line that you supply replaces the existing JSON line. Any
  existing annotations that are not in the new JSON line are removed from the
  dataset.

  For more information, see *Defining JSON lines for anomaly classification* in
  the Amazon Lookout for Vision Developer Guide.

  The images you reference in the `source-ref` field of a JSON line, must be in
  the same S3 bucket as the existing images in the dataset.

  Updating a dataset might take a while to complete. To check the current status,
  call `DescribeDataset` and check the `Status` field in the response.

  This operation requires permissions to perform the
  `lookoutvision:UpdateDatasetEntries` operation.
  """
  def update_dataset_entries(%Client{} = client, dataset_type, project_name, input, options \\ []) do
    url_path =
      "/2020-11-20/projects/#{AWS.Util.encode_uri(project_name)}/datasets/#{AWS.Util.encode_uri(dataset_type)}/entries"

    {headers, input} =
      [
        {"ClientToken", "X-Amzn-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      202
    )
  end
end
