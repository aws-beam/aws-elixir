# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.FraudDetector do
  @moduledoc """
  This is the Amazon Fraud Detector API Reference.

  This guide is for developers who need detailed information about Amazon Fraud
  Detector API actions, data types, and errors. For more information about Amazon
  Fraud Detector features, see the [Amazon Fraud Detector User Guide](https://docs.aws.amazon.com/frauddetector/latest/ug/).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2019-11-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "frauddetector",
      global?: false,
      protocol: "json",
      service_id: "FraudDetector",
      signature_version: "v4",
      signing_name: "frauddetector",
      target_prefix: "AWSHawksNestServiceFacade"
    }
  end

  @doc """
  Creates a batch of variables.
  """
  def batch_create_variable(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchCreateVariable", input, options)
  end

  @doc """
  Gets a batch of variables.
  """
  def batch_get_variable(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchGetVariable", input, options)
  end

  @doc """
  Creates a detector version.

  The detector version starts in a `DRAFT` status.
  """
  def create_detector_version(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDetectorVersion", input, options)
  end

  @doc """
  Creates a model using the specified model type.
  """
  def create_model(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateModel", input, options)
  end

  @doc """
  Creates a version of the model using the specified model type and model id.
  """
  def create_model_version(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateModelVersion", input, options)
  end

  @doc """
  Creates a rule for use with the specified detector.
  """
  def create_rule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateRule", input, options)
  end

  @doc """
  Creates a variable.
  """
  def create_variable(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateVariable", input, options)
  end

  @doc """
  Deletes the detector.

  Before deleting a detector, you must first delete all detector versions and rule
  versions associated with the detector.

  When you delete a detector, Amazon Fraud Detector permanently deletes the
  detector and the data is no longer stored in Amazon Fraud Detector.
  """
  def delete_detector(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDetector", input, options)
  end

  @doc """
  Deletes the detector version.

  You cannot delete detector versions that are in `ACTIVE` status.

  When you delete a detector version, Amazon Fraud Detector permanently deletes
  the detector and the data is no longer stored in Amazon Fraud Detector.
  """
  def delete_detector_version(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDetectorVersion", input, options)
  end

  @doc """
  Deletes an entity type.

  You cannot delete an entity type that is included in an event type.

  When you delete an entity type, Amazon Fraud Detector permanently deletes that
  entity type from the evaluation history, and the data is no longer stored in
  Amazon Fraud Detector.
  """
  def delete_entity_type(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteEntityType", input, options)
  end

  @doc """
  Deletes the specified event.

  When you delete an event, Amazon Fraud Detector permanently deletes that event
  from the evaluation history, and the event data is no longer stored in Amazon
  Fraud Detector.
  """
  def delete_event(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteEvent", input, options)
  end

  @doc """
  Deletes an event type.

  You cannot delete an event type that is used in a detector or a model.

  When you delete an entity type, Amazon Fraud Detector permanently deletes that
  entity type from the evaluation history, and the data is no longer stored in
  Amazon Fraud Detector.
  """
  def delete_event_type(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteEventType", input, options)
  end

  @doc """
  Removes a SageMaker model from Amazon Fraud Detector.

  You can remove an Amazon SageMaker model if it is not associated with a detector
  version. Removing a SageMaker model disconnects it from Amazon Fraud Detector,
  but the model remains available in SageMaker.
  """
  def delete_external_model(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteExternalModel", input, options)
  end

  @doc """
  Deletes a label.

  You cannot delete labels that are included in an event type in Amazon Fraud
  Detector.

  You cannot delete a label assigned to an event ID. You must first delete the
  relevant event ID.

  When you delete a label, Amazon Fraud Detector permanently deletes that label
  from the evaluation history, and the data is no longer stored in Amazon Fraud
  Detector.
  """
  def delete_label(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteLabel", input, options)
  end

  @doc """
  Deletes a model.

  You can delete models and model versions in Amazon Fraud Detector, provided that
  they are not associated with a detector version.

  When you delete a model, Amazon Fraud Detector permanently deletes that model
  from the evaluation history, and the data is no longer stored in Amazon Fraud
  Detector.
  """
  def delete_model(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteModel", input, options)
  end

  @doc """
  Deletes a model version.

  You can delete models and model versions in Amazon Fraud Detector, provided that
  they are not associated with a detector version.

  When you delete a model version, Amazon Fraud Detector permanently deletes that
  model version from the evaluation history, and the data is no longer stored in
  Amazon Fraud Detector.
  """
  def delete_model_version(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteModelVersion", input, options)
  end

  @doc """
  Deletes an outcome.

  You cannot delete an outcome that is used in a rule version.

  When you delete an outcome, Amazon Fraud Detector permanently deletes that
  outcome from the evaluation history, and the data is no longer stored in Amazon
  Fraud Detector.
  """
  def delete_outcome(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteOutcome", input, options)
  end

  @doc """
  Deletes the rule.

  You cannot delete a rule if it is used by an `ACTIVE` or `INACTIVE` detector
  version.

  When you delete a rule, Amazon Fraud Detector permanently deletes that rule from
  the evaluation history, and the data is no longer stored in Amazon Fraud
  Detector.
  """
  def delete_rule(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteRule", input, options)
  end

  @doc """
  Deletes a variable.

  You can't delete variables that are included in an event type in Amazon Fraud
  Detector.

  Amazon Fraud Detector automatically deletes model output variables and SageMaker
  model output variables when you delete the model. You can't delete these
  variables manually.

  When you delete a variable, Amazon Fraud Detector permanently deletes that
  variable from the evaluation history, and the data is no longer stored in Amazon
  Fraud Detector.
  """
  def delete_variable(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteVariable", input, options)
  end

  @doc """
  Gets all versions for a specified detector.
  """
  def describe_detector(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDetector", input, options)
  end

  @doc """
  Gets all of the model versions for the specified model type or for the specified
  model type and model ID.

  You can also get details for a single, specified model version.
  """
  def describe_model_versions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeModelVersions", input, options)
  end

  @doc """
  Gets a particular detector version.
  """
  def get_detector_version(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetDetectorVersion", input, options)
  end

  @doc """
  Gets all detectors or a single detector if a `detectorId` is specified.

  This is a paginated API. If you provide a null `maxResults`, this action
  retrieves a maximum of 10 records per page. If you provide a `maxResults`, the
  value must be between 5 and 10. To get the next page results, provide the
  pagination token from the `GetDetectorsResponse` as part of your request. A null
  pagination token fetches the records from the beginning.
  """
  def get_detectors(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetDetectors", input, options)
  end

  @doc """
  Gets all entity types or a specific entity type if a name is specified.

  This is a paginated API. If you provide a null `maxResults`, this action
  retrieves a maximum of 10 records per page. If you provide a `maxResults`, the
  value must be between 5 and 10. To get the next page results, provide the
  pagination token from the `GetEntityTypesResponse` as part of your request. A
  null pagination token fetches the records from the beginning.
  """
  def get_entity_types(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetEntityTypes", input, options)
  end

  @doc """
  Evaluates an event against a detector version.

  If a version ID is not provided, the detector’s (`ACTIVE`) version is used.
  """
  def get_event_prediction(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetEventPrediction", input, options)
  end

  @doc """
  Gets all event types or a specific event type if name is provided.

  This is a paginated API. If you provide a null `maxResults`, this action
  retrieves a maximum of 10 records per page. If you provide a `maxResults`, the
  value must be between 5 and 10. To get the next page results, provide the
  pagination token from the `GetEventTypesResponse` as part of your request. A
  null pagination token fetches the records from the beginning.
  """
  def get_event_types(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetEventTypes", input, options)
  end

  @doc """
  Gets the details for one or more Amazon SageMaker models that have been imported
  into the service.

  This is a paginated API. If you provide a null `maxResults`, this actions
  retrieves a maximum of 10 records per page. If you provide a `maxResults`, the
  value must be between 5 and 10. To get the next page results, provide the
  pagination token from the `GetExternalModelsResult` as part of your request. A
  null pagination token fetches the records from the beginning.
  """
  def get_external_models(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetExternalModels", input, options)
  end

  @doc """
  Gets the encryption key if a Key Management Service (KMS) customer master key
  (CMK) has been specified to be used to encrypt content in Amazon Fraud Detector.
  """
  def get_kms_encryption_key(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetKMSEncryptionKey", input, options)
  end

  @doc """
  Gets all labels or a specific label if name is provided.

  This is a paginated API. If you provide a null `maxResults`, this action
  retrieves a maximum of 50 records per page. If you provide a `maxResults`, the
  value must be between 10 and 50. To get the next page results, provide the
  pagination token from the `GetGetLabelsResponse` as part of your request. A null
  pagination token fetches the records from the beginning.
  """
  def get_labels(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetLabels", input, options)
  end

  @doc """
  Gets the details of the specified model version.
  """
  def get_model_version(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetModelVersion", input, options)
  end

  @doc """
  Gets one or more models.

  Gets all models for the AWS account if no model type and no model id provided.
  Gets all models for the AWS account and model type, if the model type is
  specified but model id is not provided. Gets a specific model if (model type,
  model id) tuple is specified.

  This is a paginated API. If you provide a null `maxResults`, this action
  retrieves a maximum of 10 records per page. If you provide a `maxResults`, the
  value must be between 1 and 10. To get the next page results, provide the
  pagination token from the response as part of your request. A null pagination
  token fetches the records from the beginning.
  """
  def get_models(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetModels", input, options)
  end

  @doc """
  Gets one or more outcomes.

  This is a paginated API. If you provide a null `maxResults`, this actions
  retrieves a maximum of 100 records per page. If you provide a `maxResults`, the
  value must be between 50 and 100. To get the next page results, provide the
  pagination token from the `GetOutcomesResult` as part of your request. A null
  pagination token fetches the records from the beginning.
  """
  def get_outcomes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetOutcomes", input, options)
  end

  @doc """
  Get all rules for a detector (paginated) if `ruleId` and `ruleVersion` are not
  specified.

  Gets all rules for the detector and the `ruleId` if present (paginated). Gets a
  specific rule if both the `ruleId` and the `ruleVersion` are specified.

  This is a paginated API. Providing null maxResults results in retrieving maximum
  of 100 records per page. If you provide maxResults the value must be between 50
  and 100. To get the next page result, a provide a pagination token from
  GetRulesResult as part of your request. Null pagination token fetches the
  records from the beginning.
  """
  def get_rules(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetRules", input, options)
  end

  @doc """
  Gets all of the variables or the specific variable.

  This is a paginated API. Providing null `maxSizePerPage` results in retrieving
  maximum of 100 records per page. If you provide `maxSizePerPage` the value must
  be between 50 and 100. To get the next page result, a provide a pagination token
  from `GetVariablesResult` as part of your request. Null pagination token fetches
  the records from the beginning.
  """
  def get_variables(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetVariables", input, options)
  end

  @doc """
  Lists all tags associated with the resource.

  This is a paginated API. To get the next page results, provide the pagination
  token from the response as part of your request. A null pagination token fetches
  the records from the beginning.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Creates or updates a detector.
  """
  def put_detector(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutDetector", input, options)
  end

  @doc """
  Creates or updates an entity type.

  An entity represents who is performing the event. As part of a fraud prediction,
  you pass the entity ID to indicate the specific entity who performed the event.
  An entity type classifies the entity. Example classifications include customer,
  merchant, or account.
  """
  def put_entity_type(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutEntityType", input, options)
  end

  @doc """
  Creates or updates an event type.

  An event is a business activity that is evaluated for fraud risk. With Amazon
  Fraud Detector, you generate fraud predictions for events. An event type defines
  the structure for an event sent to Amazon Fraud Detector. This includes the
  variables sent as part of the event, the entity performing the event (such as a
  customer), and the labels that classify the event. Example event types include
  online payment transactions, account registrations, and authentications.
  """
  def put_event_type(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutEventType", input, options)
  end

  @doc """
  Creates or updates an Amazon SageMaker model endpoint.

  You can also use this action to update the configuration of the model endpoint,
  including the IAM role and/or the mapped variables.
  """
  def put_external_model(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutExternalModel", input, options)
  end

  @doc """
  Specifies the Key Management Service (KMS) customer master key (CMK) to be used
  to encrypt content in Amazon Fraud Detector.
  """
  def put_kms_encryption_key(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutKMSEncryptionKey", input, options)
  end

  @doc """
  Creates or updates label.

  A label classifies an event as fraudulent or legitimate. Labels are associated
  with event types and used to train supervised machine learning models in Amazon
  Fraud Detector.
  """
  def put_label(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutLabel", input, options)
  end

  @doc """
  Creates or updates an outcome.
  """
  def put_outcome(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutOutcome", input, options)
  end

  @doc """
  Assigns tags to a resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Removes tags from a resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Updates a detector version.

  The detector version attributes that you can update include models, external
  model endpoints, rules, rule execution mode, and description. You can only
  update a `DRAFT` detector version.
  """
  def update_detector_version(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateDetectorVersion", input, options)
  end

  @doc """
  Updates the detector version's description.

  You can update the metadata for any detector version (`DRAFT, ACTIVE,` or
  `INACTIVE`).
  """
  def update_detector_version_metadata(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateDetectorVersionMetadata", input, options)
  end

  @doc """
  Updates the detector version’s status.

  You can perform the following promotions or demotions using
  `UpdateDetectorVersionStatus`: `DRAFT` to `ACTIVE`, `ACTIVE` to `INACTIVE`, and
  `INACTIVE` to `ACTIVE`.
  """
  def update_detector_version_status(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateDetectorVersionStatus", input, options)
  end

  @doc """
  Updates a model.

  You can update the description attribute using this action.
  """
  def update_model(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateModel", input, options)
  end

  @doc """
  Updates a model version.

  Updating a model version retrains an existing model version using updated
  training data and produces a new minor version of the model. You can update the
  training data set location and data access role attributes using this action.
  This action creates and trains a new minor version of the model, for example
  version 1.01, 1.02, 1.03.
  """
  def update_model_version(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateModelVersion", input, options)
  end

  @doc """
  Updates the status of a model version.

  You can perform the following status updates:

    1. Change the `TRAINING_COMPLETE` status to `ACTIVE`.

    2. Change `ACTIVE`to `INACTIVE`.
  """
  def update_model_version_status(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateModelVersionStatus", input, options)
  end

  @doc """
  Updates a rule's metadata.

  The description attribute can be updated.
  """
  def update_rule_metadata(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateRuleMetadata", input, options)
  end

  @doc """
  Updates a rule version resulting in a new rule version.

  Updates a rule version resulting in a new rule version (version 1, 2, 3 ...).
  """
  def update_rule_version(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateRuleVersion", input, options)
  end

  @doc """
  Updates a variable.
  """
  def update_variable(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateVariable", input, options)
  end
end