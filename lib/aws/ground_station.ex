# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.GroundStation do
  @moduledoc """
  Welcome to the AWS Ground Station API Reference. AWS Ground Station is a
  fully managed service that enables you to control satellite communications,
  downlink and process satellite data, and scale your satellite operations
  efficiently and cost-effectively without having to build or manage your own
  ground station infrastructure.
  """

  @doc """
  Cancels a contact with a specified contact ID.
  """
  def cancel_contact(client, contact_id, input, options \\ []) do
    path_ = "/contact/#{URI.encode(contact_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a `Config` with the specified `configData` parameters.

  Only one type of `configData` can be specified.
  """
  def create_config(client, input, options \\ []) do
    path_ = "/config"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a `DataflowEndpoint` group containing the specified list of
  `DataflowEndpoint` objects.

  The `name` field in each endpoint is used in your mission profile
  `DataflowEndpointConfig` to specify which endpoints to use during a
  contact.

  When a contact uses multiple `DataflowEndpointConfig` objects, each
  `Config` must match a `DataflowEndpoint` in the same group.
  """
  def create_dataflow_endpoint_group(client, input, options \\ []) do
    path_ = "/dataflowEndpointGroup"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Creates a mission profile.

  `dataflowEdges` is a list of lists of strings. Each lower level list of
  strings has two elements: a *from* ARN and a *to* ARN.
  """
  def create_mission_profile(client, input, options \\ []) do
    path_ = "/missionprofile"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes a `Config`.
  """
  def delete_config(client, config_id, config_type, input, options \\ []) do
    path_ = "/config/#{URI.encode(config_type)}/#{URI.encode(config_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes a dataflow endpoint group.
  """
  def delete_dataflow_endpoint_group(client, dataflow_endpoint_group_id, input, options \\ []) do
    path_ = "/dataflowEndpointGroup/#{URI.encode(dataflow_endpoint_group_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deletes a mission profile.
  """
  def delete_mission_profile(client, mission_profile_id, input, options \\ []) do
    path_ = "/missionprofile/#{URI.encode(mission_profile_id)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Describes an existing contact.
  """
  def describe_contact(client, contact_id, options \\ []) do
    path_ = "/contact/#{URI.encode(contact_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns `Config` information.

  Only one `Config` response can be returned.
  """
  def get_config(client, config_id, config_type, options \\ []) do
    path_ = "/config/#{URI.encode(config_type)}/#{URI.encode(config_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns the dataflow endpoint group.
  """
  def get_dataflow_endpoint_group(client, dataflow_endpoint_group_id, options \\ []) do
    path_ = "/dataflowEndpointGroup/#{URI.encode(dataflow_endpoint_group_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns the number of minutes used by account.
  """
  def get_minute_usage(client, input, options \\ []) do
    path_ = "/minute-usage"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Returns a mission profile.
  """
  def get_mission_profile(client, mission_profile_id, options \\ []) do
    path_ = "/missionprofile/#{URI.encode(mission_profile_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a satellite.
  """
  def get_satellite(client, satellite_id, options \\ []) do
    path_ = "/satellite/#{URI.encode(satellite_id)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a list of `Config` objects.
  """
  def list_configs(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/config"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a list of contacts.

  If `statusList` contains AVAILABLE, the request must include
  `groundStation`, `missionprofileArn`, and `satelliteArn`.
  """
  def list_contacts(client, input, options \\ []) do
    path_ = "/contacts"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Returns a list of `DataflowEndpoint` groups.
  """
  def list_dataflow_endpoint_groups(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/dataflowEndpointGroup"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a list of ground stations.
  """
  def list_ground_stations(client, max_results \\ nil, next_token \\ nil, satellite_id \\ nil, options \\ []) do
    path_ = "/groundstation"
    headers = []
    query_ = []
    query_ = if !is_nil(satellite_id) do
      [{"satelliteId", satellite_id} | query_]
    else
      query_
    end
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a list of mission profiles.
  """
  def list_mission_profiles(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/missionprofile"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a list of satellites.
  """
  def list_satellites(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/satellite"
    headers = []
    query_ = []
    query_ = if !is_nil(next_token) do
      [{"nextToken", next_token} | query_]
    else
      query_
    end
    query_ = if !is_nil(max_results) do
      [{"maxResults", max_results} | query_]
    else
      query_
    end
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Returns a list of tags for a specified resource.
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Reserves a contact using specified parameters.
  """
  def reserve_contact(client, input, options \\ []) do
    path_ = "/contact"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Assigns a tag to a resource.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Deassigns a resource tag.
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    {query_, input} =
      [
        {"tagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates the `Config` used when scheduling contacts.

  Updating a `Config` will not update the execution parameters for existing
  future contacts scheduled with this `Config`.
  """
  def update_config(client, config_id, config_type, input, options \\ []) do
    path_ = "/config/#{URI.encode(config_type)}/#{URI.encode(config_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @doc """
  Updates a mission profile.

  Updating a mission profile will not update the execution parameters for
  existing future contacts.
  """
  def update_mission_profile(client, mission_profile_id, input, options \\ []) do
    path_ = "/missionprofile/#{URI.encode(mission_profile_id)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 200)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "groundstation"}
    host = build_host("groundstation", client)
    url = host
    |> build_url(path, client)
    |> add_query(query, client)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(client, method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(client, method, url, payload, headers, options, nil) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: status_code, body: body} = response}
      when status_code in [200, 202, 204] ->
        body = if(body != "", do: decode!(client, body))
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

      error = {:error, _reason} -> error
    end
  end

  defp perform_request(client, method, url, payload, headers, options, success_status_code) do
    case AWS.Client.request(client, method, url, payload, headers, options) do
      {:ok, %{status_code: ^success_status_code, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
        {:ok, body, response}

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

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

  defp add_query(url, [], _client) do
    url
  end
  defp add_query(url, query, client) do
    querystring = encode!(client, query, :query)
    "#{url}?#{querystring}"
  end

  defp encode!(client, payload, format \\ :json) do
    AWS.Client.encode!(client, payload, format)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
