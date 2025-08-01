# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.VoiceID do
  @moduledoc """
  Amazon Connect Voice ID provides real-time caller authentication and fraud risk
  detection, which
  make voice interactions in contact centers more secure and efficient.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      update_domain_request() :: %{
        optional("Description") => String.t() | Atom.t(),
        required("DomainId") => String.t() | Atom.t(),
        required("Name") => String.t() | Atom.t(),
        required("ServerSideEncryptionConfiguration") => server_side_encryption_configuration()
      }
      
  """
  @type update_domain_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t() | Atom.t(),
        required("Tags") => list(tag())
      }
      
  """
  @type tag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      registration_config() :: %{
        "DuplicateRegistrationAction" => String.t() | Atom.t(),
        "FraudsterSimilarityThreshold" => integer(),
        "WatchlistIds" => list(String.t() | Atom.t())
      }
      
  """
  @type registration_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fraudster_registration_job_response() :: %{
        optional("Job") => fraudster_registration_job()
      }
      
  """
  @type describe_fraudster_registration_job_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_speakers_response() :: %{
        optional("NextToken") => String.t() | Atom.t(),
        optional("SpeakerSummaries") => list(speaker_summary())
      }
      
  """
  @type list_speakers_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      input_data_config() :: %{
        "S3Uri" => String.t() | Atom.t()
      }
      
  """
  @type input_data_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_response() :: %{}
      
  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      list_speaker_enrollment_jobs_request() :: %{
        optional("JobStatus") => String.t() | Atom.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        required("DomainId") => String.t() | Atom.t()
      }
      
  """
  @type list_speaker_enrollment_jobs_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fraudster_response() :: %{
        optional("Fraudster") => fraudster()
      }
      
  """
  @type describe_fraudster_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      domain_summary() :: %{
        "Arn" => String.t() | Atom.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | Atom.t(),
        "DomainId" => String.t() | Atom.t(),
        "DomainStatus" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "ServerSideEncryptionConfiguration" => server_side_encryption_configuration(),
        "ServerSideEncryptionUpdateDetails" => server_side_encryption_update_details(),
        "UpdatedAt" => non_neg_integer(),
        "WatchlistDetails" => watchlist_details()
      }
      
  """
  @type domain_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_domain_response() :: %{
        optional("Domain") => domain()
      }
      
  """
  @type update_domain_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_speaker_response() :: %{
        optional("Speaker") => speaker()
      }
      
  """
  @type describe_speaker_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      evaluate_session_request() :: %{
        required("DomainId") => String.t() | Atom.t(),
        required("SessionNameOrId") => String.t() | Atom.t()
      }
      
  """
  @type evaluate_session_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      domain() :: %{
        "Arn" => String.t() | Atom.t(),
        "CreatedAt" => non_neg_integer(),
        "Description" => String.t() | Atom.t(),
        "DomainId" => String.t() | Atom.t(),
        "DomainStatus" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "ServerSideEncryptionConfiguration" => server_side_encryption_configuration(),
        "ServerSideEncryptionUpdateDetails" => server_side_encryption_update_details(),
        "UpdatedAt" => non_neg_integer(),
        "WatchlistDetails" => watchlist_details()
      }
      
  """
  @type domain() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      speaker() :: %{
        "CreatedAt" => non_neg_integer(),
        "CustomerSpeakerId" => String.t() | Atom.t(),
        "DomainId" => String.t() | Atom.t(),
        "GeneratedSpeakerId" => String.t() | Atom.t(),
        "LastAccessedAt" => non_neg_integer(),
        "Status" => String.t() | Atom.t(),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type speaker() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      job_progress() :: %{
        "PercentComplete" => integer()
      }
      
  """
  @type job_progress() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      watchlist_details() :: %{
        "DefaultWatchlistId" => String.t() | Atom.t()
      }
      
  """
  @type watchlist_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_fraudsters_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        optional("WatchlistId") => String.t() | Atom.t(),
        required("DomainId") => String.t() | Atom.t()
      }
      
  """
  @type list_fraudsters_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      server_side_encryption_update_details() :: %{
        "Message" => String.t() | Atom.t(),
        "OldKmsKeyId" => String.t() | Atom.t(),
        "UpdateStatus" => String.t() | Atom.t()
      }
      
  """
  @type server_side_encryption_update_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceArn") => String.t() | Atom.t(),
        required("TagKeys") => list(String.t() | Atom.t())
      }
      
  """
  @type untag_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      fraud_detection_result() :: %{
        "AudioAggregationEndedAt" => non_neg_integer(),
        "AudioAggregationStartedAt" => non_neg_integer(),
        "Configuration" => fraud_detection_configuration(),
        "Decision" => String.t() | Atom.t(),
        "FraudDetectionResultId" => String.t() | Atom.t(),
        "Reasons" => list(String.t() | Atom.t()),
        "RiskDetails" => fraud_risk_details()
      }
      
  """
  @type fraud_detection_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_watchlist_request() :: %{
        required("DomainId") => String.t() | Atom.t(),
        required("WatchlistId") => String.t() | Atom.t()
      }
      
  """
  @type describe_watchlist_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      fraud_risk_details() :: %{
        "KnownFraudsterRisk" => known_fraudster_risk(),
        "VoiceSpoofingRisk" => voice_spoofing_risk()
      }
      
  """
  @type fraud_risk_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      failure_details() :: %{
        "Message" => String.t() | Atom.t(),
        "StatusCode" => integer()
      }
      
  """
  @type failure_details() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      known_fraudster_risk() :: %{
        "GeneratedFraudsterId" => String.t() | Atom.t(),
        "RiskScore" => integer()
      }
      
  """
  @type known_fraudster_risk() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      start_fraudster_registration_job_request() :: %{
        optional("ClientToken") => String.t() | Atom.t(),
        optional("JobName") => String.t() | Atom.t(),
        optional("RegistrationConfig") => registration_config(),
        required("DataAccessRoleArn") => String.t() | Atom.t(),
        required("DomainId") => String.t() | Atom.t(),
        required("InputDataConfig") => input_data_config(),
        required("OutputDataConfig") => output_data_config()
      }
      
  """
  @type start_fraudster_registration_job_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_speaker_request() :: %{
        required("DomainId") => String.t() | Atom.t(),
        required("SpeakerId") => String.t() | Atom.t()
      }
      
  """
  @type describe_speaker_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      fraudster_summary() :: %{
        "CreatedAt" => non_neg_integer(),
        "DomainId" => String.t() | Atom.t(),
        "GeneratedFraudsterId" => String.t() | Atom.t(),
        "WatchlistIds" => list(String.t() | Atom.t())
      }
      
  """
  @type fraudster_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_speaker_enrollment_jobs_response() :: %{
        optional("JobSummaries") => list(speaker_enrollment_job_summary()),
        optional("NextToken") => String.t() | Atom.t()
      }
      
  """
  @type list_speaker_enrollment_jobs_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_domain_request() :: %{
        required("DomainId") => String.t() | Atom.t()
      }
      
  """
  @type delete_domain_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      authentication_result() :: %{
        "AudioAggregationEndedAt" => non_neg_integer(),
        "AudioAggregationStartedAt" => non_neg_integer(),
        "AuthenticationResultId" => String.t() | Atom.t(),
        "Configuration" => authentication_configuration(),
        "CustomerSpeakerId" => String.t() | Atom.t(),
        "Decision" => String.t() | Atom.t(),
        "GeneratedSpeakerId" => String.t() | Atom.t(),
        "Score" => integer()
      }
      
  """
  @type authentication_result() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_fraudster_request() :: %{
        required("DomainId") => String.t() | Atom.t(),
        required("FraudsterId") => String.t() | Atom.t()
      }
      
  """
  @type delete_fraudster_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      conflict_exception() :: %{
        "ConflictType" => String.t() | Atom.t(),
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_fraudster_registration_jobs_request() :: %{
        optional("JobStatus") => String.t() | Atom.t(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        required("DomainId") => String.t() | Atom.t()
      }
      
  """
  @type list_fraudster_registration_jobs_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "Message" => String.t() | Atom.t(),
        "ResourceType" => String.t() | Atom.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_watchlist_response() :: %{
        optional("Watchlist") => watchlist()
      }
      
  """
  @type create_watchlist_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_domain_request() :: %{
        optional("ClientToken") => String.t() | Atom.t(),
        optional("Description") => String.t() | Atom.t(),
        optional("Tags") => list(tag()),
        required("Name") => String.t() | Atom.t(),
        required("ServerSideEncryptionConfiguration") => server_side_encryption_configuration()
      }
      
  """
  @type create_domain_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      tag() :: %{
        "Key" => String.t() | Atom.t(),
        "Value" => String.t() | Atom.t()
      }
      
  """
  @type tag() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      evaluate_session_response() :: %{
        optional("AuthenticationResult") => authentication_result(),
        optional("DomainId") => String.t() | Atom.t(),
        optional("FraudDetectionResult") => fraud_detection_result(),
        optional("SessionId") => String.t() | Atom.t(),
        optional("SessionName") => String.t() | Atom.t(),
        optional("StreamingStatus") => String.t() | Atom.t()
      }
      
  """
  @type evaluate_session_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_watchlist_response() :: %{
        optional("Watchlist") => watchlist()
      }
      
  """
  @type update_watchlist_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_speakers_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        required("DomainId") => String.t() | Atom.t()
      }
      
  """
  @type list_speakers_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      service_quota_exceeded_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type service_quota_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_domains_response() :: %{
        optional("DomainSummaries") => list(domain_summary()),
        optional("NextToken") => String.t() | Atom.t()
      }
      
  """
  @type list_domains_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      fraudster_registration_job() :: %{
        "CreatedAt" => non_neg_integer(),
        "DataAccessRoleArn" => String.t() | Atom.t(),
        "DomainId" => String.t() | Atom.t(),
        "EndedAt" => non_neg_integer(),
        "FailureDetails" => failure_details(),
        "InputDataConfig" => input_data_config(),
        "JobId" => String.t() | Atom.t(),
        "JobName" => String.t() | Atom.t(),
        "JobProgress" => job_progress(),
        "JobStatus" => String.t() | Atom.t(),
        "OutputDataConfig" => output_data_config(),
        "RegistrationConfig" => registration_config()
      }
      
  """
  @type fraudster_registration_job() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      start_speaker_enrollment_job_response() :: %{
        optional("Job") => speaker_enrollment_job()
      }
      
  """
  @type start_speaker_enrollment_job_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_response() :: %{
        optional("Tags") => list(tag())
      }
      
  """
  @type list_tags_for_resource_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_domain_response() :: %{
        optional("Domain") => domain()
      }
      
  """
  @type describe_domain_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      opt_out_speaker_request() :: %{
        required("DomainId") => String.t() | Atom.t(),
        required("SpeakerId") => String.t() | Atom.t()
      }
      
  """
  @type opt_out_speaker_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      watchlist() :: %{
        "CreatedAt" => non_neg_integer(),
        "DefaultWatchlist" => boolean(),
        "Description" => String.t() | Atom.t(),
        "DomainId" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "UpdatedAt" => non_neg_integer(),
        "WatchlistId" => String.t() | Atom.t()
      }
      
  """
  @type watchlist() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      voice_spoofing_risk() :: %{
        "RiskScore" => integer()
      }
      
  """
  @type voice_spoofing_risk() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      speaker_enrollment_job() :: %{
        "CreatedAt" => non_neg_integer(),
        "DataAccessRoleArn" => String.t() | Atom.t(),
        "DomainId" => String.t() | Atom.t(),
        "EndedAt" => non_neg_integer(),
        "EnrollmentConfig" => enrollment_config(),
        "FailureDetails" => failure_details(),
        "InputDataConfig" => input_data_config(),
        "JobId" => String.t() | Atom.t(),
        "JobName" => String.t() | Atom.t(),
        "JobProgress" => job_progress(),
        "JobStatus" => String.t() | Atom.t(),
        "OutputDataConfig" => output_data_config()
      }
      
  """
  @type speaker_enrollment_job() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      associate_fraudster_request() :: %{
        required("DomainId") => String.t() | Atom.t(),
        required("FraudsterId") => String.t() | Atom.t(),
        required("WatchlistId") => String.t() | Atom.t()
      }
      
  """
  @type associate_fraudster_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      start_speaker_enrollment_job_request() :: %{
        optional("ClientToken") => String.t() | Atom.t(),
        optional("EnrollmentConfig") => enrollment_config(),
        optional("JobName") => String.t() | Atom.t(),
        required("DataAccessRoleArn") => String.t() | Atom.t(),
        required("DomainId") => String.t() | Atom.t(),
        required("InputDataConfig") => input_data_config(),
        required("OutputDataConfig") => output_data_config()
      }
      
  """
  @type start_speaker_enrollment_job_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      fraudster() :: %{
        "CreatedAt" => non_neg_integer(),
        "DomainId" => String.t() | Atom.t(),
        "GeneratedFraudsterId" => String.t() | Atom.t(),
        "WatchlistIds" => list(String.t() | Atom.t())
      }
      
  """
  @type fraudster() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      server_side_encryption_configuration() :: %{
        "KmsKeyId" => String.t() | Atom.t()
      }
      
  """
  @type server_side_encryption_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      speaker_summary() :: %{
        "CreatedAt" => non_neg_integer(),
        "CustomerSpeakerId" => String.t() | Atom.t(),
        "DomainId" => String.t() | Atom.t(),
        "GeneratedSpeakerId" => String.t() | Atom.t(),
        "LastAccessedAt" => non_neg_integer(),
        "Status" => String.t() | Atom.t(),
        "UpdatedAt" => non_neg_integer()
      }
      
  """
  @type speaker_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      opt_out_speaker_response() :: %{
        optional("Speaker") => speaker()
      }
      
  """
  @type opt_out_speaker_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fraudster_registration_job_request() :: %{
        required("DomainId") => String.t() | Atom.t(),
        required("JobId") => String.t() | Atom.t()
      }
      
  """
  @type describe_fraudster_registration_job_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_domains_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t()
      }
      
  """
  @type list_domains_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      internal_server_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      associate_fraudster_response() :: %{
        optional("Fraudster") => fraudster()
      }
      
  """
  @type associate_fraudster_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_fraudster_request() :: %{
        required("DomainId") => String.t() | Atom.t(),
        required("FraudsterId") => String.t() | Atom.t()
      }
      
  """
  @type describe_fraudster_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      access_denied_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_domain_request() :: %{
        required("DomainId") => String.t() | Atom.t()
      }
      
  """
  @type describe_domain_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_response() :: %{}
      
  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:
      
      delete_watchlist_request() :: %{
        required("DomainId") => String.t() | Atom.t(),
        required("WatchlistId") => String.t() | Atom.t()
      }
      
  """
  @type delete_watchlist_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_speaker_enrollment_job_response() :: %{
        optional("Job") => speaker_enrollment_job()
      }
      
  """
  @type describe_speaker_enrollment_job_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_watchlists_response() :: %{
        optional("NextToken") => String.t() | Atom.t(),
        optional("WatchlistSummaries") => list(watchlist_summary())
      }
      
  """
  @type list_watchlists_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_watchlist_request() :: %{
        optional("ClientToken") => String.t() | Atom.t(),
        optional("Description") => String.t() | Atom.t(),
        required("DomainId") => String.t() | Atom.t(),
        required("Name") => String.t() | Atom.t()
      }
      
  """
  @type create_watchlist_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      start_fraudster_registration_job_response() :: %{
        optional("Job") => fraudster_registration_job()
      }
      
  """
  @type start_fraudster_registration_job_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type validation_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_for_resource_request() :: %{
        required("ResourceArn") => String.t() | Atom.t()
      }
      
  """
  @type list_tags_for_resource_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      fraudster_registration_job_summary() :: %{
        "CreatedAt" => non_neg_integer(),
        "DomainId" => String.t() | Atom.t(),
        "EndedAt" => non_neg_integer(),
        "FailureDetails" => failure_details(),
        "JobId" => String.t() | Atom.t(),
        "JobName" => String.t() | Atom.t(),
        "JobProgress" => job_progress(),
        "JobStatus" => String.t() | Atom.t()
      }
      
  """
  @type fraudster_registration_job_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_fraudsters_response() :: %{
        optional("FraudsterSummaries") => list(fraudster_summary()),
        optional("NextToken") => String.t() | Atom.t()
      }
      
  """
  @type list_fraudsters_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      throttling_exception() :: %{
        "Message" => String.t() | Atom.t()
      }
      
  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      create_domain_response() :: %{
        optional("Domain") => domain()
      }
      
  """
  @type create_domain_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_fraudster_registration_jobs_response() :: %{
        optional("JobSummaries") => list(fraudster_registration_job_summary()),
        optional("NextToken") => String.t() | Atom.t()
      }
      
  """
  @type list_fraudster_registration_jobs_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      delete_speaker_request() :: %{
        required("DomainId") => String.t() | Atom.t(),
        required("SpeakerId") => String.t() | Atom.t()
      }
      
  """
  @type delete_speaker_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      output_data_config() :: %{
        "KmsKeyId" => String.t() | Atom.t(),
        "S3Uri" => String.t() | Atom.t()
      }
      
  """
  @type output_data_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      enrollment_config() :: %{
        "ExistingEnrollmentAction" => String.t() | Atom.t(),
        "FraudDetectionConfig" => enrollment_job_fraud_detection_config()
      }
      
  """
  @type enrollment_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      update_watchlist_request() :: %{
        optional("Description") => String.t() | Atom.t(),
        optional("Name") => String.t() | Atom.t(),
        required("DomainId") => String.t() | Atom.t(),
        required("WatchlistId") => String.t() | Atom.t()
      }
      
  """
  @type update_watchlist_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      authentication_configuration() :: %{
        "AcceptanceThreshold" => integer()
      }
      
  """
  @type authentication_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      list_watchlists_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | Atom.t(),
        required("DomainId") => String.t() | Atom.t()
      }
      
  """
  @type list_watchlists_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_watchlist_response() :: %{
        optional("Watchlist") => watchlist()
      }
      
  """
  @type describe_watchlist_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      describe_speaker_enrollment_job_request() :: %{
        required("DomainId") => String.t() | Atom.t(),
        required("JobId") => String.t() | Atom.t()
      }
      
  """
  @type describe_speaker_enrollment_job_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      fraud_detection_configuration() :: %{
        "RiskThreshold" => integer(),
        "WatchlistId" => String.t() | Atom.t()
      }
      
  """
  @type fraud_detection_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_fraudster_request() :: %{
        required("DomainId") => String.t() | Atom.t(),
        required("FraudsterId") => String.t() | Atom.t(),
        required("WatchlistId") => String.t() | Atom.t()
      }
      
  """
  @type disassociate_fraudster_request() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      watchlist_summary() :: %{
        "CreatedAt" => non_neg_integer(),
        "DefaultWatchlist" => boolean(),
        "Description" => String.t() | Atom.t(),
        "DomainId" => String.t() | Atom.t(),
        "Name" => String.t() | Atom.t(),
        "UpdatedAt" => non_neg_integer(),
        "WatchlistId" => String.t() | Atom.t()
      }
      
  """
  @type watchlist_summary() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      enrollment_job_fraud_detection_config() :: %{
        "FraudDetectionAction" => String.t() | Atom.t(),
        "RiskThreshold" => integer(),
        "WatchlistIds" => list(String.t() | Atom.t())
      }
      
  """
  @type enrollment_job_fraud_detection_config() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_fraudster_response() :: %{
        optional("Fraudster") => fraudster()
      }
      
  """
  @type disassociate_fraudster_response() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:
      
      speaker_enrollment_job_summary() :: %{
        "CreatedAt" => non_neg_integer(),
        "DomainId" => String.t() | Atom.t(),
        "EndedAt" => non_neg_integer(),
        "FailureDetails" => failure_details(),
        "JobId" => String.t() | Atom.t(),
        "JobName" => String.t() | Atom.t(),
        "JobProgress" => job_progress(),
        "JobStatus" => String.t() | Atom.t()
      }
      
  """
  @type speaker_enrollment_job_summary() :: %{String.t() | Atom.t() => any()}

  @type associate_fraudster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_domain_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_watchlist_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_domain_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_fraudster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_speaker_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_watchlist_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type describe_domain_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_fraudster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_fraudster_registration_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_speaker_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_speaker_enrollment_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type describe_watchlist_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type disassociate_fraudster_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type evaluate_session_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_domains_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_fraudster_registration_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_fraudsters_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_speaker_enrollment_jobs_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_speakers_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_watchlists_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type opt_out_speaker_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_fraudster_registration_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type start_speaker_enrollment_job_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_domain_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_watchlist_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2021-09-27",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "voiceid",
      global?: false,
      hostname: nil,
      protocol: "json",
      service_id: "Voice ID",
      signature_version: "v4",
      signing_name: "voiceid",
      target_prefix: "VoiceID"
    }
  end

  @doc """
  Associates the fraudsters with the watchlist specified in the same domain.
  """
  @spec associate_fraudster(map(), associate_fraudster_request(), list()) ::
          {:ok, associate_fraudster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_fraudster_errors()}
  def associate_fraudster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "AssociateFraudster", input, options)
  end

  @doc """
  Creates a domain that contains all Amazon Connect Voice ID data, such as
  speakers, fraudsters,
  customer audio, and voiceprints.

  Every domain is created with a default watchlist that fraudsters can be a part
  of.
  """
  @spec create_domain(map(), create_domain_request(), list()) ::
          {:ok, create_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_domain_errors()}
  def create_domain(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateDomain", input, options)
  end

  @doc """
  Creates a watchlist that fraudsters can be a part of.
  """
  @spec create_watchlist(map(), create_watchlist_request(), list()) ::
          {:ok, create_watchlist_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_watchlist_errors()}
  def create_watchlist(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "CreateWatchlist", input, options)
  end

  @doc """
  Deletes the specified domain from Voice ID.
  """
  @spec delete_domain(map(), delete_domain_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_domain_errors()}
  def delete_domain(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteDomain", input, options)
  end

  @doc """
  Deletes the specified fraudster from Voice ID.

  This action disassociates the fraudster from any watchlists it is a part of.
  """
  @spec delete_fraudster(map(), delete_fraudster_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_fraudster_errors()}
  def delete_fraudster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteFraudster", input, options)
  end

  @doc """
  Deletes the specified speaker from Voice ID.
  """
  @spec delete_speaker(map(), delete_speaker_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_speaker_errors()}
  def delete_speaker(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteSpeaker", input, options)
  end

  @doc """
  Deletes the specified watchlist from Voice ID.

  This API throws an exception when
  there are fraudsters in the watchlist that you are trying to delete. You must
  delete the
  fraudsters, and then delete the watchlist. Every domain has a default watchlist
  which cannot be deleted.
  """
  @spec delete_watchlist(map(), delete_watchlist_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_watchlist_errors()}
  def delete_watchlist(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DeleteWatchlist", input, options)
  end

  @doc """
  Describes the specified domain.
  """
  @spec describe_domain(map(), describe_domain_request(), list()) ::
          {:ok, describe_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_domain_errors()}
  def describe_domain(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeDomain", input, options)
  end

  @doc """
  Describes the specified fraudster.
  """
  @spec describe_fraudster(map(), describe_fraudster_request(), list()) ::
          {:ok, describe_fraudster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_fraudster_errors()}
  def describe_fraudster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeFraudster", input, options)
  end

  @doc """
  Describes the specified fraudster registration job.
  """
  @spec describe_fraudster_registration_job(
          map(),
          describe_fraudster_registration_job_request(),
          list()
        ) ::
          {:ok, describe_fraudster_registration_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_fraudster_registration_job_errors()}
  def describe_fraudster_registration_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeFraudsterRegistrationJob", input, options)
  end

  @doc """
  Describes the specified speaker.
  """
  @spec describe_speaker(map(), describe_speaker_request(), list()) ::
          {:ok, describe_speaker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_speaker_errors()}
  def describe_speaker(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSpeaker", input, options)
  end

  @doc """
  Describes the specified speaker enrollment job.
  """
  @spec describe_speaker_enrollment_job(map(), describe_speaker_enrollment_job_request(), list()) ::
          {:ok, describe_speaker_enrollment_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_speaker_enrollment_job_errors()}
  def describe_speaker_enrollment_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeSpeakerEnrollmentJob", input, options)
  end

  @doc """
  Describes the specified watchlist.
  """
  @spec describe_watchlist(map(), describe_watchlist_request(), list()) ::
          {:ok, describe_watchlist_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_watchlist_errors()}
  def describe_watchlist(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DescribeWatchlist", input, options)
  end

  @doc """
  Disassociates the fraudsters from the watchlist specified.

  Voice ID always expects a
  fraudster to be a part of at least one watchlist. If
  you try to disassociate a fraudster from its only watchlist, a
  `ValidationException` is thrown.
  """
  @spec disassociate_fraudster(map(), disassociate_fraudster_request(), list()) ::
          {:ok, disassociate_fraudster_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_fraudster_errors()}
  def disassociate_fraudster(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "DisassociateFraudster", input, options)
  end

  @doc """
  Evaluates a specified session based on audio data accumulated during a streaming
  Amazon Connect Voice ID call.
  """
  @spec evaluate_session(map(), evaluate_session_request(), list()) ::
          {:ok, evaluate_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, evaluate_session_errors()}
  def evaluate_session(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "EvaluateSession", input, options)
  end

  @doc """
  Lists all the domains in the Amazon Web Services account.
  """
  @spec list_domains(map(), list_domains_request(), list()) ::
          {:ok, list_domains_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_domains_errors()}
  def list_domains(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListDomains", input, options)
  end

  @doc """
  Lists all the fraudster registration jobs in the domain with the given
  `JobStatus`.

  If `JobStatus` is not provided, this lists all
  fraudster registration jobs in the given domain.
  """
  @spec list_fraudster_registration_jobs(
          map(),
          list_fraudster_registration_jobs_request(),
          list()
        ) ::
          {:ok, list_fraudster_registration_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_fraudster_registration_jobs_errors()}
  def list_fraudster_registration_jobs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListFraudsterRegistrationJobs", input, options)
  end

  @doc """
  Lists all fraudsters in a specified watchlist or domain.
  """
  @spec list_fraudsters(map(), list_fraudsters_request(), list()) ::
          {:ok, list_fraudsters_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_fraudsters_errors()}
  def list_fraudsters(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListFraudsters", input, options)
  end

  @doc """
  Lists all the speaker enrollment jobs in the domain with the specified
  `JobStatus`.

  If `JobStatus` is not provided, this lists all
  jobs with all possible speaker enrollment job statuses.
  """
  @spec list_speaker_enrollment_jobs(map(), list_speaker_enrollment_jobs_request(), list()) ::
          {:ok, list_speaker_enrollment_jobs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_speaker_enrollment_jobs_errors()}
  def list_speaker_enrollment_jobs(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListSpeakerEnrollmentJobs", input, options)
  end

  @doc """
  Lists all speakers in a specified domain.
  """
  @spec list_speakers(map(), list_speakers_request(), list()) ::
          {:ok, list_speakers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_speakers_errors()}
  def list_speakers(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListSpeakers", input, options)
  end

  @doc """
  Lists all tags associated with a specified Voice ID resource.
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
  Lists all watchlists in a specified domain.
  """
  @spec list_watchlists(map(), list_watchlists_request(), list()) ::
          {:ok, list_watchlists_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_watchlists_errors()}
  def list_watchlists(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "ListWatchlists", input, options)
  end

  @doc """
  Opts out a speaker from Voice ID.

  A speaker can be opted out regardless of whether or
  not they already exist in Voice ID. If they don't yet exist, a new speaker is
  created
  in an opted out state. If they already exist, their existing status is
  overridden and
  they are opted out. Enrollment and evaluation authentication requests are
  rejected for
  opted out speakers, and opted out speakers have no voice embeddings stored in
  Voice ID.
  """
  @spec opt_out_speaker(map(), opt_out_speaker_request(), list()) ::
          {:ok, opt_out_speaker_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, opt_out_speaker_errors()}
  def opt_out_speaker(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "OptOutSpeaker", input, options)
  end

  @doc """
  Starts a new batch fraudster registration job using provided details.
  """
  @spec start_fraudster_registration_job(
          map(),
          start_fraudster_registration_job_request(),
          list()
        ) ::
          {:ok, start_fraudster_registration_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_fraudster_registration_job_errors()}
  def start_fraudster_registration_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartFraudsterRegistrationJob", input, options)
  end

  @doc """
  Starts a new batch speaker enrollment job using specified details.
  """
  @spec start_speaker_enrollment_job(map(), start_speaker_enrollment_job_request(), list()) ::
          {:ok, start_speaker_enrollment_job_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_speaker_enrollment_job_errors()}
  def start_speaker_enrollment_job(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "StartSpeakerEnrollmentJob", input, options)
  end

  @doc """
  Tags a Voice ID resource with the provided list of tags.
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
  Removes specified tags from a specified Amazon Connect Voice ID resource.
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
  Updates the specified domain.

  This API has clobber behavior, and clears and replaces
  all attributes. If an optional field, such as 'Description' is not provided, it
  is
  removed from the domain.
  """
  @spec update_domain(map(), update_domain_request(), list()) ::
          {:ok, update_domain_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_domain_errors()}
  def update_domain(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateDomain", input, options)
  end

  @doc """
  Updates the specified watchlist.

  Every domain has a default watchlist which cannot be updated.
  """
  @spec update_watchlist(map(), update_watchlist_request(), list()) ::
          {:ok, update_watchlist_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_watchlist_errors()}
  def update_watchlist(%Client{} = client, input, options \\ []) do
    meta =
      metadata()

    Request.request_post(client, meta, "UpdateWatchlist", input, options)
  end
end
