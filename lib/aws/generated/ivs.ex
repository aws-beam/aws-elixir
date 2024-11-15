# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Ivs do
  @moduledoc """

  ## Introduction

  The Amazon Interactive Video Service (IVS) API is REST compatible, using a
  standard HTTP
  API and an Amazon Web Services EventBridge event stream for responses.

  JSON is used for both
  requests and responses, including errors.

  The API is an Amazon Web Services regional service. For a list of supported
  regions and
  Amazon IVS HTTPS service endpoints, see the [Amazon IVS page](https://docs.aws.amazon.com/general/latest/gr/ivs.html) in the
  *Amazon Web Services General Reference*.

  *
  ## All API request parameters and URLs are case sensitive.

  *

  For a summary of notable documentation changes in each release, see [ Document History](https://docs.aws.amazon.com/ivs/latest/userguide/doc-history.html).

  ## Allowed Header Values

    *

  ```

  ## Accept:

  ```

  application/json

    *

  ```

  ## Accept-Encoding:

  ```

  gzip, deflate

    *

  ```

  ## Content-Type:

  ```

  application/json

  ## Key Concepts

    *

  **Channel** — Stores configuration data related to your live stream. You first
  create a channel and then use the channel’s stream key to start your live
  stream.

    *

  **Stream key** — An identifier assigned by Amazon IVS when you create a channel,
  which is then used to authorize streaming. *
  ## Treat the stream key like a secret, since it allows anyone to stream to the
  channel.
  *

    *

  **Playback key pair** — Video playback may be restricted using
  playback-authorization tokens, which use public-key encryption. A playback key
  pair is the public-private pair of keys used to sign and validate the
  playback-authorization token.

    *

  **Recording configuration** — Stores configuration related to recording a live
  stream and where to store the recorded content. Multiple channels can reference
  the same recording configuration.

    *

  **Playback restriction policy** — Restricts playback by countries and/or origin
  sites.

  For more information about your IVS live stream, also see [Getting Started with IVS Low-Latency
  Streaming](https://docs.aws.amazon.com/ivs/latest/LowLatencyUserGuide/getting-started.html).

  ## Tagging

  A *tag* is a metadata label that you assign to an Amazon Web Services
  resource. A tag comprises a *key* and a *value*, both
  set by you. For example, you might set a tag as `topic:nature` to label a
  particular video category. See [Best practices and strategies](https://docs.aws.amazon.com/tag-editor/latest/userguide/best-practices-and-strats.html)
  in *Tagging Amazon Web Services Resources and Tag Editor* for details, including
  restrictions that apply to tags and "Tag naming limits and requirements"; Amazon
  IVS has no service-specific constraints beyond what is documented
  there.

  Tags can help you identify and organize your Amazon Web Services resources. For
  example,
  you can use the same tag for different resources to indicate that they are
  related. You can
  also use tags to manage access (see [ Access Tags](https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html)).

  The Amazon IVS API has these tag-related operations: `TagResource`,
  `UntagResource`, and `ListTagsForResource`. The following
  resources support tagging: Channels, Stream Keys, Playback Key Pairs, and
  Recording
  Configurations.

  At most 50 tags can be applied to a resource.

  ## Authentication versus Authorization

  Note the differences between these concepts:

    *

  *Authentication* is about verifying identity. You need to be
  authenticated to sign Amazon IVS API requests.

    *

  *Authorization* is about granting permissions. Your IAM roles need to have
  permissions for Amazon IVS API requests. In addition,
  authorization is needed to view [Amazon IVS private channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html).
  (Private channels are channels that are enabled for "playback authorization.")

  ## Authentication

  All Amazon IVS API requests must be authenticated with a signature. The Amazon
  Web Services
  Command-Line Interface (CLI) and Amazon IVS Player SDKs take care of signing the
  underlying
  API calls for you. However, if your application calls the Amazon IVS API
  directly, it’s your
  responsibility to sign the requests.

  You generate a signature using valid Amazon Web Services credentials that have
  permission
  to perform the requested action. For example, you must sign PutMetadata requests
  with a
  signature generated from a user account that has the `ivs:PutMetadata`
  permission.

  For more information:

    *
  Authentication and generating signatures — See [Authenticating Requests (Amazon Web Services Signature Version
  4)](https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-authenticating-requests.html)
  in the *Amazon Web Services
  General Reference*.

    *
  Managing Amazon IVS permissions — See [Identity and Access Management](https://docs.aws.amazon.com/ivs/latest/userguide/security-iam.html)
  on
  the Security page of the *Amazon IVS User Guide*.

  ## Amazon Resource Names (ARNs)

  ARNs uniquely identify AWS resources. An ARN is required when you need to
  specify a
  resource unambiguously across all of AWS, such as in IAM policies and API
  calls. For more information, see [Amazon Resource
  Names](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
  in the *AWS General Reference*.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      update_playback_restriction_policy_request() :: %{
        optional("allowedCountries") => list(String.t()()),
        optional("allowedOrigins") => list(String.t()()),
        optional("enableStrictOriginEnforcement") => boolean(),
        optional("name") => String.t(),
        required("arn") => String.t()
      }

  """
  @type update_playback_restriction_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_channel_request() :: %{
        required("arn") => String.t()
      }

  """
  @type delete_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_stream_key_response() :: %{
        optional("streamKey") => stream_key()
      }

  """
  @type create_stream_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ingest_configuration() :: %{
        "audio" => audio_configuration(),
        "video" => video_configuration()
      }

  """
  @type ingest_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stream_session_summary() :: %{
        "endTime" => non_neg_integer(),
        "hasErrorEvent" => boolean(),
        "startTime" => non_neg_integer(),
        "streamId" => String.t()
      }

  """
  @type stream_session_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_channel_request() :: %{
        required("arn") => String.t()
      }

  """
  @type get_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("tags") => map()
      }

  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      recording_configuration() :: %{
        "arn" => String.t(),
        "destinationConfiguration" => destination_configuration(),
        "name" => String.t(),
        "recordingReconnectWindowSeconds" => integer(),
        "renditionConfiguration" => rendition_configuration(),
        "state" => String.t(),
        "tags" => map(),
        "thumbnailConfiguration" => thumbnail_configuration()
      }

  """
  @type recording_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_channel_response() :: %{
        optional("channel") => channel(),
        optional("streamKey") => stream_key()
      }

  """
  @type create_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      import_playback_key_pair_request() :: %{
        optional("name") => String.t(),
        optional("tags") => map(),
        required("publicKeyMaterial") => String.t()
      }

  """
  @type import_playback_key_pair_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_stream_response() :: %{
        optional("stream") => stream()
      }

  """
  @type get_stream_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_response() :: %{}

  """
  @type untag_resource_response() :: %{}

  @typedoc """

  ## Example:

      get_stream_key_request() :: %{
        required("arn") => String.t()
      }

  """
  @type get_stream_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      playback_restriction_policy() :: %{
        "allowedCountries" => list(String.t()()),
        "allowedOrigins" => list(String.t()()),
        "arn" => String.t(),
        "enableStrictOriginEnforcement" => boolean(),
        "name" => String.t(),
        "tags" => map()
      }

  """
  @type playback_restriction_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_playback_restriction_policy_request() :: %{
        required("arn") => String.t()
      }

  """
  @type delete_playback_restriction_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_stream_sessions_response() :: %{
        optional("nextToken") => String.t(),
        required("streamSessions") => list(stream_session_summary()())
      }

  """
  @type list_stream_sessions_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      playback_key_pair_summary() :: %{
        "arn" => String.t(),
        "name" => String.t(),
        "tags" => map()
      }

  """
  @type playback_key_pair_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_playback_key_pair_request() :: %{
        required("arn") => String.t()
      }

  """
  @type get_playback_key_pair_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_playback_restriction_policy_request() :: %{
        required("arn") => String.t()
      }

  """
  @type get_playback_restriction_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_playback_key_pairs_response() :: %{
        optional("nextToken") => String.t(),
        required("keyPairs") => list(playback_key_pair_summary()())
      }

  """
  @type list_playback_key_pairs_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      recording_configuration_summary() :: %{
        "arn" => String.t(),
        "destinationConfiguration" => destination_configuration(),
        "name" => String.t(),
        "state" => String.t(),
        "tags" => map()
      }

  """
  @type recording_configuration_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_playback_restriction_policy_response() :: %{
        "playbackRestrictionPolicy" => playback_restriction_policy()
      }

  """
  @type update_playback_restriction_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_channel_response() :: %{
        optional("channels") => list(channel()()),
        optional("errors") => list(batch_error()())
      }

  """
  @type batch_get_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_recording_configuration_response() :: %{
        optional("recordingConfiguration") => recording_configuration()
      }

  """
  @type create_recording_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      import_playback_key_pair_response() :: %{
        optional("keyPair") => playback_key_pair()
      }

  """
  @type import_playback_key_pair_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_playback_key_pair_response() :: %{}

  """
  @type delete_playback_key_pair_response() :: %{}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("tagKeys") => list(String.t()())
      }

  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_stream_keys_response() :: %{
        optional("nextToken") => String.t(),
        required("streamKeys") => list(stream_key_summary()())
      }

  """
  @type list_stream_keys_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_streams_request() :: %{
        optional("filterBy") => stream_filters(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_streams_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_stream_session_request() :: %{
        optional("streamId") => String.t(),
        required("channelArn") => String.t()
      }

  """
  @type get_stream_session_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stream_key() :: %{
        "arn" => String.t(),
        "channelArn" => String.t(),
        "tags" => map(),
        "value" => String.t()
      }

  """
  @type stream_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_start_viewer_session_revocation_request() :: %{
        required("viewerSessions") => list(batch_start_viewer_session_revocation_viewer_session()())
      }

  """
  @type batch_start_viewer_session_revocation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_recording_configuration_request() :: %{
        optional("name") => String.t(),
        optional("recordingReconnectWindowSeconds") => integer(),
        optional("renditionConfiguration") => rendition_configuration(),
        optional("tags") => map(),
        optional("thumbnailConfiguration") => thumbnail_configuration(),
        required("destinationConfiguration") => destination_configuration()
      }

  """
  @type create_recording_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_stream_key_request() :: %{
        optional("tags") => map(),
        required("channelArn") => String.t()
      }

  """
  @type create_stream_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      playback_key_pair() :: %{
        "arn" => String.t(),
        "fingerprint" => String.t(),
        "name" => String.t(),
        "tags" => map()
      }

  """
  @type playback_key_pair() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_stream_key_request() :: %{
        required("arns") => list(String.t()())
      }

  """
  @type batch_get_stream_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      playback_restriction_policy_summary() :: %{
        "allowedCountries" => list(String.t()()),
        "allowedOrigins" => list(String.t()()),
        "arn" => String.t(),
        "enableStrictOriginEnforcement" => boolean(),
        "name" => String.t(),
        "tags" => map()
      }

  """
  @type playback_restriction_policy_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel_summary() :: %{
        "arn" => String.t(),
        "authorized" => boolean(),
        "insecureIngest" => boolean(),
        "latencyMode" => String.t(),
        "name" => String.t(),
        "playbackRestrictionPolicyArn" => String.t(),
        "preset" => list(any()),
        "recordingConfigurationArn" => String.t(),
        "tags" => map(),
        "type" => list(any())
      }

  """
  @type channel_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_recording_configuration_request() :: %{
        required("arn") => String.t()
      }

  """
  @type delete_recording_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "exceptionMessage" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "exceptionMessage" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_streams_response() :: %{
        optional("nextToken") => String.t(),
        required("streams") => list(stream_summary()())
      }

  """
  @type list_streams_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_recording_configuration_request() :: %{
        required("arn") => String.t()
      }

  """
  @type get_recording_configuration_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_recording_configurations_response() :: %{
        optional("nextToken") => String.t(),
        required("recordingConfigurations") => list(recording_configuration_summary()())
      }

  """
  @type list_recording_configurations_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "exceptionMessage" => String.t()
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stream_session() :: %{
        "channel" => channel(),
        "endTime" => non_neg_integer(),
        "ingestConfiguration" => ingest_configuration(),
        "ingestConfigurations" => ingest_configurations(),
        "recordingConfiguration" => recording_configuration(),
        "startTime" => non_neg_integer(),
        "streamId" => String.t(),
        "truncatedEvents" => list(stream_event()())
      }

  """
  @type stream_session() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_channel_request() :: %{
        required("arns") => list(String.t()())
      }

  """
  @type batch_get_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_stream_key_request() :: %{
        required("arn") => String.t()
      }

  """
  @type delete_stream_key_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_destination_configuration() :: %{
        "bucketName" => String.t()
      }

  """
  @type s3_destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_playback_restriction_policy_response() :: %{
        "playbackRestrictionPolicy" => playback_restriction_policy()
      }

  """
  @type get_playback_restriction_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_channel_request() :: %{
        optional("authorized") => boolean(),
        optional("containerFormat") => String.t(),
        optional("insecureIngest") => boolean(),
        optional("latencyMode") => String.t(),
        optional("multitrackInputConfiguration") => multitrack_input_configuration(),
        optional("name") => String.t(),
        optional("playbackRestrictionPolicyArn") => String.t(),
        optional("preset") => list(any()),
        optional("recordingConfigurationArn") => String.t(),
        optional("tags") => map(),
        optional("type") => list(any())
      }

  """
  @type create_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stream_event() :: %{
        "code" => String.t(),
        "eventTime" => non_neg_integer(),
        "name" => String.t(),
        "type" => String.t()
      }

  """
  @type stream_event() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        required("tags") => map()
      }

  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_channels_response() :: %{
        optional("nextToken") => String.t(),
        required("channels") => list(channel_summary()())
      }

  """
  @type list_channels_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_channel_request() :: %{
        optional("authorized") => boolean(),
        optional("containerFormat") => String.t(),
        optional("insecureIngest") => boolean(),
        optional("latencyMode") => String.t(),
        optional("multitrackInputConfiguration") => multitrack_input_configuration(),
        optional("name") => String.t(),
        optional("playbackRestrictionPolicyArn") => String.t(),
        optional("preset") => list(any()),
        optional("recordingConfigurationArn") => String.t(),
        optional("type") => list(any()),
        required("arn") => String.t()
      }

  """
  @type update_channel_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_stream_response() :: %{}

  """
  @type stop_stream_response() :: %{}

  @typedoc """

  ## Example:

      stream_unavailable() :: %{
        "exceptionMessage" => String.t()
      }

  """
  @type stream_unavailable() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_playback_key_pair_request() :: %{
        required("arn") => String.t()
      }

  """
  @type delete_playback_key_pair_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_playback_restriction_policy_response() :: %{
        "playbackRestrictionPolicy" => playback_restriction_policy()
      }

  """
  @type create_playback_restriction_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "exceptionMessage" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_stream_sessions_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("channelArn") => String.t()
      }

  """
  @type list_stream_sessions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_playback_restriction_policies_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_playback_restriction_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_recording_configuration_response() :: %{
        optional("recordingConfiguration") => recording_configuration()
      }

  """
  @type get_recording_configuration_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_playback_key_pair_response() :: %{
        optional("keyPair") => playback_key_pair()
      }

  """
  @type get_playback_key_pair_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "exceptionMessage" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_stream_request() :: %{
        required("channelArn") => String.t()
      }

  """
  @type get_stream_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_stream_keys_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t(),
        required("channelArn") => String.t()
      }

  """
  @type list_stream_keys_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      audio_configuration() :: %{
        "channels" => float(),
        "codec" => String.t(),
        "sampleRate" => float(),
        "targetBitrate" => float(),
        "track" => String.t()
      }

  """
  @type audio_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_response() :: %{}

  """
  @type tag_resource_response() :: %{}

  @typedoc """

  ## Example:

      put_metadata_request() :: %{
        required("channelArn") => String.t(),
        required("metadata") => String.t()
      }

  """
  @type put_metadata_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      thumbnail_configuration() :: %{
        "recordingMode" => String.t(),
        "resolution" => list(any()),
        "storage" => list(String.t()()),
        "targetIntervalSeconds" => float()
      }

  """
  @type thumbnail_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_start_viewer_session_revocation_viewer_session() :: %{
        "channelArn" => String.t(),
        "viewerId" => String.t(),
        "viewerSessionVersionsLessThanOrEqualTo" => integer()
      }

  """
  @type batch_start_viewer_session_revocation_viewer_session() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "exceptionMessage" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      rendition_configuration() :: %{
        "renditionSelection" => String.t(),
        "renditions" => list(list(any())())
      }

  """
  @type rendition_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      ingest_configurations() :: %{
        "audioConfigurations" => list(audio_configuration()()),
        "videoConfigurations" => list(video_configuration()())
      }

  """
  @type ingest_configurations() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_stream_key_response() :: %{
        optional("streamKey") => stream_key()
      }

  """
  @type get_stream_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "exceptionMessage" => String.t()
      }

  """
  @type throttling_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_playback_restriction_policies_response() :: %{
        "nextToken" => String.t(),
        "playbackRestrictionPolicies" => list(playback_restriction_policy_summary()())
      }

  """
  @type list_playback_restriction_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel() :: %{
        "arn" => String.t(),
        "authorized" => boolean(),
        "containerFormat" => String.t(),
        "ingestEndpoint" => String.t(),
        "insecureIngest" => boolean(),
        "latencyMode" => String.t(),
        "multitrackInputConfiguration" => multitrack_input_configuration(),
        "name" => String.t(),
        "playbackRestrictionPolicyArn" => String.t(),
        "playbackUrl" => String.t(),
        "preset" => list(any()),
        "recordingConfigurationArn" => String.t(),
        "srt" => srt(),
        "tags" => map(),
        "type" => list(any())
      }

  """
  @type channel() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stream_summary() :: %{
        "channelArn" => String.t(),
        "health" => String.t(),
        "startTime" => non_neg_integer(),
        "state" => String.t(),
        "streamId" => String.t(),
        "viewerCount" => float()
      }

  """
  @type stream_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_start_viewer_session_revocation_response() :: %{
        optional("errors") => list(batch_start_viewer_session_revocation_error()())
      }

  """
  @type batch_start_viewer_session_revocation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_start_viewer_session_revocation_error() :: %{
        "channelArn" => String.t(),
        "code" => String.t(),
        "message" => String.t(),
        "viewerId" => String.t()
      }

  """
  @type batch_start_viewer_session_revocation_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stop_stream_request() :: %{
        required("channelArn") => String.t()
      }

  """
  @type stop_stream_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_channel_response() :: %{
        optional("channel") => channel()
      }

  """
  @type get_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stream_filters() :: %{
        "health" => String.t()
      }

  """
  @type stream_filters() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stream() :: %{
        "channelArn" => String.t(),
        "health" => String.t(),
        "playbackUrl" => String.t(),
        "startTime" => non_neg_integer(),
        "state" => String.t(),
        "streamId" => String.t(),
        "viewerCount" => float()
      }

  """
  @type stream() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_viewer_session_revocation_request() :: %{
        optional("viewerSessionVersionsLessThanOrEqualTo") => integer(),
        required("channelArn") => String.t(),
        required("viewerId") => String.t()
      }

  """
  @type start_viewer_session_revocation_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_channel_response() :: %{
        optional("channel") => channel()
      }

  """
  @type update_channel_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_error() :: %{
        "arn" => String.t(),
        "code" => String.t(),
        "message" => String.t()
      }

  """
  @type batch_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      start_viewer_session_revocation_response() :: %{}

  """
  @type start_viewer_session_revocation_response() :: %{}

  @typedoc """

  ## Example:

      video_configuration() :: %{
        "avcLevel" => String.t(),
        "avcProfile" => String.t(),
        "codec" => String.t(),
        "encoder" => String.t(),
        "level" => String.t(),
        "profile" => String.t(),
        "targetBitrate" => float(),
        "targetFramerate" => float(),
        "track" => String.t(),
        "videoHeight" => float(),
        "videoWidth" => float()
      }

  """
  @type video_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_playback_key_pairs_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_playback_key_pairs_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_channels_request() :: %{
        optional("filterByName") => String.t(),
        optional("filterByPlaybackRestrictionPolicyArn") => String.t(),
        optional("filterByRecordingConfigurationArn") => String.t(),
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_channels_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_stream_session_response() :: %{
        optional("streamSession") => stream_session()
      }

  """
  @type get_stream_session_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      multitrack_input_configuration() :: %{
        "enabled" => boolean(),
        "maximumResolution" => list(any()),
        "policy" => list(any())
      }

  """
  @type multitrack_input_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      stream_key_summary() :: %{
        "arn" => String.t(),
        "channelArn" => String.t(),
        "tags" => map()
      }

  """
  @type stream_key_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      srt() :: %{
        "endpoint" => String.t(),
        "passphrase" => String.t()
      }

  """
  @type srt() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_playback_restriction_policy_request() :: %{
        optional("allowedCountries") => list(String.t()()),
        optional("allowedOrigins") => list(String.t()()),
        optional("enableStrictOriginEnforcement") => boolean(),
        optional("name") => String.t(),
        optional("tags") => map()
      }

  """
  @type create_playback_restriction_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_recording_configurations_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_recording_configurations_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      pending_verification() :: %{
        "exceptionMessage" => String.t()
      }

  """
  @type pending_verification() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      destination_configuration() :: %{
        "s3" => s3_destination_configuration()
      }

  """
  @type destination_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      batch_get_stream_key_response() :: %{
        optional("errors") => list(batch_error()()),
        optional("streamKeys") => list(stream_key()())
      }

  """
  @type batch_get_stream_key_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      channel_not_broadcasting() :: %{
        "exceptionMessage" => String.t()
      }

  """
  @type channel_not_broadcasting() :: %{String.t() => any()}

  @type batch_start_viewer_session_revocation_errors() ::
          pending_verification()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()

  @type create_channel_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type create_playback_restriction_policy_errors() ::
          pending_verification()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()

  @type create_recording_configuration_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type create_stream_key_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()

  @type delete_channel_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_playback_key_pair_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type delete_playback_restriction_policy_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_recording_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_stream_key_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_channel_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_playback_key_pair_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_playback_restriction_policy_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_recording_configuration_errors() ::
          validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_stream_errors() ::
          channel_not_broadcasting()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type get_stream_key_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type get_stream_session_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type import_playback_key_pair_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()

  @type list_channels_errors() ::
          validation_exception() | access_denied_exception() | conflict_exception()

  @type list_playback_key_pairs_errors() :: validation_exception() | access_denied_exception()

  @type list_playback_restriction_policies_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | conflict_exception()

  @type list_recording_configurations_errors() ::
          validation_exception() | access_denied_exception() | internal_server_exception()

  @type list_stream_keys_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type list_stream_sessions_errors() ::
          validation_exception() | access_denied_exception() | resource_not_found_exception()

  @type list_streams_errors() :: validation_exception() | access_denied_exception()

  @type list_tags_for_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type put_metadata_errors() ::
          channel_not_broadcasting()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()

  @type start_viewer_session_revocation_errors() ::
          pending_verification()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type stop_stream_errors() ::
          channel_not_broadcasting()
          | validation_exception()
          | access_denied_exception()
          | stream_unavailable()
          | resource_not_found_exception()

  @type tag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type untag_resource_errors() ::
          validation_exception() | internal_server_exception() | resource_not_found_exception()

  @type update_channel_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_playback_restriction_policy_errors() ::
          pending_verification()
          | validation_exception()
          | access_denied_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-07-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ivs",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "ivs",
      signature_version: "v4",
      signing_name: "ivs",
      target_prefix: nil
    }
  end

  @doc """
  Performs `GetChannel` on multiple ARNs simultaneously.
  """
  @spec batch_get_channel(map(), batch_get_channel_request(), list()) ::
          {:ok, batch_get_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def batch_get_channel(%Client{} = client, input, options \\ []) do
    url_path = "/BatchGetChannel"
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
  Performs `GetStreamKey` on multiple ARNs simultaneously.
  """
  @spec batch_get_stream_key(map(), batch_get_stream_key_request(), list()) ::
          {:ok, batch_get_stream_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
  def batch_get_stream_key(%Client{} = client, input, options \\ []) do
    url_path = "/BatchGetStreamKey"
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
  Performs `StartViewerSessionRevocation` on multiple channel ARN and viewer
  ID pairs simultaneously.
  """
  @spec batch_start_viewer_session_revocation(
          map(),
          batch_start_viewer_session_revocation_request(),
          list()
        ) ::
          {:ok, batch_start_viewer_session_revocation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, batch_start_viewer_session_revocation_errors()}
  def batch_start_viewer_session_revocation(%Client{} = client, input, options \\ []) do
    url_path = "/BatchStartViewerSessionRevocation"
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
  Creates a new channel and an associated stream key to start streaming.
  """
  @spec create_channel(map(), create_channel_request(), list()) ::
          {:ok, create_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_channel_errors()}
  def create_channel(%Client{} = client, input, options \\ []) do
    url_path = "/CreateChannel"
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
  Creates a new playback restriction policy, for constraining playback by
  countries and/or
  origins.
  """
  @spec create_playback_restriction_policy(
          map(),
          create_playback_restriction_policy_request(),
          list()
        ) ::
          {:ok, create_playback_restriction_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_playback_restriction_policy_errors()}
  def create_playback_restriction_policy(%Client{} = client, input, options \\ []) do
    url_path = "/CreatePlaybackRestrictionPolicy"
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
  Creates a new recording configuration, used to enable recording to Amazon S3.

  **Known issue:** In the us-east-1 region, if you use the
  Amazon Web Services CLI to create a recording configuration, it returns success
  even if the
  S3 bucket is in a different region. In this case, the `state` of the recording
  configuration is `CREATE_FAILED` (instead of `ACTIVE`). (In other
  regions, the CLI correctly returns failure if the bucket is in a different
  region.)

  **Workaround:** Ensure that your S3 bucket is in the same
  region as the recording configuration. If you create a recording configuration
  in a different
  region as your S3 bucket, delete that recording configuration and create a new
  one with an S3
  bucket from the correct region.
  """
  @spec create_recording_configuration(map(), create_recording_configuration_request(), list()) ::
          {:ok, create_recording_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_recording_configuration_errors()}
  def create_recording_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/CreateRecordingConfiguration"
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
  Creates a stream key, used to initiate a stream, for the specified channel ARN.

  Note that `CreateChannel` creates a stream key. If you subsequently use
  CreateStreamKey on the same channel, it will fail because a stream key already
  exists and
  there is a limit of 1 stream key per channel. To reset the stream key on a
  channel, use `DeleteStreamKey` and then CreateStreamKey.
  """
  @spec create_stream_key(map(), create_stream_key_request(), list()) ::
          {:ok, create_stream_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_stream_key_errors()}
  def create_stream_key(%Client{} = client, input, options \\ []) do
    url_path = "/CreateStreamKey"
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
  Deletes the specified channel and its associated stream keys.

  If you try to delete a live channel, you will get an error (409
  ConflictException). To
  delete a channel that is live, call `StopStream`, wait for the Amazon
  EventBridge "Stream End" event (to verify that the stream's state is no longer
  Live), then
  call DeleteChannel. (See [ Using EventBridge with Amazon IVS](https://docs.aws.amazon.com/ivs/latest/userguide/eventbridge.html).)
  """
  @spec delete_channel(map(), delete_channel_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_channel_errors()}
  def delete_channel(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteChannel"
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
      204
    )
  end

  @doc """
  Deletes a specified authorization key pair.

  This invalidates future viewer tokens
  generated using the key pair’s `privateKey`. For more information, see [Setting Up Private
  Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html)
  in the *Amazon IVS User Guide*.
  """
  @spec delete_playback_key_pair(map(), delete_playback_key_pair_request(), list()) ::
          {:ok, delete_playback_key_pair_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_playback_key_pair_errors()}
  def delete_playback_key_pair(%Client{} = client, input, options \\ []) do
    url_path = "/DeletePlaybackKeyPair"
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
  Deletes the specified playback restriction policy.
  """
  @spec delete_playback_restriction_policy(
          map(),
          delete_playback_restriction_policy_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_playback_restriction_policy_errors()}
  def delete_playback_restriction_policy(%Client{} = client, input, options \\ []) do
    url_path = "/DeletePlaybackRestrictionPolicy"
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
      204
    )
  end

  @doc """
  Deletes the recording configuration for the specified ARN.

  If you try to delete a recording configuration that is associated with a
  channel, you will
  get an error (409 ConflictException). To avoid this, for all channels that
  reference the
  recording configuration, first use `UpdateChannel` to set the
  `recordingConfigurationArn` field to an empty string, then use
  DeleteRecordingConfiguration.
  """
  @spec delete_recording_configuration(map(), delete_recording_configuration_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_recording_configuration_errors()}
  def delete_recording_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteRecordingConfiguration"
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
      204
    )
  end

  @doc """
  Deletes the stream key for the specified ARN, so it can no longer be used to
  stream.
  """
  @spec delete_stream_key(map(), delete_stream_key_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_stream_key_errors()}
  def delete_stream_key(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteStreamKey"
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
      204
    )
  end

  @doc """
  Gets the channel configuration for the specified channel ARN.

  See also `BatchGetChannel`.
  """
  @spec get_channel(map(), get_channel_request(), list()) ::
          {:ok, get_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_channel_errors()}
  def get_channel(%Client{} = client, input, options \\ []) do
    url_path = "/GetChannel"
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
  Gets a specified playback authorization key pair and returns the `arn` and
  `fingerprint`.

  The `privateKey` held by the caller can be used to
  generate viewer authorization tokens, to grant viewers access to private
  channels. For more
  information, see [Setting Up Private Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html)
  in the *Amazon IVS User
  Guide*.
  """
  @spec get_playback_key_pair(map(), get_playback_key_pair_request(), list()) ::
          {:ok, get_playback_key_pair_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_playback_key_pair_errors()}
  def get_playback_key_pair(%Client{} = client, input, options \\ []) do
    url_path = "/GetPlaybackKeyPair"
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
  Gets the specified playback restriction policy.
  """
  @spec get_playback_restriction_policy(map(), get_playback_restriction_policy_request(), list()) ::
          {:ok, get_playback_restriction_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_playback_restriction_policy_errors()}
  def get_playback_restriction_policy(%Client{} = client, input, options \\ []) do
    url_path = "/GetPlaybackRestrictionPolicy"
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
  Gets the recording configuration for the specified ARN.
  """
  @spec get_recording_configuration(map(), get_recording_configuration_request(), list()) ::
          {:ok, get_recording_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_recording_configuration_errors()}
  def get_recording_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/GetRecordingConfiguration"
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
  Gets information about the active (live) stream on a specified channel.
  """
  @spec get_stream(map(), get_stream_request(), list()) ::
          {:ok, get_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_stream_errors()}
  def get_stream(%Client{} = client, input, options \\ []) do
    url_path = "/GetStream"
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
  Gets stream-key information for a specified ARN.
  """
  @spec get_stream_key(map(), get_stream_key_request(), list()) ::
          {:ok, get_stream_key_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_stream_key_errors()}
  def get_stream_key(%Client{} = client, input, options \\ []) do
    url_path = "/GetStreamKey"
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
  Gets metadata on a specified stream.
  """
  @spec get_stream_session(map(), get_stream_session_request(), list()) ::
          {:ok, get_stream_session_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_stream_session_errors()}
  def get_stream_session(%Client{} = client, input, options \\ []) do
    url_path = "/GetStreamSession"
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
  Imports the public portion of a new key pair and returns its `arn` and
  `fingerprint`.

  The `privateKey` can then be used to generate viewer
  authorization tokens, to grant viewers access to private channels. For more
  information, see
  [Setting Up Private
  Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html)
  in the *Amazon IVS User Guide*.
  """
  @spec import_playback_key_pair(map(), import_playback_key_pair_request(), list()) ::
          {:ok, import_playback_key_pair_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, import_playback_key_pair_errors()}
  def import_playback_key_pair(%Client{} = client, input, options \\ []) do
    url_path = "/ImportPlaybackKeyPair"
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
  Gets summary information about all channels in your account, in the Amazon Web
  Services
  region where the API request is processed.

  This list can be filtered to match a specified name
  or recording-configuration ARN. Filters are mutually exclusive and cannot be
  used together. If
  you try to use both filters, you will get an error (409 ConflictException).
  """
  @spec list_channels(map(), list_channels_request(), list()) ::
          {:ok, list_channels_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_channels_errors()}
  def list_channels(%Client{} = client, input, options \\ []) do
    url_path = "/ListChannels"
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
  Gets summary information about playback key pairs.

  For more information, see [Setting Up Private Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html)
  in the *Amazon IVS User Guide*.
  """
  @spec list_playback_key_pairs(map(), list_playback_key_pairs_request(), list()) ::
          {:ok, list_playback_key_pairs_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_playback_key_pairs_errors()}
  def list_playback_key_pairs(%Client{} = client, input, options \\ []) do
    url_path = "/ListPlaybackKeyPairs"
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
  Gets summary information about playback restriction policies.
  """
  @spec list_playback_restriction_policies(
          map(),
          list_playback_restriction_policies_request(),
          list()
        ) ::
          {:ok, list_playback_restriction_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_playback_restriction_policies_errors()}
  def list_playback_restriction_policies(%Client{} = client, input, options \\ []) do
    url_path = "/ListPlaybackRestrictionPolicies"
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
  Gets summary information about all recording configurations in your account, in
  the
  Amazon Web Services region where the API request is processed.
  """
  @spec list_recording_configurations(map(), list_recording_configurations_request(), list()) ::
          {:ok, list_recording_configurations_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_recording_configurations_errors()}
  def list_recording_configurations(%Client{} = client, input, options \\ []) do
    url_path = "/ListRecordingConfigurations"
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
  Gets summary information about stream keys for the specified channel.
  """
  @spec list_stream_keys(map(), list_stream_keys_request(), list()) ::
          {:ok, list_stream_keys_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_stream_keys_errors()}
  def list_stream_keys(%Client{} = client, input, options \\ []) do
    url_path = "/ListStreamKeys"
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
  Gets a summary of current and previous streams for a specified channel in your
  account, in
  the AWS region where the API request is processed.
  """
  @spec list_stream_sessions(map(), list_stream_sessions_request(), list()) ::
          {:ok, list_stream_sessions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_stream_sessions_errors()}
  def list_stream_sessions(%Client{} = client, input, options \\ []) do
    url_path = "/ListStreamSessions"
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
  Gets summary information about live streams in your account, in the Amazon Web
  Services
  region where the API request is processed.
  """
  @spec list_streams(map(), list_streams_request(), list()) ::
          {:ok, list_streams_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_streams_errors()}
  def list_streams(%Client{} = client, input, options \\ []) do
    url_path = "/ListStreams"
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
  Gets information about Amazon Web Services tags for the specified ARN.
  """
  @spec list_tags_for_resource(map(), String.t(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Inserts metadata into the active stream of the specified channel.

  At most 5 requests per
  second per channel are allowed, each with a maximum 1 KB payload. (If 5 TPS is
  not sufficient
  for your needs, we recommend batching your data into a single PutMetadata call.)
  At most 155
  requests per second per account are allowed. Also see [Embedding Metadata within a Video Stream](https://docs.aws.amazon.com/ivs/latest/userguide/metadata.html)
  in
  the *Amazon IVS User Guide*.
  """
  @spec put_metadata(map(), put_metadata_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, put_metadata_errors()}
  def put_metadata(%Client{} = client, input, options \\ []) do
    url_path = "/PutMetadata"
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
      204
    )
  end

  @doc """
  Starts the process of revoking the viewer session associated with a specified
  channel ARN
  and viewer ID.

  Optionally, you can provide a version to revoke viewer sessions less than and
  including that version. For instructions on associating a viewer ID with a
  viewer session, see
  [Setting Up Private
  Channels](https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html).
  """
  @spec start_viewer_session_revocation(map(), start_viewer_session_revocation_request(), list()) ::
          {:ok, start_viewer_session_revocation_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, start_viewer_session_revocation_errors()}
  def start_viewer_session_revocation(%Client{} = client, input, options \\ []) do
    url_path = "/StartViewerSessionRevocation"
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
  Disconnects the incoming RTMPS stream for the specified channel.

  Can be used in
  conjunction with `DeleteStreamKey` to prevent further streaming to a
  channel.

  Many streaming client-software libraries automatically reconnect a dropped RTMPS
  session, so to stop the stream permanently, you may want to first revoke the
  `streamKey` attached to the channel.
  """
  @spec stop_stream(map(), stop_stream_request(), list()) ::
          {:ok, stop_stream_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, stop_stream_errors()}
  def stop_stream(%Client{} = client, input, options \\ []) do
    url_path = "/StopStream"
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
  Adds or updates tags for the Amazon Web Services resource with the specified
  ARN.
  """
  @spec tag_resource(map(), String.t(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, tag_resource_errors()}
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
  @spec untag_resource(map(), String.t(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, untag_resource_errors()}
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
  Updates a channel's configuration.

  Live channels cannot be updated. You must stop the
  ongoing stream, update the channel, and restart the stream for the changes to
  take
  effect.
  """
  @spec update_channel(map(), update_channel_request(), list()) ::
          {:ok, update_channel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_channel_errors()}
  def update_channel(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateChannel"
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
  Updates a specified playback restriction policy.
  """
  @spec update_playback_restriction_policy(
          map(),
          update_playback_restriction_policy_request(),
          list()
        ) ::
          {:ok, update_playback_restriction_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_playback_restriction_policy_errors()}
  def update_playback_restriction_policy(%Client{} = client, input, options \\ []) do
    url_path = "/UpdatePlaybackRestrictionPolicy"
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
