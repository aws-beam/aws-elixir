# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.CloudDirectory do
  @moduledoc """
  Amazon Cloud Directory

  Amazon Cloud Directory is a component of the AWS Directory Service that
  simplifies the
  development and management of cloud-scale web, mobile, and IoT applications.

  This guide
  describes the Cloud Directory operations that you can call programmatically and
  includes
  detailed information on data types and errors. For information about Cloud
  Directory features, see [AWS Directory Service](https://aws.amazon.com/directoryservice/) and the [Amazon Cloud Directory Developer
  Guide](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/what_is_cloud_directory.html).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
  incompatible_schema_exception() :: %{
    "Message" => String.t()
  }
  """
  @type incompatible_schema_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_facet_request() :: %{
    required("Name") => String.t(),
    required("SchemaArn") => String.t()
  }
  """
  @type get_facet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  object_attribute_range() :: %{
    "AttributeKey" => attribute_key(),
    "Range" => typed_attribute_value_range()
  }
  """
  @type object_attribute_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_get_link_attributes() :: %{
    "AttributeNames" => list(String.t()()),
    "TypedLinkSpecifier" => typed_link_specifier()
  }
  """
  @type batch_get_link_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_list_policy_attachments() :: %{
    "MaxResults" => integer(),
    "NextToken" => String.t(),
    "PolicyReference" => object_reference()
  }
  """
  @type batch_list_policy_attachments() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_object_request() :: %{
    required("DirectoryArn") => String.t(),
    required("ObjectReference") => object_reference()
  }
  """
  @type delete_object_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  policy_to_path() :: %{
    "Path" => String.t(),
    "Policies" => list(policy_attachment()())
  }
  """
  @type policy_to_path() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_incoming_typed_links_response() :: %{
    "LinkSpecifiers" => list(typed_link_specifier()()),
    "NextToken" => String.t()
  }
  """
  @type list_incoming_typed_links_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_object_attributes_response() :: %{
    "Attributes" => list(attribute_key_and_value()())
  }
  """
  @type get_object_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_attach_object() :: %{
    "ChildReference" => object_reference(),
    "LinkName" => String.t(),
    "ParentReference" => object_reference()
  }
  """
  @type batch_attach_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_list_index() :: %{
    "IndexReference" => object_reference(),
    "MaxResults" => integer(),
    "NextToken" => String.t(),
    "RangesOnIndexedValues" => list(object_attribute_range()())
  }
  """
  @type batch_list_index() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_detach_object_response() :: %{
    "detachedObjectIdentifier" => String.t()
  }
  """
  @type batch_detach_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_directory_request() :: %{
    required("Name") => String.t(),
    required("SchemaArn") => String.t()
  }
  """
  @type create_directory_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_lookup_policy() :: %{
    "MaxResults" => integer(),
    "NextToken" => String.t(),
    "ObjectReference" => object_reference()
  }
  """
  @type batch_lookup_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_request() :: %{
    required("ResourceArn") => String.t(),
    required("Tags") => list(tag()())
  }
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_object_policies_response() :: %{
    "AttachedPolicyIds" => list(String.t()()),
    "NextToken" => String.t()
  }
  """
  @type list_object_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_published_schema_arns_response() :: %{
    "NextToken" => String.t(),
    "SchemaArns" => list(String.t()())
  }
  """
  @type list_published_schema_arns_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_attach_to_index_response() :: %{
    "AttachedObjectIdentifier" => String.t()
  }
  """
  @type batch_attach_to_index_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_schema_request() :: %{
    required("Name") => String.t()
  }
  """
  @type create_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_get_object_attributes() :: %{
    "AttributeNames" => list(String.t()()),
    "ObjectReference" => object_reference(),
    "SchemaFacet" => schema_facet()
  }
  """
  @type batch_get_object_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  typed_link_specifier() :: %{
    "IdentityAttributeValues" => list(attribute_name_and_value()()),
    "SourceObjectReference" => object_reference(),
    "TargetObjectReference" => object_reference(),
    "TypedLinkFacet" => typed_link_schema_and_facet_name()
  }
  """
  @type typed_link_specifier() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_list_incoming_typed_links() :: %{
    "FilterAttributeRanges" => list(typed_link_attribute_range()()),
    "FilterTypedLink" => typed_link_schema_and_facet_name(),
    "MaxResults" => integer(),
    "NextToken" => String.t(),
    "ObjectReference" => object_reference()
  }
  """
  @type batch_list_incoming_typed_links() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_remove_facet_from_object() :: %{
    "ObjectReference" => object_reference(),
    "SchemaFacet" => schema_facet()
  }
  """
  @type batch_remove_facet_from_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_applied_schema_version_response() :: %{
    "AppliedSchemaArn" => String.t()
  }
  """
  @type get_applied_schema_version_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  not_index_exception() :: %{
    "Message" => String.t()
  }
  """
  @type not_index_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_typed_link_facet_response() :: %{

  }
  """
  @type create_typed_link_facet_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_list_attached_indices() :: %{
    "MaxResults" => integer(),
    "NextToken" => String.t(),
    "TargetReference" => object_reference()
  }
  """
  @type batch_list_attached_indices() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  disable_directory_response() :: %{
    "DirectoryArn" => String.t()
  }
  """
  @type disable_directory_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_schema_as_json_response() :: %{
    "Document" => String.t(),
    "Name" => String.t()
  }
  """
  @type get_schema_as_json_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  retryable_conflict_exception() :: %{
    "Message" => String.t()
  }
  """
  @type retryable_conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_directory_response() :: %{
    "AppliedSchemaArn" => String.t(),
    "DirectoryArn" => String.t(),
    "Name" => String.t(),
    "ObjectIdentifier" => String.t()
  }
  """
  @type create_directory_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_applied_schema_version_request() :: %{
    required("SchemaArn") => String.t()
  }
  """
  @type get_applied_schema_version_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_response() :: %{

  }
  """
  @type untag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_schema_request() :: %{
    required("SchemaArn") => String.t()
  }
  """
  @type delete_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  schema_facet() :: %{
    "FacetName" => String.t(),
    "SchemaArn" => String.t()
  }
  """
  @type schema_facet() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_list_object_attributes() :: %{
    "FacetFilter" => schema_facet(),
    "MaxResults" => integer(),
    "NextToken" => String.t(),
    "ObjectReference" => object_reference()
  }
  """
  @type batch_list_object_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_object_response() :: %{

  }
  """
  @type delete_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  object_reference() :: %{
    "Selector" => String.t()
  }
  """
  @type object_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_write_operation_response() :: %{
    "AddFacetToObject" => batch_add_facet_to_object_response(),
    "AttachObject" => batch_attach_object_response(),
    "AttachPolicy" => batch_attach_policy_response(),
    "AttachToIndex" => batch_attach_to_index_response(),
    "AttachTypedLink" => batch_attach_typed_link_response(),
    "CreateIndex" => batch_create_index_response(),
    "CreateObject" => batch_create_object_response(),
    "DeleteObject" => batch_delete_object_response(),
    "DetachFromIndex" => batch_detach_from_index_response(),
    "DetachObject" => batch_detach_object_response(),
    "DetachPolicy" => batch_detach_policy_response(),
    "DetachTypedLink" => batch_detach_typed_link_response(),
    "RemoveFacetFromObject" => batch_remove_facet_from_object_response(),
    "UpdateLinkAttributes" => batch_update_link_attributes_response(),
    "UpdateObjectAttributes" => batch_update_object_attributes_response()
  }
  """
  @type batch_write_operation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_write_request() :: %{
    required("DirectoryArn") => String.t(),
    required("Operations") => list(batch_write_operation()())
  }
  """
  @type batch_write_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  enable_directory_request() :: %{
    required("DirectoryArn") => String.t()
  }
  """
  @type enable_directory_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_list_policy_attachments_response() :: %{
    "NextToken" => String.t(),
    "ObjectIdentifiers" => list(String.t()())
  }
  """
  @type batch_list_policy_attachments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_facet_update_exception() :: %{
    "Message" => String.t()
  }
  """
  @type invalid_facet_update_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_list_incoming_typed_links_response() :: %{
    "LinkSpecifiers" => list(typed_link_specifier()()),
    "NextToken" => String.t()
  }
  """
  @type batch_list_incoming_typed_links_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  facet_not_found_exception() :: %{
    "Message" => String.t()
  }
  """
  @type facet_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_attached_indices_request() :: %{
    optional("ConsistencyLevel") => list(any()),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("DirectoryArn") => String.t(),
    required("TargetReference") => object_reference()
  }
  """
  @type list_attached_indices_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_delete_object_response() :: %{

  }
  """
  @type batch_delete_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  directory_deleted_exception() :: %{
    "Message" => String.t()
  }
  """
  @type directory_deleted_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  lookup_policy_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("DirectoryArn") => String.t(),
    required("ObjectReference") => object_reference()
  }
  """
  @type lookup_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_read_operation_response() :: %{
    "ExceptionResponse" => batch_read_exception(),
    "SuccessfulResponse" => batch_read_successful_response()
  }
  """
  @type batch_read_operation_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_typed_link_facet_names_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("SchemaArn") => String.t()
  }
  """
  @type list_typed_link_facet_names_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_object_children_response() :: %{
    "Children" => map(),
    "NextToken" => String.t()
  }
  """
  @type list_object_children_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_read_successful_response() :: %{
    "GetLinkAttributes" => batch_get_link_attributes_response(),
    "GetObjectAttributes" => batch_get_object_attributes_response(),
    "GetObjectInformation" => batch_get_object_information_response(),
    "ListAttachedIndices" => batch_list_attached_indices_response(),
    "ListIncomingTypedLinks" => batch_list_incoming_typed_links_response(),
    "ListIndex" => batch_list_index_response(),
    "ListObjectAttributes" => batch_list_object_attributes_response(),
    "ListObjectChildren" => batch_list_object_children_response(),
    "ListObjectParentPaths" => batch_list_object_parent_paths_response(),
    "ListObjectParents" => batch_list_object_parents_response(),
    "ListObjectPolicies" => batch_list_object_policies_response(),
    "ListOutgoingTypedLinks" => batch_list_outgoing_typed_links_response(),
    "ListPolicyAttachments" => batch_list_policy_attachments_response(),
    "LookupPolicy" => batch_lookup_policy_response()
  }
  """
  @type batch_read_successful_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  typed_link_schema_and_facet_name() :: %{
    "SchemaArn" => String.t(),
    "TypedLinkName" => String.t()
  }
  """
  @type typed_link_schema_and_facet_name() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  typed_attribute_value_range() :: %{
    "EndMode" => list(any()),
    "EndValue" => list(),
    "StartMode" => list(any()),
    "StartValue" => list()
  }
  """
  @type typed_attribute_value_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_object_attributes_request() :: %{
    optional("ConsistencyLevel") => list(any()),
    optional("FacetFilter") => schema_facet(),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("DirectoryArn") => String.t(),
    required("ObjectReference") => object_reference()
  }
  """
  @type list_object_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_update_link_attributes_response() :: %{

  }
  """
  @type batch_update_link_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  detach_policy_request() :: %{
    required("DirectoryArn") => String.t(),
    required("ObjectReference") => object_reference(),
    required("PolicyReference") => object_reference()
  }
  """
  @type detach_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  publish_schema_response() :: %{
    "PublishedSchemaArn" => String.t()
  }
  """
  @type publish_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  directory() :: %{
    "CreationDateTime" => non_neg_integer(),
    "DirectoryArn" => String.t(),
    "Name" => String.t(),
    "State" => list(any())
  }
  """
  @type directory() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  link_attribute_action() :: %{
    "AttributeActionType" => list(any()),
    "AttributeUpdateValue" => list()
  }
  """
  @type link_attribute_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_schema_response() :: %{
    "SchemaArn" => String.t()
  }
  """
  @type update_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  enable_directory_response() :: %{
    "DirectoryArn" => String.t()
  }
  """
  @type enable_directory_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_object_policies_request() :: %{
    optional("ConsistencyLevel") => list(any()),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("DirectoryArn") => String.t(),
    required("ObjectReference") => object_reference()
  }
  """
  @type list_object_policies_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  internal_service_exception() :: %{
    "Message" => String.t()
  }
  """
  @type internal_service_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_detach_policy_response() :: %{

  }
  """
  @type batch_detach_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  facet_attribute() :: %{
    "AttributeDefinition" => facet_attribute_definition(),
    "AttributeReference" => facet_attribute_reference(),
    "Name" => String.t(),
    "RequiredBehavior" => list(any())
  }
  """
  @type facet_attribute() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_typed_link_facet_attributes_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("Name") => String.t(),
    required("SchemaArn") => String.t()
  }
  """
  @type list_typed_link_facet_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_link_attributes_request() :: %{
    optional("ConsistencyLevel") => list(any()),
    required("AttributeNames") => list(String.t()()),
    required("DirectoryArn") => String.t(),
    required("TypedLinkSpecifier") => typed_link_specifier()
  }
  """
  @type get_link_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_development_schema_arns_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t()
  }
  """
  @type list_development_schema_arns_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_schema_response() :: %{
    "SchemaArn" => String.t()
  }
  """
  @type create_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  disable_directory_request() :: %{
    required("DirectoryArn") => String.t()
  }
  """
  @type disable_directory_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  untag_resource_request() :: %{
    required("ResourceArn") => String.t(),
    required("TagKeys") => list(String.t()())
  }
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  apply_schema_request() :: %{
    required("DirectoryArn") => String.t(),
    required("PublishedSchemaArn") => String.t()
  }
  """
  @type apply_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_attach_policy_response() :: %{

  }
  """
  @type batch_attach_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  schema_already_exists_exception() :: %{
    "Message" => String.t()
  }
  """
  @type schema_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  apply_schema_response() :: %{
    "AppliedSchemaArn" => String.t(),
    "DirectoryArn" => String.t()
  }
  """
  @type apply_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  schema_already_published_exception() :: %{
    "Message" => String.t()
  }
  """
  @type schema_already_published_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_create_index_response() :: %{
    "ObjectIdentifier" => String.t()
  }
  """
  @type batch_create_index_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_facet_attributes_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("Name") => String.t(),
    required("SchemaArn") => String.t()
  }
  """
  @type list_facet_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_add_facet_to_object_response() :: %{

  }
  """
  @type batch_add_facet_to_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_remove_facet_from_object_response() :: %{

  }
  """
  @type batch_remove_facet_from_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_get_object_information() :: %{
    "ObjectReference" => object_reference()
  }
  """
  @type batch_get_object_information() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_arn_exception() :: %{
    "Message" => String.t()
  }
  """
  @type invalid_arn_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_list_object_policies_response() :: %{
    "AttachedPolicyIds" => list(String.t()()),
    "NextToken" => String.t()
  }
  """
  @type batch_list_object_policies_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  upgrade_published_schema_request() :: %{
    optional("DryRun") => boolean(),
    required("DevelopmentSchemaArn") => String.t(),
    required("MinorVersion") => String.t(),
    required("PublishedSchemaArn") => String.t()
  }
  """
  @type upgrade_published_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_object_attributes_request() :: %{
    required("AttributeUpdates") => list(object_attribute_update()()),
    required("DirectoryArn") => String.t(),
    required("ObjectReference") => object_reference()
  }
  """
  @type update_object_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_object_parent_paths_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("DirectoryArn") => String.t(),
    required("ObjectReference") => object_reference()
  }
  """
  @type list_object_parent_paths_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_typed_link_facet_attributes_response() :: %{
    "Attributes" => list(typed_link_attribute_definition()()),
    "NextToken" => String.t()
  }
  """
  @type list_typed_link_facet_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  not_node_exception() :: %{
    "Message" => String.t()
  }
  """
  @type not_node_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_list_object_parent_paths_response() :: %{
    "NextToken" => String.t(),
    "PathToObjectIdentifiersList" => list(path_to_object_identifiers()())
  }
  """
  @type batch_list_object_parent_paths_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  index_attachment() :: %{
    "IndexedAttributes" => list(attribute_key_and_value()()),
    "ObjectIdentifier" => String.t()
  }
  """
  @type index_attachment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_list_object_parents_response() :: %{
    "NextToken" => String.t(),
    "ParentLinks" => list(object_identifier_and_link_name_tuple()())
  }
  """
  @type batch_list_object_parents_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_write_response() :: %{
    "Responses" => list(batch_write_operation_response()())
  }
  """
  @type batch_write_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_list_object_parent_paths() :: %{
    "MaxResults" => integer(),
    "NextToken" => String.t(),
    "ObjectReference" => object_reference()
  }
  """
  @type batch_list_object_parent_paths() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_facet_response() :: %{

  }
  """
  @type create_facet_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_schema_from_json_response() :: %{
    "Arn" => String.t()
  }
  """
  @type put_schema_from_json_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_object_parents_response() :: %{
    "NextToken" => String.t(),
    "ParentLinks" => list(object_identifier_and_link_name_tuple()()),
    "Parents" => map()
  }
  """
  @type list_object_parents_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_directory_response() :: %{
    "Directory" => directory()
  }
  """
  @type get_directory_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  attribute_name_and_value() :: %{
    "AttributeName" => String.t(),
    "Value" => list()
  }
  """
  @type attribute_name_and_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  attach_object_request() :: %{
    required("ChildReference") => object_reference(),
    required("DirectoryArn") => String.t(),
    required("LinkName") => String.t(),
    required("ParentReference") => object_reference()
  }
  """
  @type attach_object_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_read_exception() :: %{
    "Message" => String.t(),
    "Type" => list(any())
  }
  """
  @type batch_read_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_object_children_request() :: %{
    optional("ConsistencyLevel") => list(any()),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("DirectoryArn") => String.t(),
    required("ObjectReference") => object_reference()
  }
  """
  @type list_object_children_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  typed_link_attribute_definition() :: %{
    "DefaultValue" => list(),
    "IsImmutable" => boolean(),
    "Name" => String.t(),
    "RequiredBehavior" => list(any()),
    "Rules" => map(),
    "Type" => list(any())
  }
  """
  @type typed_link_attribute_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_facet_names_response() :: %{
    "FacetNames" => list(String.t()()),
    "NextToken" => String.t()
  }
  """
  @type list_facet_names_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  facet_attribute_update() :: %{
    "Action" => list(any()),
    "Attribute" => facet_attribute()
  }
  """
  @type facet_attribute_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  resource_not_found_exception() :: %{
    "Message" => String.t()
  }
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_applied_schema_arns_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    optional("SchemaArn") => String.t(),
    required("DirectoryArn") => String.t()
  }
  """
  @type list_applied_schema_arns_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  detach_object_response() :: %{
    "DetachedObjectIdentifier" => String.t()
  }
  """
  @type detach_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_link_attributes_response() :: %{

  }
  """
  @type update_link_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  add_facet_to_object_response() :: %{

  }
  """
  @type add_facet_to_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_lookup_policy_response() :: %{
    "NextToken" => String.t(),
    "PolicyToPathList" => list(policy_to_path()())
  }
  """
  @type batch_lookup_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag() :: %{
    "Key" => String.t(),
    "Value" => String.t()
  }
  """
  @type tag() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_detach_policy() :: %{
    "ObjectReference" => object_reference(),
    "PolicyReference" => object_reference()
  }
  """
  @type batch_detach_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  directory_already_exists_exception() :: %{
    "Message" => String.t()
  }
  """
  @type directory_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  attach_policy_response() :: %{

  }
  """
  @type attach_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_update_link_attributes() :: %{
    "AttributeUpdates" => list(link_attribute_update()()),
    "TypedLinkSpecifier" => typed_link_specifier()
  }
  """
  @type batch_update_link_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_create_object_response() :: %{
    "ObjectIdentifier" => String.t()
  }
  """
  @type batch_create_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  attach_policy_request() :: %{
    required("DirectoryArn") => String.t(),
    required("ObjectReference") => object_reference(),
    required("PolicyReference") => object_reference()
  }
  """
  @type attach_policy_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  facet_attribute_reference() :: %{
    "TargetAttributeName" => String.t(),
    "TargetFacetName" => String.t()
  }
  """
  @type facet_attribute_reference() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_schema_doc_exception() :: %{
    "Message" => String.t()
  }
  """
  @type invalid_schema_doc_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_next_token_exception() :: %{
    "Message" => String.t()
  }
  """
  @type invalid_next_token_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_directory_response() :: %{
    "DirectoryArn" => String.t()
  }
  """
  @type delete_directory_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_typed_link_facet_information_request() :: %{
    required("Name") => String.t(),
    required("SchemaArn") => String.t()
  }
  """
  @type get_typed_link_facet_information_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  attach_to_index_request() :: %{
    required("DirectoryArn") => String.t(),
    required("IndexReference") => object_reference(),
    required("TargetReference") => object_reference()
  }
  """
  @type attach_to_index_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_get_object_information_response() :: %{
    "ObjectIdentifier" => String.t(),
    "SchemaFacets" => list(schema_facet()())
  }
  """
  @type batch_get_object_information_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  detach_from_index_response() :: %{
    "DetachedObjectIdentifier" => String.t()
  }
  """
  @type detach_from_index_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  detach_from_index_request() :: %{
    required("DirectoryArn") => String.t(),
    required("IndexReference") => object_reference(),
    required("TargetReference") => object_reference()
  }
  """
  @type detach_from_index_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  facet_in_use_exception() :: %{
    "Message" => String.t()
  }
  """
  @type facet_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_schema_response() :: %{
    "SchemaArn" => String.t()
  }
  """
  @type delete_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_detach_object() :: %{
    "BatchReferenceName" => String.t(),
    "LinkName" => String.t(),
    "ParentReference" => object_reference()
  }
  """
  @type batch_detach_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_facet_names_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("SchemaArn") => String.t()
  }
  """
  @type list_facet_names_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_list_attached_indices_response() :: %{
    "IndexAttachments" => list(index_attachment()()),
    "NextToken" => String.t()
  }
  """
  @type batch_list_attached_indices_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_facet_request() :: %{
    required("Name") => String.t(),
    required("SchemaArn") => String.t()
  }
  """
  @type delete_facet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_policy_attachments_request() :: %{
    optional("ConsistencyLevel") => list(any()),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("DirectoryArn") => String.t(),
    required("PolicyReference") => object_reference()
  }
  """
  @type list_policy_attachments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_create_object() :: %{
    "BatchReferenceName" => String.t(),
    "LinkName" => String.t(),
    "ObjectAttributeList" => list(attribute_key_and_value()()),
    "ParentReference" => object_reference(),
    "SchemaFacet" => list(schema_facet()())
  }
  """
  @type batch_create_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_read_operation() :: %{
    "GetLinkAttributes" => batch_get_link_attributes(),
    "GetObjectAttributes" => batch_get_object_attributes(),
    "GetObjectInformation" => batch_get_object_information(),
    "ListAttachedIndices" => batch_list_attached_indices(),
    "ListIncomingTypedLinks" => batch_list_incoming_typed_links(),
    "ListIndex" => batch_list_index(),
    "ListObjectAttributes" => batch_list_object_attributes(),
    "ListObjectChildren" => batch_list_object_children(),
    "ListObjectParentPaths" => batch_list_object_parent_paths(),
    "ListObjectParents" => batch_list_object_parents(),
    "ListObjectPolicies" => batch_list_object_policies(),
    "ListOutgoingTypedLinks" => batch_list_outgoing_typed_links(),
    "ListPolicyAttachments" => batch_list_policy_attachments(),
    "LookupPolicy" => batch_lookup_policy()
  }
  """
  @type batch_read_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_incoming_typed_links_request() :: %{
    optional("ConsistencyLevel") => list(any()),
    optional("FilterAttributeRanges") => list(typed_link_attribute_range()()),
    optional("FilterTypedLink") => typed_link_schema_and_facet_name(),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("DirectoryArn") => String.t(),
    required("ObjectReference") => object_reference()
  }
  """
  @type list_incoming_typed_links_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_facet_attributes_response() :: %{
    "Attributes" => list(facet_attribute()()),
    "NextToken" => String.t()
  }
  """
  @type list_facet_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_response() :: %{
    "NextToken" => String.t(),
    "Tags" => list(tag()())
  }
  """
  @type list_tags_for_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  object_attribute_update() :: %{
    "ObjectAttributeAction" => object_attribute_action(),
    "ObjectAttributeKey" => attribute_key()
  }
  """
  @type object_attribute_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  upgrade_published_schema_response() :: %{
    "UpgradedSchemaArn" => String.t()
  }
  """
  @type upgrade_published_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_facet_response() :: %{

  }
  """
  @type update_facet_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_outgoing_typed_links_request() :: %{
    optional("ConsistencyLevel") => list(any()),
    optional("FilterAttributeRanges") => list(typed_link_attribute_range()()),
    optional("FilterTypedLink") => typed_link_schema_and_facet_name(),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("DirectoryArn") => String.t(),
    required("ObjectReference") => object_reference()
  }
  """
  @type list_outgoing_typed_links_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_update_object_attributes_response() :: %{
    "ObjectIdentifier" => String.t()
  }
  """
  @type batch_update_object_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_list_index_response() :: %{
    "IndexAttachments" => list(index_attachment()()),
    "NextToken" => String.t()
  }
  """
  @type batch_list_index_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_outgoing_typed_links_response() :: %{
    "NextToken" => String.t(),
    "TypedLinkSpecifiers" => list(typed_link_specifier()())
  }
  """
  @type list_outgoing_typed_links_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  attach_to_index_response() :: %{
    "AttachedObjectIdentifier" => String.t()
  }
  """
  @type attach_to_index_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  indexed_attribute_missing_exception() :: %{
    "Message" => String.t()
  }
  """
  @type indexed_attribute_missing_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_link_attributes_request() :: %{
    required("AttributeUpdates") => list(link_attribute_update()()),
    required("DirectoryArn") => String.t(),
    required("TypedLinkSpecifier") => typed_link_specifier()
  }
  """
  @type update_link_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  object_attribute_action() :: %{
    "ObjectAttributeActionType" => list(any()),
    "ObjectAttributeUpdateValue" => list()
  }
  """
  @type object_attribute_action() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  rule() :: %{
    "Parameters" => map(),
    "Type" => list(any())
  }
  """
  @type rule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  attach_typed_link_request() :: %{
    required("Attributes") => list(attribute_name_and_value()()),
    required("DirectoryArn") => String.t(),
    required("SourceObjectReference") => object_reference(),
    required("TargetObjectReference") => object_reference(),
    required("TypedLinkFacet") => typed_link_schema_and_facet_name()
  }
  """
  @type attach_typed_link_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_applied_schema_arns_response() :: %{
    "NextToken" => String.t(),
    "SchemaArns" => list(String.t()())
  }
  """
  @type list_applied_schema_arns_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_write_operation() :: %{
    "AddFacetToObject" => batch_add_facet_to_object(),
    "AttachObject" => batch_attach_object(),
    "AttachPolicy" => batch_attach_policy(),
    "AttachToIndex" => batch_attach_to_index(),
    "AttachTypedLink" => batch_attach_typed_link(),
    "CreateIndex" => batch_create_index(),
    "CreateObject" => batch_create_object(),
    "DeleteObject" => batch_delete_object(),
    "DetachFromIndex" => batch_detach_from_index(),
    "DetachObject" => batch_detach_object(),
    "DetachPolicy" => batch_detach_policy(),
    "DetachTypedLink" => batch_detach_typed_link(),
    "RemoveFacetFromObject" => batch_remove_facet_from_object(),
    "UpdateLinkAttributes" => batch_update_link_attributes(),
    "UpdateObjectAttributes" => batch_update_object_attributes()
  }
  """
  @type batch_write_operation() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_attach_typed_link() :: %{
    "Attributes" => list(attribute_name_and_value()()),
    "SourceObjectReference" => object_reference(),
    "TargetObjectReference" => object_reference(),
    "TypedLinkFacet" => typed_link_schema_and_facet_name()
  }
  """
  @type batch_attach_typed_link() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  unsupported_index_type_exception() :: %{
    "Message" => String.t()
  }
  """
  @type unsupported_index_type_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_index_request() :: %{
    optional("ConsistencyLevel") => list(any()),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    optional("RangesOnIndexedValues") => list(object_attribute_range()()),
    required("DirectoryArn") => String.t(),
    required("IndexReference") => object_reference()
  }
  """
  @type list_index_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  link_attribute_update() :: %{
    "AttributeAction" => link_attribute_action(),
    "AttributeKey" => attribute_key()
  }
  """
  @type link_attribute_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  link_name_already_in_use_exception() :: %{
    "Message" => String.t()
  }
  """
  @type link_name_already_in_use_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  policy_attachment() :: %{
    "ObjectIdentifier" => String.t(),
    "PolicyId" => String.t(),
    "PolicyType" => String.t()
  }
  """
  @type policy_attachment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  attach_typed_link_response() :: %{
    "TypedLinkSpecifier" => typed_link_specifier()
  }
  """
  @type attach_typed_link_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_update_object_attributes() :: %{
    "AttributeUpdates" => list(object_attribute_update()()),
    "ObjectReference" => object_reference()
  }
  """
  @type batch_update_object_attributes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_object_attributes_response() :: %{
    "Attributes" => list(attribute_key_and_value()()),
    "NextToken" => String.t()
  }
  """
  @type list_object_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_typed_link_facet_response() :: %{

  }
  """
  @type update_typed_link_facet_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_list_object_attributes_response() :: %{
    "Attributes" => list(attribute_key_and_value()()),
    "NextToken" => String.t()
  }
  """
  @type batch_list_object_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  publish_schema_request() :: %{
    optional("MinorVersion") => String.t(),
    optional("Name") => String.t(),
    required("DevelopmentSchemaArn") => String.t(),
    required("Version") => String.t()
  }
  """
  @type publish_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_object_information_response() :: %{
    "ObjectIdentifier" => String.t(),
    "SchemaFacets" => list(schema_facet()())
  }
  """
  @type get_object_information_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_read_response() :: %{
    "Responses" => list(batch_read_operation_response()())
  }
  """
  @type batch_read_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  path_to_object_identifiers() :: %{
    "ObjectIdentifiers" => list(String.t()()),
    "Path" => String.t()
  }
  """
  @type path_to_object_identifiers() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_attach_policy() :: %{
    "ObjectReference" => object_reference(),
    "PolicyReference" => object_reference()
  }
  """
  @type batch_attach_policy() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_object_parent_paths_response() :: %{
    "NextToken" => String.t(),
    "PathToObjectIdentifiersList" => list(path_to_object_identifiers()())
  }
  """
  @type list_object_parent_paths_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_list_object_parents() :: %{
    "MaxResults" => integer(),
    "NextToken" => String.t(),
    "ObjectReference" => object_reference()
  }
  """
  @type batch_list_object_parents() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  put_schema_from_json_request() :: %{
    required("Document") => String.t(),
    required("SchemaArn") => String.t()
  }
  """
  @type put_schema_from_json_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_attach_to_index() :: %{
    "IndexReference" => object_reference(),
    "TargetReference" => object_reference()
  }
  """
  @type batch_attach_to_index() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_typed_link_facet_request() :: %{
    required("Name") => String.t(),
    required("SchemaArn") => String.t()
  }
  """
  @type delete_typed_link_facet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_facet_request() :: %{
    optional("Attributes") => list(facet_attribute()()),
    optional("FacetStyle") => list(any()),
    optional("ObjectType") => list(any()),
    required("Name") => String.t(),
    required("SchemaArn") => String.t()
  }
  """
  @type create_facet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_directories_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    optional("state") => list(any())
  }
  """
  @type list_directories_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  cannot_list_parent_of_root_exception() :: %{
    "Message" => String.t()
  }
  """
  @type cannot_list_parent_of_root_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  upgrade_applied_schema_request() :: %{
    optional("DryRun") => boolean(),
    required("DirectoryArn") => String.t(),
    required("PublishedSchemaArn") => String.t()
  }
  """
  @type upgrade_applied_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_index_request() :: %{
    optional("LinkName") => String.t(),
    optional("ParentReference") => object_reference(),
    required("DirectoryArn") => String.t(),
    required("IsUnique") => boolean(),
    required("OrderedIndexedAttributeList") => list(attribute_key()())
  }
  """
  @type create_index_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_typed_link_facet_request() :: %{
    required("AttributeUpdates") => list(typed_link_facet_attribute_update()()),
    required("IdentityAttributeOrder") => list(String.t()()),
    required("Name") => String.t(),
    required("SchemaArn") => String.t()
  }
  """
  @type update_typed_link_facet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_attach_typed_link_response() :: %{
    "TypedLinkSpecifier" => typed_link_specifier()
  }
  """
  @type batch_attach_typed_link_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_object_information_request() :: %{
    optional("ConsistencyLevel") => list(any()),
    required("DirectoryArn") => String.t(),
    required("ObjectReference") => object_reference()
  }
  """
  @type get_object_information_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  object_identifier_and_link_name_tuple() :: %{
    "LinkName" => String.t(),
    "ObjectIdentifier" => String.t()
  }
  """
  @type object_identifier_and_link_name_tuple() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  detach_object_request() :: %{
    required("DirectoryArn") => String.t(),
    required("LinkName") => String.t(),
    required("ParentReference") => object_reference()
  }
  """
  @type detach_object_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_object_attributes_response() :: %{
    "ObjectIdentifier" => String.t()
  }
  """
  @type update_object_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  access_denied_exception() :: %{
    "Message" => String.t()
  }
  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_typed_link_facet_names_response() :: %{
    "FacetNames" => list(String.t()()),
    "NextToken" => String.t()
  }
  """
  @type list_typed_link_facet_names_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  still_contains_links_exception() :: %{
    "Message" => String.t()
  }
  """
  @type still_contains_links_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_directory_request() :: %{
    required("DirectoryArn") => String.t()
  }
  """
  @type delete_directory_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  tag_resource_response() :: %{

  }
  """
  @type tag_resource_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  facet_already_exists_exception() :: %{
    "Message" => String.t()
  }
  """
  @type facet_already_exists_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  detach_policy_response() :: %{

  }
  """
  @type detach_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_development_schema_arns_response() :: %{
    "NextToken" => String.t(),
    "SchemaArns" => list(String.t()())
  }
  """
  @type list_development_schema_arns_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_managed_schema_arns_response() :: %{
    "NextToken" => String.t(),
    "SchemaArns" => list(String.t()())
  }
  """
  @type list_managed_schema_arns_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_facet_response() :: %{

  }
  """
  @type delete_facet_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_link_attributes_response() :: %{
    "Attributes" => list(attribute_key_and_value()())
  }
  """
  @type get_link_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_list_object_children() :: %{
    "MaxResults" => integer(),
    "NextToken" => String.t(),
    "ObjectReference" => object_reference()
  }
  """
  @type batch_list_object_children() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_attached_indices_response() :: %{
    "IndexAttachments" => list(index_attachment()()),
    "NextToken" => String.t()
  }
  """
  @type list_attached_indices_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  attribute_key_and_value() :: %{
    "Key" => attribute_key(),
    "Value" => list()
  }
  """
  @type attribute_key_and_value() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_detach_typed_link() :: %{
    "TypedLinkSpecifier" => typed_link_specifier()
  }
  """
  @type batch_detach_typed_link() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  directory_not_disabled_exception() :: %{
    "Message" => String.t()
  }
  """
  @type directory_not_disabled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_create_index() :: %{
    "BatchReferenceName" => String.t(),
    "IsUnique" => boolean(),
    "LinkName" => String.t(),
    "OrderedIndexedAttributeList" => list(attribute_key()()),
    "ParentReference" => object_reference()
  }
  """
  @type batch_create_index() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  validation_exception() :: %{
    "Message" => String.t()
  }
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_tags_for_resource_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("ResourceArn") => String.t()
  }
  """
  @type list_tags_for_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_facet_request() :: %{
    optional("AttributeUpdates") => list(facet_attribute_update()()),
    optional("ObjectType") => list(any()),
    required("Name") => String.t(),
    required("SchemaArn") => String.t()
  }
  """
  @type update_facet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  facet() :: %{
    "FacetStyle" => list(any()),
    "Name" => String.t(),
    "ObjectType" => list(any())
  }
  """
  @type facet() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_detach_typed_link_response() :: %{

  }
  """
  @type batch_detach_typed_link_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_typed_link_facet_request() :: %{
    required("Facet") => typed_link_facet(),
    required("SchemaArn") => String.t()
  }
  """
  @type create_typed_link_facet_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  facet_validation_exception() :: %{
    "Message" => String.t()
  }
  """
  @type facet_validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_list_object_policies() :: %{
    "MaxResults" => integer(),
    "NextToken" => String.t(),
    "ObjectReference" => object_reference()
  }
  """
  @type batch_list_object_policies() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  typed_link_facet() :: %{
    "Attributes" => list(typed_link_attribute_definition()()),
    "IdentityAttributeOrder" => list(String.t()()),
    "Name" => String.t()
  }
  """
  @type typed_link_facet() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_rule_exception() :: %{
    "Message" => String.t()
  }
  """
  @type invalid_rule_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_attach_object_response() :: %{
    "attachedObjectIdentifier" => String.t()
  }
  """
  @type batch_attach_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_list_object_children_response() :: %{
    "Children" => map(),
    "NextToken" => String.t()
  }
  """
  @type batch_list_object_children_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_detach_from_index_response() :: %{
    "DetachedObjectIdentifier" => String.t()
  }
  """
  @type batch_detach_from_index_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_published_schema_arns_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    optional("SchemaArn") => String.t()
  }
  """
  @type list_published_schema_arns_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_policy_attachments_response() :: %{
    "NextToken" => String.t(),
    "ObjectIdentifiers" => list(String.t()())
  }
  """
  @type list_policy_attachments_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_get_object_attributes_response() :: %{
    "Attributes" => list(attribute_key_and_value()())
  }
  """
  @type batch_get_object_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  object_not_detached_exception() :: %{
    "Message" => String.t()
  }
  """
  @type object_not_detached_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  limit_exceeded_exception() :: %{
    "Message" => String.t()
  }
  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_list_outgoing_typed_links_response() :: %{
    "NextToken" => String.t(),
    "TypedLinkSpecifiers" => list(typed_link_specifier()())
  }
  """
  @type batch_list_outgoing_typed_links_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  attach_object_response() :: %{
    "AttachedObjectIdentifier" => String.t()
  }
  """
  @type attach_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  not_policy_exception() :: %{
    "Message" => String.t()
  }
  """
  @type not_policy_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_detach_from_index() :: %{
    "IndexReference" => object_reference(),
    "TargetReference" => object_reference()
  }
  """
  @type batch_detach_from_index() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  remove_facet_from_object_response() :: %{

  }
  """
  @type remove_facet_from_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  directory_not_enabled_exception() :: %{
    "Message" => String.t()
  }
  """
  @type directory_not_enabled_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_index_response() :: %{
    "IndexAttachments" => list(index_attachment()()),
    "NextToken" => String.t()
  }
  """
  @type list_index_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_object_parents_request() :: %{
    optional("ConsistencyLevel") => list(any()),
    optional("IncludeAllLinksToEachParent") => boolean(),
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    required("DirectoryArn") => String.t(),
    required("ObjectReference") => object_reference()
  }
  """
  @type list_object_parents_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  detach_typed_link_request() :: %{
    required("DirectoryArn") => String.t(),
    required("TypedLinkSpecifier") => typed_link_specifier()
  }
  """
  @type detach_typed_link_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_directories_response() :: %{
    "Directories" => list(directory()()),
    "NextToken" => String.t()
  }
  """
  @type list_directories_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_index_response() :: %{
    "ObjectIdentifier" => String.t()
  }
  """
  @type create_index_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  upgrade_applied_schema_response() :: %{
    "DirectoryArn" => String.t(),
    "UpgradedSchemaArn" => String.t()
  }
  """
  @type upgrade_applied_schema_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_object_request() :: %{
    optional("LinkName") => String.t(),
    optional("ObjectAttributeList") => list(attribute_key_and_value()()),
    optional("ParentReference") => object_reference(),
    required("DirectoryArn") => String.t(),
    required("SchemaFacets") => list(schema_facet()())
  }
  """
  @type create_object_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  create_object_response() :: %{
    "ObjectIdentifier" => String.t()
  }
  """
  @type create_object_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  add_facet_to_object_request() :: %{
    optional("ObjectAttributeList") => list(attribute_key_and_value()()),
    required("DirectoryArn") => String.t(),
    required("ObjectReference") => object_reference(),
    required("SchemaFacet") => schema_facet()
  }
  """
  @type add_facet_to_object_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_list_outgoing_typed_links() :: %{
    "FilterAttributeRanges" => list(typed_link_attribute_range()()),
    "FilterTypedLink" => typed_link_schema_and_facet_name(),
    "MaxResults" => integer(),
    "NextToken" => String.t(),
    "ObjectReference" => object_reference()
  }
  """
  @type batch_list_outgoing_typed_links() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_delete_object() :: %{
    "ObjectReference" => object_reference()
  }
  """
  @type batch_delete_object() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  attribute_key() :: %{
    "FacetName" => String.t(),
    "Name" => String.t(),
    "SchemaArn" => String.t()
  }
  """
  @type attribute_key() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  typed_link_facet_attribute_update() :: %{
    "Action" => list(any()),
    "Attribute" => typed_link_attribute_definition()
  }
  """
  @type typed_link_facet_attribute_update() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  lookup_policy_response() :: %{
    "NextToken" => String.t(),
    "PolicyToPathList" => list(policy_to_path()())
  }
  """
  @type lookup_policy_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_attachment_exception() :: %{
    "Message" => String.t()
  }
  """
  @type invalid_attachment_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  facet_attribute_definition() :: %{
    "DefaultValue" => list(),
    "IsImmutable" => boolean(),
    "Rules" => map(),
    "Type" => list(any())
  }
  """
  @type facet_attribute_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  remove_facet_from_object_request() :: %{
    required("DirectoryArn") => String.t(),
    required("ObjectReference") => object_reference(),
    required("SchemaFacet") => schema_facet()
  }
  """
  @type remove_facet_from_object_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_read_request() :: %{
    optional("ConsistencyLevel") => list(any()),
    required("DirectoryArn") => String.t(),
    required("Operations") => list(batch_read_operation()())
  }
  """
  @type batch_read_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  delete_typed_link_facet_response() :: %{

  }
  """
  @type delete_typed_link_facet_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  object_already_detached_exception() :: %{
    "Message" => String.t()
  }
  """
  @type object_already_detached_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_schema_as_json_request() :: %{
    required("SchemaArn") => String.t()
  }
  """
  @type get_schema_as_json_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  typed_link_attribute_range() :: %{
    "AttributeName" => String.t(),
    "Range" => typed_attribute_value_range()
  }
  """
  @type typed_link_attribute_range() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_directory_request() :: %{
    required("DirectoryArn") => String.t()
  }
  """
  @type get_directory_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_facet_response() :: %{
    "Facet" => facet()
  }
  """
  @type get_facet_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  list_managed_schema_arns_request() :: %{
    optional("MaxResults") => integer(),
    optional("NextToken") => String.t(),
    optional("SchemaArn") => String.t()
  }
  """
  @type list_managed_schema_arns_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_write_exception() :: %{
    "Index" => integer(),
    "Message" => String.t(),
    "Type" => list(any())
  }
  """
  @type batch_write_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_object_attributes_request() :: %{
    optional("ConsistencyLevel") => list(any()),
    required("AttributeNames") => list(String.t()()),
    required("DirectoryArn") => String.t(),
    required("ObjectReference") => object_reference(),
    required("SchemaFacet") => schema_facet()
  }
  """
  @type get_object_attributes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_get_link_attributes_response() :: %{
    "Attributes" => list(attribute_key_and_value()())
  }
  """
  @type batch_get_link_attributes_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  get_typed_link_facet_information_response() :: %{
    "IdentityAttributeOrder" => list(String.t()())
  }
  """
  @type get_typed_link_facet_information_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  update_schema_request() :: %{
    required("Name") => String.t(),
    required("SchemaArn") => String.t()
  }
  """
  @type update_schema_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  invalid_tagging_request_exception() :: %{
    "Message" => String.t()
  }
  """
  @type invalid_tagging_request_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
  batch_add_facet_to_object() :: %{
    "ObjectAttributeList" => list(attribute_key_and_value()()),
    "ObjectReference" => object_reference(),
    "SchemaFacet" => schema_facet()
  }
  """
  @type batch_add_facet_to_object() :: %{String.t() => any()}

  def metadata do
    %{
      api_version: "2017-01-11",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "clouddirectory",
      global?: false,
      protocol: "rest-json",
      service_id: "CloudDirectory",
      signature_version: "v4",
      signing_name: "clouddirectory",
      target_prefix: nil
    }
  end

  @doc """
  Adds a new `Facet` to an object.

  An object can have more than one facet applied on it.
  """
  @spec add_facet_to_object(map(), add_facet_to_object_request(), list()) ::
          {:ok, add_facet_to_object_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, facet_validation_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def add_facet_to_object(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/object/facets"

    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Copies the input published schema, at the specified version, into the
  `Directory` with the same
  name and version as that of the published schema.
  """
  @spec apply_schema(map(), apply_schema_request(), list()) ::
          {:ok, apply_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_attachment_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, schema_already_exists_exception()}
          | {:error, validation_exception()}
  def apply_schema(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/schema/apply"

    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Attaches an existing object to another object.

  An object can be accessed in two
  ways:

    1.
  Using the path

    2.
  Using `ObjectIdentifier`
  """
  @spec attach_object(map(), attach_object_request(), list()) ::
          {:ok, attach_object_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, facet_validation_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_attachment_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, link_name_already_in_use_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def attach_object(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/object/attach"

    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Attaches a policy object to a regular object.

  An object can have a limited number of attached
  policies.
  """
  @spec attach_policy(map(), attach_policy_request(), list()) ::
          {:ok, attach_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, not_policy_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def attach_policy(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/policy/attach"

    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Attaches the specified object to the specified index.
  """
  @spec attach_to_index(map(), attach_to_index_request(), list()) ::
          {:ok, attach_to_index_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, indexed_attribute_missing_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_attachment_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, link_name_already_in_use_exception()}
          | {:error, not_index_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def attach_to_index(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/index/attach"

    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Attaches a typed link to a specified source and target object.

  For more information, see [Typed Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
  """
  @spec attach_typed_link(map(), attach_typed_link_request(), list()) ::
          {:ok, attach_typed_link_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, facet_validation_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_attachment_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def attach_typed_link(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/typedlink/attach"

    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Performs all the read operations in a batch.
  """
  @spec batch_read(map(), batch_read_request(), list()) ::
          {:ok, batch_read_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def batch_read(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/batchread"

    {headers, input} =
      [
        {"ConsistencyLevel", "x-amz-consistency-level"},
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Performs all the write operations in a batch.

  Either all the operations succeed or
  none.
  """
  @spec batch_write(map(), batch_write_request(), list()) ::
          {:ok, batch_write_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, batch_write_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def batch_write(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/batchwrite"

    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a `Directory` by copying the published schema into the
  directory.

  A directory cannot be created without a schema.

  You can also quickly create a directory using a managed schema, called the
  `QuickStartSchema`. For more information, see [Managed Schema](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_managed.html)
  in the *Amazon Cloud Directory Developer Guide*.
  """
  @spec create_directory(map(), create_directory_request(), list()) ::
          {:ok, create_directory_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_already_exists_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def create_directory(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/directory/create"

    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a new `Facet` in a schema.

  Facet creation is allowed only
  in development or applied schemas.
  """
  @spec create_facet(map(), create_facet_request(), list()) ::
          {:ok, create_facet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, facet_already_exists_exception()}
          | {:error, facet_validation_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_rule_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def create_facet(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/facet/create"

    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates an index object.

  See [Indexing and search](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/indexing_search.html)
  for more information.
  """
  @spec create_index(map(), create_index_request(), list()) ::
          {:ok, create_index_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, facet_validation_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, link_name_already_in_use_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, unsupported_index_type_exception()}
          | {:error, validation_exception()}
  def create_index(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/index"

    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates an object in a `Directory`.

  Additionally attaches the object to
  a parent, if a parent reference and `LinkName` is specified. An object is simply
  a
  collection of `Facet` attributes. You can also use this API call to create a
  policy object, if the facet from which you create the object is a policy facet.
  """
  @spec create_object(map(), create_object_request(), list()) ::
          {:ok, create_object_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, facet_validation_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, link_name_already_in_use_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, unsupported_index_type_exception()}
          | {:error, validation_exception()}
  def create_object(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/object"

    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a new schema in a development state.

  A schema can exist in three
  phases:

    *

  *Development:* This is a mutable phase of the schema. All new
  schemas are in the development phase. Once the schema is finalized, it can be
  published.

    *

  *Published:* Published schemas are immutable and have a version
  associated with them.

    *

  *Applied:* Applied schemas are mutable in a way that allows you
  to add new schema facets. You can also add new, nonrequired attributes to
  existing schema
  facets. You can apply only published schemas to directories.
  """
  @spec create_schema(map(), create_schema_request(), list()) ::
          {:ok, create_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, schema_already_exists_exception()}
          | {:error, validation_exception()}
  def create_schema(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/schema/create"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Creates a `TypedLinkFacet`.

  For more information, see [Typed Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
  """
  @spec create_typed_link_facet(map(), create_typed_link_facet_request(), list()) ::
          {:ok, create_typed_link_facet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, facet_already_exists_exception()}
          | {:error, facet_validation_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_rule_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def create_typed_link_facet(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/typedlink/facet/create"

    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Deletes a directory.

  Only disabled directories can be deleted. A deleted directory cannot be undone.
  Exercise extreme
  caution
  when deleting directories.
  """
  @spec delete_directory(map(), delete_directory_request(), list()) ::
          {:ok, delete_directory_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_deleted_exception()}
          | {:error, directory_not_disabled_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def delete_directory(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/directory"

    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Deletes a given `Facet`.

  All attributes and `Rule`s
  that are associated with the facet will be deleted. Only development schema
  facets are allowed
  deletion.
  """
  @spec delete_facet(map(), delete_facet_request(), list()) ::
          {:ok, delete_facet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, facet_in_use_exception()}
          | {:error, facet_not_found_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def delete_facet(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/facet/delete"

    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Deletes an object and its associated attributes.

  Only objects with no children and no
  parents can be deleted. The maximum number of attributes that can be deleted
  during an object deletion is 30. For more information, see [Amazon Cloud Directory
  Limits](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/limits.html).
  """
  @spec delete_object(map(), delete_object_request(), list()) ::
          {:ok, delete_object_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, object_not_detached_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def delete_object(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/object/delete"

    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Deletes a given schema.

  Schemas in a development and published state can only be deleted.
  """
  @spec delete_schema(map(), delete_schema_request(), list()) ::
          {:ok, delete_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, still_contains_links_exception()}
          | {:error, validation_exception()}
  def delete_schema(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/schema"

    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Deletes a `TypedLinkFacet`.

  For more information, see [Typed Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
  """
  @spec delete_typed_link_facet(map(), delete_typed_link_facet_request(), list()) ::
          {:ok, delete_typed_link_facet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, facet_not_found_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def delete_typed_link_facet(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/typedlink/facet/delete"

    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Detaches the specified object from the specified index.
  """
  @spec detach_from_index(map(), detach_from_index_request(), list()) ::
          {:ok, detach_from_index_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, not_index_exception()}
          | {:error, object_already_detached_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def detach_from_index(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/index/detach"

    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Detaches a given object from the parent object.

  The object that is to be detached from the
  parent is specified by the link name.
  """
  @spec detach_object(map(), detach_object_request(), list()) ::
          {:ok, detach_object_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, not_node_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def detach_object(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/object/detach"

    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Detaches a policy from an object.
  """
  @spec detach_policy(map(), detach_policy_request(), list()) ::
          {:ok, detach_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, not_policy_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def detach_policy(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/policy/detach"

    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Detaches a typed link from a specified source and target object.

  For more information, see [Typed Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
  """
  @spec detach_typed_link(map(), detach_typed_link_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, facet_validation_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def detach_typed_link(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/typedlink/detach"

    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Disables the specified directory.

  Disabled directories cannot be read or written to.
  Only enabled directories can be disabled. Disabled directories may be reenabled.
  """
  @spec disable_directory(map(), disable_directory_request(), list()) ::
          {:ok, disable_directory_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_deleted_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def disable_directory(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/directory/disable"

    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Enables the specified directory.

  Only disabled directories can be enabled. Once
  enabled, the directory can then be read and written to.
  """
  @spec enable_directory(map(), enable_directory_request(), list()) ::
          {:ok, enable_directory_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_deleted_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def enable_directory(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/directory/enable"

    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Returns current applied schema version ARN, including the minor version in use.
  """
  @spec get_applied_schema_version(map(), get_applied_schema_version_request(), list()) ::
          {:ok, get_applied_schema_version_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def get_applied_schema_version(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/schema/getappliedschema"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Retrieves metadata about a directory.
  """
  @spec get_directory(map(), get_directory_request(), list()) ::
          {:ok, get_directory_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def get_directory(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/directory/get"

    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Gets details of the `Facet`, such as facet name, attributes, `Rule`s, or
  `ObjectType`.

  You can call this on all kinds of schema
  facets -- published, development, or applied.
  """
  @spec get_facet(map(), get_facet_request(), list()) ::
          {:ok, get_facet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, facet_not_found_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def get_facet(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/facet"

    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Retrieves attributes that are associated with a typed link.
  """
  @spec get_link_attributes(map(), get_link_attributes_request(), list()) ::
          {:ok, get_link_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, facet_validation_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def get_link_attributes(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/typedlink/attributes/get"

    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Retrieves attributes within a facet that are associated with an object.
  """
  @spec get_object_attributes(map(), get_object_attributes_request(), list()) ::
          {:ok, get_object_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, facet_validation_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def get_object_attributes(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/object/attributes/get"

    {headers, input} =
      [
        {"ConsistencyLevel", "x-amz-consistency-level"},
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Retrieves metadata about an object.
  """
  @spec get_object_information(map(), get_object_information_request(), list()) ::
          {:ok, get_object_information_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def get_object_information(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/object/information"

    {headers, input} =
      [
        {"ConsistencyLevel", "x-amz-consistency-level"},
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Retrieves a JSON representation of the schema.

  See [JSON Schema Format](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_jsonformat.html#schemas_json)
  for more information.
  """
  @spec get_schema_as_json(map(), get_schema_as_json_request(), list()) ::
          {:ok, get_schema_as_json_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def get_schema_as_json(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/schema/json"

    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Returns the identity attribute order for a specific `TypedLinkFacet`.

  For more information, see [Typed Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
  """
  @spec get_typed_link_facet_information(
          map(),
          get_typed_link_facet_information_request(),
          list()
        ) ::
          {:ok, get_typed_link_facet_information_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, facet_not_found_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_next_token_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def get_typed_link_facet_information(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/typedlink/facet/get"

    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Lists schema major versions applied to a directory.

  If `SchemaArn` is provided, lists the minor version.
  """
  @spec list_applied_schema_arns(map(), list_applied_schema_arns_request(), list()) ::
          {:ok, list_applied_schema_arns_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_next_token_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def list_applied_schema_arns(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/schema/applied"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Lists indices attached to the specified object.
  """
  @spec list_attached_indices(map(), list_attached_indices_request(), list()) ::
          {:ok, list_attached_indices_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def list_attached_indices(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/object/indices"

    {headers, input} =
      [
        {"ConsistencyLevel", "x-amz-consistency-level"},
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Retrieves each Amazon Resource Name (ARN) of schemas in the development
  state.
  """
  @spec list_development_schema_arns(map(), list_development_schema_arns_request(), list()) ::
          {:ok, list_development_schema_arns_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_next_token_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def list_development_schema_arns(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/schema/development"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Lists directories created within an account.
  """
  @spec list_directories(map(), list_directories_request(), list()) ::
          {:ok, list_directories_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_next_token_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def list_directories(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/directory/list"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Retrieves attributes attached to the facet.
  """
  @spec list_facet_attributes(map(), list_facet_attributes_request(), list()) ::
          {:ok, list_facet_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, facet_not_found_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_next_token_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def list_facet_attributes(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/facet/attributes"

    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Retrieves the names of facets that exist in a schema.
  """
  @spec list_facet_names(map(), list_facet_names_request(), list()) ::
          {:ok, list_facet_names_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_next_token_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def list_facet_names(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/facet/list"

    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Returns a paginated list of all the incoming `TypedLinkSpecifier`
  information for an object.

  It also supports filtering by typed link facet and identity
  attributes. For more information, see [Typed Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
  """
  @spec list_incoming_typed_links(map(), list_incoming_typed_links_request(), list()) ::
          {:ok, list_incoming_typed_links_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, facet_validation_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_next_token_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def list_incoming_typed_links(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/typedlink/incoming"

    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Lists objects attached to the specified index.
  """
  @spec list_index(map(), list_index_request(), list()) ::
          {:ok, list_index_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, facet_validation_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_next_token_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, not_index_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def list_index(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/index/targets"

    {headers, input} =
      [
        {"ConsistencyLevel", "x-amz-consistency-level"},
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Lists the major version families of each managed schema.

  If a major version ARN is provided as SchemaArn, the minor version revisions in
  that family are listed instead.
  """
  @spec list_managed_schema_arns(map(), list_managed_schema_arns_request(), list()) ::
          {:ok, list_managed_schema_arns_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_next_token_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, validation_exception()}
  def list_managed_schema_arns(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/schema/managed"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Lists all attributes that are associated with an object.
  """
  @spec list_object_attributes(map(), list_object_attributes_request(), list()) ::
          {:ok, list_object_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, facet_validation_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_next_token_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def list_object_attributes(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/object/attributes"

    {headers, input} =
      [
        {"ConsistencyLevel", "x-amz-consistency-level"},
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Returns a paginated list of child objects that are associated with a given
  object.
  """
  @spec list_object_children(map(), list_object_children_request(), list()) ::
          {:ok, list_object_children_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_next_token_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, not_node_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def list_object_children(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/object/children"

    {headers, input} =
      [
        {"ConsistencyLevel", "x-amz-consistency-level"},
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Retrieves all available parent paths for any object type such as node, leaf
  node,
  policy node, and index node objects.

  For more information about objects, see [Directory Structure](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directorystructure.html).

  Use this API to evaluate all parents for an object. The call returns all objects
  from
  the root of the directory up to the requested object. The API returns the number
  of paths
  based on user-defined `MaxResults`, in case there are multiple paths to the
  parent.
  The order of the paths and nodes returned is consistent among multiple API calls
  unless the
  objects are deleted or moved. Paths not leading to the directory root are
  ignored from the
  target object.
  """
  @spec list_object_parent_paths(map(), list_object_parent_paths_request(), list()) ::
          {:ok, list_object_parent_paths_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_next_token_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def list_object_parent_paths(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/object/parentpaths"

    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Lists parent objects that are associated with a given object in pagination
  fashion.
  """
  @spec list_object_parents(map(), list_object_parents_request(), list()) ::
          {:ok, list_object_parents_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, cannot_list_parent_of_root_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_next_token_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def list_object_parents(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/object/parent"

    {headers, input} =
      [
        {"ConsistencyLevel", "x-amz-consistency-level"},
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Returns policies attached to an object in pagination fashion.
  """
  @spec list_object_policies(map(), list_object_policies_request(), list()) ::
          {:ok, list_object_policies_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_next_token_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def list_object_policies(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/object/policy"

    {headers, input} =
      [
        {"ConsistencyLevel", "x-amz-consistency-level"},
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Returns a paginated list of all the outgoing `TypedLinkSpecifier`
  information for an object.

  It also supports filtering by typed link facet and identity
  attributes. For more information, see [Typed Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
  """
  @spec list_outgoing_typed_links(map(), list_outgoing_typed_links_request(), list()) ::
          {:ok, list_outgoing_typed_links_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, facet_validation_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_next_token_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def list_outgoing_typed_links(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/typedlink/outgoing"

    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Returns all of the `ObjectIdentifiers` to which a given policy is attached.
  """
  @spec list_policy_attachments(map(), list_policy_attachments_request(), list()) ::
          {:ok, list_policy_attachments_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_next_token_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, not_policy_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def list_policy_attachments(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/policy/attachment"

    {headers, input} =
      [
        {"ConsistencyLevel", "x-amz-consistency-level"},
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Lists the major version families of each published schema.

  If a major version ARN is provided as `SchemaArn`, the minor version revisions
  in that family are listed instead.
  """
  @spec list_published_schema_arns(map(), list_published_schema_arns_request(), list()) ::
          {:ok, list_published_schema_arns_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_next_token_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def list_published_schema_arns(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/schema/published"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Returns tags for a resource.

  Tagging is currently supported only for directories with a
  limit of 50 tags per directory. All 50 tags are returned for a given directory
  with this API
  call.
  """
  @spec list_tags_for_resource(map(), list_tags_for_resource_request(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_tagging_request_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/tags"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Returns a paginated list of all attribute definitions for a particular
  `TypedLinkFacet`.

  For more information, see [Typed Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
  """
  @spec list_typed_link_facet_attributes(
          map(),
          list_typed_link_facet_attributes_request(),
          list()
        ) ::
          {:ok, list_typed_link_facet_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, facet_not_found_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_next_token_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def list_typed_link_facet_attributes(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/typedlink/facet/attributes"

    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Returns a paginated list of `TypedLink` facet names for a particular schema.

  For more information, see [Typed Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
  """
  @spec list_typed_link_facet_names(map(), list_typed_link_facet_names_request(), list()) ::
          {:ok, list_typed_link_facet_names_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_next_token_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def list_typed_link_facet_names(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/typedlink/facet/list"

    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Lists all policies from the root of the `Directory` to the object
  specified.

  If there are no policies present, an empty list is returned. If policies are
  present, and if some objects don't have the policies attached, it returns the
  `ObjectIdentifier`
  for such objects. If policies are present, it returns `ObjectIdentifier`,
  `policyId`, and
  `policyType`. Paths that don't lead to the root from the target object are
  ignored. For more
  information, see
  [Policies](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/key_concepts_directory.html#key_concepts_policies).
  """
  @spec lookup_policy(map(), lookup_policy_request(), list()) ::
          {:ok, lookup_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_next_token_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def lookup_policy(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/policy/lookup"

    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Publishes a development schema with a major version and a recommended minor
  version.
  """
  @spec publish_schema(map(), publish_schema_request(), list()) ::
          {:ok, publish_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, schema_already_published_exception()}
          | {:error, validation_exception()}
  def publish_schema(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/schema/publish"

    {headers, input} =
      [
        {"DevelopmentSchemaArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Allows a schema to be updated using JSON upload.

  Only available for development schemas. See [JSON Schema Format](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_jsonformat.html#schemas_json)
  for more information.
  """
  @spec put_schema_from_json(map(), put_schema_from_json_request(), list()) ::
          {:ok, put_schema_from_json_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_rule_exception()}
          | {:error, invalid_schema_doc_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def put_schema_from_json(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/schema/json"

    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Removes the specified facet from the specified object.
  """
  @spec remove_facet_from_object(map(), remove_facet_from_object_request(), list()) ::
          {:ok, remove_facet_from_object_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, facet_validation_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def remove_facet_from_object(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/object/facets/delete"

    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  An API operation for adding tags to a resource.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, tag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_tagging_request_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def tag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/tags/add"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  An API operation for removing tags from a resource.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, untag_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_tagging_request_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def untag_resource(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/tags/remove"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Does the following:

    1.

  Adds new `Attributes`, `Rules`, or `ObjectTypes`.

    2.
  Updates existing `Attributes`, `Rules`, or `ObjectTypes`.

    3.
  Deletes existing `Attributes`, `Rules`, or `ObjectTypes`.
  """
  @spec update_facet(map(), update_facet_request(), list()) ::
          {:ok, update_facet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, facet_not_found_exception()}
          | {:error, facet_validation_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_facet_update_exception()}
          | {:error, invalid_rule_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def update_facet(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/facet"

    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a given typed link’s attributes.

  Attributes to be updated must not contribute to the typed link’s identity, as
  defined by its `IdentityAttributeOrder`.
  """
  @spec update_link_attributes(map(), update_link_attributes_request(), list()) ::
          {:ok, update_link_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, facet_validation_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def update_link_attributes(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/typedlink/attributes/update"

    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
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
  Updates a given object's attributes.
  """
  @spec update_object_attributes(map(), update_object_attributes_request(), list()) ::
          {:ok, update_object_attributes_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, directory_not_enabled_exception()}
          | {:error, facet_validation_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, link_name_already_in_use_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def update_object_attributes(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/object/update"

    {headers, input} =
      [
        {"DirectoryArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates the schema name with a new name.

  Only development schema names can be
  updated.
  """
  @spec update_schema(map(), update_schema_request(), list()) ::
          {:ok, update_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def update_schema(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/schema/update"

    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a `TypedLinkFacet`.

  For more information, see [Typed Links](https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_links.html#directory_objects_links_typedlink).
  """
  @spec update_typed_link_facet(map(), update_typed_link_facet_request(), list()) ::
          {:ok, update_typed_link_facet_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, facet_not_found_exception()}
          | {:error, facet_validation_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_facet_update_exception()}
          | {:error, invalid_rule_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def update_typed_link_facet(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/typedlink/facet"

    {headers, input} =
      [
        {"SchemaArn", "x-amz-data-partition"}
      ]
      |> Request.build_params(input)

    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Upgrades a single directory in-place using the `PublishedSchemaArn` with schema
  updates found in `MinorVersion`.

  Backwards-compatible minor version upgrades are instantaneously available for
  readers on all objects in the directory. Note: This is a synchronous API call
  and upgrades only one schema on a given directory per call. To upgrade multiple
  directories from one schema, you would need to call this API on each directory.
  """
  @spec upgrade_applied_schema(map(), upgrade_applied_schema_request(), list()) ::
          {:ok, upgrade_applied_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, incompatible_schema_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_attachment_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, schema_already_exists_exception()}
          | {:error, validation_exception()}
  def upgrade_applied_schema(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/schema/upgradeapplied"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Upgrades a published schema under a new minor version revision using the current
  contents of `DevelopmentSchemaArn`.
  """
  @spec upgrade_published_schema(map(), upgrade_published_schema_request(), list()) ::
          {:ok, upgrade_published_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, access_denied_exception()}
          | {:error, incompatible_schema_exception()}
          | {:error, internal_service_exception()}
          | {:error, invalid_arn_exception()}
          | {:error, invalid_attachment_exception()}
          | {:error, limit_exceeded_exception()}
          | {:error, resource_not_found_exception()}
          | {:error, retryable_conflict_exception()}
          | {:error, validation_exception()}
  def upgrade_published_schema(%Client{} = client, input, options \\ []) do
    url_path = "/amazonclouddirectory/2017-01-11/schema/upgradepublished"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
