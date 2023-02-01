# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.GroundStation do
  @moduledoc """
  Welcome to the AWS Ground Station API Reference.

  AWS Ground Station is a fully managed service that enables you to control
  satellite communications, downlink and process satellite data, and scale your
  satellite operations efficiently and cost-effectively without having to build or
  manage your own ground station infrastructure.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2019-05-23",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "groundstation",
      global?: false,
      protocol: "rest-json",
      service_id: "GroundStation",
      signature_version: "v4",
      signing_name: "groundstation",
      target_prefix: nil
    }
  end

  @doc """
  Cancels a contact with a specified contact ID.
  """
  def cancel_contact(%Client{} = client, contact_id, input, options \\ []) do
    url_path = "/contact/#{AWS.Util.encode_uri(contact_id)}"
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
      200
    )
  end

  @doc """
  Creates a `Config` with the specified `configData` parameters.

  Only one type of `configData` can be specified.
  """
  def create_config(%Client{} = client, input, options \\ []) do
    url_path = "/config"
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
  Creates a `DataflowEndpoint` group containing the specified list of
  `DataflowEndpoint` objects.

  The `name` field in each endpoint is used in your mission profile
  `DataflowEndpointConfig` to specify which endpoints to use during a contact.

  When a contact uses multiple `DataflowEndpointConfig` objects, each `Config`
  must match a `DataflowEndpoint` in the same group.
  """
  def create_dataflow_endpoint_group(%Client{} = client, input, options \\ []) do
    url_path = "/dataflowEndpointGroup"
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
  Creates an Ephemeris with the specified `EphemerisData`.
  """
  def create_ephemeris(%Client{} = client, input, options \\ []) do
    url_path = "/ephemeris"
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
  Creates a mission profile.

  `dataflowEdges` is a list of lists of strings. Each lower level list of strings
  has two elements: a *from* ARN and a *to* ARN.
  """
  def create_mission_profile(%Client{} = client, input, options \\ []) do
    url_path = "/missionprofile"
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
  Deletes a `Config`.
  """
  def delete_config(%Client{} = client, config_id, config_type, input, options \\ []) do
    url_path = "/config/#{AWS.Util.encode_uri(config_type)}/#{AWS.Util.encode_uri(config_id)}"
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
      200
    )
  end

  @doc """
  Deletes a dataflow endpoint group.
  """
  def delete_dataflow_endpoint_group(
        %Client{} = client,
        dataflow_endpoint_group_id,
        input,
        options \\ []
      ) do
    url_path = "/dataflowEndpointGroup/#{AWS.Util.encode_uri(dataflow_endpoint_group_id)}"
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
      200
    )
  end

  @doc """
  Deletes an ephemeris
  """
  def delete_ephemeris(%Client{} = client, ephemeris_id, input, options \\ []) do
    url_path = "/ephemeris/#{AWS.Util.encode_uri(ephemeris_id)}"
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
      200
    )
  end

  @doc """
  Deletes a mission profile.
  """
  def delete_mission_profile(%Client{} = client, mission_profile_id, input, options \\ []) do
    url_path = "/missionprofile/#{AWS.Util.encode_uri(mission_profile_id)}"
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
      200
    )
  end

  @doc """
  Describes an existing contact.
  """
  def describe_contact(%Client{} = client, contact_id, options \\ []) do
    url_path = "/contact/#{AWS.Util.encode_uri(contact_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes an existing ephemeris.
  """
  def describe_ephemeris(%Client{} = client, ephemeris_id, options \\ []) do
    url_path = "/ephemeris/#{AWS.Util.encode_uri(ephemeris_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets the latest configuration information for a registered agent.
  """
  def get_agent_configuration(%Client{} = client, agent_id, options \\ []) do
    url_path = "/agent/#{AWS.Util.encode_uri(agent_id)}/configuration"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns `Config` information.

  Only one `Config` response can be returned.
  """
  def get_config(%Client{} = client, config_id, config_type, options \\ []) do
    url_path = "/config/#{AWS.Util.encode_uri(config_type)}/#{AWS.Util.encode_uri(config_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the dataflow endpoint group.
  """
  def get_dataflow_endpoint_group(%Client{} = client, dataflow_endpoint_group_id, options \\ []) do
    url_path = "/dataflowEndpointGroup/#{AWS.Util.encode_uri(dataflow_endpoint_group_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the number of minutes used by account.
  """
  def get_minute_usage(%Client{} = client, input, options \\ []) do
    url_path = "/minute-usage"
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
  Returns a mission profile.
  """
  def get_mission_profile(%Client{} = client, mission_profile_id, options \\ []) do
    url_path = "/missionprofile/#{AWS.Util.encode_uri(mission_profile_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a satellite.
  """
  def get_satellite(%Client{} = client, satellite_id, options \\ []) do
    url_path = "/satellite/#{AWS.Util.encode_uri(satellite_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of `Config` objects.
  """
  def list_configs(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/config"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of contacts.

  If `statusList` contains AVAILABLE, the request must include `groundStation`,
  `missionprofileArn`, and `satelliteArn`.
  """
  def list_contacts(%Client{} = client, input, options \\ []) do
    url_path = "/contacts"
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
  Returns a list of `DataflowEndpoint` groups.
  """
  def list_dataflow_endpoint_groups(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/dataflowEndpointGroup"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List existing ephemerides.
  """
  def list_ephemerides(%Client{} = client, input, options \\ []) do
    url_path = "/ephemerides"
    headers = []

    {query_params, input} =
      [
        {"maxResults", "maxResults"},
        {"nextToken", "nextToken"}
      ]
      |> Request.build_params(input)

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
  Returns a list of ground stations.
  """
  def list_ground_stations(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        satellite_id \\ nil,
        options \\ []
      ) do
    url_path = "/groundstation"
    headers = []
    query_params = []

    query_params =
      if !is_nil(satellite_id) do
        [{"satelliteId", satellite_id} | query_params]
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of mission profiles.
  """
  def list_mission_profiles(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/missionprofile"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of satellites.
  """
  def list_satellites(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/satellite"
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

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns a list of tags for a specified resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Registers a new agent with AWS Groundstation.
  """
  def register_agent(%Client{} = client, input, options \\ []) do
    url_path = "/agent"
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
  Reserves a contact using specified parameters.
  """
  def reserve_contact(%Client{} = client, input, options \\ []) do
    url_path = "/contact"
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
  Assigns a tag to a resource.
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
  Deassigns a resource tag.
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
  Update the status of the agent.
  """
  def update_agent_status(%Client{} = client, agent_id, input, options \\ []) do
    url_path = "/agent/#{AWS.Util.encode_uri(agent_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the `Config` used when scheduling contacts.

  Updating a `Config` will not update the execution parameters for existing future
  contacts scheduled with this `Config`.
  """
  def update_config(%Client{} = client, config_id, config_type, input, options \\ []) do
    url_path = "/config/#{AWS.Util.encode_uri(config_type)}/#{AWS.Util.encode_uri(config_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates an existing ephemeris
  """
  def update_ephemeris(%Client{} = client, ephemeris_id, input, options \\ []) do
    url_path = "/ephemeris/#{AWS.Util.encode_uri(ephemeris_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a mission profile.

  Updating a mission profile will not update the execution parameters for existing
  future contacts.
  """
  def update_mission_profile(%Client{} = client, mission_profile_id, input, options \\ []) do
    url_path = "/missionprofile/#{AWS.Util.encode_uri(mission_profile_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
