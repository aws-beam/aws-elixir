# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LakeFormation do
  @moduledoc """
  Lake Formation

  Defines the public endpoint for the Lake Formation service.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      delete_object_input() :: %{
        "ETag" => String.t() | atom(),
        "PartitionValues" => list(String.t() | atom()),
        "Uri" => String.t() | atom()
      }

  """
  @type delete_object_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      grant_permissions_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("Condition") => condition(),
        optional("PermissionsWithGrantOption") => list(list(any())()),
        required("Permissions") => list(list(any())()),
        required("Principal") => data_lake_principal(),
        required("Resource") => resource()
      }

  """
  @type grant_permissions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_data_lake_principal_request() :: %{}

  """
  @type get_data_lake_principal_request() :: %{}

  @typedoc """

  ## Example:

      list_permissions_response() :: %{
        "NextToken" => String.t() | atom(),
        "PrincipalResourcePermissions" => list(principal_resource_permissions())
      }

  """
  @type list_permissions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_databases_by_l_f_tags_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("Expression") => list(l_f_tag())
      }

  """
  @type search_databases_by_l_f_tags_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_lake_formation_identity_center_configuration_response() :: %{
        "ApplicationArn" => String.t() | atom()
      }

  """
  @type create_lake_formation_identity_center_configuration_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      l_f_tag_key_resource() :: %{
        "CatalogId" => String.t() | atom(),
        "TagKey" => String.t() | atom(),
        "TagValues" => list(String.t() | atom())
      }

  """
  @type l_f_tag_key_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      principal_permissions() :: %{
        "Permissions" => list(list(any())()),
        "Principal" => data_lake_principal()
      }

  """
  @type principal_permissions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      entity_not_found_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type entity_not_found_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      operation_timeout_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type operation_timeout_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_resources_response() :: %{
        "NextToken" => String.t() | atom(),
        "ResourceInfoList" => list(resource_info())
      }

  """
  @type list_resources_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      l_f_tag_expression() :: %{
        "CatalogId" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Expression" => list(l_f_tag()),
        "Name" => String.t() | atom()
      }

  """
  @type l_f_tag_expression() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_resource_response() :: %{
        "ResourceInfo" => resource_info()
      }

  """
  @type describe_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      filter_condition() :: %{
        "ComparisonOperator" => list(any()),
        "Field" => list(any()),
        "StringValueList" => list(String.t() | atom())
      }

  """
  @type filter_condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_l_f_tag_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("TagValuesToAdd") => list(String.t() | atom()),
        optional("TagValuesToDelete") => list(String.t() | atom()),
        required("TagKey") => String.t() | atom()
      }

  """
  @type update_l_f_tag_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      query_session_context() :: %{
        "AdditionalContext" => map(),
        "ClusterId" => String.t() | atom(),
        "QueryAuthorizationId" => String.t() | atom(),
        "QueryId" => String.t() | atom(),
        "QueryStartTime" => non_neg_integer()
      }

  """
  @type query_session_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      l_f_tag() :: %{
        "TagKey" => String.t() | atom(),
        "TagValues" => list(String.t() | atom())
      }

  """
  @type l_f_tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      expired_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type expired_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_resource_request() :: %{
        optional("ExpectedResourceOwnerAccount") => String.t() | atom(),
        optional("HybridAccessEnabled") => boolean(),
        optional("WithFederation") => boolean(),
        required("ResourceArn") => String.t() | atom(),
        required("RoleArn") => String.t() | atom()
      }

  """
  @type update_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_table_storage_optimizer_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("StorageOptimizerConfig") => map(),
        required("TableName") => String.t() | atom()
      }

  """
  @type update_table_storage_optimizer_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      commit_transaction_request() :: %{
        required("TransactionId") => String.t() | atom()
      }

  """
  @type commit_transaction_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_l_f_tag_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("TagKey") => String.t() | atom()
      }

  """
  @type get_l_f_tag_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_resource_l_f_tags_response() :: %{
        "LFTagOnDatabase" => list(l_f_tag_pair()),
        "LFTagsOnColumns" => list(column_l_f_tag()),
        "LFTagsOnTable" => list(l_f_tag_pair())
      }

  """
  @type get_resource_l_f_tags_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_transaction_request() :: %{
        required("TransactionId") => String.t() | atom()
      }

  """
  @type cancel_transaction_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_transaction_response() :: %{
        "TransactionDescription" => transaction_description()
      }

  """
  @type describe_transaction_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      l_f_tag_policy_resource() :: %{
        "CatalogId" => String.t() | atom(),
        "Expression" => list(l_f_tag()),
        "ExpressionName" => String.t() | atom(),
        "ResourceType" => list(any())
      }

  """
  @type l_f_tag_policy_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      table_resource() :: %{
        "CatalogId" => String.t() | atom(),
        "DatabaseName" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "TableWildcard" => table_wildcard()
      }

  """
  @type table_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      l_f_tag_error() :: %{
        "Error" => error_detail(),
        "LFTag" => l_f_tag_pair()
      }

  """
  @type l_f_tag_error() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      planning_statistics() :: %{
        "EstimatedDataToScanBytes" => float(),
        "PlanningTimeMillis" => float(),
        "QueueTimeMillis" => float(),
        "WorkUnitsGeneratedCount" => float()
      }

  """
  @type planning_statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      already_exists_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type already_exists_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_lake_formation_identity_center_configuration_request() :: %{
        optional("ApplicationStatus") => list(any()),
        optional("CatalogId") => String.t() | atom(),
        optional("ExternalFiltering") => external_filtering_configuration(),
        optional("ServiceIntegrations") => list(list()),
        optional("ShareRecipients") => list(data_lake_principal())
      }

  """
  @type update_lake_formation_identity_center_configuration_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      all_rows_wildcard() :: %{}

  """
  @type all_rows_wildcard() :: %{}

  @typedoc """

  ## Example:

      list_l_f_tag_expressions_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_l_f_tag_expressions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_lake_formation_identity_center_configuration_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("ExternalFiltering") => external_filtering_configuration(),
        optional("InstanceArn") => String.t() | atom(),
        optional("ServiceIntegrations") => list(list()),
        optional("ShareRecipients") => list(data_lake_principal())
      }

  """
  @type create_lake_formation_identity_center_configuration_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      list_transactions_response() :: %{
        "NextToken" => String.t() | atom(),
        "Transactions" => list(transaction_description())
      }

  """
  @type list_transactions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_temporary_glue_partition_credentials_response() :: %{
        "AccessKeyId" => String.t() | atom(),
        "Expiration" => non_neg_integer(),
        "SecretAccessKey" => String.t() | atom(),
        "SessionToken" => String.t() | atom()
      }

  """
  @type get_temporary_glue_partition_credentials_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      database_resource() :: %{
        "CatalogId" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type database_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_lake_formation_opt_in_request() :: %{
        optional("Condition") => condition(),
        required("Principal") => data_lake_principal(),
        required("Resource") => resource()
      }

  """
  @type delete_lake_formation_opt_in_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_l_f_tag_response() :: %{}

  """
  @type delete_l_f_tag_response() :: %{}

  @typedoc """

  ## Example:

      create_l_f_tag_expression_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        required("Expression") => list(l_f_tag()),
        required("Name") => String.t() | atom()
      }

  """
  @type create_l_f_tag_expression_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tagged_table() :: %{
        "LFTagOnDatabase" => list(l_f_tag_pair()),
        "LFTagsOnColumns" => list(column_l_f_tag()),
        "LFTagsOnTable" => list(l_f_tag_pair()),
        "Table" => table_resource()
      }

  """
  @type tagged_table() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      principal_resource_permissions() :: %{
        "AdditionalDetails" => details_map(),
        "Condition" => condition(),
        "LastUpdated" => non_neg_integer(),
        "LastUpdatedBy" => String.t() | atom(),
        "Permissions" => list(list(any())()),
        "PermissionsWithGrantOption" => list(list(any())()),
        "Principal" => data_lake_principal(),
        "Resource" => resource()
      }

  """
  @type principal_resource_permissions() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_table_storage_optimizers_response() :: %{
        "NextToken" => String.t() | atom(),
        "StorageOptimizerList" => list(storage_optimizer())
      }

  """
  @type list_table_storage_optimizers_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_tables_by_l_f_tags_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("Expression") => list(l_f_tag())
      }

  """
  @type search_tables_by_l_f_tags_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_l_f_tag_expression_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("Description") => String.t() | atom(),
        required("Expression") => list(l_f_tag()),
        required("Name") => String.t() | atom()
      }

  """
  @type update_l_f_tag_expression_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      transaction_canceled_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type transaction_canceled_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      partition_objects() :: %{
        "Objects" => list(table_object()),
        "PartitionValues" => list(String.t() | atom())
      }

  """
  @type partition_objects() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_query_state_request() :: %{
        required("QueryId") => String.t() | atom()
      }

  """
  @type get_query_state_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_temporary_data_location_credentials_response() :: %{
        "AccessibleDataLocations" => list(String.t() | atom()),
        "Credentials" => temporary_credentials(),
        "CredentialsScope" => list(any())
      }

  """
  @type get_temporary_data_location_credentials_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      internal_service_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type internal_service_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_l_f_tag_response() :: %{
        "CatalogId" => String.t() | atom(),
        "TagKey" => String.t() | atom(),
        "TagValues" => list(String.t() | atom())
      }

  """
  @type get_l_f_tag_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deregister_resource_response() :: %{}

  """
  @type deregister_resource_response() :: %{}

  @typedoc """

  ## Example:

      create_l_f_tag_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("TagKey") => String.t() | atom(),
        required("TagValues") => list(String.t() | atom())
      }

  """
  @type create_l_f_tag_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_lake_formation_opt_ins_response() :: %{
        "LakeFormationOptInsInfoList" => list(lake_formation_opt_ins_info()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_lake_formation_opt_ins_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_data_cells_filter_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Table") => table_resource()
      }

  """
  @type list_data_cells_filter_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_number_limit_exceeded_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type resource_number_limit_exceeded_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      virtual_object() :: %{
        "ETag" => String.t() | atom(),
        "Uri" => String.t() | atom()
      }

  """
  @type virtual_object() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_transaction_request() :: %{
        optional("TransactionType") => list(any())
      }

  """
  @type start_transaction_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      transaction_commit_in_progress_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type transaction_commit_in_progress_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_l_f_tag_expressions_response() :: %{
        "LFTagExpressions" => list(l_f_tag_expression()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_l_f_tag_expressions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_transactions_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("StatusFilter") => list(any())
      }

  """
  @type list_transactions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      extend_transaction_response() :: %{}

  """
  @type extend_transaction_response() :: %{}

  @typedoc """

  ## Example:

      query_planning_context() :: %{
        "CatalogId" => String.t() | atom(),
        "DatabaseName" => String.t() | atom(),
        "QueryAsOfTime" => non_neg_integer(),
        "QueryParameters" => map(),
        "TransactionId" => String.t() | atom()
      }

  """
  @type query_planning_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_lake_formation_opt_in_request() :: %{
        optional("Condition") => condition(),
        required("Principal") => data_lake_principal(),
        required("Resource") => resource()
      }

  """
  @type create_lake_formation_opt_in_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_table_objects_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("PartitionPredicate") => String.t() | atom(),
        optional("QueryAsOfTime") => non_neg_integer(),
        optional("TransactionId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }

  """
  @type get_table_objects_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_query_planning_request() :: %{
        required("QueryPlanningContext") => query_planning_context(),
        required("QueryString") => String.t() | atom()
      }

  """
  @type start_query_planning_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_lake_principal() :: %{
        "DataLakePrincipalIdentifier" => String.t() | atom()
      }

  """
  @type data_lake_principal() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      add_l_f_tags_to_resource_response() :: %{
        "Failures" => list(l_f_tag_error())
      }

  """
  @type add_l_f_tags_to_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_cells_filter() :: %{
        "ColumnNames" => list(String.t() | atom()),
        "ColumnWildcard" => column_wildcard(),
        "DatabaseName" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "RowFilter" => row_filter(),
        "TableCatalogId" => String.t() | atom(),
        "TableName" => String.t() | atom(),
        "VersionId" => String.t() | atom()
      }

  """
  @type data_cells_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_l_f_tag_expression_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type delete_l_f_tag_expression_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      throttled_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type throttled_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      storage_optimizer() :: %{
        "Config" => map(),
        "ErrorMessage" => String.t() | atom(),
        "LastRunDetails" => String.t() | atom(),
        "StorageOptimizerType" => list(any()),
        "Warnings" => String.t() | atom()
      }

  """
  @type storage_optimizer() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      data_location_resource() :: %{
        "CatalogId" => String.t() | atom(),
        "ResourceArn" => String.t() | atom()
      }

  """
  @type data_location_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_data_cells_filter_response() :: %{}

  """
  @type delete_data_cells_filter_response() :: %{}

  @typedoc """

  ## Example:

      register_resource_response() :: %{}

  """
  @type register_resource_response() :: %{}

  @typedoc """

  ## Example:

      put_data_lake_settings_response() :: %{}

  """
  @type put_data_lake_settings_response() :: %{}

  @typedoc """

  ## Example:

      partition_value_list() :: %{
        "Values" => list(String.t() | atom())
      }

  """
  @type partition_value_list() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_work_unit_results_request() :: %{
        required("QueryId") => String.t() | atom(),
        required("WorkUnitId") => float(),
        required("WorkUnitToken") => String.t() | atom()
      }

  """
  @type get_work_unit_results_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type conflict_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_databases_by_l_f_tags_response() :: %{
        "DatabaseList" => list(tagged_database()),
        "NextToken" => String.t() | atom()
      }

  """
  @type search_databases_by_l_f_tags_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_l_f_tag_response() :: %{}

  """
  @type update_l_f_tag_response() :: %{}

  @typedoc """

  ## Example:

      get_data_lake_settings_request() :: %{
        optional("CatalogId") => String.t() | atom()
      }

  """
  @type get_data_lake_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_temporary_glue_partition_credentials_request() :: %{
        optional("AuditContext") => audit_context(),
        optional("DurationSeconds") => integer(),
        optional("Permissions") => list(list(any())()),
        optional("SupportedPermissionTypes") => list(list(any())()),
        required("Partition") => partition_value_list(),
        required("TableArn") => String.t() | atom()
      }

  """
  @type get_temporary_glue_partition_credentials_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_data_cells_filter_response() :: %{}

  """
  @type update_data_cells_filter_response() :: %{}

  @typedoc """

  ## Example:

      transaction_committed_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type transaction_committed_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      column_wildcard() :: %{
        "ExcludedColumnNames" => list(String.t() | atom())
      }

  """
  @type column_wildcard() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_permissions_request_entry() :: %{
        "Condition" => condition(),
        "Id" => String.t() | atom(),
        "Permissions" => list(list(any())()),
        "PermissionsWithGrantOption" => list(list(any())()),
        "Principal" => data_lake_principal(),
        "Resource" => resource()
      }

  """
  @type batch_permissions_request_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_table_objects_response() :: %{}

  """
  @type update_table_objects_response() :: %{}

  @typedoc """

  ## Example:

      commit_transaction_response() :: %{
        "TransactionStatus" => list(any())
      }

  """
  @type commit_transaction_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      table_wildcard() :: %{}

  """
  @type table_wildcard() :: %{}

  @typedoc """

  ## Example:

      catalog_resource() :: %{
        "Id" => String.t() | atom()
      }

  """
  @type catalog_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_resource_response() :: %{}

  """
  @type update_resource_response() :: %{}

  @typedoc """

  ## Example:

      table_object() :: %{
        "ETag" => String.t() | atom(),
        "Size" => float(),
        "Uri" => String.t() | atom()
      }

  """
  @type table_object() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_transaction_request() :: %{
        required("TransactionId") => String.t() | atom()
      }

  """
  @type describe_transaction_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      lake_formation_opt_ins_info() :: %{
        "Condition" => condition(),
        "LastModified" => non_neg_integer(),
        "LastUpdatedBy" => String.t() | atom(),
        "Principal" => data_lake_principal(),
        "Resource" => resource()
      }

  """
  @type lake_formation_opt_ins_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remove_l_f_tags_from_resource_response() :: %{
        "Failures" => list(l_f_tag_error())
      }

  """
  @type remove_l_f_tags_from_resource_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      details_map() :: %{
        "ResourceShare" => list(String.t() | atom())
      }

  """
  @type details_map() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_work_units_request() :: %{
        optional("NextToken") => String.t() | atom(),
        optional("PageSize") => [integer()],
        required("QueryId") => String.t() | atom()
      }

  """
  @type get_work_units_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      search_tables_by_l_f_tags_response() :: %{
        "NextToken" => String.t() | atom(),
        "TableList" => list(tagged_table())
      }

  """
  @type search_tables_by_l_f_tags_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      add_object_input() :: %{
        "ETag" => String.t() | atom(),
        "PartitionValues" => list(String.t() | atom()),
        "Size" => float(),
        "Uri" => String.t() | atom()
      }

  """
  @type add_object_input() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      l_f_tag_expression_resource() :: %{
        "CatalogId" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type l_f_tag_expression_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      transaction_description() :: %{
        "TransactionEndTime" => non_neg_integer(),
        "TransactionId" => String.t() | atom(),
        "TransactionStartTime" => non_neg_integer(),
        "TransactionStatus" => list(any())
      }

  """
  @type transaction_description() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_resource_l_f_tags_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("ShowAssignedLFTags") => boolean(),
        required("Resource") => resource()
      }

  """
  @type get_resource_l_f_tags_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_l_f_tag_expression_response() :: %{
        "CatalogId" => String.t() | atom(),
        "Description" => String.t() | atom(),
        "Expression" => list(l_f_tag()),
        "Name" => String.t() | atom()
      }

  """
  @type get_l_f_tag_expression_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      row_filter() :: %{
        "AllRowsWildcard" => all_rows_wildcard(),
        "FilterExpression" => String.t() | atom()
      }

  """
  @type row_filter() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      invalid_input_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type invalid_input_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_objects_on_cancel_response() :: %{}

  """
  @type delete_objects_on_cancel_response() :: %{}

  @typedoc """

  ## Example:

      get_data_lake_settings_response() :: %{
        "DataLakeSettings" => data_lake_settings()
      }

  """
  @type get_data_lake_settings_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_data_cells_filter_request() :: %{
        required("TableData") => data_cells_filter()
      }

  """
  @type update_data_cells_filter_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      write_operation() :: %{
        "AddObject" => add_object_input(),
        "DeleteObject" => delete_object_input()
      }

  """
  @type write_operation() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_temporary_glue_table_credentials_response() :: %{
        "AccessKeyId" => String.t() | atom(),
        "Expiration" => non_neg_integer(),
        "SecretAccessKey" => String.t() | atom(),
        "SessionToken" => String.t() | atom(),
        "VendedS3Path" => list(String.t() | atom())
      }

  """
  @type get_temporary_glue_table_credentials_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_lake_formation_identity_center_configuration_response() :: %{
        "ApplicationArn" => String.t() | atom(),
        "CatalogId" => String.t() | atom(),
        "ExternalFiltering" => external_filtering_configuration(),
        "InstanceArn" => String.t() | atom(),
        "ResourceShare" => String.t() | atom(),
        "ServiceIntegrations" => list(list()),
        "ShareRecipients" => list(data_lake_principal())
      }

  """
  @type describe_lake_formation_identity_center_configuration_response() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      get_query_state_response() :: %{
        "Error" => String.t() | atom(),
        "State" => list(any())
      }

  """
  @type get_query_state_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      temporary_credentials() :: %{
        "AccessKeyId" => String.t() | atom(),
        "Expiration" => non_neg_integer(),
        "SecretAccessKey" => String.t() | atom(),
        "SessionToken" => String.t() | atom()
      }

  """
  @type temporary_credentials() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      condition() :: %{
        "Expression" => String.t() | atom()
      }

  """
  @type condition() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      l_f_tag_pair() :: %{
        "CatalogId" => String.t() | atom(),
        "TagKey" => String.t() | atom(),
        "TagValues" => list(String.t() | atom())
      }

  """
  @type l_f_tag_pair() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_l_f_tag_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("TagKey") => String.t() | atom()
      }

  """
  @type delete_l_f_tag_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_lake_formation_opt_ins_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Principal") => data_lake_principal(),
        optional("Resource") => resource()
      }

  """
  @type list_lake_formation_opt_ins_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_lake_formation_identity_center_configuration_request() :: %{
        optional("CatalogId") => String.t() | atom()
      }

  """
  @type describe_lake_formation_identity_center_configuration_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      create_l_f_tag_response() :: %{}

  """
  @type create_l_f_tag_response() :: %{}

  @typedoc """

  ## Example:

      delete_lake_formation_identity_center_configuration_response() :: %{}

  """
  @type delete_lake_formation_identity_center_configuration_response() :: %{}

  @typedoc """

  ## Example:

      list_permissions_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("IncludeRelated") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("Principal") => data_lake_principal(),
        optional("Resource") => resource(),
        optional("ResourceType") => list(any())
      }

  """
  @type list_permissions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_revoke_permissions_response() :: %{
        "Failures" => list(batch_permissions_failure_entry())
      }

  """
  @type batch_revoke_permissions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_table_objects_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("TransactionId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom(),
        required("WriteOperations") => list(write_operation())
      }

  """
  @type update_table_objects_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_lake_formation_identity_center_configuration_response() :: %{}

  """
  @type update_lake_formation_identity_center_configuration_response() :: %{}

  @typedoc """

  ## Example:

      list_data_cells_filter_response() :: %{
        "DataCellsFilters" => list(data_cells_filter()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_data_cells_filter_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_temporary_data_location_credentials_request() :: %{
        optional("AuditContext") => audit_context(),
        optional("CredentialsScope") => list(any()),
        optional("DataLocations") => list(String.t() | atom()),
        optional("DurationSeconds") => integer()
      }

  """
  @type get_temporary_data_location_credentials_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_permissions_failure_entry() :: %{
        "Error" => error_detail(),
        "RequestEntry" => batch_permissions_request_entry()
      }

  """
  @type batch_permissions_failure_entry() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_effective_permissions_for_path_response() :: %{
        "NextToken" => String.t() | atom(),
        "Permissions" => list(principal_resource_permissions())
      }

  """
  @type get_effective_permissions_for_path_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_grant_permissions_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("Entries") => list(batch_permissions_request_entry())
      }

  """
  @type batch_grant_permissions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_table_storage_optimizer_response() :: %{
        "Result" => String.t() | atom()
      }

  """
  @type update_table_storage_optimizer_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_l_f_tags_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("ResourceShareType") => list(any())
      }

  """
  @type list_l_f_tags_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      revoke_permissions_response() :: %{}

  """
  @type revoke_permissions_response() :: %{}

  @typedoc """

  ## Example:

      get_work_unit_results_response() :: %{
        "ResultStream" => binary()
      }

  """
  @type get_work_unit_results_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      register_resource_request() :: %{
        optional("ExpectedResourceOwnerAccount") => String.t() | atom(),
        optional("HybridAccessEnabled") => boolean(),
        optional("RoleArn") => String.t() | atom(),
        optional("UseServiceLinkedRole") => boolean(),
        optional("WithFederation") => boolean(),
        optional("WithPrivilegedAccess") => boolean(),
        required("ResourceArn") => String.t() | atom()
      }

  """
  @type register_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_objects_on_cancel_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("DatabaseName") => String.t() | atom(),
        required("Objects") => list(virtual_object()),
        required("TableName") => String.t() | atom(),
        required("TransactionId") => String.t() | atom()
      }

  """
  @type delete_objects_on_cancel_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      error_detail() :: %{
        "ErrorCode" => String.t() | atom(),
        "ErrorMessage" => String.t() | atom()
      }

  """
  @type error_detail() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_lake_formation_opt_in_response() :: %{}

  """
  @type create_lake_formation_opt_in_response() :: %{}

  @typedoc """

  ## Example:

      data_lake_settings() :: %{
        "AllowExternalDataFiltering" => boolean(),
        "AllowFullTableExternalDataAccess" => boolean(),
        "AuthorizedSessionTagValueList" => list(String.t() | atom()),
        "CreateDatabaseDefaultPermissions" => list(principal_permissions()),
        "CreateTableDefaultPermissions" => list(principal_permissions()),
        "DataLakeAdmins" => list(data_lake_principal()),
        "ExternalDataFilteringAllowList" => list(data_lake_principal()),
        "Parameters" => map(),
        "ReadOnlyAdmins" => list(data_lake_principal()),
        "TrustedResourceOwners" => list(String.t() | atom())
      }

  """
  @type data_lake_settings() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type access_denied_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      statistics_not_ready_yet_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type statistics_not_ready_yet_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      assume_decorated_role_with_saml_request() :: %{
        optional("DurationSeconds") => integer(),
        required("PrincipalArn") => String.t() | atom(),
        required("RoleArn") => String.t() | atom(),
        required("SAMLAssertion") => String.t() | atom()
      }

  """
  @type assume_decorated_role_with_saml_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      batch_grant_permissions_response() :: %{
        "Failures" => list(batch_permissions_failure_entry())
      }

  """
  @type batch_grant_permissions_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      external_filtering_configuration() :: %{
        "AuthorizedTargets" => list(String.t() | atom()),
        "Status" => list(any())
      }

  """
  @type external_filtering_configuration() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_data_cells_filter_response() :: %{}

  """
  @type create_data_cells_filter_response() :: %{}

  @typedoc """

  ## Example:

      data_cells_filter_resource() :: %{
        "DatabaseName" => String.t() | atom(),
        "Name" => String.t() | atom(),
        "TableCatalogId" => String.t() | atom(),
        "TableName" => String.t() | atom()
      }

  """
  @type data_cells_filter_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      concurrent_modification_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type concurrent_modification_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_query_statistics_request() :: %{
        required("QueryId") => String.t() | atom()
      }

  """
  @type get_query_statistics_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      work_units_not_ready_yet_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type work_units_not_ready_yet_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      audit_context() :: %{
        "AdditionalAuditContext" => String.t() | atom()
      }

  """
  @type audit_context() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_work_units_response() :: %{
        "NextToken" => String.t() | atom(),
        "QueryId" => String.t() | atom(),
        "WorkUnitRanges" => list(work_unit_range())
      }

  """
  @type get_work_units_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      tagged_database() :: %{
        "Database" => database_resource(),
        "LFTags" => list(l_f_tag_pair())
      }

  """
  @type tagged_database() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      put_data_lake_settings_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("DataLakeSettings") => data_lake_settings()
      }

  """
  @type put_data_lake_settings_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_l_f_tag_expression_response() :: %{}

  """
  @type create_l_f_tag_expression_response() :: %{}

  @typedoc """

  ## Example:

      batch_revoke_permissions_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("Entries") => list(batch_permissions_request_entry())
      }

  """
  @type batch_revoke_permissions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      create_data_cells_filter_request() :: %{
        required("TableData") => data_cells_filter()
      }

  """
  @type create_data_cells_filter_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      permission_type_mismatch_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type permission_type_mismatch_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      execution_statistics() :: %{
        "AverageExecutionTimeMillis" => float(),
        "DataScannedBytes" => float(),
        "WorkUnitsExecutedCount" => float()
      }

  """
  @type execution_statistics() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_query_statistics_response() :: %{
        "ExecutionStatistics" => execution_statistics(),
        "PlanningStatistics" => planning_statistics(),
        "QuerySubmissionTime" => non_neg_integer()
      }

  """
  @type get_query_statistics_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_info() :: %{
        "ExpectedResourceOwnerAccount" => String.t() | atom(),
        "HybridAccessEnabled" => boolean(),
        "LastModified" => non_neg_integer(),
        "ResourceArn" => String.t() | atom(),
        "RoleArn" => String.t() | atom(),
        "VerificationStatus" => list(any()),
        "WithFederation" => boolean(),
        "WithPrivilegedAccess" => boolean()
      }

  """
  @type resource_info() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      describe_resource_request() :: %{
        required("ResourceArn") => String.t() | atom()
      }

  """
  @type describe_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_table_objects_response() :: %{
        "NextToken" => String.t() | atom(),
        "Objects" => list(partition_objects())
      }

  """
  @type get_table_objects_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      extend_transaction_request() :: %{
        optional("TransactionId") => String.t() | atom()
      }

  """
  @type extend_transaction_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      table_with_columns_resource() :: %{
        "CatalogId" => String.t() | atom(),
        "ColumnNames" => list(String.t() | atom()),
        "ColumnWildcard" => column_wildcard(),
        "DatabaseName" => String.t() | atom(),
        "Name" => String.t() | atom()
      }

  """
  @type table_with_columns_resource() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_resources_request() :: %{
        optional("FilterConditionList") => list(filter_condition()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom()
      }

  """
  @type list_resources_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      list_l_f_tags_response() :: %{
        "LFTags" => list(l_f_tag_pair()),
        "NextToken" => String.t() | atom()
      }

  """
  @type list_l_f_tags_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      revoke_permissions_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("Condition") => condition(),
        optional("PermissionsWithGrantOption") => list(list(any())()),
        required("Permissions") => list(list(any())()),
        required("Principal") => data_lake_principal(),
        required("Resource") => resource()
      }

  """
  @type revoke_permissions_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_data_cells_filter_request() :: %{
        optional("DatabaseName") => String.t() | atom(),
        optional("Name") => String.t() | atom(),
        optional("TableCatalogId") => String.t() | atom(),
        optional("TableName") => String.t() | atom()
      }

  """
  @type delete_data_cells_filter_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_lake_formation_identity_center_configuration_request() :: %{
        optional("CatalogId") => String.t() | atom()
      }

  """
  @type delete_lake_formation_identity_center_configuration_request() :: %{
          (String.t() | atom()) => any()
        }

  @typedoc """

  ## Example:

      redshift_connect() :: %{
        "Authorization" => list(any())
      }

  """
  @type redshift_connect() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      cancel_transaction_response() :: %{}

  """
  @type cancel_transaction_response() :: %{}

  @typedoc """

  ## Example:

      get_data_cells_filter_request() :: %{
        required("DatabaseName") => String.t() | atom(),
        required("Name") => String.t() | atom(),
        required("TableCatalogId") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }

  """
  @type get_data_cells_filter_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_temporary_glue_table_credentials_request() :: %{
        optional("AuditContext") => audit_context(),
        optional("DurationSeconds") => integer(),
        optional("Permissions") => list(list(any())()),
        optional("QuerySessionContext") => query_session_context(),
        optional("S3Path") => String.t() | atom(),
        optional("SupportedPermissionTypes") => list(list(any())()),
        required("TableArn") => String.t() | atom()
      }

  """
  @type get_temporary_glue_table_credentials_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      glue_encryption_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type glue_encryption_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_l_f_tag_expression_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("Name") => String.t() | atom()
      }

  """
  @type get_l_f_tag_expression_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      remove_l_f_tags_from_resource_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("LFTags") => list(l_f_tag_pair()),
        required("Resource") => resource()
      }

  """
  @type remove_l_f_tags_from_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_effective_permissions_for_path_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        required("ResourceArn") => String.t() | atom()
      }

  """
  @type get_effective_permissions_for_path_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      work_unit_range() :: %{
        "WorkUnitIdMax" => float(),
        "WorkUnitIdMin" => float(),
        "WorkUnitToken" => String.t() | atom()
      }

  """
  @type work_unit_range() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_data_lake_principal_response() :: %{
        "Identity" => String.t() | atom()
      }

  """
  @type get_data_lake_principal_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      get_data_cells_filter_response() :: %{
        "DataCellsFilter" => data_cells_filter()
      }

  """
  @type get_data_cells_filter_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource_not_ready_exception() :: %{
        "Message" => String.t() | atom()
      }

  """
  @type resource_not_ready_exception() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      assume_decorated_role_with_saml_response() :: %{
        "AccessKeyId" => String.t() | atom(),
        "Expiration" => non_neg_integer(),
        "SecretAccessKey" => String.t() | atom(),
        "SessionToken" => String.t() | atom()
      }

  """
  @type assume_decorated_role_with_saml_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      deregister_resource_request() :: %{
        required("ResourceArn") => String.t() | atom()
      }

  """
  @type deregister_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      update_l_f_tag_expression_response() :: %{}

  """
  @type update_l_f_tag_expression_response() :: %{}

  @typedoc """

  ## Example:

      list_table_storage_optimizers_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t() | atom(),
        optional("StorageOptimizerType") => list(any()),
        required("DatabaseName") => String.t() | atom(),
        required("TableName") => String.t() | atom()
      }

  """
  @type list_table_storage_optimizers_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_transaction_response() :: %{
        "TransactionId" => String.t() | atom()
      }

  """
  @type start_transaction_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      delete_lake_formation_opt_in_response() :: %{}

  """
  @type delete_lake_formation_opt_in_response() :: %{}

  @typedoc """

  ## Example:

      grant_permissions_response() :: %{}

  """
  @type grant_permissions_response() :: %{}

  @typedoc """

  ## Example:

      delete_l_f_tag_expression_response() :: %{}

  """
  @type delete_l_f_tag_expression_response() :: %{}

  @typedoc """

  ## Example:

      add_l_f_tags_to_resource_request() :: %{
        optional("CatalogId") => String.t() | atom(),
        required("LFTags") => list(l_f_tag_pair()),
        required("Resource") => resource()
      }

  """
  @type add_l_f_tags_to_resource_request() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      start_query_planning_response() :: %{
        "QueryId" => String.t() | atom()
      }

  """
  @type start_query_planning_response() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      column_l_f_tag() :: %{
        "LFTags" => list(l_f_tag_pair()),
        "Name" => String.t() | atom()
      }

  """
  @type column_l_f_tag() :: %{(String.t() | atom()) => any()}

  @typedoc """

  ## Example:

      resource() :: %{
        "Catalog" => catalog_resource(),
        "DataCellsFilter" => data_cells_filter_resource(),
        "DataLocation" => data_location_resource(),
        "Database" => database_resource(),
        "LFTag" => l_f_tag_key_resource(),
        "LFTagExpression" => l_f_tag_expression_resource(),
        "LFTagPolicy" => l_f_tag_policy_resource(),
        "Table" => table_resource(),
        "TableWithColumns" => table_with_columns_resource()
      }

  """
  @type resource() :: %{(String.t() | atom()) => any()}

  @type add_l_f_tags_to_resource_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type assume_decorated_role_with_saml_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type batch_grant_permissions_errors() ::
          invalid_input_exception() | operation_timeout_exception()

  @type batch_revoke_permissions_errors() ::
          invalid_input_exception() | operation_timeout_exception()

  @type cancel_transaction_errors() ::
          concurrent_modification_exception()
          | invalid_input_exception()
          | transaction_committed_exception()
          | transaction_commit_in_progress_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type commit_transaction_errors() ::
          concurrent_modification_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | transaction_canceled_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type create_data_cells_filter_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type create_l_f_tag_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type create_l_f_tag_expression_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type create_lake_formation_identity_center_configuration_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()

  @type create_lake_formation_opt_in_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type delete_data_cells_filter_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type delete_l_f_tag_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type delete_l_f_tag_expression_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type delete_lake_formation_identity_center_configuration_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type delete_lake_formation_opt_in_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type delete_objects_on_cancel_errors() ::
          resource_not_ready_exception()
          | concurrent_modification_exception()
          | invalid_input_exception()
          | transaction_committed_exception()
          | internal_service_exception()
          | transaction_canceled_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type deregister_resource_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type describe_lake_formation_identity_center_configuration_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type describe_resource_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type describe_transaction_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type extend_transaction_errors() ::
          invalid_input_exception()
          | transaction_committed_exception()
          | transaction_commit_in_progress_exception()
          | internal_service_exception()
          | transaction_canceled_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_data_cells_filter_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_data_lake_principal_errors() ::
          access_denied_exception() | internal_service_exception() | operation_timeout_exception()

  @type get_data_lake_settings_errors() ::
          invalid_input_exception() | internal_service_exception() | entity_not_found_exception()

  @type get_effective_permissions_for_path_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_l_f_tag_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_l_f_tag_expression_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_query_state_errors() ::
          access_denied_exception() | invalid_input_exception() | internal_service_exception()

  @type get_query_statistics_errors() ::
          statistics_not_ready_yet_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | throttled_exception()
          | internal_service_exception()
          | expired_exception()

  @type get_resource_l_f_tags_errors() ::
          glue_encryption_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_table_objects_errors() ::
          resource_not_ready_exception()
          | invalid_input_exception()
          | transaction_committed_exception()
          | internal_service_exception()
          | transaction_canceled_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_temporary_data_location_credentials_errors() ::
          glue_encryption_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | conflict_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_temporary_glue_partition_credentials_errors() ::
          permission_type_mismatch_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_temporary_glue_table_credentials_errors() ::
          permission_type_mismatch_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type get_work_unit_results_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | throttled_exception()
          | internal_service_exception()
          | expired_exception()

  @type get_work_units_errors() ::
          work_units_not_ready_yet_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | expired_exception()

  @type grant_permissions_errors() ::
          concurrent_modification_exception()
          | invalid_input_exception()
          | entity_not_found_exception()

  @type list_data_cells_filter_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()

  @type list_l_f_tag_expressions_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type list_l_f_tags_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type list_lake_formation_opt_ins_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()

  @type list_permissions_errors() ::
          invalid_input_exception() | internal_service_exception() | operation_timeout_exception()

  @type list_resources_errors() ::
          invalid_input_exception() | internal_service_exception() | operation_timeout_exception()

  @type list_table_storage_optimizers_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  @type list_transactions_errors() ::
          invalid_input_exception() | internal_service_exception() | operation_timeout_exception()

  @type put_data_lake_settings_errors() ::
          invalid_input_exception() | internal_service_exception()

  @type register_resource_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | already_exists_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type remove_l_f_tags_from_resource_errors() ::
          glue_encryption_exception()
          | concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type revoke_permissions_errors() ::
          concurrent_modification_exception()
          | invalid_input_exception()
          | entity_not_found_exception()

  @type search_databases_by_l_f_tags_errors() ::
          glue_encryption_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type search_tables_by_l_f_tags_errors() ::
          glue_encryption_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type start_query_planning_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | throttled_exception()
          | internal_service_exception()

  @type start_transaction_errors() :: internal_service_exception() | operation_timeout_exception()

  @type update_data_cells_filter_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_l_f_tag_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_l_f_tag_expression_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | resource_number_limit_exceeded_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_lake_formation_identity_center_configuration_errors() ::
          concurrent_modification_exception()
          | access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_resource_errors() ::
          invalid_input_exception()
          | internal_service_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_table_objects_errors() ::
          resource_not_ready_exception()
          | concurrent_modification_exception()
          | invalid_input_exception()
          | transaction_committed_exception()
          | transaction_commit_in_progress_exception()
          | internal_service_exception()
          | transaction_canceled_exception()
          | operation_timeout_exception()
          | entity_not_found_exception()

  @type update_table_storage_optimizer_errors() ::
          access_denied_exception()
          | invalid_input_exception()
          | internal_service_exception()
          | entity_not_found_exception()

  def metadata do
    %{
      api_version: "2017-03-31",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "lakeformation",
      global?: false,
      hostname: nil,
      protocol: "rest-json",
      service_id: "LakeFormation",
      signature_version: "v4",
      signing_name: "lakeformation",
      target_prefix: nil
    }
  end

  @doc """
  Attaches one or more LF-tags to an existing resource.
  """
  @spec add_l_f_tags_to_resource(map(), add_l_f_tags_to_resource_request(), list()) ::
          {:ok, add_l_f_tags_to_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, add_l_f_tags_to_resource_errors()}
  def add_l_f_tags_to_resource(%Client{} = client, input, options \\ []) do
    url_path = "/AddLFTagsToResource"
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
  Allows a caller to assume an IAM role decorated as the SAML user specified in
  the SAML assertion included in the request.

  This decoration allows Lake Formation to enforce access policies against the
  SAML users and groups. This API operation requires SAML federation setup in the
  caller’s account as it can only be called with valid SAML assertions.
  Lake Formation does not scope down the permission of the assumed role. All
  permissions attached to the role via the SAML federation setup will be included
  in the role session.

  This decorated role is expected to access data in Amazon S3 by getting temporary
  access from Lake Formation which is authorized via the virtual API
  `GetDataAccess`.
  Therefore, all SAML roles that can be assumed via `AssumeDecoratedRoleWithSAML`
  must at a minimum include `lakeformation:GetDataAccess` in their role policies.
  A typical IAM policy attached to such a role would include the following
  actions:

    *
  glue:*Database*

    *
  glue:*Table*

    *
  glue:*Partition*

    *
  glue:*UserDefinedFunction*

    *
  lakeformation:GetDataAccess
  """
  @spec assume_decorated_role_with_saml(map(), assume_decorated_role_with_saml_request(), list()) ::
          {:ok, assume_decorated_role_with_saml_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, assume_decorated_role_with_saml_errors()}
  def assume_decorated_role_with_saml(%Client{} = client, input, options \\ []) do
    url_path = "/AssumeDecoratedRoleWithSAML"
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
  Batch operation to grant permissions to the principal.
  """
  @spec batch_grant_permissions(map(), batch_grant_permissions_request(), list()) ::
          {:ok, batch_grant_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_grant_permissions_errors()}
  def batch_grant_permissions(%Client{} = client, input, options \\ []) do
    url_path = "/BatchGrantPermissions"
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
  Batch operation to revoke permissions from the principal.
  """
  @spec batch_revoke_permissions(map(), batch_revoke_permissions_request(), list()) ::
          {:ok, batch_revoke_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, batch_revoke_permissions_errors()}
  def batch_revoke_permissions(%Client{} = client, input, options \\ []) do
    url_path = "/BatchRevokePermissions"
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
  Attempts to cancel the specified transaction.

  Returns an exception if the transaction was previously committed.
  """
  @spec cancel_transaction(map(), cancel_transaction_request(), list()) ::
          {:ok, cancel_transaction_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, cancel_transaction_errors()}
  def cancel_transaction(%Client{} = client, input, options \\ []) do
    url_path = "/CancelTransaction"
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
  Attempts to commit the specified transaction.

  Returns an exception if the transaction was previously aborted. This API action
  is idempotent if called multiple times for the same transaction.
  """
  @spec commit_transaction(map(), commit_transaction_request(), list()) ::
          {:ok, commit_transaction_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, commit_transaction_errors()}
  def commit_transaction(%Client{} = client, input, options \\ []) do
    url_path = "/CommitTransaction"
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
  Creates a data cell filter to allow one to grant access to certain columns on
  certain rows.
  """
  @spec create_data_cells_filter(map(), create_data_cells_filter_request(), list()) ::
          {:ok, create_data_cells_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_data_cells_filter_errors()}
  def create_data_cells_filter(%Client{} = client, input, options \\ []) do
    url_path = "/CreateDataCellsFilter"
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
  Creates an LF-tag with the specified name and values.
  """
  @spec create_l_f_tag(map(), create_l_f_tag_request(), list()) ::
          {:ok, create_l_f_tag_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_l_f_tag_errors()}
  def create_l_f_tag(%Client{} = client, input, options \\ []) do
    url_path = "/CreateLFTag"
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
  Creates a new LF-Tag expression with the provided name, description, catalog ID,
  and
  expression body.

  This call fails if a LF-Tag expression with the same name already exists in
  the caller’s account or if the underlying LF-Tags don't exist. To call this API
  operation,
  caller needs the following Lake Formation permissions:

  `CREATE_LF_TAG_EXPRESSION` on the root catalog resource.

  `GRANT_WITH_LF_TAG_EXPRESSION` on all underlying LF-Tag key:value pairs
  included in the expression.
  """
  @spec create_l_f_tag_expression(map(), create_l_f_tag_expression_request(), list()) ::
          {:ok, create_l_f_tag_expression_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_l_f_tag_expression_errors()}
  def create_l_f_tag_expression(%Client{} = client, input, options \\ []) do
    url_path = "/CreateLFTagExpression"
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
  Creates an IAM Identity Center connection with Lake Formation to allow IAM
  Identity Center users and groups to access Data Catalog resources.
  """
  @spec create_lake_formation_identity_center_configuration(
          map(),
          create_lake_formation_identity_center_configuration_request(),
          list()
        ) ::
          {:ok, create_lake_formation_identity_center_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_lake_formation_identity_center_configuration_errors()}
  def create_lake_formation_identity_center_configuration(
        %Client{} = client,
        input,
        options \\ []
      ) do
    url_path = "/CreateLakeFormationIdentityCenterConfiguration"
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
  Enforce Lake Formation permissions for the given databases, tables, and
  principals.
  """
  @spec create_lake_formation_opt_in(map(), create_lake_formation_opt_in_request(), list()) ::
          {:ok, create_lake_formation_opt_in_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_lake_formation_opt_in_errors()}
  def create_lake_formation_opt_in(%Client{} = client, input, options \\ []) do
    url_path = "/CreateLakeFormationOptIn"
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
  Deletes a data cell filter.
  """
  @spec delete_data_cells_filter(map(), delete_data_cells_filter_request(), list()) ::
          {:ok, delete_data_cells_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_data_cells_filter_errors()}
  def delete_data_cells_filter(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteDataCellsFilter"
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
  Deletes an LF-tag by its key name.

  The operation fails if the specified tag key doesn't
  exist. When you delete an LF-Tag:

    *
  The associated LF-Tag policy becomes invalid.

    *

  Resources that had this tag assigned will no longer have the tag policy applied
  to
  them.
  """
  @spec delete_l_f_tag(map(), delete_l_f_tag_request(), list()) ::
          {:ok, delete_l_f_tag_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_l_f_tag_errors()}
  def delete_l_f_tag(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteLFTag"
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
  Deletes the LF-Tag expression.

  The caller must be a data lake admin or have `DROP` permissions on the LF-Tag
  expression.
  Deleting a LF-Tag expression will also delete all `LFTagPolicy` permissions
  referencing the LF-Tag expression.
  """
  @spec delete_l_f_tag_expression(map(), delete_l_f_tag_expression_request(), list()) ::
          {:ok, delete_l_f_tag_expression_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_l_f_tag_expression_errors()}
  def delete_l_f_tag_expression(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteLFTagExpression"
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
  Deletes an IAM Identity Center connection with Lake Formation.
  """
  @spec delete_lake_formation_identity_center_configuration(
          map(),
          delete_lake_formation_identity_center_configuration_request(),
          list()
        ) ::
          {:ok, delete_lake_formation_identity_center_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_lake_formation_identity_center_configuration_errors()}
  def delete_lake_formation_identity_center_configuration(
        %Client{} = client,
        input,
        options \\ []
      ) do
    url_path = "/DeleteLakeFormationIdentityCenterConfiguration"
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
  Remove the Lake Formation permissions enforcement of the given databases,
  tables, and principals.
  """
  @spec delete_lake_formation_opt_in(map(), delete_lake_formation_opt_in_request(), list()) ::
          {:ok, delete_lake_formation_opt_in_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_lake_formation_opt_in_errors()}
  def delete_lake_formation_opt_in(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteLakeFormationOptIn"
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
  For a specific governed table, provides a list of Amazon S3 objects that will be
  written during the current transaction and that can be automatically deleted
  if the transaction is canceled.

  Without this call, no Amazon S3 objects are automatically deleted when a
  transaction cancels.

  The Glue ETL library function `write_dynamic_frame.from_catalog()` includes an
  option to automatically
  call `DeleteObjectsOnCancel` before writes. For more information, see
  [Rolling Back Amazon S3 Writes](https://docs.aws.amazon.com/lake-formation/latest/dg/transactions-data-operations.html#rolling-back-writes).
  """
  @spec delete_objects_on_cancel(map(), delete_objects_on_cancel_request(), list()) ::
          {:ok, delete_objects_on_cancel_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_objects_on_cancel_errors()}
  def delete_objects_on_cancel(%Client{} = client, input, options \\ []) do
    url_path = "/DeleteObjectsOnCancel"
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
  Deregisters the resource as managed by the Data Catalog.

  When you deregister a path, Lake Formation removes the path from the inline
  policy attached to your service-linked role.
  """
  @spec deregister_resource(map(), deregister_resource_request(), list()) ::
          {:ok, deregister_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_resource_errors()}
  def deregister_resource(%Client{} = client, input, options \\ []) do
    url_path = "/DeregisterResource"
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
  Retrieves the instance ARN and application ARN for the connection.
  """
  @spec describe_lake_formation_identity_center_configuration(
          map(),
          describe_lake_formation_identity_center_configuration_request(),
          list()
        ) ::
          {:ok, describe_lake_formation_identity_center_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_lake_formation_identity_center_configuration_errors()}
  def describe_lake_formation_identity_center_configuration(
        %Client{} = client,
        input,
        options \\ []
      ) do
    url_path = "/DescribeLakeFormationIdentityCenterConfiguration"
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
  Retrieves the current data access role for the given resource registered in Lake
  Formation.
  """
  @spec describe_resource(map(), describe_resource_request(), list()) ::
          {:ok, describe_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_resource_errors()}
  def describe_resource(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeResource"
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
  Returns the details of a single transaction.
  """
  @spec describe_transaction(map(), describe_transaction_request(), list()) ::
          {:ok, describe_transaction_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_transaction_errors()}
  def describe_transaction(%Client{} = client, input, options \\ []) do
    url_path = "/DescribeTransaction"
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
  Indicates to the service that the specified transaction is still active and
  should not be treated as idle and aborted.

  Write transactions that remain idle for a long period are automatically aborted
  unless explicitly extended.
  """
  @spec extend_transaction(map(), extend_transaction_request(), list()) ::
          {:ok, extend_transaction_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, extend_transaction_errors()}
  def extend_transaction(%Client{} = client, input, options \\ []) do
    url_path = "/ExtendTransaction"
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
  Returns a data cells filter.
  """
  @spec get_data_cells_filter(map(), get_data_cells_filter_request(), list()) ::
          {:ok, get_data_cells_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_cells_filter_errors()}
  def get_data_cells_filter(%Client{} = client, input, options \\ []) do
    url_path = "/GetDataCellsFilter"
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
  Returns the identity of the invoking principal.
  """
  @spec get_data_lake_principal(map(), get_data_lake_principal_request(), list()) ::
          {:ok, get_data_lake_principal_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_lake_principal_errors()}
  def get_data_lake_principal(%Client{} = client, input, options \\ []) do
    url_path = "/GetDataLakePrincipal"
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
  Retrieves the list of the data lake administrators of a Lake Formation-managed
  data lake.
  """
  @spec get_data_lake_settings(map(), get_data_lake_settings_request(), list()) ::
          {:ok, get_data_lake_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_data_lake_settings_errors()}
  def get_data_lake_settings(%Client{} = client, input, options \\ []) do
    url_path = "/GetDataLakeSettings"
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
  Returns the Lake Formation permissions for a specified table or database
  resource located
  at a path in Amazon S3.

  `GetEffectivePermissionsForPath` will not return databases and tables if the
  catalog is encrypted.
  """
  @spec get_effective_permissions_for_path(
          map(),
          get_effective_permissions_for_path_request(),
          list()
        ) ::
          {:ok, get_effective_permissions_for_path_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_effective_permissions_for_path_errors()}
  def get_effective_permissions_for_path(%Client{} = client, input, options \\ []) do
    url_path = "/GetEffectivePermissionsForPath"
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
  Returns an LF-tag definition.
  """
  @spec get_l_f_tag(map(), get_l_f_tag_request(), list()) ::
          {:ok, get_l_f_tag_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_l_f_tag_errors()}
  def get_l_f_tag(%Client{} = client, input, options \\ []) do
    url_path = "/GetLFTag"
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
  Returns the details about the LF-Tag expression.

  The caller must be a data lake admin or must have `DESCRIBE` permission on the
  LF-Tag expression resource.
  """
  @spec get_l_f_tag_expression(map(), get_l_f_tag_expression_request(), list()) ::
          {:ok, get_l_f_tag_expression_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_l_f_tag_expression_errors()}
  def get_l_f_tag_expression(%Client{} = client, input, options \\ []) do
    url_path = "/GetLFTagExpression"
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
  Returns the state of a query previously submitted.

  Clients are expected to poll `GetQueryState` to monitor the current state of the
  planning before retrieving the work units. A query state is only visible to the
  principal that made the initial call to `StartQueryPlanning`.
  """
  @spec get_query_state(map(), get_query_state_request(), list()) ::
          {:ok, get_query_state_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_query_state_errors()}
  def get_query_state(%Client{} = client, input, options \\ []) do
    url_path = "/GetQueryState"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "query-")

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
  Retrieves statistics on the planning and execution of a query.
  """
  @spec get_query_statistics(map(), get_query_statistics_request(), list()) ::
          {:ok, get_query_statistics_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_query_statistics_errors()}
  def get_query_statistics(%Client{} = client, input, options \\ []) do
    url_path = "/GetQueryStatistics"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "query-")

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
  Returns the LF-tags applied to a resource.
  """
  @spec get_resource_l_f_tags(map(), get_resource_l_f_tags_request(), list()) ::
          {:ok, get_resource_l_f_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_resource_l_f_tags_errors()}
  def get_resource_l_f_tags(%Client{} = client, input, options \\ []) do
    url_path = "/GetResourceLFTags"
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
  Returns the set of Amazon S3 objects that make up the specified governed table.

  A transaction ID or timestamp can be specified for time-travel queries.
  """
  @spec get_table_objects(map(), get_table_objects_request(), list()) ::
          {:ok, get_table_objects_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_table_objects_errors()}
  def get_table_objects(%Client{} = client, input, options \\ []) do
    url_path = "/GetTableObjects"
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
  Allows a user or application in a secure environment to access data in a
  specific Amazon S3 location registered with Lake Formation by providing
  temporary scoped credentials that are limited to the requested data location and
  the caller's authorized access level.

  The API operation returns an error in the following scenarios:

    *
  The data location is not registered with Lake Formation.

    *
  No Glue table is associated with the data location.

    *
  The caller doesn't have required permissions on the associated table. The caller
  must have
  `SELECT` or `SUPER` permissions on the associated table, and
  credential vending for full table access must be enabled in the data lake
  settings.

  For more information, see [Application integration for full table access](https://docs.aws.amazon.com/lake-formation/latest/dg/full-table-credential-vending.html).

    *
  The data location is in a different Amazon Web Services Region. Lake Formation
  doesn't
  support cross-Region access when vending credentials for a data location. Lake
  Formation only supports Amazon S3 paths registered within the same Region as the
  API
  call.
  """
  @spec get_temporary_data_location_credentials(
          map(),
          get_temporary_data_location_credentials_request(),
          list()
        ) ::
          {:ok, get_temporary_data_location_credentials_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_temporary_data_location_credentials_errors()}
  def get_temporary_data_location_credentials(%Client{} = client, input, options \\ []) do
    url_path = "/GetTemporaryDataLocationCredentials"
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
  This API is identical to `GetTemporaryTableCredentials` except that this is used
  when the target Data Catalog resource is of type Partition.

  Lake Formation restricts the permission of the vended credentials with the same
  scope down policy which restricts access to a single Amazon S3 prefix.
  """
  @spec get_temporary_glue_partition_credentials(
          map(),
          get_temporary_glue_partition_credentials_request(),
          list()
        ) ::
          {:ok, get_temporary_glue_partition_credentials_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_temporary_glue_partition_credentials_errors()}
  def get_temporary_glue_partition_credentials(%Client{} = client, input, options \\ []) do
    url_path = "/GetTemporaryGluePartitionCredentials"
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
  Allows a caller in a secure environment to assume a role with permission to
  access Amazon S3.

  In order to vend such credentials, Lake Formation assumes the role associated
  with a registered location, for example an Amazon S3 bucket, with a scope down
  policy which restricts the access to a single prefix.

  To call this API, the role that the service assumes must have
  `lakeformation:GetDataAccess` permission on the resource.
  """
  @spec get_temporary_glue_table_credentials(
          map(),
          get_temporary_glue_table_credentials_request(),
          list()
        ) ::
          {:ok, get_temporary_glue_table_credentials_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_temporary_glue_table_credentials_errors()}
  def get_temporary_glue_table_credentials(%Client{} = client, input, options \\ []) do
    url_path = "/GetTemporaryGlueTableCredentials"
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
  Returns the work units resulting from the query.

  Work units can be executed in any order and in parallel.
  """
  @spec get_work_unit_results(map(), get_work_unit_results_request(), list()) ::
          {:ok, get_work_unit_results_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_work_unit_results_errors()}
  def get_work_unit_results(%Client{} = client, input, options \\ []) do
    url_path = "/GetWorkUnitResults"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "data-")

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
  Retrieves the work units generated by the `StartQueryPlanning` operation.
  """
  @spec get_work_units(map(), get_work_units_request(), list()) ::
          {:ok, get_work_units_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_work_units_errors()}
  def get_work_units(%Client{} = client, input, options \\ []) do
    url_path = "/GetWorkUnits"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "query-")

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
  Grants permissions to the principal to access metadata in the Data Catalog and
  data organized in underlying data storage such as Amazon S3.

  For information about permissions, see [Security and Access Control to Metadata and
  Data](https://docs.aws.amazon.com/lake-formation/latest/dg/security-data-access.html).
  """
  @spec grant_permissions(map(), grant_permissions_request(), list()) ::
          {:ok, grant_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, grant_permissions_errors()}
  def grant_permissions(%Client{} = client, input, options \\ []) do
    url_path = "/GrantPermissions"
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
  Lists all the data cell filters on a table.
  """
  @spec list_data_cells_filter(map(), list_data_cells_filter_request(), list()) ::
          {:ok, list_data_cells_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_data_cells_filter_errors()}
  def list_data_cells_filter(%Client{} = client, input, options \\ []) do
    url_path = "/ListDataCellsFilter"
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
  Returns the LF-Tag expressions in caller’s account filtered based on caller's
  permissions.

  Data Lake and read only admins implicitly can see all tag expressions in their
  account, else caller needs DESCRIBE permissions on tag expression.
  """
  @spec list_l_f_tag_expressions(map(), list_l_f_tag_expressions_request(), list()) ::
          {:ok, list_l_f_tag_expressions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_l_f_tag_expressions_errors()}
  def list_l_f_tag_expressions(%Client{} = client, input, options \\ []) do
    url_path = "/ListLFTagExpressions"
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
  Lists LF-tags that the requester has permission to view.
  """
  @spec list_l_f_tags(map(), list_l_f_tags_request(), list()) ::
          {:ok, list_l_f_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_l_f_tags_errors()}
  def list_l_f_tags(%Client{} = client, input, options \\ []) do
    url_path = "/ListLFTags"
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
  Retrieve the current list of resources and principals that are opt in to enforce
  Lake Formation permissions.
  """
  @spec list_lake_formation_opt_ins(map(), list_lake_formation_opt_ins_request(), list()) ::
          {:ok, list_lake_formation_opt_ins_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_lake_formation_opt_ins_errors()}
  def list_lake_formation_opt_ins(%Client{} = client, input, options \\ []) do
    url_path = "/ListLakeFormationOptIns"
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
  Returns a list of the principal permissions on the resource, filtered by the
  permissions of the caller.

  For example, if you are granted an ALTER permission, you are able to see only
  the principal permissions for ALTER.

  This operation returns only those permissions that have been explicitly granted.
  If both
  `Principal` and `Resource` parameters are provided, the response
  returns effective permissions rather than the explicitly granted permissions.

  For information about permissions, see [Security and Access Control to Metadata and
  Data](https://docs.aws.amazon.com/lake-formation/latest/dg/security-data-access.html).
  """
  @spec list_permissions(map(), list_permissions_request(), list()) ::
          {:ok, list_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_permissions_errors()}
  def list_permissions(%Client{} = client, input, options \\ []) do
    url_path = "/ListPermissions"
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
  Lists the resources registered to be managed by the Data Catalog.
  """
  @spec list_resources(map(), list_resources_request(), list()) ::
          {:ok, list_resources_response(), any()}
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
  Returns the configuration of all storage optimizers associated with a specified
  table.
  """
  @spec list_table_storage_optimizers(map(), list_table_storage_optimizers_request(), list()) ::
          {:ok, list_table_storage_optimizers_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_table_storage_optimizers_errors()}
  def list_table_storage_optimizers(%Client{} = client, input, options \\ []) do
    url_path = "/ListTableStorageOptimizers"
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
  Returns metadata about transactions and their status.

  To prevent the response from growing indefinitely, only uncommitted transactions
  and those available for time-travel queries are returned.

  This operation can help you identify uncommitted transactions or to get
  information about transactions.
  """
  @spec list_transactions(map(), list_transactions_request(), list()) ::
          {:ok, list_transactions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_transactions_errors()}
  def list_transactions(%Client{} = client, input, options \\ []) do
    url_path = "/ListTransactions"
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
  Sets the list of data lake administrators who have admin privileges on all
  resources managed by Lake Formation.

  For more information on admin privileges, see [Granting Lake Formation Permissions](https://docs.aws.amazon.com/lake-formation/latest/dg/lake-formation-permissions.html).

  This API replaces the current list of data lake admins with the new list being
  passed. To add an admin, fetch the current list and add the new admin to that
  list and pass that list in this API.
  """
  @spec put_data_lake_settings(map(), put_data_lake_settings_request(), list()) ::
          {:ok, put_data_lake_settings_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, put_data_lake_settings_errors()}
  def put_data_lake_settings(%Client{} = client, input, options \\ []) do
    url_path = "/PutDataLakeSettings"
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
  Registers the resource as managed by the Data Catalog.

  To add or update data, Lake Formation needs read/write access to the chosen data
  location. Choose a role that you know has permission to do this, or choose the
  AWSServiceRoleForLakeFormationDataAccess service-linked role. When you register
  the first Amazon S3 path, the service-linked role and a new inline policy are
  created on your behalf. Lake Formation adds the first path to the inline policy
  and attaches it to the service-linked role. When you register subsequent paths,
  Lake Formation adds the path to the existing policy.

  The following request registers a new location and gives Lake Formation
  permission to use the service-linked role to access that location.

  ```
  ResourceArn = arn:aws:s3:::my-bucket/
  UseServiceLinkedRole = true
  ```

  If `UseServiceLinkedRole` is not set to true, you must provide or set the
  `RoleArn`:

  `arn:aws:iam::12345:role/my-data-access-role`
  """
  @spec register_resource(map(), register_resource_request(), list()) ::
          {:ok, register_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_resource_errors()}
  def register_resource(%Client{} = client, input, options \\ []) do
    url_path = "/RegisterResource"
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
  Removes an LF-tag from the resource.

  Only database, table, or tableWithColumns resource are allowed. To tag columns,
  use the column inclusion list in `tableWithColumns` to specify column input.
  """
  @spec remove_l_f_tags_from_resource(map(), remove_l_f_tags_from_resource_request(), list()) ::
          {:ok, remove_l_f_tags_from_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, remove_l_f_tags_from_resource_errors()}
  def remove_l_f_tags_from_resource(%Client{} = client, input, options \\ []) do
    url_path = "/RemoveLFTagsFromResource"
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
  Revokes permissions to the principal to access metadata in the Data Catalog and
  data organized in underlying data storage such as Amazon S3.
  """
  @spec revoke_permissions(map(), revoke_permissions_request(), list()) ::
          {:ok, revoke_permissions_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, revoke_permissions_errors()}
  def revoke_permissions(%Client{} = client, input, options \\ []) do
    url_path = "/RevokePermissions"
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
  This operation allows a search on `DATABASE` resources by `TagCondition`.

  This operation is used by admins who want to grant user permissions on certain
  `TagConditions`. Before making a grant, the admin can use
  `SearchDatabasesByTags` to find all resources where the given `TagConditions`
  are valid to verify whether the returned resources can be shared.
  """
  @spec search_databases_by_l_f_tags(map(), search_databases_by_l_f_tags_request(), list()) ::
          {:ok, search_databases_by_l_f_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_databases_by_l_f_tags_errors()}
  def search_databases_by_l_f_tags(%Client{} = client, input, options \\ []) do
    url_path = "/SearchDatabasesByLFTags"
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
  This operation allows a search on `TABLE` resources by `LFTag`s.

  This will be used by admins who want to grant user permissions on certain
  LF-tags. Before making a grant, the admin can use `SearchTablesByLFTags` to find
  all resources where the given `LFTag`s are valid to verify whether the returned
  resources can be shared.
  """
  @spec search_tables_by_l_f_tags(map(), search_tables_by_l_f_tags_request(), list()) ::
          {:ok, search_tables_by_l_f_tags_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, search_tables_by_l_f_tags_errors()}
  def search_tables_by_l_f_tags(%Client{} = client, input, options \\ []) do
    url_path = "/SearchTablesByLFTags"
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
  Submits a request to process a query statement.

  This operation generates work units that can be retrieved with the
  `GetWorkUnits` operation as soon as the query state is WORKUNITS_AVAILABLE or
  FINISHED.
  """
  @spec start_query_planning(map(), start_query_planning_request(), list()) ::
          {:ok, start_query_planning_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_query_planning_errors()}
  def start_query_planning(%Client{} = client, input, options \\ []) do
    url_path = "/StartQueryPlanning"
    headers = []
    custom_headers = []
    query_params = []

    meta = metadata() |> Map.put_new(:host_prefix, "query-")

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
  Starts a new transaction and returns its transaction ID.

  Transaction IDs are opaque objects that you can use to identify a transaction.
  """
  @spec start_transaction(map(), start_transaction_request(), list()) ::
          {:ok, start_transaction_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_transaction_errors()}
  def start_transaction(%Client{} = client, input, options \\ []) do
    url_path = "/StartTransaction"
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
  Updates a data cell filter.
  """
  @spec update_data_cells_filter(map(), update_data_cells_filter_request(), list()) ::
          {:ok, update_data_cells_filter_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_data_cells_filter_errors()}
  def update_data_cells_filter(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateDataCellsFilter"
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
  Updates the list of possible values for the specified LF-tag key.

  If the LF-tag does not exist, the operation throws an EntityNotFoundException.
  The values in the delete key values will be deleted from list of possible
  values. If any value in the delete key values is attached to a resource, then
  API errors out with a 400 Exception - "Update not allowed". Untag the attribute
  before deleting the LF-tag key's value.
  """
  @spec update_l_f_tag(map(), update_l_f_tag_request(), list()) ::
          {:ok, update_l_f_tag_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_l_f_tag_errors()}
  def update_l_f_tag(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateLFTag"
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
  Updates the name of the LF-Tag expression to the new description and expression
  body provided.

  Updating a LF-Tag expression immediately changes the permission boundaries of
  all existing `LFTagPolicy` permission grants that reference the given LF-Tag
  expression.
  """
  @spec update_l_f_tag_expression(map(), update_l_f_tag_expression_request(), list()) ::
          {:ok, update_l_f_tag_expression_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_l_f_tag_expression_errors()}
  def update_l_f_tag_expression(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateLFTagExpression"
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
  Updates the IAM Identity Center connection parameters.
  """
  @spec update_lake_formation_identity_center_configuration(
          map(),
          update_lake_formation_identity_center_configuration_request(),
          list()
        ) ::
          {:ok, update_lake_formation_identity_center_configuration_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_lake_formation_identity_center_configuration_errors()}
  def update_lake_formation_identity_center_configuration(
        %Client{} = client,
        input,
        options \\ []
      ) do
    url_path = "/UpdateLakeFormationIdentityCenterConfiguration"
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
  Updates the data access role used for vending access to the given (registered)
  resource in Lake Formation.
  """
  @spec update_resource(map(), update_resource_request(), list()) ::
          {:ok, update_resource_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_resource_errors()}
  def update_resource(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateResource"
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
  Updates the manifest of Amazon S3 objects that make up the specified governed
  table.
  """
  @spec update_table_objects(map(), update_table_objects_request(), list()) ::
          {:ok, update_table_objects_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_table_objects_errors()}
  def update_table_objects(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateTableObjects"
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
  Updates the configuration of the storage optimizers for a table.
  """
  @spec update_table_storage_optimizer(map(), update_table_storage_optimizer_request(), list()) ::
          {:ok, update_table_storage_optimizer_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_table_storage_optimizer_errors()}
  def update_table_storage_optimizer(%Client{} = client, input, options \\ []) do
    url_path = "/UpdateTableStorageOptimizer"
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
