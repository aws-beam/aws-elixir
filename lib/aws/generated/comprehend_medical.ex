# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ComprehendMedical do
  @moduledoc """
  Amazon Comprehend Medical extracts structured information from unstructured
  clinical text.

  Use these actions to gain insight in your documents. Amazon Comprehend Medical
  only detects entities in English language texts. Amazon Comprehend Medical
  places limits on the sizes of files allowed for different API operations. To
  learn more, see [Guidelines and quotas](https://docs.aws.amazon.com/comprehend-medical/latest/dev/comprehendmedical-quotas.html)
  in the *Amazon Comprehend Medical Developer Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      list_s_n_o_m_e_d_c_t_inference_jobs_request() :: %{
        optional("Filter") => comprehend_medical_async_job_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_s_n_o_m_e_d_c_t_inference_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_rx_norm_inference_job_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type start_rx_norm_inference_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_n_o_m_e_d_c_t_trait() :: %{
        "Name" => list(any()),
        "Score" => float()
      }
      
  """
  @type s_n_o_m_e_d_c_t_trait() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      trait() :: %{
        "Name" => list(any()),
        "Score" => float()
      }
      
  """
  @type trait() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_entities_v2_request() :: %{
        required("Text") => String.t()
      }
      
  """
  @type detect_entities_v2_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_phi_detection_jobs_request() :: %{
        optional("Filter") => comprehend_medical_async_job_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_phi_detection_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      icd10_cm_entity() :: %{
        "Attributes" => list(icd10_cm_attribute()()),
        "BeginOffset" => integer(),
        "Category" => list(any()),
        "EndOffset" => integer(),
        "ICD10CMConcepts" => list(icd10_cm_concept()()),
        "Id" => integer(),
        "Score" => float(),
        "Text" => String.t(),
        "Traits" => list(icd10_cm_trait()()),
        "Type" => list(any())
      }
      
  """
  @type icd10_cm_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      input_data_config() :: %{
        "S3Bucket" => String.t(),
        "S3Key" => String.t()
      }
      
  """
  @type input_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      characters() :: %{
        "OriginalTextCharacters" => integer()
      }
      
  """
  @type characters() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      entity() :: %{
        "Attributes" => list(attribute()()),
        "BeginOffset" => integer(),
        "Category" => list(any()),
        "EndOffset" => integer(),
        "Id" => integer(),
        "Score" => float(),
        "Text" => String.t(),
        "Traits" => list(trait()()),
        "Type" => list(any())
      }
      
  """
  @type entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_icd10_cm_inference_job_response() :: %{
        "ComprehendMedicalAsyncJobProperties" => comprehend_medical_async_job_properties()
      }
      
  """
  @type describe_icd10_cm_inference_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rx_norm_inference_jobs_response() :: %{
        "ComprehendMedicalAsyncJobPropertiesList" => list(comprehend_medical_async_job_properties()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_rx_norm_inference_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_icd10_cm_inference_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type describe_icd10_cm_inference_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_encoding_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_encoding_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_n_o_m_e_d_c_t_attribute() :: %{
        "BeginOffset" => integer(),
        "Category" => list(any()),
        "EndOffset" => integer(),
        "Id" => integer(),
        "RelationshipScore" => float(),
        "RelationshipType" => list(any()),
        "SNOMEDCTConcepts" => list(s_n_o_m_e_d_c_t_concept()()),
        "Score" => float(),
        "Text" => String.t(),
        "Traits" => list(s_n_o_m_e_d_c_t_trait()()),
        "Type" => list(any())
      }
      
  """
  @type s_n_o_m_e_d_c_t_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      infer_s_n_o_m_e_d_c_t_response() :: %{
        "Characters" => characters(),
        "Entities" => list(s_n_o_m_e_d_c_t_entity()()),
        "ModelVersion" => String.t(),
        "PaginationToken" => String.t(),
        "SNOMEDCTDetails" => s_n_o_m_e_d_c_t_details()
      }
      
  """
  @type infer_s_n_o_m_e_d_c_t_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_phi_response() :: %{
        "Entities" => list(entity()()),
        "ModelVersion" => String.t(),
        "PaginationToken" => String.t()
      }
      
  """
  @type detect_phi_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_phi_detection_job_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("JobName") => String.t(),
        optional("KMSKey") => String.t(),
        required("DataAccessRoleArn") => String.t(),
        required("InputDataConfig") => input_data_config(),
        required("LanguageCode") => list(any()),
        required("OutputDataConfig") => output_data_config()
      }
      
  """
  @type start_phi_detection_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_entities_detection_v2_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type stop_entities_detection_v2_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      infer_rx_norm_response() :: %{
        "Entities" => list(rx_norm_entity()()),
        "ModelVersion" => String.t(),
        "PaginationToken" => String.t()
      }
      
  """
  @type infer_rx_norm_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unmapped_attribute() :: %{
        "Attribute" => attribute(),
        "Type" => list(any())
      }
      
  """
  @type unmapped_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      too_many_requests_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type too_many_requests_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_n_o_m_e_d_c_t_details() :: %{
        "Edition" => String.t(),
        "Language" => String.t(),
        "VersionDate" => String.t()
      }
      
  """
  @type s_n_o_m_e_d_c_t_details() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_icd10_cm_inference_job_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type start_icd10_cm_inference_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_s_n_o_m_e_d_c_t_inference_jobs_response() :: %{
        "ComprehendMedicalAsyncJobPropertiesList" => list(comprehend_medical_async_job_properties()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_s_n_o_m_e_d_c_t_inference_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rx_norm_entity() :: %{
        "Attributes" => list(rx_norm_attribute()()),
        "BeginOffset" => integer(),
        "Category" => list(any()),
        "EndOffset" => integer(),
        "Id" => integer(),
        "RxNormConcepts" => list(rx_norm_concept()()),
        "Score" => float(),
        "Text" => String.t(),
        "Traits" => list(rx_norm_trait()()),
        "Type" => list(any())
      }
      
  """
  @type rx_norm_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      icd10_cm_concept() :: %{
        "Code" => String.t(),
        "Description" => String.t(),
        "Score" => float()
      }
      
  """
  @type icd10_cm_concept() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_entities_response() :: %{
        "Entities" => list(entity()()),
        "ModelVersion" => String.t(),
        "PaginationToken" => String.t(),
        "UnmappedAttributes" => list(unmapped_attribute()())
      }
      
  """
  @type detect_entities_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rx_norm_concept() :: %{
        "Code" => String.t(),
        "Description" => String.t(),
        "Score" => float()
      }
      
  """
  @type rx_norm_concept() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_entities_detection_v2_job_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("JobName") => String.t(),
        optional("KMSKey") => String.t(),
        required("DataAccessRoleArn") => String.t(),
        required("InputDataConfig") => input_data_config(),
        required("LanguageCode") => list(any()),
        required("OutputDataConfig") => output_data_config()
      }
      
  """
  @type start_entities_detection_v2_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_s_n_o_m_e_d_c_t_inference_job_response() :: %{
        "ComprehendMedicalAsyncJobProperties" => comprehend_medical_async_job_properties()
      }
      
  """
  @type describe_s_n_o_m_e_d_c_t_inference_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      infer_icd10_cm_response() :: %{
        "Entities" => list(icd10_cm_entity()()),
        "ModelVersion" => String.t(),
        "PaginationToken" => String.t()
      }
      
  """
  @type infer_icd10_cm_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_icd10_cm_inference_jobs_request() :: %{
        optional("Filter") => comprehend_medical_async_job_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_icd10_cm_inference_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_entities_v2_response() :: %{
        "Entities" => list(entity()()),
        "ModelVersion" => String.t(),
        "PaginationToken" => String.t(),
        "UnmappedAttributes" => list(unmapped_attribute()())
      }
      
  """
  @type detect_entities_v2_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_entities_request() :: %{
        required("Text") => String.t()
      }
      
  """
  @type detect_entities_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_n_o_m_e_d_c_t_entity() :: %{
        "Attributes" => list(s_n_o_m_e_d_c_t_attribute()()),
        "BeginOffset" => integer(),
        "Category" => list(any()),
        "EndOffset" => integer(),
        "Id" => integer(),
        "SNOMEDCTConcepts" => list(s_n_o_m_e_d_c_t_concept()()),
        "Score" => float(),
        "Text" => String.t(),
        "Traits" => list(s_n_o_m_e_d_c_t_trait()()),
        "Type" => list(any())
      }
      
  """
  @type s_n_o_m_e_d_c_t_entity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      invalid_request_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type invalid_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_phi_detection_jobs_response() :: %{
        "ComprehendMedicalAsyncJobPropertiesList" => list(comprehend_medical_async_job_properties()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_phi_detection_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_entities_detection_v2_jobs_request() :: %{
        optional("Filter") => comprehend_medical_async_job_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_entities_detection_v2_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_phi_detection_job_response() :: %{
        "ComprehendMedicalAsyncJobProperties" => comprehend_medical_async_job_properties()
      }
      
  """
  @type describe_phi_detection_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_phi_detection_job_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type stop_phi_detection_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      comprehend_medical_async_job_filter() :: %{
        "JobName" => String.t(),
        "JobStatus" => list(any()),
        "SubmitTimeAfter" => non_neg_integer(),
        "SubmitTimeBefore" => non_neg_integer()
      }
      
  """
  @type comprehend_medical_async_job_filter() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_icd10_cm_inference_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type stop_icd10_cm_inference_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_entities_detection_v2_job_response() :: %{
        "ComprehendMedicalAsyncJobProperties" => comprehend_medical_async_job_properties()
      }
      
  """
  @type describe_entities_detection_v2_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_rx_norm_inference_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type describe_rx_norm_inference_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_unavailable_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type service_unavailable_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rx_norm_attribute() :: %{
        "BeginOffset" => integer(),
        "EndOffset" => integer(),
        "Id" => integer(),
        "RelationshipScore" => float(),
        "Score" => float(),
        "Text" => String.t(),
        "Traits" => list(rx_norm_trait()()),
        "Type" => list(any())
      }
      
  """
  @type rx_norm_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_rx_norm_inference_job_response() :: %{
        "ComprehendMedicalAsyncJobProperties" => comprehend_medical_async_job_properties()
      }
      
  """
  @type describe_rx_norm_inference_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      icd10_cm_attribute() :: %{
        "BeginOffset" => integer(),
        "Category" => list(any()),
        "EndOffset" => integer(),
        "Id" => integer(),
        "RelationshipScore" => float(),
        "RelationshipType" => list(any()),
        "Score" => float(),
        "Text" => String.t(),
        "Traits" => list(icd10_cm_trait()()),
        "Type" => list(any())
      }
      
  """
  @type icd10_cm_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_entities_detection_v2_jobs_response() :: %{
        "ComprehendMedicalAsyncJobPropertiesList" => list(comprehend_medical_async_job_properties()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_entities_detection_v2_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_icd10_cm_inference_jobs_response() :: %{
        "ComprehendMedicalAsyncJobPropertiesList" => list(comprehend_medical_async_job_properties()()),
        "NextToken" => String.t()
      }
      
  """
  @type list_icd10_cm_inference_jobs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      infer_s_n_o_m_e_d_c_t_request() :: %{
        required("Text") => String.t()
      }
      
  """
  @type infer_s_n_o_m_e_d_c_t_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_icd10_cm_inference_job_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("JobName") => String.t(),
        optional("KMSKey") => String.t(),
        required("DataAccessRoleArn") => String.t(),
        required("InputDataConfig") => input_data_config(),
        required("LanguageCode") => list(any()),
        required("OutputDataConfig") => output_data_config()
      }
      
  """
  @type start_icd10_cm_inference_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_s_n_o_m_e_d_c_t_inference_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type describe_s_n_o_m_e_d_c_t_inference_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_rx_norm_inference_job_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("JobName") => String.t(),
        optional("KMSKey") => String.t(),
        required("DataAccessRoleArn") => String.t(),
        required("InputDataConfig") => input_data_config(),
        required("LanguageCode") => list(any()),
        required("OutputDataConfig") => output_data_config()
      }
      
  """
  @type start_rx_norm_inference_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_s_n_o_m_e_d_c_t_inference_job_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type start_s_n_o_m_e_d_c_t_inference_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      text_size_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type text_size_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_s_n_o_m_e_d_c_t_inference_job_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type stop_s_n_o_m_e_d_c_t_inference_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detect_phi_request() :: %{
        required("Text") => String.t()
      }
      
  """
  @type detect_phi_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_s_n_o_m_e_d_c_t_inference_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type stop_s_n_o_m_e_d_c_t_inference_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_s_n_o_m_e_d_c_t_inference_job_request() :: %{
        optional("ClientRequestToken") => String.t(),
        optional("JobName") => String.t(),
        optional("KMSKey") => String.t(),
        required("DataAccessRoleArn") => String.t(),
        required("InputDataConfig") => input_data_config(),
        required("LanguageCode") => list(any()),
        required("OutputDataConfig") => output_data_config()
      }
      
  """
  @type start_s_n_o_m_e_d_c_t_inference_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_entities_detection_v2_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type describe_entities_detection_v2_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      comprehend_medical_async_job_properties() :: %{
        "DataAccessRoleArn" => String.t(),
        "EndTime" => non_neg_integer(),
        "ExpirationTime" => non_neg_integer(),
        "InputDataConfig" => input_data_config(),
        "JobId" => String.t(),
        "JobName" => String.t(),
        "JobStatus" => list(any()),
        "KMSKey" => String.t(),
        "LanguageCode" => list(any()),
        "ManifestFilePath" => String.t(),
        "Message" => String.t(),
        "ModelVersion" => String.t(),
        "OutputDataConfig" => output_data_config(),
        "SubmitTime" => non_neg_integer()
      }
      
  """
  @type comprehend_medical_async_job_properties() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_rx_norm_inference_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type stop_rx_norm_inference_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      infer_icd10_cm_request() :: %{
        required("Text") => String.t()
      }
      
  """
  @type infer_icd10_cm_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_icd10_cm_inference_job_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type stop_icd10_cm_inference_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_rx_norm_inference_jobs_request() :: %{
        optional("Filter") => comprehend_medical_async_job_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t()
      }
      
  """
  @type list_rx_norm_inference_jobs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attribute() :: %{
        "BeginOffset" => integer(),
        "Category" => list(any()),
        "EndOffset" => integer(),
        "Id" => integer(),
        "RelationshipScore" => float(),
        "RelationshipType" => list(any()),
        "Score" => float(),
        "Text" => String.t(),
        "Traits" => list(trait()()),
        "Type" => list(any())
      }
      
  """
  @type attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_phi_detection_job_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type start_phi_detection_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_phi_detection_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type describe_phi_detection_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_phi_detection_job_request() :: %{
        required("JobId") => String.t()
      }
      
  """
  @type stop_phi_detection_job_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      output_data_config() :: %{
        "S3Bucket" => String.t(),
        "S3Key" => String.t()
      }
      
  """
  @type output_data_config() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      infer_rx_norm_request() :: %{
        required("Text") => String.t()
      }
      
  """
  @type infer_rx_norm_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_entities_detection_v2_job_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type stop_entities_detection_v2_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rx_norm_trait() :: %{
        "Name" => list(any()),
        "Score" => float()
      }
      
  """
  @type rx_norm_trait() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_rx_norm_inference_job_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type stop_rx_norm_inference_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_entities_detection_v2_job_response() :: %{
        "JobId" => String.t()
      }
      
  """
  @type start_entities_detection_v2_job_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      icd10_cm_trait() :: %{
        "Name" => list(any()),
        "Score" => float()
      }
      
  """
  @type icd10_cm_trait() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      s_n_o_m_e_d_c_t_concept() :: %{
        "Code" => String.t(),
        "Description" => String.t(),
        "Score" => float()
      }
      
  """
  @type s_n_o_m_e_d_c_t_concept() :: %{String.t() => any()}

  @type describe_entities_detection_v2_job_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_icd10_cm_inference_job_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_phi_detection_job_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_rx_norm_inference_job_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type describe_s_n_o_m_e_d_c_t_inference_job_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type detect_entities_errors() ::
          text_size_limit_exceeded_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | too_many_requests_exception()
          | invalid_encoding_exception()

  @type detect_entities_v2_errors() ::
          text_size_limit_exceeded_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | too_many_requests_exception()
          | invalid_encoding_exception()

  @type detect_phi_errors() ::
          text_size_limit_exceeded_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | too_many_requests_exception()
          | invalid_encoding_exception()

  @type infer_icd10_cm_errors() ::
          text_size_limit_exceeded_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | too_many_requests_exception()
          | invalid_encoding_exception()

  @type infer_rx_norm_errors() ::
          text_size_limit_exceeded_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | too_many_requests_exception()
          | invalid_encoding_exception()

  @type infer_s_n_o_m_e_d_c_t_errors() ::
          text_size_limit_exceeded_exception()
          | internal_server_exception()
          | service_unavailable_exception()
          | invalid_request_exception()
          | too_many_requests_exception()
          | invalid_encoding_exception()

  @type list_entities_detection_v2_jobs_errors() ::
          validation_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type list_icd10_cm_inference_jobs_errors() ::
          validation_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type list_phi_detection_jobs_errors() ::
          validation_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type list_rx_norm_inference_jobs_errors() ::
          validation_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type list_s_n_o_m_e_d_c_t_inference_jobs_errors() ::
          validation_exception()
          | internal_server_exception()
          | invalid_request_exception()
          | too_many_requests_exception()

  @type start_entities_detection_v2_job_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type start_icd10_cm_inference_job_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type start_phi_detection_job_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type start_rx_norm_inference_job_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type start_s_n_o_m_e_d_c_t_inference_job_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  @type stop_entities_detection_v2_job_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type stop_icd10_cm_inference_job_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type stop_phi_detection_job_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type stop_rx_norm_inference_job_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()

  @type stop_s_n_o_m_e_d_c_t_inference_job_errors() ::
          internal_server_exception()
          | invalid_request_exception()
          | resource_not_found_exception()
          | too_many_requests_exception()

  def metadata do
    %{
      api_version: "2018-10-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "comprehendmedical",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "ComprehendMedical",
      signature_version: "v4",
      signing_name: "comprehendmedical",
      target_prefix: "ComprehendMedical_20181030"
    }
  end

  @doc """
  Gets the properties associated with a medical entities detection job.

  Use this operation
  to get the status of a detection job.
  """
  @spec describe_entities_detection_v2_job(
          map(),
          describe_entities_detection_v2_job_request(),
          list()
        ) ::
          {:ok, describe_entities_detection_v2_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_entities_detection_v2_job_errors()}
  def describe_entities_detection_v2_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEntitiesDetectionV2Job", input, options)
  end

  @doc """
  Gets the properties associated with an InferICD10CM job.

  Use this operation to get the
  status of an inference job.
  """
  @spec describe_icd10_cm_inference_job(map(), describe_icd10_cm_inference_job_request(), list()) ::
          {:ok, describe_icd10_cm_inference_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_icd10_cm_inference_job_errors()}
  def describe_icd10_cm_inference_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeICD10CMInferenceJob", input, options)
  end

  @doc """
  Gets the properties associated with a protected health information (PHI)
  detection job.

  Use this operation to get the status of a detection job.
  """
  @spec describe_phi_detection_job(map(), describe_phi_detection_job_request(), list()) ::
          {:ok, describe_phi_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_phi_detection_job_errors()}
  def describe_phi_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePHIDetectionJob", input, options)
  end

  @doc """
  Gets the properties associated with an InferRxNorm job.

  Use this operation to get the
  status of an inference job.
  """
  @spec describe_rx_norm_inference_job(map(), describe_rx_norm_inference_job_request(), list()) ::
          {:ok, describe_rx_norm_inference_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_rx_norm_inference_job_errors()}
  def describe_rx_norm_inference_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRxNormInferenceJob", input, options)
  end

  @doc """

  Gets the properties associated with an InferSNOMEDCT job.

  Use this operation to get the status of an inference job.
  """
  @spec describe_s_n_o_m_e_d_c_t_inference_job(
          map(),
          describe_s_n_o_m_e_d_c_t_inference_job_request(),
          list()
        ) ::
          {:ok, describe_s_n_o_m_e_d_c_t_inference_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, describe_s_n_o_m_e_d_c_t_inference_job_errors()}
  def describe_s_n_o_m_e_d_c_t_inference_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSNOMEDCTInferenceJob", input, options)
  end

  @doc """
  The `DetectEntities` operation is deprecated.

  You should use the `DetectEntitiesV2` operation instead.

  Inspects the clinical text for a variety of medical entities and returns
  specific
  information about them such as entity category, location, and confidence score
  on that
  information.
  """
  @spec detect_entities(map(), detect_entities_request(), list()) ::
          {:ok, detect_entities_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detect_entities_errors()}
  def detect_entities(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetectEntities", input, options)
  end

  @doc """
  Inspects the clinical text for a variety of medical entities and returns
  specific
  information about them such as entity category, location, and confidence score
  on that
  information.

  Amazon Comprehend Medical only detects medical entities in English language
  texts.

  The `DetectEntitiesV2` operation replaces the `DetectEntities`
  operation. This new action uses a different model for determining the entities
  in your medical
  text and changes the way that some entities are returned in the output. You
  should use the
  `DetectEntitiesV2` operation in all new applications.

  The `DetectEntitiesV2` operation returns the `Acuity` and
  `Direction` entities as attributes instead of types.
  """
  @spec detect_entities_v2(map(), detect_entities_v2_request(), list()) ::
          {:ok, detect_entities_v2_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detect_entities_v2_errors()}
  def detect_entities_v2(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetectEntitiesV2", input, options)
  end

  @doc """
  Inspects the clinical text for protected health information (PHI) entities and
  returns
  the entity category, location, and confidence score for each entity.

  Amazon Comprehend Medical
  only detects entities in English language texts.
  """
  @spec detect_phi(map(), detect_phi_request(), list()) ::
          {:ok, detect_phi_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, detect_phi_errors()}
  def detect_phi(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetectPHI", input, options)
  end

  @doc """
  InferICD10CM detects medical conditions as entities listed in a patient record
  and links
  those entities to normalized concept identifiers in the ICD-10-CM knowledge base
  from the
  Centers for Disease Control.

  Amazon Comprehend Medical only detects medical entities in
  English language texts.
  """
  @spec infer_icd10_cm(map(), infer_icd10_cm_request(), list()) ::
          {:ok, infer_icd10_cm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, infer_icd10_cm_errors()}
  def infer_icd10_cm(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "InferICD10CM", input, options)
  end

  @doc """
  InferRxNorm detects medications as entities listed in a patient record and links
  to the
  normalized concept identifiers in the RxNorm database from the National Library
  of Medicine.

  Amazon Comprehend Medical only detects medical entities in English language
  texts.
  """
  @spec infer_rx_norm(map(), infer_rx_norm_request(), list()) ::
          {:ok, infer_rx_norm_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, infer_rx_norm_errors()}
  def infer_rx_norm(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "InferRxNorm", input, options)
  end

  @doc """

  InferSNOMEDCT detects possible medical concepts as entities and links them to
  codes from the Systematized Nomenclature of Medicine, Clinical Terms (SNOMED-CT)
  ontology
  """
  @spec infer_s_n_o_m_e_d_c_t(map(), infer_s_n_o_m_e_d_c_t_request(), list()) ::
          {:ok, infer_s_n_o_m_e_d_c_t_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, infer_s_n_o_m_e_d_c_t_errors()}
  def infer_s_n_o_m_e_d_c_t(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "InferSNOMEDCT", input, options)
  end

  @doc """
  Gets a list of medical entity detection jobs that you have submitted.
  """
  @spec list_entities_detection_v2_jobs(map(), list_entities_detection_v2_jobs_request(), list()) ::
          {:ok, list_entities_detection_v2_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_entities_detection_v2_jobs_errors()}
  def list_entities_detection_v2_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEntitiesDetectionV2Jobs", input, options)
  end

  @doc """
  Gets a list of InferICD10CM jobs that you have submitted.
  """
  @spec list_icd10_cm_inference_jobs(map(), list_icd10_cm_inference_jobs_request(), list()) ::
          {:ok, list_icd10_cm_inference_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_icd10_cm_inference_jobs_errors()}
  def list_icd10_cm_inference_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListICD10CMInferenceJobs", input, options)
  end

  @doc """
  Gets a list of protected health information (PHI) detection jobs you have
  submitted.
  """
  @spec list_phi_detection_jobs(map(), list_phi_detection_jobs_request(), list()) ::
          {:ok, list_phi_detection_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_phi_detection_jobs_errors()}
  def list_phi_detection_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListPHIDetectionJobs", input, options)
  end

  @doc """
  Gets a list of InferRxNorm jobs that you have submitted.
  """
  @spec list_rx_norm_inference_jobs(map(), list_rx_norm_inference_jobs_request(), list()) ::
          {:ok, list_rx_norm_inference_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_rx_norm_inference_jobs_errors()}
  def list_rx_norm_inference_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRxNormInferenceJobs", input, options)
  end

  @doc """

  Gets a list of InferSNOMEDCT jobs a user has submitted.
  """
  @spec list_s_n_o_m_e_d_c_t_inference_jobs(
          map(),
          list_s_n_o_m_e_d_c_t_inference_jobs_request(),
          list()
        ) ::
          {:ok, list_s_n_o_m_e_d_c_t_inference_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_s_n_o_m_e_d_c_t_inference_jobs_errors()}
  def list_s_n_o_m_e_d_c_t_inference_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSNOMEDCTInferenceJobs", input, options)
  end

  @doc """
  Starts an asynchronous medical entity detection job for a collection of
  documents.

  Use the
  `DescribeEntitiesDetectionV2Job` operation to track the status of a job.
  """
  @spec start_entities_detection_v2_job(map(), start_entities_detection_v2_job_request(), list()) ::
          {:ok, start_entities_detection_v2_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_entities_detection_v2_job_errors()}
  def start_entities_detection_v2_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartEntitiesDetectionV2Job", input, options)
  end

  @doc """
  Starts an asynchronous job to detect medical conditions and link them to the
  ICD-10-CM
  ontology.

  Use the `DescribeICD10CMInferenceJob` operation to track the status of a
  job.
  """
  @spec start_icd10_cm_inference_job(map(), start_icd10_cm_inference_job_request(), list()) ::
          {:ok, start_icd10_cm_inference_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_icd10_cm_inference_job_errors()}
  def start_icd10_cm_inference_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartICD10CMInferenceJob", input, options)
  end

  @doc """
  Starts an asynchronous job to detect protected health information (PHI).

  Use the
  `DescribePHIDetectionJob` operation to track the status of a job.
  """
  @spec start_phi_detection_job(map(), start_phi_detection_job_request(), list()) ::
          {:ok, start_phi_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_phi_detection_job_errors()}
  def start_phi_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartPHIDetectionJob", input, options)
  end

  @doc """
  Starts an asynchronous job to detect medication entities and link them to the
  RxNorm
  ontology.

  Use the `DescribeRxNormInferenceJob` operation to track the status of a
  job.
  """
  @spec start_rx_norm_inference_job(map(), start_rx_norm_inference_job_request(), list()) ::
          {:ok, start_rx_norm_inference_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_rx_norm_inference_job_errors()}
  def start_rx_norm_inference_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartRxNormInferenceJob", input, options)
  end

  @doc """

  Starts an asynchronous job to detect medical concepts and link them to the
  SNOMED-CT ontology.

  Use the DescribeSNOMEDCTInferenceJob operation to track the status of a job.
  """
  @spec start_s_n_o_m_e_d_c_t_inference_job(
          map(),
          start_s_n_o_m_e_d_c_t_inference_job_request(),
          list()
        ) ::
          {:ok, start_s_n_o_m_e_d_c_t_inference_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_s_n_o_m_e_d_c_t_inference_job_errors()}
  def start_s_n_o_m_e_d_c_t_inference_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartSNOMEDCTInferenceJob", input, options)
  end

  @doc """
  Stops a medical entities detection job in progress.
  """
  @spec stop_entities_detection_v2_job(map(), stop_entities_detection_v2_job_request(), list()) ::
          {:ok, stop_entities_detection_v2_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_entities_detection_v2_job_errors()}
  def stop_entities_detection_v2_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopEntitiesDetectionV2Job", input, options)
  end

  @doc """
  Stops an InferICD10CM inference job in progress.
  """
  @spec stop_icd10_cm_inference_job(map(), stop_icd10_cm_inference_job_request(), list()) ::
          {:ok, stop_icd10_cm_inference_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_icd10_cm_inference_job_errors()}
  def stop_icd10_cm_inference_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopICD10CMInferenceJob", input, options)
  end

  @doc """
  Stops a protected health information (PHI) detection job in progress.
  """
  @spec stop_phi_detection_job(map(), stop_phi_detection_job_request(), list()) ::
          {:ok, stop_phi_detection_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_phi_detection_job_errors()}
  def stop_phi_detection_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopPHIDetectionJob", input, options)
  end

  @doc """
  Stops an InferRxNorm inference job in progress.
  """
  @spec stop_rx_norm_inference_job(map(), stop_rx_norm_inference_job_request(), list()) ::
          {:ok, stop_rx_norm_inference_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_rx_norm_inference_job_errors()}
  def stop_rx_norm_inference_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopRxNormInferenceJob", input, options)
  end

  @doc """

  Stops an InferSNOMEDCT inference job in progress.
  """
  @spec stop_s_n_o_m_e_d_c_t_inference_job(
          map(),
          stop_s_n_o_m_e_d_c_t_inference_job_request(),
          list()
        ) ::
          {:ok, stop_s_n_o_m_e_d_c_t_inference_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_s_n_o_m_e_d_c_t_inference_job_errors()}
  def stop_s_n_o_m_e_d_c_t_inference_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopSNOMEDCTInferenceJob", input, options)
  end
end
