# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.KinesisAnalyticsV2 do
  @moduledoc """

  Amazon Managed Service for Apache Flink was previously known as Amazon Kinesis
  Data Analytics for Apache Flink.

  Amazon Managed Service for Apache Flink is a fully managed service that you can
  use to process and analyze streaming data using Java, Python, SQL, or Scala. The
  service
  enables you to quickly author and run Java, SQL, or Scala code against streaming
  sources to perform time
  series analytics, feed real-time dashboards, and create real-time metrics.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2018-05-23",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "kinesisanalytics",
      global?: false,
      protocol: "json",
      service_id: "Kinesis Analytics V2",
      signature_version: "v4",
      signing_name: "kinesisanalytics",
      target_prefix: "KinesisAnalytics_20180523"
    }
  end

  @doc """
  Adds an Amazon CloudWatch log stream to monitor application configuration
  errors.
  """
  def add_application_cloud_watch_logging_option(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddApplicationCloudWatchLoggingOption", input, options)
  end

  @doc """

  Adds a streaming source to your SQL-based Kinesis Data Analytics application.

  You can add a streaming source when you create an application, or you can use
  this
  operation to add a streaming source after you create an application. For more
  information, see
  `CreateApplication`.

  Any configuration update, including adding a streaming source using this
  operation,
  results in a new version of the application. You can use the
  `DescribeApplication` operation
  to find the current application version.
  """
  def add_application_input(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddApplicationInput", input, options)
  end

  @doc """
  Adds an `InputProcessingConfiguration` to a SQL-based Kinesis Data Analytics
  application.

  An input processor pre-processes records
  on the input stream before the
  application's SQL code executes. Currently, the only input processor available
  is [Amazon Lambda](https://docs.aws.amazon.com/lambda/).
  """
  def add_application_input_processing_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "AddApplicationInputProcessingConfiguration",
      input,
      options
    )
  end

  @doc """
  Adds an external destination to your SQL-based Kinesis Data Analytics
  application.

  If you want Kinesis Data Analytics to deliver data from an in-application stream
  within
  your application to an external destination (such as an Kinesis data stream, a
  Kinesis Data
  Firehose delivery stream, or an Amazon Lambda function), you add the relevant
  configuration to
  your application using this operation. You can configure one or more outputs for
  your
  application. Each output configuration maps an in-application stream and an
  external
  destination.

  You can use one of the output configurations to deliver data from your
  in-application error stream to an external destination so that you can analyze
  the
  errors.

  Any configuration update, including adding a streaming source using this
  operation, results in a new version of the application. You can use the
  `DescribeApplication` operation to find the current application
  version.
  """
  def add_application_output(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddApplicationOutput", input, options)
  end

  @doc """
  Adds a reference data source to an existing SQL-based Kinesis Data Analytics
  application.

  Kinesis Data Analytics reads reference data (that is, an Amazon S3 object) and
  creates an
  in-application table within your application. In the request, you provide the
  source (S3
  bucket name and object key name), name of the in-application table to create,
  and the
  necessary mapping information that describes how data in an Amazon S3 object
  maps to columns
  in the resulting in-application table.
  """
  def add_application_reference_data_source(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddApplicationReferenceDataSource", input, options)
  end

  @doc """
  Adds a Virtual Private Cloud (VPC) configuration to the application.

  Applications can use VPCs to store
  and access resources securely.

  Note the following about VPC configurations for Managed Service for Apache Flink
  applications:

    *
  VPC configurations are not supported for SQL applications.

    *
  When a VPC is added to a Managed Service for Apache Flink application, the
  application can no longer be accessed from the
  Internet directly. To enable Internet access to the application, add an Internet
  gateway to your VPC.
  """
  def add_application_vpc_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AddApplicationVpcConfiguration", input, options)
  end

  @doc """
  Creates a Managed Service for Apache Flink application.

  For information about creating a
  Managed Service for Apache Flink application, see [Creating an Application](https://docs.aws.amazon.com/kinesisanalytics/latest/java/getting-started.html).
  """
  def create_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateApplication", input, options)
  end

  @doc """
  Creates and returns a URL that you can use to connect to
  an application's extension.

  The IAM role or user used to call this API defines the permissions to access the
  extension. After the presigned URL is created, no additional permission is
  required to access
  this URL. IAM authorization policies for this API are also enforced for every
  HTTP request
  that attempts to connect to the extension.

  You control the amount of time that the URL will be valid using the
  `SessionExpirationDurationInSeconds`
  parameter. If you do not provide this parameter, the returned URL is valid for
  twelve hours.

  The URL that you get from a call to CreateApplicationPresignedUrl must be used
  within 3 minutes
  to be valid.
  If you first try to use the URL after the 3-minute limit expires, the service
  returns an HTTP 403 Forbidden error.
  """
  def create_application_presigned_url(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateApplicationPresignedUrl", input, options)
  end

  @doc """
  Creates a snapshot of the application's state data.
  """
  def create_application_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateApplicationSnapshot", input, options)
  end

  @doc """
  Deletes the specified application.

  Managed Service for Apache Flink halts application execution and deletes the
  application.
  """
  def delete_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApplication", input, options)
  end

  @doc """
  Deletes an Amazon CloudWatch log stream from an SQL-based Kinesis Data Analytics
  application.
  """
  def delete_application_cloud_watch_logging_option(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApplicationCloudWatchLoggingOption", input, options)
  end

  @doc """
  Deletes an `InputProcessingConfiguration` from an input.
  """
  def delete_application_input_processing_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "DeleteApplicationInputProcessingConfiguration",
      input,
      options
    )
  end

  @doc """
  Deletes the output destination configuration from your SQL-based Kinesis Data
  Analytics application's configuration.

  Kinesis Data Analytics will no longer write data from
  the corresponding in-application stream to the external output destination.
  """
  def delete_application_output(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApplicationOutput", input, options)
  end

  @doc """
  Deletes a reference data source configuration from the specified SQL-based
  Kinesis Data Analytics application's configuration.

  If the application is running, Kinesis Data Analytics immediately removes the
  in-application table
  that you created using the `AddApplicationReferenceDataSource` operation.
  """
  def delete_application_reference_data_source(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApplicationReferenceDataSource", input, options)
  end

  @doc """
  Deletes a snapshot of application state.
  """
  def delete_application_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApplicationSnapshot", input, options)
  end

  @doc """
  Removes a VPC configuration from a Managed Service for Apache Flink application.
  """
  def delete_application_vpc_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApplicationVpcConfiguration", input, options)
  end

  @doc """
  Returns information about a specific Managed Service for Apache Flink
  application.

  If you want to retrieve a list of all applications in your account,
  use the `ListApplications` operation.
  """
  def describe_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeApplication", input, options)
  end

  @doc """
  Returns information about a snapshot of application state data.
  """
  def describe_application_snapshot(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeApplicationSnapshot", input, options)
  end

  @doc """
  Provides a detailed description of a specified version of the application.

  To see a list of all the versions of an application, invoke the
  `ListApplicationVersions` operation.

  This operation is supported only for Managed Service for Apache Flink.
  """
  def describe_application_version(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeApplicationVersion", input, options)
  end

  @doc """
  Infers a schema for a SQL-based Kinesis Data Analytics application by evaluating
  sample records on the specified streaming source (Kinesis data stream or Kinesis
  Data Firehose
  delivery stream) or Amazon S3 object.

  In the response, the operation returns the inferred
  schema and also the sample records that the operation used to infer the schema.

  You can use the inferred schema when configuring a streaming source for your
  application.
  When you create an application using the Kinesis Data Analytics console, the
  console uses this
  operation to infer a schema and show it in the console user interface.
  """
  def discover_input_schema(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DiscoverInputSchema", input, options)
  end

  @doc """
  Lists information about the current application snapshots.
  """
  def list_application_snapshots(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListApplicationSnapshots", input, options)
  end

  @doc """
  Lists all the versions for the specified application, including versions that
  were rolled back.

  The response also includes a summary of the configuration
  associated with each version.

  To get the complete description of a specific application version, invoke the
  `DescribeApplicationVersion` operation.

  This operation is supported only for Managed Service for Apache Flink.
  """
  def list_application_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListApplicationVersions", input, options)
  end

  @doc """
  Returns a list of Managed Service for Apache Flink applications in your account.

  For each
  application, the response includes the application name, Amazon Resource Name
  (ARN), and
  status.

  If you want detailed information about a specific application, use
  `DescribeApplication`.
  """
  def list_applications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListApplications", input, options)
  end

  @doc """
  Retrieves the list of key-value tags assigned to the application.

  For more information, see
  [Using Tagging](https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html).
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTagsForResource", input, options)
  end

  @doc """
  Reverts the application to the previous running version.

  You can
  roll back an application if you suspect it is stuck in a transient status.

  You can roll back an application only if it is in the `UPDATING`
  or `AUTOSCALING` status.

  When you rollback an application, it loads state data from the last successful
  snapshot.
  If the application has no snapshots, Managed Service for Apache Flink rejects
  the rollback request.

  This action is not supported for Managed Service for Apache Flink for SQL
  applications.
  """
  def rollback_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RollbackApplication", input, options)
  end

  @doc """
  Starts the specified Managed Service for Apache Flink application.

  After creating an application, you must exclusively call this operation to
  start your application.
  """
  def start_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartApplication", input, options)
  end

  @doc """
  Stops the application from processing data.

  You can stop
  an application only if it is in the running status, unless you set the `Force`
  parameter to `true`.

  You can use the `DescribeApplication` operation to find the application status.

  Managed Service for Apache Flink takes a snapshot when the application is
  stopped, unless `Force` is set
  to `true`.
  """
  def stop_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopApplication", input, options)
  end

  @doc """
  Adds one or more key-value tags to a Managed Service for Apache Flink
  application.

  Note that the maximum number of application
  tags includes system tags. The maximum number of user-defined application tags
  is 50.
  For more information, see [Using Tagging](https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html).
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Removes one or more tags from a Managed Service for Apache Flink application.

  For more information, see
  [Using Tagging](https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html).
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates an existing Managed Service for Apache Flink application.

  Using this operation, you
  can update application code, input configuration, and output configuration.

  Managed Service for Apache Flink updates the `ApplicationVersionId` each time
  you update
  your application.
  """
  def update_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateApplication", input, options)
  end

  @doc """
  Updates the maintenance configuration of the Managed Service for Apache Flink
  application.

  You can invoke this operation on an application that is in one of the two
  following
  states: `READY` or `RUNNING`. If you invoke it when the application is
  in a state other than these two states, it throws a `ResourceInUseException`.
  The
  service makes use of the updated configuration the next time it schedules
  maintenance for the
  application. If you invoke this operation after the service schedules
  maintenance, the service
  will apply the configuration update the next time it schedules maintenance for
  the
  application. This means that you might not see the maintenance configuration
  update applied to
  the maintenance process that follows a successful invocation of this operation,
  but to the
  following maintenance process instead.

  To see the current maintenance configuration of your application, invoke the
  `DescribeApplication` operation.

  For information about application maintenance, see [Managed Service for Apache Flink for Apache Flink
  Maintenance](https://docs.aws.amazon.com/kinesisanalytics/latest/java/maintenance.html).

  This operation is supported only for Managed Service for Apache Flink.
  """
  def update_application_maintenance_configuration(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(
      client,
      meta,
      "UpdateApplicationMaintenanceConfiguration",
      input,
      options
    )
  end
end
