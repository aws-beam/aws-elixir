# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.CloudHSM do
  @moduledoc """
  AWS CloudHSM Service
  """

  @doc """
  Adds or overwrites one or more tags for the specified AWS CloudHSM
  resource.

  Each tag consists of a key and a value. Tag keys must be unique to each
  resource.
  """
  def add_tags_to_resource(client, input, options \\ []) do
    request(client, "AddTagsToResource", input, options)
  end

  @doc """
  Creates a high-availability partition group. A high-availability partition
  group is a group of partitions that spans multiple physical HSMs.
  """
  def create_hapg(client, input, options \\ []) do
    request(client, "CreateHapg", input, options)
  end

  @doc """
  Creates an uninitialized HSM instance.

  There is an upfront fee charged for each HSM instance that you create with
  the `CreateHsm` operation. If you accidentally provision an HSM and want to
  request a refund, delete the instance using the `DeleteHsm` operation, go
  to the [AWS Support Center](https://console.aws.amazon.com/support/home#/),
  create a new case, and select **Account and Billing Support**.

  <important> It can take up to 20 minutes to create and provision an HSM.
  You can monitor the status of the HSM with the `DescribeHsm` operation. The
  HSM is ready to be initialized when the status changes to `RUNNING`.

  </important>
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
  Deletes an HSM. After completion, this operation cannot be undone and your
  key material cannot be recovered.
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
  Returns a list of all tags for the specified AWS CloudHSM resource.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Modifies an existing high-availability partition group.
  """
  def modify_hapg(client, input, options \\ []) do
    request(client, "ModifyHapg", input, options)
  end

  @doc """
  Modifies an HSM.

  <important> This operation can result in the HSM being offline for up to 15
  minutes while the AWS CloudHSM service is reconfigured. If you are
  modifying a production HSM, you should ensure that your AWS CloudHSM
  service is configured for high availability, and consider executing this
  operation during a maintenance window.

  </important>
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

  @doc """
  Removes one or more tags from the specified AWS CloudHSM resource.

  To remove a tag, specify only the tag key to remove (not the value). To
  overwrite the value for an existing tag, use `AddTagsToResource`.
  """
  def remove_tags_from_resource(client, input, options \\ []) do
    request(client, "RemoveTagsFromResource", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "cloudhsm"}
    host = get_host("cloudhsm", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "CloudHsmFrontendService.#{action}"}]
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
