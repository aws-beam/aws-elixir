# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.VoiceID do
  @moduledoc """
  Amazon Connect Voice ID provides real-time caller authentication and fraud
  screening.

  This guide describes the APIs used for this service.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2021-09-27",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "voiceid",
      global?: false,
      protocol: "json",
      service_id: "Voice ID",
      signature_version: "v4",
      signing_name: "voiceid",
      target_prefix: "VoiceID"
    }
  end

  @doc """
  Creates a domain that contains all Amazon Connect Voice ID data, such as
  speakers, fraudsters, customer audio, and voiceprints.
  """
  def create_domain(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDomain", input, options)
  end

  @doc """
  Deletes the specified domain from Voice ID.
  """
  def delete_domain(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDomain", input, options)
  end

  @doc """
  Deletes the specified fraudster from Voice ID.
  """
  def delete_fraudster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteFraudster", input, options)
  end

  @doc """
  Deletes the specified speaker from Voice ID.
  """
  def delete_speaker(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteSpeaker", input, options)
  end

  @doc """
  Describes the specified domain.
  """
  def describe_domain(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDomain", input, options)
  end

  @doc """
  Describes the specified fraudster.
  """
  def describe_fraudster(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeFraudster", input, options)
  end

  @doc """
  Describes the specified fraudster registration job.
  """
  def describe_fraudster_registration_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeFraudsterRegistrationJob", input, options)
  end

  @doc """
  Describes the specified speaker.
  """
  def describe_speaker(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeSpeaker", input, options)
  end

  @doc """
  Describes the specified speaker enrollment job.
  """
  def describe_speaker_enrollment_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeSpeakerEnrollmentJob", input, options)
  end

  @doc """
  Evaluates a specified session based on audio data accumulated during a streaming
  Amazon Connect Voice ID call.
  """
  def evaluate_session(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "EvaluateSession", input, options)
  end

  @doc """
  Lists all the domains in the Amazon Web Services account.
  """
  def list_domains(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDomains", input, options)
  end

  @doc """
  Lists all the fraudster registration jobs in the domain with the given
  `JobStatus`.

  If `JobStatus` is not provided, this lists all fraudster registration jobs in
  the given domain.
  """
  def list_fraudster_registration_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListFraudsterRegistrationJobs", input, options)
  end

  @doc """
  Lists all the speaker enrollment jobs in the domain with the specified
  `JobStatus`.

  If `JobStatus` is not provided, this lists all jobs with all possible speaker
  enrollment job statuses.
  """
  def list_speaker_enrollment_jobs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListSpeakerEnrollmentJobs", input, options)
  end

  @doc """
  Lists all speakers in a specified domain.
  """
  def list_speakers(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListSpeakers", input, options)
  end

  @doc """
  Lists all tags associated with a specified Voice ID resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Opts out a speaker from Voice ID.

  A speaker can be opted out regardless of whether or not they already exist in
  Voice ID. If they don't yet exist, a new speaker is created in an opted out
  state. If they already exist, their existing status is overridden and they are
  opted out. Enrollment and evaluation authentication requests are rejected for
  opted out speakers, and opted out speakers have no voice embeddings stored in
  Voice ID.
  """
  def opt_out_speaker(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "OptOutSpeaker", input, options)
  end

  @doc """
  Starts a new batch fraudster registration job using provided details.
  """
  def start_fraudster_registration_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartFraudsterRegistrationJob", input, options)
  end

  @doc """
  Starts a new batch speaker enrollment job using specified details.
  """
  def start_speaker_enrollment_job(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartSpeakerEnrollmentJob", input, options)
  end

  @doc """
  Tags a Voice ID resource with the provided list of tags.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Removes specified tags from a specified Amazon Connect Voice ID resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Updates the specified domain.

  This API has clobber behavior, and clears and replaces all attributes. If an
  optional field, such as 'Description' is not provided, it is removed from the
  domain.
  """
  def update_domain(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateDomain", input, options)
  end
end
