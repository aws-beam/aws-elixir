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

  def metadata do
    %{
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
  Associates the fraudsters with the watchlist specified in the same domain.
  """
  def associate_fraudster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateFraudster", input, options)
  end

  @doc """
  Creates a domain that contains all Amazon Connect Voice ID data, such as
  speakers, fraudsters,
  customer audio, and voiceprints.

  Every domain is created with a default watchlist that fraudsters can be a part
  of.
  """
  def create_domain(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDomain", input, options)
  end

  @doc """
  Creates a watchlist that fraudsters can be a part of.
  """
  def create_watchlist(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateWatchlist", input, options)
  end

  @doc """
  Deletes the specified domain from Voice ID.
  """
  def delete_domain(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteDomain", input, options)
  end

  @doc """
  Deletes the specified fraudster from Voice ID.

  This action disassociates the fraudster from any watchlists it is a part of.
  """
  def delete_fraudster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteFraudster", input, options)
  end

  @doc """
  Deletes the specified speaker from Voice ID.
  """
  def delete_speaker(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
  def delete_watchlist(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteWatchlist", input, options)
  end

  @doc """
  Describes the specified domain.
  """
  def describe_domain(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDomain", input, options)
  end

  @doc """
  Describes the specified fraudster.
  """
  def describe_fraudster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFraudster", input, options)
  end

  @doc """
  Describes the specified fraudster registration job.
  """
  def describe_fraudster_registration_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeFraudsterRegistrationJob", input, options)
  end

  @doc """
  Describes the specified speaker.
  """
  def describe_speaker(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSpeaker", input, options)
  end

  @doc """
  Describes the specified speaker enrollment job.
  """
  def describe_speaker_enrollment_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeSpeakerEnrollmentJob", input, options)
  end

  @doc """
  Describes the specified watchlist.
  """
  def describe_watchlist(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeWatchlist", input, options)
  end

  @doc """
  Disassociates the fraudsters from the watchlist specified.

  Voice ID always expects a
  fraudster to be a part of at least one watchlist. If
  you try to disassociate a fraudster from its only watchlist, a
  `ValidationException` is thrown.
  """
  def disassociate_fraudster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateFraudster", input, options)
  end

  @doc """
  Evaluates a specified session based on audio data accumulated during a streaming
  Amazon Connect Voice ID call.
  """
  def evaluate_session(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "EvaluateSession", input, options)
  end

  @doc """
  Lists all the domains in the Amazon Web Services account.
  """
  def list_domains(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListDomains", input, options)
  end

  @doc """
  Lists all the fraudster registration jobs in the domain with the given
  `JobStatus`.

  If `JobStatus` is not provided, this lists all
  fraudster registration jobs in the given domain.
  """
  def list_fraudster_registration_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFraudsterRegistrationJobs", input, options)
  end

  @doc """
  Lists all fraudsters in a specified watchlist or domain.
  """
  def list_fraudsters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListFraudsters", input, options)
  end

  @doc """
  Lists all the speaker enrollment jobs in the domain with the specified
  `JobStatus`.

  If `JobStatus` is not provided, this lists all
  jobs with all possible speaker enrollment job statuses.
  """
  def list_speaker_enrollment_jobs(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSpeakerEnrollmentJobs", input, options)
  end

  @doc """
  Lists all speakers in a specified domain.
  """
  def list_speakers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSpeakers", input, options)
  end

  @doc """
  Lists all tags associated with a specified Voice ID resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Lists all watchlists in a specified domain.
  """
  def list_watchlists(%Client{} = client, input, options \\ []) do
    meta = metadata()

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
  def opt_out_speaker(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "OptOutSpeaker", input, options)
  end

  @doc """
  Starts a new batch fraudster registration job using provided details.
  """
  def start_fraudster_registration_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartFraudsterRegistrationJob", input, options)
  end

  @doc """
  Starts a new batch speaker enrollment job using specified details.
  """
  def start_speaker_enrollment_job(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartSpeakerEnrollmentJob", input, options)
  end

  @doc """
  Tags a Voice ID resource with the provided list of tags.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes specified tags from a specified Amazon Connect Voice ID resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates the specified domain.

  This API has clobber behavior, and clears and replaces
  all attributes. If an optional field, such as 'Description' is not provided, it
  is
  removed from the domain.
  """
  def update_domain(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateDomain", input, options)
  end

  @doc """
  Updates the specified watchlist.

  Every domain has a default watchlist which cannot be updated.
  """
  def update_watchlist(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateWatchlist", input, options)
  end
end
