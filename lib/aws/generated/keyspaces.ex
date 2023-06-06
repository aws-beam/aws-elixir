# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Keyspaces do
  @moduledoc """
  Amazon Keyspaces (for Apache Cassandra) is a scalable, highly available, and
  managed Apache Cassandra-compatible database service.

  Amazon Keyspaces makes it easy to migrate, run, and scale Cassandra workloads in
  the Amazon Web Services Cloud. With just a few clicks on the Amazon Web Services
  Management Console or a few lines of code, you can create keyspaces and tables
  in Amazon Keyspaces, without deploying any infrastructure or installing
  software.

  In addition to supporting Cassandra Query Language (CQL) requests via
  open-source Cassandra drivers, Amazon Keyspaces supports data definition
  language (DDL) operations to manage keyspaces and tables using the Amazon Web
  Services SDK and CLI, as well as infrastructure as code (IaC) services and tools
  such as CloudFormation and Terraform. This API reference describes the supported
  DDL operations in detail.

  For the list of all supported CQL APIs, see [Supported Cassandra APIs, operations, and data types in Amazon
  Keyspaces](https://docs.aws.amazon.com/keyspaces/latest/devguide/cassandra-apis.html)
  in the *Amazon Keyspaces Developer Guide*.

  To learn how Amazon Keyspaces API actions are recorded with CloudTrail, see
  [Amazon Keyspaces information in CloudTrail](https://docs.aws.amazon.com/keyspaces/latest/devguide/logging-using-cloudtrail.html#service-name-info-in-cloudtrail)
  in the *Amazon Keyspaces Developer Guide*.

  For more information about Amazon Web Services APIs, for example how to
  implement retry logic or how to sign Amazon Web Services API requests, see
  [Amazon Web Services APIs](https://docs.aws.amazon.com/general/latest/gr/aws-apis.html) in the
  *General Reference*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2022-02-10",
      content_type: "application/x-amz-json-1.0",
      credential_scope: nil,
      endpoint_prefix: "cassandra",
      global?: false,
      protocol: "json",
      service_id: "Keyspaces",
      signature_version: "v4",
      signing_name: "cassandra",
      target_prefix: "KeyspacesService"
    }
  end

  @doc """
  The `CreateKeyspace` operation adds a new keyspace to your account.

  In an Amazon Web Services account, keyspace names must be unique within each
  Region.

  `CreateKeyspace` is an asynchronous operation. You can monitor the creation
  status of the new keyspace by using the `GetKeyspace` operation.

  For more information, see [Creating keyspaces](https://docs.aws.amazon.com/keyspaces/latest/devguide/working-with-keyspaces.html#keyspaces-create)
  in the *Amazon Keyspaces Developer Guide*.
  """
  def create_keyspace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateKeyspace", input, options)
  end

  @doc """
  The `CreateTable` operation adds a new table to the specified keyspace.

  Within a keyspace, table names must be unique.

  `CreateTable` is an asynchronous operation. When the request is received, the
  status of the table is set to `CREATING`. You can monitor the creation status of
  the new table by using the `GetTable` operation, which returns the current
  `status` of the table. You can start using a table when the status is `ACTIVE`.

  For more information, see [Creating tables](https://docs.aws.amazon.com/keyspaces/latest/devguide/working-with-tables.html#tables-create)
  in the *Amazon Keyspaces Developer Guide*.
  """
  def create_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTable", input, options)
  end

  @doc """
  The `DeleteKeyspace` operation deletes a keyspace and all of its tables.
  """
  def delete_keyspace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteKeyspace", input, options)
  end

  @doc """
  The `DeleteTable` operation deletes a table and all of its data.

  After a `DeleteTable` request is received, the specified table is in the
  `DELETING` state until Amazon Keyspaces completes the deletion. If the table is
  in the `ACTIVE` state, you can delete it. If a table is either in the `CREATING`
  or `UPDATING` states, then Amazon Keyspaces returns a `ResourceInUseException`.
  If the specified table does not exist, Amazon Keyspaces returns a
  `ResourceNotFoundException`. If the table is already in the `DELETING` state, no
  error is returned.
  """
  def delete_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTable", input, options)
  end

  @doc """
  Returns the name and the Amazon Resource Name (ARN) of the specified table.
  """
  def get_keyspace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetKeyspace", input, options)
  end

  @doc """
  Returns information about the table, including the table's name and current
  status, the keyspace name, configuration settings, and metadata.

  To read table metadata using `GetTable`, `Select` action permissions for the
  table and system tables are required to complete the operation.
  """
  def get_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetTable", input, options)
  end

  @doc """
  Returns a list of keyspaces.
  """
  def list_keyspaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListKeyspaces", input, options)
  end

  @doc """
  Returns a list of tables for a specified keyspace.
  """
  def list_tables(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTables", input, options)
  end

  @doc """
  Returns a list of all tags associated with the specified Amazon Keyspaces
  resource.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Restores the specified table to the specified point in time within the
  `earliest_restorable_timestamp` and the current time.

  For more information about restore points, see [ Time window for PITR continuous backups](https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery_HowItWorks.html#howitworks_backup_window)
  in the *Amazon Keyspaces Developer Guide*.

  Any number of users can execute up to 4 concurrent restores (any type of
  restore) in a given account.

  When you restore using point in time recovery, Amazon Keyspaces restores your
  source table's schema and data to the state based on the selected timestamp
  `(day:hour:minute:second)` to a new table. The Time to Live (TTL) settings are
  also restored to the state based on the selected timestamp.

  In addition to the table's schema, data, and TTL settings, `RestoreTable`
  restores the capacity mode, encryption, and point-in-time recovery settings from
  the source table. Unlike the table's schema data and TTL settings, which are
  restored based on the selected timestamp, these settings are always restored
  based on the table's settings as of the current time or when the table was
  deleted.

  You can also overwrite these settings during restore:

    * Read/write capacity mode

    * Provisioned throughput capacity settings

    * Point-in-time (PITR) settings

    * Tags

  For more information, see [PITR restore settings](https://docs.aws.amazon.com/keyspaces/latest/devguide/PointInTimeRecovery_HowItWorks.html#howitworks_backup_settings)
  in the *Amazon Keyspaces Developer Guide*.

  Note that the following settings are not restored, and you must configure them
  manually for the new table:

    * Automatic scaling policies (for tables that use provisioned
  capacity mode)

    * Identity and Access Management (IAM) policies

    * Amazon CloudWatch metrics and alarms
  """
  def restore_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreTable", input, options)
  end

  @doc """
  Associates a set of tags with a Amazon Keyspaces resource.

  You can then activate these user-defined tags so that they appear on the Cost
  Management Console for cost allocation tracking. For more information, see
  [Adding tags and labels to Amazon Keyspaces resources](https://docs.aws.amazon.com/keyspaces/latest/devguide/tagging-keyspaces.html)
  in the *Amazon Keyspaces Developer Guide*.

  For IAM policy examples that show how to control access to Amazon Keyspaces
  resources based on tags, see [Amazon Keyspaces resource access based on tags](https://docs.aws.amazon.com/keyspaces/latest/devguide/security_iam_id-based-policy-examples.html#security_iam_id-based-policy-examples-tags)
  in the *Amazon Keyspaces Developer Guide*.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes the association of tags from a Amazon Keyspaces resource.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Adds new columns to the table or updates one of the table's settings, for
  example capacity mode, encryption, point-in-time recovery, or ttl settings.

  Note that you can only update one specific table setting per update operation.
  """
  def update_table(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateTable", input, options)
  end
end
