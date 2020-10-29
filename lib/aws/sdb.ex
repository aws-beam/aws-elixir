# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Sdb do
  @moduledoc """
  Amazon SimpleDB is a web service providing the core database functions of
  data indexing and querying in the cloud. By offloading the time and effort
  associated with building and operating a web-scale database, SimpleDB
  provides developers the freedom to focus on application development. A
  traditional, clustered relational database requires a sizable upfront
  capital outlay, is complex to design, and often requires extensive and
  repetitive database administration. Amazon SimpleDB is dramatically
  simpler, requiring no schema, automatically indexing your data and
  providing a simple API for storage and access. This approach eliminates the
  administrative burden of data modeling, index maintenance, and performance
  tuning. Developers gain access to this functionality within Amazon's proven
  computing environment, are able to scale instantly, and pay only for what
  they use.

  Visit [http://aws.amazon.com/simpledb/](http://aws.amazon.com/simpledb/)
  for more information.
  """

  @doc """
  Performs multiple DeleteAttributes operations in a single call, which
  reduces round trips and latencies. This enables Amazon SimpleDB to optimize
  requests, which generally yields better throughput.

  <note> If you specify BatchDeleteAttributes without attributes or values,
  all the attributes for the item are deleted.

  BatchDeleteAttributes is an idempotent operation; running it multiple times
  on the same item or attribute doesn't result in an error.

  The BatchDeleteAttributes operation succeeds or fails in its entirety.
  There are no partial deletes. You can execute multiple
  BatchDeleteAttributes operations and other operations in parallel. However,
  large numbers of concurrent BatchDeleteAttributes calls can result in
  Service Unavailable (503) responses.

  This operation is vulnerable to exceeding the maximum URL size when making
  a REST request using the HTTP GET method.

  This operation does not support conditions using Expected.X.Name,
  Expected.X.Value, or Expected.X.Exists.

  </note> The following limitations are enforced for this operation: <ul>
  <li>1 MB request size</li> <li>25 item limit per BatchDeleteAttributes
  operation</li> </ul>
  """
  def batch_delete_attributes(client, input, options \\ []) do
    request(client, "BatchDeleteAttributes", input, options)
  end

  @doc """
  The `BatchPutAttributes` operation creates or replaces attributes within
  one or more items. By using this operation, the client can perform multiple
  `PutAttribute` operation with a single call. This helps yield savings in
  round trips and latencies, enabling Amazon SimpleDB to optimize requests
  and generally produce better throughput.

  The client may specify the item name with the `Item.X.ItemName` parameter.
  The client may specify new attributes using a combination of the
  `Item.X.Attribute.Y.Name` and `Item.X.Attribute.Y.Value` parameters. The
  client may specify the first attribute for the first item using the
  parameters `Item.0.Attribute.0.Name` and `Item.0.Attribute.0.Value`, and
  for the second attribute for the first item by the parameters
  `Item.0.Attribute.1.Name` and `Item.0.Attribute.1.Value`, and so on.

  Attributes are uniquely identified within an item by their name/value
  combination. For example, a single item can have the attributes `{
  "first_name", "first_value" }` and `{ "first_name", "second_value" }`.
  However, it cannot have two attribute instances where both the
  `Item.X.Attribute.Y.Name` and `Item.X.Attribute.Y.Value` are the same.

  Optionally, the requester can supply the `Replace` parameter for each
  individual value. Setting this value to `true` will cause the new attribute
  values to replace the existing attribute values. For example, if an item
  `I` has the attributes `{ 'a', '1' }, { 'b', '2'}` and `{ 'b', '3' }` and
  the requester does a BatchPutAttributes of `{'I', 'b', '4' }` with the
  Replace parameter set to true, the final attributes of the item will be `{
  'a', '1' }` and `{ 'b', '4' }`, replacing the previous values of the 'b'
  attribute with the new value.

  <note> You cannot specify an empty string as an item or as an attribute
  name. The `BatchPutAttributes` operation succeeds or fails in its entirety.
  There are no partial puts. </note> <important> This operation is vulnerable
  to exceeding the maximum URL size when making a REST request using the HTTP
  GET method. This operation does not support conditions using
  `Expected.X.Name`, `Expected.X.Value`, or `Expected.X.Exists`. </important>
  You can execute multiple `BatchPutAttributes` operations and other
  operations in parallel. However, large numbers of concurrent
  `BatchPutAttributes` calls can result in Service Unavailable (503)
  responses.

  The following limitations are enforced for this operation: <ul> <li>256
  attribute name-value pairs per item</li> <li>1 MB request size</li> <li>1
  billion attributes per domain</li> <li>10 GB of total user data storage per
  domain</li> <li>25 item limit per `BatchPutAttributes` operation</li> </ul>
  """
  def batch_put_attributes(client, input, options \\ []) do
    request(client, "BatchPutAttributes", input, options)
  end

  @doc """
  The `CreateDomain` operation creates a new domain. The domain name should
  be unique among the domains associated with the Access Key ID provided in
  the request. The `CreateDomain` operation may take 10 or more seconds to
  complete.

  <note> CreateDomain is an idempotent operation; running it multiple times
  using the same domain name will not result in an error response. </note>
  The client can create up to 100 domains per account.

  If the client requires additional domains, go to [
  http://aws.amazon.com/contact-us/simpledb-limit-request/](http://aws.amazon.com/contact-us/simpledb-limit-request/).
  """
  def create_domain(client, input, options \\ []) do
    request(client, "CreateDomain", input, options)
  end

  @doc """
  Deletes one or more attributes associated with an item. If all attributes
  of the item are deleted, the item is deleted.

  <note> If `DeleteAttributes` is called without being passed any attributes
  or values specified, all the attributes for the item are deleted. </note>
  `DeleteAttributes` is an idempotent operation; running it multiple times on
  the same item or attribute does not result in an error response.

  Because Amazon SimpleDB makes multiple copies of item data and uses an
  eventual consistency update model, performing a `GetAttributes` or `Select`
  operation (read) immediately after a `DeleteAttributes` or `PutAttributes`
  operation (write) might not return updated item data.
  """
  def delete_attributes(client, input, options \\ []) do
    request(client, "DeleteAttributes", input, options)
  end

  @doc """
  The `DeleteDomain` operation deletes a domain. Any items (and their
  attributes) in the domain are deleted as well. The `DeleteDomain` operation
  might take 10 or more seconds to complete.

  <note> Running `DeleteDomain` on a domain that does not exist or running
  the function multiple times using the same domain name will not result in
  an error response. </note>
  """
  def delete_domain(client, input, options \\ []) do
    request(client, "DeleteDomain", input, options)
  end

  @doc """
  Returns information about the domain, including when the domain was
  created, the number of items and attributes in the domain, and the size of
  the attribute names and values.
  """
  def domain_metadata(client, input, options \\ []) do
    request(client, "DomainMetadata", input, options)
  end

  @doc """
  Returns all of the attributes associated with the specified item.
  Optionally, the attributes returned can be limited to one or more
  attributes by specifying an attribute name parameter.

  If the item does not exist on the replica that was accessed for this
  operation, an empty set is returned. The system does not return an error as
  it cannot guarantee the item does not exist on other replicas.

  <note> If GetAttributes is called without being passed any attribute names,
  all the attributes for the item are returned. </note>
  """
  def get_attributes(client, input, options \\ []) do
    request(client, "GetAttributes", input, options)
  end

  @doc """
  The `ListDomains` operation lists all domains associated with the Access
  Key ID. It returns domain names up to the limit set by
  [MaxNumberOfDomains](#MaxNumberOfDomains). A [NextToken](#NextToken) is
  returned if there are more than `MaxNumberOfDomains` domains. Calling
  `ListDomains` successive times with the `NextToken` provided by the
  operation returns up to `MaxNumberOfDomains` more domain names with each
  successive operation call.
  """
  def list_domains(client, input, options \\ []) do
    request(client, "ListDomains", input, options)
  end

  @doc """
  The PutAttributes operation creates or replaces attributes in an item. The
  client may specify new attributes using a combination of the
  `Attribute.X.Name` and `Attribute.X.Value` parameters. The client specifies
  the first attribute by the parameters `Attribute.0.Name` and
  `Attribute.0.Value`, the second attribute by the parameters
  `Attribute.1.Name` and `Attribute.1.Value`, and so on.

  Attributes are uniquely identified in an item by their name/value
  combination. For example, a single item can have the attributes `{
  "first_name", "first_value" }` and `{ "first_name", second_value" }`.
  However, it cannot have two attribute instances where both the
  `Attribute.X.Name` and `Attribute.X.Value` are the same.

  Optionally, the requestor can supply the `Replace` parameter for each
  individual attribute. Setting this value to `true` causes the new attribute
  value to replace the existing attribute value(s). For example, if an item
  has the attributes `{ 'a', '1' }`, `{ 'b', '2'}` and `{ 'b', '3' }` and the
  requestor calls `PutAttributes` using the attributes `{ 'b', '4' }` with
  the `Replace` parameter set to true, the final attributes of the item are
  changed to `{ 'a', '1' }` and `{ 'b', '4' }`, which replaces the previous
  values of the 'b' attribute with the new value.

  <note> Using `PutAttributes` to replace attribute values that do not exist
  will not result in an error response. </note> You cannot specify an empty
  string as an attribute name.

  Because Amazon SimpleDB makes multiple copies of client data and uses an
  eventual consistency update model, an immediate `GetAttributes` or `Select`
  operation (read) immediately after a `PutAttributes` or `DeleteAttributes`
  operation (write) might not return the updated data.

  The following limitations are enforced for this operation: <ul> <li>256
  total attribute name-value pairs per item</li> <li>One billion attributes
  per domain</li> <li>10 GB of total user data storage per domain</li> </ul>
  """
  def put_attributes(client, input, options \\ []) do
    request(client, "PutAttributes", input, options)
  end

  @doc """
  The `Select` operation returns a set of attributes for `ItemNames` that
  match the select expression. `Select` is similar to the standard SQL SELECT
  statement.

  The total size of the response cannot exceed 1 MB in total size. Amazon
  SimpleDB automatically adjusts the number of items returned per page to
  enforce this limit. For example, if the client asks to retrieve 2500 items,
  but each individual item is 10 kB in size, the system returns 100 items and
  an appropriate `NextToken` so the client can access the next page of
  results.

  For information on how to construct select expressions, see Using Select to
  Create Amazon SimpleDB Queries in the Developer Guide.
  """
  def select(client, input, options \\ []) do
    request(client, "Select", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "sdb"}
    host = build_host("sdb", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-www-form-urlencoded"}
    ]

    input = Map.merge(input, %{"Action" => action, "Version" => "2009-04-15"})
    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case AWS.Client.request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
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

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

  defp encode!(client, payload) do
    AWS.Client.encode!(client, payload, :query)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :xml)
  end
end
