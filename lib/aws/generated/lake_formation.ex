# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.LakeFormation do
  @moduledoc """
  AWS Lake Formation

  Defines the public endpoint for the AWS Lake Formation service.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2017-03-31",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "lakeformation",
      global?: false,
      protocol: "json",
      service_id: "LakeFormation",
      signature_version: "v4",
      signing_name: "lakeformation",
      target_prefix: "AWSLakeFormation"
    }
  end

  @doc """
  Attaches one or more tags to an existing resource.
  """
  def add_l_f_tags_to_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddLFTagsToResource", input, options)
  end

  @doc """
  Batch operation to grant permissions to the principal.
  """
  def batch_grant_permissions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchGrantPermissions", input, options)
  end

  @doc """
  Batch operation to revoke permissions from the principal.
  """
  def batch_revoke_permissions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchRevokePermissions", input, options)
  end

  @doc """
  Creates a tag with the specified name and values.
  """
  def create_l_f_tag(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateLFTag", input, options)
  end

  @doc """
  Deletes the specified tag key name.

  If the attribute key does not exist or the tag does not exist, then the
  operation will not do anything. If the attribute key exists, then the operation
  checks if any resources are tagged with this attribute key, if yes, the API
  throws a 400 Exception with the message "Delete not allowed" as the tag key is
  still attached with resources. You can consider untagging resources with this
  tag key.
  """
  def delete_l_f_tag(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteLFTag", input, options)
  end

  @doc """
  Deregisters the resource as managed by the Data Catalog.

  When you deregister a path, Lake Formation removes the path from the inline
  policy attached to your service-linked role.
  """
  def deregister_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeregisterResource", input, options)
  end

  @doc """
  Retrieves the current data access role for the given resource registered in AWS
  Lake Formation.
  """
  def describe_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeResource", input, options)
  end

  @doc """
  Retrieves the list of the data lake administrators of a Lake Formation-managed
  data lake.
  """
  def get_data_lake_settings(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetDataLakeSettings", input, options)
  end

  @doc """
  Returns the Lake Formation permissions for a specified table or database
  resource located at a path in Amazon S3.

  `GetEffectivePermissionsForPath` will not return databases and tables if the
  catalog is encrypted.
  """
  def get_effective_permissions_for_path(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetEffectivePermissionsForPath", input, options)
  end

  @doc """
  Returns a tag definition.
  """
  def get_l_f_tag(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetLFTag", input, options)
  end

  @doc """
  Returns the tags applied to a resource.
  """
  def get_resource_l_f_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetResourceLFTags", input, options)
  end

  @doc """
  Grants permissions to the principal to access metadata in the Data Catalog and
  data organized in underlying data storage such as Amazon S3.

  For information about permissions, see [Security and Access Control to Metadata and
  Data](https://docs-aws.amazon.com/lake-formation/latest/dg/security-data-access.html).
  """
  def grant_permissions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GrantPermissions", input, options)
  end

  @doc """
  Lists tags that the requester has permission to view.
  """
  def list_l_f_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListLFTags", input, options)
  end

  @doc """
  Returns a list of the principal permissions on the resource, filtered by the
  permissions of the caller.

  For example, if you are granted an ALTER permission, you are able to see only
  the principal permissions for ALTER.

  This operation returns only those permissions that have been explicitly granted.

  For information about permissions, see [Security and Access Control to Metadata and
  Data](https://docs-aws.amazon.com/lake-formation/latest/dg/security-data-access.html).
  """
  def list_permissions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListPermissions", input, options)
  end

  @doc """
  Lists the resources registered to be managed by the Data Catalog.
  """
  def list_resources(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListResources", input, options)
  end

  @doc """
  Sets the list of data lake administrators who have admin privileges on all
  resources managed by Lake Formation.

  For more information on admin privileges, see [Granting Lake Formation Permissions](https://docs.aws.amazon.com/lake-formation/latest/dg/lake-formation-permissions.html).

  This API replaces the current list of data lake admins with the new list being
  passed. To add an admin, fetch the current list and add the new admin to that
  list and pass that list in this API.
  """
  def put_data_lake_settings(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutDataLakeSettings", input, options)
  end

  @doc """
  Registers the resource as managed by the Data Catalog.

  To add or update data, Lake Formation needs read/write access to the chosen
  Amazon S3 path. Choose a role that you know has permission to do this, or choose
  the AWSServiceRoleForLakeFormationDataAccess service-linked role. When you
  register the first Amazon S3 path, the service-linked role and a new inline
  policy are created on your behalf. Lake Formation adds the first path to the
  inline policy and attaches it to the service-linked role. When you register
  subsequent paths, Lake Formation adds the path to the existing policy.

  The following request registers a new location and gives AWS Lake Formation
  permission to use the service-linked role to access that location.

  `ResourceArn = arn:aws:s3:::my-bucket UseServiceLinkedRole = true`

  If `UseServiceLinkedRole` is not set to true, you must provide or set the
  `RoleArn`:

  `arn:aws:iam::12345:role/my-data-access-role`
  """
  def register_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RegisterResource", input, options)
  end

  @doc """
  Removes a tag from the resource.

  Only database, table, or tableWithColumns resource are allowed. To tag columns,
  use the column inclusion list in `tableWithColumns` to specify column input.
  """
  def remove_l_f_tags_from_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RemoveLFTagsFromResource", input, options)
  end

  @doc """
  Revokes permissions to the principal to access metadata in the Data Catalog and
  data organized in underlying data storage such as Amazon S3.
  """
  def revoke_permissions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RevokePermissions", input, options)
  end

  @doc """
  This operation allows a search on `DATABASE` resources by `TagCondition`.

  This operation is used by admins who want to grant user permissions on certain
  `TagConditions`. Before making a grant, the admin can use
  `SearchDatabasesByTags` to find all resources where the given `TagConditions`
  are valid to verify whether the returned resources can be shared.
  """
  def search_databases_by_l_f_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SearchDatabasesByLFTags", input, options)
  end

  @doc """
  This operation allows a search on `TABLE` resources by `LFTag`s.

  This will be used by admins who want to grant user permissions on certain
  LFTags. Before making a grant, the admin can use `SearchTablesByLFTags` to find
  all resources where the given `LFTag`s are valid to verify whether the returned
  resources can be shared.
  """
  def search_tables_by_l_f_tags(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "SearchTablesByLFTags", input, options)
  end

  @doc """
  Updates the list of possible values for the specified tag key.

  If the tag does not exist, the operation throws an EntityNotFoundException. The
  values in the delete key values will be deleted from list of possible values. If
  any value in the delete key values is attached to a resource, then API errors
  out with a 400 Exception - "Update not allowed". Untag the attribute before
  deleting the tag key's value.
  """
  def update_l_f_tag(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateLFTag", input, options)
  end

  @doc """
  Updates the data access role used for vending access to the given (registered)
  resource in AWS Lake Formation.
  """
  def update_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateResource", input, options)
  end
end
