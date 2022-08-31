# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudHSM do
  @moduledoc """
  AWS CloudHSM Service

  This is documentation for **AWS CloudHSM Classic**.

  For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: "CloudHSM",
      api_version: "2014-05-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "cloudhsm",
      global?: false,
      protocol: "json",
      service_id: "CloudHSM",
      signature_version: "v4",
      signing_name: "cloudhsm",
      target_prefix: "CloudHsmFrontendService"
    }
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Adds or overwrites one or more tags for the specified AWS CloudHSM resource.

  Each tag consists of a key and a value. Tag keys must be unique to each
  resource.
  """
  def add_tags_to_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddTagsToResource", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Creates a high-availability partition group. A high-availability partition group
  is a group of partitions that spans multiple physical HSMs.
  """
  def create_hapg(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateHapg", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Creates an uninitialized HSM instance.

  There is an upfront fee charged for each HSM instance that you create with the
  `CreateHsm` operation. If you accidentally provision an HSM and want to request
  a refund, delete the instance using the `DeleteHsm` operation, go to the [AWS Support Center](https://console.aws.amazon.com/support/home), create a new case,
  and select **Account and Billing Support**.

  It can take up to 20 minutes to create and provision an HSM. You can monitor the
  status of the HSM with the `DescribeHsm` operation. The HSM is ready to be
  initialized when the status changes to `RUNNING`.
  """
  def create_hsm(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateHsm", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Creates an HSM client.
  """
  def create_luna_client(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateLunaClient", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Deletes a high-availability partition group.
  """
  def delete_hapg(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteHapg", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Deletes an HSM. After completion, this operation cannot be undone and your key
  material cannot be recovered.
  """
  def delete_hsm(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteHsm", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Deletes a client.
  """
  def delete_luna_client(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteLunaClient", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Retrieves information about a high-availability partition group.
  """
  def describe_hapg(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeHapg", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Retrieves information about an HSM. You can identify the HSM by its ARN or its
  serial number.
  """
  def describe_hsm(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeHsm", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Retrieves information about an HSM client.
  """
  def describe_luna_client(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeLunaClient", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Gets the configuration files necessary to connect to all high availability
  partition groups the client is associated with.
  """
  def get_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetConfig", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Lists the Availability Zones that have available AWS CloudHSM capacity.
  """
  def list_available_zones(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAvailableZones", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Lists the high-availability partition groups for the account.

  This operation supports pagination with the use of the `NextToken` member. If
  more results are available, the `NextToken` member of the response contains a
  token that you pass in the next call to `ListHapgs` to retrieve the next set of
  items.
  """
  def list_hapgs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListHapgs", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Retrieves the identifiers of all of the HSMs provisioned for the current
  customer.

  This operation supports pagination with the use of the `NextToken` member. If
  more results are available, the `NextToken` member of the response contains a
  token that you pass in the next call to `ListHsms` to retrieve the next set of
  items.
  """
  def list_hsms(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListHsms", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Lists all of the clients.

  This operation supports pagination with the use of the `NextToken` member. If
  more results are available, the `NextToken` member of the response contains a
  token that you pass in the next call to `ListLunaClients` to retrieve the next
  set of items.
  """
  def list_luna_clients(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListLunaClients", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Returns a list of all tags for the specified AWS CloudHSM resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Modifies an existing high-availability partition group.
  """
  def modify_hapg(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyHapg", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Modifies an HSM.

  This operation can result in the HSM being offline for up to 15 minutes while
  the AWS CloudHSM service is reconfigured. If you are modifying a production HSM,
  you should ensure that your AWS CloudHSM service is configured for high
  availability, and consider executing this operation during a maintenance window.
  """
  def modify_hsm(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyHsm", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Modifies the certificate used by the client.

  This action can potentially start a workflow to install the new certificate on
  the client's HSMs.
  """
  def modify_luna_client(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ModifyLunaClient", input, options)
  end

  @doc """
  This is documentation for **AWS CloudHSM Classic**.

  For more information, see [AWS CloudHSM Classic FAQs](http://aws.amazon.com/cloudhsm/faqs-classic/), the [AWS CloudHSM Classic User Guide](https://docs.aws.amazon.com/cloudhsm/classic/userguide/), and the
  [AWS CloudHSM Classic API Reference](https://docs.aws.amazon.com/cloudhsm/classic/APIReference/).

  **For information about the current version of AWS CloudHSM**, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/), the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/), and the [AWS CloudHSM API
  Reference](https://docs.aws.amazon.com/cloudhsm/latest/APIReference/).

  Removes one or more tags from the specified AWS CloudHSM resource.

  To remove a tag, specify only the tag key to remove (not the value). To
  overwrite the value for an existing tag, use `AddTagsToResource`.
  """
  def remove_tags_from_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RemoveTagsFromResource", input, options)
  end
end
