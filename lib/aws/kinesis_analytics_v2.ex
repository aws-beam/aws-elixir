# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.KinesisAnalyticsV2 do
  @moduledoc """
  Amazon Kinesis Data Analytics is a fully managed service that you can use
  to process and analyze streaming data using Java, SQL, or Scala. The
  service enables you to quickly author and run Java, SQL, or Scala code
  against streaming sources to perform time series analytics, feed real-time
  dashboards, and create real-time metrics.
  """

  @doc """
  Adds an Amazon CloudWatch log stream to monitor application configuration
  errors.
  """
  def add_application_cloud_watch_logging_option(client, input, options \\ []) do
    request(client, "AddApplicationCloudWatchLoggingOption", input, options)
  end

  @doc """
  Adds a streaming source to your SQL-based Kinesis Data Analytics
  application.

  You can add a streaming source when you create an application, or you can
  use this operation to add a streaming source after you create an
  application. For more information, see `CreateApplication`.

  Any configuration update, including adding a streaming source using this
  operation, results in a new version of the application. You can use the
  `DescribeApplication` operation to find the current application version.
  """
  def add_application_input(client, input, options \\ []) do
    request(client, "AddApplicationInput", input, options)
  end

  @doc """
  Adds an `InputProcessingConfiguration` to a SQL-based Kinesis Data
  Analytics application. An input processor pre-processes records on the
  input stream before the application's SQL code executes. Currently, the
  only input processor available is [AWS
  Lambda](https://docs.aws.amazon.com/lambda/).
  """
  def add_application_input_processing_configuration(client, input, options \\ []) do
    request(client, "AddApplicationInputProcessingConfiguration", input, options)
  end

  @doc """
  Adds an external destination to your SQL-based Kinesis Data Analytics
  application.

  If you want Kinesis Data Analytics to deliver data from an in-application
  stream within your application to an external destination (such as an
  Kinesis data stream, a Kinesis Data Firehose delivery stream, or an AWS
  Lambda function), you add the relevant configuration to your application
  using this operation. You can configure one or more outputs for your
  application. Each output configuration maps an in-application stream and an
  external destination.

  You can use one of the output configurations to deliver data from your
  in-application error stream to an external destination so that you can
  analyze the errors.

  Any configuration update, including adding a streaming source using this
  operation, results in a new version of the application. You can use the
  `DescribeApplication` operation to find the current application version.
  """
  def add_application_output(client, input, options \\ []) do
    request(client, "AddApplicationOutput", input, options)
  end

  @doc """
  Adds a reference data source to an existing SQL-based Kinesis Data
  Analytics application.

  Kinesis Data Analytics reads reference data (that is, an Amazon S3 object)
  and creates an in-application table within your application. In the
  request, you provide the source (S3 bucket name and object key name), name
  of the in-application table to create, and the necessary mapping
  information that describes how data in an Amazon S3 object maps to columns
  in the resulting in-application table.
  """
  def add_application_reference_data_source(client, input, options \\ []) do
    request(client, "AddApplicationReferenceDataSource", input, options)
  end

  @doc """
  Adds a Virtual Private Cloud (VPC) configuration to the application.
  Applications can use VPCs to store and access resources securely.

  Note the following about VPC configurations for Kinesis Data Analytics
  applications:

  <ul> <li> VPC configurations are not supported for SQL applications.

  </li> <li> When a VPC is added to a Kinesis Data Analytics application, the
  application can no longer be accessed from the Internet directly. To enable
  Internet access to the application, add an Internet gateway to your VPC.

  </li> </ul>
  """
  def add_application_vpc_configuration(client, input, options \\ []) do
    request(client, "AddApplicationVpcConfiguration", input, options)
  end

  @doc """
  Creates a Kinesis Data Analytics application. For information about
  creating a Kinesis Data Analytics application, see [Creating an
  Application](https://docs.aws.amazon.com/kinesisanalytics/latest/java/getting-started.html).
  """
  def create_application(client, input, options \\ []) do
    request(client, "CreateApplication", input, options)
  end

  @doc """
  Creates a snapshot of the application's state data.
  """
  def create_application_snapshot(client, input, options \\ []) do
    request(client, "CreateApplicationSnapshot", input, options)
  end

  @doc """
  Deletes the specified application. Kinesis Data Analytics halts application
  execution and deletes the application.
  """
  def delete_application(client, input, options \\ []) do
    request(client, "DeleteApplication", input, options)
  end

  @doc """
  Deletes an Amazon CloudWatch log stream from an Kinesis Data Analytics
  application.
  """
  def delete_application_cloud_watch_logging_option(client, input, options \\ []) do
    request(client, "DeleteApplicationCloudWatchLoggingOption", input, options)
  end

  @doc """
  Deletes an `InputProcessingConfiguration` from an input.
  """
  def delete_application_input_processing_configuration(client, input, options \\ []) do
    request(client, "DeleteApplicationInputProcessingConfiguration", input, options)
  end

  @doc """
  Deletes the output destination configuration from your SQL-based Kinesis
  Data Analytics application's configuration. Kinesis Data Analytics will no
  longer write data from the corresponding in-application stream to the
  external output destination.
  """
  def delete_application_output(client, input, options \\ []) do
    request(client, "DeleteApplicationOutput", input, options)
  end

  @doc """
  Deletes a reference data source configuration from the specified SQL-based
  Kinesis Data Analytics application's configuration.

  If the application is running, Kinesis Data Analytics immediately removes
  the in-application table that you created using the
  `AddApplicationReferenceDataSource` operation.
  """
  def delete_application_reference_data_source(client, input, options \\ []) do
    request(client, "DeleteApplicationReferenceDataSource", input, options)
  end

  @doc """
  Deletes a snapshot of application state.
  """
  def delete_application_snapshot(client, input, options \\ []) do
    request(client, "DeleteApplicationSnapshot", input, options)
  end

  @doc """
  Removes a VPC configuration from a Kinesis Data Analytics application.
  """
  def delete_application_vpc_configuration(client, input, options \\ []) do
    request(client, "DeleteApplicationVpcConfiguration", input, options)
  end

  @doc """
  Returns information about a specific Kinesis Data Analytics application.

  If you want to retrieve a list of all applications in your account, use the
  `ListApplications` operation.
  """
  def describe_application(client, input, options \\ []) do
    request(client, "DescribeApplication", input, options)
  end

  @doc """
  Returns information about a snapshot of application state data.
  """
  def describe_application_snapshot(client, input, options \\ []) do
    request(client, "DescribeApplicationSnapshot", input, options)
  end

  @doc """
  Infers a schema for a SQL-based Kinesis Data Analytics application by
  evaluating sample records on the specified streaming source (Kinesis data
  stream or Kinesis Data Firehose delivery stream) or Amazon S3 object. In
  the response, the operation returns the inferred schema and also the sample
  records that the operation used to infer the schema.

  You can use the inferred schema when configuring a streaming source for
  your application. When you create an application using the Kinesis Data
  Analytics console, the console uses this operation to infer a schema and
  show it in the console user interface.
  """
  def discover_input_schema(client, input, options \\ []) do
    request(client, "DiscoverInputSchema", input, options)
  end

  @doc """
  Lists information about the current application snapshots.
  """
  def list_application_snapshots(client, input, options \\ []) do
    request(client, "ListApplicationSnapshots", input, options)
  end

  @doc """
  Returns a list of Kinesis Data Analytics applications in your account. For
  each application, the response includes the application name, Amazon
  Resource Name (ARN), and status.

  If you want detailed information about a specific application, use
  `DescribeApplication`.
  """
  def list_applications(client, input, options \\ []) do
    request(client, "ListApplications", input, options)
  end

  @doc """
  Retrieves the list of key-value tags assigned to the application. For more
  information, see [Using
  Tagging](https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html).
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Starts the specified Kinesis Data Analytics application. After creating an
  application, you must exclusively call this operation to start your
  application.
  """
  def start_application(client, input, options \\ []) do
    request(client, "StartApplication", input, options)
  end

  @doc """
  Stops the application from processing data. You can stop an application
  only if it is in the running state. You can use the `DescribeApplication`
  operation to find the application state.
  """
  def stop_application(client, input, options \\ []) do
    request(client, "StopApplication", input, options)
  end

  @doc """
  Adds one or more key-value tags to a Kinesis Data Analytics application.
  Note that the maximum number of application tags includes system tags. The
  maximum number of user-defined application tags is 50. For more
  information, see [Using
  Tagging](https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html).
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Removes one or more tags from a Kinesis Data Analytics application. For
  more information, see [Using
  Tagging](https://docs.aws.amazon.com/kinesisanalytics/latest/java/how-tagging.html).
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Updates an existing Kinesis Data Analytics application. Using this
  operation, you can update application code, input configuration, and output
  configuration.

  Kinesis Data Analytics updates the `ApplicationVersionId` each time you
  update your application.

  <note> You cannot update the `RuntimeEnvironment` of an existing
  application. If you need to update an application's `RuntimeEnvironment`,
  you must delete the application and create it again.

  </note>
  """
  def update_application(client, input, options \\ []) do
    request(client, "UpdateApplication", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, map(), map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "kinesisanalytics"}
    host = build_host("kinesisanalytics", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "KinesisAnalytics_20180523.#{action}"}
    ]

    payload = encode!(client, input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    post(client, url, payload, headers, options)
  end

  defp post(client, url, payload, headers, options) do
    case AWS.Client.request(client, :post, url, payload, headers, options) do
      {:ok, %{status_code: 200, body: body} = response} ->
        body = if body != "", do: decode!(client, body)
        {:ok, body, response}

      {:ok, %{body: body} = response} ->
        {:error, decode!(client, body), response}

      error = {:error, _reason} -> error
    end
  end

  defp build_host(_endpoint_prefix, %{region: "local", endpoint: endpoint}) do
    endpoint
  end
  defp build_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp build_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp build_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end

  defp encode!(client, payload) do
    AWS.Client.encode!(client, payload, :json)
  end

  defp decode!(client, payload) do
    AWS.Client.decode!(client, payload, :json)
  end
end
