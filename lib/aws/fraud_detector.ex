# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.FraudDetector do
  @moduledoc """
  This is the Amazon Fraud Detector API Reference. This guide is for
  developers who need detailed information about Amazon Fraud Detector API
  actions, data types, and errors. For more information about Amazon Fraud
  Detector features, see the [Amazon Fraud Detector User
  Guide](https://docs.aws.amazon.com/frauddetector/latest/ug/).
  """

  @doc """
  Creates a batch of variables.
  """
  def batch_create_variable(client, input, options \\ []) do
    request(client, "BatchCreateVariable", input, options)
  end

  @doc """
  Gets a batch of variables.
  """
  def batch_get_variable(client, input, options \\ []) do
    request(client, "BatchGetVariable", input, options)
  end

  @doc """
  Creates a detector version. The detector version starts in a `DRAFT`
  status.
  """
  def create_detector_version(client, input, options \\ []) do
    request(client, "CreateDetectorVersion", input, options)
  end

  @doc """
  Creates a model using the specified model type.
  """
  def create_model(client, input, options \\ []) do
    request(client, "CreateModel", input, options)
  end

  @doc """
  Creates a version of the model using the specified model type and model id.
  """
  def create_model_version(client, input, options \\ []) do
    request(client, "CreateModelVersion", input, options)
  end

  @doc """
  Creates a rule for use with the specified detector.
  """
  def create_rule(client, input, options \\ []) do
    request(client, "CreateRule", input, options)
  end

  @doc """
  Creates a variable.
  """
  def create_variable(client, input, options \\ []) do
    request(client, "CreateVariable", input, options)
  end

  @doc """
  Deletes the detector. Before deleting a detector, you must first delete all
  detector versions and rule versions associated with the detector.
  """
  def delete_detector(client, input, options \\ []) do
    request(client, "DeleteDetector", input, options)
  end

  @doc """
  Deletes the detector version. You cannot delete detector versions that are
  in `ACTIVE` status.
  """
  def delete_detector_version(client, input, options \\ []) do
    request(client, "DeleteDetectorVersion", input, options)
  end

  @doc """
  Deletes the specified event.
  """
  def delete_event(client, input, options \\ []) do
    request(client, "DeleteEvent", input, options)
  end

  @doc """
  Deletes the rule. You cannot delete a rule if it is used by an `ACTIVE` or
  `INACTIVE` detector version.
  """
  def delete_rule(client, input, options \\ []) do
    request(client, "DeleteRule", input, options)
  end

  @doc """
  Gets all versions for a specified detector.
  """
  def describe_detector(client, input, options \\ []) do
    request(client, "DescribeDetector", input, options)
  end

  @doc """
  Gets all of the model versions for the specified model type or for the
  specified model type and model ID. You can also get details for a single,
  specified model version.
  """
  def describe_model_versions(client, input, options \\ []) do
    request(client, "DescribeModelVersions", input, options)
  end

  @doc """
  Gets a particular detector version.
  """
  def get_detector_version(client, input, options \\ []) do
    request(client, "GetDetectorVersion", input, options)
  end

  @doc """
  Gets all detectors or a single detector if a `detectorId` is specified.
  This is a paginated API. If you provide a null `maxResults`, this action
  retrieves a maximum of 10 records per page. If you provide a `maxResults`,
  the value must be between 5 and 10. To get the next page results, provide
  the pagination token from the `GetDetectorsResponse` as part of your
  request. A null pagination token fetches the records from the beginning.
  """
  def get_detectors(client, input, options \\ []) do
    request(client, "GetDetectors", input, options)
  end

  @doc """
  Gets all entity types or a specific entity type if a name is specified.
  This is a paginated API. If you provide a null `maxResults`, this action
  retrieves a maximum of 10 records per page. If you provide a `maxResults`,
  the value must be between 5 and 10. To get the next page results, provide
  the pagination token from the `GetEntityTypesResponse` as part of your
  request. A null pagination token fetches the records from the beginning.
  """
  def get_entity_types(client, input, options \\ []) do
    request(client, "GetEntityTypes", input, options)
  end

  @doc """
  Evaluates an event against a detector version. If a version ID is not
  provided, the detector’s (`ACTIVE`) version is used.
  """
  def get_event_prediction(client, input, options \\ []) do
    request(client, "GetEventPrediction", input, options)
  end

  @doc """
  Gets all event types or a specific event type if name is provided. This is
  a paginated API. If you provide a null `maxResults`, this action retrieves
  a maximum of 10 records per page. If you provide a `maxResults`, the value
  must be between 5 and 10. To get the next page results, provide the
  pagination token from the `GetEventTypesResponse` as part of your request.
  A null pagination token fetches the records from the beginning.
  """
  def get_event_types(client, input, options \\ []) do
    request(client, "GetEventTypes", input, options)
  end

  @doc """
  Gets the details for one or more Amazon SageMaker models that have been
  imported into the service. This is a paginated API. If you provide a null
  `maxResults`, this actions retrieves a maximum of 10 records per page. If
  you provide a `maxResults`, the value must be between 5 and 10. To get the
  next page results, provide the pagination token from the
  `GetExternalModelsResult` as part of your request. A null pagination token
  fetches the records from the beginning.
  """
  def get_external_models(client, input, options \\ []) do
    request(client, "GetExternalModels", input, options)
  end

  @doc """
  Gets the encryption key if a Key Management Service (KMS) customer master
  key (CMK) has been specified to be used to encrypt content in Amazon Fraud
  Detector.
  """
  def get_k_m_s_encryption_key(client, input, options \\ []) do
    request(client, "GetKMSEncryptionKey", input, options)
  end

  @doc """
  Gets all labels or a specific label if name is provided. This is a
  paginated API. If you provide a null `maxResults`, this action retrieves a
  maximum of 50 records per page. If you provide a `maxResults`, the value
  must be between 10 and 50. To get the next page results, provide the
  pagination token from the `GetGetLabelsResponse` as part of your request. A
  null pagination token fetches the records from the beginning.
  """
  def get_labels(client, input, options \\ []) do
    request(client, "GetLabels", input, options)
  end

  @doc """
  Gets the details of the specified model version.
  """
  def get_model_version(client, input, options \\ []) do
    request(client, "GetModelVersion", input, options)
  end

  @doc """
  Gets one or more models. Gets all models for the AWS account if no model
  type and no model id provided. Gets all models for the AWS account and
  model type, if the model type is specified but model id is not provided.
  Gets a specific model if (model type, model id) tuple is specified.

  This is a paginated API. If you provide a null `maxResults`, this action
  retrieves a maximum of 10 records per page. If you provide a `maxResults`,
  the value must be between 1 and 10. To get the next page results, provide
  the pagination token from the response as part of your request. A null
  pagination token fetches the records from the beginning.
  """
  def get_models(client, input, options \\ []) do
    request(client, "GetModels", input, options)
  end

  @doc """
  Gets one or more outcomes. This is a paginated API. If you provide a null
  `maxResults`, this actions retrieves a maximum of 100 records per page. If
  you provide a `maxResults`, the value must be between 50 and 100. To get
  the next page results, provide the pagination token from the
  `GetOutcomesResult` as part of your request. A null pagination token
  fetches the records from the beginning.
  """
  def get_outcomes(client, input, options \\ []) do
    request(client, "GetOutcomes", input, options)
  end

  @doc """
  Get all rules for a detector (paginated) if `ruleId` and `ruleVersion` are
  not specified. Gets all rules for the detector and the `ruleId` if present
  (paginated). Gets a specific rule if both the `ruleId` and the
  `ruleVersion` are specified.

  This is a paginated API. Providing null maxResults results in retrieving
  maximum of 100 records per page. If you provide maxResults the value must
  be between 50 and 100. To get the next page result, a provide a pagination
  token from GetRulesResult as part of your request. Null pagination token
  fetches the records from the beginning.
  """
  def get_rules(client, input, options \\ []) do
    request(client, "GetRules", input, options)
  end

  @doc """
  Gets all of the variables or the specific variable. This is a paginated
  API. Providing null `maxSizePerPage` results in retrieving maximum of 100
  records per page. If you provide `maxSizePerPage` the value must be between
  50 and 100. To get the next page result, a provide a pagination token from
  `GetVariablesResult` as part of your request. Null pagination token fetches
  the records from the beginning.
  """
  def get_variables(client, input, options \\ []) do
    request(client, "GetVariables", input, options)
  end

  @doc """
  Lists all tags associated with the resource. This is a paginated API. To
  get the next page results, provide the pagination token from the response
  as part of your request. A null pagination token fetches the records from
  the beginning.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Creates or updates a detector.
  """
  def put_detector(client, input, options \\ []) do
    request(client, "PutDetector", input, options)
  end

  @doc """
  Creates or updates an entity type. An entity represents who is performing
  the event. As part of a fraud prediction, you pass the entity ID to
  indicate the specific entity who performed the event. An entity type
  classifies the entity. Example classifications include customer, merchant,
  or account.
  """
  def put_entity_type(client, input, options \\ []) do
    request(client, "PutEntityType", input, options)
  end

  @doc """
  Creates or updates an event type. An event is a business activity that is
  evaluated for fraud risk. With Amazon Fraud Detector, you generate fraud
  predictions for events. An event type defines the structure for an event
  sent to Amazon Fraud Detector. This includes the variables sent as part of
  the event, the entity performing the event (such as a customer), and the
  labels that classify the event. Example event types include online payment
  transactions, account registrations, and authentications.
  """
  def put_event_type(client, input, options \\ []) do
    request(client, "PutEventType", input, options)
  end

  @doc """
  Creates or updates an Amazon SageMaker model endpoint. You can also use
  this action to update the configuration of the model endpoint, including
  the IAM role and/or the mapped variables.
  """
  def put_external_model(client, input, options \\ []) do
    request(client, "PutExternalModel", input, options)
  end

  @doc """
  Specifies the Key Management Service (KMS) customer master key (CMK) to be
  used to encrypt content in Amazon Fraud Detector.
  """
  def put_k_m_s_encryption_key(client, input, options \\ []) do
    request(client, "PutKMSEncryptionKey", input, options)
  end

  @doc """
  Creates or updates label. A label classifies an event as fraudulent or
  legitimate. Labels are associated with event types and used to train
  supervised machine learning models in Amazon Fraud Detector.
  """
  def put_label(client, input, options \\ []) do
    request(client, "PutLabel", input, options)
  end

  @doc """
  Creates or updates an outcome.
  """
  def put_outcome(client, input, options \\ []) do
    request(client, "PutOutcome", input, options)
  end

  @doc """
  Assigns tags to a resource.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Removes tags from a resource.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Updates a detector version. The detector version attributes that you can
  update include models, external model endpoints, rules, rule execution
  mode, and description. You can only update a `DRAFT` detector version.
  """
  def update_detector_version(client, input, options \\ []) do
    request(client, "UpdateDetectorVersion", input, options)
  end

  @doc """
  Updates the detector version's description. You can update the metadata for
  any detector version (`DRAFT, ACTIVE,` or `INACTIVE`).
  """
  def update_detector_version_metadata(client, input, options \\ []) do
    request(client, "UpdateDetectorVersionMetadata", input, options)
  end

  @doc """
  Updates the detector version’s status. You can perform the following
  promotions or demotions using `UpdateDetectorVersionStatus`: `DRAFT` to
  `ACTIVE`, `ACTIVE` to `INACTIVE`, and `INACTIVE` to `ACTIVE`.
  """
  def update_detector_version_status(client, input, options \\ []) do
    request(client, "UpdateDetectorVersionStatus", input, options)
  end

  @doc """
  Updates a model. You can update the description attribute using this
  action.
  """
  def update_model(client, input, options \\ []) do
    request(client, "UpdateModel", input, options)
  end

  @doc """
  Updates a model version. Updating a model version retrains an existing
  model version using updated training data and produces a new minor version
  of the model. You can update the training data set location and data access
  role attributes using this action. This action creates and trains a new
  minor version of the model, for example version 1.01, 1.02, 1.03.
  """
  def update_model_version(client, input, options \\ []) do
    request(client, "UpdateModelVersion", input, options)
  end

  @doc """
  Updates the status of a model version.

  You can perform the following status updates:

  <ol> <li> Change the `TRAINING_COMPLETE` status to `ACTIVE`.

  </li> <li> Change `ACTIVE`to `INACTIVE`.

  </li> </ol>
  """
  def update_model_version_status(client, input, options \\ []) do
    request(client, "UpdateModelVersionStatus", input, options)
  end

  @doc """
  Updates a rule's metadata. The description attribute can be updated.
  """
  def update_rule_metadata(client, input, options \\ []) do
    request(client, "UpdateRuleMetadata", input, options)
  end

  @doc """
  Updates a rule version resulting in a new rule version. Updates a rule
  version resulting in a new rule version (version 1, 2, 3 ...).
  """
  def update_rule_version(client, input, options \\ []) do
    request(client, "UpdateRuleVersion", input, options)
  end

  @doc """
  Updates a variable.
  """
  def update_variable(client, input, options \\ []) do
    request(client, "UpdateVariable", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "frauddetector"}
    host = build_host("frauddetector", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSHawksNestServiceFacade.#{action}"}
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

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

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
