# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.KinesisVideoArchivedMedia do
  @moduledoc """
  <p/>
  """

  @doc """
  Downloads an MP4 file (clip) containing the archived, on-demand media from
  the specified video stream over the specified time range.

  Both the StreamName and the StreamARN parameters are optional, but you must
  specify either the StreamName or the StreamARN when invoking this API
  operation.

  As a prerequsite to using GetCLip API, you must obtain an endpoint using
  `GetDataEndpoint`, specifying GET_CLIP for<code/> the `APIName` parameter.

  An Amazon Kinesis video stream has the following requirements for providing
  data through MP4:

  <ul> <li> The media must contain h.264 or h.265 encoded video and,
  optionally, AAC or G.711 encoded audio. Specifically, the codec ID of track
  1 should be `V_MPEG/ISO/AVC` (for h.264) or V_MPEGH/ISO/HEVC (for H.265).
  Optionally, the codec ID of track 2 should be `A_AAC` (for AAC) or A_MS/ACM
  (for G.711).

  </li> <li> Data retention must be greater than 0.

  </li> <li> The video track of each fragment must contain codec private data
  in the Advanced Video Coding (AVC) for H.264 format and HEVC for H.265
  format. For more information, see [MPEG-4 specification ISO/IEC
  14496-15](https://www.iso.org/standard/55980.html). For information about
  adapting stream data to a given format, see [NAL Adaptation
  Flags](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/producer-reference-nal.html).

  </li> <li> The audio track (if present) of each fragment must contain codec
  private data in the AAC format ([AAC specification ISO/IEC
  13818-7](https://www.iso.org/standard/43345.html)) or the [MS Wave
  format](http://www-mmsp.ece.mcgill.ca/Documents/AudioFormats/WAVE/WAVE.html).

  </li> </ul> You can monitor the amount of outgoing data by monitoring the
  `GetClip.OutgoingBytes` Amazon CloudWatch metric. For information about
  using CloudWatch to monitor Kinesis Video Streams, see [Monitoring Kinesis
  Video
  Streams](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/monitoring.html).
  For pricing information, see [Amazon Kinesis Video Streams
  Pricing](https://aws.amazon.com/kinesis/video-streams/pricing/) and [AWS
  Pricing](https://aws.amazon.com/pricing/). Charges for outgoing AWS data
  apply.
  """
  def get_clip(client, input, options \\ []) do
    path_ = "/getClip"
    headers = []
    query_ = []
    case request(client, :post, path_, query_, headers, input, options, nil) do
      {:ok, body, response} when not is_nil(body) ->
        body =
          [
            {"Content-Type", "ContentType"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Retrieves an MPEG Dynamic Adaptive Streaming over HTTP (DASH) URL for the
  stream. You can then open the URL in a media player to view the stream
  contents.

  Both the `StreamName` and the `StreamARN` parameters are optional, but you
  must specify either the `StreamName` or the `StreamARN` when invoking this
  API operation.

  An Amazon Kinesis video stream has the following requirements for providing
  data through MPEG-DASH:

  <ul> <li> The media must contain h.264 or h.265 encoded video and,
  optionally, AAC or G.711 encoded audio. Specifically, the codec ID of track
  1 should be `V_MPEG/ISO/AVC` (for h.264) or V_MPEGH/ISO/HEVC (for H.265).
  Optionally, the codec ID of track 2 should be `A_AAC` (for AAC) or A_MS/ACM
  (for G.711).

  </li> <li> Data retention must be greater than 0.

  </li> <li> The video track of each fragment must contain codec private data
  in the Advanced Video Coding (AVC) for H.264 format and HEVC for H.265
  format. For more information, see [MPEG-4 specification ISO/IEC
  14496-15](https://www.iso.org/standard/55980.html). For information about
  adapting stream data to a given format, see [NAL Adaptation
  Flags](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/producer-reference-nal.html).

  </li> <li> The audio track (if present) of each fragment must contain codec
  private data in the AAC format ([AAC specification ISO/IEC
  13818-7](https://www.iso.org/standard/43345.html)) or the [MS Wave
  format](http://www-mmsp.ece.mcgill.ca/Documents/AudioFormats/WAVE/WAVE.html).

  </li> </ul> The following procedure shows how to use MPEG-DASH with Kinesis
  Video Streams:

  <ol> <li> Get an endpoint using
  [GetDataEndpoint](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_GetDataEndpoint.html),
  specifying `GET_DASH_STREAMING_SESSION_URL` for the `APIName` parameter.

  </li> <li> Retrieve the MPEG-DASH URL using `GetDASHStreamingSessionURL`.
  Kinesis Video Streams creates an MPEG-DASH streaming session to be used for
  accessing content in a stream using the MPEG-DASH protocol.
  `GetDASHStreamingSessionURL` returns an authenticated URL (that includes an
  encrypted session token) for the session's MPEG-DASH *manifest* (the root
  resource needed for streaming with MPEG-DASH).

  <note> Don't share or store this token where an unauthorized entity could
  access it. The token provides access to the content of the stream.
  Safeguard the token with the same measures that you would use with your AWS
  credentials.

  </note> The media that is made available through the manifest consists only
  of the requested stream, time range, and format. No other media data (such
  as frames outside the requested window or alternate bitrates) is made
  available.

  </li> <li> Provide the URL (containing the encrypted session token) for the
  MPEG-DASH manifest to a media player that supports the MPEG-DASH protocol.
  Kinesis Video Streams makes the initialization fragment and media fragments
  available through the manifest URL. The initialization fragment contains
  the codec private data for the stream, and other data needed to set up the
  video or audio decoder and renderer. The media fragments contain encoded
  video frames or encoded audio samples.

  </li> <li> The media player receives the authenticated URL and requests
  stream metadata and media data normally. When the media player requests
  data, it calls the following actions:

  <ul> <li> **GetDASHManifest:** Retrieves an MPEG DASH manifest, which
  contains the metadata for the media that you want to playback.

  </li> <li> **GetMP4InitFragment:** Retrieves the MP4 initialization
  fragment. The media player typically loads the initialization fragment
  before loading any media fragments. This fragment contains the "`fytp`" and
  "`moov`" MP4 atoms, and the child atoms that are needed to initialize the
  media player decoder.

  The initialization fragment does not correspond to a fragment in a Kinesis
  video stream. It contains only the codec private data for the stream and
  respective track, which the media player needs to decode the media frames.

  </li> <li> **GetMP4MediaFragment:** Retrieves MP4 media fragments. These
  fragments contain the "`moof`" and "`mdat`" MP4 atoms and their child
  atoms, containing the encoded fragment's media frames and their timestamps.

  <note> After the first media fragment is made available in a streaming
  session, any fragments that don't contain the same codec private data cause
  an error to be returned when those different media fragments are loaded.
  Therefore, the codec private data should not change between fragments in a
  session. This also means that the session fails if the fragments in a
  stream change from having only video to having both audio and video.

  </note> Data retrieved with this action is billable. See
  [Pricing](https://aws.amazon.com/kinesis/video-streams/pricing/) for
  details.

  </li> </ul> </li> </ol> <note> The following restrictions apply to
  MPEG-DASH sessions:

  <ul> <li> A streaming session URL should not be shared between players. The
  service might throttle a session if multiple media players are sharing it.
  For connection limits, see [Kinesis Video Streams
  Limits](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/limits.html).

  </li> <li> A Kinesis video stream can have a maximum of ten active
  MPEG-DASH streaming sessions. If a new session is created when the maximum
  number of sessions is already active, the oldest (earliest created) session
  is closed. The number of active `GetMedia` connections on a Kinesis video
  stream does not count against this limit, and the number of active
  MPEG-DASH sessions does not count against the active `GetMedia` connection
  limit.

  <note> The maximum limits for active HLS and MPEG-DASH streaming sessions
  are independent of each other.

  </note> </li> </ul> </note> You can monitor the amount of data that the
  media player consumes by monitoring the `GetMP4MediaFragment.OutgoingBytes`
  Amazon CloudWatch metric. For information about using CloudWatch to monitor
  Kinesis Video Streams, see [Monitoring Kinesis Video
  Streams](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/monitoring.html).
  For pricing information, see [Amazon Kinesis Video Streams
  Pricing](https://aws.amazon.com/kinesis/video-streams/pricing/) and [AWS
  Pricing](https://aws.amazon.com/pricing/). Charges for both HLS sessions
  and outgoing AWS data apply.

  For more information about HLS, see [HTTP Live
  Streaming](https://developer.apple.com/streaming/) on the [Apple Developer
  site](https://developer.apple.com).

  <important> If an error is thrown after invoking a Kinesis Video Streams
  archived media API, in addition to the HTTP status code and the response
  body, it includes the following pieces of information:

  <ul> <li> `x-amz-ErrorType` HTTP header – contains a more specific error
  type in addition to what the HTTP status code provides.

  </li> <li> `x-amz-RequestId` HTTP header – if you want to report an issue
  to AWS, the support team can better diagnose the problem if given the
  Request Id.

  </li> </ul> Both the HTTP status code and the ErrorType header can be
  utilized to make programmatic decisions about whether errors are retry-able
  and under what conditions, as well as provide information on what actions
  the client programmer might need to take in order to successfully try
  again.

  For more information, see the **Errors** section at the bottom of this
  topic, as well as [Common
  Errors](https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html).

  </important>
  """
  def get_d_a_s_h_streaming_session_u_r_l(client, input, options \\ []) do
    path_ = "/getDASHStreamingSessionURL"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Retrieves an HTTP Live Streaming (HLS) URL for the stream. You can then
  open the URL in a browser or media player to view the stream contents.

  Both the `StreamName` and the `StreamARN` parameters are optional, but you
  must specify either the `StreamName` or the `StreamARN` when invoking this
  API operation.

  An Amazon Kinesis video stream has the following requirements for providing
  data through HLS:

  <ul> <li> The media must contain h.264 or h.265 encoded video and,
  optionally, AAC encoded audio. Specifically, the codec ID of track 1 should
  be `V_MPEG/ISO/AVC` (for h.264) or `V_MPEG/ISO/HEVC` (for h.265).
  Optionally, the codec ID of track 2 should be `A_AAC`.

  </li> <li> Data retention must be greater than 0.

  </li> <li> The video track of each fragment must contain codec private data
  in the Advanced Video Coding (AVC) for H.264 format or HEVC for H.265
  format ([MPEG-4 specification ISO/IEC
  14496-15](https://www.iso.org/standard/55980.html)). For information about
  adapting stream data to a given format, see [NAL Adaptation
  Flags](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/producer-reference-nal.html).

  </li> <li> The audio track (if present) of each fragment must contain codec
  private data in the AAC format ([AAC specification ISO/IEC
  13818-7](https://www.iso.org/standard/43345.html)).

  </li> </ul> Kinesis Video Streams HLS sessions contain fragments in the
  fragmented MPEG-4 form (also called fMP4 or CMAF) or the MPEG-2 form (also
  called TS chunks, which the HLS specification also supports). For more
  information about HLS fragment types, see the [HLS
  specification](https://tools.ietf.org/html/draft-pantos-http-live-streaming-23).

  The following procedure shows how to use HLS with Kinesis Video Streams:

  <ol> <li> Get an endpoint using
  [GetDataEndpoint](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/API_GetDataEndpoint.html),
  specifying `GET_HLS_STREAMING_SESSION_URL` for the `APIName` parameter.

  </li> <li> Retrieve the HLS URL using `GetHLSStreamingSessionURL`. Kinesis
  Video Streams creates an HLS streaming session to be used for accessing
  content in a stream using the HLS protocol. `GetHLSStreamingSessionURL`
  returns an authenticated URL (that includes an encrypted session token) for
  the session's HLS *master playlist* (the root resource needed for streaming
  with HLS).

  <note> Don't share or store this token where an unauthorized entity could
  access it. The token provides access to the content of the stream.
  Safeguard the token with the same measures that you would use with your AWS
  credentials.

  </note> The media that is made available through the playlist consists only
  of the requested stream, time range, and format. No other media data (such
  as frames outside the requested window or alternate bitrates) is made
  available.

  </li> <li> Provide the URL (containing the encrypted session token) for the
  HLS master playlist to a media player that supports the HLS protocol.
  Kinesis Video Streams makes the HLS media playlist, initialization
  fragment, and media fragments available through the master playlist URL.
  The initialization fragment contains the codec private data for the stream,
  and other data needed to set up the video or audio decoder and renderer.
  The media fragments contain H.264-encoded video frames or AAC-encoded audio
  samples.

  </li> <li> The media player receives the authenticated URL and requests
  stream metadata and media data normally. When the media player requests
  data, it calls the following actions:

  <ul> <li> **GetHLSMasterPlaylist:** Retrieves an HLS master playlist, which
  contains a URL for the `GetHLSMediaPlaylist` action for each track, and
  additional metadata for the media player, including estimated bitrate and
  resolution.

  </li> <li> **GetHLSMediaPlaylist:** Retrieves an HLS media playlist, which
  contains a URL to access the MP4 initialization fragment with the
  `GetMP4InitFragment` action, and URLs to access the MP4 media fragments
  with the `GetMP4MediaFragment` actions. The HLS media playlist also
  contains metadata about the stream that the player needs to play it, such
  as whether the `PlaybackMode` is `LIVE` or `ON_DEMAND`. The HLS media
  playlist is typically static for sessions with a `PlaybackType` of
  `ON_DEMAND`. The HLS media playlist is continually updated with new
  fragments for sessions with a `PlaybackType` of `LIVE`. There is a distinct
  HLS media playlist for the video track and the audio track (if applicable)
  that contains MP4 media URLs for the specific track.

  </li> <li> **GetMP4InitFragment:** Retrieves the MP4 initialization
  fragment. The media player typically loads the initialization fragment
  before loading any media fragments. This fragment contains the "`fytp`" and
  "`moov`" MP4 atoms, and the child atoms that are needed to initialize the
  media player decoder.

  The initialization fragment does not correspond to a fragment in a Kinesis
  video stream. It contains only the codec private data for the stream and
  respective track, which the media player needs to decode the media frames.

  </li> <li> **GetMP4MediaFragment:** Retrieves MP4 media fragments. These
  fragments contain the "`moof`" and "`mdat`" MP4 atoms and their child
  atoms, containing the encoded fragment's media frames and their timestamps.

  <note> After the first media fragment is made available in a streaming
  session, any fragments that don't contain the same codec private data cause
  an error to be returned when those different media fragments are loaded.
  Therefore, the codec private data should not change between fragments in a
  session. This also means that the session fails if the fragments in a
  stream change from having only video to having both audio and video.

  </note> Data retrieved with this action is billable. See
  [Pricing](https://aws.amazon.com/kinesis/video-streams/pricing/) for
  details.

  </li> <li> **GetTSFragment:** Retrieves MPEG TS fragments containing both
  initialization and media data for all tracks in the stream.

  <note> If the `ContainerFormat` is `MPEG_TS`, this API is used instead of
  `GetMP4InitFragment` and `GetMP4MediaFragment` to retrieve stream media.

  </note> Data retrieved with this action is billable. For more information,
  see [Kinesis Video Streams
  pricing](https://aws.amazon.com/kinesis/video-streams/pricing/).

  </li> </ul> </li> </ol> <note> The following restrictions apply to HLS
  sessions:

  <ul> <li> A streaming session URL should not be shared between players. The
  service might throttle a session if multiple media players are sharing it.
  For connection limits, see [Kinesis Video Streams
  Limits](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/limits.html).

  </li> <li> A Kinesis video stream can have a maximum of ten active HLS
  streaming sessions. If a new session is created when the maximum number of
  sessions is already active, the oldest (earliest created) session is
  closed. The number of active `GetMedia` connections on a Kinesis video
  stream does not count against this limit, and the number of active HLS
  sessions does not count against the active `GetMedia` connection limit.

  <note> The maximum limits for active HLS and MPEG-DASH streaming sessions
  are independent of each other.

  </note> </li> </ul> </note> You can monitor the amount of data that the
  media player consumes by monitoring the `GetMP4MediaFragment.OutgoingBytes`
  Amazon CloudWatch metric. For information about using CloudWatch to monitor
  Kinesis Video Streams, see [Monitoring Kinesis Video
  Streams](http://docs.aws.amazon.com/kinesisvideostreams/latest/dg/monitoring.html).
  For pricing information, see [Amazon Kinesis Video Streams
  Pricing](https://aws.amazon.com/kinesis/video-streams/pricing/) and [AWS
  Pricing](https://aws.amazon.com/pricing/). Charges for both HLS sessions
  and outgoing AWS data apply.

  For more information about HLS, see [HTTP Live
  Streaming](https://developer.apple.com/streaming/) on the [Apple Developer
  site](https://developer.apple.com).

  <important> If an error is thrown after invoking a Kinesis Video Streams
  archived media API, in addition to the HTTP status code and the response
  body, it includes the following pieces of information:

  <ul> <li> `x-amz-ErrorType` HTTP header – contains a more specific error
  type in addition to what the HTTP status code provides.

  </li> <li> `x-amz-RequestId` HTTP header – if you want to report an issue
  to AWS, the support team can better diagnose the problem if given the
  Request Id.

  </li> </ul> Both the HTTP status code and the ErrorType header can be
  utilized to make programmatic decisions about whether errors are retry-able
  and under what conditions, as well as provide information on what actions
  the client programmer might need to take in order to successfully try
  again.

  For more information, see the **Errors** section at the bottom of this
  topic, as well as [Common
  Errors](https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html).

  </important>
  """
  def get_h_l_s_streaming_session_u_r_l(client, input, options \\ []) do
    path_ = "/getHLSStreamingSessionURL"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @doc """
  Gets media for a list of fragments (specified by fragment number) from the
  archived data in an Amazon Kinesis video stream.

  <note> You must first call the `GetDataEndpoint` API to get an endpoint.
  Then send the `GetMediaForFragmentList` requests to this endpoint using the
  [--endpoint-url
  parameter](https://docs.aws.amazon.com/cli/latest/reference/).

  </note> The following limits apply when using the `GetMediaForFragmentList`
  API:

  <ul> <li> A client can call `GetMediaForFragmentList` up to five times per
  second per stream.

  </li> <li> Kinesis Video Streams sends media data at a rate of up to 25
  megabytes per second (or 200 megabits per second) during a
  `GetMediaForFragmentList` session.

  </li> </ul> <important> If an error is thrown after invoking a Kinesis
  Video Streams archived media API, in addition to the HTTP status code and
  the response body, it includes the following pieces of information:

  <ul> <li> `x-amz-ErrorType` HTTP header – contains a more specific error
  type in addition to what the HTTP status code provides.

  </li> <li> `x-amz-RequestId` HTTP header – if you want to report an issue
  to AWS, the support team can better diagnose the problem if given the
  Request Id.

  </li> </ul> Both the HTTP status code and the ErrorType header can be
  utilized to make programmatic decisions about whether errors are retry-able
  and under what conditions, as well as provide information on what actions
  the client programmer might need to take in order to successfully try
  again.

  For more information, see the **Errors** section at the bottom of this
  topic, as well as [Common
  Errors](https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html).

  </important>
  """
  def get_media_for_fragment_list(client, input, options \\ []) do
    path_ = "/getMediaForFragmentList"
    headers = []
    query_ = []
    case request(client, :post, path_, query_, headers, input, options, nil) do
      {:ok, body, response} when not is_nil(body) ->
        body =
          [
            {"Content-Type", "ContentType"},
          ]
          |> Enum.reduce(body, fn {header_name, key}, acc ->
            case List.keyfind(response.headers, header_name, 0) do
              nil -> acc
              {_header_name, value} -> Map.put(acc, key, value)
            end
          end)

        {:ok, body, response}

      result ->
        result
    end
  end

  @doc """
  Returns a list of `Fragment` objects from the specified stream and
  timestamp range within the archived data.

  Listing fragments is eventually consistent. This means that even if the
  producer receives an acknowledgment that a fragment is persisted, the
  result might not be returned immediately from a request to `ListFragments`.
  However, results are typically available in less than one second.

  <note> You must first call the `GetDataEndpoint` API to get an endpoint.
  Then send the `ListFragments` requests to this endpoint using the
  [--endpoint-url
  parameter](https://docs.aws.amazon.com/cli/latest/reference/).

  </note> <important> If an error is thrown after invoking a Kinesis Video
  Streams archived media API, in addition to the HTTP status code and the
  response body, it includes the following pieces of information:

  <ul> <li> `x-amz-ErrorType` HTTP header – contains a more specific error
  type in addition to what the HTTP status code provides.

  </li> <li> `x-amz-RequestId` HTTP header – if you want to report an issue
  to AWS, the support team can better diagnose the problem if given the
  Request Id.

  </li> </ul> Both the HTTP status code and the ErrorType header can be
  utilized to make programmatic decisions about whether errors are retry-able
  and under what conditions, as well as provide information on what actions
  the client programmer might need to take in order to successfully try
  again.

  For more information, see the **Errors** section at the bottom of this
  topic, as well as [Common
  Errors](https://docs.aws.amazon.com/kinesisvideostreams/latest/dg/CommonErrors.html).

  </important>
  """
  def list_fragments(client, input, options \\ []) do
    path_ = "/listFragments"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, nil)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "kinesisvideo"}
    host = build_host("kinesisvideo", client)
    url = host
    |> build_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case AWS.HTTP.request(method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when status_code in [200, 202, 204] ->
        body = if(body != "", do: AWS.JSON.decode!(body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, AWS.JSON.decode!(body)}

      error = {:error, _reason} -> error
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case AWS.HTTP.request(method, url, payload, headers, options) do
      {:ok, %{status_code: ^success_status_code, body: body} = response} ->
        body = if(body != "", do: AWS.JSON.decode!(body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, AWS.JSON.decode!(body)}

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

  defp build_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: AWS.JSON.encode!(input), else: ""
  end
end
