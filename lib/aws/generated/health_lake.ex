# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.HealthLake do
  @moduledoc """
  This is the *AWS HealthLake API Reference*.

  For an introduction to the service, see [What is AWS HealthLake?](https://docs.aws.amazon.com/healthlake/latest/devguide/what-is.html)
  in the *AWS HealthLake Developer Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      validate_source_request() :: %{
        required("SourceFile") => binary(),
        required("SourceFormat") => list(any())
      }
      
  """
  @type validate_source_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      import_job_properties() :: %{
        "DataAccessRoleArn" => String.t() | atom(),
        "DatastoreId" => String.t() | atom(),
        "EndTime" => non_neg_integer(),
        "InputDataConfig" => list(),
        "JobId" => String.t() | atom(),
        "JobName" => String.t() | atom(),
        "JobOutputDataConfig" => list(),
        "JobProgressReport" => job_progress_report(),
        "JobStatus" => list(any()),
        "Message" => String.t() | atom(),
        "SubmitTime" => non_neg_integer(),
        "ValidationLevel" => list(any())
      }
      
  """
  @type import_job_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_fhir_export_jobs_request() :: %{
        required("DatastoreId") => String.t() | atom(),
        optional("JobName") => String.t() | atom(),
        optional("JobStatus") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SubmittedAfter") => non_neg_integer(),
        optional("SubmittedBefore") => non_neg_integer()
      }
      
  """
  @type list_fhir_export_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      transformation_job_progress_report() :: %{
        "TotalFilesConverted" => [float()],
        "TotalFilesFailed" => [float()],
        "TotalFilesScanned" => [float()],
        "TotalResourcesGenerated" => [float()]
      }
      
  """
  @type transformation_job_progress_report() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_fhir_import_jobs_response() :: %{
        "ImportJobPropertiesList" => list(import_job_properties()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_fhir_import_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      job_progress_report() :: %{
        "Throughput" => float(),
        "TotalFilesConverted" => float(),
        "TotalNumberOfFilesReadWithCustomerError" => float(),
        "TotalNumberOfImportedFiles" => float(),
        "TotalNumberOfImportedNonFhirFiles" => float(),
        "TotalNumberOfNonFhirFilesReadWithCustomerError" => float(),
        "TotalNumberOfNonFhirResourcesImported" => float(),
        "TotalNumberOfNonFhirResourcesScanned" => float(),
        "TotalNumberOfNonFhirResourcesWithCustomerError" => float(),
        "TotalNumberOfResourcesImported" => float(),
        "TotalNumberOfResourcesScanned" => float(),
        "TotalNumberOfResourcesWithCustomerError" => float(),
        "TotalNumberOfScannedFiles" => float(),
        "TotalNumberOfScannedNonFhirFiles" => float(),
        "TotalResourcesGenerated" => float(),
        "TotalSizeOfScannedFilesInMB" => float(),
        "TotalSizeOfScannedNonFhirFilesInMB" => float()
      }
      
  """
  @type job_progress_report() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_data_transformation_profile_response() :: %{
        "ChangeDescription" => String.t() | atom(),
        "LastUpdatedAt" => non_neg_integer(),
        "ProfileDescription" => String.t() | atom(),
        "ProfileId" => String.t() | atom(),
        "ProfileMapping" => map(),
        "ProfileName" => String.t() | atom(),
        "SourceFormat" => list(any()),
        "TargetFormat" => list(any()),
        "Version" => integer()
      }
      
  """
  @type get_data_transformation_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_transformation_profile_summary() :: %{
        "LastUpdatedAt" => non_neg_integer(),
        "ProfileDescription" => String.t() | atom(),
        "ProfileId" => String.t() | atom(),
        "ProfileName" => String.t() | atom(),
        "SourceFormat" => list(any()),
        "TargetFormat" => list(any()),
        "Version" => integer()
      }
      
  """
  @type data_transformation_profile_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      preload_data_config() :: %{
        "PreloadDataType" => list(any())
      }
      
  """
  @type preload_data_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_profile_with_agent_request() :: %{
        optional("ConversationId") => String.t() | atom(),
        required("InputMessage") => agent_input_message(),
        required("ProfileId") => String.t() | atom(),
        required("SourceFormat") => list(any())
      }
      
  """
  @type update_profile_with_agent_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      profile_configuration() :: %{
        "DefaultProfiles" => list(String.t() | atom())
      }
      
  """
  @type profile_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      profile_mapping_source() :: %{
        "ProfileMapping" => map()
      }
      
  """
  @type profile_mapping_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sse_configuration() :: %{
        "KmsEncryptionConfig" => kms_encryption_config()
      }
      
  """
  @type sse_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_fhir_import_job_response() :: %{
        "DatastoreId" => String.t() | atom(),
        "JobId" => String.t() | atom(),
        "JobStatus" => list(any())
      }
      
  """
  @type start_fhir_import_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unsupported_m_i_m_e_type_exception() :: %{
        "Message" => [String.t() | atom()]
      }
      
  """
  @type unsupported_m_i_m_e_type_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      export_job_properties() :: %{
        "DataAccessRoleArn" => String.t() | atom(),
        "DatastoreId" => String.t() | atom(),
        "EndTime" => non_neg_integer(),
        "JobId" => String.t() | atom(),
        "JobName" => String.t() | atom(),
        "JobStatus" => list(any()),
        "Message" => String.t() | atom(),
        "OutputDataConfig" => list(),
        "SubmitTime" => non_neg_integer()
      }
      
  """
  @type export_job_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      not_implemented_operation_exception() :: %{
        "Message" => [String.t() | atom()]
      }
      
  """
  @type not_implemented_operation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type resource_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_fhir_datastore_response() :: %{
        "DatastoreProperties" => datastore_properties()
      }
      
  """
  @type update_fhir_datastore_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_profile_with_agent_response() :: %{
        "AgentResponse" => agent_output_message(),
        "ConversationId" => String.t() | atom()
      }
      
  """
  @type update_profile_with_agent_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_data_transformation_jobs_request() :: %{
        optional("JobName") => String.t() | atom(),
        optional("JobStatus") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SubmittedAfter") => non_neg_integer(),
        optional("SubmittedBefore") => non_neg_integer()
      }
      
  """
  @type list_data_transformation_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      transform_data_request() :: %{
        optional("DriftDetectionEnabled") => [boolean()],
        required("InputData") => list(),
        required("ProfileId") => String.t() | atom(),
        optional("ProvenanceEnabled") => [boolean()]
      }
      
  """
  @type transform_data_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_data_transformation_job_request() :: %{
        required("ClientToken") => String.t() | atom(),
        required("DataAccessRoleArn") => String.t() | atom(),
        optional("DriftDetectionEnabled") => [boolean()],
        required("InputDataConfig") => transformation_input_data_config(),
        optional("JobName") => String.t() | atom(),
        required("OutputDataConfig") => transformation_output_data_config(),
        required("ProfileId") => String.t() | atom(),
        optional("ProvenanceEnabled") => [boolean()]
      }
      
  """
  @type start_data_transformation_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_transformation_s3_configuration() :: %{
        "KmsKeyId" => String.t() | atom(),
        "S3Uri" => String.t() | atom()
      }
      
  """
  @type data_transformation_s3_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      source_validation_issue() :: %{
        "Code" => [String.t() | atom()],
        "Column" => [integer()],
        "Field" => [String.t() | atom()],
        "Line" => [integer()],
        "Message" => [String.t() | atom()],
        "Remediation" => [String.t() | atom()],
        "Severity" => list(any()),
        "Xpath" => [String.t() | atom()]
      }
      
  """
  @type source_validation_issue() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      datastore_filter() :: %{
        "CreatedAfter" => non_neg_integer(),
        "CreatedBefore" => non_neg_integer(),
        "DatastoreName" => String.t() | atom(),
        "DatastoreStatus" => list(any())
      }
      
  """
  @type datastore_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      error_cause() :: %{
        "ErrorCategory" => list(any()),
        "ErrorMessage" => String.t() | atom()
      }
      
  """
  @type error_cause() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_fhir_datastore_response() :: %{
        "DatastoreArn" => String.t() | atom(),
        "DatastoreEndpoint" => String.t() | atom(),
        "DatastoreId" => String.t() | atom(),
        "DatastoreStatus" => list(any())
      }
      
  """
  @type create_fhir_datastore_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      s3_configuration() :: %{
        "KmsKeyId" => String.t() | atom(),
        "S3Uri" => String.t() | atom()
      }
      
  """
  @type s3_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      publish_data_transformation_profile_request() :: %{
        optional("ChangeDescription") => String.t() | atom(),
        optional("FromExistingVersion") => integer(),
        required("SourceFormat") => list(any())
      }
      
  """
  @type publish_data_transformation_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_fhir_export_job_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("DataAccessRoleArn") => String.t() | atom(),
        required("DatastoreId") => String.t() | atom(),
        optional("JobName") => String.t() | atom(),
        required("OutputDataConfig") => list()
      }
      
  """
  @type start_fhir_export_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      transformation_input_data_config() :: %{
        "S3Uri" => String.t() | atom(),
        "SourceFormat" => list(any())
      }
      
  """
  @type transformation_input_data_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_data_transformation_profile_versions_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_data_transformation_profile_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fhir_export_job_request() :: %{
        required("DatastoreId") => String.t() | atom(),
        required("JobId") => String.t() | atom()
      }
      
  """
  @type describe_fhir_export_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type internal_server_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_data_transformation_profile_response() :: %{
        "DeletionTime" => non_neg_integer(),
        "ProfileId" => String.t() | atom(),
        "ProfileName" => String.t() | atom()
      }
      
  """
  @type delete_data_transformation_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      existing_versioned_profile_source() :: %{
        "ProfileId" => [String.t() | atom()],
        "Version" => [integer()]
      }
      
  """
  @type existing_versioned_profile_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      transformation_output_data_config() :: %{
        "S3Configuration" => data_transformation_s3_configuration()
      }
      
  """
  @type transformation_output_data_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validate_source_response() :: %{
        "Issues" => list(source_validation_issue()),
        "SourceFormat" => list(any()),
        "Summary" => validation_summary(),
        "Valid" => [boolean()]
      }
      
  """
  @type validate_source_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      analytics_configuration() :: %{
        "Status" => list(any())
      }
      
  """
  @type analytics_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_data_transformation_profiles_response() :: %{
        "Items" => list(data_transformation_profile_summary()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_data_transformation_profiles_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      transform_data_response() :: %{
        "DriftReport" => [String.t() | atom()],
        "TransformedData" => [String.t() | atom()]
      }
      
  """
  @type transform_data_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fhir_import_job_request() :: %{
        required("DatastoreId") => String.t() | atom(),
        required("JobId") => String.t() | atom()
      }
      
  """
  @type describe_fhir_import_job_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type throttling_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        "Tags" => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      transformation_job_properties() :: %{
        "DataAccessRoleArn" => String.t() | atom(),
        "DriftDetectionEnabled" => [boolean()],
        "EndTime" => non_neg_integer(),
        "InputDataConfig" => transformation_input_data_config(),
        "JobId" => String.t() | atom(),
        "JobName" => String.t() | atom(),
        "JobProgressReport" => transformation_job_progress_report(),
        "JobStatus" => list(any()),
        "Message" => String.t() | atom(),
        "OutputDataConfig" => transformation_output_data_config(),
        "ProfileId" => String.t() | atom(),
        "ProfileName" => String.t() | atom(),
        "ProfileVersion" => [integer()],
        "ProvenanceEnabled" => [boolean()],
        "SubmitTime" => non_neg_integer()
      }
      
  """
  @type transformation_job_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fhir_datastore_response() :: %{
        "DatastoreProperties" => datastore_properties()
      }
      
  """
  @type describe_fhir_datastore_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      kms_encryption_config() :: %{
        "CmkType" => list(any()),
        "KmsKeyId" => String.t() | atom()
      }
      
  """
  @type kms_encryption_config() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_summary() :: %{
        "ErrorCount" => [integer()],
        "WarningCount" => [integer()]
      }
      
  """
  @type validation_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_data_transformation_job_response() :: %{
        "TransformationJobProperties" => transformation_job_properties()
      }
      
  """
  @type describe_data_transformation_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_data_transformation_jobs_response() :: %{
        "Items" => list(transformation_job_summary()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_data_transformation_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      nlp_configuration() :: %{
        "Status" => list(any())
      }
      
  """
  @type nlp_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      data_transformation_profile_version_summary() :: %{
        "ChangeDescription" => String.t() | atom(),
        "LastUpdatedAt" => non_neg_integer(),
        "ProfileId" => String.t() | atom(),
        "ProfileName" => String.t() | atom(),
        "SourceFormat" => list(any()),
        "TargetFormat" => list(any()),
        "Version" => integer()
      }
      
  """
  @type data_transformation_profile_version_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_fhir_import_jobs_request() :: %{
        required("DatastoreId") => String.t() | atom(),
        optional("JobName") => String.t() | atom(),
        optional("JobStatus") => list(any()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SubmittedAfter") => non_neg_integer(),
        optional("SubmittedBefore") => non_neg_integer()
      }
      
  """
  @type list_fhir_import_jobs_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      publish_data_transformation_profile_response() :: %{
        "LastUpdatedAt" => non_neg_integer(),
        "ProfileId" => String.t() | atom(),
        "ProfileName" => String.t() | atom(),
        "SourceFormat" => list(any()),
        "TargetFormat" => list(any()),
        "Version" => integer()
      }
      
  """
  @type publish_data_transformation_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_fhir_datastore_request() :: %{
        required("DatastoreId") => String.t() | atom()
      }
      
  """
  @type delete_fhir_datastore_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_data_transformation_job_response() :: %{
        "JobId" => String.t() | atom(),
        "JobStatus" => list(any())
      }
      
  """
  @type start_data_transformation_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceARN") => String.t() | atom(),
        required("TagKeys") => list(String.t() | atom())
      }
      
  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_fhir_datastores_request() :: %{
        optional("Filter") => datastore_filter(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }
      
  """
  @type list_fhir_datastores_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      agent_output_message() :: %{
        "Body" => String.t() | atom(),
        "OptionsList" => list(String.t() | atom()),
        "Type" => list(any())
      }
      
  """
  @type agent_output_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fhir_datastore_request() :: %{
        required("DatastoreId") => String.t() | atom()
      }
      
  """
  @type describe_fhir_datastore_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      sample_data_source() :: %{
        "S3Uri" => String.t() | atom()
      }
      
  """
  @type sample_data_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      datastore_properties() :: %{
        "AnalyticsConfiguration" => analytics_configuration(),
        "CreatedAt" => non_neg_integer(),
        "DatastoreArn" => String.t() | atom(),
        "DatastoreEndpoint" => String.t() | atom(),
        "DatastoreId" => String.t() | atom(),
        "DatastoreName" => String.t() | atom(),
        "DatastoreStatus" => list(any()),
        "DatastoreTypeVersion" => list(any()),
        "ErrorCause" => error_cause(),
        "IdentityProviderConfiguration" => identity_provider_configuration(),
        "NlpConfiguration" => nlp_configuration(),
        "PreloadDataConfig" => preload_data_config(),
        "ProfileConfiguration" => profile_configuration(),
        "SseConfiguration" => sse_configuration()
      }
      
  """
  @type datastore_properties() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_fhir_export_jobs_response() :: %{
        "ExportJobPropertiesList" => list(export_job_properties()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_fhir_export_jobs_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      conversation_not_found_exception() :: %{
        "Message" => [String.t() | atom()]
      }
      
  """
  @type conversation_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      delete_data_transformation_profile_request() :: %{}
      
  """
  @type delete_data_transformation_profile_request() :: %{}

  @typedoc """

  ## Example:
      
      starter_profile_source() :: %{
        "StarterProfileName" => [String.t() | atom()]
      }
      
  """
  @type starter_profile_source() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      agent_message_out_of_context_exception() :: %{
        "Message" => [String.t() | atom()]
      }
      
  """
  @type agent_message_out_of_context_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_fhir_export_job_response() :: %{
        "DatastoreId" => String.t() | atom(),
        "JobId" => String.t() | atom(),
        "JobStatus" => list(any())
      }
      
  """
  @type start_fhir_export_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_data_transformation_profiles_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("SourceFormat") => list(any())
      }
      
  """
  @type list_data_transformation_profiles_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_data_transformation_profile_response() :: %{
        "LastUpdatedAt" => non_neg_integer(),
        "ProfileId" => String.t() | atom(),
        "ProfileName" => String.t() | atom(),
        "SourceFormat" => list(any()),
        "TargetFormat" => list(any())
      }
      
  """
  @type update_data_transformation_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fhir_export_job_response() :: %{
        "ExportJobProperties" => export_job_properties()
      }
      
  """
  @type describe_fhir_export_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_data_transformation_profile_response() :: %{
        "LastUpdatedAt" => non_neg_integer(),
        "ProfileId" => String.t() | atom(),
        "ProfileName" => String.t() | atom(),
        "SourceFormat" => list(any()),
        "TargetFormat" => list(any()),
        "Version" => integer()
      }
      
  """
  @type create_data_transformation_profile_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      unauthorized_exception() :: %{
        "Message" => [String.t() | atom()]
      }
      
  """
  @type unauthorized_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_data_transformation_profile_versions_response() :: %{
        "Items" => list(data_transformation_profile_version_summary()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_data_transformation_profile_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{}
      
  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:
      
      transformation_job_summary() :: %{
        "EndTime" => non_neg_integer(),
        "JobId" => String.t() | atom(),
        "JobName" => String.t() | atom(),
        "JobStatus" => list(any()),
        "SourceFormat" => list(any()),
        "SubmitTime" => non_neg_integer()
      }
      
  """
  @type transformation_job_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("Tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_fhir_datastores_response() :: %{
        "DatastorePropertiesList" => list(datastore_properties()),
        "NextToken" => String.t() | atom()
      }
      
  """
  @type list_fhir_datastores_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_data_transformation_profile_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        optional("KmsKeyId") => String.t() | atom(),
        optional("ProfileDescription") => String.t() | atom(),
        required("ProfileName") => String.t() | atom(),
        required("Source") => list(),
        required("SourceFormat") => list(any()),
        optional("Tags") => map()
      }
      
  """
  @type create_data_transformation_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_data_transformation_profile_request() :: %{
        optional("ChangeDescription") => String.t() | atom(),
        required("ProfileMapping") => map()
      }
      
  """
  @type update_data_transformation_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_fhir_import_job_response() :: %{
        "ImportJobProperties" => import_job_properties()
      }
      
  """
  @type describe_fhir_import_job_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      update_fhir_datastore_request() :: %{
        optional("AnalyticsConfiguration") => analytics_configuration(),
        required("DatastoreId") => String.t() | atom(),
        optional("DatastoreName") => String.t() | atom(),
        optional("IdentityProviderConfiguration") => identity_provider_configuration(),
        optional("NlpConfiguration") => nlp_configuration(),
        optional("ProfileConfiguration") => profile_configuration()
      }
      
  """
  @type update_fhir_datastore_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type validation_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      describe_data_transformation_job_request() :: %{}
      
  """
  @type describe_data_transformation_job_request() :: %{}

  @typedoc """

  ## Example:
      
      agent_input_message() :: %{
        "Body" => String.t() | atom(),
        "Type" => list(any())
      }
      
  """
  @type agent_input_message() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceARN") => String.t() | atom()
      }
      
  """
  @type list_tags_for_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      identity_provider_configuration() :: %{
        "AuthorizationStrategy" => list(any()),
        "FineGrainedAuthorizationEnabled" => boolean(),
        "IdpLambdaArn" => String.t() | atom(),
        "Metadata" => String.t() | atom()
      }
      
  """
  @type identity_provider_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      get_data_transformation_profile_request() :: %{
        optional("ProfileVersion") => integer()
      }
      
  """
  @type get_data_transformation_profile_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t() | atom(),
        "Value" => String.t() | atom()
      }
      
  """
  @type tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_fhir_datastore_response() :: %{
        "DatastoreArn" => String.t() | atom(),
        "DatastoreEndpoint" => String.t() | atom(),
        "DatastoreId" => String.t() | atom(),
        "DatastoreStatus" => list(any())
      }
      
  """
  @type delete_fhir_datastore_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      failed_dependency_exception() :: %{
        "Message" => String.t() | atom()
      }
      
  """
  @type failed_dependency_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      create_fhir_datastore_request() :: %{
        optional("AnalyticsConfiguration") => analytics_configuration(),
        optional("ClientToken") => String.t() | atom(),
        optional("DatastoreName") => String.t() | atom(),
        required("DatastoreTypeVersion") => list(any()),
        optional("IdentityProviderConfiguration") => identity_provider_configuration(),
        optional("NlpConfiguration") => nlp_configuration(),
        optional("PreloadDataConfig") => preload_data_config(),
        optional("ProfileConfiguration") => profile_configuration(),
        optional("SseConfiguration") => sse_configuration(),
        optional("Tags") => list(tag())
      }
      
  """
  @type create_fhir_datastore_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:
      
      start_fhir_import_job_request() :: %{
        optional("ClientToken") => String.t() | atom(),
        required("DataAccessRoleArn") => String.t() | atom(),
        required("DatastoreId") => String.t() | atom(),
        optional("DriftDetectionEnabled") => boolean(),
        required("InputDataConfig") => list(),
        optional("InputFormat") => String.t() | atom(),
        optional("JobName") => String.t() | atom(),
        required("JobOutputDataConfig") => list(),
        optional("ProfileId") => String.t() | atom(),
        optional("ValidationLevel") => list(any())
      }
      
  """
  @type start_fhir_import_job_request() :: %{(String.t() | atom()) => any()}

  @type create_data_transformation_profile_errors() ::
          validation_exception()
          | throttling_exception()
          | conflict_exception()
          | internal_server_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_fhir_datastore_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type delete_data_transformation_profile_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type delete_fhir_datastore_errors() ::
          validation_exception()
          | throttling_exception()
          | conflict_exception()
          | internal_server_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type describe_data_transformation_job_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type describe_fhir_datastore_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_fhir_export_job_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_fhir_import_job_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_data_transformation_profile_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_data_transformation_jobs_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_data_transformation_profile_versions_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_data_transformation_profiles_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()

  @type list_fhir_datastores_errors() ::
          validation_exception() | throttling_exception() | internal_server_exception()

  @type list_fhir_export_jobs_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_fhir_import_jobs_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type publish_data_transformation_profile_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type start_data_transformation_job_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type start_fhir_export_job_errors() ::
          failed_dependency_exception()
          | validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type start_fhir_import_job_errors() ::
          failed_dependency_exception()
          | validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type tag_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type transform_data_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type untag_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type update_data_transformation_profile_errors() ::
          validation_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type update_fhir_datastore_errors() ::
          validation_exception()
          | throttling_exception()
          | conflict_exception()
          | internal_server_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type update_profile_with_agent_errors() ::
          validation_exception()
          | unauthorized_exception()
          | agent_message_out_of_context_exception()
          | conversation_not_found_exception()
          | throttling_exception()
          | internal_server_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | not_implemented_operation_exception()
          | unsupported_m_i_m_e_type_exception()

  def metadata do
    %{
      api_version: "2017-07-01",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "healthlake",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "HealthLake",
      signature_version: "v4",
      signing_name: "healthlake",
      target_prefix: "HealthLake"
    }
  end

  @doc """
  Creates a data transformation profile in DRAFT state.

  Specify a built-in starter profile, an existing profile version, raw profile
  content, or a sample data file as the source.
  """
  @spec create_data_transformation_profile(
          map(),
          create_data_transformation_profile_request(),
          list()
        ) ::
          {:ok, create_data_transformation_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_data_transformation_profile_errors()}
  def create_data_transformation_profile(%Client{} = client, input, options \\ []) do
    meta =
      metadata() |> Map.put_new(:host_prefix, "datatransformation.")

    Request.request_post(client, meta, "CreateDataTransformationProfile", input, options)
  end

  @doc """
  Create a FHIR-enabled data store.
  """
  @spec create_fhir_datastore(map(), create_fhir_datastore_request(), list()) ::
          {:ok, create_fhir_datastore_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_fhir_datastore_errors()}
  def create_fhir_datastore(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateFHIRDatastore", input, options)
  end

  @doc """
  Deletes a data transformation profile and all its versions, including the DRAFT
  and all published versions.
  """
  @spec delete_data_transformation_profile(
          map(),
          delete_data_transformation_profile_request(),
          list()
        ) ::
          {:ok, delete_data_transformation_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_data_transformation_profile_errors()}
  def delete_data_transformation_profile(%Client{} = client, input, options \\ []) do
    meta =
      metadata() |> Map.put_new(:host_prefix, "datatransformation.")

    Request.request_post(client, meta, "DeleteDataTransformationProfile", input, options)
  end

  @doc """
  Delete a FHIR-enabled data store.
  """
  @spec delete_fhir_datastore(map(), delete_fhir_datastore_request(), list()) ::
          {:ok, delete_fhir_datastore_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_fhir_datastore_errors()}
  def delete_fhir_datastore(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteFHIRDatastore", input, options)
  end

  @doc """
  Describes a data transformation job, including its current status,
  configuration, and progress information.
  """
  @spec describe_data_transformation_job(
          map(),
          describe_data_transformation_job_request(),
          list()
        ) ::
          {:ok, describe_data_transformation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_data_transformation_job_errors()}
  def describe_data_transformation_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata() |> Map.put_new(:host_prefix, "datatransformation.")

    Request.request_post(client, meta, "DescribeDataTransformationJob", input, options)
  end

  @doc """
  Get properties for a FHIR-enabled data store.
  """
  @spec describe_fhir_datastore(map(), describe_fhir_datastore_request(), list()) ::
          {:ok, describe_fhir_datastore_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_fhir_datastore_errors()}
  def describe_fhir_datastore(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeFHIRDatastore", input, options)
  end

  @doc """
  Get FHIR export job properties.
  """
  @spec describe_fhir_export_job(map(), describe_fhir_export_job_request(), list()) ::
          {:ok, describe_fhir_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_fhir_export_job_errors()}
  def describe_fhir_export_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeFHIRExportJob", input, options)
  end

  @doc """
  Get the import job properties to learn more about the job or job progress.
  """
  @spec describe_fhir_import_job(map(), describe_fhir_import_job_request(), list()) ::
          {:ok, describe_fhir_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_fhir_import_job_errors()}
  def describe_fhir_import_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeFHIRImportJob", input, options)
  end

  @doc """
  Retrieves a data transformation profile's metadata and profile content at a
  specific version.

  Specify version 0 to retrieve the DRAFT, a version number between 1 and 99 to
  retrieve a specific published version, or omit the version to retrieve the
  latest published version.
  """
  @spec get_data_transformation_profile(map(), get_data_transformation_profile_request(), list()) ::
          {:ok, get_data_transformation_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_transformation_profile_errors()}
  def get_data_transformation_profile(%Client{} = client, input, options \\ []) do
    meta =
      metadata() |> Map.put_new(:host_prefix, "datatransformation.")

    Request.request_post(client, meta, "GetDataTransformationProfile", input, options)
  end

  @doc """
  Lists data transformation jobs for your AWS account.

  Results can be filtered by status, job name, and submit time window. Results are
  paginated. Use the `NextToken` parameter to retrieve additional results.
  """
  @spec list_data_transformation_jobs(map(), list_data_transformation_jobs_request(), list()) ::
          {:ok, list_data_transformation_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_transformation_jobs_errors()}
  def list_data_transformation_jobs(%Client{} = client, input, options \\ []) do
    meta =
      metadata() |> Map.put_new(:host_prefix, "datatransformation.")

    Request.request_post(client, meta, "ListDataTransformationJobs", input, options)
  end

  @doc """
  Lists all versions of a specific data transformation profile (DRAFT and
  published), in reverse chronological order (newest first).

  Use `GetDataTransformationProfile` to retrieve profile content. Results are
  paginated. Use the `NextToken` parameter to retrieve additional results.
  """
  @spec list_data_transformation_profile_versions(
          map(),
          list_data_transformation_profile_versions_request(),
          list()
        ) ::
          {:ok, list_data_transformation_profile_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_transformation_profile_versions_errors()}
  def list_data_transformation_profile_versions(%Client{} = client, input, options \\ []) do
    meta =
      metadata() |> Map.put_new(:host_prefix, "datatransformation.")

    Request.request_post(client, meta, "ListDataTransformationProfileVersions", input, options)
  end

  @doc """
  Lists all data transformation profiles in your account, returning the latest
  version summary for each.

  Use `GetDataTransformationProfile` to retrieve profile content. Results are
  paginated. Use the `NextToken` parameter to retrieve additional results.
  """
  @spec list_data_transformation_profiles(
          map(),
          list_data_transformation_profiles_request(),
          list()
        ) ::
          {:ok, list_data_transformation_profiles_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_transformation_profiles_errors()}
  def list_data_transformation_profiles(%Client{} = client, input, options \\ []) do
    meta =
      metadata() |> Map.put_new(:host_prefix, "datatransformation.")

    Request.request_post(client, meta, "ListDataTransformationProfiles", input, options)
  end

  @doc """
  List all FHIR-enabled data stores in a user’s account, regardless of data store
  status.
  """
  @spec list_fhir_datastores(map(), list_fhir_datastores_request(), list()) ::
          {:ok, list_fhir_datastores_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_fhir_datastores_errors()}
  def list_fhir_datastores(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListFHIRDatastores", input, options)
  end

  @doc """
  Lists all FHIR export jobs associated with an account and their statuses.
  """
  @spec list_fhir_export_jobs(map(), list_fhir_export_jobs_request(), list()) ::
          {:ok, list_fhir_export_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_fhir_export_jobs_errors()}
  def list_fhir_export_jobs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListFHIRExportJobs", input, options)
  end

  @doc """
  List all FHIR import jobs associated with an account and their statuses.
  """
  @spec list_fhir_import_jobs(map(), list_fhir_import_jobs_request(), list()) ::
          {:ok, list_fhir_import_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_fhir_import_jobs_errors()}
  def list_fhir_import_jobs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListFHIRImportJobs", input, options)
  end

  @doc """
  Returns a list of all existing tags associated with a data store.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Promotes the current DRAFT version of a data transformation profile to a new
  immutable published version.

  Also supports rollback by publishing from a previously published version.
  """
  @spec publish_data_transformation_profile(
          map(),
          publish_data_transformation_profile_request(),
          list()
        ) ::
          {:ok, publish_data_transformation_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, publish_data_transformation_profile_errors()}
  def publish_data_transformation_profile(%Client{} = client, input, options \\ []) do
    meta =
      metadata() |> Map.put_new(:host_prefix, "datatransformation.")

    Request.request_post(client, meta, "PublishDataTransformationProfile", input, options)
  end

  @doc """
  Starts an asynchronous data transformation job that converts source files from
  Amazon Simple Storage Service (Amazon S3) and writes the output to Amazon S3 or
  AWS HealthLake.
  """
  @spec start_data_transformation_job(map(), start_data_transformation_job_request(), list()) ::
          {:ok, start_data_transformation_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_data_transformation_job_errors()}
  def start_data_transformation_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata() |> Map.put_new(:host_prefix, "datatransformation.")

    Request.request_post(client, meta, "StartDataTransformationJob", input, options)
  end

  @doc """
  Start a FHIR export job.
  """
  @spec start_fhir_export_job(map(), start_fhir_export_job_request(), list()) ::
          {:ok, start_fhir_export_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_fhir_export_job_errors()}
  def start_fhir_export_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartFHIRExportJob", input, options)
  end

  @doc """
  Start importing bulk FHIR data into an ACTIVE data store.

  The import job imports FHIR data found in the `InputDataConfig` object and
  stores processing results in the `JobOutputDataConfig` object.
  """
  @spec start_fhir_import_job(map(), start_fhir_import_job_request(), list()) ::
          {:ok, start_fhir_import_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_fhir_import_job_errors()}
  def start_fhir_import_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartFHIRImportJob", input, options)
  end

  @doc """
  Add a user-specifed key and value tag to a data store.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Transforms clinical data synchronously to a Fast Healthcare Interoperability
  Resources R4 (FHIR R4) Bundle using a specified data transformation profile.
  """
  @spec transform_data(map(), transform_data_request(), list()) ::
          {:ok, transform_data_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, transform_data_errors()}
  def transform_data(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "TransformData", input, options)
  end

  @doc """
  Remove a user-specifed key and value tag from a data store.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates the DRAFT version (version 0) of a data transformation profile with new
  profile content.

  The update replaces all existing DRAFT content.
  """
  @spec update_data_transformation_profile(
          map(),
          update_data_transformation_profile_request(),
          list()
        ) ::
          {:ok, update_data_transformation_profile_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_data_transformation_profile_errors()}
  def update_data_transformation_profile(%Client{} = client, input, options \\ []) do
    meta =
      metadata() |> Map.put_new(:host_prefix, "datatransformation.")

    Request.request_post(client, meta, "UpdateDataTransformationProfile", input, options)
  end

  @doc """
  Update the properties of a FHIR-enabled data store.
  """
  @spec update_fhir_datastore(map(), update_fhir_datastore_request(), list()) ::
          {:ok, update_fhir_datastore_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_fhir_datastore_errors()}
  def update_fhir_datastore(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateFHIRDatastore", input, options)
  end

  @doc """
  Updates a data transformation profile using chat-based interaction with an
  agent.

  Supports multi-turn conversations for iteratively customizing profiles.
  """
  @spec update_profile_with_agent(map(), update_profile_with_agent_request(), list()) ::
          {:ok, update_profile_with_agent_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_profile_with_agent_errors()}
  def update_profile_with_agent(%Client{} = client, input, options \\ []) do
    meta =
      metadata() |> Map.put_new(:host_prefix, "datatransformation.")

    Request.request_post(client, meta, "UpdateProfileWithAgent", input, options)
  end
end
