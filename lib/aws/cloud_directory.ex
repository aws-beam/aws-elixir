# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.CloudDirectory do
  @moduledoc """
  Amazon Cloud Directory

  Amazon Cloud Directory is a component of the AWS Directory Service that
  simplifies the development and management of cloud-scale web, mobile and
  IoT applications. This guide describes the Cloud Directory operations that
  you can call programatically and includes detailed information on data
  types and errors. For information about AWS Directory Services features,
  see [AWS Directory Service](https://aws.amazon.com/directoryservice/) and
  the [AWS Directory Service Administration
  Guide](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/what_is.html).
  """

  @doc """
  Adds a new `Facet` to an object.
  """
  def add_facet_to_object(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/object/facets"
    headers = []
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  Copies input published schema into `Directory` with same name and version
  as that of published schema .
  """
  def apply_schema(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/schema/apply"
    headers = []
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  Attaches an existing object to another object. An object can be accessed in
  two ways:

  <ol> <li> Using the path

  </li> <li> Using ObjectIdentifier

  </li> </ol>
  """
  def attach_object(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/object/attach"
    headers = []
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  Attaches a policy object to a regular object. An object can have a limited
  number of attached policies.
  """
  def attach_policy(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/policy/attach"
    headers = []
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  Attaches the specified object to the specified index.
  """
  def attach_to_index(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/index/attach"
    headers = []
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  Performs all the read operations in a batch.
  """
  def batch_read(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/batchread"
    headers = []
    if Dict.has_key?(input, "ConsistencyLevel") do
      headers = [{"x-amz-consistency-level", input["ConsistencyLevel"]}|headers]
      input = Dict.delete(input, "ConsistencyLevel")
    end
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :post, url, headers, input, options, 200)
  end

  @doc """
  Performs all the write operations in a batch. Either all the operations
  succeed or none. Batch writes supports only object-related operations.
  """
  def batch_write(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/batchwrite"
    headers = []
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  Creates a `Directory` by copying the published schema into the directory. A
  directory cannot be created without a schema.
  """
  def create_directory(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/directory/create"
    headers = []
    if Dict.has_key?(input, "SchemaArn") do
      headers = [{"x-amz-data-partition", input["SchemaArn"]}|headers]
      input = Dict.delete(input, "SchemaArn")
    end
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  Creates a new `Facet` in a schema. Facet creation is allowed only in
  development or applied schemas.
  """
  def create_facet(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/facet/create"
    headers = []
    if Dict.has_key?(input, "SchemaArn") do
      headers = [{"x-amz-data-partition", input["SchemaArn"]}|headers]
      input = Dict.delete(input, "SchemaArn")
    end
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  Creates an index object. See
  [Indexing](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_indexing.html)
  for more information.
  """
  def create_index(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/index"
    headers = []
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  Creates an object in a `Directory`. Additionally attaches the object to a
  parent, if a parent reference and LinkName is specified. An object is
  simply a collection of `Facet` attributes. You can also use this API call
  to create a policy object, if the facet from which you create the object is
  a policy facet.
  """
  def create_object(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/object"
    headers = []
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  Creates a new schema in a development state. A schema can exist in three
  phases:

  <ul> <li> *Development:* This is a mutable phase of the schema. All new
  schemas are in the development phase. Once the schema is finalized, it can
  be published.

  </li> <li> *Published:* Published schemas are immutable and have a version
  associated with them.

  </li> <li> *Applied:* Applied schemas are mutable in a way that allows you
  to add new schema facets. You can also add new, nonrequired attributes to
  existing schema facets. You can apply only published schemas to
  directories.

  </li> </ul>
  """
  def create_schema(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/schema/create"
    headers = []
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  Deletes a directory. Only disabled directories can be deleted. A deleted
  directory cannot be undone. Exercise extreme caution when deleting
  directories.
  """
  def delete_directory(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/directory"
    headers = []
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  Deletes a given `Facet`. All attributes and `Rule`s associated with the
  facet will be deleted. Only development schema facets are allowed deletion.
  """
  def delete_facet(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/facet/delete"
    headers = []
    if Dict.has_key?(input, "SchemaArn") do
      headers = [{"x-amz-data-partition", input["SchemaArn"]}|headers]
      input = Dict.delete(input, "SchemaArn")
    end
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  Deletes an object and its associated attributes. Only objects with no
  children and no parents can be deleted.
  """
  def delete_object(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/object/delete"
    headers = []
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  Deletes a given schema. Schemas in a development and published state can
  only be deleted.
  """
  def delete_schema(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/schema"
    headers = []
    if Dict.has_key?(input, "SchemaArn") do
      headers = [{"x-amz-data-partition", input["SchemaArn"]}|headers]
      input = Dict.delete(input, "SchemaArn")
    end
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  Detaches the specified object from the specified index.
  """
  def detach_from_index(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/index/detach"
    headers = []
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  Detaches a given object from the parent object. The object that is to be
  detached from the parent is specified by the link name.
  """
  def detach_object(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/object/detach"
    headers = []
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  Detaches a policy from an object.
  """
  def detach_policy(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/policy/detach"
    headers = []
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  Disables the specified directory. Disabled directories cannot be read or
  written to. Only enabled directories can be disabled. Disabled directories
  may be reenabled.
  """
  def disable_directory(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/directory/disable"
    headers = []
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  Enables the specified directory. Only disabled directories can be enabled.
  Once enabled, the directory can then be read and written to.
  """
  def enable_directory(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/directory/enable"
    headers = []
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  Retrieves metadata about a directory.
  """
  def get_directory(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/directory/get"
    headers = []
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :post, url, headers, input, options, 200)
  end

  @doc """
  Gets details of the `Facet`, such as Facet Name, Attributes, `Rule`s, or
  ObjectType. You can call this on all kinds of schema facets -- published,
  development, or applied.
  """
  def get_facet(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/facet"
    headers = []
    if Dict.has_key?(input, "SchemaArn") do
      headers = [{"x-amz-data-partition", input["SchemaArn"]}|headers]
      input = Dict.delete(input, "SchemaArn")
    end
    request(client, :post, url, headers, input, options, 200)
  end

  @doc """
  Retrieves metadata about an object.
  """
  def get_object_information(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/object/information"
    headers = []
    if Dict.has_key?(input, "ConsistencyLevel") do
      headers = [{"x-amz-consistency-level", input["ConsistencyLevel"]}|headers]
      input = Dict.delete(input, "ConsistencyLevel")
    end
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :post, url, headers, input, options, 200)
  end

  @doc """
  Retrieves a JSON representation of the schema. See [JSON Schema
  Format](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_schemas.html#jsonformat)
  for more information.
  """
  def get_schema_as_json(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/schema/json"
    headers = []
    if Dict.has_key?(input, "SchemaArn") do
      headers = [{"x-amz-data-partition", input["SchemaArn"]}|headers]
      input = Dict.delete(input, "SchemaArn")
    end
    request(client, :post, url, headers, input, options, 200)
  end

  @doc """
  Lists schemas applied to a directory.
  """
  def list_applied_schema_arns(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/schema/applied"
    headers = []
    request(client, :post, url, headers, input, options, 200)
  end

  @doc """
  Lists indices attached to an object.
  """
  def list_attached_indices(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/object/indices"
    headers = []
    if Dict.has_key?(input, "ConsistencyLevel") do
      headers = [{"x-amz-consistency-level", input["ConsistencyLevel"]}|headers]
      input = Dict.delete(input, "ConsistencyLevel")
    end
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :post, url, headers, input, options, 200)
  end

  @doc """
  Retrieves the ARNs of schemas in the development state.
  """
  def list_development_schema_arns(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/schema/development"
    headers = []
    request(client, :post, url, headers, input, options, 200)
  end

  @doc """
  Lists directories created within an account.
  """
  def list_directories(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/directory/list"
    headers = []
    request(client, :post, url, headers, input, options, 200)
  end

  @doc """
  Retrieves attributes attached to the facet.
  """
  def list_facet_attributes(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/facet/attributes"
    headers = []
    if Dict.has_key?(input, "SchemaArn") do
      headers = [{"x-amz-data-partition", input["SchemaArn"]}|headers]
      input = Dict.delete(input, "SchemaArn")
    end
    request(client, :post, url, headers, input, options, 200)
  end

  @doc """
  Retrieves the names of facets that exist in a schema.
  """
  def list_facet_names(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/facet/list"
    headers = []
    if Dict.has_key?(input, "SchemaArn") do
      headers = [{"x-amz-data-partition", input["SchemaArn"]}|headers]
      input = Dict.delete(input, "SchemaArn")
    end
    request(client, :post, url, headers, input, options, 200)
  end

  @doc """
  Lists objects attached to the specified index.
  """
  def list_index(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/index/targets"
    headers = []
    if Dict.has_key?(input, "ConsistencyLevel") do
      headers = [{"x-amz-consistency-level", input["ConsistencyLevel"]}|headers]
      input = Dict.delete(input, "ConsistencyLevel")
    end
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :post, url, headers, input, options, 200)
  end

  @doc """
  Lists all attributes associated with an object.
  """
  def list_object_attributes(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/object/attributes"
    headers = []
    if Dict.has_key?(input, "ConsistencyLevel") do
      headers = [{"x-amz-consistency-level", input["ConsistencyLevel"]}|headers]
      input = Dict.delete(input, "ConsistencyLevel")
    end
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :post, url, headers, input, options, 200)
  end

  @doc """
  Returns a paginated list of child objects associated with a given object.
  """
  def list_object_children(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/object/children"
    headers = []
    if Dict.has_key?(input, "ConsistencyLevel") do
      headers = [{"x-amz-consistency-level", input["ConsistencyLevel"]}|headers]
      input = Dict.delete(input, "ConsistencyLevel")
    end
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :post, url, headers, input, options, 200)
  end

  @doc """
  Lists parent objects associated with a given object in pagination fashion.
  """
  def list_object_parents(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/object/parent"
    headers = []
    if Dict.has_key?(input, "ConsistencyLevel") do
      headers = [{"x-amz-consistency-level", input["ConsistencyLevel"]}|headers]
      input = Dict.delete(input, "ConsistencyLevel")
    end
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :post, url, headers, input, options, 200)
  end

  @doc """
  Returns policies attached to an object in pagination fashion.
  """
  def list_object_policies(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/object/policy"
    headers = []
    if Dict.has_key?(input, "ConsistencyLevel") do
      headers = [{"x-amz-consistency-level", input["ConsistencyLevel"]}|headers]
      input = Dict.delete(input, "ConsistencyLevel")
    end
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :post, url, headers, input, options, 200)
  end

  @doc """
  Returns all of the ObjectIdentifiers to which a given policy is attached.
  """
  def list_policy_attachments(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/policy/attachment"
    headers = []
    if Dict.has_key?(input, "ConsistencyLevel") do
      headers = [{"x-amz-consistency-level", input["ConsistencyLevel"]}|headers]
      input = Dict.delete(input, "ConsistencyLevel")
    end
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :post, url, headers, input, options, 200)
  end

  @doc """
  Retrieves published schema ARNs.
  """
  def list_published_schema_arns(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/schema/published"
    headers = []
    request(client, :post, url, headers, input, options, 200)
  end

  @doc """
  Returns tags for a resource. Tagging is currently supported only for
  directories with a limit of 50 tags per directory. All 50 tags are returned
  for a given directory with this API call.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/tags"
    headers = []
    request(client, :post, url, headers, input, options, 200)
  end

  @doc """
  Lists all policies from the root of the `Directory` to the object
  specified. If there are no policies present, an empty list is returned. If
  policies are present, and if some objects don't have the policies attached,
  it returns the objectIdentifier for such objects. If policies are present,
  it returns objectIdentifier, policyId, and policyType. Paths that don't
  lead to the root from the target object are ignored.
  """
  def lookup_policy(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/policy/lookup"
    headers = []
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :post, url, headers, input, options, 200)
  end

  @doc """
  Publishes a development schema with a version. If description and
  attributes are specified, PublishSchema overrides the development schema
  description and attributes. If not, the development schema description and
  attributes are used.
  """
  def publish_schema(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/schema/publish"
    headers = []
    if Dict.has_key?(input, "DevelopmentSchemaArn") do
      headers = [{"x-amz-data-partition", input["DevelopmentSchemaArn"]}|headers]
      input = Dict.delete(input, "DevelopmentSchemaArn")
    end
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  Allows a schema to be updated using JSON upload. Only available for
  development schemas. See [JSON Schema
  Format](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/cd_schemas.html#jsonformat)
  for more information.
  """
  def put_schema_from_json(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/schema/json"
    headers = []
    if Dict.has_key?(input, "SchemaArn") do
      headers = [{"x-amz-data-partition", input["SchemaArn"]}|headers]
      input = Dict.delete(input, "SchemaArn")
    end
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  Removes the specified facet from the specified object.
  """
  def remove_facet_from_object(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/object/facets/delete"
    headers = []
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  API for adding tags to a resource.
  """
  def tag_resource(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/tags/add"
    headers = []
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  API for removing tags from a resource.
  """
  def untag_resource(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/tags/remove"
    headers = []
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  Does the following:

  <ol> <li> Adds new Attributes, Rules, or ObjectTypes.

  </li> <li> Updates existing Attributes, Rules, or ObjectTypes.

  </li> <li> Deletes existing Attributes, Rules, or ObjectTypes.

  </li> </ol>
  """
  def update_facet(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/facet"
    headers = []
    if Dict.has_key?(input, "SchemaArn") do
      headers = [{"x-amz-data-partition", input["SchemaArn"]}|headers]
      input = Dict.delete(input, "SchemaArn")
    end
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  Updates a given object's attributes.
  """
  def update_object_attributes(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/object/update"
    headers = []
    if Dict.has_key?(input, "DirectoryArn") do
      headers = [{"x-amz-data-partition", input["DirectoryArn"]}|headers]
      input = Dict.delete(input, "DirectoryArn")
    end
    request(client, :put, url, headers, input, options, 200)
  end

  @doc """
  Updates the schema name with a new name. Only development schema names can
  be updated.
  """
  def update_schema(client, input, options \\ []) do
    url = "/amazonclouddirectory/2017-01-11/schema/update"
    headers = []
    if Dict.has_key?(input, "SchemaArn") do
      headers = [{"x-amz-data-partition", input["SchemaArn"]}|headers]
      input = Dict.delete(input, "SchemaArn")
    end
    request(client, :put, url, headers, input, options, 200)
  end

  defp request(client, method, url, headers, input, options, success_status_code) do
    client = %{client | service: "clouddirectory"}
    host = get_host("clouddirectory", client)
    url = get_url(host, url, client)
    headers = Enum.concat([{"Host", host},
                           {"Content-Type", "application/x-amz-json-1.1"}],
                          headers)
    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, response=%HTTPoison.Response{status_code: 202, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, response=%HTTPoison.Response{status_code: 204, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["message"]
        {:error, reason}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: ^success_status_code, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: ^success_status_code, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["message"]
        {:error, reason}
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

  defp get_url(host, url, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{url}/"
  end

  defp encode_payload(input) do
    if input != nil do
      Poison.Encoder.encode(input, [])
    else
      ""
    end
  end
end
