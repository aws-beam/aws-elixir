# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.ResourceExplorer2 do
  @moduledoc """
  Amazon Web Services Resource Explorer is a resource search and discovery
  service.

  By using Resource Explorer, you can
  explore your resources using an internet search engine-like experience. Examples
  of
  resources include Amazon Relational Database Service (Amazon RDS) instances,
  Amazon Simple Storage Service (Amazon S3) buckets, or Amazon DynamoDB
  tables. You can search for your resources using resource metadata like names,
  tags, and
  IDs. Resource Explorer can search across all of the Amazon Web Services Regions
  in your account in which you turn
  the service on, to simplify your cross-Region workloads.

  Resource Explorer scans the resources in each of the Amazon Web Services Regions
  in your Amazon Web Services account in which
  you turn on Resource Explorer. Resource Explorer [creates and maintains an
  index](https://docs.aws.amazon.com/resource-explorer/latest/userguide/getting-started-terms-and-concepts.html#term-index)
  in each Region, with the details of that Region's
  resources.

  You can [search across all of the indexed Regions in your
  account](https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html)
  by designating one of your Amazon Web Services Regions to
  contain the aggregator index for the account. When you [promote a local index in a Region to become the aggregator index for the
  account](https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region-turn-on.html),
  Resource Explorer automatically
  replicates the index information from all local indexes in the other Regions to
  the
  aggregator index. Therefore, the Region with the aggregator index has a copy of
  all resource
  information for all Regions in the account where you turned on Resource
  Explorer. As a result,
  views in the aggregator index Region include resources from all of the indexed
  Regions in your
  account.

  For more information about Amazon Web Services Resource Explorer, including how
  to enable and configure the
  service, see the [Amazon Web Services Resource Explorer User Guide](https://docs.aws.amazon.com/resource-explorer/latest/userguide/).
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      create_index_output() :: %{
        optional("Arn") => [String.t() | Atom.t()],
        optional("CreatedAt") => [non_neg_integer()],
        optional("State") => String.t() | Atom.t()
      }

  """
  @type create_index_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_property() :: %{
        "Data" => [any()],
        "LastReportedAt" => [non_neg_integer()],
        "Name" => [String.t() | Atom.t()]
      }

  """
  @type resource_property() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_get_view_output() :: %{
        optional("Errors") => list(batch_get_view_error()),
        optional("Views") => list(view())
      }

  """
  @type batch_get_view_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      unauthorized_exception() :: %{
        "Message" => [String.t() | Atom.t()]
      }

  """
  @type unauthorized_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_view_output() :: %{
        optional("View") => view()
      }

  """
  @type create_view_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_indexes_for_members_input() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t() | Atom.t()],
        required("AccountIdList") => list(String.t() | Atom.t())
      }

  """
  @type list_indexes_for_members_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      included_property() :: %{
        "Name" => [String.t() | Atom.t()]
      }

  """
  @type included_property() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      search_input() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t() | Atom.t()],
        optional("ViewArn") => [String.t() | Atom.t()],
        required("QueryString") => String.t() | Atom.t()
      }

  """
  @type search_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      view() :: %{
        "Filters" => search_filter(),
        "IncludedProperties" => list(included_property()),
        "LastUpdatedAt" => [non_neg_integer()],
        "Owner" => [String.t() | Atom.t()],
        "Scope" => [String.t() | Atom.t()],
        "ViewArn" => [String.t() | Atom.t()]
      }

  """
  @type view() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      associate_default_view_input() :: %{
        required("ViewArn") => [String.t() | Atom.t()]
      }

  """
  @type associate_default_view_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_view_input() :: %{
        required("ViewArn") => [String.t() | Atom.t()]
      }

  """
  @type delete_view_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_views_output() :: %{
        optional("NextToken") => [String.t() | Atom.t()],
        optional("Views") => list([String.t() | Atom.t()]())
      }

  """
  @type list_views_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_view_output() :: %{
        optional("ViewArn") => [String.t() | Atom.t()]
      }

  """
  @type delete_view_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_output() :: %{
        optional("Tags") => map()
      }

  """
  @type list_tags_for_resource_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_count() :: %{
        "Complete" => [boolean()],
        "TotalResources" => [float()]
      }

  """
  @type resource_count() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_get_view_input() :: %{
        optional("ViewArns") => list([String.t() | Atom.t()]())
      }

  """
  @type batch_get_view_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_managed_views_output() :: %{
        "ManagedViews" => list([String.t() | Atom.t()]()),
        "NextToken" => [String.t() | Atom.t()]
      }

  """
  @type list_managed_views_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_supported_resource_types_input() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t() | Atom.t()]
      }

  """
  @type list_supported_resource_types_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_index_output() :: %{
        optional("Arn") => [String.t() | Atom.t()],
        optional("CreatedAt") => [non_neg_integer()],
        optional("LastUpdatedAt") => [non_neg_integer()],
        optional("ReplicatingFrom") => list([String.t() | Atom.t()]()),
        optional("ReplicatingTo") => list([String.t() | Atom.t()]()),
        optional("State") => String.t() | Atom.t(),
        optional("Tags") => map(),
        optional("Type") => String.t() | Atom.t()
      }

  """
  @type get_index_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      search_output() :: %{
        optional("Count") => resource_count(),
        optional("NextToken") => [String.t() | Atom.t()],
        optional("Resources") => list(resource()),
        optional("ViewArn") => [String.t() | Atom.t()]
      }

  """
  @type search_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      search_filter() :: %{
        "FilterString" => [String.t() | Atom.t()]
      }

  """
  @type search_filter() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      index() :: %{
        "Arn" => [String.t() | Atom.t()],
        "Region" => [String.t() | Atom.t()],
        "Type" => String.t() | Atom.t()
      }

  """
  @type index() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_resources_input() :: %{
        optional("Filters") => search_filter(),
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t() | Atom.t()],
        optional("ViewArn") => [String.t() | Atom.t()]
      }

  """
  @type list_resources_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => [String.t() | Atom.t()]
      }

  """
  @type conflict_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "Message" => [String.t() | Atom.t()]
      }

  """
  @type resource_not_found_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_indexes_for_members_output() :: %{
        "Indexes" => list(member_index()),
        "NextToken" => [String.t() | Atom.t()]
      }

  """
  @type list_indexes_for_members_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_managed_views_input() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t() | Atom.t()],
        optional("ServicePrincipal") => [String.t() | Atom.t()]
      }

  """
  @type list_managed_views_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      batch_get_view_error() :: %{
        "ErrorMessage" => [String.t() | Atom.t()],
        "ViewArn" => [String.t() | Atom.t()]
      }

  """
  @type batch_get_view_error() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_view_input() :: %{
        optional("Filters") => search_filter(),
        optional("IncludedProperties") => list(included_property()),
        required("ViewArn") => [String.t() | Atom.t()]
      }

  """
  @type update_view_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      service_quota_exceeded_exception() :: %{
        "Message" => [String.t() | Atom.t()],
        "Name" => [String.t() | Atom.t()],
        "Value" => [String.t() | Atom.t()]
      }

  """
  @type service_quota_exceeded_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_indexes_input() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t() | Atom.t()],
        optional("Regions") => list([String.t() | Atom.t()]()),
        optional("Type") => String.t() | Atom.t()
      }

  """
  @type list_indexes_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_views_input() :: %{
        optional("MaxResults") => [integer()],
        optional("NextToken") => [String.t() | Atom.t()]
      }

  """
  @type list_views_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception_field() :: %{
        "Name" => [String.t() | Atom.t()],
        "ValidationIssue" => [String.t() | Atom.t()]
      }

  """
  @type validation_exception_field() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      org_configuration() :: %{
        "AWSServiceAccessStatus" => String.t() | Atom.t(),
        "ServiceLinkedRole" => [String.t() | Atom.t()]
      }

  """
  @type org_configuration() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_input() :: %{
        optional("Tags") => map()
      }

  """
  @type tag_resource_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_managed_view_input() :: %{
        required("ManagedViewArn") => [String.t() | Atom.t()]
      }

  """
  @type get_managed_view_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      associate_default_view_output() :: %{
        optional("ViewArn") => [String.t() | Atom.t()]
      }

  """
  @type associate_default_view_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      tag_resource_output() :: %{}

  """
  @type tag_resource_output() :: %{}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "Message" => [String.t() | Atom.t()]
      }

  """
  @type internal_server_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      delete_index_output() :: %{
        optional("Arn") => [String.t() | Atom.t()],
        optional("LastUpdatedAt") => [non_neg_integer()],
        optional("State") => String.t() | Atom.t()
      }

  """
  @type delete_index_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => [String.t() | Atom.t()]
      }

  """
  @type access_denied_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_index_type_input() :: %{
        required("Arn") => [String.t() | Atom.t()],
        required("Type") => String.t() | Atom.t()
      }

  """
  @type update_index_type_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_input() :: %{
        required("tagKeys") => list([String.t() | Atom.t()]())
      }

  """
  @type untag_resource_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_view_input() :: %{
        optional("ClientToken") => [String.t() | Atom.t()],
        optional("Filters") => search_filter(),
        optional("IncludedProperties") => list(included_property()),
        optional("Scope") => [String.t() | Atom.t()],
        optional("Tags") => map(),
        required("ViewName") => String.t() | Atom.t()
      }

  """
  @type create_view_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_view_input() :: %{
        required("ViewArn") => [String.t() | Atom.t()]
      }

  """
  @type get_view_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "FieldList" => list(validation_exception_field()),
        "Message" => [String.t() | Atom.t()]
      }

  """
  @type validation_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_tags_for_resource_input() :: %{}

  """
  @type list_tags_for_resource_input() :: %{}

  @typedoc """

  ## Example:

      delete_index_input() :: %{
        required("Arn") => [String.t() | Atom.t()]
      }

  """
  @type delete_index_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      supported_resource_type() :: %{
        "ResourceType" => [String.t() | Atom.t()],
        "Service" => [String.t() | Atom.t()]
      }

  """
  @type supported_resource_type() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      untag_resource_output() :: %{}

  """
  @type untag_resource_output() :: %{}

  @typedoc """

  ## Example:

      update_view_output() :: %{
        optional("View") => view()
      }

  """
  @type update_view_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{
        "Message" => [String.t() | Atom.t()]
      }

  """
  @type throttling_exception() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_account_level_service_configuration_output() :: %{
        "OrgConfiguration" => org_configuration()
      }

  """
  @type get_account_level_service_configuration_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_indexes_output() :: %{
        optional("Indexes") => list(index()),
        optional("NextToken") => [String.t() | Atom.t()]
      }

  """
  @type list_indexes_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_view_output() :: %{
        optional("Tags") => map(),
        optional("View") => view()
      }

  """
  @type get_view_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_supported_resource_types_output() :: %{
        optional("NextToken") => [String.t() | Atom.t()],
        optional("ResourceTypes") => list(supported_resource_type())
      }

  """
  @type list_supported_resource_types_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      create_index_input() :: %{
        optional("ClientToken") => [String.t() | Atom.t()],
        optional("Tags") => map()
      }

  """
  @type create_index_input() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      update_index_type_output() :: %{
        optional("Arn") => [String.t() | Atom.t()],
        optional("LastUpdatedAt") => [non_neg_integer()],
        optional("State") => String.t() | Atom.t(),
        optional("Type") => String.t() | Atom.t()
      }

  """
  @type update_index_type_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      member_index() :: %{
        "AccountId" => [String.t() | Atom.t()],
        "Arn" => [String.t() | Atom.t()],
        "Region" => [String.t() | Atom.t()],
        "Type" => String.t() | Atom.t()
      }

  """
  @type member_index() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_default_view_output() :: %{
        optional("ViewArn") => [String.t() | Atom.t()]
      }

  """
  @type get_default_view_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      list_resources_output() :: %{
        "NextToken" => [String.t() | Atom.t()],
        "Resources" => list(resource()),
        "ViewArn" => [String.t() | Atom.t()]
      }

  """
  @type list_resources_output() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      managed_view() :: %{
        "Filters" => search_filter(),
        "IncludedProperties" => list(included_property()),
        "LastUpdatedAt" => [non_neg_integer()],
        "ManagedViewArn" => [String.t() | Atom.t()],
        "ManagedViewName" => [String.t() | Atom.t()],
        "Owner" => [String.t() | Atom.t()],
        "ResourcePolicy" => [String.t() | Atom.t()],
        "Scope" => [String.t() | Atom.t()],
        "TrustedService" => [String.t() | Atom.t()],
        "Version" => [String.t() | Atom.t()]
      }

  """
  @type managed_view() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      resource() :: %{
        "Arn" => [String.t() | Atom.t()],
        "LastReportedAt" => [non_neg_integer()],
        "OwningAccountId" => [String.t() | Atom.t()],
        "Properties" => list(resource_property()),
        "Region" => [String.t() | Atom.t()],
        "ResourceType" => [String.t() | Atom.t()],
        "Service" => [String.t() | Atom.t()]
      }

  """
  @type resource() :: %{String.t() | Atom.t() => any()}

  @typedoc """

  ## Example:

      get_managed_view_output() :: %{
        "ManagedView" => managed_view()
      }

  """
  @type get_managed_view_output() :: %{String.t() | Atom.t() => any()}

  @type associate_default_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type batch_get_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | unauthorized_exception()

  @type create_index_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type delete_index_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type delete_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type disassociate_default_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_account_level_service_configuration_errors() ::
          throttling_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_default_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_index_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_managed_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type get_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type list_indexes_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_indexes_for_members_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_managed_views_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | unauthorized_exception()

  @type list_resources_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type list_supported_resource_types_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_tags_for_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type list_views_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type search_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type tag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()
          | unauthorized_exception()

  @type untag_resource_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | unauthorized_exception()

  @type update_index_type_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_view_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | service_quota_exceeded_exception()
          | unauthorized_exception()

  def metadata do
    %{
      api_version: "2022-07-28",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "resource-explorer-2",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "Resource Explorer 2",
      signature_version: "v4",
      signing_name: "resource-explorer-2",
      target_prefix: nil
    }
  end

  @doc """
  Sets the specified view as the default for the Amazon Web Services Region in
  which you call this
  operation.

  When a user performs a `Search` that doesn't explicitly
  specify which view to use, then Amazon Web Services Resource Explorer
  automatically chooses this default view for
  searches performed in this Amazon Web Services Region.

  If an Amazon Web Services Region doesn't have a default view
  configured, then users must explicitly specify a view with every `Search`
  operation performed in that Region.
  """
  @spec associate_default_view(map(), associate_default_view_input(), list()) ::
          {:ok, associate_default_view_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_default_view_errors()}
  def associate_default_view(%Client{} = client, input, options \\ []) do
    url_path = "/AssociateDefaultView"
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
  Retrieves details about a list of views.
  """
  @spec batch_get_view(map(), batch_get_view_input(), list()) ::
          {:ok, batch_get_view_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_get_view_errors()}
  def batch_get_view(%Client{} = client, input, options \\ []) do
    url_path = "/BatchGetView"
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
  Turns on Amazon Web Services Resource Explorer in the Amazon Web Services Region
  in which you called this operation by creating
  an index.

  Resource Explorer begins discovering the resources in this Region and stores the
  details
  about the resources in the index so that they can be queried by using the
  `Search` operation. You can create only one index in a Region.

  This operation creates only a *local* index. To promote the
  local index in one Amazon Web Services Region into the aggregator index for the
  Amazon Web Services account, use the
  `UpdateIndexType` operation. For more information, see [Turning on cross-Region search by creating an aggregator
  index](https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html)
  in the
  *Amazon Web Services Resource Explorer User Guide*.

  For more details about what happens when you turn on Resource Explorer in an
  Amazon Web Services Region, see
  [Turn on Resource Explorer to index your resources in an Amazon Web Services
  Region](https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-service-activate.html)
  in the
  *Amazon Web Services Resource Explorer User Guide*.

  If this is the first Amazon Web Services Region in which you've created an index
  for Resource Explorer, then
  this operation also [creates a service-linked
  role](https://docs.aws.amazon.com/resource-explorer/latest/userguide/security_iam_service-linked-roles.html)
  in your Amazon Web Services account that allows Resource Explorer to enumerate
  your resources to populate the index.

    *

  **Action**:
  `resource-explorer-2:CreateIndex`

  **Resource**: The ARN of the index (as it will
  exist after the operation completes) in the Amazon Web Services Region and
  account in which
  you're trying to create the index. Use the wildcard character (`*`)
  at the end of the string to match the eventual UUID. For example, the following
  `Resource` element restricts the role or user to creating an
  index in only the `us-east-2` Region of the specified account.

  ```
  "Resource":
  "arn:aws:resource-explorer-2:us-west-2:*<account-id>*:index/*"
  ```

  Alternatively, you can use `"Resource": "*"` to allow the role or
  user to create an index in any Region.

    *

  **Action**:
  `iam:CreateServiceLinkedRole`

  **Resource**: No specific resource (*).

  This permission is required only the first time you create an index to turn on
  Resource Explorer in the account. Resource Explorer uses this to create the
  [service-linked role needed to index the resources in your
  account](https://docs.aws.amazon.com/resource-explorer/latest/userguide/security_iam_service-linked-roles.html).
  Resource Explorer uses the
  same service-linked role for all additional indexes you create
  afterwards.
  """
  @spec create_index(map(), create_index_input(), list()) ::
          {:ok, create_index_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_index_errors()}
  def create_index(%Client{} = client, input, options \\ []) do
    url_path = "/CreateIndex"
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
  Creates a view that users can query by using the `Search` operation.

  Results from queries that you make using this view include only resources that
  match the
  view's `Filters`. For more information about Amazon Web Services Resource
  Explorer views, see [Managing views](https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-views.html)
  in the *Amazon Web Services Resource Explorer User Guide*.

  Only the principals with an IAM identity-based policy that grants `Allow`
  to the `Search` action on a `Resource` with the [Amazon resource name (ARN)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
  of
  this view can `Search` using views you create with this
  operation.
  """
  @spec create_view(map(), create_view_input(), list()) ::
          {:ok, create_view_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_view_errors()}
  def create_view(%Client{} = client, input, options \\ []) do
    url_path = "/CreateView"
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
  Deletes the specified index and turns off Amazon Web Services Resource Explorer
  in the specified Amazon Web Services Region.

  When you delete an index, Resource Explorer stops discovering and indexing
  resources in that
  Region. Resource Explorer also deletes all views in that Region. These actions
  occur as
  asynchronous background tasks. You can check to see when the actions are
  complete by
  using the `GetIndex` operation and checking the `Status`
  response value.

  If the index you delete is the aggregator index for the Amazon Web Services
  account, you must
  wait 24 hours before you can promote another local index to be the
  aggregator index for the account. Users can't perform account-wide searches
  using
  Resource Explorer until another aggregator index is configured.
  """
  @spec delete_index(map(), delete_index_input(), list()) ::
          {:ok, delete_index_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_index_errors()}
  def delete_index(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteIndex"
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
  Deletes the specified view.

  If the specified view is the default view for its Amazon Web Services Region,
  then all `Search` operations in that Region must explicitly specify the view to
  use
  until you configure a new default by calling the `AssociateDefaultView`
  operation.
  """
  @spec delete_view(map(), delete_view_input(), list()) ::
          {:ok, delete_view_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_view_errors()}
  def delete_view(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteView"
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
  After you call this operation, the affected Amazon Web Services Region no longer
  has a default view.

  All `Search` operations in that Region must explicitly specify a view or
  the operation fails. You can configure a new default by calling the
  `AssociateDefaultView` operation.

  If an Amazon Web Services Region doesn't have a default view
  configured, then users must explicitly specify a view with every `Search`
  operation performed in that Region.
  """
  @spec disassociate_default_view(map(), %{}, list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_default_view_errors()}
  def disassociate_default_view(%Client{} = client, input, options \\ []) do
    url_path = "/DisassociateDefaultView"
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
  Retrieves the status of your account's Amazon Web Services service access, and
  validates the service
  linked role required to access the multi-account search feature.

  Only the management
  account can invoke this API call.
  """
  @spec get_account_level_service_configuration(map(), %{}, list()) ::
          {:ok, get_account_level_service_configuration_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_account_level_service_configuration_errors()}
  def get_account_level_service_configuration(%Client{} = client, input, options \\ []) do
    url_path = "/GetAccountLevelServiceConfiguration"
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
  Retrieves the Amazon Resource Name (ARN) of the view that is the default for the
  Amazon Web Services Region in which you call this operation.

  You can then call `GetView` to retrieve the details of that view.
  """
  @spec get_default_view(map(), %{}, list()) ::
          {:ok, get_default_view_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_default_view_errors()}
  def get_default_view(%Client{} = client, input, options \\ []) do
    url_path = "/GetDefaultView"
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
  Retrieves details about the Amazon Web Services Resource Explorer index in the
  Amazon Web Services Region in which you invoked
  the operation.
  """
  @spec get_index(map(), %{}, list()) ::
          {:ok, get_index_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_index_errors()}
  def get_index(%Client{} = client, input, options \\ []) do
    url_path = "/GetIndex"
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
  Retrieves details of the specified [Amazon Web Services-managed view](https://docs.aws.amazon.com/resource-explorer/latest/userguide/aws-managed-views.html).
  """
  @spec get_managed_view(map(), get_managed_view_input(), list()) ::
          {:ok, get_managed_view_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_managed_view_errors()}
  def get_managed_view(%Client{} = client, input, options \\ []) do
    url_path = "/GetManagedView"
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
  Retrieves details of the specified view.
  """
  @spec get_view(map(), get_view_input(), list()) ::
          {:ok, get_view_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_view_errors()}
  def get_view(%Client{} = client, input, options \\ []) do
    url_path = "/GetView"
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
  Retrieves a list of all of the indexes in Amazon Web Services Regions that are
  currently collecting
  resource information for Amazon Web Services Resource Explorer.
  """
  @spec list_indexes(map(), list_indexes_input(), list()) ::
          {:ok, list_indexes_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_indexes_errors()}
  def list_indexes(%Client{} = client, input, options \\ []) do
    url_path = "/ListIndexes"
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
  Retrieves a list of a member's indexes in all Amazon Web Services Regions that
  are currently
  collecting resource information for Amazon Web Services Resource Explorer.

  Only the management account or a
  delegated administrator with service access enabled can invoke this API call.
  """
  @spec list_indexes_for_members(map(), list_indexes_for_members_input(), list()) ::
          {:ok, list_indexes_for_members_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_indexes_for_members_errors()}
  def list_indexes_for_members(%Client{} = client, input, options \\ []) do
    url_path = "/ListIndexesForMembers"
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
  Lists the Amazon resource names (ARNs) of the
  [Amazon Web Services-managed views](https://docs.aws.amazon.com/resource-explorer/latest/userguide/aws-managed-views.html)
  available
  in the Amazon Web Services Region in which you call this operation.
  """
  @spec list_managed_views(map(), list_managed_views_input(), list()) ::
          {:ok, list_managed_views_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_managed_views_errors()}
  def list_managed_views(%Client{} = client, input, options \\ []) do
    url_path = "/ListManagedViews"
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
  Returns a list of resources and their details that match the specified criteria.

  This query must
  use a view. If you don’t explicitly specify a view, then Resource Explorer uses
  the default view for the Amazon Web Services Region
  in which you call this operation.
  """
  @spec list_resources(map(), list_resources_input(), list()) ::
          {:ok, list_resources_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_resources_errors()}
  def list_resources(%Client{} = client, input, options \\ []) do
    url_path = "/ListResources"
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
  Retrieves a list of all resource types currently supported by Amazon Web
  Services Resource Explorer.
  """
  @spec list_supported_resource_types(map(), list_supported_resource_types_input(), list()) ::
          {:ok, list_supported_resource_types_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_supported_resource_types_errors()}
  def list_supported_resource_types(%Client{} = client, input, options \\ []) do
    url_path = "/ListSupportedResourceTypes"
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
  Lists the tags that are attached to the specified resource.
  """
  @spec list_tags_for_resource(map(), String.t() | Atom.t(), list()) ::
          {:ok, list_tags_for_resource_output(), any()}
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
  Lists the [Amazon resource names (ARNs)](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
  of the views available in the Amazon Web Services Region in which you
  call this operation.

  Always check the `NextToken` response parameter
  for a `null` value when calling a paginated operation. These operations can
  occasionally return an empty set of results even when there are more results
  available. The
  `NextToken` response parameter value is `null`
  *only*
  when there are no more results to display.
  """
  @spec list_views(map(), list_views_input(), list()) ::
          {:ok, list_views_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_views_errors()}
  def list_views(%Client{} = client, input, options \\ []) do
    url_path = "/ListViews"
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
  Searches for resources and displays details about all resources that match the
  specified criteria.

  You must specify a query string.

  All search queries must use a view. If you don't explicitly specify a view, then
  Amazon Web Services Resource Explorer uses the default view for the Amazon Web
  Services Region in which you call this operation.
  The results are the logical intersection of the results that match both the
  `QueryString` parameter supplied to this operation and the
  `SearchFilter` parameter attached to the view.

  For the complete syntax supported by the `QueryString` parameter, see
  [Search query syntax reference for Resource
  Explorer](https://docs.aws.amazon.com/resource-explorer/latest/APIReference/about-query-syntax.html).

  If your search results are empty, or are missing results that you think should
  be
  there, see [Troubleshooting Resource Explorer search](https://docs.aws.amazon.com/resource-explorer/latest/userguide/troubleshooting_search.html).
  """
  @spec search(map(), search_input(), list()) ::
          {:ok, search_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_errors()}
  def search(%Client{} = client, input, options \\ []) do
    url_path = "/Search"
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
  Adds one or more tag key and value pairs to an Amazon Web Services Resource
  Explorer view or index.
  """
  @spec tag_resource(map(), String.t() | Atom.t(), tag_resource_input(), list()) ::
          {:ok, tag_resource_output(), any()}
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
      200
    )
  end

  @doc """
  Removes one or more tag key and value pairs from an Amazon Web Services Resource
  Explorer view or index.
  """
  @spec untag_resource(map(), String.t() | Atom.t(), untag_resource_input(), list()) ::
          {:ok, untag_resource_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    custom_headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
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
      200
    )
  end

  @doc """
  Changes the type of the index from one of the following types to the other.

  For more
  information about indexes and the role they perform in Amazon Web Services
  Resource Explorer, see [Turning on cross-Region search by creating an aggregator
  index](https://docs.aws.amazon.com/resource-explorer/latest/userguide/manage-aggregator-region.html)
  in the
  *Amazon Web Services Resource Explorer User Guide*.

    *

  ## 
  `AGGREGATOR` index type

  The index contains information about resources from all Amazon Web Services
  Regions in the
  Amazon Web Services account in which you've created a Resource Explorer index.
  Resource information from
  all other Regions is replicated to this Region's index.

  When you change the index type to `AGGREGATOR`, Resource Explorer turns on
  replication of all discovered resource information from the other Amazon Web
  Services Regions
  in your account to this index. You can then, from this Region only, perform
  resource search queries that span all Amazon Web Services Regions in the Amazon
  Web Services account.
  Turning on replication from all other Regions is performed by asynchronous
  background tasks. You can check the status of the asynchronous tasks by using
  the `GetIndex` operation. When the asynchronous tasks complete,
  the `Status` response of that operation changes from
  `UPDATING` to `ACTIVE`. After that, you can start to
  see results from other Amazon Web Services Regions in query results. However, it
  can take
  several hours for replication from all other Regions to complete.

  You can have only one aggregator index per Amazon Web Services account. Before
  you can
  promote a different index to be the aggregator index for the account, you must
  first demote the existing aggregator index to type `LOCAL`.

    *

  ## 
  `LOCAL` index type

  The index contains information about resources in only the Amazon Web Services
  Region in
  which the index exists. If an aggregator index in another Region exists, then
  information in this local index is replicated to the aggregator index.

  When you change the index type to `LOCAL`, Resource Explorer turns off the
  replication of resource information from all other Amazon Web Services Regions
  in the
  Amazon Web Services account to this Region. The aggregator index remains in the
  `UPDATING` state until all replication with other Regions
  successfully stops. You can check the status of the asynchronous task by using
  the `GetIndex` operation. When Resource Explorer successfully stops all
  replication with other Regions, the `Status` response of that
  operation changes from `UPDATING` to `ACTIVE`. Separately,
  the resource information from other Regions that was previously stored in the
  index is deleted within 30 days by another background task. Until that
  asynchronous task completes, some results from other Regions can continue to
  appear in search results.

  After you demote an aggregator index to a local index, you must wait
  24 hours before you can promote another index to be the new
  aggregator index for the account.
  """
  @spec update_index_type(map(), update_index_type_input(), list()) ::
          {:ok, update_index_type_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_index_type_errors()}
  def update_index_type(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateIndexType"
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
  Modifies some of the details of a view.

  You can change the filter string and the list
  of included properties. You can't change the name of the view.
  """
  @spec update_view(map(), update_view_input(), list()) ::
          {:ok, update_view_output(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_view_errors()}
  def update_view(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateView"
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
end
