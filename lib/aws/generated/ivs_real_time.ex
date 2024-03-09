# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IVSRealTime do
  @moduledoc """

  ## Introduction

  The Amazon Interactive Video Service (IVS) real-time API is REST compatible,
  using a standard HTTP
  API and an AWS EventBridge event stream for responses.

  JSON is used for both requests and responses,
  including errors.

  Terminology:

    *
  A *stage* is a virtual space where participants can exchange video in real time.

    *
  A *participant token* is a token that authenticates a participant when they join
  a stage.

    *
  A *participant object* represents participants (people) in the stage and
  contains information about them. When a token is created, it includes a
  participant ID;
  when a participant uses that token to join a stage, the participant is
  associated with
  that participant ID. There is a 1:1 mapping between participant tokens and
  participants.

    *
  Server-side composition: The *composition* process composites participants
  of a stage into a single video and forwards it to a set of outputs (e.g., IVS
  channels).
  Composition endpoints support this process.

    *
  Server-side composition: A *composition* controls the look of the outputs,
  including how participants are positioned in the video.

  ## Resources

  The following resources contain information about your IVS live stream (see
  [Getting Started with Amazon IVS Real-Time Streaming](https://docs.aws.amazon.com/ivs/latest/RealTimeUserGuide/getting-started.html)):

    *

  **Stage** — A stage is a virtual space where participants can exchange video in
  real time.

  ## Tagging

  A *tag* is a metadata label that you assign to an AWS resource. A tag
  comprises a *key* and a *value*, both set by you. For
  example, you might set a tag as `topic:nature` to label a particular video
  category. See [Tagging AWS Resources](https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html) for
  more information, including restrictions that apply to
  tags and "Tag naming limits and requirements"; Amazon IVS stages has no
  service-specific
  constraints beyond what is documented there.

  Tags can help you identify and organize your AWS resources. For example, you can
  use the
  same tag for different resources to indicate that they are related. You can also
  use tags to
  manage access (see [Access Tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html)).

  The Amazon IVS real-time API has these tag-related endpoints: `TagResource`,
  `UntagResource`, and
  `ListTagsForResource`. The following resource supports tagging: Stage.

  At most 50 tags can be applied to a resource.

  ## Stages Endpoints

    *

  `CreateParticipantToken` — Creates an additional token for a specified stage.
  This can be done after stage creation or when tokens expire.

    *

  `CreateStage` — Creates a new stage (and optionally participant tokens).

    *

  `DeleteStage` — Shuts down and deletes the specified stage (disconnecting all
  participants).

    *

  `DisconnectParticipant` — Disconnects a specified participant and revokes the
  participant permanently from a specified stage.

    *

  `GetParticipant` — Gets information about the specified
  participant token.

    *

  `GetStage` — Gets information for the specified stage.

    *

  `GetStageSession` — Gets information for the specified stage
  session.

    *

  `ListParticipantEvents` — Lists events for a specified
  participant that occurred during a specified stage session.

    *

  `ListParticipants` — Lists all participants in a specified stage
  session.

    *

  `ListStages` — Gets summary information about all stages in your account, in the
  AWS region where the API request is processed.

    *

  `ListStageSessions` — Gets all sessions for a specified stage.

    *

  `UpdateStage` — Updates a stage’s configuration.

  ## Composition Endpoints

    *

  `GetComposition` — Gets information about the specified
  Composition resource.

    *

  `ListCompositions` — Gets summary information about all
  Compositions in your account, in the AWS region where the API request is
  processed.

    *

  `StartComposition` — Starts a Composition from a stage based on
  the configuration provided in the request.

    *

  `StopComposition` — Stops and deletes a Composition resource.
  Any broadcast from the Composition resource is stopped.

  ## EncoderConfiguration Endpoints

    *

  `CreateEncoderConfiguration` — Creates an EncoderConfiguration object.

    *

  `DeleteEncoderConfiguration` — Deletes an EncoderConfiguration
  resource. Ensures that no Compositions are using this template; otherwise,
  returns an
  error.

    *

  `GetEncoderConfiguration` — Gets information about the specified
  EncoderConfiguration resource.

    *

  `ListEncoderConfigurations` — Gets summary information about all
  EncoderConfigurations in your account, in the AWS region where the API request
  is
  processed.

  ## StorageConfiguration Endpoints

    *

  `CreateStorageConfiguration` — Creates a new storage configuration, used to
  enable
  recording to Amazon S3.

    *

  `DeleteStorageConfiguration` — Deletes the storage configuration for the
  specified ARN.

    *

  `GetStorageConfiguration` — Gets the storage configuration for the specified
  ARN.

    *

  `ListStorageConfigurations` — Gets summary information about all storage
  configurations in your
  account, in the AWS region where the API request is processed.

  ## Tags Endpoints

    *

  `ListTagsForResource` — Gets information about AWS tags for the
  specified ARN.

    *

  `TagResource` — Adds or updates tags for the AWS resource with
  the specified ARN.

    *

  `UntagResource` — Removes tags from the resource with the
  specified ARN.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2020-07-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ivsrealtime",
      global?: false,
      protocol: "rest-json",
      service_id: "IVS RealTime",
      signature_version: "v4",
      signing_name: "ivs",
      target_prefix: nil
    }
  end

  @doc """
  Creates an EncoderConfiguration object.
  """
  def create_encoder_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/CreateEncoderConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates an additional token for a specified stage.

  This can be done after stage creation
  or when tokens expire. Tokens always are scoped to the stage for which they are
  created.

  Encryption keys are owned by Amazon IVS and never used directly by your
  application.
  """
  def create_participant_token(%Client{} = client, input, options \\ []) do
    url_path = "/CreateParticipantToken"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a new stage (and optionally participant tokens).
  """
  def create_stage(%Client{} = client, input, options \\ []) do
    url_path = "/CreateStage"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Creates a new storage configuration, used to enable recording to Amazon S3.

  When a StorageConfiguration is created, IVS will modify the S3 bucketPolicy of
  the provided bucket.
  This will ensure that IVS has sufficient permissions to write content to the
  provided bucket.
  """
  def create_storage_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/CreateStorageConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes an EncoderConfiguration resource.

  Ensures that no Compositions are using this
  template; otherwise, returns an error.
  """
  def delete_encoder_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteEncoderConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Shuts down and deletes the specified stage (disconnecting all participants).
  """
  def delete_stage(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteStage"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes the storage configuration for the specified ARN.

  If you try to delete a storage configuration that is used by a Composition, you
  will get an error (409 ConflictException).
  To avoid this, for all Compositions that reference the storage configuration,
  first use `StopComposition` and wait for it to complete,
  then use DeleteStorageConfiguration.
  """
  def delete_storage_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteStorageConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disconnects a specified participant and revokes the participant permanently from
  a
  specified stage.
  """
  def disconnect_participant(%Client{} = client, input, options \\ []) do
    url_path = "/DisconnectParticipant"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Get information about the specified Composition resource.
  """
  def get_composition(%Client{} = client, input, options \\ []) do
    url_path = "/GetComposition"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Gets information about the specified EncoderConfiguration resource.
  """
  def get_encoder_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/GetEncoderConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Gets information about the specified participant token.
  """
  def get_participant(%Client{} = client, input, options \\ []) do
    url_path = "/GetParticipant"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Gets information for the specified stage.
  """
  def get_stage(%Client{} = client, input, options \\ []) do
    url_path = "/GetStage"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Gets information for the specified stage session.
  """
  def get_stage_session(%Client{} = client, input, options \\ []) do
    url_path = "/GetStageSession"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Gets the storage configuration for the specified ARN.
  """
  def get_storage_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/GetStorageConfiguration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Gets summary information about all Compositions in your account, in the AWS
  region
  where the API request is processed.
  """
  def list_compositions(%Client{} = client, input, options \\ []) do
    url_path = "/ListCompositions"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Gets summary information about all EncoderConfigurations in your account, in the
  AWS
  region where the API request is processed.
  """
  def list_encoder_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/ListEncoderConfigurations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists events for a specified participant that occurred during a specified stage
  session.
  """
  def list_participant_events(%Client{} = client, input, options \\ []) do
    url_path = "/ListParticipantEvents"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Lists all participants in a specified stage session.
  """
  def list_participants(%Client{} = client, input, options \\ []) do
    url_path = "/ListParticipants"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Gets all sessions for a specified stage.
  """
  def list_stage_sessions(%Client{} = client, input, options \\ []) do
    url_path = "/ListStageSessions"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Gets summary information about all stages in your account, in the AWS region
  where the
  API request is processed.
  """
  def list_stages(%Client{} = client, input, options \\ []) do
    url_path = "/ListStages"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Gets summary information about all storage configurations in your account,
  in the AWS region where the API request is processed.
  """
  def list_storage_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/ListStorageConfigurations"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Gets information about AWS tags for the specified ARN.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts a Composition from a stage based on the configuration provided in the
  request.

  A Composition is an ephemeral resource that exists after this endpoint returns
  successfully. Composition stops and the resource is deleted:

    *
  When `StopComposition` is called.

    *
  After a 1-minute timeout, when all participants are disconnected from the
  stage.

    *
  After a 1-minute timeout, if there are no participants in the stage when
  StartComposition is called.

    *
  When broadcasting to the IVS channel fails and all retries are exhausted.

    *
  When broadcasting is disconnected and all attempts to reconnect are
  exhausted.
  """
  def start_composition(%Client{} = client, input, options \\ []) do
    url_path = "/StartComposition"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Stops and deletes a Composition resource.

  Any broadcast from the Composition resource
  is stopped.
  """
  def stop_composition(%Client{} = client, input, options \\ []) do
    url_path = "/StopComposition"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Adds or updates tags for the AWS resource with the specified ARN.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Removes tags from the resource with the specified ARN.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a stage’s configuration.
  """
  def update_stage(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateStage"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
