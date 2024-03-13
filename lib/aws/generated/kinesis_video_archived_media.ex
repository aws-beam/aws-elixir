# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.KinesisVideoArchivedMedia do
  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      client_limit_exceeded_exception() :: %{
        "Message" => String.t()
      }

  """
  @type client_limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      clip_fragment_selector() :: %{
        "FragmentSelectorType" => list(any()),
        "TimestampRange" => clip_timestamp_range()
      }

  """
  @type clip_fragment_selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      clip_timestamp_range() :: %{
        "EndTimestamp" => non_neg_integer(),
        "StartTimestamp" => non_neg_integer()
      }

  """
  @type clip_timestamp_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dash_fragment_selector() :: %{
        "FragmentSelectorType" => list(any()),
        "TimestampRange" => dash_timestamp_range()
      }

  """
  @type dash_fragment_selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dash_timestamp_range() :: %{
        "EndTimestamp" => non_neg_integer(),
        "StartTimestamp" => non_neg_integer()
      }

  """
  @type dash_timestamp_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fragment() :: %{
        "FragmentLengthInMilliseconds" => float(),
        "FragmentNumber" => String.t(),
        "FragmentSizeInBytes" => float(),
        "ProducerTimestamp" => non_neg_integer(),
        "ServerTimestamp" => non_neg_integer()
      }

  """
  @type fragment() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      fragment_selector() :: %{
        "FragmentSelectorType" => list(any()),
        "TimestampRange" => timestamp_range()
      }

  """
  @type fragment_selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_clip_input() :: %{
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t(),
        required("ClipFragmentSelector") => clip_fragment_selector()
      }

  """
  @type get_clip_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_clip_output() :: %{
        "ContentType" => String.t(),
        "Payload" => binary()
      }

  """
  @type get_clip_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_dash_streaming_session_url_input() :: %{
        optional("DASHFragmentSelector") => dash_fragment_selector(),
        optional("DisplayFragmentNumber") => list(any()),
        optional("DisplayFragmentTimestamp") => list(any()),
        optional("Expires") => integer(),
        optional("MaxManifestFragmentResults") => float(),
        optional("PlaybackMode") => list(any()),
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t()
      }

  """
  @type get_dash_streaming_session_url_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_dash_streaming_session_url_output() :: %{
        "DASHStreamingSessionURL" => String.t()
      }

  """
  @type get_dash_streaming_session_url_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_hls_streaming_session_url_input() :: %{
        optional("ContainerFormat") => list(any()),
        optional("DiscontinuityMode") => list(any()),
        optional("DisplayFragmentTimestamp") => list(any()),
        optional("Expires") => integer(),
        optional("HLSFragmentSelector") => hls_fragment_selector(),
        optional("MaxMediaPlaylistFragmentResults") => float(),
        optional("PlaybackMode") => list(any()),
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t()
      }

  """
  @type get_hls_streaming_session_url_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_hls_streaming_session_url_output() :: %{
        "HLSStreamingSessionURL" => String.t()
      }

  """
  @type get_hls_streaming_session_url_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_images_input() :: %{
        optional("FormatConfig") => map(),
        optional("HeightPixels") => integer(),
        optional("MaxResults") => float(),
        optional("NextToken") => String.t(),
        optional("SamplingInterval") => integer(),
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t(),
        optional("WidthPixels") => integer(),
        required("EndTimestamp") => non_neg_integer(),
        required("Format") => list(any()),
        required("ImageSelectorType") => list(any()),
        required("StartTimestamp") => non_neg_integer()
      }

  """
  @type get_images_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_images_output() :: %{
        "Images" => list(image()()),
        "NextToken" => String.t()
      }

  """
  @type get_images_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_media_for_fragment_list_input() :: %{
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t(),
        required("Fragments") => list(String.t()())
      }

  """
  @type get_media_for_fragment_list_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_media_for_fragment_list_output() :: %{
        "ContentType" => String.t(),
        "Payload" => binary()
      }

  """
  @type get_media_for_fragment_list_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hls_fragment_selector() :: %{
        "FragmentSelectorType" => list(any()),
        "TimestampRange" => hls_timestamp_range()
      }

  """
  @type hls_fragment_selector() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      hls_timestamp_range() :: %{
        "EndTimestamp" => non_neg_integer(),
        "StartTimestamp" => non_neg_integer()
      }

  """
  @type hls_timestamp_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      image() :: %{
        "Error" => list(any()),
        "ImageContent" => String.t(),
        "TimeStamp" => non_neg_integer()
      }

  """
  @type image() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_argument_exception() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_argument_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_codec_private_data_exception() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_codec_private_data_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      invalid_media_frame_exception() :: %{
        "Message" => String.t()
      }

  """
  @type invalid_media_frame_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_fragments_input() :: %{
        optional("FragmentSelector") => fragment_selector(),
        optional("MaxResults") => float(),
        optional("NextToken") => String.t(),
        optional("StreamARN") => String.t(),
        optional("StreamName") => String.t()
      }

  """
  @type list_fragments_input() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_fragments_output() :: %{
        "Fragments" => list(fragment()()),
        "NextToken" => String.t()
      }

  """
  @type list_fragments_output() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      missing_codec_private_data_exception() :: %{
        "Message" => String.t()
      }

  """
  @type missing_codec_private_data_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      no_data_retention_exception() :: %{
        "Message" => String.t()
      }

  """
  @type no_data_retention_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      not_authorized_exception() :: %{
        "Message" => String.t()
      }

  """
  @type not_authorized_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      timestamp_range() :: %{
        "EndTimestamp" => non_neg_integer(),
        "StartTimestamp" => non_neg_integer()
      }

  """
  @type timestamp_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      unsupported_stream_media_type_exception() :: %{
        "Message" => String.t()
      }

  """
  @type unsupported_stream_media_type_exception() :: %{String.t() => any()}

  @type get_clip_errors() ::
          unsupported_stream_media_type_exception()
          | resource_not_found_exception()
          | not_authorized_exception()
          | no_data_retention_exception()
          | missing_codec_private_data_exception()
          | invalid_media_frame_exception()
          | invalid_codec_private_data_exception()
          | invalid_argument_exception()
          | client_limit_exceeded_exception()

  @type get_dash_streaming_session_url_errors() ::
          unsupported_stream_media_type_exception()
          | resource_not_found_exception()
          | not_authorized_exception()
          | no_data_retention_exception()
          | missing_codec_private_data_exception()
          | invalid_codec_private_data_exception()
          | invalid_argument_exception()
          | client_limit_exceeded_exception()

  @type get_hls_streaming_session_url_errors() ::
          unsupported_stream_media_type_exception()
          | resource_not_found_exception()
          | not_authorized_exception()
          | no_data_retention_exception()
          | missing_codec_private_data_exception()
          | invalid_codec_private_data_exception()
          | invalid_argument_exception()
          | client_limit_exceeded_exception()

  @type get_images_errors() ::
          resource_not_found_exception()
          | not_authorized_exception()
          | no_data_retention_exception()
          | invalid_argument_exception()
          | client_limit_exceeded_exception()

  @type get_media_for_fragment_list_errors() ::
          resource_not_found_exception()
          | not_authorized_exception()
          | invalid_argument_exception()
          | client_limit_exceeded_exception()

  @type list_fragments_errors() ::
          resource_not_found_exception()
          | not_authorized_exception()
          | invalid_argument_exception()
          | client_limit_exceeded_exception()

  def metadata do
    %{
      api_version: "2017-09-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "kinesisvideo",
      global?: false,
      protocol: "rest-json",
      service_id: "Kinesis Video Archived Media",
      signature_version: "v4",
      signing_name: "kinesisvideo",
      target_prefix: nil
    }
  end

  @doc """
  Downloads an MP4 file (clip) containing the archived, on-demand media from the
  specified video stream over the specified time range.

  Both the StreamName and the StreamARN parameters are optional, but you must
  specify
  either the StreamName or the StreamARN when invoking this API operation.

  As a prerequisite to using GetCLip API, you must obtain an endpoint using
  `GetDataEndpoint`, specifying GET_CLIP for`` the
  `APIName` parameter.

  An Amazon Kinesis video stream has the following requirements for providing data
  through MP4:

    *
  The media must contain h.264 or h.265 encoded video and, optionally, AAC or
  G.711 encoded audio. Specifically, the codec ID of track 1 should be
  `V_MPEG/ISO/AVC` (for h.264) or V_MPEGH/ISO/HEVC (for H.265).
  Optionally, the codec ID of track 2 should be `A_AAC` (for AAC) or
  A_MS/ACM (for G.711).

    *
  Data retention must be greater than 0.

    *
  The video track of each fragment must contain codec private data in the
  Advanced Video Coding (AVC) for H.264 format and HEVC for H.265 format. For more
  information, see [MPEG-4 specification ISO/IEC 14496-15](https://www.iso.org/standard/55980.html). For
  information about adapting
  stream data to a given format, see [NAL Adaptation Flags](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/producer-reference-nal.html).

    *
  The audio track (if present) of each fragment must contain codec private data
  in the AAC format ([AAC specification ISO/IEC 13818-7](https://www.iso.org/standard/43345.html)) or the
  [MS Wave
  format](http://www-mmsp.ece.mcgill.ca/Documents/AudioFormats/WAVE/WAVE.html).

  You can monitor the amount of outgoing data by monitoring the
  `GetClip.OutgoingBytes` Amazon CloudWatch metric. For information about
  using CloudWatch to monitor Kinesis Video Streams, see [Monitoring Kinesis Video Streams](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/monitoring.html).
  For pricing information, see [Amazon Kinesis Video Streams Pricing](https://aws.amazon.com/kinesis/video-streams/pricing/) and [
  Amazon Web Services
  Pricing](https://aws.amazon.com/pricing/). Charges for outgoing Amazon Web
  Services data apply.
  """
  @spec get_clip(map(), get_clip_input(), list()) ::
          {:ok, get_clip_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_clip_errors()}
  def get_clip(%Client{} = client, input, options \\ []) do
    url_path = "/getClip"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "ContentType"}]
      )

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
  Retrieves an MPEG Dynamic Adaptive Streaming over HTTP (DASH) URL for the
  stream.

  You
  can then open the URL in a media player to view the stream contents.

  Both the `StreamName` and the `StreamARN` parameters are
  optional, but you must specify either the `StreamName` or the
  `StreamARN` when invoking this API operation.

  An Amazon Kinesis video stream has the following requirements for providing data
  through MPEG-DASH:

    *
  The media must contain h.264 or h.265 encoded video and, optionally, AAC or
  G.711 encoded audio. Specifically, the codec ID of track 1 should be
  `V_MPEG/ISO/AVC` (for h.264) or V_MPEGH/ISO/HEVC (for H.265).
  Optionally, the codec ID of track 2 should be `A_AAC` (for AAC) or
  A_MS/ACM (for G.711).

    *
  Data retention must be greater than 0.

    *
  The video track of each fragment must contain codec private data in the
  Advanced Video Coding (AVC) for H.264 format and HEVC for H.265 format. For more
  information, see [MPEG-4 specification ISO/IEC 14496-15](https://www.iso.org/standard/55980.html). For
  information about adapting
  stream data to a given format, see [NAL Adaptation Flags](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/producer-reference-nal.html).

    *
  The audio track (if present) of each fragment must contain codec private data
  in the AAC format ([AAC specification ISO/IEC 13818-7](https://www.iso.org/standard/43345.html)) or the
  [MS Wave
  format](http://www-mmsp.ece.mcgill.ca/Documents/AudioFormats/WAVE/WAVE.html).

  The following procedure shows how to use MPEG-DASH with Kinesis Video Streams:

    1.
  Get an endpoint using
  [GetDataEndpoint](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_GetDataEndpoint.html), specifying
  `GET_DASH_STREAMING_SESSION_URL` for the `APIName`
  parameter.

    2.
  Retrieve the MPEG-DASH URL using `GetDASHStreamingSessionURL`.
  Kinesis Video Streams creates an MPEG-DASH streaming session to be used for
  accessing content in a stream using the MPEG-DASH protocol.
  `GetDASHStreamingSessionURL` returns an authenticated URL (that
  includes an encrypted session token) for the session's MPEG-DASH
  *manifest* (the root resource needed for streaming with
  MPEG-DASH).

  Don't share or store this token where an unauthorized entity can access
  it. The token provides access to the content of the stream. Safeguard the
  token with the same measures that you use with your Amazon Web Services
  credentials.

  The media that is made available through the manifest consists only of the
  requested stream, time range, and format. No other media data (such as frames
  outside the requested window or alternate bitrates) is made available.

    3.
  Provide the URL (containing the encrypted session token) for the MPEG-DASH
  manifest to a media player that supports the MPEG-DASH protocol. Kinesis Video
  Streams makes the initialization fragment and media fragments available through
  the manifest URL. The initialization fragment contains the codec private data
  for the stream, and other data needed to set up the video or audio decoder and
  renderer. The media fragments contain encoded video frames or encoded audio
  samples.

    4.
  The media player receives the authenticated URL and requests stream metadata
  and media data normally. When the media player requests data, it calls the
  following actions:

      *

  **GetDASHManifest:** Retrieves an MPEG DASH
  manifest, which contains the metadata for the media that you want to
  playback.

      *

  **GetMP4InitFragment:** Retrieves the MP4
  initialization fragment. The media player typically loads the
  initialization fragment before loading any media fragments. This
  fragment contains the "`fytp`" and "`moov`" MP4
  atoms, and the child atoms that are needed to initialize the media
  player decoder.

  The initialization fragment does not correspond to a fragment in a
  Kinesis video stream. It contains only the codec private data for the
  stream and respective track, which the media player needs to decode the
  media frames.

      *

  **GetMP4MediaFragment:** Retrieves MP4
  media fragments. These fragments contain the "`moof`" and
  "`mdat`" MP4 atoms and their child atoms, containing the
  encoded fragment's media frames and their timestamps.

  After the first media fragment is made available in a streaming
  session, any fragments that don't contain the same codec private
  data cause an error to be returned when those different media
  fragments are loaded. Therefore, the codec private data should not
  change between fragments in a session. This also means that the
  session fails if the fragments in a stream change from having only
  video to having both audio and video.

  Data retrieved with this action is billable. See
  [Pricing](https://aws.amazon.com/kinesis/video-streams/pricing/) for details.

  For restrictions that apply to MPEG-DASH sessions, see [Kinesis Video Streams Limits](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/limits.html).

  You can monitor the amount of data that the media player consumes by monitoring
  the
  `GetMP4MediaFragment.OutgoingBytes` Amazon CloudWatch metric. For
  information about using CloudWatch to monitor Kinesis Video Streams, see
  [Monitoring Kinesis Video Streams](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/monitoring.html).
  For pricing information, see [Amazon Kinesis Video Streams Pricing](https://aws.amazon.com/kinesis/video-streams/pricing/) and
  [Amazon Web Services Pricing](https://aws.amazon.com/pricing/). Charges for both HLS sessions and
  outgoing Amazon Web Services data apply.

  For more information about HLS, see [HTTP Live Streaming](https://developer.apple.com/streaming/) on the
  [Apple Developer site](https://developer.apple.com). 
  If an error is thrown after invoking a Kinesis Video Streams archived media API,
  in addition to the HTTP status code and the response body, it includes the
  following
  pieces of information:

    

  `x-amz-ErrorType` HTTP header – contains a more specific error
  type in addition to what the HTTP status code provides.

    

  `x-amz-RequestId` HTTP header – if you want to report an issue to
  Amazon Web Services the support team can better diagnose the problem if given
  the Request
  Id.

  Both the HTTP status code and the ErrorType header can be utilized to make
  programmatic decisions about whether errors are retry-able and under what
  conditions, as well as provide information on what actions the client programmer
  might need to take in order to successfully try again.

  For more information, see the **Errors** section at
  the bottom of this topic, as well as [Common
  Errors](https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html).
  """
  @spec get_dash_streaming_session_url(map(), get_dash_streaming_session_url_input(), list()) ::
          {:ok, get_dash_streaming_session_url_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_dash_streaming_session_url_errors()}
  def get_dash_streaming_session_url(%Client{} = client, input, options \\ []) do
    url_path = "/getDASHStreamingSessionURL"
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
  Retrieves an HTTP Live Streaming (HLS) URL for the stream.

  You can then open the URL
  in a browser or media player to view the stream contents.

  Both the `StreamName` and the `StreamARN` parameters are
  optional, but you must specify either the `StreamName` or the
  `StreamARN` when invoking this API operation.

  An Amazon Kinesis video stream has the following requirements for providing data
  through HLS:

    *
  For streaming video, the media must contain H.264 or H.265 encoded video and,
  optionally, AAC
  encoded audio. Specifically, the codec ID of track 1 should be
  `V_MPEG/ISO/AVC` (for H.264) or `V_MPEG/ISO/HEVC` (for
  H.265). Optionally, the codec ID of track 2 should be `A_AAC`. For audio only
  streaming, the codec ID of track 1 should be
  `A_AAC`.

    *
  Data retention must be greater than 0.

    *
  The video track of each fragment must contain codec private data in the
  Advanced Video Coding (AVC) for H.264 format or HEVC for H.265 format ([MPEG-4 specification ISO/IEC
  14496-15](https://www.iso.org/standard/55980.html)). For information about
  adapting stream data to a given
  format, see [NAL Adaptation Flags](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/producer-reference-nal.html).

    *
  The audio track (if present) of each fragment must contain codec private data
  in the AAC format ([AAC specification ISO/IEC 13818-7](https://www.iso.org/standard/43345.html)).

  Kinesis Video Streams HLS sessions contain fragments in the fragmented MPEG-4
  form
  (also called fMP4 or CMAF) or the MPEG-2 form (also called TS chunks, which the
  HLS
  specification also supports). For more information about HLS fragment types, see
  the
  [HLS specification](https://tools.ietf.org/html/draft-pantos-http-live-streaming-23).

  The following procedure shows how to use HLS with Kinesis Video Streams:

    1.
  Get an endpoint using
  [GetDataEndpoint](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_GetDataEndpoint.html), specifying
  `GET_HLS_STREAMING_SESSION_URL` for the `APIName`
  parameter.

    2.
  Retrieve the HLS URL using `GetHLSStreamingSessionURL`. Kinesis
  Video Streams creates an HLS streaming session to be used for accessing content
  in a stream using the HLS protocol. `GetHLSStreamingSessionURL`
  returns an authenticated URL (that includes an encrypted session token) for the
  session's HLS *master playlist* (the root resource needed for
  streaming with HLS).

  Don't share or store this token where an unauthorized entity could access
  it. The token provides access to the content of the stream. Safeguard the
  token with the same measures that you would use with your Amazon Web Services
  credentials.

  The media that is made available through the playlist consists only of the
  requested stream, time range, and format. No other media data (such as frames
  outside the requested window or alternate bitrates) is made available.

    3.
  Provide the URL (containing the encrypted session token) for the HLS master
  playlist to a media player that supports the HLS protocol. Kinesis Video Streams
  makes the HLS media playlist, initialization fragment, and media fragments
  available through the master playlist URL. The initialization fragment contains
  the codec private data for the stream, and other data needed to set up the video
  or audio decoder and renderer. The media fragments contain H.264-encoded video
  frames or AAC-encoded audio samples.

    4.
  The media player receives the authenticated URL and requests stream metadata
  and media data normally. When the media player requests data, it calls the
  following actions:

      *

  **GetHLSMasterPlaylist:** Retrieves an HLS
  master playlist, which contains a URL for the
  `GetHLSMediaPlaylist` action for each track, and
  additional metadata for the media player, including estimated bitrate
  and resolution.

      *

  **GetHLSMediaPlaylist:** Retrieves an HLS
  media playlist, which contains a URL to access the MP4 initialization
  fragment with the `GetMP4InitFragment` action, and URLs to
  access the MP4 media fragments with the `GetMP4MediaFragment`
  actions. The HLS media playlist also contains metadata about the stream
  that the player needs to play it, such as whether the
  `PlaybackMode` is `LIVE` or
  `ON_DEMAND`. The HLS media playlist is typically static
  for sessions with a `PlaybackType` of `ON_DEMAND`.
  The HLS media playlist is continually updated with new fragments for
  sessions with a `PlaybackType` of `LIVE`. There is
  a distinct HLS media playlist for the video track and the audio track
  (if applicable) that contains MP4 media URLs for the specific track.

      *

  **GetMP4InitFragment:** Retrieves the MP4
  initialization fragment. The media player typically loads the
  initialization fragment before loading any media fragments. This
  fragment contains the "`fytp`" and "`moov`" MP4
  atoms, and the child atoms that are needed to initialize the media
  player decoder.

  The initialization fragment does not correspond to a fragment in a
  Kinesis video stream. It contains only the codec private data for the
  stream and respective track, which the media player needs to decode the
  media frames.

      *

  **GetMP4MediaFragment:** Retrieves MP4
  media fragments. These fragments contain the "`moof`" and
  "`mdat`" MP4 atoms and their child atoms, containing the
  encoded fragment's media frames and their timestamps.

  For the HLS streaming session, in-track codec private data (CPD)
  changes are supported. After the first media fragment is made
  available in a streaming session, fragments can contain CPD changes
  for each track. Therefore, the fragments in a session can have a
  different resolution, bit rate, or other information in the CPD
  without interrupting playback. However, any change made in the track
  number or track codec format can return an error when those
  different media fragments are loaded. For example, streaming will
  fail if the fragments in the stream change from having only video to
  having both audio and video, or if an AAC audio track is changed to
  an ALAW audio track. For each streaming session, only 500 CPD
  changes are allowed.

  Data retrieved with this action is billable. For information, see
  [Pricing](https://aws.amazon.com/kinesis/video-streams/pricing/).

      *

  **GetTSFragment:** Retrieves MPEG TS
  fragments containing both initialization and media data for all tracks
  in the stream.

  If the `ContainerFormat` is `MPEG_TS`, this
  API is used instead of `GetMP4InitFragment` and
  `GetMP4MediaFragment` to retrieve stream
  media.

  Data retrieved with this action is billable. For more information, see
  [Kinesis Video Streams pricing](https://aws.amazon.com/kinesis/video-streams/pricing/).

  A streaming session URL must not be shared between players. The service
  might throttle a session if multiple media players are sharing it. For
  connection limits, see [Kinesis Video Streams Limits](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/limits.html).

  You can monitor the amount of data that the media player consumes by monitoring
  the
  `GetMP4MediaFragment.OutgoingBytes` Amazon CloudWatch metric. For
  information about using CloudWatch to monitor Kinesis Video Streams, see
  [Monitoring Kinesis Video Streams](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/monitoring.html).
  For pricing information, see [Amazon Kinesis Video Streams Pricing](https://aws.amazon.com/kinesis/video-streams/pricing/) and
  [Amazon Web Services Pricing](https://aws.amazon.com/pricing/). Charges for both HLS sessions and
  outgoing Amazon Web Services data apply.

  For more information about HLS, see [HTTP Live Streaming](https://developer.apple.com/streaming/) on the
  [Apple Developer site](https://developer.apple.com). 
  If an error is thrown after invoking a Kinesis Video Streams archived media API,
  in addition to the HTTP status code and the response body, it includes the
  following
  pieces of information:

    

  `x-amz-ErrorType` HTTP header – contains a more specific error
  type in addition to what the HTTP status code provides.

    

  `x-amz-RequestId` HTTP header – if you want to report an issue to
  Amazon Web Services, the support team can better diagnose the problem if given
  the Request
  Id.

  Both the HTTP status code and the ErrorType header can be utilized to make
  programmatic decisions about whether errors are retry-able and under what
  conditions, as well as provide information on what actions the client programmer
  might need to take in order to successfully try again.

  For more information, see the **Errors** section at
  the bottom of this topic, as well as [Common
  Errors](https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html).
  """
  @spec get_hls_streaming_session_url(map(), get_hls_streaming_session_url_input(), list()) ::
          {:ok, get_hls_streaming_session_url_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_hls_streaming_session_url_errors()}
  def get_hls_streaming_session_url(%Client{} = client, input, options \\ []) do
    url_path = "/getHLSStreamingSessionURL"
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
  Retrieves a list of images corresponding to each timestamp for a given time
  range,
  sampling interval, and image format configuration.
  """
  @spec get_images(map(), get_images_input(), list()) ::
          {:ok, get_images_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_images_errors()}
  def get_images(%Client{} = client, input, options \\ []) do
    url_path = "/getImages"
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
  Gets media for a list of fragments (specified by fragment number) from the
  archived
  data in an Amazon Kinesis video stream.

  You must first call the `GetDataEndpoint` API to get an endpoint.
  Then send the `GetMediaForFragmentList` requests to this endpoint using
  the [--endpoint-url parameter](https://docs.aws.amazon.com/cli/latest/reference/).

  For limits, see [Kinesis Video Streams Limits](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/limits.html).

  If an error is thrown after invoking a Kinesis Video Streams archived media API,
  in addition to the HTTP status code and the response body, it includes the
  following
  pieces of information:

    

  `x-amz-ErrorType` HTTP header – contains a more specific error
  type in addition to what the HTTP status code provides.

    

  `x-amz-RequestId` HTTP header – if you want to report an issue to
  Amazon Web Services, the support team can better diagnose the problem if given
  the Request
  Id.

  Both the HTTP status code and the ErrorType header can be utilized to make
  programmatic decisions about whether errors are retry-able and under what
  conditions, as well as provide information on what actions the client programmer
  might need to take in order to successfully try again.

  For more information, see the **Errors** section at
  the bottom of this topic, as well as [Common Errors](https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html).
  """
  @spec get_media_for_fragment_list(map(), get_media_for_fragment_list_input(), list()) ::
          {:ok, get_media_for_fragment_list_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_media_for_fragment_list_errors()}
  def get_media_for_fragment_list(%Client{} = client, input, options \\ []) do
    url_path = "/getMediaForFragmentList"
    headers = []
    query_params = []

    options =
      Keyword.put(
        options,
        :response_header_parameters,
        [{"Content-Type", "ContentType"}]
      )

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
  Returns a list of `Fragment` objects from the specified stream and
  timestamp range within the archived data.

  Listing fragments is eventually consistent. This means that even if the producer
  receives an acknowledgment that a fragment is persisted, the result might not be
  returned immediately from a request to `ListFragments`. However, results are
  typically available in less than one second.

  You must first call the `GetDataEndpoint` API to get an endpoint.
  Then send the `ListFragments` requests to this endpoint using the
  [--endpoint-url parameter](https://docs.aws.amazon.com/cli/latest/reference/).

  If an error is thrown after invoking a Kinesis Video Streams archived media API,
  in addition to the HTTP status code and the response body, it includes the
  following
  pieces of information:

    

  `x-amz-ErrorType` HTTP header – contains a more specific error
  type in addition to what the HTTP status code provides.

    

  `x-amz-RequestId` HTTP header – if you want to report an issue to
  Amazon Web Services, the support team can better diagnose the problem if given
  the Request
  Id.

  Both the HTTP status code and the ErrorType header can be utilized to make
  programmatic decisions about whether errors are retry-able and under what
  conditions, as well as provide information on what actions the client programmer
  might need to take in order to successfully try again.

  For more information, see the **Errors** section at
  the bottom of this topic, as well as [Common Errors](https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html).
  """
  @spec list_fragments(map(), list_fragments_input(), list()) ::
          {:ok, list_fragments_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_fragments_errors()}
  def list_fragments(%Client{} = client, input, options \\ []) do
    url_path = "/listFragments"
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
