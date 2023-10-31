# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.RedshiftServerless do
  @moduledoc """
  This is an interface reference for Amazon Redshift Serverless.

  It contains documentation for one of the programming or command line interfaces
  you can use to manage Amazon Redshift Serverless.

  Amazon Redshift Serverless automatically provisions data warehouse capacity and
  intelligently scales the underlying resources based on workload demands. Amazon
  Redshift Serverless adjusts capacity in seconds to deliver consistently high
  performance and simplified operations for even the most demanding and volatile
  workloads. Amazon Redshift Serverless lets you focus on using your data to
  acquire new insights for your business and customers.

  To learn more about Amazon Redshift Serverless, see [What is Amazon Redshift Serverless](https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-whatis.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2021-04-21",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "redshift-serverless",
      global?: false,
      protocol: "json",
      service_id: "Redshift Serverless",
      signature_version: "v4",
      signing_name: "redshift-serverless",
      target_prefix: "RedshiftServerless"
    }
  end

  @doc """
  Converts a recovery point to a snapshot.

  For more information about recovery points and snapshots, see [Working with snapshots and recovery
  points](https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-snapshots-recovery.html).
  """
  def convert_recovery_point_to_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ConvertRecoveryPointToSnapshot", input, options)
  end

  @doc """
  Creates a custom domain association for Amazon Redshift Serverless.
  """
  def create_custom_domain_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateCustomDomainAssociation", input, options)
  end

  @doc """
  Creates an Amazon Redshift Serverless managed VPC endpoint.
  """
  def create_endpoint_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateEndpointAccess", input, options)
  end

  @doc """
  Creates a namespace in Amazon Redshift Serverless.
  """
  def create_namespace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateNamespace", input, options)
  end

  @doc """
  Creates a snapshot of all databases in a namespace.

  For more information about snapshots, see [ Working with snapshots and recovery points](https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-snapshots-recovery.html).
  """
  def create_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateSnapshot", input, options)
  end

  @doc """
  Creates a usage limit for a specified Amazon Redshift Serverless usage type.

  The usage limit is identified by the returned usage limit identifier.
  """
  def create_usage_limit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateUsageLimit", input, options)
  end

  @doc """
  Creates an workgroup in Amazon Redshift Serverless.
  """
  def create_workgroup(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateWorkgroup", input, options)
  end

  @doc """
  Deletes a custom domain association for Amazon Redshift Serverless.
  """
  def delete_custom_domain_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteCustomDomainAssociation", input, options)
  end

  @doc """
  Deletes an Amazon Redshift Serverless managed VPC endpoint.
  """
  def delete_endpoint_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteEndpointAccess", input, options)
  end

  @doc """
  Deletes a namespace from Amazon Redshift Serverless.

  Before you delete the namespace, you can create a final snapshot that has all of
  the data within the namespace.
  """
  def delete_namespace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteNamespace", input, options)
  end

  @doc """
  Deletes the specified resource policy.
  """
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteResourcePolicy", input, options)
  end

  @doc """
  Deletes a snapshot from Amazon Redshift Serverless.
  """
  def delete_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteSnapshot", input, options)
  end

  @doc """
  Deletes a usage limit from Amazon Redshift Serverless.
  """
  def delete_usage_limit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteUsageLimit", input, options)
  end

  @doc """
  Deletes a workgroup.
  """
  def delete_workgroup(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteWorkgroup", input, options)
  end

  @doc """
  Returns a database user name and temporary password with temporary authorization
  to log in to Amazon Redshift Serverless.

  By default, the temporary credentials expire in 900 seconds. You can optionally
  specify a duration between 900 seconds (15 minutes) and 3600 seconds (60
  minutes).

  ` The Identity and Access Management (IAM) user or role that runs GetCredentials
  must have an IAM policy attached that allows access to all necessary actions and
  resources.

  If the `DbName` parameter is specified, the IAM policy must allow access to the
  resource dbname for the specified database name.

  `
  """
  def get_credentials(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCredentials", input, options)
  end

  @doc """
  Gets information about a specific custom domain association.
  """
  def get_custom_domain_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetCustomDomainAssociation", input, options)
  end

  @doc """
  Returns information, such as the name, about a VPC endpoint.
  """
  def get_endpoint_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetEndpointAccess", input, options)
  end

  @doc """
  Returns information about a namespace in Amazon Redshift Serverless.
  """
  def get_namespace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetNamespace", input, options)
  end

  @doc """
  Returns information about a recovery point.
  """
  def get_recovery_point(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetRecoveryPoint", input, options)
  end

  @doc """
  Returns a resource policy.
  """
  def get_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetResourcePolicy", input, options)
  end

  @doc """
  Returns information about a specific snapshot.
  """
  def get_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetSnapshot", input, options)
  end

  @doc """
  Returns information about a `TableRestoreStatus` object.
  """
  def get_table_restore_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTableRestoreStatus", input, options)
  end

  @doc """
  Returns information about a usage limit.
  """
  def get_usage_limit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetUsageLimit", input, options)
  end

  @doc """
  Returns information about a specific workgroup.
  """
  def get_workgroup(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetWorkgroup", input, options)
  end

  @doc """
  Lists custom domain associations for Amazon Redshift Serverless.
  """
  def list_custom_domain_associations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListCustomDomainAssociations", input, options)
  end

  @doc """
  Returns an array of `EndpointAccess` objects and relevant information.
  """
  def list_endpoint_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListEndpointAccess", input, options)
  end

  @doc """
  Returns information about a list of specified namespaces.
  """
  def list_namespaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListNamespaces", input, options)
  end

  @doc """
  Returns an array of recovery points.
  """
  def list_recovery_points(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListRecoveryPoints", input, options)
  end

  @doc """
  Returns a list of snapshots.
  """
  def list_snapshots(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListSnapshots", input, options)
  end

  @doc """
  Returns information about an array of `TableRestoreStatus` objects.
  """
  def list_table_restore_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTableRestoreStatus", input, options)
  end

  @doc """
  Lists the tags assigned to a resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Lists all usage limits within Amazon Redshift Serverless.
  """
  def list_usage_limits(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListUsageLimits", input, options)
  end

  @doc """
  Returns information about a list of specified workgroups.
  """
  def list_workgroups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListWorkgroups", input, options)
  end

  @doc """
  Creates or updates a resource policy.

  Currently, you can use policies to share snapshots across Amazon Web Services
  accounts.
  """
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "PutResourcePolicy", input, options)
  end

  @doc """
  Restore the data from a recovery point.
  """
  def restore_from_recovery_point(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreFromRecoveryPoint", input, options)
  end

  @doc """
  Restores a namespace from a snapshot.
  """
  def restore_from_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreFromSnapshot", input, options)
  end

  @doc """
  Restores a table from a snapshot to your Amazon Redshift Serverless instance.

  You can't use this operation to restore tables with [interleaved sort keys](https://docs.aws.amazon.com/redshift/latest/dg/t_Sorting_data.html#t_Sorting_data-interleaved).
  """
  def restore_table_from_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreTableFromSnapshot", input, options)
  end

  @doc """
  Assigns one or more tags to a resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes a tag or set of tags from a resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates an Amazon Redshift Serverless certificate associated with a custom
  domain.
  """
  def update_custom_domain_association(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateCustomDomainAssociation", input, options)
  end

  @doc """
  Updates an Amazon Redshift Serverless managed endpoint.
  """
  def update_endpoint_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateEndpointAccess", input, options)
  end

  @doc """
  Updates a namespace with the specified settings.

  Unless required, you can't update multiple parameters in one request. For
  example, you must specify both `adminUsername` and `adminUserPassword` to update
  either field, but you can't update both `kmsKeyId` and `logExports` in a single
  request.
  """
  def update_namespace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateNamespace", input, options)
  end

  @doc """
  Updates a snapshot.
  """
  def update_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateSnapshot", input, options)
  end

  @doc """
  Update a usage limit in Amazon Redshift Serverless.

  You can't update the usage type or period of a usage limit.
  """
  def update_usage_limit(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateUsageLimit", input, options)
  end

  @doc """
  Updates a workgroup with the specified configuration settings.

  You can't update multiple parameters in one request. For example, you can update
  `baseCapacity` or `port` in a single request, but you can't update both in the
  same request.
  """
  def update_workgroup(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateWorkgroup", input, options)
  end
end
