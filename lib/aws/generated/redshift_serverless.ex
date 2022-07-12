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
    %AWS.ServiceMetadata{
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
    Request.request_post(client, metadata(), "ConvertRecoveryPointToSnapshot", input, options)
  end

  @doc """
  Creates an Amazon Redshift Serverless managed VPC endpoint.
  """
  def create_endpoint_access(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateEndpointAccess", input, options)
  end

  @doc """
  Creates a namespace in Amazon Redshift Serverless.
  """
  def create_namespace(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateNamespace", input, options)
  end

  @doc """
  Creates a snapshot of all databases in a namespace.

  For more information about snapshots, see [ Working with snapshots and recovery points](https://docs.aws.amazon.com/redshift/latest/mgmt/serverless-snapshots-recovery.html).
  """
  def create_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateSnapshot", input, options)
  end

  @doc """
  Creates a usage limit for a specified Amazon Redshift Serverless usage type.

  The usage limit is identified by the returned usage limit identifier.
  """
  def create_usage_limit(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateUsageLimit", input, options)
  end

  @doc """
  Creates an workgroup in Amazon Redshift Serverless.
  """
  def create_workgroup(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateWorkgroup", input, options)
  end

  @doc """
  Deletes an Amazon Redshift Serverless managed VPC endpoint.
  """
  def delete_endpoint_access(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteEndpointAccess", input, options)
  end

  @doc """
  Deletes a namespace from Amazon Redshift Serverless.

  Before you delete the namespace, you can create a final snapshot that has all of
  the data within the namespace.
  """
  def delete_namespace(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteNamespace", input, options)
  end

  @doc """
  Deletes the specified resource policy.
  """
  def delete_resource_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteResourcePolicy", input, options)
  end

  @doc """
  Deletes a snapshot from Amazon Redshift Serverless.
  """
  def delete_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteSnapshot", input, options)
  end

  @doc """
  Deletes a usage limit from Amazon Redshift Serverless.
  """
  def delete_usage_limit(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteUsageLimit", input, options)
  end

  @doc """
  Deletes a workgroup.
  """
  def delete_workgroup(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteWorkgroup", input, options)
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
    Request.request_post(client, metadata(), "GetCredentials", input, options)
  end

  @doc """
  Returns information, such as the name, about a VPC endpoint.
  """
  def get_endpoint_access(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetEndpointAccess", input, options)
  end

  @doc """
  Returns information about a namespace in Amazon Redshift Serverless.
  """
  def get_namespace(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetNamespace", input, options)
  end

  @doc """
  Returns information about a recovery point.
  """
  def get_recovery_point(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetRecoveryPoint", input, options)
  end

  @doc """
  Returns a resource policy.
  """
  def get_resource_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetResourcePolicy", input, options)
  end

  @doc """
  Returns information about a specific snapshot.
  """
  def get_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetSnapshot", input, options)
  end

  @doc """
  Returns information about a usage limit.
  """
  def get_usage_limit(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetUsageLimit", input, options)
  end

  @doc """
  Returns information about a specific workgroup.
  """
  def get_workgroup(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetWorkgroup", input, options)
  end

  @doc """
  Returns an array of `EndpointAccess` objects and relevant information.
  """
  def list_endpoint_access(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListEndpointAccess", input, options)
  end

  @doc """
  Returns information about a list of specified namespaces.
  """
  def list_namespaces(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListNamespaces", input, options)
  end

  @doc """
  Returns an array of recovery points.
  """
  def list_recovery_points(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListRecoveryPoints", input, options)
  end

  @doc """
  Returns a list of snapshots.
  """
  def list_snapshots(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListSnapshots", input, options)
  end

  @doc """
  Lists the tags assigned to a resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Lists all usage limits within Amazon Redshift Serverless.
  """
  def list_usage_limits(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListUsageLimits", input, options)
  end

  @doc """
  Returns information about a list of specified workgroups.
  """
  def list_workgroups(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListWorkgroups", input, options)
  end

  @doc """
  Creates or updates a resource policy.

  Currently, you can use policies to share snapshots across Amazon Web Services
  accounts.
  """
  def put_resource_policy(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutResourcePolicy", input, options)
  end

  @doc """
  Restore the data from a recovery point.
  """
  def restore_from_recovery_point(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RestoreFromRecoveryPoint", input, options)
  end

  @doc """
  Restores a namespace from a snapshot.
  """
  def restore_from_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RestoreFromSnapshot", input, options)
  end

  @doc """
  Assigns one or more tags to a resource.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Removes a tag or set of tags from a resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Updates an Amazon Redshift Serverless managed endpoint.
  """
  def update_endpoint_access(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateEndpointAccess", input, options)
  end

  @doc """
  Updates a namespace with the specified settings.
  """
  def update_namespace(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateNamespace", input, options)
  end

  @doc """
  Updates a snapshot.
  """
  def update_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateSnapshot", input, options)
  end

  @doc """
  Update a usage limit in Amazon Redshift Serverless.

  You can't update the usage type or period of a usage limit.
  """
  def update_usage_limit(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateUsageLimit", input, options)
  end

  @doc """
  Updates a workgroup with the specified configuration settings.
  """
  def update_workgroup(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateWorkgroup", input, options)
  end
end
