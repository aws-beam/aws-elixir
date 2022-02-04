# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Nimble do
  @moduledoc """
  Welcome to the Amazon Nimble Studio API reference.

  This API reference provides methods, schema, resources, parameters, and more to
  help you get the most out of Nimble Studio.

  Nimble Studio is a virtual studio that empowers visual effects, animation, and
  interactive content teams to create content securely within a scalable, private
  cloud service.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2020-08-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "nimble",
      global?: false,
      protocol: "rest-json",
      service_id: "nimble",
      signature_version: "v4",
      signing_name: "nimble",
      target_prefix: nil
    }
  end

  @doc """
  Accept EULAs.
  """
  def accept_eulas(%Client{} = client, studio_id, input, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/eula-acceptances"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Create a launch profile.
  """
  def create_launch_profile(%Client{} = client, studio_id, input, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates a streaming image resource in a studio.
  """
  def create_streaming_image(%Client{} = client, studio_id, input, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-images"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates a streaming session in a studio.

  After invoking this operation, you must poll GetStreamingSession until the
  streaming session is in state READY.
  """
  def create_streaming_session(%Client{} = client, studio_id, input, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-sessions"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates a streaming session stream for a streaming session.

  After invoking this API, invoke GetStreamingSessionStream with the returned
  streamId to poll the resource until it is in state READY.
  """
  def create_streaming_session_stream(
        %Client{} = client,
        session_id,
        studio_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-sessions/#{AWS.Util.encode_uri(session_id)}/streams"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Create a new Studio.

  When creating a Studio, two IAM roles must be provided: the admin role and the
  user Role. These roles are assumed by your users when they log in to the Nimble
  Studio portal.

  The user role must have the AmazonNimbleStudio-StudioUser managed policy
  attached for the portal to function properly.

  The Admin Role must have the AmazonNimbleStudio-StudioAdmin managed policy
  attached for the portal to function properly.

  You may optionally specify a KMS key in the StudioEncryptionConfiguration.

  In Nimble Studio, resource names, descriptions, initialization scripts, and
  other data you provide are always encrypted at rest using an KMS key. By
  default, this key is owned by Amazon Web Services and managed on your behalf.
  You may provide your own KMS key when calling CreateStudio to encrypt this data
  using a key you own and manage.

  When providing an KMS key during studio creation, Nimble Studio creates KMS
  grants in your account to provide your studio user and admin roles access to
  these KMS keys.

  If you delete this grant, the studio will no longer be accessible to your portal
  users.

  If you delete the studio KMS key, your studio will no longer be accessible.
  """
  def create_studio(%Client{} = client, input, options \\ []) do
    url_path = "/2020-08-01/studios"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates a studio component resource.
  """
  def create_studio_component(%Client{} = client, studio_id, input, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/studio-components"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Permanently delete a launch profile.
  """
  def delete_launch_profile(
        %Client{} = client,
        launch_profile_id,
        studio_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
      200
    )
  end

  @doc """
  Delete a user from launch profile membership.
  """
  def delete_launch_profile_member(
        %Client{} = client,
        launch_profile_id,
        principal_id,
        studio_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}/membership/#{AWS.Util.encode_uri(principal_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
      200
    )
  end

  @doc """
  Delete streaming image.
  """
  def delete_streaming_image(
        %Client{} = client,
        streaming_image_id,
        studio_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-images/#{AWS.Util.encode_uri(streaming_image_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
      200
    )
  end

  @doc """
  Deletes streaming session resource.

  After invoking this operation, use GetStreamingSession to poll the resource
  until it transitions to a DELETED state.

  A streaming session will count against your streaming session quota until it is
  marked DELETED.
  """
  def delete_streaming_session(%Client{} = client, session_id, studio_id, input, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-sessions/#{AWS.Util.encode_uri(session_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
      200
    )
  end

  @doc """
  Delete a studio resource.
  """
  def delete_studio(%Client{} = client, studio_id, input, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
      200
    )
  end

  @doc """
  Deletes a studio component resource.
  """
  def delete_studio_component(
        %Client{} = client,
        studio_component_id,
        studio_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/studio-components/#{AWS.Util.encode_uri(studio_component_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
      200
    )
  end

  @doc """
  Delete a user from studio membership.
  """
  def delete_studio_member(%Client{} = client, principal_id, studio_id, input, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/membership/#{AWS.Util.encode_uri(principal_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
      200
    )
  end

  @doc """
  Get Eula.
  """
  def get_eula(%Client{} = client, eula_id, options \\ []) do
    url_path = "/2020-08-01/eulas/#{AWS.Util.encode_uri(eula_id)}"
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
      200
    )
  end

  @doc """
  Get a launch profile.
  """
  def get_launch_profile(%Client{} = client, launch_profile_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}"

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
      200
    )
  end

  @doc """
  Launch profile details include the launch profile resource and summary
  information of resources that are used by, or available to, the launch profile.

  This includes the name and description of all studio components used by the
  launch profiles, and the name and description of streaming images that can be
  used with this launch profile.
  """
  def get_launch_profile_details(%Client{} = client, launch_profile_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}/details"

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
      200
    )
  end

  @doc """
  Get a launch profile initialization.
  """
  def get_launch_profile_initialization(
        %Client{} = client,
        launch_profile_id,
        studio_id,
        launch_profile_protocol_versions,
        launch_purpose,
        platform,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}/init"

    headers = []
    query_params = []

    query_params =
      if !is_nil(platform) do
        [{"platform", platform} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(launch_purpose) do
        [{"launchPurpose", launch_purpose} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(launch_profile_protocol_versions) do
        [{"launchProfileProtocolVersions", launch_profile_protocol_versions} | query_params]
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
  Get a user persona in launch profile membership.
  """
  def get_launch_profile_member(
        %Client{} = client,
        launch_profile_id,
        principal_id,
        studio_id,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}/membership/#{AWS.Util.encode_uri(principal_id)}"

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
      200
    )
  end

  @doc """
  Get streaming image.
  """
  def get_streaming_image(%Client{} = client, streaming_image_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-images/#{AWS.Util.encode_uri(streaming_image_id)}"

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
      200
    )
  end

  @doc """
  Gets StreamingSession resource.

  Invoke this operation to poll for a streaming session state while creating or
  deleting a session.
  """
  def get_streaming_session(%Client{} = client, session_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-sessions/#{AWS.Util.encode_uri(session_id)}"

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
      200
    )
  end

  @doc """
  Gets a StreamingSessionStream for a streaming session.

  Invoke this operation to poll the resource after invoking
  CreateStreamingSessionStream.

  After the StreamingSessionStream changes to the state READY, the url property
  will contain a stream to be used with the DCV streaming client.
  """
  def get_streaming_session_stream(
        %Client{} = client,
        session_id,
        stream_id,
        studio_id,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-sessions/#{AWS.Util.encode_uri(session_id)}/streams/#{AWS.Util.encode_uri(stream_id)}"

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
      200
    )
  end

  @doc """
  Get a Studio resource.
  """
  def get_studio(%Client{} = client, studio_id, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}"
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
      200
    )
  end

  @doc """
  Gets a studio component resource.
  """
  def get_studio_component(%Client{} = client, studio_component_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/studio-components/#{AWS.Util.encode_uri(studio_component_id)}"

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
      200
    )
  end

  @doc """
  Get a user's membership in a studio.
  """
  def get_studio_member(%Client{} = client, principal_id, studio_id, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/membership/#{AWS.Util.encode_uri(principal_id)}"

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
      200
    )
  end

  @doc """
  List Eula Acceptances.
  """
  def list_eula_acceptances(
        %Client{} = client,
        studio_id,
        eula_ids \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/eula-acceptances"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(eula_ids) do
        [{"eulaIds", eula_ids} | query_params]
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
  List Eulas.
  """
  def list_eulas(%Client{} = client, eula_ids \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/2020-08-01/eulas"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(eula_ids) do
        [{"eulaIds", eula_ids} | query_params]
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
  Get all users in a given launch profile membership.
  """
  def list_launch_profile_members(
        %Client{} = client,
        launch_profile_id,
        studio_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}/membership"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
  List all the launch profiles a studio.
  """
  def list_launch_profiles(
        %Client{} = client,
        studio_id,
        max_results \\ nil,
        next_token \\ nil,
        principal_id \\ nil,
        states \\ nil,
        options \\ []
      ) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles"
    headers = []
    query_params = []

    query_params =
      if !is_nil(states) do
        [{"states", states} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(principal_id) do
        [{"principalId", principal_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
  List the streaming image resources available to this studio.

  This list will contain both images provided by Amazon Web Services, as well as
  streaming images that you have created in your studio.
  """
  def list_streaming_images(
        %Client{} = client,
        studio_id,
        next_token \\ nil,
        owner \\ nil,
        options \\ []
      ) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-images"
    headers = []
    query_params = []

    query_params =
      if !is_nil(owner) do
        [{"owner", owner} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
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
  Lists the streaming image resources in a studio.
  """
  def list_streaming_sessions(
        %Client{} = client,
        studio_id,
        created_by \\ nil,
        next_token \\ nil,
        owned_by \\ nil,
        session_ids \\ nil,
        options \\ []
      ) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-sessions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(session_ids) do
        [{"sessionIds", session_ids} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(owned_by) do
        [{"ownedBy", owned_by} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(created_by) do
        [{"createdBy", created_by} | query_params]
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
  Lists the StudioComponents in a studio.
  """
  def list_studio_components(
        %Client{} = client,
        studio_id,
        max_results \\ nil,
        next_token \\ nil,
        states \\ nil,
        types \\ nil,
        options \\ []
      ) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/studio-components"
    headers = []
    query_params = []

    query_params =
      if !is_nil(types) do
        [{"types", types} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(states) do
        [{"states", states} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
  Get all users in a given studio membership.

  `ListStudioMembers` only returns admin members.
  """
  def list_studio_members(
        %Client{} = client,
        studio_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/membership"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
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
  List studios in your Amazon Web Services account in the requested Amazon Web
  Services Region.
  """
  def list_studios(%Client{} = client, next_token \\ nil, options \\ []) do
    url_path = "/2020-08-01/studios"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
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
  Gets the tags for a resource, given its Amazon Resource Names (ARN).

  This operation supports ARNs for all resource types in Nimble Studio that
  support tags, including studio, studio component, launch profile, streaming
  image, and streaming session. All resources that can be tagged will contain an
  ARN property, so you do not have to create this ARN yourself.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/2020-08-01/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      200
    )
  end

  @doc """
  Add/update users with given persona to launch profile membership.
  """
  def put_launch_profile_members(
        %Client{} = client,
        launch_profile_id,
        studio_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}/membership"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Add/update users with given persona to studio membership.
  """
  def put_studio_members(%Client{} = client, studio_id, input, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/membership"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Transitions sessions from the STOPPED state into the READY state.

  The START_IN_PROGRESS state is the intermediate state between the STOPPED and
  READY states.
  """
  def start_streaming_session(%Client{} = client, session_id, studio_id, input, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-sessions/#{AWS.Util.encode_uri(session_id)}/start"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Repairs the Amazon Web Services SSO configuration for a given studio.

  If the studio has a valid Amazon Web Services SSO configuration currently
  associated with it, this operation will fail with a validation error.

  If the studio does not have a valid Amazon Web Services SSO configuration
  currently associated with it, then a new Amazon Web Services SSO application is
  created for the studio and the studio is changed to the READY state.

  After the Amazon Web Services SSO application is repaired, you must use the
  Amazon Nimble Studio console to add administrators and users to your studio.
  """
  def start_studio_s_s_o_configuration_repair(%Client{} = client, studio_id, input, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/sso-configuration"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Transitions sessions from the READY state into the STOPPED state.

  The STOP_IN_PROGRESS state is the intermediate state between the READY and
  STOPPED states.
  """
  def stop_streaming_session(%Client{} = client, session_id, studio_id, input, options \\ []) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-sessions/#{AWS.Util.encode_uri(session_id)}/stop"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

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
  Creates tags for a resource, given its ARN.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/2020-08-01/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
      204
    )
  end

  @doc """
  Deletes the tags for a resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/2020-08-01/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

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
  Update a launch profile.
  """
  def update_launch_profile(
        %Client{} = client,
        launch_profile_id,
        studio_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update a user persona in launch profile membership.
  """
  def update_launch_profile_member(
        %Client{} = client,
        launch_profile_id,
        principal_id,
        studio_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/launch-profiles/#{AWS.Util.encode_uri(launch_profile_id)}/membership/#{AWS.Util.encode_uri(principal_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update streaming image.
  """
  def update_streaming_image(
        %Client{} = client,
        streaming_image_id,
        studio_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/streaming-images/#{AWS.Util.encode_uri(streaming_image_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Update a Studio resource.

  Currently, this operation only supports updating the displayName of your studio.
  """
  def update_studio(%Client{} = client, studio_id, input, options \\ []) do
    url_path = "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a studio component resource.
  """
  def update_studio_component(
        %Client{} = client,
        studio_component_id,
        studio_id,
        input,
        options \\ []
      ) do
    url_path =
      "/2020-08-01/studios/#{AWS.Util.encode_uri(studio_id)}/studio-components/#{AWS.Util.encode_uri(studio_component_id)}"

    {headers, input} =
      [
        {"clientToken", "X-Amz-Client-Token"}
      ]
      |> Request.build_params(input)

    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :patch,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
