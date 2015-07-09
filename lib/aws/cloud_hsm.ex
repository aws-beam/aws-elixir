# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.CloudHSM do
  @moduledoc """
  AWS CloudHSM Service
  """

  @doc """
  Creates a high-availability partition group. A high-availability partition
  group is a group of partitions that spans multiple physical HSMs.
  """
  def create_hapg(client, input, options \\ []) do
    request(client, "CreateHapg", input, options)
  end

  @doc """
  Creates an uninitialized HSM instance. Running this command provisions an
  HSM appliance and will result in charges to your AWS account for the HSM.
  """
  def create_hsm(client, input, options \\ []) do
    request(client, "CreateHsm", input, options)
  end

  @doc """
  Creates an HSM client.
  """
  def create_luna_client(client, input, options \\ []) do
    request(client, "CreateLunaClient", input, options)
  end

  @doc """
  Deletes a high-availability partition group.
  """
  def delete_hapg(client, input, options \\ []) do
    request(client, "DeleteHapg", input, options)
  end

  @doc """
  Deletes an HSM. Once complete, this operation cannot be undone and your key
  material cannot be recovered.
  """
  def delete_hsm(client, input, options \\ []) do
    request(client, "DeleteHsm", input, options)
  end

  @doc """
  Deletes a client.
  """
  def delete_luna_client(client, input, options \\ []) do
    request(client, "DeleteLunaClient", input, options)
  end

  @doc """
  Retrieves information about a high-availability partition group.
  """
  def describe_hapg(client, input, options \\ []) do
    request(client, "DescribeHapg", input, options)
  end

  @doc """
  Retrieves information about an HSM. You can identify the HSM by its ARN or
  its serial number.
  """
  def describe_hsm(client, input, options \\ []) do
    request(client, "DescribeHsm", input, options)
  end

  @doc """
  Retrieves information about an HSM client.
  """
  def describe_luna_client(client, input, options \\ []) do
    request(client, "DescribeLunaClient", input, options)
  end

  @doc """
  Gets the configuration files necessary to connect to all high availability
  partition groups the client is associated with.
  """
  def get_config(client, input, options \\ []) do
    request(client, "GetConfig", input, options)
  end

  @doc """
  Lists the Availability Zones that have available AWS CloudHSM capacity.
  """
  def list_available_zones(client, input, options \\ []) do
    request(client, "ListAvailableZones", input, options)
  end

  @doc """
  Lists the high-availability partition groups for the account.

  This operation supports pagination with the use of the *NextToken* member.
  If more results are available, the *NextToken* member of the response
  contains a token that you pass in the next call to `ListHapgs` to retrieve
  the next set of items.
  """
  def list_hapgs(client, input, options \\ []) do
    request(client, "ListHapgs", input, options)
  end

  @doc """
  Retrieves the identifiers of all of the HSMs provisioned for the current
  customer.

  This operation supports pagination with the use of the *NextToken* member.
  If more results are available, the *NextToken* member of the response
  contains a token that you pass in the next call to `ListHsms` to retrieve
  the next set of items.
  """
  def list_hsms(client, input, options \\ []) do
    request(client, "ListHsms", input, options)
  end

  @doc """
  Lists all of the clients.

  This operation supports pagination with the use of the *NextToken* member.
  If more results are available, the *NextToken* member of the response
  contains a token that you pass in the next call to `ListLunaClients` to
  retrieve the next set of items.
  """
  def list_luna_clients(client, input, options \\ []) do
    request(client, "ListLunaClients", input, options)
  end

  @doc """
  Modifies an existing high-availability partition group.
  """
  def modify_hapg(client, input, options \\ []) do
    request(client, "ModifyHapg", input, options)
  end

  @doc """
  Modifies an HSM.
  """
  def modify_hsm(client, input, options \\ []) do
    request(client, "ModifyHsm", input, options)
  end

  @doc """
  Modifies the certificate used by the client.

  This action can potentially start a workflow to install the new certificate
  on the client's HSMs.
  """
  def modify_luna_client(client, input, options \\ []) do
    request(client, "ModifyLunaClient", input, options)
  end

  defp request(client, action, input, options) do
    client = %{client | service: "cloudhsm"}
    host = "cloudhsm.#{client.region}.#{client.endpoint}"
    url = "https://#{host}/"
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "cloudhsm.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["__type"]
        {:error, reason}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end
end

