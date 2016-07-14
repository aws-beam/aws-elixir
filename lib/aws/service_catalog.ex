# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.ServiceCatalog do
  @moduledoc """
  AWS Service Catalog

  **Overview**

  [AWS Service Catalog](https://aws.amazon.com/servicecatalog/) allows
  organizations to create and manage catalogs of IT services that are
  approved for use on AWS. This documentation provides reference material for
  the AWS Service Catalog end user API. To get the most out of this
  documentation, you need to be familiar with the terminology discussed in
  [AWS Service Catalog
  Concepts](http://docs.aws.amazon.com/servicecatalog/latest/userguide/what-is_concepts.html).

  *Additional Resources*

  <ul> <li> [AWS Service Catalog Administrator
  Guide](http://docs.aws.amazon.com/servicecatalog/latest/adminguide/introduction.html)

  </li> <li> [AWS Service Catalog User
  Guide](http://docs.aws.amazon.com/servicecatalog/latest/userguide/introduction.html)

  </li> </ul>
  """

  @doc """
  Retrieves information about a specified product.

  This operation is functionally identical to `DescribeProductView` except
  that it takes as input `ProductId` instead of `ProductViewId`.
  """
  def describe_product(client, input, options \\ []) do
    request(client, "DescribeProduct", input, options)
  end

  @doc """
  Retrieves information about a specified product.

  This operation is functionally identical to `DescribeProduct` except that
  it takes as input `ProductViewId` instead of `ProductId`.
  """
  def describe_product_view(client, input, options \\ []) do
    request(client, "DescribeProductView", input, options)
  end

  @doc """
  Provides information about parameters required to provision a specified
  product in a specified manner. Use this operation to obtain the list of
  `ProvisioningArtifactParameters` parameters available to call the
  `ProvisionProduct` operation for the specified product.
  """
  def describe_provisioning_parameters(client, input, options \\ []) do
    request(client, "DescribeProvisioningParameters", input, options)
  end

  @doc """
  Retrieves a paginated list of the full details of a specific request. Use
  this operation after calling a request operation (`ProvisionProduct`,
  `TerminateProvisionedProduct`, or `UpdateProvisionedProduct`).
  """
  def describe_record(client, input, options \\ []) do
    request(client, "DescribeRecord", input, options)
  end

  @doc """
  Returns a paginated list of all paths to a specified product. A path is how
  the user has access to a specified product, and is necessary when
  provisioning a product. A path also determines the constraints put on the
  product.
  """
  def list_launch_paths(client, input, options \\ []) do
    request(client, "ListLaunchPaths", input, options)
  end

  @doc """
  Returns a paginated list of all performed requests, in the form of
  RecordDetails objects that are filtered as specified.
  """
  def list_record_history(client, input, options \\ []) do
    request(client, "ListRecordHistory", input, options)
  end

  @doc """
  Requests a *Provision* of a specified product. A *ProvisionedProduct* is a
  resourced instance for a product. For example, provisioning a
  CloudFormation-template-backed product results in launching a
  CloudFormation stack and all the underlying resources that come with it.

  You can check the status of this request using the `DescribeRecord`
  operation.
  """
  def provision_product(client, input, options \\ []) do
    request(client, "ProvisionProduct", input, options)
  end

  @doc """
  Returns a paginated list of all the ProvisionedProduct objects that are
  currently available (not terminated).
  """
  def scan_provisioned_products(client, input, options \\ []) do
    request(client, "ScanProvisionedProducts", input, options)
  end

  @doc """
  Returns a paginated list all of the `Products` objects to which the caller
  has access.

  The output of this operation can be used as input for other operations,
  such as `DescribeProductView`.
  """
  def search_products(client, input, options \\ []) do
    request(client, "SearchProducts", input, options)
  end

  @doc """
  Requests termination of an existing ProvisionedProduct object. If there are
  `Tags` associated with the object, they are terminated when the
  ProvisionedProduct object is terminated.

  This operation does not delete any records associated with the
  ProvisionedProduct object.

  You can check the status of this request using the `DescribeRecord`
  operation.
  """
  def terminate_provisioned_product(client, input, options \\ []) do
    request(client, "TerminateProvisionedProduct", input, options)
  end

  @doc """
  Requests updates to the configuration of an existing ProvisionedProduct
  object. If there are tags associated with the object, they cannot be
  updated or added with this operation. Depending on the specific updates
  requested, this operation may update with no interruption, with some
  interruption, or replace the ProvisionedProduct object entirely.

  You can check the status of this request using the `DescribeRecord`
  operation.
  """
  def update_provisioned_product(client, input, options \\ []) do
    request(client, "UpdateProvisionedProduct", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "servicecatalog"}
    host = get_host("servicecatalog", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "AWS242ServiceCatalogService.#{action}"}]
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
