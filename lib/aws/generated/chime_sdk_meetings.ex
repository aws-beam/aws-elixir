# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ChimeSDKMeetings do
  @moduledoc """
  The Amazon Chime SDK meetings APIs in this section allow software developers to
  create Amazon Chime SDK meetings, set the AWS Regions for meetings, create and
  manage users, and send and receive meeting notifications.

  For more information about the meeting APIs, see [Amazon Chime SDK meetings](https://docs.aws.amazon.com/chime/latest/APIReference/API_Operations_Amazon_Chime_SDK_Meetings.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2021-07-15",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "meetings-chime",
      global?: false,
      protocol: "rest-json",
      service_id: "Chime SDK Meetings",
      signature_version: "v4",
      signing_name: "chime",
      target_prefix: nil
    }
  end

  @doc """
  Creates up to 100 attendees for an active Amazon Chime SDK meeting.

  For more information about the Amazon Chime SDK, see [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
  *Amazon Chime Developer Guide*.
  """
  def batch_create_attendee(%Client{} = client, meeting_id, input, options \\ []) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}/attendees?operation=batch-create"
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
      nil
    )
  end

  @doc """
  Updates `AttendeeCapabilities` except the capabilities listed in an
  `ExcludedAttendeeIds` table.

  You use the capabilities with a set of values that control what the capabilities
  can do, such as `SendReceive` data. For more information about those values, see
  .

  When using capabilities, be aware of these corner cases:

    * You can't set `content` capabilities to `SendReceive` or `Receive`
  unless you also set `video` capabilities to `SendReceive` or `Receive`. If you
  don't set the `video` capability to receive, the response will contain an HTTP
  400 Bad Request status code. However, you can set your `video` capability to
  receive and you set your `content` capability to not receive.

    * When you change an `audio` capability from `None` or `Receive` to
  `Send` or `SendReceive` , and if the attendee left their microphone unmuted,
  audio will flow from the attendee to the other meeting participants.

    * When you change a `video` or `content` capability from `None` or
  `Receive` to `Send` or `SendReceive` , and if the attendee turned on their video
  or content streams, remote attendess can receive those streams, but only after
  media renegotiation between the client and the Amazon Chime back-end server.
  """
  def batch_update_attendee_capabilities_except(
        %Client{} = client,
        meeting_id,
        input,
        options \\ []
      ) do
    url_path =
      "/meetings/#{AWS.Util.encode_uri(meeting_id)}/attendees/capabilities?operation=batch-update-except"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a new attendee for an active Amazon Chime SDK meeting.

  For more information about the Amazon Chime SDK, see [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
  *Amazon Chime Developer Guide*.
  """
  def create_attendee(%Client{} = client, meeting_id, input, options \\ []) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}/attendees"
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
      nil
    )
  end

  @doc """
  Creates a new Amazon Chime SDK meeting in the specified media Region with no
  initial attendees.

  For more information about specifying media Regions, see [Amazon Chime SDK Media Regions](https://docs.aws.amazon.com/chime/latest/dg/chime-sdk-meetings-regions.html)
  in the *Amazon Chime Developer Guide*. For more information about the Amazon
  Chime SDK, see [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
  *Amazon Chime Developer Guide*.
  """
  def create_meeting(%Client{} = client, input, options \\ []) do
    url_path = "/meetings"
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
      nil
    )
  end

  @doc """
  Creates a new Amazon Chime SDK meeting in the specified media Region, with
  attendees.

  For more information about specifying media Regions, see [Amazon Chime SDK Media Regions](https://docs.aws.amazon.com/chime/latest/dg/chime-sdk-meetings-regions.html)
  in the *Amazon Chime Developer Guide*. For more information about the Amazon
  Chime SDK, see [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
  *Amazon Chime Developer Guide*.
  """
  def create_meeting_with_attendees(%Client{} = client, input, options \\ []) do
    url_path = "/meetings?operation=create-attendees"
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
      nil
    )
  end

  @doc """
  Deletes an attendee from the specified Amazon Chime SDK meeting and deletes
  their `JoinToken`.

  Attendees are automatically deleted when a Amazon Chime SDK meeting is deleted.
  For more information about the Amazon Chime SDK, see [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
  *Amazon Chime Developer Guide*.
  """
  def delete_attendee(%Client{} = client, attendee_id, meeting_id, input, options \\ []) do
    url_path =
      "/meetings/#{AWS.Util.encode_uri(meeting_id)}/attendees/#{AWS.Util.encode_uri(attendee_id)}"

    headers = []
    query_params = []

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
      204
    )
  end

  @doc """
  Deletes the specified Amazon Chime SDK meeting.

  The operation deletes all attendees, disconnects all clients, and prevents new
  clients from joining the meeting. For more information about the Amazon Chime
  SDK, see [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
  *Amazon Chime Developer Guide*.
  """
  def delete_meeting(%Client{} = client, meeting_id, input, options \\ []) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}"
    headers = []
    query_params = []

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
      204
    )
  end

  @doc """
  Gets the Amazon Chime SDK attendee details for a specified meeting ID and
  attendee ID.

  For more information about the Amazon Chime SDK, see [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
  *Amazon Chime Developer Guide*.
  """
  def get_attendee(%Client{} = client, attendee_id, meeting_id, options \\ []) do
    url_path =
      "/meetings/#{AWS.Util.encode_uri(meeting_id)}/attendees/#{AWS.Util.encode_uri(attendee_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Gets the Amazon Chime SDK meeting details for the specified meeting ID.

  For more information about the Amazon Chime SDK, see [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
  *Amazon Chime Developer Guide*.
  """
  def get_meeting(%Client{} = client, meeting_id, options \\ []) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, nil)
  end

  @doc """
  Lists the attendees for the specified Amazon Chime SDK meeting.

  For more information about the Amazon Chime SDK, see [Using the Amazon Chime SDK](https://docs.aws.amazon.com/chime/latest/dg/meetings-sdk.html) in the
  *Amazon Chime Developer Guide*.
  """
  def list_attendees(
        %Client{} = client,
        meeting_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}/attendees"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"next-token", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"max-results", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of the tags available for the specified resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags"
    headers = []
    query_params = []

    query_params =
      if !is_nil(resource_arn) do
        [{"arn", resource_arn} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts transcription for the specified `meetingId`.

  For more information, refer to [ Using Amazon Chime SDK live transcription
  ](https://docs.aws.amazon.com/chime-sdk/latest/dg/meeting-transcription.html) in
  the *Amazon Chime SDK Developer Guide*.

  Amazon Chime SDK live transcription is powered by Amazon Transcribe. Use of
  Amazon Transcribe is subject to the [AWS Service Terms](https://aws.amazon.com/service-terms/), including the terms specific to
  the AWS Machine Learning and Artificial Intelligence Services.
  """
  def start_meeting_transcription(%Client{} = client, meeting_id, input, options \\ []) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}/transcription?operation=start"
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
  Stops transcription for the specified `meetingId`.

  For more information, refer to [ Using Amazon Chime SDK live transcription
  ](https://docs.aws.amazon.com/chime-sdk/latest/dg/meeting-transcription.html) in
  the *Amazon Chime SDK Developer Guide*.

  Amazon Chime SDK live transcription is powered by Amazon Transcribe. Use of
  Amazon Transcribe is subject to the [AWS Service Terms](https://aws.amazon.com/service-terms/), including the terms specific to
  the AWS Machine Learning and Artificial Intelligence Services.
  """
  def stop_meeting_transcription(%Client{} = client, meeting_id, input, options \\ []) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}/transcription?operation=stop"
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
  The resource that supports tags.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags?operation=tag-resource"
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
  Removes the specified tags from the specified resources.

  When you specify a tag key, the action removes both that key and its associated
  value. The operation succeeds even if you attempt to remove tags from a resource
  that were already removed. Note the following:

    * To remove tags from a resource, you need the necessary permissions
  for the service that the resource belongs to as well as permissions for removing
  tags. For more information, see the documentation for the service whose resource
  you want to untag.

    * You can only tag resources that are located in the specified AWS
  Region for the calling AWS account.

  ## Minimum permissions

  In addition to the `tag:UntagResources` permission required by this operation,
  you must also have the remove tags permission defined by the service that
  created the resource. For example, to remove the tags from an Amazon EC2
  instance using the `UntagResources` operation, you must have both of the
  following permissions:

  `tag:UntagResource`

  `ChimeSDKMeetings:DeleteTags`
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/tags?operation=untag-resource"
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
  The capabilties that you want to update.

  You use the capabilities with a set of values that control what the capabilities
  can do, such as `SendReceive` data. For more information about those values, see
  .

  When using capabilities, be aware of these corner cases:

    * You can't set `content` capabilities to `SendReceive` or `Receive`
  unless you also set `video` capabilities to `SendReceive` or `Receive`. If you
  don't set the `video` capability to receive, the response will contain an HTTP
  400 Bad Request status code. However, you can set your `video` capability to
  receive and you set your `content` capability to not receive.

    * When you change an `audio` capability from `None` or `Receive` to
  `Send` or `SendReceive` , and if the attendee left their microphone unmuted,
  audio will flow from the attendee to the other meeting participants.

    * When you change a `video` or `content` capability from `None` or
  `Receive` to `Send` or `SendReceive` , and if the attendee turned on their video
  or content streams, remote attendess can receive those streams, but only after
  media renegotiation between the client and the Amazon Chime back-end server.
  """
  def update_attendee_capabilities(
        %Client{} = client,
        attendee_id,
        meeting_id,
        input,
        options \\ []
      ) do
    url_path =
      "/meetings/#{AWS.Util.encode_uri(meeting_id)}/attendees/#{AWS.Util.encode_uri(attendee_id)}/capabilities"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, nil)
  end
end
