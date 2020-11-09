# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Comprehend do
  @moduledoc """
  Amazon Comprehend is an AWS service for gaining insight into the content of
  documents.

  Use these actions to determine the topics contained in your documents, the
  topics they discuss, the predominant sentiment expressed in them, the
  predominant language used, and more.
  """

  @doc """
  Determines the dominant language of the input text for a batch of documents.

  For a list of languages that Amazon Comprehend can detect, see [Amazon Comprehend Supported
  Languages](https://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html).
  """
  def batch_detect_dominant_language(client, input, options \\ []) do
    request(client, "BatchDetectDominantLanguage", input, options)
  end

  @doc """
  Inspects the text of a batch of documents for named entities and returns
  information about them.

  For more information about named entities, see `how-entities`
  """
  def batch_detect_entities(client, input, options \\ []) do
    request(client, "BatchDetectEntities", input, options)
  end

  @doc """
  Detects the key noun phrases found in a batch of documents.
  """
  def batch_detect_key_phrases(client, input, options \\ []) do
    request(client, "BatchDetectKeyPhrases", input, options)
  end

  @doc """
  Inspects a batch of documents and returns an inference of the prevailing
  sentiment, `POSITIVE`, `NEUTRAL`, `MIXED`, or `NEGATIVE`, in each one.
  """
  def batch_detect_sentiment(client, input, options \\ []) do
    request(client, "BatchDetectSentiment", input, options)
  end

  @doc """
  Inspects the text of a batch of documents for the syntax and part of speech of
  the words in the document and returns information about them.

  For more information, see `how-syntax`.
  """
  def batch_detect_syntax(client, input, options \\ []) do
    request(client, "BatchDetectSyntax", input, options)
  end

  @doc """
  Creates a new document classification request to analyze a single document in
  real-time, using a previously created and trained custom model and an endpoint.
  """
  def classify_document(client, input, options \\ []) do
    request(client, "ClassifyDocument", input, options)
  end

  @doc """
  Creates a new document classifier that you can use to categorize documents.

  To create a classifier, you provide a set of training documents that labeled
  with the categories that you want to use. After the classifier is trained you
  can use it to categorize a set of labeled documents into the categories. For
  more information, see `how-document-classification`.
  """
  def create_document_classifier(client, input, options \\ []) do
    request(client, "CreateDocumentClassifier", input, options)
  end

  @doc """
  Creates a model-specific endpoint for synchronous inference for a previously
  trained custom model
  """
  def create_endpoint(client, input, options \\ []) do
    request(client, "CreateEndpoint", input, options)
  end

  @doc """
  Creates an entity recognizer using submitted files.

  After your `CreateEntityRecognizer` request is submitted, you can check job
  status using the API.
  """
  def create_entity_recognizer(client, input, options \\ []) do
    request(client, "CreateEntityRecognizer", input, options)
  end

  @doc """
  Deletes a previously created document classifier

  Only those classifiers that are in terminated states (IN_ERROR, TRAINED) will be
  deleted.

  If an active inference job is using the model, a `ResourceInUseException` will
  be returned.

  This is an asynchronous action that puts the classifier into a DELETING state,
  and it is then removed by a background job. Once removed, the classifier
  disappears from your account and is no longer available for use.
  """
  def delete_document_classifier(client, input, options \\ []) do
    request(client, "DeleteDocumentClassifier", input, options)
  end

  @doc """
  Deletes a model-specific endpoint for a previously-trained custom model.

  All endpoints must be deleted in order for the model to be deleted.
  """
  def delete_endpoint(client, input, options \\ []) do
    request(client, "DeleteEndpoint", input, options)
  end

  @doc """
  Deletes an entity recognizer.

  Only those recognizers that are in terminated states (IN_ERROR, TRAINED) will be
  deleted. If an active inference job is using the model, a
  `ResourceInUseException` will be returned.

  This is an asynchronous action that puts the recognizer into a DELETING state,
  and it is then removed by a background job. Once removed, the recognizer
  disappears from your account and is no longer available for use.
  """
  def delete_entity_recognizer(client, input, options \\ []) do
    request(client, "DeleteEntityRecognizer", input, options)
  end

  @doc """
  Gets the properties associated with a document classification job.

  Use this operation to get the status of a classification job.
  """
  def describe_document_classification_job(client, input, options \\ []) do
    request(client, "DescribeDocumentClassificationJob", input, options)
  end

  @doc """
  Gets the properties associated with a document classifier.
  """
  def describe_document_classifier(client, input, options \\ []) do
    request(client, "DescribeDocumentClassifier", input, options)
  end

  @doc """
  Gets the properties associated with a dominant language detection job.

  Use this operation to get the status of a detection job.
  """
  def describe_dominant_language_detection_job(client, input, options \\ []) do
    request(client, "DescribeDominantLanguageDetectionJob", input, options)
  end

  @doc """
  Gets the properties associated with a specific endpoint.

  Use this operation to get the status of an endpoint.
  """
  def describe_endpoint(client, input, options \\ []) do
    request(client, "DescribeEndpoint", input, options)
  end

  @doc """
  Gets the properties associated with an entities detection job.

  Use this operation to get the status of a detection job.
  """
  def describe_entities_detection_job(client, input, options \\ []) do
    request(client, "DescribeEntitiesDetectionJob", input, options)
  end

  @doc """
  Provides details about an entity recognizer including status, S3 buckets
  containing training data, recognizer metadata, metrics, and so on.
  """
  def describe_entity_recognizer(client, input, options \\ []) do
    request(client, "DescribeEntityRecognizer", input, options)
  end

  @doc """
  Gets the properties associated with a key phrases detection job.

  Use this operation to get the status of a detection job.
  """
  def describe_key_phrases_detection_job(client, input, options \\ []) do
    request(client, "DescribeKeyPhrasesDetectionJob", input, options)
  end

  @doc """
  Gets the properties associated with a PII entities detection job.

  For example, you can use this operation to get the job status.
  """
  def describe_pii_entities_detection_job(client, input, options \\ []) do
    request(client, "DescribePiiEntitiesDetectionJob", input, options)
  end

  @doc """
  Gets the properties associated with a sentiment detection job.

  Use this operation to get the status of a detection job.
  """
  def describe_sentiment_detection_job(client, input, options \\ []) do
    request(client, "DescribeSentimentDetectionJob", input, options)
  end

  @doc """
  Gets the properties associated with a topic detection job.

  Use this operation to get the status of a detection job.
  """
  def describe_topics_detection_job(client, input, options \\ []) do
    request(client, "DescribeTopicsDetectionJob", input, options)
  end

  @doc """
  Determines the dominant language of the input text.

  For a list of languages that Amazon Comprehend can detect, see [Amazon Comprehend Supported
  Languages](https://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html).
  """
  def detect_dominant_language(client, input, options \\ []) do
    request(client, "DetectDominantLanguage", input, options)
  end

  @doc """
  Inspects text for named entities, and returns information about them.

  For more information, about named entities, see `how-entities`.
  """
  def detect_entities(client, input, options \\ []) do
    request(client, "DetectEntities", input, options)
  end

  @doc """
  Detects the key noun phrases found in the text.
  """
  def detect_key_phrases(client, input, options \\ []) do
    request(client, "DetectKeyPhrases", input, options)
  end

  @doc """
  Inspects the input text for entities that contain personally identifiable
  information (PII) and returns information about them.
  """
  def detect_pii_entities(client, input, options \\ []) do
    request(client, "DetectPiiEntities", input, options)
  end

  @doc """
  Inspects text and returns an inference of the prevailing sentiment (`POSITIVE`,
  `NEUTRAL`, `MIXED`, or `NEGATIVE`).
  """
  def detect_sentiment(client, input, options \\ []) do
    request(client, "DetectSentiment", input, options)
  end

  @doc """
  Inspects text for syntax and the part of speech of words in the document.

  For more information, `how-syntax`.
  """
  def detect_syntax(client, input, options \\ []) do
    request(client, "DetectSyntax", input, options)
  end

  @doc """
  Gets a list of the documentation classification jobs that you have submitted.
  """
  def list_document_classification_jobs(client, input, options \\ []) do
    request(client, "ListDocumentClassificationJobs", input, options)
  end

  @doc """
  Gets a list of the document classifiers that you have created.
  """
  def list_document_classifiers(client, input, options \\ []) do
    request(client, "ListDocumentClassifiers", input, options)
  end

  @doc """
  Gets a list of the dominant language detection jobs that you have submitted.
  """
  def list_dominant_language_detection_jobs(client, input, options \\ []) do
    request(client, "ListDominantLanguageDetectionJobs", input, options)
  end

  @doc """
  Gets a list of all existing endpoints that you've created.
  """
  def list_endpoints(client, input, options \\ []) do
    request(client, "ListEndpoints", input, options)
  end

  @doc """
  Gets a list of the entity detection jobs that you have submitted.
  """
  def list_entities_detection_jobs(client, input, options \\ []) do
    request(client, "ListEntitiesDetectionJobs", input, options)
  end

  @doc """
  Gets a list of the properties of all entity recognizers that you created,
  including recognizers currently in training.

  Allows you to filter the list of recognizers based on criteria such as status
  and submission time. This call returns up to 500 entity recognizers in the list,
  with a default number of 100 recognizers in the list.

  The results of this list are not in any particular order. Please get the list
  and sort locally if needed.
  """
  def list_entity_recognizers(client, input, options \\ []) do
    request(client, "ListEntityRecognizers", input, options)
  end

  @doc """
  Get a list of key phrase detection jobs that you have submitted.
  """
  def list_key_phrases_detection_jobs(client, input, options \\ []) do
    request(client, "ListKeyPhrasesDetectionJobs", input, options)
  end

  @doc """
  Gets a list of the PII entity detection jobs that you have submitted.
  """
  def list_pii_entities_detection_jobs(client, input, options \\ []) do
    request(client, "ListPiiEntitiesDetectionJobs", input, options)
  end

  @doc """
  Gets a list of sentiment detection jobs that you have submitted.
  """
  def list_sentiment_detection_jobs(client, input, options \\ []) do
    request(client, "ListSentimentDetectionJobs", input, options)
  end

  @doc """
  Lists all tags associated with a given Amazon Comprehend resource.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Gets a list of the topic detection jobs that you have submitted.
  """
  def list_topics_detection_jobs(client, input, options \\ []) do
    request(client, "ListTopicsDetectionJobs", input, options)
  end

  @doc """
  Starts an asynchronous document classification job.

  Use the operation to track the progress of the job.
  """
  def start_document_classification_job(client, input, options \\ []) do
    request(client, "StartDocumentClassificationJob", input, options)
  end

  @doc """
  Starts an asynchronous dominant language detection job for a collection of
  documents.

  Use the operation to track the status of a job.
  """
  def start_dominant_language_detection_job(client, input, options \\ []) do
    request(client, "StartDominantLanguageDetectionJob", input, options)
  end

  @doc """
  Starts an asynchronous entity detection job for a collection of documents.

  Use the operation to track the status of a job.

  This API can be used for either standard entity detection or custom entity
  recognition. In order to be used for custom entity recognition, the optional
  `EntityRecognizerArn` must be used in order to provide access to the recognizer
  being used to detect the custom entity.
  """
  def start_entities_detection_job(client, input, options \\ []) do
    request(client, "StartEntitiesDetectionJob", input, options)
  end

  @doc """
  Starts an asynchronous key phrase detection job for a collection of documents.

  Use the operation to track the status of a job.
  """
  def start_key_phrases_detection_job(client, input, options \\ []) do
    request(client, "StartKeyPhrasesDetectionJob", input, options)
  end

  @doc """
  Starts an asynchronous PII entity detection job for a collection of documents.
  """
  def start_pii_entities_detection_job(client, input, options \\ []) do
    request(client, "StartPiiEntitiesDetectionJob", input, options)
  end

  @doc """
  Starts an asynchronous sentiment detection job for a collection of documents.

  use the operation to track the status of a job.
  """
  def start_sentiment_detection_job(client, input, options \\ []) do
    request(client, "StartSentimentDetectionJob", input, options)
  end

  @doc """
  Starts an asynchronous topic detection job.

  Use the `DescribeTopicDetectionJob` operation to track the status of a job.
  """
  def start_topics_detection_job(client, input, options \\ []) do
    request(client, "StartTopicsDetectionJob", input, options)
  end

  @doc """
  Stops a dominant language detection job in progress.

  If the job state is `IN_PROGRESS` the job is marked for termination and put into
  the `STOP_REQUESTED` state. If the job completes before it can be stopped, it is
  put into the `COMPLETED` state; otherwise the job is stopped and put into the
  `STOPPED` state.

  If the job is in the `COMPLETED` or `FAILED` state when you call the
  `StopDominantLanguageDetectionJob` operation, the operation returns a 400
  Internal Request Exception.

  When a job is stopped, any documents already processed are written to the output
  location.
  """
  def stop_dominant_language_detection_job(client, input, options \\ []) do
    request(client, "StopDominantLanguageDetectionJob", input, options)
  end

  @doc """
  Stops an entities detection job in progress.

  If the job state is `IN_PROGRESS` the job is marked for termination and put into
  the `STOP_REQUESTED` state. If the job completes before it can be stopped, it is
  put into the `COMPLETED` state; otherwise the job is stopped and put into the
  `STOPPED` state.

  If the job is in the `COMPLETED` or `FAILED` state when you call the
  `StopDominantLanguageDetectionJob` operation, the operation returns a 400
  Internal Request Exception.

  When a job is stopped, any documents already processed are written to the output
  location.
  """
  def stop_entities_detection_job(client, input, options \\ []) do
    request(client, "StopEntitiesDetectionJob", input, options)
  end

  @doc """
  Stops a key phrases detection job in progress.

  If the job state is `IN_PROGRESS` the job is marked for termination and put into
  the `STOP_REQUESTED` state. If the job completes before it can be stopped, it is
  put into the `COMPLETED` state; otherwise the job is stopped and put into the
  `STOPPED` state.

  If the job is in the `COMPLETED` or `FAILED` state when you call the
  `StopDominantLanguageDetectionJob` operation, the operation returns a 400
  Internal Request Exception.

  When a job is stopped, any documents already processed are written to the output
  location.
  """
  def stop_key_phrases_detection_job(client, input, options \\ []) do
    request(client, "StopKeyPhrasesDetectionJob", input, options)
  end

  @doc """
  Stops a PII entities detection job in progress.
  """
  def stop_pii_entities_detection_job(client, input, options \\ []) do
    request(client, "StopPiiEntitiesDetectionJob", input, options)
  end

  @doc """
  Stops a sentiment detection job in progress.

  If the job state is `IN_PROGRESS` the job is marked for termination and put into
  the `STOP_REQUESTED` state. If the job completes before it can be stopped, it is
  put into the `COMPLETED` state; otherwise the job is be stopped and put into the
  `STOPPED` state.

  If the job is in the `COMPLETED` or `FAILED` state when you call the
  `StopDominantLanguageDetectionJob` operation, the operation returns a 400
  Internal Request Exception.

  When a job is stopped, any documents already processed are written to the output
  location.
  """
  def stop_sentiment_detection_job(client, input, options \\ []) do
    request(client, "StopSentimentDetectionJob", input, options)
  end

  @doc """
  Stops a document classifier training job while in progress.

  If the training job state is `TRAINING`, the job is marked for termination and
  put into the `STOP_REQUESTED` state. If the training job completes before it can
  be stopped, it is put into the `TRAINED`; otherwise the training job is stopped
  and put into the `STOPPED` state and the service sends back an HTTP 200 response
  with an empty HTTP body.
  """
  def stop_training_document_classifier(client, input, options \\ []) do
    request(client, "StopTrainingDocumentClassifier", input, options)
  end

  @doc """
  Stops an entity recognizer training job while in progress.

  If the training job state is `TRAINING`, the job is marked for termination and
  put into the `STOP_REQUESTED` state. If the training job completes before it can
  be stopped, it is put into the `TRAINED`; otherwise the training job is stopped
  and putted into the `STOPPED` state and the service sends back an HTTP 200
  response with an empty HTTP body.
  """
  def stop_training_entity_recognizer(client, input, options \\ []) do
    request(client, "StopTrainingEntityRecognizer", input, options)
  end

  @doc """
  Associates a specific tag with an Amazon Comprehend resource.

  A tag is a key-value pair that adds as a metadata to a resource used by Amazon
  Comprehend. For example, a tag with "Sales" as the key might be added to a
  resource to indicate its use by the sales department.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Removes a specific tag associated with an Amazon Comprehend resource.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Updates information about the specified endpoint.
  """
  def update_endpoint(client, input, options \\ []) do
    request(client, "UpdateEndpoint", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "comprehend"}
    host = build_host("comprehend", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "Comprehend_20171127.#{action}"}
    ]

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case AWS.Client.request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
        {:ok, body, response}

      {:ok, response} ->
        {:error, {:unexpected_response, response}}

      error = {:error, _reason} -> error
    end
  end

  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

  defp encode!(client, payload) do
    AWS.Client.encode!(client, payload, :json)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
