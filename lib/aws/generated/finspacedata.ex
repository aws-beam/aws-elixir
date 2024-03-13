# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Finspacedata do
  @moduledoc """
  The FinSpace APIs let you take actions inside the FinSpace.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:

      permission_group_params() :: %{
        "datasetPermissions" => list(resource_permission()()),
        "permissionGroupId" => String.t()
      }

  """
  @type permission_group_params() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_permission_group_request() :: %{
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        required("applicationPermissions") => list(list(any())()),
        required("name") => String.t()
      }

  """
  @type create_permission_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_external_data_view_access_details_request() :: %{}

  """
  @type get_external_data_view_access_details_request() :: %{}

  @typedoc """

  ## Example:

      list_users_by_permission_group_response() :: %{
        "nextToken" => String.t(),
        "users" => list(user_by_permission_group()())
      }

  """
  @type list_users_by_permission_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_permission_group_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_permission_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_dataset_response() :: %{
        "datasetId" => String.t()
      }

  """
  @type delete_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_programmatic_access_credentials_response() :: %{
        "credentials" => credentials(),
        "durationInMinutes" => float()
      }

  """
  @type get_programmatic_access_credentials_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_dataset_response() :: %{
        "datasetId" => String.t()
      }

  """
  @type update_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_user_response() :: %{
        "userId" => String.t()
      }

  """
  @type update_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schema_definition() :: %{
        "columns" => list(column_definition()()),
        "primaryKeyColumns" => list(String.t()())
      }

  """
  @type schema_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_data_view_response() :: %{
        "dataViewId" => String.t(),
        "datasetId" => String.t()
      }

  """
  @type create_data_view_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      credentials() :: %{
        "accessKeyId" => String.t(),
        "secretAccessKey" => String.t(),
        "sessionToken" => String.t()
      }

  """
  @type credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_user_response() :: %{
        "apiAccess" => list(any()),
        "apiAccessPrincipalArn" => String.t(),
        "createTime" => float(),
        "emailAddress" => String.t(),
        "firstName" => String.t(),
        "lastDisabledTime" => float(),
        "lastEnabledTime" => float(),
        "lastLoginTime" => float(),
        "lastModifiedTime" => float(),
        "lastName" => String.t(),
        "status" => list(any()),
        "type" => list(any()),
        "userId" => String.t()
      }

  """
  @type get_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_user_from_permission_group_response() :: %{
        "statusCode" => integer()
      }

  """
  @type disassociate_user_from_permission_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_permission_groups_by_user_request() :: %{
        optional("nextToken") => String.t(),
        required("maxResults") => integer()
      }

  """
  @type list_permission_groups_by_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_datasets_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_datasets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_user_to_permission_group_response() :: %{
        "statusCode" => integer()
      }

  """
  @type associate_user_to_permission_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_permission_group_request() :: %{}

  """
  @type get_permission_group_request() :: %{}

  @typedoc """

  ## Example:

      create_data_view_request() :: %{
        optional("asOfTimestamp") => float(),
        optional("autoUpdate") => boolean(),
        optional("clientToken") => String.t(),
        optional("partitionColumns") => list(String.t()()),
        optional("sortColumns") => list(String.t()()),
        required("destinationTypeParams") => data_view_destination_type_params()
      }

  """
  @type create_data_view_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_users_by_permission_group_request() :: %{
        optional("nextToken") => String.t(),
        required("maxResults") => integer()
      }

  """
  @type list_users_by_permission_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_external_data_view_access_details_response() :: %{
        "credentials" => aws_credentials(),
        "s3Location" => s3_location()
      }

  """
  @type get_external_data_view_access_details_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_changeset_request() :: %{}

  """
  @type get_changeset_request() :: %{}

  @typedoc """

  ## Example:

      create_permission_group_response() :: %{
        "permissionGroupId" => String.t()
      }

  """
  @type create_permission_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_permission_group_response() :: %{
        "permissionGroupId" => String.t()
      }

  """
  @type delete_permission_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_permission_groups_by_user_response() :: %{
        "nextToken" => String.t(),
        "permissionGroups" => list(permission_group_by_user()())
      }

  """
  @type list_permission_groups_by_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      dataset() :: %{
        "alias" => String.t(),
        "createTime" => float(),
        "datasetArn" => String.t(),
        "datasetDescription" => String.t(),
        "datasetId" => String.t(),
        "datasetTitle" => String.t(),
        "kind" => list(any()),
        "lastModifiedTime" => float(),
        "ownerInfo" => dataset_owner_info(),
        "schemaDefinition" => schema_union()
      }

  """
  @type dataset() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_dataset_response() :: %{
        "datasetId" => String.t()
      }

  """
  @type create_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_data_view_request() :: %{}

  """
  @type get_data_view_request() :: %{}

  @typedoc """

  ## Example:

      conflict_exception() :: %{
        "message" => String.t(),
        "reason" => String.t()
      }

  """
  @type conflict_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_not_found_exception() :: %{
        "message" => String.t(),
        "reason" => String.t()
      }

  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_changeset_response() :: %{
        "changesetId" => String.t(),
        "datasetId" => String.t()
      }

  """
  @type create_changeset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_user_request() :: %{}

  """
  @type get_user_request() :: %{}

  @typedoc """

  ## Example:

      dataset_owner_info() :: %{
        "email" => String.t(),
        "name" => String.t(),
        "phoneNumber" => String.t()
      }

  """
  @type dataset_owner_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_working_location_response() :: %{
        "s3Bucket" => String.t(),
        "s3Path" => String.t(),
        "s3Uri" => String.t()
      }

  """
  @type get_working_location_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_data_view_response() :: %{
        "asOfTimestamp" => float(),
        "autoUpdate" => boolean(),
        "createTime" => float(),
        "dataViewArn" => String.t(),
        "dataViewId" => String.t(),
        "datasetId" => String.t(),
        "destinationTypeParams" => data_view_destination_type_params(),
        "errorInfo" => data_view_error_info(),
        "lastModifiedTime" => float(),
        "partitionColumns" => list(String.t()()),
        "sortColumns" => list(String.t()()),
        "status" => list(any())
      }

  """
  @type get_data_view_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disassociate_user_from_permission_group_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type disassociate_user_from_permission_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reset_user_password_response() :: %{
        "temporaryPassword" => String.t(),
        "userId" => String.t()
      }

  """
  @type reset_user_password_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      permission_group_by_user() :: %{
        "membershipStatus" => list(any()),
        "name" => String.t(),
        "permissionGroupId" => String.t()
      }

  """
  @type permission_group_by_user() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_users_response() :: %{
        "nextToken" => String.t(),
        "users" => list(user()())
      }

  """
  @type list_users_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_permission_group_response() :: %{
        "permissionGroup" => permission_group()
      }

  """
  @type get_permission_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_view_destination_type_params() :: %{
        "destinationType" => String.t(),
        "s3DestinationExportFileFormat" => list(any()),
        "s3DestinationExportFileFormatOptions" => map()
      }

  """
  @type data_view_destination_type_params() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_permission_group_request() :: %{
        optional("applicationPermissions") => list(list(any())()),
        optional("clientToken") => String.t(),
        optional("description") => String.t(),
        optional("name") => String.t()
      }

  """
  @type update_permission_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_changeset_request() :: %{
        optional("clientToken") => String.t(),
        required("changeType") => list(any()),
        required("formatParams") => map(),
        required("sourceParams") => map()
      }

  """
  @type create_changeset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      schema_union() :: %{
        "tabularSchemaConfig" => schema_definition()
      }

  """
  @type schema_union() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_changeset_request() :: %{
        optional("clientToken") => String.t(),
        required("formatParams") => map(),
        required("sourceParams") => map()
      }

  """
  @type update_changeset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      s3_location() :: %{
        "bucket" => String.t(),
        "key" => String.t()
      }

  """
  @type s3_location() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_dataset_request() :: %{
        optional("alias") => String.t(),
        optional("clientToken") => String.t(),
        optional("datasetDescription") => String.t(),
        optional("schemaDefinition") => schema_union(),
        required("datasetTitle") => String.t(),
        required("kind") => list(any())
      }

  """
  @type update_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_changesets_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_changesets_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      changeset_summary() :: %{
        "activeFromTimestamp" => float(),
        "activeUntilTimestamp" => float(),
        "changeType" => list(any()),
        "changesetArn" => String.t(),
        "changesetId" => String.t(),
        "createTime" => float(),
        "datasetId" => String.t(),
        "errorInfo" => changeset_error_info(),
        "formatParams" => map(),
        "sourceParams" => map(),
        "status" => list(any()),
        "updatedByChangesetId" => String.t(),
        "updatesChangesetId" => String.t()
      }

  """
  @type changeset_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      internal_server_exception() :: %{
        "message" => String.t()
      }

  """
  @type internal_server_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      reset_user_password_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type reset_user_password_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disable_user_response() :: %{
        "userId" => String.t()
      }

  """
  @type disable_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      changeset_error_info() :: %{
        "errorCategory" => list(any()),
        "errorMessage" => String.t()
      }

  """
  @type changeset_error_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_changeset_response() :: %{
        "activeFromTimestamp" => float(),
        "activeUntilTimestamp" => float(),
        "changeType" => list(any()),
        "changesetArn" => String.t(),
        "changesetId" => String.t(),
        "createTime" => float(),
        "datasetId" => String.t(),
        "errorInfo" => changeset_error_info(),
        "formatParams" => map(),
        "sourceParams" => map(),
        "status" => list(any()),
        "updatedByChangesetId" => String.t(),
        "updatesChangesetId" => String.t()
      }

  """
  @type get_changeset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_permission_groups_response() :: %{
        "nextToken" => String.t(),
        "permissionGroups" => list(permission_group()())
      }

  """
  @type list_permission_groups_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_changeset_response() :: %{
        "changesetId" => String.t(),
        "datasetId" => String.t()
      }

  """
  @type update_changeset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      access_denied_exception() :: %{
        "message" => String.t()
      }

  """
  @type access_denied_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_view_error_info() :: %{
        "errorCategory" => list(any()),
        "errorMessage" => String.t()
      }

  """
  @type data_view_error_info() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      aws_credentials() :: %{
        "accessKeyId" => String.t(),
        "expiration" => float(),
        "secretAccessKey" => String.t(),
        "sessionToken" => String.t()
      }

  """
  @type aws_credentials() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_dataset_request() :: %{}

  """
  @type get_dataset_request() :: %{}

  @typedoc """

  ## Example:

      update_user_request() :: %{
        optional("apiAccess") => list(any()),
        optional("apiAccessPrincipalArn") => String.t(),
        optional("clientToken") => String.t(),
        optional("firstName") => String.t(),
        optional("lastName") => String.t(),
        optional("type") => list(any())
      }

  """
  @type update_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_dataset_response() :: %{
        "alias" => String.t(),
        "createTime" => float(),
        "datasetArn" => String.t(),
        "datasetDescription" => String.t(),
        "datasetId" => String.t(),
        "datasetTitle" => String.t(),
        "kind" => list(any()),
        "lastModifiedTime" => float(),
        "schemaDefinition" => schema_union(),
        "status" => list(any())
      }

  """
  @type get_dataset_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      validation_exception() :: %{
        "message" => String.t(),
        "reason" => String.t()
      }

  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_dataset_request() :: %{
        optional("alias") => String.t(),
        optional("clientToken") => String.t(),
        optional("datasetDescription") => String.t(),
        optional("ownerInfo") => dataset_owner_info(),
        optional("schemaDefinition") => schema_union(),
        required("datasetTitle") => String.t(),
        required("kind") => list(any()),
        required("permissionGroupParams") => permission_group_params()
      }

  """
  @type create_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enable_user_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type enable_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      update_permission_group_response() :: %{
        "permissionGroupId" => String.t()
      }

  """
  @type update_permission_group_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      associate_user_to_permission_group_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type associate_user_to_permission_group_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      throttling_exception() :: %{}

  """
  @type throttling_exception() :: %{}

  @typedoc """

  ## Example:

      user() :: %{
        "apiAccess" => list(any()),
        "apiAccessPrincipalArn" => String.t(),
        "createTime" => float(),
        "emailAddress" => String.t(),
        "firstName" => String.t(),
        "lastDisabledTime" => float(),
        "lastEnabledTime" => float(),
        "lastLoginTime" => float(),
        "lastModifiedTime" => float(),
        "lastName" => String.t(),
        "status" => list(any()),
        "type" => list(any()),
        "userId" => String.t()
      }

  """
  @type user() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_views_request() :: %{
        optional("maxResults") => integer(),
        optional("nextToken") => String.t()
      }

  """
  @type list_data_views_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_users_request() :: %{
        optional("nextToken") => String.t(),
        required("maxResults") => integer()
      }

  """
  @type list_users_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      user_by_permission_group() :: %{
        "apiAccess" => list(any()),
        "apiAccessPrincipalArn" => String.t(),
        "emailAddress" => String.t(),
        "firstName" => String.t(),
        "lastName" => String.t(),
        "membershipStatus" => list(any()),
        "status" => list(any()),
        "type" => list(any()),
        "userId" => String.t()
      }

  """
  @type user_by_permission_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      limit_exceeded_exception() :: %{
        "message" => String.t()
      }

  """
  @type limit_exceeded_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_working_location_request() :: %{
        optional("locationType") => list(any())
      }

  """
  @type get_working_location_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      resource_permission() :: %{
        "permission" => String.t()
      }

  """
  @type resource_permission() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      delete_dataset_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type delete_dataset_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_datasets_response() :: %{
        "datasets" => list(dataset()()),
        "nextToken" => String.t()
      }

  """
  @type list_datasets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      permission_group() :: %{
        "applicationPermissions" => list(list(any())()),
        "createTime" => float(),
        "description" => String.t(),
        "lastModifiedTime" => float(),
        "membershipStatus" => list(any()),
        "name" => String.t(),
        "permissionGroupId" => String.t()
      }

  """
  @type permission_group() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      get_programmatic_access_credentials_request() :: %{
        optional("durationInMinutes") => float(),
        required("environmentId") => String.t()
      }

  """
  @type get_programmatic_access_credentials_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_permission_groups_request() :: %{
        optional("nextToken") => String.t(),
        required("maxResults") => integer()
      }

  """
  @type list_permission_groups_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_changesets_response() :: %{
        "changesets" => list(changeset_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_changesets_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      data_view_summary() :: %{
        "asOfTimestamp" => float(),
        "autoUpdate" => boolean(),
        "createTime" => float(),
        "dataViewArn" => String.t(),
        "dataViewId" => String.t(),
        "datasetId" => String.t(),
        "destinationTypeProperties" => data_view_destination_type_params(),
        "errorInfo" => data_view_error_info(),
        "lastModifiedTime" => float(),
        "partitionColumns" => list(String.t()()),
        "sortColumns" => list(String.t()()),
        "status" => list(any())
      }

  """
  @type data_view_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      disable_user_request() :: %{
        optional("clientToken") => String.t()
      }

  """
  @type disable_user_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_user_response() :: %{
        "userId" => String.t()
      }

  """
  @type create_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      enable_user_response() :: %{
        "userId" => String.t()
      }

  """
  @type enable_user_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      column_definition() :: %{
        "columnDescription" => String.t(),
        "columnName" => String.t(),
        "dataType" => list(any())
      }

  """
  @type column_definition() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      list_data_views_response() :: %{
        "dataViews" => list(data_view_summary()()),
        "nextToken" => String.t()
      }

  """
  @type list_data_views_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:

      create_user_request() :: %{
        optional("apiAccess") => list(any()),
        optional("apiAccessPrincipalArn") => String.t(),
        optional("clientToken") => String.t(),
        optional("firstName") => String.t(),
        optional("lastName") => String.t(),
        required("emailAddress") => String.t(),
        required("type") => list(any())
      }

  """
  @type create_user_request() :: %{String.t() => any()}

  @type associate_user_to_permission_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_changeset_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_data_view_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_dataset_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type create_permission_group_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type create_user_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | conflict_exception()

  @type delete_dataset_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type delete_permission_group_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disable_user_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type disassociate_user_from_permission_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type enable_user_errors() ::
          limit_exceeded_exception()
          | throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_changeset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_data_view_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_dataset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type get_external_data_view_access_details_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_permission_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_programmatic_access_credentials_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type get_user_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type get_working_location_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_changesets_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_data_views_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_datasets_errors() ::
          throttling_exception()
          | validation_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type list_permission_groups_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_permission_groups_by_user_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type list_users_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()

  @type list_users_by_permission_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()

  @type reset_user_password_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_changeset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_dataset_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_permission_group_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  @type update_user_errors() ::
          throttling_exception()
          | validation_exception()
          | access_denied_exception()
          | internal_server_exception()
          | resource_not_found_exception()
          | conflict_exception()

  def metadata do
    %{
      api_version: "2020-07-13",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "finspace-api",
      global?: false,
      protocol: "rest-json",
      service_id: "finspace data",
      signature_version: "v4",
      signing_name: "finspace-api",
      target_prefix: nil
    }
  end

  @doc """
  Adds a user to a permission group to grant permissions for actions a user can
  perform in FinSpace.
  """
  @spec associate_user_to_permission_group(
          map(),
          String.t(),
          String.t(),
          associate_user_to_permission_group_request(),
          list()
        ) ::
          {:ok, associate_user_to_permission_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, associate_user_to_permission_group_errors()}
  def associate_user_to_permission_group(
        %Client{} = client,
        permission_group_id,
        user_id,
        input,
        options \\ []
      ) do
    url_path =
      "/permission-group/#{AWS.Util.encode_uri(permission_group_id)}/users/#{AWS.Util.encode_uri(user_id)}"

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
  Creates a new Changeset in a FinSpace Dataset.
  """
  @spec create_changeset(map(), String.t(), create_changeset_request(), list()) ::
          {:ok, create_changeset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_changeset_errors()}
  def create_changeset(%Client{} = client, dataset_id, input, options \\ []) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_id)}/changesetsv2"
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
  Creates a Dataview for a Dataset.
  """
  @spec create_data_view(map(), String.t(), create_data_view_request(), list()) ::
          {:ok, create_data_view_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_data_view_errors()}
  def create_data_view(%Client{} = client, dataset_id, input, options \\ []) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_id)}/dataviewsv2"
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
  Creates a new FinSpace Dataset.
  """
  @spec create_dataset(map(), create_dataset_request(), list()) ::
          {:ok, create_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_dataset_errors()}
  def create_dataset(%Client{} = client, input, options \\ []) do
    url_path = "/datasetsv2"
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
  Creates a group of permissions for various actions that a user can perform in
  FinSpace.
  """
  @spec create_permission_group(map(), create_permission_group_request(), list()) ::
          {:ok, create_permission_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_permission_group_errors()}
  def create_permission_group(%Client{} = client, input, options \\ []) do
    url_path = "/permission-group"
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
  Creates a new user in FinSpace.
  """
  @spec create_user(map(), create_user_request(), list()) ::
          {:ok, create_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, create_user_errors()}
  def create_user(%Client{} = client, input, options \\ []) do
    url_path = "/user"
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
  Deletes a FinSpace Dataset.
  """
  @spec delete_dataset(map(), String.t(), delete_dataset_request(), list()) ::
          {:ok, delete_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_dataset_errors()}
  def delete_dataset(%Client{} = client, dataset_id, input, options \\ []) do
    url_path = "/datasetsv2/#{AWS.Util.encode_uri(dataset_id)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Deletes a permission group.

  This action is irreversible.
  """
  @spec delete_permission_group(map(), String.t(), delete_permission_group_request(), list()) ::
          {:ok, delete_permission_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, delete_permission_group_errors()}
  def delete_permission_group(%Client{} = client, permission_group_id, input, options \\ []) do
    url_path = "/permission-group/#{AWS.Util.encode_uri(permission_group_id)}"
    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Denies access to the FinSpace web application and API for the specified user.
  """
  @spec disable_user(map(), String.t(), disable_user_request(), list()) ::
          {:ok, disable_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disable_user_errors()}
  def disable_user(%Client{} = client, user_id, input, options \\ []) do
    url_path = "/user/#{AWS.Util.encode_uri(user_id)}/disable"
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
  Removes a user from a permission group.
  """
  @spec disassociate_user_from_permission_group(
          map(),
          String.t(),
          String.t(),
          disassociate_user_from_permission_group_request(),
          list()
        ) ::
          {:ok, disassociate_user_from_permission_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, disassociate_user_from_permission_group_errors()}
  def disassociate_user_from_permission_group(
        %Client{} = client,
        permission_group_id,
        user_id,
        input,
        options \\ []
      ) do
    url_path =
      "/permission-group/#{AWS.Util.encode_uri(permission_group_id)}/users/#{AWS.Util.encode_uri(user_id)}"

    headers = []

    {query_params, input} =
      [
        {"clientToken", "clientToken"}
      ]
      |> Request.build_params(input)

    meta = metadata()

    Request.request_rest(
      client,
      meta,
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Allows the specified user to access the FinSpace web application and API.
  """
  @spec enable_user(map(), String.t(), enable_user_request(), list()) ::
          {:ok, enable_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, enable_user_errors()}
  def enable_user(%Client{} = client, user_id, input, options \\ []) do
    url_path = "/user/#{AWS.Util.encode_uri(user_id)}/enable"
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
  Get information about a Changeset.
  """
  @spec get_changeset(map(), String.t(), String.t(), list()) ::
          {:ok, get_changeset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_changeset_errors()}
  def get_changeset(%Client{} = client, changeset_id, dataset_id, options \\ []) do
    url_path =
      "/datasets/#{AWS.Util.encode_uri(dataset_id)}/changesetsv2/#{AWS.Util.encode_uri(changeset_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Gets information about a Dataview.
  """
  @spec get_data_view(map(), String.t(), String.t(), list()) ::
          {:ok, get_data_view_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_data_view_errors()}
  def get_data_view(%Client{} = client, data_view_id, dataset_id, options \\ []) do
    url_path =
      "/datasets/#{AWS.Util.encode_uri(dataset_id)}/dataviewsv2/#{AWS.Util.encode_uri(data_view_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns information about a Dataset.
  """
  @spec get_dataset(map(), String.t(), list()) ::
          {:ok, get_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_dataset_errors()}
  def get_dataset(%Client{} = client, dataset_id, options \\ []) do
    url_path = "/datasetsv2/#{AWS.Util.encode_uri(dataset_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Returns the credentials to access the external Dataview from an S3 location.

  To call this API:

    *
  You must retrieve the programmatic credentials.

    *
  You must be a member of a FinSpace user group, where the dataset that you want
  to access has `Read Dataset Data` permissions.
  """
  @spec get_external_data_view_access_details(
          map(),
          String.t(),
          String.t(),
          get_external_data_view_access_details_request(),
          list()
        ) ::
          {:ok, get_external_data_view_access_details_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_external_data_view_access_details_errors()}
  def get_external_data_view_access_details(
        %Client{} = client,
        data_view_id,
        dataset_id,
        input,
        options \\ []
      ) do
    url_path =
      "/datasets/#{AWS.Util.encode_uri(dataset_id)}/dataviewsv2/#{AWS.Util.encode_uri(data_view_id)}/external-access-details"

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
  Retrieves the details of a specific permission group.
  """
  @spec get_permission_group(map(), String.t(), list()) ::
          {:ok, get_permission_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_permission_group_errors()}
  def get_permission_group(%Client{} = client, permission_group_id, options \\ []) do
    url_path = "/permission-group/#{AWS.Util.encode_uri(permission_group_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Request programmatic credentials to use with FinSpace SDK.

  For more information, see [Step 2. Access credentials programmatically using IAM access key id and secret access
  key](https://docs.aws.amazon.com/finspace/latest/data-api/fs-using-the-finspace-api.html#accessing-credentials).
  """
  @spec get_programmatic_access_credentials(map(), String.t() | nil, String.t(), list()) ::
          {:ok, get_programmatic_access_credentials_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_programmatic_access_credentials_errors()}
  def get_programmatic_access_credentials(
        %Client{} = client,
        duration_in_minutes \\ nil,
        environment_id,
        options \\ []
      ) do
    url_path = "/credentials/programmatic"
    headers = []
    query_params = []

    query_params =
      if !is_nil(environment_id) do
        [{"environmentId", environment_id} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(duration_in_minutes) do
        [{"durationInMinutes", duration_in_minutes} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Retrieves details for a specific user.
  """
  @spec get_user(map(), String.t(), list()) ::
          {:ok, get_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_user_errors()}
  def get_user(%Client{} = client, user_id, options \\ []) do
    url_path = "/user/#{AWS.Util.encode_uri(user_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  A temporary Amazon S3 location, where you can copy your files from a source
  location to stage or use
  as a scratch space in FinSpace notebook.
  """
  @spec get_working_location(map(), get_working_location_request(), list()) ::
          {:ok, get_working_location_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, get_working_location_errors()}
  def get_working_location(%Client{} = client, input, options \\ []) do
    url_path = "/workingLocationV1"
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
  Lists the FinSpace Changesets for a Dataset.
  """
  @spec list_changesets(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_changesets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_changesets_errors()}
  def list_changesets(
        %Client{} = client,
        dataset_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_id)}/changesetsv2"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all available Dataviews for a Dataset.
  """
  @spec list_data_views(map(), String.t(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_data_views_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_data_views_errors()}
  def list_data_views(
        %Client{} = client,
        dataset_id,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/datasets/#{AWS.Util.encode_uri(dataset_id)}/dataviewsv2"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all of the active Datasets that a user has access to.
  """
  @spec list_datasets(map(), String.t() | nil, String.t() | nil, list()) ::
          {:ok, list_datasets_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_datasets_errors()}
  def list_datasets(%Client{} = client, max_results \\ nil, next_token \\ nil, options \\ []) do
    url_path = "/datasetsv2"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all available permission groups in FinSpace.
  """
  @spec list_permission_groups(map(), String.t(), String.t() | nil, list()) ::
          {:ok, list_permission_groups_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_permission_groups_errors()}
  def list_permission_groups(%Client{} = client, max_results, next_token \\ nil, options \\ []) do
    url_path = "/permission-group"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all the permission groups that are associated with a specific user.
  """
  @spec list_permission_groups_by_user(map(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, list_permission_groups_by_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_permission_groups_by_user_errors()}
  def list_permission_groups_by_user(
        %Client{} = client,
        user_id,
        max_results,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/user/#{AWS.Util.encode_uri(user_id)}/permission-groups"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists all available users in FinSpace.
  """
  @spec list_users(map(), String.t(), String.t() | nil, list()) ::
          {:ok, list_users_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_users_errors()}
  def list_users(%Client{} = client, max_results, next_token \\ nil, options \\ []) do
    url_path = "/user"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Lists details of all the users in a specific permission group.
  """
  @spec list_users_by_permission_group(map(), String.t(), String.t(), String.t() | nil, list()) ::
          {:ok, list_users_by_permission_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, list_users_by_permission_group_errors()}
  def list_users_by_permission_group(
        %Client{} = client,
        permission_group_id,
        max_results,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/permission-group/#{AWS.Util.encode_uri(permission_group_id)}/users"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    meta = metadata()

    Request.request_rest(client, meta, :get, url_path, query_params, headers, nil, options, 200)
  end

  @doc """
  Resets the password for a specified user ID and generates a temporary one.

  Only a superuser can reset password for other users. Resetting the password
  immediately invalidates the previous password associated with the user.
  """
  @spec reset_user_password(map(), String.t(), reset_user_password_request(), list()) ::
          {:ok, reset_user_password_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, reset_user_password_errors()}
  def reset_user_password(%Client{} = client, user_id, input, options \\ []) do
    url_path = "/user/#{AWS.Util.encode_uri(user_id)}/password"
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
  Updates a FinSpace Changeset.
  """
  @spec update_changeset(map(), String.t(), String.t(), update_changeset_request(), list()) ::
          {:ok, update_changeset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_changeset_errors()}
  def update_changeset(%Client{} = client, changeset_id, dataset_id, input, options \\ []) do
    url_path =
      "/datasets/#{AWS.Util.encode_uri(dataset_id)}/changesetsv2/#{AWS.Util.encode_uri(changeset_id)}"

    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Updates a FinSpace Dataset.
  """
  @spec update_dataset(map(), String.t(), update_dataset_request(), list()) ::
          {:ok, update_dataset_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_dataset_errors()}
  def update_dataset(%Client{} = client, dataset_id, input, options \\ []) do
    url_path = "/datasetsv2/#{AWS.Util.encode_uri(dataset_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Modifies the details of a permission group.

  You cannot modify a `permissionGroupID`.
  """
  @spec update_permission_group(map(), String.t(), update_permission_group_request(), list()) ::
          {:ok, update_permission_group_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_permission_group_errors()}
  def update_permission_group(%Client{} = client, permission_group_id, input, options \\ []) do
    url_path = "/permission-group/#{AWS.Util.encode_uri(permission_group_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end

  @doc """
  Modifies the details of the specified user.

  You cannot update the `userId` for a user.
  """
  @spec update_user(map(), String.t(), update_user_request(), list()) ::
          {:ok, update_user_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, update_user_errors()}
  def update_user(%Client{} = client, user_id, input, options \\ []) do
    url_path = "/user/#{AWS.Util.encode_uri(user_id)}"
    headers = []
    query_params = []

    meta = metadata()

    Request.request_rest(client, meta, :put, url_path, query_params, headers, input, options, 200)
  end
end
