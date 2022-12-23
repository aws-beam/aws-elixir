# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.KinesisVideoWebRTCStorage do
  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2018-05-10",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "kinesisvideo",
      global?: false,
      protocol: "rest-json",
      service_id: "Kinesis Video WebRTC Storage",
      signature_version: "v4",
      signing_name: "kinesisvideo",
      target_prefix: nil
    }
  end

  @doc """
  Join the ongoing one way-video and/or multi-way audio WebRTC session as a video
  producing device for an input channel.

  If there’s no existing session for the channel, a new streaming session needs to
  be created, and the Amazon Resource Name (ARN) of the signaling channel must be
  provided.

  Currently for the `SINGLE_MASTER` type, a video producing device is able to
  ingest both audio and video media into a stream, while viewers can only ingest
  audio. Both a video producing device and viewers can join the session first, and
  wait for other participants.

  While participants are having peer to peer conversations through webRTC, the
  ingested media session will be stored into the Kinesis Video Stream. Multiple
  viewers are able to playback real-time media.

  Customers can also use existing Kinesis Video Streams features like `HLS` or
  `DASH` playback, Image generation, and more with ingested WebRTC media.

  Assume that only one video producing device client can be associated with a
  session for the channel. If more than one client joins the session of a specific
  channel as a video producing device, the most recent client request takes
  precedence.
  """
  def join_storage_session(%Client{} = client, input, options \\ []) do
    url_path = "/joinStorageSession"
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
