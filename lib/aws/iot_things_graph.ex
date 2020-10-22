# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.IoTThingsGraph do
  @moduledoc """
  AWS IoT Things Graph

  AWS IoT Things Graph provides an integrated set of tools that enable
  developers to connect devices and services that use different standards,
  such as units of measure and communication protocols. AWS IoT Things Graph
  makes it possible to build IoT applications with little to no code by
  connecting devices and services and defining how they interact at an
  abstract level.

  For more information about how AWS IoT Things Graph works, see the [User
  Guide](https://docs.aws.amazon.com/thingsgraph/latest/ug/iot-tg-whatis.html).
  """

  @doc """
  Associates a device with a concrete thing that is in the user's registry.

  A thing can be associated with only one device at a time. If you associate
  a thing with a new device id, its previous association will be removed.
  """
  def associate_entity_to_thing(client, input, options \\ []) do
    request(client, "AssociateEntityToThing", input, options)
  end

  @doc """
  Creates a workflow template. Workflows can be created only in the user's
  namespace. (The public namespace contains only entities.) The workflow can
  contain only entities in the specified namespace. The workflow is validated
  against the entities in the latest version of the user's namespace unless
  another namespace version is specified in the request.
  """
  def create_flow_template(client, input, options \\ []) do
    request(client, "CreateFlowTemplate", input, options)
  end

  @doc """
  Creates a system instance.

  This action validates the system instance, prepares the deployment-related
  resources. For Greengrass deployments, it updates the Greengrass group that
  is specified by the `greengrassGroupName` parameter. It also adds a file to
  the S3 bucket specified by the `s3BucketName` parameter. You need to call
  `DeploySystemInstance` after running this action.

  For Greengrass deployments, since this action modifies and adds resources
  to a Greengrass group and an S3 bucket on the caller's behalf, the calling
  identity must have write permissions to both the specified Greengrass group
  and S3 bucket. Otherwise, the call will fail with an authorization error.

  For cloud deployments, this action requires a `flowActionsRoleArn` value.
  This is an IAM role that has permissions to access AWS services, such as
  AWS Lambda and AWS IoT, that the flow uses when it executes.

  If the definition document doesn't specify a version of the user's
  namespace, the latest version will be used by default.
  """
  def create_system_instance(client, input, options \\ []) do
    request(client, "CreateSystemInstance", input, options)
  end

  @doc """
  Creates a system. The system is validated against the entities in the
  latest version of the user's namespace unless another namespace version is
  specified in the request.
  """
  def create_system_template(client, input, options \\ []) do
    request(client, "CreateSystemTemplate", input, options)
  end

  @doc """
  Deletes a workflow. Any new system or deployment that contains this
  workflow will fail to update or deploy. Existing deployments that contain
  the workflow will continue to run (since they use a snapshot of the
  workflow taken at the time of deployment).
  """
  def delete_flow_template(client, input, options \\ []) do
    request(client, "DeleteFlowTemplate", input, options)
  end

  @doc """
  Deletes the specified namespace. This action deletes all of the entities in
  the namespace. Delete the systems and flows that use entities in the
  namespace before performing this action.
  """
  def delete_namespace(client, input, options \\ []) do
    request(client, "DeleteNamespace", input, options)
  end

  @doc """
  Deletes a system instance. Only system instances that have never been
  deployed, or that have been undeployed can be deleted.

  Users can create a new system instance that has the same ID as a deleted
  system instance.
  """
  def delete_system_instance(client, input, options \\ []) do
    request(client, "DeleteSystemInstance", input, options)
  end

  @doc """
  Deletes a system. New deployments can't contain the system after its
  deletion. Existing deployments that contain the system will continue to
  work because they use a snapshot of the system that is taken when it is
  deployed.
  """
  def delete_system_template(client, input, options \\ []) do
    request(client, "DeleteSystemTemplate", input, options)
  end

  @doc """
  **Greengrass and Cloud Deployments**

  Deploys the system instance to the target specified in
  `CreateSystemInstance`.

  **Greengrass Deployments**

  If the system or any workflows and entities have been updated before this
  action is called, then the deployment will create a new Amazon Simple
  Storage Service resource file and then deploy it.

  Since this action creates a Greengrass deployment on the caller's behalf,
  the calling identity must have write permissions to the specified
  Greengrass group. Otherwise, the call will fail with an authorization
  error.

  For information about the artifacts that get added to your Greengrass core
  device when you use this API, see [AWS IoT Things Graph and AWS IoT
  Greengrass](https://docs.aws.amazon.com/thingsgraph/latest/ug/iot-tg-greengrass.html).
  """
  def deploy_system_instance(client, input, options \\ []) do
    request(client, "DeploySystemInstance", input, options)
  end

  @doc """
  Deprecates the specified workflow. This action marks the workflow for
  deletion. Deprecated flows can't be deployed, but existing deployments will
  continue to run.
  """
  def deprecate_flow_template(client, input, options \\ []) do
    request(client, "DeprecateFlowTemplate", input, options)
  end

  @doc """
  Deprecates the specified system.
  """
  def deprecate_system_template(client, input, options \\ []) do
    request(client, "DeprecateSystemTemplate", input, options)
  end

  @doc """
  Gets the latest version of the user's namespace and the public version that
  it is tracking.
  """
  def describe_namespace(client, input, options \\ []) do
    request(client, "DescribeNamespace", input, options)
  end

  @doc """
  Dissociates a device entity from a concrete thing. The action takes only
  the type of the entity that you need to dissociate because only one entity
  of a particular type can be associated with a thing.
  """
  def dissociate_entity_from_thing(client, input, options \\ []) do
    request(client, "DissociateEntityFromThing", input, options)
  end

  @doc """
  Gets definitions of the specified entities. Uses the latest version of the
  user's namespace by default. This API returns the following TDM entities.

  <ul> <li> Properties

  </li> <li> States

  </li> <li> Events

  </li> <li> Actions

  </li> <li> Capabilities

  </li> <li> Mappings

  </li> <li> Devices

  </li> <li> Device Models

  </li> <li> Services

  </li> </ul> This action doesn't return definitions for systems, flows, and
  deployments.
  """
  def get_entities(client, input, options \\ []) do
    request(client, "GetEntities", input, options)
  end

  @doc """
  Gets the latest version of the `DefinitionDocument` and
  `FlowTemplateSummary` for the specified workflow.
  """
  def get_flow_template(client, input, options \\ []) do
    request(client, "GetFlowTemplate", input, options)
  end

  @doc """
  Gets revisions of the specified workflow. Only the last 100 revisions are
  stored. If the workflow has been deprecated, this action will return
  revisions that occurred before the deprecation. This action won't work for
  workflows that have been deleted.
  """
  def get_flow_template_revisions(client, input, options \\ []) do
    request(client, "GetFlowTemplateRevisions", input, options)
  end

  @doc """
  Gets the status of a namespace deletion task.
  """
  def get_namespace_deletion_status(client, input, options \\ []) do
    request(client, "GetNamespaceDeletionStatus", input, options)
  end

  @doc """
  Gets a system instance.
  """
  def get_system_instance(client, input, options \\ []) do
    request(client, "GetSystemInstance", input, options)
  end

  @doc """
  Gets a system.
  """
  def get_system_template(client, input, options \\ []) do
    request(client, "GetSystemTemplate", input, options)
  end

  @doc """
  Gets revisions made to the specified system template. Only the previous 100
  revisions are stored. If the system has been deprecated, this action will
  return the revisions that occurred before its deprecation. This action
  won't work with systems that have been deleted.
  """
  def get_system_template_revisions(client, input, options \\ []) do
    request(client, "GetSystemTemplateRevisions", input, options)
  end

  @doc """
  Gets the status of the specified upload.
  """
  def get_upload_status(client, input, options \\ []) do
    request(client, "GetUploadStatus", input, options)
  end

  @doc """
  Returns a list of objects that contain information about events in a flow
  execution.
  """
  def list_flow_execution_messages(client, input, options \\ []) do
    request(client, "ListFlowExecutionMessages", input, options)
  end

  @doc """
  Lists all tags on an AWS IoT Things Graph resource.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Searches for entities of the specified type. You can search for entities in
  your namespace and the public namespace that you're tracking.
  """
  def search_entities(client, input, options \\ []) do
    request(client, "SearchEntities", input, options)
  end

  @doc """
  Searches for AWS IoT Things Graph workflow execution instances.
  """
  def search_flow_executions(client, input, options \\ []) do
    request(client, "SearchFlowExecutions", input, options)
  end

  @doc """
  Searches for summary information about workflows.
  """
  def search_flow_templates(client, input, options \\ []) do
    request(client, "SearchFlowTemplates", input, options)
  end

  @doc """
  Searches for system instances in the user's account.
  """
  def search_system_instances(client, input, options \\ []) do
    request(client, "SearchSystemInstances", input, options)
  end

  @doc """
  Searches for summary information about systems in the user's account. You
  can filter by the ID of a workflow to return only systems that use the
  specified workflow.
  """
  def search_system_templates(client, input, options \\ []) do
    request(client, "SearchSystemTemplates", input, options)
  end

  @doc """
  Searches for things associated with the specified entity. You can search by
  both device and device model.

  For example, if two different devices, camera1 and camera2, implement the
  camera device model, the user can associate thing1 to camera1 and thing2 to
  camera2. `SearchThings(camera2)` will return only thing2, but
  `SearchThings(camera)` will return both thing1 and thing2.

  This action searches for exact matches and doesn't perform partial text
  matching.
  """
  def search_things(client, input, options \\ []) do
    request(client, "SearchThings", input, options)
  end

  @doc """
  Creates a tag for the specified resource.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Removes a system instance from its target (Cloud or Greengrass).
  """
  def undeploy_system_instance(client, input, options \\ []) do
    request(client, "UndeploySystemInstance", input, options)
  end

  @doc """
  Removes a tag from the specified resource.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Updates the specified workflow. All deployed systems and system instances
  that use the workflow will see the changes in the flow when it is
  redeployed. If you don't want this behavior, copy the workflow (creating a
  new workflow with a different ID), and update the copy. The workflow can
  contain only entities in the specified namespace.
  """
  def update_flow_template(client, input, options \\ []) do
    request(client, "UpdateFlowTemplate", input, options)
  end

  @doc """
  Updates the specified system. You don't need to run this action after
  updating a workflow. Any deployment that uses the system will see the
  changes in the system when it is redeployed.
  """
  def update_system_template(client, input, options \\ []) do
    request(client, "UpdateSystemTemplate", input, options)
  end

  @doc """
  Asynchronously uploads one or more entity definitions to the user's
  namespace. The `document` parameter is required if
  `syncWithPublicNamespace` and `deleteExistingEntites` are false. If the
  `syncWithPublicNamespace` parameter is set to `true`, the user's namespace
  will synchronize with the latest version of the public namespace. If
  `deprecateExistingEntities` is set to true, all entities in the latest
  version will be deleted before the new `DefinitionDocument` is uploaded.

  When a user uploads entity definitions for the first time, the service
  creates a new namespace for the user. The new namespace tracks the public
  namespace. Currently users can have only one namespace. The namespace
  version increments whenever a user uploads entity definitions that are
  backwards-incompatible and whenever a user sets the
  `syncWithPublicNamespace` parameter or the `deprecateExistingEntities`
  parameter to `true`.

  The IDs for all of the entities should be in URN format. Each entity must
  be in the user's namespace. Users can't create entities in the public
  namespace, but entity definitions can refer to entities in the public
  namespace.

  Valid entities are `Device`, `DeviceModel`, `Service`, `Capability`,
  `State`, `Action`, `Event`, `Property`, `Mapping`, `Enum`.
  """
  def upload_entity_definitions(client, input, options \\ []) do
    request(client, "UploadEntityDefinitions", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, term()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "iotthingsgraph"}
    host = build_host("iotthingsgraph", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "IotThingsGraphFrontEndService.#{action}"}
    ]

    payload = AWS.JSON.encode!(input)
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    AWS.HTTP.request(:post, url, payload, headers, options, 200)
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
end
