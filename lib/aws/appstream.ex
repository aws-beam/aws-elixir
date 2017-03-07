# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.AppStream do
  @moduledoc """
  Amazon AppStream 2.0

  API documentation for Amazon AppStream 2.0.
  """

  @doc """
  Associate a fleet to a stack.
  """
  def associate_fleet(client, input, options \\ []) do
    request(client, "AssociateFleet", input, options)
  end

  @doc """
  Creates a new fleet.
  """
  def create_fleet(client, input, options \\ []) do
    request(client, "CreateFleet", input, options)
  end

  @doc """
  Create a new stack.
  """
  def create_stack(client, input, options \\ []) do
    request(client, "CreateStack", input, options)
  end

  @doc """
  Creates a URL to start an AppStream 2.0 streaming session for a user. By
  default, the URL is valid only for 1 minute from the time that it is
  generated.
  """
  def create_streaming_u_r_l(client, input, options \\ []) do
    request(client, "CreateStreamingURL", input, options)
  end

  @doc """
  Deletes a fleet.
  """
  def delete_fleet(client, input, options \\ []) do
    request(client, "DeleteFleet", input, options)
  end

  @doc """
  Deletes the stack. After this operation completes, the environment can no
  longer be activated, and any reservations made for the stack are released.
  """
  def delete_stack(client, input, options \\ []) do
    request(client, "DeleteStack", input, options)
  end

  @doc """
  If fleet names are provided, this operation describes the specified fleets;
  otherwise, all the fleets in the account are described.
  """
  def describe_fleets(client, input, options \\ []) do
    request(client, "DescribeFleets", input, options)
  end

  @doc """
  Describes the images. If a list of names is not provided, all images in
  your account are returned. This operation does not return a paginated
  result.
  """
  def describe_images(client, input, options \\ []) do
    request(client, "DescribeImages", input, options)
  end

  @doc """
  Describes the streaming sessions for a stack and a fleet. If a user ID is
  provided, this operation returns streaming sessions for only that user.
  Pass this value for the `nextToken` parameter in a subsequent call to this
  operation to retrieve the next set of items.
  """
  def describe_sessions(client, input, options \\ []) do
    request(client, "DescribeSessions", input, options)
  end

  @doc """
  If stack names are not provided, this operation describes the specified
  stacks; otherwise, all stacks in the account are described. Pass the
  `nextToken` value in a subsequent call to this operation to retrieve the
  next set of items.
  """
  def describe_stacks(client, input, options \\ []) do
    request(client, "DescribeStacks", input, options)
  end

  @doc """
  Disassociates a fleet from a stack.
  """
  def disassociate_fleet(client, input, options \\ []) do
    request(client, "DisassociateFleet", input, options)
  end

  @doc """
  This operation immediately stops a streaming session.
  """
  def expire_session(client, input, options \\ []) do
    request(client, "ExpireSession", input, options)
  end

  @doc """
  Lists all fleets associated with the stack.
  """
  def list_associated_fleets(client, input, options \\ []) do
    request(client, "ListAssociatedFleets", input, options)
  end

  @doc """
  Lists all stacks to which the specified fleet is associated.
  """
  def list_associated_stacks(client, input, options \\ []) do
    request(client, "ListAssociatedStacks", input, options)
  end

  @doc """
  Starts a fleet.
  """
  def start_fleet(client, input, options \\ []) do
    request(client, "StartFleet", input, options)
  end

  @doc """
  Stops a fleet.
  """
  def stop_fleet(client, input, options \\ []) do
    request(client, "StopFleet", input, options)
  end

  @doc """
  Updates an existing fleet. All the attributes except the fleet name can be
  updated in the **STOPPED** state. Only **ComputeCapacity** and
  **ImageName** can be updated in any other state.
  """
  def update_fleet(client, input, options \\ []) do
    request(client, "UpdateFleet", input, options)
  end

  @doc """
  Updates the specified fields in the stack with the specified name.
  """
  def update_stack(client, input, options \\ []) do
    request(client, "UpdateStack", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "appstream2"}
    host = get_host("appstream2", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "PhotonAdminProxyService.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body)
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

end
