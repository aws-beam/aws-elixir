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
  Grants permissions to the principal to access metadata in the Data Catalog and
  data organized in underlying data storage such as Amazon S3.

  For information about permissions, see [Security and Access Control to Metadata and
  Data](https://docs-aws.amazon.com/lake-formation/latest/dg/security-data-access.html).
  """
  def grant_permissions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GrantPermissions", input, options)
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
  Revokes permissions to the principal to access metadata in the Data Catalog and
  data organized in underlying data storage such as Amazon S3.
  """
  def revoke_permissions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RevokePermissions", input, options)
  end

  @doc """
  Updates the data access role used for vending access to the given (registered)
  resource in AWS Lake Formation.
  """
  def update_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateResource", input, options)
  end
end
