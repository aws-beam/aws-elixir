# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Schemas do
  @moduledoc """
  Amazon EventBridge Schema Registry
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      tag_resource_request() :: %{
        required("Tags") => map()
      }

  """
  @type tag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_schema_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Tags") => map(),
        required("Content") => String.t() | atom(),
        required("Type") => list(any())
      }

  """
  @type create_schema_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_code_binding_source_request() :: %{
        optional("SchemaVersion") => String.t() | atom()
      }

  """
  @type get_code_binding_source_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type unauthorized_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_code_binding_request() :: %{
        optional("SchemaVersion") => String.t() | atom()
      }

  """
  @type describe_code_binding_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_schemas_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("Keywords") => String.t() | atom()
      }

  """
  @type search_schemas_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_schema_request() :: %{
        optional("SchemaVersion") => String.t() | atom()
      }

  """
  @type describe_schema_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_schema_request() :: %{}

  """
  @type delete_schema_request() :: %{}

  @typedoc """

  ## Example:

      delete_registry_request() :: %{}

  """
  @type delete_registry_request() :: %{}

  @typedoc """

  ## Example:

      forbidden_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type forbidden_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_schema_versions_response() :: %{
        "NextToken" => String.t() | atom(),
        "SchemaVersions" => list(schema_version_summary())
      }

  """
  @type list_schema_versions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_registry_response() :: %{
        "Description" => String.t() | atom(),
        "RegistryArn" => String.t() | atom(),
        "RegistryName" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type create_registry_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_discoverers_request() :: %{
        optional("DiscovererIdPrefix") => String.t() | atom(),
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SourceArnPrefix") => String.t() | atom()
      }

  """
  @type list_discoverers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_discoverer_request() :: %{}

  """
  @type delete_discoverer_request() :: %{}

  @typedoc """

  ## Example:

      create_discoverer_response() :: %{
        "CrossAccount" => boolean(),
        "Description" => String.t() | atom(),
        "DiscovererArn" => String.t() | atom(),
        "DiscovererId" => String.t() | atom(),
        "SourceArn" => String.t() | atom(),
        "State" => list(any()),
        "Tags" => map()
      }

  """
  @type create_discoverer_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_discovered_schema_request() :: %{
        required("Events") => list(String.t() | atom()),
        required("Type") => list(any())
      }

  """
  @type get_discovered_schema_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_resource_policy_response() :: %{
        "Policy" => String.t() | atom(),
        "RevisionId" => String.t() | atom()
      }

  """
  @type get_resource_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_schema_response() :: %{
        "Content" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "LastModified" => non_neg_integer(),
        "SchemaArn" => String.t() | atom(),
        "SchemaName" => String.t() | atom(),
        "SchemaVersion" => String.t() | atom(),
        "Tags" => map(),
        "Type" => String.t() | atom(),
        "VersionCreatedDate" => non_neg_integer()
      }

  """
  @type describe_schema_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      gone_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type gone_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_registry_request() :: %{
        optional("Description") => String.t() | atom()
      }

  """
  @type update_registry_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_schema_response() :: %{
        "Description" => String.t() | atom(),
        "LastModified" => non_neg_integer(),
        "SchemaArn" => String.t() | atom(),
        "SchemaName" => String.t() | atom(),
        "SchemaVersion" => String.t() | atom(),
        "Tags" => map(),
        "Type" => String.t() | atom(),
        "VersionCreatedDate" => non_neg_integer()
      }

  """
  @type update_schema_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_discoverer_response() :: %{
        "CrossAccount" => boolean(),
        "Description" => String.t() | atom(),
        "DiscovererArn" => String.t() | atom(),
        "DiscovererId" => String.t() | atom(),
        "SourceArn" => String.t() | atom(),
        "State" => list(any()),
        "Tags" => map()
      }

  """
  @type update_discoverer_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_schema_response() :: %{
        "Description" => String.t() | atom(),
        "LastModified" => non_neg_integer(),
        "SchemaArn" => String.t() | atom(),
        "SchemaName" => String.t() | atom(),
        "SchemaVersion" => String.t() | atom(),
        "Tags" => map(),
        "Type" => String.t() | atom(),
        "VersionCreatedDate" => non_neg_integer()
      }

  """
  @type create_schema_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      untag_resource_request() :: %{
        required("TagKeys") => list(String.t() | atom())
      }

  """
  @type untag_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      too_many_requests_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type too_many_requests_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_discoverer_response() :: %{
        "CrossAccount" => boolean(),
        "Description" => String.t() | atom(),
        "DiscovererArn" => String.t() | atom(),
        "DiscovererId" => String.t() | atom(),
        "SourceArn" => String.t() | atom(),
        "State" => list(any()),
        "Tags" => map()
      }

  """
  @type describe_discoverer_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_code_binding_request() :: %{
        optional("SchemaVersion") => String.t() | atom()
      }

  """
  @type put_code_binding_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_schemas_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("SchemaNamePrefix") => String.t() | atom()
      }

  """
  @type list_schemas_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_code_binding_response() :: %{
        "CreationDate" => non_neg_integer(),
        "LastModified" => non_neg_integer(),
        "SchemaVersion" => String.t() | atom(),
        "Status" => list(any())
      }

  """
  @type put_code_binding_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      export_schema_request() :: %{
        optional("SchemaVersion") => String.t() | atom(),
        required("Type") => String.t() | atom()
      }

  """
  @type export_schema_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_discoverer_request() :: %{
        optional("CrossAccount") => boolean(),
        optional("Description") => String.t() | atom()
      }

  """
  @type update_discoverer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_discoverer_request() :: %{
        optional("CrossAccount") => boolean(),
        optional("Description") => String.t() | atom(),
        optional("Tags") => map(),
        required("SourceArn") => String.t() | atom()
      }

  """
  @type create_discoverer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_discoverers_response() :: %{
        "Discoverers" => list(discoverer_summary()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_discoverers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_code_binding_source_response() :: %{
        "Body" => binary()
      }

  """
  @type get_code_binding_source_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_schema_version_request() :: %{}

  """
  @type delete_schema_version_request() :: %{}

  @typedoc """

  ## Example:

      schema_summary() :: %{
        "LastModified" => non_neg_integer(),
        "SchemaArn" => String.t() | atom(),
        "SchemaName" => String.t() | atom(),
        "Tags" => map(),
        "VersionCount" => float()
      }

  """
  @type schema_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_schema_summary() :: %{
        optional("RegistryName") => String.t() | atom(),
        optional("SchemaArn") => String.t() | atom(),
        optional("SchemaName") => String.t() | atom(),
        optional("SchemaVersions") => list(search_schema_version_summary())
      }

  """
  @type search_schema_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      not_found_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_response() :: %{
        "Tags" => map()
      }

  """
  @type list_tags_for_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      service_unavailable_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type service_unavailable_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_discoverer_response() :: %{
        "DiscovererId" => String.t() | atom(),
        "State" => list(any())
      }

  """
  @type stop_discoverer_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_resource_policy_request() :: %{
        optional("RegistryName") => String.t() | atom()
      }

  """
  @type get_resource_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_registry_response() :: %{
        "Description" => String.t() | atom(),
        "RegistryArn" => String.t() | atom(),
        "RegistryName" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type describe_registry_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      stop_discoverer_request() :: %{}

  """
  @type stop_discoverer_request() :: %{}

  @typedoc """

  ## Example:

      search_schema_version_summary() :: %{
        optional("CreatedDate") => non_neg_integer(),
        optional("SchemaVersion") => String.t() | atom(),
        optional("Type") => list(any())
      }

  """
  @type search_schema_version_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_registry_response() :: %{
        "Description" => String.t() | atom(),
        "RegistryArn" => String.t() | atom(),
        "RegistryName" => String.t() | atom(),
        "Tags" => map()
      }

  """
  @type update_registry_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_schema_versions_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_schema_versions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_discoverer_request() :: %{}

  """
  @type describe_discoverer_request() :: %{}

  @typedoc """

  ## Example:

      list_registries_response() :: %{
        "NextToken" => String.t() | atom(),
        "Registries" => list(registry_summary())
      }

  """
  @type list_registries_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_resource_policy_request() :: %{
        optional("RegistryName") => String.t() | atom(),
        optional("RevisionId") => String.t() | atom(),
        required("Policy") => String.t() | atom()
      }

  """
  @type put_resource_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_schemas_response() :: %{
        "NextToken" => String.t() | atom(),
        "Schemas" => list(search_schema_summary())
      }

  """
  @type search_schemas_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_discovered_schema_response() :: %{
        "Content" => String.t() | atom()
      }

  """
  @type get_discovered_schema_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_registries_request() :: %{
        optional("Limit") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("RegistryNamePrefix") => String.t() | atom(),
        optional("Scope") => String.t() | atom()
      }

  """
  @type list_registries_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_registry_request() :: %{}

  """
  @type describe_registry_request() :: %{}

  @typedoc """

  ## Example:

      export_schema_response() :: %{
        "Content" => String.t() | atom(),
        "SchemaArn" => String.t() | atom(),
        "SchemaName" => String.t() | atom(),
        "SchemaVersion" => String.t() | atom(),
        "Type" => String.t() | atom()
      }

  """
  @type export_schema_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_request() :: %{}

  """
  @type list_tags_for_resource_request() :: %{}

  @typedoc """

  ## Example:

      internal_server_error_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type internal_server_error_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_registry_request() :: %{
        optional("Description") => String.t() | atom(),
        optional("Tags") => map()
      }

  """
  @type create_registry_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_resource_policy_response() :: %{
        "Policy" => String.t() | atom(),
        "RevisionId" => String.t() | atom()
      }

  """
  @type put_resource_policy_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      bad_request_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type bad_request_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_resource_policy_request() :: %{
        optional("RegistryName") => String.t() | atom()
      }

  """
  @type delete_resource_policy_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_discoverer_response() :: %{
        "DiscovererId" => String.t() | atom(),
        "State" => list(any())
      }

  """
  @type start_discoverer_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      discoverer_summary() :: %{
        optional("CrossAccount") => boolean(),
        optional("DiscovererArn") => String.t() | atom(),
        optional("DiscovererId") => String.t() | atom(),
        optional("SourceArn") => String.t() | atom(),
        optional("State") => list(any()),
        optional("Tags") => map()
      }

  """
  @type discoverer_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_schemas_response() :: %{
        "NextToken" => String.t() | atom(),
        "Schemas" => list(schema_summary())
      }

  """
  @type list_schemas_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      precondition_failed_exception() :: %{
        "Code" => String.t() | atom(),
        "Message" => String.t() | atom()
      }

  """
  @type precondition_failed_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      schema_version_summary() :: %{
        optional("SchemaArn") => String.t() | atom(),
        optional("SchemaName") => String.t() | atom(),
        optional("SchemaVersion") => String.t() | atom(),
        optional("Type") => list(any())
      }

  """
  @type schema_version_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_code_binding_response() :: %{
        "CreationDate" => non_neg_integer(),
        "LastModified" => non_neg_integer(),
        "SchemaVersion" => String.t() | atom(),
        "Status" => list(any())
      }

  """
  @type describe_code_binding_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      registry_summary() :: %{
        optional("RegistryArn") => String.t() | atom(),
        optional("RegistryName") => String.t() | atom(),
        optional("Tags") => map()
      }

  """
  @type registry_summary() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_discoverer_request() :: %{}

  """
  @type start_discoverer_request() :: %{}

  @typedoc """

  ## Example:

      update_schema_request() :: %{
        optional("ClientTokenId") => String.t() | atom(),
        optional("Content") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        optional("Type") => list(any())
      }

  """
  @type update_schema_request() :: %{(String.t() | atom()) => any()}

  @type create_discoverer_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type create_registry_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | conflict_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type create_schema_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | forbidden_exception()

  @type delete_discoverer_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type delete_registry_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type delete_resource_policy_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type delete_schema_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type delete_schema_version_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type describe_code_binding_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type describe_discoverer_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type describe_registry_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type describe_schema_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type export_schema_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type get_code_binding_source_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type get_discovered_schema_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type get_resource_policy_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_discoverers_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_registries_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_schema_versions_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_schemas_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type list_tags_for_resource_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type put_code_binding_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | too_many_requests_exception()
          | gone_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type put_resource_policy_errors() ::
          precondition_failed_exception()
          | bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type search_schemas_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type start_discoverer_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type stop_discoverer_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type tag_resource_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type untag_resource_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | not_found_exception()
          | forbidden_exception()

  @type update_discoverer_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type update_registry_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()
          | unauthorized_exception()

  @type update_schema_errors() ::
          bad_request_exception()
          | internal_server_error_exception()
          | service_unavailable_exception()
          | not_found_exception()
          | forbidden_exception()

  def metadata do
    %{
      api_version: "2019-12-02",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "schemas",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "schemas",
      signature_version: "v4",
      signing_name: "schemas",
      target_prefix: nil
    }
  end

  @doc """
  Creates a discoverer.
  """
  @spec create_discoverer(map(), create_discoverer_request(), list()) ::
          {:ok, create_discoverer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_discoverer_errors()}
  def create_discoverer(%Client{} = client, input, options \\ []) do
    url_path = "/v1/discoverers"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a registry.
  """
  @spec create_registry(map(), String.t() | atom(), create_registry_request(), list()) ::
          {:ok, create_registry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_registry_errors()}
  def create_registry(%Client{} = client, registry_name, input, options \\ []) do
    url_path = "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a schema definition.

  Inactive schemas will be deleted after two years.
  """
  @spec create_schema(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          create_schema_request(),
          list()
        ) ::
          {:ok, create_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_schema_errors()}
  def create_schema(%Client{} = client, registry_name, schema_name, input, options \\ []) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      201
    )
  end

  @doc """
  Deletes a discoverer.
  """
  @spec delete_discoverer(map(), String.t() | atom(), delete_discoverer_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_discoverer_errors()}
  def delete_discoverer(%Client{} = client, discoverer_id, input, options \\ []) do
    url_path = "/v1/discoverers/id/#{AWS.Util.encode_uri(discoverer_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a Registry.
  """
  @spec delete_registry(map(), String.t() | atom(), delete_registry_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_registry_errors()}
  def delete_registry(%Client{} = client, registry_name, input, options \\ []) do
    url_path = "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Delete the resource-based policy attached to the specified registry.
  """
  @spec delete_resource_policy(map(), delete_resource_policy_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_resource_policy_errors()}
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v1/policy"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"RegistryName", "registryName"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Delete a schema definition.
  """
  @spec delete_schema(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          delete_schema_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_schema_errors()}
  def delete_schema(%Client{} = client, registry_name, schema_name, input, options \\ []) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Delete the schema version definition
  """
  @spec delete_schema_version(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          delete_schema_version_request(),
          list()
        ) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_schema_version_errors()}
  def delete_schema_version(
        %Client{} = client,
        registry_name,
        schema_name,
        schema_version,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}/version/#{AWS.Util.encode_uri(schema_version)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Describe the code binding URI.
  """
  @spec describe_code_binding(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, describe_code_binding_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_code_binding_errors()}
  def describe_code_binding(
        %Client{} = client,
        language,
        registry_name,
        schema_name,
        schema_version \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}/language/#{AWS.Util.encode_uri(language)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(schema_version) do
        [{"schemaVersion", schema_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the discoverer.
  """
  @spec describe_discoverer(map(), String.t() | atom(), list()) ::
          {:ok, describe_discoverer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_discoverer_errors()}
  def describe_discoverer(%Client{} = client, discoverer_id, options \\ []) do
    url_path = "/v1/discoverers/id/#{AWS.Util.encode_uri(discoverer_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Describes the registry.
  """
  @spec describe_registry(map(), String.t() | atom(), list()) ::
          {:ok, describe_registry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_registry_errors()}
  def describe_registry(%Client{} = client, registry_name, options \\ []) do
    url_path = "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieve the schema definition.
  """
  @spec describe_schema(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, describe_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_schema_errors()}
  def describe_schema(
        %Client{} = client,
        registry_name,
        schema_name,
        schema_version \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}"

    headers = []
    query_params = []

    query_params =
      if !is_nil(schema_version) do
        [{"schemaVersion", schema_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @spec export_schema(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom(),
          list()
        ) ::
          {:ok, export_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, export_schema_errors()}
  def export_schema(
        %Client{} = client,
        registry_name,
        schema_name,
        schema_version \\ nil,
        type,
        options \\ []
      ) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}/export"

    headers = []
    query_params = []

    query_params =
      if !is_nil(type) do
        [{"type", type} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(schema_version) do
        [{"schemaVersion", schema_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the code binding source URI.
  """
  @spec get_code_binding_source(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, get_code_binding_source_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_code_binding_source_errors()}
  def get_code_binding_source(
        %Client{} = client,
        language,
        registry_name,
        schema_name,
        schema_version \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}/language/#{AWS.Util.encode_uri(language)}/source"

    headers = []
    query_params = []

    query_params =
      if !is_nil(schema_version) do
        [{"schemaVersion", schema_version} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get the discovered schema that was generated based on sampled events.
  """
  @spec get_discovered_schema(map(), get_discovered_schema_request(), list()) ::
          {:ok, get_discovered_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_discovered_schema_errors()}
  def get_discovered_schema(%Client{} = client, input, options \\ []) do
    url_path = "/v1/discover"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Retrieves the resource-based policy attached to a given registry.
  """
  @spec get_resource_policy(map(), String.t() | atom() | nil, list()) ::
          {:ok, get_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_policy_errors()}
  def get_resource_policy(%Client{} = client, registry_name \\ nil, options \\ []) do
    url_path = "/v1/policy"
    headers = []
    query_params = []

    query_params =
      if !is_nil(registry_name) do
        [{"registryName", registry_name} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the discoverers.
  """
  @spec list_discoverers(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_discoverers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_discoverers_errors()}
  def list_discoverers(
        %Client{} = client,
        discoverer_id_prefix \\ nil,
        limit \\ nil,
        next_token \\ nil,
        source_arn_prefix \\ nil,
        options \\ []
      ) do
    url_path = "/v1/discoverers"
    headers = []
    query_params = []

    query_params =
      if !is_nil(source_arn_prefix) do
        [{"sourceArnPrefix", source_arn_prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(discoverer_id_prefix) do
        [{"discovererIdPrefix", discoverer_id_prefix} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the registries.
  """
  @spec list_registries(
          map(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_registries_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_registries_errors()}
  def list_registries(
        %Client{} = client,
        limit \\ nil,
        next_token \\ nil,
        registry_name_prefix \\ nil,
        scope \\ nil,
        options \\ []
      ) do
    url_path = "/v1/registries"
    headers = []
    query_params = []

    query_params =
      if !is_nil(scope) do
        [{"scope", scope} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(registry_name_prefix) do
        [{"registryNamePrefix", registry_name_prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Provides a list of the schema versions and related information.
  """
  @spec list_schema_versions(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_schema_versions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_schema_versions_errors()}
  def list_schema_versions(
        %Client{} = client,
        registry_name,
        schema_name,
        limit \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}/versions"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  List the schemas.
  """
  @spec list_schemas(
          map(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, list_schemas_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_schemas_errors()}
  def list_schemas(
        %Client{} = client,
        registry_name,
        limit \\ nil,
        next_token \\ nil,
        schema_name_prefix \\ nil,
        options \\ []
      ) do
    url_path = "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas"
    headers = []
    query_params = []

    query_params =
      if !is_nil(schema_name_prefix) do
        [{"schemaNamePrefix", schema_name_prefix} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Get tags for resource.
  """
  @spec list_tags_for_resource(map(), String.t() | atom(), list()) ::
          {:ok, list_tags_for_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_for_resource_errors()}
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Put code binding URI
  """
  @spec put_code_binding(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom(),
          put_code_binding_request(),
          list()
        ) ::
          {:ok, put_code_binding_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_code_binding_errors()}
  def put_code_binding(
        %Client{} = client,
        language,
        registry_name,
        schema_name,
        input,
        options \\ []
      ) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}/language/#{AWS.Util.encode_uri(language)}"

    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"SchemaVersion", "schemaVersion"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      202
    )
  end

  @doc """
  The name of the policy.
  """
  @spec put_resource_policy(map(), put_resource_policy_request(), list()) ::
          {:ok, put_resource_policy_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_resource_policy_errors()}
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    url_path = "/v1/policy"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"RegistryName", "registryName"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Search the schemas
  """
  @spec search_schemas(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          String.t() | atom() | nil,
          String.t() | atom() | nil,
          list()
        ) ::
          {:ok, search_schemas_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_schemas_errors()}
  def search_schemas(
        %Client{} = client,
        registry_name,
        keywords,
        limit \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/search"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(limit) do
        [{"limit", limit} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(keywords) do
        [{"keywords", keywords} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Starts the discoverer
  """
  @spec start_discoverer(map(), String.t() | atom(), start_discoverer_request(), list()) ::
          {:ok, start_discoverer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_discoverer_errors()}
  def start_discoverer(%Client{} = client, discoverer_id, input, options \\ []) do
    url_path = "/v1/discoverers/id/#{AWS.Util.encode_uri(discoverer_id)}/start"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Stops the discoverer
  """
  @spec stop_discoverer(map(), String.t() | atom(), stop_discoverer_request(), list()) ::
          {:ok, stop_discoverer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_discoverer_errors()}
  def stop_discoverer(%Client{} = client, discoverer_id, input, options \\ []) do
    url_path = "/v1/discoverers/id/#{AWS.Util.encode_uri(discoverer_id)}/stop"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Add tags to a resource.
  """
  @spec tag_resource(map(), String.t() | atom(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :post,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Removes tags from a resource.
  """
  @spec untag_resource(map(), String.t() | atom(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"TagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      204
    )
  end

  @doc """
  Updates the discoverer
  """
  @spec update_discoverer(map(), String.t() | atom(), update_discoverer_request(), list()) ::
          {:ok, update_discoverer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_discoverer_errors()}
  def update_discoverer(%Client{} = client, discoverer_id, input, options \\ []) do
    url_path = "/v1/discoverers/id/#{AWS.Util.encode_uri(discoverer_id)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates a registry.
  """
  @spec update_registry(map(), String.t() | atom(), update_registry_request(), list()) ::
          {:ok, update_registry_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_registry_errors()}
  def update_registry(%Client{} = client, registry_name, input, options \\ []) do
    url_path = "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end

  @doc """
  Updates the schema definition

  Inactive schemas will be deleted after two years.
  """
  @spec update_schema(
          map(),
          String.t() | atom(),
          String.t() | atom(),
          update_schema_request(),
          list()
        ) ::
          {:ok, update_schema_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_schema_errors()}
  def update_schema(%Client{} = client, registry_name, schema_name, input, options \\ []) do
    url_path =
      "/v1/registries/name/#{AWS.Util.encode_uri(registry_name)}/schemas/name/#{AWS.Util.encode_uri(schema_name)}"

    headers = []
    custom_headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :put,
      url_path,
      query_params,
      custom_headers ++ headers,
      input,
      options,
      200
    )
  end
end
