# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.MigrationHub do
  @moduledoc """
  The AWS Migration Hub API methods help to obtain server and application
  migration status and integrate your resource-specific migration tool by
  providing a programmatic interface to Migration Hub.

  Remember that you must set your AWS Migration Hub home region before you call
  any of these APIs, or a `HomeRegionNotSetException` error will be returned.
  Also, you must make the API calls while in your home region.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2017-05-31",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "mgh",
      global?: false,
      protocol: "json",
      service_id: "Migration Hub",
      signature_version: "v4",
      signing_name: "mgh",
      target_prefix: "AWSMigrationHub"
    }
  end

  @doc """
  Associates a created artifact of an AWS cloud resource, the target receiving the
  migration, with the migration task performed by a migration tool.

  This API has the following traits:

    * Migration tools can call the `AssociateCreatedArtifact` operation
  to indicate which AWS artifact is associated with a migration task.

    * The created artifact name must be provided in ARN (Amazon Resource
  Name) format which will contain information about type and region; for example:
  `arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b`.

    * Examples of the AWS resource behind the created artifact are,
  AMI's, EC2 instance, or DMS endpoint, etc.
  """
  def associate_created_artifact(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateCreatedArtifact", input, options)
  end

  @doc """
  Associates a discovered resource ID from Application Discovery Service with a
  migration task.
  """
  def associate_discovered_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateDiscoveredResource", input, options)
  end

  @doc """
  Creates a progress update stream which is an AWS resource used for access
  control as well as a namespace for migration task names that is implicitly
  linked to your AWS account.

  It must uniquely identify the migration tool as it is used for all updates made
  by the tool; however, it does not need to be unique for each AWS account because
  it is scoped to the AWS account.
  """
  def create_progress_update_stream(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateProgressUpdateStream", input, options)
  end

  @doc """
  Deletes a progress update stream, including all of its tasks, which was
  previously created as an AWS resource used for access control.

  This API has the following traits:

    * The only parameter needed for `DeleteProgressUpdateStream` is the
  stream name (same as a `CreateProgressUpdateStream` call).

    * The call will return, and a background process will asynchronously
  delete the stream and all of its resources (tasks, associated resources,
  resource attributes, created artifacts).

    * If the stream takes time to be deleted, it might still show up on
  a `ListProgressUpdateStreams` call.

    * `CreateProgressUpdateStream`, `ImportMigrationTask`,
  `NotifyMigrationTaskState`, and all Associate[*] APIs related to the tasks
  belonging to the stream will throw "InvalidInputException" if the stream of the
  same name is in the process of being deleted.

    * Once the stream and all of its resources are deleted,
  `CreateProgressUpdateStream` for a stream of the same name will succeed, and
  that stream will be an entirely new logical resource (without any resources
  associated with the old stream).
  """
  def delete_progress_update_stream(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteProgressUpdateStream", input, options)
  end

  @doc """
  Gets the migration status of an application.
  """
  def describe_application_state(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeApplicationState", input, options)
  end

  @doc """
  Retrieves a list of all attributes associated with a specific migration task.
  """
  def describe_migration_task(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeMigrationTask", input, options)
  end

  @doc """
  Disassociates a created artifact of an AWS resource with a migration task
  performed by a migration tool that was previously associated.

  This API has the following traits:

    * A migration user can call the `DisassociateCreatedArtifacts`
  operation to disassociate a created AWS Artifact from a migration task.

    * The created artifact name must be provided in ARN (Amazon Resource
  Name) format which will contain information about type and region; for example:
  `arn:aws:ec2:us-east-1:488216288981:image/ami-6d0ba87b`.

    * Examples of the AWS resource behind the created artifact are,
  AMI's, EC2 instance, or RDS instance, etc.
  """
  def disassociate_created_artifact(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateCreatedArtifact", input, options)
  end

  @doc """
  Disassociate an Application Discovery Service discovered resource from a
  migration task.
  """
  def disassociate_discovered_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateDiscoveredResource", input, options)
  end

  @doc """
  Registers a new migration task which represents a server, database, etc., being
  migrated to AWS by a migration tool.

  This API is a prerequisite to calling the `NotifyMigrationTaskState` API as the
  migration tool must first register the migration task with Migration Hub.
  """
  def import_migration_task(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ImportMigrationTask", input, options)
  end

  @doc """
  Lists all the migration statuses for your applications.

  If you use the optional `ApplicationIds` parameter, only the migration statuses
  for those applications will be returned.
  """
  def list_application_states(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListApplicationStates", input, options)
  end

  @doc """
  Lists the created artifacts attached to a given migration task in an update
  stream.

  This API has the following traits:

    * Gets the list of the created artifacts while migration is taking
  place.

    * Shows the artifacts created by the migration tool that was
  associated by the `AssociateCreatedArtifact` API.

    * Lists created artifacts in a paginated interface.
  """
  def list_created_artifacts(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListCreatedArtifacts", input, options)
  end

  @doc """
  Lists discovered resources associated with the given `MigrationTask`.
  """
  def list_discovered_resources(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListDiscoveredResources", input, options)
  end

  @doc """
  Lists all, or filtered by resource name, migration tasks associated with the
  user account making this call.

  This API has the following traits:

    * Can show a summary list of the most recent migration tasks.

    * Can show a summary list of migration tasks associated with a given
  discovered resource.

    * Lists migration tasks in a paginated interface.
  """
  def list_migration_tasks(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListMigrationTasks", input, options)
  end

  @doc """
  Lists progress update streams associated with the user account making this call.
  """
  def list_progress_update_streams(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListProgressUpdateStreams", input, options)
  end

  @doc """
  Sets the migration state of an application.

  For a given application identified by the value passed to `ApplicationId`, its
  status is set or updated by passing one of three values to `Status`:
  `NOT_STARTED | IN_PROGRESS | COMPLETED`.
  """
  def notify_application_state(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "NotifyApplicationState", input, options)
  end

  @doc """
  Notifies Migration Hub of the current status, progress, or other detail
  regarding a migration task.

  This API has the following traits:

    * Migration tools will call the `NotifyMigrationTaskState` API to
  share the latest progress and status.

    * `MigrationTaskName` is used for addressing updates to the correct
  target.

    * `ProgressUpdateStream` is used for access control and to provide a
  namespace for each migration tool.
  """
  def notify_migration_task_state(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "NotifyMigrationTaskState", input, options)
  end

  @doc """
  Provides identifying details of the resource being migrated so that it can be
  associated in the Application Discovery Service repository.

  This association occurs asynchronously after `PutResourceAttributes` returns.

     Keep in mind that subsequent calls to PutResourceAttributes will
  override previously stored attributes. For example, if it is first called with a
  MAC address, but later, it is desired to *add* an IP address, it will then be
  required to call it with *both* the IP and MAC addresses to prevent overriding
  the MAC address.

     Note the instructions regarding the special use case of the [
  `ResourceAttributeList`
  ](https://docs.aws.amazon.com/migrationhub/latest/ug/API_PutResourceAttributes.html#migrationhub-PutResourceAttributes-request-ResourceAttributeList)
  parameter when specifying any "VM" related value.

  Because this is an asynchronous call, it will always return 200, whether an
  association occurs or not. To confirm if an association was found based on the
  provided details, call `ListDiscoveredResources`.
  """
  def put_resource_attributes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "PutResourceAttributes", input, options)
  end
end
