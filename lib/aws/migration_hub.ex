# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MigrationHub do
  @moduledoc """
  The AWS Migration Hub API methods help to obtain server and application
  migration status and integrate your resource-specific migration tool by
  providing a programmatic interface to Migration Hub.

  Remember that you must set your AWS Migration Hub home region before you
  call any of these APIs, or a `HomeRegionNotSetException` error will be
  returned. Also, you must make the API calls while in your home region.
  """

  @doc """
  Associates a created artifact of an AWS cloud resource, the target
  receiving the migration, with the migration task performed by a migration
  tool. This API has the following traits:

  <ul> <li> Migration tools can call the `AssociateCreatedArtifact` operation
  to indicate which AWS artifact is associated with a migration task.

  </li> <li> The created artifact name must be provided in ARN (Amazon
  Resource Name) format which will contain information about type and region;
  for example: `arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b`.

  </li> <li> Examples of the AWS resource behind the created artifact are,
  AMI's, EC2 instance, or DMS endpoint, etc.

  </li> </ul>
  """
  def associate_created_artifact(client, input, options \\ []) do
    request(client, "AssociateCreatedArtifact", input, options)
  end

  @doc """
  Associates a discovered resource ID from Application Discovery Service with
  a migration task.
  """
  def associate_discovered_resource(client, input, options \\ []) do
    request(client, "AssociateDiscoveredResource", input, options)
  end

  @doc """
  Creates a progress update stream which is an AWS resource used for access
  control as well as a namespace for migration task names that is implicitly
  linked to your AWS account. It must uniquely identify the migration tool as
  it is used for all updates made by the tool; however, it does not need to
  be unique for each AWS account because it is scoped to the AWS account.
  """
  def create_progress_update_stream(client, input, options \\ []) do
    request(client, "CreateProgressUpdateStream", input, options)
  end

  @doc """
  Deletes a progress update stream, including all of its tasks, which was
  previously created as an AWS resource used for access control. This API has
  the following traits:

  <ul> <li> The only parameter needed for `DeleteProgressUpdateStream` is the
  stream name (same as a `CreateProgressUpdateStream` call).

  </li> <li> The call will return, and a background process will
  asynchronously delete the stream and all of its resources (tasks,
  associated resources, resource attributes, created artifacts).

  </li> <li> If the stream takes time to be deleted, it might still show up
  on a `ListProgressUpdateStreams` call.

  </li> <li> `CreateProgressUpdateStream`, `ImportMigrationTask`,
  `NotifyMigrationTaskState`, and all Associate[*] APIs related to the tasks
  belonging to the stream will throw "InvalidInputException" if the stream of
  the same name is in the process of being deleted.

  </li> <li> Once the stream and all of its resources are deleted,
  `CreateProgressUpdateStream` for a stream of the same name will succeed,
  and that stream will be an entirely new logical resource (without any
  resources associated with the old stream).

  </li> </ul>
  """
  def delete_progress_update_stream(client, input, options \\ []) do
    request(client, "DeleteProgressUpdateStream", input, options)
  end

  @doc """
  Gets the migration status of an application.
  """
  def describe_application_state(client, input, options \\ []) do
    request(client, "DescribeApplicationState", input, options)
  end

  @doc """
  Retrieves a list of all attributes associated with a specific migration
  task.
  """
  def describe_migration_task(client, input, options \\ []) do
    request(client, "DescribeMigrationTask", input, options)
  end

  @doc """
  Disassociates a created artifact of an AWS resource with a migration task
  performed by a migration tool that was previously associated. This API has
  the following traits:

  <ul> <li> A migration user can call the `DisassociateCreatedArtifacts`
  operation to disassociate a created AWS Artifact from a migration task.

  </li> <li> The created artifact name must be provided in ARN (Amazon
  Resource Name) format which will contain information about type and region;
  for example: `arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b`.

  </li> <li> Examples of the AWS resource behind the created artifact are,
  AMI's, EC2 instance, or RDS instance, etc.

  </li> </ul>
  """
  def disassociate_created_artifact(client, input, options \\ []) do
    request(client, "DisassociateCreatedArtifact", input, options)
  end

  @doc """
  Disassociate an Application Discovery Service discovered resource from a
  migration task.
  """
  def disassociate_discovered_resource(client, input, options \\ []) do
    request(client, "DisassociateDiscoveredResource", input, options)
  end

  @doc """
  Registers a new migration task which represents a server, database, etc.,
  being migrated to AWS by a migration tool.

  This API is a prerequisite to calling the `NotifyMigrationTaskState` API as
  the migration tool must first register the migration task with Migration
  Hub.
  """
  def import_migration_task(client, input, options \\ []) do
    request(client, "ImportMigrationTask", input, options)
  end

  @doc """
  Lists all the migration statuses for your applications. If you use the
  optional `ApplicationIds` parameter, only the migration statuses for those
  applications will be returned.
  """
  def list_application_states(client, input, options \\ []) do
    request(client, "ListApplicationStates", input, options)
  end

  @doc """
  Lists the created artifacts attached to a given migration task in an update
  stream. This API has the following traits:

  <ul> <li> Gets the list of the created artifacts while migration is taking
  place.

  </li> <li> Shows the artifacts created by the migration tool that was
  associated by the `AssociateCreatedArtifact` API.

  </li> <li> Lists created artifacts in a paginated interface.

  </li> </ul>
  """
  def list_created_artifacts(client, input, options \\ []) do
    request(client, "ListCreatedArtifacts", input, options)
  end

  @doc """
  Lists discovered resources associated with the given `MigrationTask`.
  """
  def list_discovered_resources(client, input, options \\ []) do
    request(client, "ListDiscoveredResources", input, options)
  end

  @doc """
  Lists all, or filtered by resource name, migration tasks associated with
  the user account making this call. This API has the following traits:

  <ul> <li> Can show a summary list of the most recent migration tasks.

  </li> <li> Can show a summary list of migration tasks associated with a
  given discovered resource.

  </li> <li> Lists migration tasks in a paginated interface.

  </li> </ul>
  """
  def list_migration_tasks(client, input, options \\ []) do
    request(client, "ListMigrationTasks", input, options)
  end

  @doc """
  Lists progress update streams associated with the user account making this
  call.
  """
  def list_progress_update_streams(client, input, options \\ []) do
    request(client, "ListProgressUpdateStreams", input, options)
  end

  @doc """
  Sets the migration state of an application. For a given application
  identified by the value passed to `ApplicationId`, its status is set or
  updated by passing one of three values to `Status`: `NOT_STARTED |
  IN_PROGRESS | COMPLETED`.
  """
  def notify_application_state(client, input, options \\ []) do
    request(client, "NotifyApplicationState", input, options)
  end

  @doc """
  Notifies Migration Hub of the current status, progress, or other detail
  regarding a migration task. This API has the following traits:

  <ul> <li> Migration tools will call the `NotifyMigrationTaskState` API to
  share the latest progress and status.

  </li> <li> `MigrationTaskName` is used for addressing updates to the
  correct target.

  </li> <li> `ProgressUpdateStream` is used for access control and to provide
  a namespace for each migration tool.

  </li> </ul>
  """
  def notify_migration_task_state(client, input, options \\ []) do
    request(client, "NotifyMigrationTaskState", input, options)
  end

  @doc """
  Provides identifying details of the resource being migrated so that it can
  be associated in the Application Discovery Service repository. This
  association occurs asynchronously after `PutResourceAttributes` returns.

  <important> <ul> <li> Keep in mind that subsequent calls to
  PutResourceAttributes will override previously stored attributes. For
  example, if it is first called with a MAC address, but later, it is desired
  to *add* an IP address, it will then be required to call it with *both* the
  IP and MAC addresses to prevent overriding the MAC address.

  </li> <li> Note the instructions regarding the special use case of the [
  `ResourceAttributeList`
  ](https://docs.aws.amazon.com/migrationhub/latest/ug/API_PutResourceAttributes.html#migrationhub-PutResourceAttributes-request-ResourceAttributeList)
  parameter when specifying any "VM" related value.

  </li> </ul> </important> <note> Because this is an asynchronous call, it
  will always return 200, whether an association occurs or not. To confirm if
  an association was found based on the provided details, call
  `ListDiscoveredResources`.

  </note>
  """
  def put_resource_attributes(client, input, options \\ []) do
    request(client, "PutResourceAttributes", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "mgh"}
    host = build_host("mgh", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "AWSMigrationHub.#{action}"}
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

      {:ok, %{body: body}} ->
        {:error, decode!(client, body)}

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
