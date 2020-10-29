# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaConnect do
  @moduledoc """
  API for AWS Elemental MediaConnect
  """

  @doc """
  Adds outputs to an existing flow. You can create up to 50 outputs per flow.
  """
  def add_flow_outputs(client, flow_arn, input, options \\ []) do
    path_ = "/v1/flows/#{URI.encode(flow_arn)}/outputs"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Adds Sources to flow
  """
  def add_flow_sources(client, flow_arn, input, options \\ []) do
    path_ = "/v1/flows/#{URI.encode(flow_arn)}/source"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Adds VPC interfaces to flow
  """
  def add_flow_vpc_interfaces(client, flow_arn, input, options \\ []) do
    path_ = "/v1/flows/#{URI.encode(flow_arn)}/vpcInterfaces"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Creates a new flow. The request must include one source. The request
  optionally can include outputs (up to 50) and entitlements (up to 50).
  """
  def create_flow(client, input, options \\ []) do
    path_ = "/v1/flows"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Deletes a flow. Before you can delete a flow, you must stop the flow.
  """
  def delete_flow(client, flow_arn, input, options \\ []) do
    path_ = "/v1/flows/#{URI.encode(flow_arn)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 202)
  end

  @doc """
  Displays the details of a flow. The response includes the flow ARN, name,
  and Availability Zone, as well as details about the source, outputs, and
  entitlements.
  """
  def describe_flow(client, flow_arn, options \\ []) do
    path_ = "/v1/flows/#{URI.encode(flow_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Displays the details of an offering. The response includes the offering
  description, duration, outbound bandwidth, price, and Amazon Resource Name
  (ARN).
  """
  def describe_offering(client, offering_arn, options \\ []) do
    path_ = "/v1/offerings/#{URI.encode(offering_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Displays the details of a reservation. The response includes the
  reservation name, state, start date and time, and the details of the
  offering that make up the rest of the reservation (such as price, duration,
  and outbound bandwidth).
  """
  def describe_reservation(client, reservation_arn, options \\ []) do
    path_ = "/v1/reservations/#{URI.encode(reservation_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Grants entitlements to an existing flow.
  """
  def grant_flow_entitlements(client, flow_arn, input, options \\ []) do
    path_ = "/v1/flows/#{URI.encode(flow_arn)}/entitlements"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 200)
  end

  @doc """
  Displays a list of all entitlements that have been granted to this account.
  This request returns 20 results per page.
  """
  def list_entitlements(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v1/entitlements"
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
  Displays a list of flows that are associated with this account. This
  request returns a paginated result.
  """
  def list_flows(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v1/flows"
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
  Displays a list of all offerings that are available to this account in the
  current AWS Region. If you have an active reservation (which means you've
  purchased an offering that has already started and hasn't expired yet),
  your account isn't eligible for other offerings.
  """
  def list_offerings(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v1/offerings"
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
  Displays a list of all reservations that have been purchased by this
  account in the current AWS Region. This list includes all reservations in
  all states (such as active and expired).
  """
  def list_reservations(client, max_results \\ nil, next_token \\ nil, options \\ []) do
    path_ = "/v1/reservations"
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
  List all tags on an AWS Elemental MediaConnect resource
  """
  def list_tags_for_resource(client, resource_arn, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :get, path_, query_, headers, nil, options, 200)
  end

  @doc """
  Submits a request to purchase an offering. If you already have an active
  reservation, you can't purchase another offering.
  """
  def purchase_offering(client, offering_arn, input, options \\ []) do
    path_ = "/v1/offerings/#{URI.encode(offering_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 201)
  end

  @doc """
  Removes an output from an existing flow. This request can be made only on
  an output that does not have an entitlement associated with it. If the
  output has an entitlement, you must revoke the entitlement instead. When an
  entitlement is revoked from a flow, the service automatically removes the
  associated output.
  """
  def remove_flow_output(client, flow_arn, output_arn, input, options \\ []) do
    path_ = "/v1/flows/#{URI.encode(flow_arn)}/outputs/#{URI.encode(output_arn)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 202)
  end

  @doc """
  Removes a source from an existing flow. This request can be made only if
  there is more than one source on the flow.
  """
  def remove_flow_source(client, flow_arn, source_arn, input, options \\ []) do
    path_ = "/v1/flows/#{URI.encode(flow_arn)}/source/#{URI.encode(source_arn)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 202)
  end

  @doc """
  Removes a VPC Interface from an existing flow. This request can be made
  only on a VPC interface that does not have a Source or Output associated
  with it. If the VPC interface is referenced by a Source or Output, you must
  first delete or update the Source or Output to no longer reference the VPC
  interface.
  """
  def remove_flow_vpc_interface(client, flow_arn, vpc_interface_name, input, options \\ []) do
    path_ = "/v1/flows/#{URI.encode(flow_arn)}/vpcInterfaces/#{URI.encode(vpc_interface_name)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 200)
  end

  @doc """
  Revokes an entitlement from a flow. Once an entitlement is revoked, the
  content becomes unavailable to the subscriber and the associated output is
  removed.
  """
  def revoke_flow_entitlement(client, entitlement_arn, flow_arn, input, options \\ []) do
    path_ = "/v1/flows/#{URI.encode(flow_arn)}/entitlements/#{URI.encode(entitlement_arn)}"
    headers = []
    query_ = []
    request(client, :delete, path_, query_, headers, input, options, 202)
  end

  @doc """
  Starts a flow.
  """
  def start_flow(client, flow_arn, input, options \\ []) do
    path_ = "/v1/flows/start/#{URI.encode(flow_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 202)
  end

  @doc """
  Stops a flow.
  """
  def stop_flow(client, flow_arn, input, options \\ []) do
    path_ = "/v1/flows/stop/#{URI.encode(flow_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 202)
  end

  @doc """
  Associates the specified tags to a resource with the specified resourceArn.
  If existing tags on a resource are not specified in the request parameters,
  they are not changed. When a resource is deleted, the tags associated with
  that resource are deleted as well.
  """
  def tag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    query_ = []
    request(client, :post, path_, query_, headers, input, options, 204)
  end

  @doc """
  Deletes specified tags from a resource.
  """
  def untag_resource(client, resource_arn, input, options \\ []) do
    path_ = "/tags/#{URI.encode(resource_arn)}"
    headers = []
    {query_, input} =
      [
        {"TagKeys", "tagKeys"},
      ]
      |> AWS.Request.build_params(input)
    request(client, :delete, path_, query_, headers, input, options, 204)
  end

  @doc """
  Updates flow
  """
  def update_flow(client, flow_arn, input, options \\ []) do
    path_ = "/v1/flows/#{URI.encode(flow_arn)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 202)
  end

  @doc """
  You can change an entitlement's description, subscribers, and encryption.
  If you change the subscribers, the service will remove the outputs that are
  are used by the subscribers that are removed.
  """
  def update_flow_entitlement(client, entitlement_arn, flow_arn, input, options \\ []) do
    path_ = "/v1/flows/#{URI.encode(flow_arn)}/entitlements/#{URI.encode(entitlement_arn)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 202)
  end

  @doc """
  Updates an existing flow output.
  """
  def update_flow_output(client, flow_arn, output_arn, input, options \\ []) do
    path_ = "/v1/flows/#{URI.encode(flow_arn)}/outputs/#{URI.encode(output_arn)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 202)
  end

  @doc """
  Updates the source of a flow.
  """
  def update_flow_source(client, flow_arn, source_arn, input, options \\ []) do
    path_ = "/v1/flows/#{URI.encode(flow_arn)}/source/#{URI.encode(source_arn)}"
    headers = []
    query_ = []
    request(client, :put, path_, query_, headers, input, options, 202)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "mediaconnect"}
    host = build_host("mediaconnect", client)
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
