# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Comprehend do
  @moduledoc """
  Amazon Comprehend is an Amazon Web Services service for gaining insight into the
  content of documents.

  Use these actions to determine the topics contained in your documents, the
  topics they discuss, the predominant sentiment expressed in them, the
  predominant language used, and more.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2017-11-27",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "comprehend",
      global?: false,
      protocol: "json",
      service_id: "Comprehend",
      signature_version: "v4",
      signing_name: "comprehend",
      target_prefix: "Comprehend_20171127"
    }
  end

  @doc """
  Determines the dominant language of the input text for a batch of documents.

  For a list of languages that Amazon Comprehend can detect, see [Amazon Comprehend Supported
  Languages](https://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html).
  """
  def batch_detect_dominant_language(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDetectDominantLanguage", input, options)
  end

  @doc """
  Inspects the text of a batch of documents for named entities and returns
  information about them.

  For more information about named entities, see
  [Entities](https://docs.aws.amazon.com/comprehend/latest/dg/how-entities.html)
  in the Comprehend Developer Guide.
  """
  def batch_detect_entities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDetectEntities", input, options)
  end

  @doc """
  Detects the key noun phrases found in a batch of documents.
  """
  def batch_detect_key_phrases(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDetectKeyPhrases", input, options)
  end

  @doc """
  Inspects a batch of documents and returns an inference of the prevailing
  sentiment, `POSITIVE`, `NEUTRAL`, `MIXED`, or `NEGATIVE`, in each one.
  """
  def batch_detect_sentiment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDetectSentiment", input, options)
  end

  @doc """
  Inspects the text of a batch of documents for the syntax and part of speech of
  the words in the document and returns information about them.

  For more information, see
  [Syntax](https://docs.aws.amazon.com/comprehend/latest/dg/how-syntax.html) in
  the Comprehend Developer Guide.
  """
  def batch_detect_syntax(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDetectSyntax", input, options)
  end

  @doc """
  Inspects a batch of documents and returns a sentiment analysis for each entity
  identified in the documents.

  For more information about targeted sentiment, see [Targeted sentiment](https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html)
  in the *Amazon Comprehend Developer Guide*.
  """
  def batch_detect_targeted_sentiment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "BatchDetectTargetedSentiment", input, options)
  end

  @doc """
  Creates a classification request to analyze a single document in real-time.

  `ClassifyDocument` supports the following model types:

    * Custom classifier - a custom model that you have created and
  trained. For input, you can provide plain text, a single-page document (PDF,
  Word, or image), or Amazon Textract API output. For more information, see
  [Custom classification](https://docs.aws.amazon.com/comprehend/latest/dg/how-document-classification.html)
  in the *Amazon Comprehend Developer Guide*.

    * Prompt safety classifier - Amazon Comprehend provides a
  pre-trained model for classifying input prompts for generative AI applications.
  For input, you provide English plain text input. For prompt safety
  classification, the response includes only the `Classes` field. For more
  information about prompt safety classifiers, see [Prompt safety classification](https://docs.aws.amazon.com/comprehend/latest/dg/trust-safety.html#prompt-classification)
  in the *Amazon Comprehend Developer Guide*.

  If the system detects errors while processing a page in the input document, the
  API response includes an `Errors` field that describes the errors.

  If the system detects a document-level error in your input document, the API
  returns an `InvalidRequestException` error response. For details about this
  exception, see [ Errors in semi-structured documents](https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync-err.html)
  in the Comprehend Developer Guide.
  """
  def classify_document(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ClassifyDocument", input, options)
  end

  @doc """
  Analyzes input text for the presence of personally identifiable information
  (PII) and returns the labels of identified PII entity types such as name,
  address, bank account number, or phone number.
  """
  def contains_pii_entities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ContainsPiiEntities", input, options)
  end

  @doc """
  Creates a dataset to upload training or test data for a model associated with a
  flywheel.

  For more information about datasets, see [ Flywheel overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
  in the *Amazon Comprehend Developer Guide*.
  """
  def create_dataset(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDataset", input, options)
  end

  @doc """
  Creates a new document classifier that you can use to categorize documents.

  To create a classifier, you provide a set of training documents that are labeled
  with the categories that you want to use. For more information, see [Training classifier
  models](https://docs.aws.amazon.com/comprehend/latest/dg/training-classifier-model.html)
  in the Comprehend Developer Guide.
  """
  def create_document_classifier(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDocumentClassifier", input, options)
  end

  @doc """
  Creates a model-specific endpoint for synchronous inference for a previously
  trained custom model For information about endpoints, see [Managing endpoints](https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).
  """
  def create_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEndpoint", input, options)
  end

  @doc """
  Creates an entity recognizer using submitted files.

  After your `CreateEntityRecognizer` request is submitted, you can check job
  status using the `DescribeEntityRecognizer` API.
  """
  def create_entity_recognizer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEntityRecognizer", input, options)
  end

  @doc """
  A flywheel is an Amazon Web Services resource that orchestrates the ongoing
  training of a model for custom classification or custom entity recognition.

  You can create a flywheel to start with an existing trained model, or Comprehend
  can create and train a new model.

  When you create the flywheel, Comprehend creates a data lake in your account.
  The data lake holds the training data and test data for all versions of the
  model.

  To use a flywheel with an existing trained model, you specify the active model
  version. Comprehend copies the model's training data and test data into the
  flywheel's data lake.

  To use the flywheel with a new model, you need to provide a dataset for training
  data (and optional test data) when you create the flywheel.

  For more information about flywheels, see [ Flywheel overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
  in the *Amazon Comprehend Developer Guide*.
  """
  def create_flywheel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateFlywheel", input, options)
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
  def delete_document_classifier(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDocumentClassifier", input, options)
  end

  @doc """
  Deletes a model-specific endpoint for a previously-trained custom model.

  All endpoints must be deleted in order for the model to be deleted. For
  information about endpoints, see [Managing endpoints](https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).
  """
  def delete_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEndpoint", input, options)
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
  def delete_entity_recognizer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEntityRecognizer", input, options)
  end

  @doc """
  Deletes a flywheel.

  When you delete the flywheel, Amazon Comprehend does not delete the data lake or
  the model associated with the flywheel.

  For more information about flywheels, see [ Flywheel overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
  in the *Amazon Comprehend Developer Guide*.
  """
  def delete_flywheel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFlywheel", input, options)
  end

  @doc """
  Deletes a resource-based policy that is attached to a custom model.
  """
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteResourcePolicy", input, options)
  end

  @doc """
  Returns information about the dataset that you specify.

  For more information about datasets, see [ Flywheel overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
  in the *Amazon Comprehend Developer Guide*.
  """
  def describe_dataset(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDataset", input, options)
  end

  @doc """
  Gets the properties associated with a document classification job.

  Use this operation to get the status of a classification job.
  """
  def describe_document_classification_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDocumentClassificationJob", input, options)
  end

  @doc """
  Gets the properties associated with a document classifier.
  """
  def describe_document_classifier(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDocumentClassifier", input, options)
  end

  @doc """
  Gets the properties associated with a dominant language detection job.

  Use this operation to get the status of a detection job.
  """
  def describe_dominant_language_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDominantLanguageDetectionJob", input, options)
  end

  @doc """
  Gets the properties associated with a specific endpoint.

  Use this operation to get the status of an endpoint. For information about
  endpoints, see [Managing endpoints](https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).
  """
  def describe_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEndpoint", input, options)
  end

  @doc """
  Gets the properties associated with an entities detection job.

  Use this operation to get the status of a detection job.
  """
  def describe_entities_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEntitiesDetectionJob", input, options)
  end

  @doc """
  Provides details about an entity recognizer including status, S3 buckets
  containing training data, recognizer metadata, metrics, and so on.
  """
  def describe_entity_recognizer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEntityRecognizer", input, options)
  end

  @doc """
  Gets the status and details of an events detection job.
  """
  def describe_events_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEventsDetectionJob", input, options)
  end

  @doc """
  Provides configuration information about the flywheel.

  For more information about flywheels, see [ Flywheel overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
  in the *Amazon Comprehend Developer Guide*.
  """
  def describe_flywheel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFlywheel", input, options)
  end

  @doc """
  Retrieve the configuration properties of a flywheel iteration.

  For more information about flywheels, see [ Flywheel overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
  in the *Amazon Comprehend Developer Guide*.
  """
  def describe_flywheel_iteration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFlywheelIteration", input, options)
  end

  @doc """
  Gets the properties associated with a key phrases detection job.

  Use this operation to get the status of a detection job.
  """
  def describe_key_phrases_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeKeyPhrasesDetectionJob", input, options)
  end

  @doc """
  Gets the properties associated with a PII entities detection job.

  For example, you can use this operation to get the job status.
  """
  def describe_pii_entities_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePiiEntitiesDetectionJob", input, options)
  end

  @doc """
  Gets the details of a resource-based policy that is attached to a custom model,
  including the JSON body of the policy.
  """
  def describe_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeResourcePolicy", input, options)
  end

  @doc """
  Gets the properties associated with a sentiment detection job.

  Use this operation to get the status of a detection job.
  """
  def describe_sentiment_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSentimentDetectionJob", input, options)
  end

  @doc """
  Gets the properties associated with a targeted sentiment detection job.

  Use this operation to get the status of the job.
  """
  def describe_targeted_sentiment_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTargetedSentimentDetectionJob", input, options)
  end

  @doc """
  Gets the properties associated with a topic detection job.

  Use this operation to get the status of a detection job.
  """
  def describe_topics_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTopicsDetectionJob", input, options)
  end

  @doc """
  Determines the dominant language of the input text.

  For a list of languages that Amazon Comprehend can detect, see [Amazon Comprehend Supported
  Languages](https://docs.aws.amazon.com/comprehend/latest/dg/how-languages.html).
  """
  def detect_dominant_language(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetectDominantLanguage", input, options)
  end

  @doc """
  Detects named entities in input text when you use the pre-trained model.

  Detects custom entities if you have a custom entity recognition model.

  When detecting named entities using the pre-trained model, use plain text as the
  input. For more information about named entities, see
  [Entities](https://docs.aws.amazon.com/comprehend/latest/dg/how-entities.html) in the Comprehend Developer Guide.

  When you use a custom entity recognition model, you can input plain text or you
  can upload a single-page input document (text, PDF, Word, or image).

  If the system detects errors while processing a page in the input document, the
  API response includes an entry in `Errors` for each error.

  If the system detects a document-level error in your input document, the API
  returns an `InvalidRequestException` error response. For details about this
  exception, see [ Errors in semi-structured
  documents](https://docs.aws.amazon.com/comprehend/latest/dg/idp-inputs-sync-err.html)
  in the Comprehend Developer Guide.
  """
  def detect_entities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetectEntities", input, options)
  end

  @doc """
  Detects the key noun phrases found in the text.
  """
  def detect_key_phrases(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetectKeyPhrases", input, options)
  end

  @doc """
  Inspects the input text for entities that contain personally identifiable
  information (PII) and returns information about them.
  """
  def detect_pii_entities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetectPiiEntities", input, options)
  end

  @doc """
  Inspects text and returns an inference of the prevailing sentiment (`POSITIVE`,
  `NEUTRAL`, `MIXED`, or `NEGATIVE`).
  """
  def detect_sentiment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetectSentiment", input, options)
  end

  @doc """
  Inspects text for syntax and the part of speech of words in the document.

  For more information, see
  [Syntax](https://docs.aws.amazon.com/comprehend/latest/dg/how-syntax.html) in
  the Comprehend Developer Guide.
  """
  def detect_syntax(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetectSyntax", input, options)
  end

  @doc """
  Inspects the input text and returns a sentiment analysis for each entity
  identified in the text.

  For more information about targeted sentiment, see [Targeted sentiment](https://docs.aws.amazon.com/comprehend/latest/dg/how-targeted-sentiment.html)
  in the *Amazon Comprehend Developer Guide*.
  """
  def detect_targeted_sentiment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetectTargetedSentiment", input, options)
  end

  @doc """
  Performs toxicity analysis on the list of text strings that you provide as
  input.

  The API response contains a results list that matches the size of the input
  list. For more information about toxicity detection, see [Toxicity detection](https://docs.aws.amazon.com/comprehend/latest/dg/toxicity-detection.html)
  in the *Amazon Comprehend Developer Guide*.
  """
  def detect_toxic_content(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetectToxicContent", input, options)
  end

  @doc """
  Creates a new custom model that replicates a source custom model that you
  import.

  The source model can be in your Amazon Web Services account or another one.

  If the source model is in another Amazon Web Services account, then it must have
  a resource-based policy that authorizes you to import it.

  The source model must be in the same Amazon Web Services Region that you're
  using when you import. You can't import a model that's in a different Region.
  """
  def import_model(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportModel", input, options)
  end

  @doc """
  List the datasets that you have configured in this Region.

  For more information about datasets, see [ Flywheel overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
  in the *Amazon Comprehend Developer Guide*.
  """
  def list_datasets(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDatasets", input, options)
  end

  @doc """
  Gets a list of the documentation classification jobs that you have submitted.
  """
  def list_document_classification_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDocumentClassificationJobs", input, options)
  end

  @doc """
  Gets a list of summaries of the document classifiers that you have created
  """
  def list_document_classifier_summaries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDocumentClassifierSummaries", input, options)
  end

  @doc """
  Gets a list of the document classifiers that you have created.
  """
  def list_document_classifiers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDocumentClassifiers", input, options)
  end

  @doc """
  Gets a list of the dominant language detection jobs that you have submitted.
  """
  def list_dominant_language_detection_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDominantLanguageDetectionJobs", input, options)
  end

  @doc """
  Gets a list of all existing endpoints that you've created.

  For information about endpoints, see [Managing endpoints](https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).
  """
  def list_endpoints(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEndpoints", input, options)
  end

  @doc """
  Gets a list of the entity detection jobs that you have submitted.
  """
  def list_entities_detection_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEntitiesDetectionJobs", input, options)
  end

  @doc """
  Gets a list of summaries for the entity recognizers that you have created.
  """
  def list_entity_recognizer_summaries(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEntityRecognizerSummaries", input, options)
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
  def list_entity_recognizers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEntityRecognizers", input, options)
  end

  @doc """
  Gets a list of the events detection jobs that you have submitted.
  """
  def list_events_detection_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEventsDetectionJobs", input, options)
  end

  @doc """
  Information about the history of a flywheel iteration.

  For more information about flywheels, see [ Flywheel overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
  in the *Amazon Comprehend Developer Guide*.
  """
  def list_flywheel_iteration_history(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFlywheelIterationHistory", input, options)
  end

  @doc """
  Gets a list of the flywheels that you have created.
  """
  def list_flywheels(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFlywheels", input, options)
  end

  @doc """
  Get a list of key phrase detection jobs that you have submitted.
  """
  def list_key_phrases_detection_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListKeyPhrasesDetectionJobs", input, options)
  end

  @doc """
  Gets a list of the PII entity detection jobs that you have submitted.
  """
  def list_pii_entities_detection_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPiiEntitiesDetectionJobs", input, options)
  end

  @doc """
  Gets a list of sentiment detection jobs that you have submitted.
  """
  def list_sentiment_detection_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSentimentDetectionJobs", input, options)
  end

  @doc """
  Lists all tags associated with a given Amazon Comprehend resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Gets a list of targeted sentiment detection jobs that you have submitted.
  """
  def list_targeted_sentiment_detection_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTargetedSentimentDetectionJobs", input, options)
  end

  @doc """
  Gets a list of the topic detection jobs that you have submitted.
  """
  def list_topics_detection_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTopicsDetectionJobs", input, options)
  end

  @doc """
  Attaches a resource-based policy to a custom model.

  You can use this policy to authorize an entity in another Amazon Web Services
  account to import the custom model, which replicates it in Amazon Comprehend in
  their account.
  """
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutResourcePolicy", input, options)
  end

  @doc """
  Starts an asynchronous document classification job using a custom classification
  model.

  Use the `DescribeDocumentClassificationJob` operation to track the progress of
  the job.
  """
  def start_document_classification_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartDocumentClassificationJob", input, options)
  end

  @doc """
  Starts an asynchronous dominant language detection job for a collection of
  documents.

  Use the operation to track the status of a job.
  """
  def start_dominant_language_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartDominantLanguageDetectionJob", input, options)
  end

  @doc """
  Starts an asynchronous entity detection job for a collection of documents.

  Use the operation to track the status of a job.

  This API can be used for either standard entity detection or custom entity
  recognition. In order to be used for custom entity recognition, the optional
  `EntityRecognizerArn` must be used in order to provide access to the recognizer
  being used to detect the custom entity.
  """
  def start_entities_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartEntitiesDetectionJob", input, options)
  end

  @doc """
  Starts an asynchronous event detection job for a collection of documents.
  """
  def start_events_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartEventsDetectionJob", input, options)
  end

  @doc """
  Start the flywheel iteration.This operation uses any new datasets to train a new
  model version.

  For more information about flywheels, see [ Flywheel overview](https://docs.aws.amazon.com/comprehend/latest/dg/flywheels-about.html)
  in the *Amazon Comprehend Developer Guide*.
  """
  def start_flywheel_iteration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartFlywheelIteration", input, options)
  end

  @doc """
  Starts an asynchronous key phrase detection job for a collection of documents.

  Use the operation to track the status of a job.
  """
  def start_key_phrases_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartKeyPhrasesDetectionJob", input, options)
  end

  @doc """
  Starts an asynchronous PII entity detection job for a collection of documents.
  """
  def start_pii_entities_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartPiiEntitiesDetectionJob", input, options)
  end

  @doc """
  Starts an asynchronous sentiment detection job for a collection of documents.

  Use the operation to track the status of a job.
  """
  def start_sentiment_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartSentimentDetectionJob", input, options)
  end

  @doc """
  Starts an asynchronous targeted sentiment detection job for a collection of
  documents.

  Use the `DescribeTargetedSentimentDetectionJob` operation to track the status of
  a job.
  """
  def start_targeted_sentiment_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartTargetedSentimentDetectionJob", input, options)
  end

  @doc """
  Starts an asynchronous topic detection job.

  Use the `DescribeTopicDetectionJob` operation to track the status of a job.
  """
  def start_topics_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartTopicsDetectionJob", input, options)
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
  def stop_dominant_language_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopDominantLanguageDetectionJob", input, options)
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
  def stop_entities_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopEntitiesDetectionJob", input, options)
  end

  @doc """
  Stops an events detection job in progress.
  """
  def stop_events_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopEventsDetectionJob", input, options)
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
  def stop_key_phrases_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopKeyPhrasesDetectionJob", input, options)
  end

  @doc """
  Stops a PII entities detection job in progress.
  """
  def stop_pii_entities_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopPiiEntitiesDetectionJob", input, options)
  end

  @doc """
  Stops a sentiment detection job in progress.

  If the job state is `IN_PROGRESS`, the job is marked for termination and put
  into the `STOP_REQUESTED` state. If the job completes before it can be stopped,
  it is put into the `COMPLETED` state; otherwise the job is be stopped and put
  into the `STOPPED` state.

  If the job is in the `COMPLETED` or `FAILED` state when you call the
  `StopDominantLanguageDetectionJob` operation, the operation returns a 400
  Internal Request Exception.

  When a job is stopped, any documents already processed are written to the output
  location.
  """
  def stop_sentiment_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopSentimentDetectionJob", input, options)
  end

  @doc """
  Stops a targeted sentiment detection job in progress.

  If the job state is `IN_PROGRESS`, the job is marked for termination and put
  into the `STOP_REQUESTED` state. If the job completes before it can be stopped,
  it is put into the `COMPLETED` state; otherwise the job is be stopped and put
  into the `STOPPED` state.

  If the job is in the `COMPLETED` or `FAILED` state when you call the
  `StopDominantLanguageDetectionJob` operation, the operation returns a 400
  Internal Request Exception.

  When a job is stopped, any documents already processed are written to the output
  location.
  """
  def stop_targeted_sentiment_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopTargetedSentimentDetectionJob", input, options)
  end

  @doc """
  Stops a document classifier training job while in progress.

  If the training job state is `TRAINING`, the job is marked for termination and
  put into the `STOP_REQUESTED` state. If the training job completes before it can
  be stopped, it is put into the `TRAINED`; otherwise the training job is stopped
  and put into the `STOPPED` state and the service sends back an HTTP 200 response
  with an empty HTTP body.
  """
  def stop_training_document_classifier(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopTrainingDocumentClassifier", input, options)
  end

  @doc """
  Stops an entity recognizer training job while in progress.

  If the training job state is `TRAINING`, the job is marked for termination and
  put into the `STOP_REQUESTED` state. If the training job completes before it can
  be stopped, it is put into the `TRAINED`; otherwise the training job is stopped
  and putted into the `STOPPED` state and the service sends back an HTTP 200
  response with an empty HTTP body.
  """
  def stop_training_entity_recognizer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopTrainingEntityRecognizer", input, options)
  end

  @doc """
  Associates a specific tag with an Amazon Comprehend resource.

  A tag is a key-value pair that adds as a metadata to a resource used by Amazon
  Comprehend. For example, a tag with "Sales" as the key might be added to a
  resource to indicate its use by the sales department.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes a specific tag associated with an Amazon Comprehend resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates information about the specified endpoint.

  For information about endpoints, see [Managing endpoints](https://docs.aws.amazon.com/comprehend/latest/dg/manage-endpoints.html).
  """
  def update_endpoint(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateEndpoint", input, options)
  end

  @doc """
  Update the configuration information for an existing flywheel.
  """
  def update_flywheel(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateFlywheel", input, options)
  end
end
