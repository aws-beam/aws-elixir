# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.KinesisVideoArchivedMedia do
  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
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
  specify either the StreamName or the StreamARN when invoking this API operation.

  As a prerequisite to using GetCLip API, you must obtain an endpoint using
  `GetDataEndpoint`, specifying GET_CLIP for` the `APIName` parameter. `

  ```
  An Amazon Kinesis video stream has the following requirements for providing data
  through MP4:

     The media must contain h.264 or h.265 encoded video and,
  optionally, AAC or G.711 encoded audio. Specifically, the codec ID of track 1
  should be `V_MPEG/ISO/AVC` (for h.264) or V_MPEGH/ISO/HEVC (for H.265).
  Optionally, the codec ID of track 2 should be `A_AAC` (for AAC) or A_MS/ACM (for
  G.711).

     Data retention must be greater than 0.

     The video track of each fragment must contain codec private data in
  the Advanced Video Coding (AVC) for H.264 format and HEVC for H.265 format. For
  more information, see [MPEG-4 specification ISO/IEC 14496-15](https://www.iso.org/standard/55980.html). For information about
  adapting stream data to a given format, see [NAL Adaptation Flags](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/producer-reference-nal.html).

     The audio track (if present) of each fragment must contain codec
  private data in the AAC format ([AAC specification ISO/IEC 13818-7](https://www.iso.org/standard/43345.html)) or the [MS Wave format](http://www-mmsp.ece.mcgill.ca/Documents/AudioFormats/WAVE/WAVE.html).

  You can monitor the amount of outgoing data by monitoring the
  `GetClip.OutgoingBytes` Amazon CloudWatch metric. For information about using
  CloudWatch to monitor Kinesis Video Streams, see [Monitoring Kinesis Video Streams](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/monitoring.html).
  For pricing information, see [Amazon Kinesis Video Streams Pricing](https://aws.amazon.com/kinesis/video-streams/pricing/) and [AWS Pricing](https://aws.amazon.com/pricing/). Charges for outgoing AWS data apply.

  ```
  """
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

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Retrieves an MPEG Dynamic Adaptive Streaming over HTTP (DASH) URL for the
  stream.

  You can then open the URL in a media player to view the stream contents.

  Both the `StreamName` and the `StreamARN` parameters are optional, but you must
  specify either the `StreamName` or the `StreamARN` when invoking this API
  operation.

  An Amazon Kinesis video stream has the following requirements for providing data
  through MPEG-DASH:

    * The media must contain h.264 or h.265 encoded video and,
  optionally, AAC or G.711 encoded audio. Specifically, the codec ID of track 1
  should be `V_MPEG/ISO/AVC` (for h.264) or V_MPEGH/ISO/HEVC (for H.265).
  Optionally, the codec ID of track 2 should be `A_AAC` (for AAC) or A_MS/ACM (for
  G.711).

    * Data retention must be greater than 0.

    * The video track of each fragment must contain codec private data
  in the Advanced Video Coding (AVC) for H.264 format and HEVC for H.265 format.
  For more information, see [MPEG-4 specification ISO/IEC 14496-15](https://www.iso.org/standard/55980.html). For information about
  adapting stream data to a given format, see [NAL Adaptation Flags](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/producer-reference-nal.html).

    * The audio track (if present) of each fragment must contain codec
  private data in the AAC format ([AAC specification ISO/IEC 13818-7](https://www.iso.org/standard/43345.html)) or the [MS Wave format](http://www-mmsp.ece.mcgill.ca/Documents/AudioFormats/WAVE/WAVE.html).

  The following procedure shows how to use MPEG-DASH with Kinesis Video Streams:

    1. Get an endpoint using
  [GetDataEndpoint](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_GetDataEndpoint.html), specifying `GET_DASH_STREAMING_SESSION_URL` for the `APIName` parameter.

    2. Retrieve the MPEG-DASH URL using `GetDASHStreamingSessionURL`.
  Kinesis Video Streams creates an MPEG-DASH streaming session to be used for
  accessing content in a stream using the MPEG-DASH protocol.
  `GetDASHStreamingSessionURL` returns an authenticated URL (that includes an
  encrypted session token) for the session's MPEG-DASH *manifest* (the root
  resource needed for streaming with MPEG-DASH).

  Don't share or store this token where an unauthorized entity can access it. The
  token provides access to the content of the stream. Safeguard the token with the
  same measures that you use with your AWS credentials.

  The media that is made available through the manifest consists only of the
  requested stream, time range, and format. No other media data (such as frames
  outside the requested window or alternate bitrates) is made available.

    3. Provide the URL (containing the encrypted session token) for the
  MPEG-DASH manifest to a media player that supports the MPEG-DASH protocol.
  Kinesis Video Streams makes the initialization fragment and media fragments
  available through the manifest URL. The initialization fragment contains the
  codec private data for the stream, and other data needed to set up the video or
  audio decoder and renderer. The media fragments contain encoded video frames or
  encoded audio samples.

    4. The media player receives the authenticated URL and requests
  stream metadata and media data normally. When the media player requests data, it
  calls the following actions:

      * **GetDASHManifest:** Retrieves an MPEG DASH manifest,
  which contains the metadata for the media that you want to playback.

      * **GetMP4InitFragment:** Retrieves the MP4
  initialization fragment. The media player typically loads the initialization
  fragment before loading any media fragments. This fragment contains the "`fytp`"
  and "`moov`" MP4 atoms, and the child atoms that are needed to initialize the
  media player decoder.

  The initialization fragment does not correspond to a fragment in a Kinesis video
  stream. It contains only the codec private data for the stream and respective
  track, which the media player needs to decode the media frames.

      * **GetMP4MediaFragment:** Retrieves MP4 media
  fragments. These fragments contain the "`moof`" and "`mdat`" MP4 atoms and their
  child atoms, containing the encoded fragment's media frames and their
  timestamps.

  After the first media fragment is made available in a streaming session, any
  fragments that don't contain the same codec private data cause an error to be
  returned when those different media fragments are loaded. Therefore, the codec
  private data should not change between fragments in a session. This also means
  that the session fails if the fragments in a stream change from having only
  video to having both audio and video.

  Data retrieved with this action is billable. See
  [Pricing](https://aws.amazon.com/kinesis/video-streams/pricing/) for details.

  For restrictions that apply to MPEG-DASH sessions, see [Kinesis Video Streams Limits](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/limits.html).

  You can monitor the amount of data that the media player consumes by monitoring
  the `GetMP4MediaFragment.OutgoingBytes` Amazon CloudWatch metric. For
  information about using CloudWatch to monitor Kinesis Video Streams, see
  [Monitoring Kinesis Video Streams](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/monitoring.html).
  For pricing information, see [Amazon Kinesis Video Streams Pricing](https://aws.amazon.com/kinesis/video-streams/pricing/) and [AWS Pricing](https://aws.amazon.com/pricing/). Charges for both HLS sessions and
  outgoing AWS data apply.

  For more information about HLS, see [HTTP Live Streaming](https://developer.apple.com/streaming/) on the [Apple Developer site](https://developer.apple.com).

  If an error is thrown after invoking a Kinesis Video Streams archived media API,
  in addition to the HTTP status code and the response body, it includes the
  following pieces of information:

     `x-amz-ErrorType` HTTP header – contains a more specific error type
  in addition to what the HTTP status code provides.

     `x-amz-RequestId` HTTP header – if you want to report an issue to
  AWS, the support team can better diagnose the problem if given the Request Id.

  Both the HTTP status code and the ErrorType header can be utilized to make
  programmatic decisions about whether errors are retry-able and under what
  conditions, as well as provide information on what actions the client programmer
  might need to take in order to successfully try again.

  For more information, see the **Errors** section at the bottom of this topic, as
  well as [Common Errors](https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html).
  """
  def get_dash_streaming_session_url(%Client{} = client, input, options \\ []) do
    url_path = "/getDASHStreamingSessionURL"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Retrieves an HTTP Live Streaming (HLS) URL for the stream.

  You can then open the URL in a browser or media player to view the stream
  contents.

  Both the `StreamName` and the `StreamARN` parameters are optional, but you must
  specify either the `StreamName` or the `StreamARN` when invoking this API
  operation.

  An Amazon Kinesis video stream has the following requirements for providing data
  through HLS:

    * The media must contain h.264 or h.265 encoded video and,
  optionally, AAC encoded audio. Specifically, the codec ID of track 1 should be
  `V_MPEG/ISO/AVC` (for h.264) or `V_MPEG/ISO/HEVC` (for h.265). Optionally, the
  codec ID of track 2 should be `A_AAC`.

    * Data retention must be greater than 0.

    * The video track of each fragment must contain codec private data
  in the Advanced Video Coding (AVC) for H.264 format or HEVC for H.265 format
  ([MPEG-4 specification ISO/IEC 14496-15](https://www.iso.org/standard/55980.html)). For information about
  adapting stream data to a given format, see [NAL Adaptation Flags](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/producer-reference-nal.html).

    * The audio track (if present) of each fragment must contain codec
  private data in the AAC format ([AAC specification ISO/IEC 13818-7](https://www.iso.org/standard/43345.html)).

  Kinesis Video Streams HLS sessions contain fragments in the fragmented MPEG-4
  form (also called fMP4 or CMAF) or the MPEG-2 form (also called TS chunks, which
  the HLS specification also supports). For more information about HLS fragment
  types, see the [HLS specification](https://tools.ietf.org/html/draft-pantos-http-live-streaming-23).

  The following procedure shows how to use HLS with Kinesis Video Streams:

    1. Get an endpoint using
  [GetDataEndpoint](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_GetDataEndpoint.html), specifying `GET_HLS_STREAMING_SESSION_URL` for the `APIName` parameter.

    2. Retrieve the HLS URL using `GetHLSStreamingSessionURL`. Kinesis
  Video Streams creates an HLS streaming session to be used for accessing content
  in a stream using the HLS protocol. `GetHLSStreamingSessionURL` returns an
  authenticated URL (that includes an encrypted session token) for the session's
  HLS *master playlist* (the root resource needed for streaming with HLS).

  Don't share or store this token where an unauthorized entity could access it.
  The token provides access to the content of the stream. Safeguard the token with
  the same measures that you would use with your AWS credentials.

  The media that is made available through the playlist consists only of the
  requested stream, time range, and format. No other media data (such as frames
  outside the requested window or alternate bitrates) is made available.

    3. Provide the URL (containing the encrypted session token) for the
  HLS master playlist to a media player that supports the HLS protocol. Kinesis
  Video Streams makes the HLS media playlist, initialization fragment, and media
  fragments available through the master playlist URL. The initialization fragment
  contains the codec private data for the stream, and other data needed to set up
  the video or audio decoder and renderer. The media fragments contain
  H.264-encoded video frames or AAC-encoded audio samples.

    4. The media player receives the authenticated URL and requests
  stream metadata and media data normally. When the media player requests data, it
  calls the following actions:

      * **GetHLSMasterPlaylist:** Retrieves an HLS master
  playlist, which contains a URL for the `GetHLSMediaPlaylist` action for each
  track, and additional metadata for the media player, including estimated bitrate
  and resolution.

      * **GetHLSMediaPlaylist:** Retrieves an HLS media
  playlist, which contains a URL to access the MP4 initialization fragment with
  the `GetMP4InitFragment` action, and URLs to access the MP4 media fragments with
  the `GetMP4MediaFragment` actions. The HLS media playlist also contains metadata
  about the stream that the player needs to play it, such as whether the
  `PlaybackMode` is `LIVE` or `ON_DEMAND`. The HLS media playlist is typically
  static for sessions with a `PlaybackType` of `ON_DEMAND`. The HLS media playlist
  is continually updated with new fragments for sessions with a `PlaybackType` of
  `LIVE`. There is a distinct HLS media playlist for the video track and the audio
  track (if applicable) that contains MP4 media URLs for the specific track.

      * **GetMP4InitFragment:** Retrieves the MP4
  initialization fragment. The media player typically loads the initialization
  fragment before loading any media fragments. This fragment contains the "`fytp`"
  and "`moov`" MP4 atoms, and the child atoms that are needed to initialize the
  media player decoder.

  The initialization fragment does not correspond to a fragment in a Kinesis video
  stream. It contains only the codec private data for the stream and respective
  track, which the media player needs to decode the media frames.

      * **GetMP4MediaFragment:** Retrieves MP4 media
  fragments. These fragments contain the "`moof`" and "`mdat`" MP4 atoms and their
  child atoms, containing the encoded fragment's media frames and their
  timestamps.

  After the first media fragment is made available in a streaming session, any
  fragments that don't contain the same codec private data cause an error to be
  returned when those different media fragments are loaded. Therefore, the codec
  private data should not change between fragments in a session. This also means
  that the session fails if the fragments in a stream change from having only
  video to having both audio and video.

  Data retrieved with this action is billable. See
  [Pricing](https://aws.amazon.com/kinesis/video-streams/pricing/) for details.

      * **GetTSFragment:** Retrieves MPEG TS fragments
  containing both initialization and media data for all tracks in the stream.

  If the `ContainerFormat` is `MPEG_TS`, this API is used instead of
  `GetMP4InitFragment` and `GetMP4MediaFragment` to retrieve stream media.

  Data retrieved with this action is billable. For more information, see [Kinesis Video Streams pricing](https://aws.amazon.com/kinesis/video-streams/pricing/).

  A streaming session URL must not be shared between players. The service might
  throttle a session if multiple media players are sharing it. For connection
  limits, see [Kinesis Video Streams Limits](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/limits.html).

  You can monitor the amount of data that the media player consumes by monitoring
  the `GetMP4MediaFragment.OutgoingBytes` Amazon CloudWatch metric. For
  information about using CloudWatch to monitor Kinesis Video Streams, see
  [Monitoring Kinesis Video Streams](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/monitoring.html).
  For pricing information, see [Amazon Kinesis Video Streams Pricing](https://aws.amazon.com/kinesis/video-streams/pricing/) and [AWS Pricing](https://aws.amazon.com/pricing/). Charges for both HLS sessions and
  outgoing AWS data apply.

  For more information about HLS, see [HTTP Live Streaming](https://developer.apple.com/streaming/) on the [Apple Developer site](https://developer.apple.com).

  If an error is thrown after invoking a Kinesis Video Streams archived media API,
  in addition to the HTTP status code and the response body, it includes the
  following pieces of information:

     `x-amz-ErrorType` HTTP header – contains a more specific error type
  in addition to what the HTTP status code provides.

     `x-amz-RequestId` HTTP header – if you want to report an issue to
  AWS, the support team can better diagnose the problem if given the Request Id.

  Both the HTTP status code and the ErrorType header can be utilized to make
  programmatic decisions about whether errors are retry-able and under what
  conditions, as well as provide information on what actions the client programmer
  might need to take in order to successfully try again.

  For more information, see the **Errors** section at the bottom of this topic, as
  well as [Common Errors](https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html).
  """
  def get_hls_streaming_session_url(%Client{} = client, input, options \\ []) do
    url_path = "/getHLSStreamingSessionURL"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Retrieves a list of Images corresponding to each timestamp for a given time
  range, sampling interval, and image format configuration.
  """
  def get_images(%Client{} = client, input, options \\ []) do
    url_path = "/getImages"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Gets media for a list of fragments (specified by fragment number) from the
  archived data in an Amazon Kinesis video stream.

  You must first call the `GetDataEndpoint` API to get an endpoint. Then send the
  `GetMediaForFragmentList` requests to this endpoint using the [--endpoint-url parameter](https://docs.aws.amazon.com/cli/latest/reference/).

  For limits, see [Kinesis Video Streams Limits](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/limits.html).

  If an error is thrown after invoking a Kinesis Video Streams archived media API,
  in addition to the HTTP status code and the response body, it includes the
  following pieces of information:

     `x-amz-ErrorType` HTTP header – contains a more specific error type
  in addition to what the HTTP status code provides.

     `x-amz-RequestId` HTTP header – if you want to report an issue to
  AWS, the support team can better diagnose the problem if given the Request Id.

  Both the HTTP status code and the ErrorType header can be utilized to make
  programmatic decisions about whether errors are retry-able and under what
  conditions, as well as provide information on what actions the client programmer
  might need to take in order to successfully try again.

  For more information, see the **Errors** section at the bottom of this topic, as
  well as [Common Errors](https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html).
  """
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

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Returns a list of `Fragment` objects from the specified stream and timestamp
  range within the archived data.

  Listing fragments is eventually consistent. This means that even if the producer
  receives an acknowledgment that a fragment is persisted, the result might not be
  returned immediately from a request to `ListFragments`. However, results are
  typically available in less than one second.

  You must first call the `GetDataEndpoint` API to get an endpoint. Then send the
  `ListFragments` requests to this endpoint using the [--endpoint-url parameter](https://docs.aws.amazon.com/cli/latest/reference/).

  If an error is thrown after invoking a Kinesis Video Streams archived media API,
  in addition to the HTTP status code and the response body, it includes the
  following pieces of information:

     `x-amz-ErrorType` HTTP header – contains a more specific error type
  in addition to what the HTTP status code provides.

     `x-amz-RequestId` HTTP header – if you want to report an issue to
  AWS, the support team can better diagnose the problem if given the Request Id.

  Both the HTTP status code and the ErrorType header can be utilized to make
  programmatic decisions about whether errors are retry-able and under what
  conditions, as well as provide information on what actions the client programmer
  might need to take in order to successfully try again.

  For more information, see the **Errors** section at the bottom of this topic, as
  well as [Common Errors](https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html).
  """
  def list_fragments(%Client{} = client, input, options \\ []) do
    url_path = "/listFragments"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
