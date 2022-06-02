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
    %AWS.ServiceMetadata{
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
  Updates `AttendeeCapabilities` except the capabilities listed in an
  `ExcludedAttendeeIds` table.
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

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
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

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Starts transcription for the specified `meetingId`.
  """
  def start_meeting_transcription(%Client{} = client, meeting_id, input, options \\ []) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}/transcription?operation=start"
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
      200
    )
  end

  @doc """
  Stops transcription for the specified `meetingId`.
  """
  def stop_meeting_transcription(%Client{} = client, meeting_id, input, options \\ []) do
    url_path = "/meetings/#{AWS.Util.encode_uri(meeting_id)}/transcription?operation=stop"
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
      200
    )
  end

  @doc """
  The capabilties that you want to update.
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

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end
end
