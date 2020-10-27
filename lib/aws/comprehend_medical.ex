# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ComprehendMedical do
  @moduledoc """
  Amazon Comprehend Medical extracts structured information from unstructured
  clinical text. Use these actions to gain insight in your documents.
  """

  @doc """
  Gets the properties associated with a medical entities detection job. Use
  this operation to get the status of a detection job.
  """
  def describe_entities_detection_v2_job(client, input, options \\ []) do
    request(client, "DescribeEntitiesDetectionV2Job", input, options)
  end

  @doc """
  Gets the properties associated with an InferICD10CM job. Use this operation
  to get the status of an inference job.
  """
  def describe_i_c_d10_c_m_inference_job(client, input, options \\ []) do
    request(client, "DescribeICD10CMInferenceJob", input, options)
  end

  @doc """
  Gets the properties associated with a protected health information (PHI)
  detection job. Use this operation to get the status of a detection job.
  """
  def describe_p_h_i_detection_job(client, input, options \\ []) do
    request(client, "DescribePHIDetectionJob", input, options)
  end

  @doc """
  Gets the properties associated with an InferRxNorm job. Use this operation
  to get the status of an inference job.
  """
  def describe_rx_norm_inference_job(client, input, options \\ []) do
    request(client, "DescribeRxNormInferenceJob", input, options)
  end

  @doc """
  The `DetectEntities` operation is deprecated. You should use the
  `DetectEntitiesV2` operation instead.

  Inspects the clinical text for a variety of medical entities and returns
  specific information about them such as entity category, location, and
  confidence score on that information .
  """
  def detect_entities(client, input, options \\ []) do
    request(client, "DetectEntities", input, options)
  end

  @doc """
  Inspects the clinical text for a variety of medical entities and returns
  specific information about them such as entity category, location, and
  confidence score on that information. Amazon Comprehend Medical only
  detects medical entities in English language texts.

  The `DetectEntitiesV2` operation replaces the `DetectEntities` operation.
  This new action uses a different model for determining the entities in your
  medical text and changes the way that some entities are returned in the
  output. You should use the `DetectEntitiesV2` operation in all new
  applications.

  The `DetectEntitiesV2` operation returns the `Acuity` and `Direction`
  entities as attributes instead of types.
  """
  def detect_entities_v2(client, input, options \\ []) do
    request(client, "DetectEntitiesV2", input, options)
  end

  @doc """
  Inspects the clinical text for protected health information (PHI) entities
  and returns the entity category, location, and confidence score for each
  entity. Amazon Comprehend Medical only detects entities in English language
  texts.
  """
  def detect_p_h_i(client, input, options \\ []) do
    request(client, "DetectPHI", input, options)
  end

  @doc """
  InferICD10CM detects medical conditions as entities listed in a patient
  record and links those entities to normalized concept identifiers in the
  ICD-10-CM knowledge base from the Centers for Disease Control. Amazon
  Comprehend Medical only detects medical entities in English language texts.
  """
  def infer_i_c_d10_c_m(client, input, options \\ []) do
    request(client, "InferICD10CM", input, options)
  end

  @doc """
  InferRxNorm detects medications as entities listed in a patient record and
  links to the normalized concept identifiers in the RxNorm database from the
  National Library of Medicine. Amazon Comprehend Medical only detects
  medical entities in English language texts.
  """
  def infer_rx_norm(client, input, options \\ []) do
    request(client, "InferRxNorm", input, options)
  end

  @doc """
  Gets a list of medical entity detection jobs that you have submitted.
  """
  def list_entities_detection_v2_jobs(client, input, options \\ []) do
    request(client, "ListEntitiesDetectionV2Jobs", input, options)
  end

  @doc """
  Gets a list of InferICD10CM jobs that you have submitted.
  """
  def list_i_c_d10_c_m_inference_jobs(client, input, options \\ []) do
    request(client, "ListICD10CMInferenceJobs", input, options)
  end

  @doc """
  Gets a list of protected health information (PHI) detection jobs that you
  have submitted.
  """
  def list_p_h_i_detection_jobs(client, input, options \\ []) do
    request(client, "ListPHIDetectionJobs", input, options)
  end

  @doc """
  Gets a list of InferRxNorm jobs that you have submitted.
  """
  def list_rx_norm_inference_jobs(client, input, options \\ []) do
    request(client, "ListRxNormInferenceJobs", input, options)
  end

  @doc """
  Starts an asynchronous medical entity detection job for a collection of
  documents. Use the `DescribeEntitiesDetectionV2Job` operation to track the
  status of a job.
  """
  def start_entities_detection_v2_job(client, input, options \\ []) do
    request(client, "StartEntitiesDetectionV2Job", input, options)
  end

  @doc """
  Starts an asynchronous job to detect medical conditions and link them to
  the ICD-10-CM ontology. Use the `DescribeICD10CMInferenceJob` operation to
  track the status of a job.
  """
  def start_i_c_d10_c_m_inference_job(client, input, options \\ []) do
    request(client, "StartICD10CMInferenceJob", input, options)
  end

  @doc """
  Starts an asynchronous job to detect protected health information (PHI).
  Use the `DescribePHIDetectionJob` operation to track the status of a job.
  """
  def start_p_h_i_detection_job(client, input, options \\ []) do
    request(client, "StartPHIDetectionJob", input, options)
  end

  @doc """
  Starts an asynchronous job to detect medication entities and link them to
  the RxNorm ontology. Use the `DescribeRxNormInferenceJob` operation to
  track the status of a job.
  """
  def start_rx_norm_inference_job(client, input, options \\ []) do
    request(client, "StartRxNormInferenceJob", input, options)
  end

  @doc """
  Stops a medical entities detection job in progress.
  """
  def stop_entities_detection_v2_job(client, input, options \\ []) do
    request(client, "StopEntitiesDetectionV2Job", input, options)
  end

  @doc """
  Stops an InferICD10CM inference job in progress.
  """
  def stop_i_c_d10_c_m_inference_job(client, input, options \\ []) do
    request(client, "StopICD10CMInferenceJob", input, options)
  end

  @doc """
  Stops a protected health information (PHI) detection job in progress.
  """
  def stop_p_h_i_detection_job(client, input, options \\ []) do
    request(client, "StopPHIDetectionJob", input, options)
  end

  @doc """
  Stops an InferRxNorm inference job in progress.
  """
  def stop_rx_norm_inference_job(client, input, options \\ []) do
    request(client, "StopRxNormInferenceJob", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "comprehendmedical"}
    host = build_host("comprehendmedical", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "ComprehendMedical_20181030.#{action}"}
    ]

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case do_request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if(body != "", do: decode!(client, body))
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

  defp do_request(client, method, url, payload, headers, options) do
    {mod, fun} = Map.fetch(client, :http_client)
    apply(mod, fun, [method, url, payload, headers, options])
  end

  defp encode!(client, payload) do
    {mod, fun} = client
      |> Map.fetch(:encode)
      |> Map.fetch(:json)
    apply(mod, fun, [payload])
  end

  defp decode!(client, payload) do
    {mod, fun} = client
      |> Map.fetch(:decode)
      |> Map.fetch(:json)
    apply(mod, fun, [payload])
  end
end
