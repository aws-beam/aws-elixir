# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ComprehendMedical do
  @moduledoc """
  Amazon Comprehend Medical extracts structured information from unstructured
  clinical text.

  Use these actions to gain insight in your documents.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: "ComprehendMedical",
      api_version: "2018-10-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "comprehendmedical",
      global?: false,
      protocol: "json",
      service_id: "ComprehendMedical",
      signature_version: "v4",
      signing_name: "comprehendmedical",
      target_prefix: "ComprehendMedical_20181030"
    }
  end

  @doc """
  Gets the properties associated with a medical entities detection job.

  Use this operation to get the status of a detection job.
  """
  def describe_entities_detection_v2_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEntitiesDetectionV2Job", input, options)
  end

  @doc """
  Gets the properties associated with an InferICD10CM job.

  Use this operation to get the status of an inference job.
  """
  def describe_icd10_cm_inference_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeICD10CMInferenceJob", input, options)
  end

  @doc """
  Gets the properties associated with a protected health information (PHI)
  detection job.

  Use this operation to get the status of a detection job.
  """
  def describe_phi_detection_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribePHIDetectionJob", input, options)
  end

  @doc """
  Gets the properties associated with an InferRxNorm job.

  Use this operation to get the status of an inference job.
  """
  def describe_rx_norm_inference_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeRxNormInferenceJob", input, options)
  end

  @doc """
  The `DetectEntities` operation is deprecated.

  You should use the `DetectEntitiesV2` operation instead.

  Inspects the clinical text for a variety of medical entities and returns
  specific information about them such as entity category, location, and
  confidence score on that information .
  """
  def detect_entities(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DetectEntities", input, options)
  end

  @doc """
  Inspects the clinical text for a variety of medical entities and returns
  specific information about them such as entity category, location, and
  confidence score on that information.

  Amazon Comprehend Medical only detects medical entities in English language
  texts.

  The `DetectEntitiesV2` operation replaces the `DetectEntities` operation. This
  new action uses a different model for determining the entities in your medical
  text and changes the way that some entities are returned in the output. You
  should use the `DetectEntitiesV2` operation in all new applications.

  The `DetectEntitiesV2` operation returns the `Acuity` and `Direction` entities
  as attributes instead of types.
  """
  def detect_entities_v2(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DetectEntitiesV2", input, options)
  end

  @doc """
  Inspects the clinical text for protected health information (PHI) entities and
  returns the entity category, location, and confidence score for each entity.

  Amazon Comprehend Medical only detects entities in English language texts.
  """
  def detect_phi(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DetectPHI", input, options)
  end

  @doc """
  InferICD10CM detects medical conditions as entities listed in a patient record
  and links those entities to normalized concept identifiers in the ICD-10-CM
  knowledge base from the Centers for Disease Control.

  Amazon Comprehend Medical only detects medical entities in English language
  texts.
  """
  def infer_icd10_cm(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "InferICD10CM", input, options)
  end

  @doc """
  InferRxNorm detects medications as entities listed in a patient record and links
  to the normalized concept identifiers in the RxNorm database from the National
  Library of Medicine.

  Amazon Comprehend Medical only detects medical entities in English language
  texts.
  """
  def infer_rx_norm(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "InferRxNorm", input, options)
  end

  @doc """
  Gets a list of medical entity detection jobs that you have submitted.
  """
  def list_entities_detection_v2_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListEntitiesDetectionV2Jobs", input, options)
  end

  @doc """
  Gets a list of InferICD10CM jobs that you have submitted.
  """
  def list_icd10_cm_inference_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListICD10CMInferenceJobs", input, options)
  end

  @doc """
  Gets a list of protected health information (PHI) detection jobs that you have
  submitted.
  """
  def list_phi_detection_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListPHIDetectionJobs", input, options)
  end

  @doc """
  Gets a list of InferRxNorm jobs that you have submitted.
  """
  def list_rx_norm_inference_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListRxNormInferenceJobs", input, options)
  end

  @doc """
  Starts an asynchronous medical entity detection job for a collection of
  documents.

  Use the `DescribeEntitiesDetectionV2Job` operation to track the status of a job.
  """
  def start_entities_detection_v2_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartEntitiesDetectionV2Job", input, options)
  end

  @doc """
  Starts an asynchronous job to detect medical conditions and link them to the
  ICD-10-CM ontology.

  Use the `DescribeICD10CMInferenceJob` operation to track the status of a job.
  """
  def start_icd10_cm_inference_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartICD10CMInferenceJob", input, options)
  end

  @doc """
  Starts an asynchronous job to detect protected health information (PHI).

  Use the `DescribePHIDetectionJob` operation to track the status of a job.
  """
  def start_phi_detection_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartPHIDetectionJob", input, options)
  end

  @doc """
  Starts an asynchronous job to detect medication entities and link them to the
  RxNorm ontology.

  Use the `DescribeRxNormInferenceJob` operation to track the status of a job.
  """
  def start_rx_norm_inference_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartRxNormInferenceJob", input, options)
  end

  @doc """
  Stops a medical entities detection job in progress.
  """
  def stop_entities_detection_v2_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopEntitiesDetectionV2Job", input, options)
  end

  @doc """
  Stops an InferICD10CM inference job in progress.
  """
  def stop_icd10_cm_inference_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopICD10CMInferenceJob", input, options)
  end

  @doc """
  Stops a protected health information (PHI) detection job in progress.
  """
  def stop_phi_detection_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopPHIDetectionJob", input, options)
  end

  @doc """
  Stops an InferRxNorm inference job in progress.
  """
  def stop_rx_norm_inference_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopRxNormInferenceJob", input, options)
  end
end