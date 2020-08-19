# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudDirectory do
  @moduledoc """
  Amazon Cloud Directory

  Amazon Cloud Directory is a component of the AWS Directory Service that
  simplifies the development and management of cloud-scale web, mobile, and
  IoT applications. This guide describes the Cloud Directory operations that
  you can call programmatically and includes detailed information on data
  types and errors. For information about Cloud Directory features, see [AWS
  Directory Service](https://aws.amazon.com/directoryservice/) and the
  [Amazon Cloud Directory Developer
  Guide](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/what_is_cloud_directory.html).
  """

  @doc """
  Adds a new `Facet` to an object. An object can have more than one facet
  applied on it.
  """
  def add_facet_to_object(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/object/facets"
    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Copies the input published schema, at the specified version, into the
  `Directory` with the same name and version as that of the published schema.
  """
  def apply_schema(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/schema/apply"
    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Attaches an existing object to another object. An object can be accessed in
  two ways:

  <ol> <li> Using the path

  </li> <li> Using `ObjectIdentifier`

  </li> </ol>
  """
  def attach_object(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/object/attach"
    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Attaches a policy object to a regular object. An object can have a limited
  number of attached policies.
  """
  def attach_policy(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/policy/attach"
    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Attaches the specified object to the specified index.
  """
  def attach_to_index(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/index/attach"
    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Attaches a typed link to a specified source and target object. For more
  information, see [Typed
  Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
  """
  def attach_typed_link(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/typedlink/attach"
    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Performs all the read operations in a batch.
  """
  def batch_read(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/batchread"
    {headers, input} =
      [
        {"ConsistencyLevel", "x-amz-consistency-level"},
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Performs all the write operations in a batch. Either all the operations
  succeed or none.
  """
  def batch_write(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/batchwrite"
    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Creates a `Directory` by copying the published schema into the directory. A
  directory cannot be created without a schema.

  You can also quickly create a directory using a managed schema, called the
  `QuickStartSchema`. For more information, see [Managed
  Schema](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_managed.html)
  in the *Amazon Cloud Directory Developer Guide*.
  """
  def create_directory(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/directory/create"
    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Creates a new `Facet` in a schema. Facet creation is allowed only in
  development or applied schemas.
  """
  def create_facet(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/facet/create"
    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Creates an index object. See [Indexing and
  search](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.html)
  for more information.
  """
  def create_index(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/index"
    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Creates an object in a `Directory`. Additionally attaches the object to a
  parent, if a parent reference and `LinkName` is specified. An object is
  simply a collection of `Facet` attributes. You can also use this API call
  to create a policy object, if the facet from which you create the object is
  a policy facet.
  """
  def create_object(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/object"
    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
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
    path = "/amazonclouddirectory/2017-01-11/schema/create"
    headers = []
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Creates a `TypedLinkFacet`. For more information, see [Typed
  Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
  """
  def create_typed_link_facet(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/typedlink/facet/create"
    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Deletes a directory. Only disabled directories can be deleted. A deleted
  directory cannot be undone. Exercise extreme caution when deleting
  directories.
  """
  def delete_directory(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/directory"
    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Deletes a given `Facet`. All attributes and `Rule`s that are associated
  with the facet will be deleted. Only development schema facets are allowed
  deletion.
  """
  def delete_facet(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/facet/delete"
    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Deletes an object and its associated attributes. Only objects with no
  children and no parents can be deleted. The maximum number of attributes
  that can be deleted during an object deletion is 30. For more information,
  see [Amazon Cloud Directory
  Limits](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/limits.html).
  """
  def delete_object(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/object/delete"
    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Deletes a given schema. Schemas in a development and published state can
  only be deleted.
  """
  def delete_schema(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/schema"
    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Deletes a `TypedLinkFacet`. For more information, see [Typed
  Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
  """
  def delete_typed_link_facet(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/typedlink/facet/delete"
    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Detaches the specified object from the specified index.
  """
  def detach_from_index(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/index/detach"
    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Detaches a given object from the parent object. The object that is to be
  detached from the parent is specified by the link name.
  """
  def detach_object(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/object/detach"
    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Detaches a policy from an object.
  """
  def detach_policy(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/policy/detach"
    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Detaches a typed link from a specified source and target object. For more
  information, see [Typed
  Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
  """
  def detach_typed_link(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/typedlink/detach"
    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Disables the specified directory. Disabled directories cannot be read or
  written to. Only enabled directories can be disabled. Disabled directories
  may be reenabled.
  """
  def disable_directory(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/directory/disable"
    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Enables the specified directory. Only disabled directories can be enabled.
  Once enabled, the directory can then be read and written to.
  """
  def enable_directory(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/directory/enable"
    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Returns current applied schema version ARN, including the minor version in
  use.
  """
  def get_applied_schema_version(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/schema/getappliedschema"
    headers = []
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Retrieves metadata about a directory.
  """
  def get_directory(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/directory/get"
    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Gets details of the `Facet`, such as facet name, attributes, `Rule`s, or
  `ObjectType`. You can call this on all kinds of schema facets -- published,
  development, or applied.
  """
  def get_facet(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/facet"
    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Retrieves attributes that are associated with a typed link.
  """
  def get_link_attributes(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/typedlink/attributes/get"
    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Retrieves attributes within a facet that are associated with an object.
  """
  def get_object_attributes(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/object/attributes/get"
    {headers, input} =
      [
        {"ConsistencyLevel", "x-amz-consistency-level"},
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Retrieves metadata about an object.
  """
  def get_object_information(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/object/information"
    {headers, input} =
      [
        {"ConsistencyLevel", "x-amz-consistency-level"},
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Retrieves a JSON representation of the schema. See [JSON Schema
  Format](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_jsonformat.html#schemas_json)
  for more information.
  """
  def get_schema_as_json(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/schema/json"
    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Returns the identity attribute order for a specific `TypedLinkFacet`. For
  more information, see [Typed
  Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
  """
  def get_typed_link_facet_information(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/typedlink/facet/get"
    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Lists schema major versions applied to a directory. If `SchemaArn` is
  provided, lists the minor version.
  """
  def list_applied_schema_arns(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/schema/applied"
    headers = []
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Lists indices attached to the specified object.
  """
  def list_attached_indices(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/object/indices"
    {headers, input} =
      [
        {"ConsistencyLevel", "x-amz-consistency-level"},
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Retrieves each Amazon Resource Name (ARN) of schemas in the development
  state.
  """
  def list_development_schema_arns(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/schema/development"
    headers = []
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Lists directories created within an account.
  """
  def list_directories(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/directory/list"
    headers = []
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Retrieves attributes attached to the facet.
  """
  def list_facet_attributes(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/facet/attributes"
    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Retrieves the names of facets that exist in a schema.
  """
  def list_facet_names(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/facet/list"
    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Returns a paginated list of all the incoming `TypedLinkSpecifier`
  information for an object. It also supports filtering by typed link facet
  and identity attributes. For more information, see [Typed
  Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
  """
  def list_incoming_typed_links(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/typedlink/incoming"
    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Lists objects attached to the specified index.
  """
  def list_index(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/index/targets"
    {headers, input} =
      [
        {"ConsistencyLevel", "x-amz-consistency-level"},
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Lists the major version families of each managed schema. If a major version
  ARN is provided as SchemaArn, the minor version revisions in that family
  are listed instead.
  """
  def list_managed_schema_arns(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/schema/managed"
    headers = []
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Lists all attributes that are associated with an object.
  """
  def list_object_attributes(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/object/attributes"
    {headers, input} =
      [
        {"ConsistencyLevel", "x-amz-consistency-level"},
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Returns a paginated list of child objects that are associated with a given
  object.
  """
  def list_object_children(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/object/children"
    {headers, input} =
      [
        {"ConsistencyLevel", "x-amz-consistency-level"},
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Retrieves all available parent paths for any object type such as node, leaf
  node, policy node, and index node objects. For more information about
  objects, see [Directory
  Structure](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html).

  Use this API to evaluate all parents for an object. The call returns all
  objects from the root of the directory up to the requested object. The API
  returns the number of paths based on user-defined `MaxResults`, in case
  there are multiple paths to the parent. The order of the paths and nodes
  returned is consistent among multiple API calls unless the objects are
  deleted or moved. Paths not leading to the directory root are ignored from
  the target object.
  """
  def list_object_parent_paths(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/object/parentpaths"
    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Lists parent objects that are associated with a given object in pagination
  fashion.
  """
  def list_object_parents(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/object/parent"
    {headers, input} =
      [
        {"ConsistencyLevel", "x-amz-consistency-level"},
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Returns policies attached to an object in pagination fashion.
  """
  def list_object_policies(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/object/policy"
    {headers, input} =
      [
        {"ConsistencyLevel", "x-amz-consistency-level"},
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Returns a paginated list of all the outgoing `TypedLinkSpecifier`
  information for an object. It also supports filtering by typed link facet
  and identity attributes. For more information, see [Typed
  Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
  """
  def list_outgoing_typed_links(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/typedlink/outgoing"
    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Returns all of the `ObjectIdentifiers` to which a given policy is attached.
  """
  def list_policy_attachments(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/policy/attachment"
    {headers, input} =
      [
        {"ConsistencyLevel", "x-amz-consistency-level"},
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Lists the major version families of each published schema. If a major
  version ARN is provided as `SchemaArn`, the minor version revisions in that
  family are listed instead.
  """
  def list_published_schema_arns(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/schema/published"
    headers = []
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Returns tags for a resource. Tagging is currently supported only for
  directories with a limit of 50 tags per directory. All 50 tags are returned
  for a given directory with this API call.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/tags"
    headers = []
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Returns a paginated list of all attribute definitions for a particular
  `TypedLinkFacet`. For more information, see [Typed
  Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
  """
  def list_typed_link_facet_attributes(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/typedlink/facet/attributes"
    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Returns a paginated list of `TypedLink` facet names for a particular
  schema. For more information, see [Typed
  Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
  """
  def list_typed_link_facet_names(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/typedlink/facet/list"
    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Lists all policies from the root of the `Directory` to the object
  specified. If there are no policies present, an empty list is returned. If
  policies are present, and if some objects don't have the policies attached,
  it returns the `ObjectIdentifier` for such objects. If policies are
  present, it returns `ObjectIdentifier`, `policyId`, and `policyType`. Paths
  that don't lead to the root from the target object are ignored. For more
  information, see
  [Policies](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies).
  """
  def lookup_policy(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/policy/lookup"
    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Publishes a development schema with a major version and a recommended minor
  version.
  """
  def publish_schema(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/schema/publish"
    {headers, input} =
      [
        {"DevelopmentSchemaArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Allows a schema to be updated using JSON upload. Only available for
  development schemas. See [JSON Schema
  Format](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_jsonformat.html#schemas_json)
  for more information.
  """
  def put_schema_from_json(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/schema/json"
    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Removes the specified facet from the specified object.
  """
  def remove_facet_from_object(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/object/facets/delete"
    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  An API operation for adding tags to a resource.
  """
  def tag_resource(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/tags/add"
    headers = []
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  An API operation for removing tags from a resource.
  """
  def untag_resource(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/tags/remove"
    headers = []
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Does the following:

  <ol> <li> Adds new `Attributes`, `Rules`, or `ObjectTypes`.

  </li> <li> Updates existing `Attributes`, `Rules`, or `ObjectTypes`.

  </li> <li> Deletes existing `Attributes`, `Rules`, or `ObjectTypes`.

  </li> </ol>
  """
  def update_facet(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/facet"
    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Updates a given typed link’s attributes. Attributes to be updated must not
  contribute to the typed link’s identity, as defined by its
  `IdentityAttributeOrder`.
  """
  def update_link_attributes(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/typedlink/attributes/update"
    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :post, path, query, headers, input, options, 200)
  end

  @doc """
  Updates a given object's attributes.
  """
  def update_object_attributes(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/object/update"
    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Updates the schema name with a new name. Only development schema names can
  be updated.
  """
  def update_schema(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/schema/update"
    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Updates a `TypedLinkFacet`. For more information, see [Typed
  Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
  """
  def update_typed_link_facet(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/typedlink/facet"
    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"},
      ]
      |> AWS.Request.build_params(input)
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Upgrades a single directory in-place using the `PublishedSchemaArn` with
  schema updates found in `MinorVersion`. Backwards-compatible minor version
  upgrades are instantaneously available for readers on all objects in the
  directory. Note: This is a synchronous API call and upgrades only one
  schema on a given directory per call. To upgrade multiple directories from
  one schema, you would need to call this API on each directory.
  """
  def upgrade_applied_schema(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/schema/upgradeapplied"
    headers = []
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @doc """
  Upgrades a published schema under a new minor version revision using the
  current contents of `DevelopmentSchemaArn`.
  """
  def upgrade_published_schema(client, input, options \\ []) do
    path = "/amazonclouddirectory/2017-01-11/schema/upgradepublished"
    headers = []
    query = []
    request(client, :put, path, query, headers, input, options, 200)
  end

  @spec request(AWS.Client.t(), binary(), binary(), list(), list(), map(), list(), pos_integer()) ::
          {:ok, Poison.Parser.t(), Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, method, path, query, headers, input, options, success_status_code) do
    client = %{client | service: "clouddirectory"}
    host = get_host("clouddirectory", client)
    url = host
    |> get_url(path, client)
    |> add_query(query)

    additional_headers = [{"Host", host}, {"Content-Type", "application/x-amz-json-1.1"}]
    headers = AWS.Request.add_headers(additional_headers, headers)

    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, response}

      {:ok, %HTTPoison.Response{status_code: status_code, body: body} = response}
      when status_code == 200 or status_code == 202 or status_code == 204 ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: ""} = response} ->
        {:ok, %{}, response}

      {:ok, %HTTPoison.Response{status_code: ^success_status_code, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        {:error, error}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp get_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp get_url(host, path, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}#{path}"
  end

  defp add_query(url, []) do
    url
  end
  defp add_query(url, query) do
    querystring = AWS.Util.encode_query(query)
    "#{url}?#{querystring}"
  end

  defp encode_payload(input) do
    if input != nil, do: Poison.Encoder.encode(input, %{}), else: ""
  end
end
