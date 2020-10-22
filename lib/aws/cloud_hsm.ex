# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudHSM do
  @moduledoc """
  AWS CloudHSM Service

  This is documentation for **AWS CloudHSM Classic**. For more information,
  see [AWS CloudHSM Classic
  FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM
  Classic User
  Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API
  Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).
  """

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information,
  see [AWS CloudHSM Classic
  FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM
  Classic User
  Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API
  Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Adds or overwrites one or more tags for the specified AWS CloudHSM
  resource.

  Each tag consists of a key and a value. Tag keys must be unique to each
  resource.
  """
  def add_tags_to_resource(client, input, options \\ []) do
    request(client, "AddTagsToResource", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information,
  see [AWS CloudHSM Classic
  FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM
  Classic User
  Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API
  Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Creates a high-availability partition group. A high-availability partition
  group is a group of partitions that spans multiple physical HSMs.
  """
  def create_hapg(client, input, options \\ []) do
    request(client, "CreateHapg", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information,
  see [AWS CloudHSM Classic
  FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM
  Classic User
  Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API
  Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Creates an uninitialized HSM instance.

  There is an upfront fee charged for each HSM instance that you create with
  the `CreateHsm` operation. If you accidentally provision an HSM and want to
  request a refund, delete the instance using the `DeleteHsm` operation, go
  to the [AWS Support Center](https://console.aws.amazon.com/support/home),
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
  This is documentation for **AWS CloudHSM Classic**. For more information,
  see [AWS CloudHSM Classic
  FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM
  Classic User
  Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API
  Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Creates an HSM client.
  """
  def create_luna_client(client, input, options \\ []) do
    request(client, "CreateLunaClient", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information,
  see [AWS CloudHSM Classic
  FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM
  Classic User
  Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API
  Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Deletes a high-availability partition group.
  """
  def delete_hapg(client, input, options \\ []) do
    request(client, "DeleteHapg", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information,
  see [AWS CloudHSM Classic
  FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM
  Classic User
  Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API
  Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Deletes an HSM. After completion, this operation cannot be undone and your
  key material cannot be recovered.
  """
  def delete_hsm(client, input, options \\ []) do
    request(client, "DeleteHsm", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information,
  see [AWS CloudHSM Classic
  FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM
  Classic User
  Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API
  Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Deletes a client.
  """
  def delete_luna_client(client, input, options \\ []) do
    request(client, "DeleteLunaClient", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information,
  see [AWS CloudHSM Classic
  FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM
  Classic User
  Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API
  Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Retrieves information about a high-availability partition group.
  """
  def describe_hapg(client, input, options \\ []) do
    request(client, "DescribeHapg", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information,
  see [AWS CloudHSM Classic
  FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM
  Classic User
  Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API
  Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Retrieves information about an HSM. You can identify the HSM by its ARN or
  its serial number.
  """
  def describe_hsm(client, input, options \\ []) do
    request(client, "DescribeHsm", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information,
  see [AWS CloudHSM Classic
  FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM
  Classic User
  Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API
  Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Retrieves information about an HSM client.
  """
  def describe_luna_client(client, input, options \\ []) do
    request(client, "DescribeLunaClient", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information,
  see [AWS CloudHSM Classic
  FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM
  Classic User
  Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API
  Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Gets the configuration files necessary to connect to all high availability
  partition groups the client is associated with.
  """
  def get_config(client, input, options \\ []) do
    request(client, "GetConfig", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information,
  see [AWS CloudHSM Classic
  FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM
  Classic User
  Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API
  Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Lists the Availability Zones that have available AWS CloudHSM capacity.
  """
  def list_available_zones(client, input, options \\ []) do
    request(client, "ListAvailableZones", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information,
  see [AWS CloudHSM Classic
  FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM
  Classic User
  Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API
  Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Lists the high-availability partition groups for the account.

  This operation supports pagination with the use of the `NextToken` member.
  If more results are available, the `NextToken` member of the response
  contains a token that you pass in the next call to `ListHapgs` to retrieve
  the next set of items.
  """
  def list_hapgs(client, input, options \\ []) do
    request(client, "ListHapgs", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information,
  see [AWS CloudHSM Classic
  FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM
  Classic User
  Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API
  Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Retrieves the identifiers of all of the HSMs provisioned for the current
  customer.

  This operation supports pagination with the use of the `NextToken` member.
  If more results are available, the `NextToken` member of the response
  contains a token that you pass in the next call to `ListHsms` to retrieve
  the next set of items.
  """
  def list_hsms(client, input, options \\ []) do
    request(client, "ListHsms", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information,
  see [AWS CloudHSM Classic
  FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM
  Classic User
  Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API
  Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Lists all of the clients.

  This operation supports pagination with the use of the `NextToken` member.
  If more results are available, the `NextToken` member of the response
  contains a token that you pass in the next call to `ListLunaClients` to
  retrieve the next set of items.
  """
  def list_luna_clients(client, input, options \\ []) do
    request(client, "ListLunaClients", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information,
  see [AWS CloudHSM Classic
  FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM
  Classic User
  Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API
  Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Returns a list of all tags for the specified AWS CloudHSM resource.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information,
  see [AWS CloudHSM Classic
  FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM
  Classic User
  Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API
  Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Modifies an existing high-availability partition group.
  """
  def modify_hapg(client, input, options \\ []) do
    request(client, "ModifyHapg", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information,
  see [AWS CloudHSM Classic
  FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM
  Classic User
  Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API
  Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

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
  This is documentation for **AWS CloudHSM Classic**. For more information,
  see [AWS CloudHSM Classic
  FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM
  Classic User
  Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API
  Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Modifies the certificate used by the client.

  This action can potentially start a workflow to install the new certificate
  on the client's HSMs.
  """
  def modify_luna_client(client, input, options \\ []) do
    request(client, "ModifyLunaClient", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**. For more information,
  see [AWS CloudHSM Classic
  FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM
  Classic User
  Guide](http://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API
  Reference](http://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS
  CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User
  Guide](http://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS
  CloudHSM API
  Reference](http://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Removes one or more tags from the specified AWS CloudHSM resource.

  To remove a tag, specify only the tag key to remove (not the value). To
  overwrite the value for an existing tag, use `AddTagsToResource`.
  """
  def remove_tags_from_resource(client, input, options \\ []) do
    request(client, "RemoveTagsFromResource", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "cloudhsm"}
    host = build_host("cloudhsm", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "CloudHsmFrontendService.#{action}"}
    ]

    payload = AWS.JSON.encode!(input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    AWS.HTTP.request(:post, url, payload, headers, options, 200)
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

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end
end
