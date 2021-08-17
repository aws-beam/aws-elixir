# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MediaConnect do
  @moduledoc """
  API for AWS Elemental MediaConnect
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2018-11-14",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "mediaconnect",
      global?: false,
      protocol: "rest-json",
      service_id: "MediaConnect",
      signature_version: "v4",
      signing_name: "mediaconnect",
      target_prefix: nil
    }
  end

  @doc """
  Adds media streams to an existing flow.

  After you add a media stream to a flow, you can associate it with a source
  and/or an output that uses the ST 2110 JPEG XS or CDI protocol.
  """
  def add_flow_media_streams(%Client{} = client, flow_arn, input, options \\ []) do
    url_path = "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/mediaStreams"
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
      201
    )
  end

  @doc """
  Adds outputs to an existing flow.

  You can create up to 50 outputs per flow.
  """
  def add_flow_outputs(%Client{} = client, flow_arn, input, options \\ []) do
    url_path = "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/outputs"
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
      201
    )
  end

  @doc """
  Adds Sources to flow
  """
  def add_flow_sources(%Client{} = client, flow_arn, input, options \\ []) do
    url_path = "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/source"
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
      201
    )
  end

  @doc """
  Adds VPC interfaces to flow
  """
  def add_flow_vpc_interfaces(%Client{} = client, flow_arn, input, options \\ []) do
    url_path = "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/vpcInterfaces"
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
      201
    )
  end

  @doc """
  Creates a new flow.

  The request must include one source. The request optionally can include outputs
  (up to 50) and entitlements (up to 50).
  """
  def create_flow(%Client{} = client, input, options \\ []) do
    url_path = "/v1/flows"
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
      201
    )
  end

  @doc """
  Deletes a flow.

  Before you can delete a flow, you must stop the flow.
  """
  def delete_flow(%Client{} = client, flow_arn, input, options \\ []) do
    url_path = "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}"
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
      202
    )
  end

  @doc """
  Displays the details of a flow.

  The response includes the flow ARN, name, and Availability Zone, as well as
  details about the source, outputs, and entitlements.
  """
  def describe_flow(%Client{} = client, flow_arn, options \\ []) do
    url_path = "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}"
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
  Displays the details of an offering.

  The response includes the offering description, duration, outbound bandwidth,
  price, and Amazon Resource Name (ARN).
  """
  def describe_offering(%Client{} = client, offering_arn, options \\ []) do
    url_path = "/v1/offerings/#{AWS.Util.encode_uri(offering_arn)}"
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
  Displays the details of a reservation.

  The response includes the reservation name, state, start date and time, and the
  details of the offering that make up the rest of the reservation (such as price,
  duration, and outbound bandwidth).
  """
  def describe_reservation(%Client{} = client, reservation_arn, options \\ []) do
    url_path = "/v1/reservations/#{AWS.Util.encode_uri(reservation_arn)}"
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
  Grants entitlements to an existing flow.
  """
  def grant_flow_entitlements(%Client{} = client, flow_arn, input, options \\ []) do
    url_path = "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/entitlements"
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
  Displays a list of all entitlements that have been granted to this account.

  This request returns 20 results per page.
  """
  def list_entitlements(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v1/entitlements"
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
  Displays a list of flows that are associated with this account.

  This request returns a paginated result.
  """
  def list_flows(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v1/flows"
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
  Displays a list of all offerings that are available to this account in the
  current AWS Region.

  If you have an active reservation (which means you've purchased an offering that
  has already started and hasn't expired yet), your account isn't eligible for
  other offerings.
  """
  def list_offerings(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v1/offerings"
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
  Displays a list of all reservations that have been purchased by this account in
  the current AWS Region.

  This list includes all reservations in all states (such as active and expired).
  """
  def list_reservations(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/v1/reservations"
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
  List all tags on an AWS Elemental MediaConnect resource
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Submits a request to purchase an offering.

  If you already have an active reservation, you can't purchase another offering.
  """
  def purchase_offering(%Client{} = client, offering_arn, input, options \\ []) do
    url_path = "/v1/offerings/#{AWS.Util.encode_uri(offering_arn)}"
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
      201
    )
  end

  @doc """
  Removes a media stream from a flow.

  This action is only available if the media stream is not associated with a
  source or output.
  """
  def remove_flow_media_stream(
        %Client{} = client,
        flow_arn,
        media_stream_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/mediaStreams/#{AWS.Util.encode_uri(media_stream_name)}"

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
      200
    )
  end

  @doc """
  Removes an output from an existing flow.

  This request can be made only on an output that does not have an entitlement
  associated with it. If the output has an entitlement, you must revoke the
  entitlement instead. When an entitlement is revoked from a flow, the service
  automatically removes the associated output.
  """
  def remove_flow_output(%Client{} = client, flow_arn, output_arn, input, options \\ []) do
    url_path =
      "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/outputs/#{AWS.Util.encode_uri(output_arn)}"

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
      202
    )
  end

  @doc """
  Removes a source from an existing flow.

  This request can be made only if there is more than one source on the flow.
  """
  def remove_flow_source(%Client{} = client, flow_arn, source_arn, input, options \\ []) do
    url_path =
      "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/source/#{AWS.Util.encode_uri(source_arn)}"

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
      202
    )
  end

  @doc """
  Removes a VPC Interface from an existing flow.

  This request can be made only on a VPC interface that does not have a Source or
  Output associated with it. If the VPC interface is referenced by a Source or
  Output, you must first delete or update the Source or Output to no longer
  reference the VPC interface.
  """
  def remove_flow_vpc_interface(
        %Client{} = client,
        flow_arn,
        vpc_interface_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/vpcInterfaces/#{AWS.Util.encode_uri(vpc_interface_name)}"

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
      200
    )
  end

  @doc """
  Revokes an entitlement from a flow.

  Once an entitlement is revoked, the content becomes unavailable to the
  subscriber and the associated output is removed.
  """
  def revoke_flow_entitlement(%Client{} = client, entitlement_arn, flow_arn, input, options \\ []) do
    url_path =
      "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/entitlements/#{AWS.Util.encode_uri(entitlement_arn)}"

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
      202
    )
  end

  @doc """
  Starts a flow.
  """
  def start_flow(%Client{} = client, flow_arn, input, options \\ []) do
    url_path = "/v1/flows/start/#{AWS.Util.encode_uri(flow_arn)}"
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
      202
    )
  end

  @doc """
  Stops a flow.
  """
  def stop_flow(%Client{} = client, flow_arn, input, options \\ []) do
    url_path = "/v1/flows/stop/#{AWS.Util.encode_uri(flow_arn)}"
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
      202
    )
  end

  @doc """
  Associates the specified tags to a resource with the specified resourceArn.

  If existing tags on a resource are not specified in the request parameters, they
  are not changed. When a resource is deleted, the tags associated with that
  resource are deleted as well.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
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
  Deletes specified tags from a resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
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
  Updates flow
  """
  def update_flow(%Client{} = client, flow_arn, input, options \\ []) do
    url_path = "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}"
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
      202
    )
  end

  @doc """
  You can change an entitlement's description, subscribers, and encryption.

  If you change the subscribers, the service will remove the outputs that are are
  used by the subscribers that are removed.
  """
  def update_flow_entitlement(%Client{} = client, entitlement_arn, flow_arn, input, options \\ []) do
    url_path =
      "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/entitlements/#{AWS.Util.encode_uri(entitlement_arn)}"

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
      202
    )
  end

  @doc """
  Updates an existing media stream.
  """
  def update_flow_media_stream(
        %Client{} = client,
        flow_arn,
        media_stream_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/mediaStreams/#{AWS.Util.encode_uri(media_stream_name)}"

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
      202
    )
  end

  @doc """
  Updates an existing flow output.
  """
  def update_flow_output(%Client{} = client, flow_arn, output_arn, input, options \\ []) do
    url_path =
      "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/outputs/#{AWS.Util.encode_uri(output_arn)}"

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
      202
    )
  end

  @doc """
  Updates the source of a flow.
  """
  def update_flow_source(%Client{} = client, flow_arn, source_arn, input, options \\ []) do
    url_path =
      "/v1/flows/#{AWS.Util.encode_uri(flow_arn)}/source/#{AWS.Util.encode_uri(source_arn)}"

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
      202
    )
  end
end
