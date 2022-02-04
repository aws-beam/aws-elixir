# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.GreengrassV2 do
  @moduledoc """
  IoT Greengrass brings local compute, messaging, data management, sync, and ML
  inference capabilities to edge devices.

  This enables devices to collect and analyze data closer to the source of
  information, react autonomously to local events, and communicate securely with
  each other on local networks. Local devices can also communicate securely with
  Amazon Web Services IoT Core and export IoT data to the Amazon Web Services
  Cloud. IoT Greengrass developers can use Lambda functions and components to
  create and deploy applications to fleets of edge devices for local operation.

  IoT Greengrass Version 2 provides a new major version of the IoT Greengrass Core
  software, new APIs, and a new console. Use this API reference to learn how to
  use the IoT Greengrass V2 API operations to manage components, manage
  deployments, and core devices.

  For more information, see [What is IoT Greengrass?](https://docs.aws.amazon.com/greengrass/v2/developerguide/what-is-iot-greengrass.html)
  in the *IoT Greengrass V2 Developer Guide*.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2020-11-30",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "greengrass",
      global?: false,
      protocol: "rest-json",
      service_id: "GreengrassV2",
      signature_version: "v4",
      signing_name: "greengrass",
      target_prefix: nil
    }
  end

  @doc """
  Associates a Greengrass service role with IoT Greengrass for your Amazon Web
  Services account in this Amazon Web Services Region.

  IoT Greengrass uses this role to verify the identity of client devices and
  manage core device connectivity information. The role must include the
  [AWSGreengrassResourceAccessRolePolicy](https://console.aws.amazon.com/iam/home#/policies/arn:awsiam::aws:policy/service-role/AWSGreengrassResourceAccessRolePolicy) managed policy or a custom policy that defines equivalent permissions for the
  IoT Greengrass features that you use. For more information, see [Greengrass
  service
  role](https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-service-role.html)
  in the *IoT Greengrass Version 2 Developer Guide*.
  """
  def associate_service_role_to_account(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/servicerole"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Associates a list of client devices with a core device.

  Use this API operation to specify which client devices can discover a core
  device through cloud discovery. With cloud discovery, client devices connect to
  IoT Greengrass to retrieve associated core devices' connectivity information and
  certificates. For more information, see [Configure cloud discovery](https://docs.aws.amazon.com/greengrass/v2/developerguide/configure-cloud-discovery.html)
  in the *IoT Greengrass V2 Developer Guide*.

  Client devices are local IoT devices that connect to and communicate with an IoT
  Greengrass core device over MQTT. You can connect client devices to a core
  device to sync MQTT messages and data to Amazon Web Services IoT Core and
  interact with client devices in Greengrass components. For more information, see
  [Interact with local IoT devices](https://docs.aws.amazon.com/greengrass/v2/developerguide/interact-with-local-iot-devices.html)
  in the *IoT Greengrass V2 Developer Guide*.
  """
  def batch_associate_client_device_with_core_device(
        %Client{} = client,
        core_device_thing_name,
        input,
        options \\ []
      ) do
    url_path =
      "/greengrass/v2/coreDevices/#{AWS.Util.encode_uri(core_device_thing_name)}/associateClientDevices"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Disassociates a list of client devices from a core device.

  After you disassociate a client device from a core device, the client device
  won't be able to use cloud discovery to retrieve the core device's connectivity
  information and certificates.
  """
  def batch_disassociate_client_device_from_core_device(
        %Client{} = client,
        core_device_thing_name,
        input,
        options \\ []
      ) do
    url_path =
      "/greengrass/v2/coreDevices/#{AWS.Util.encode_uri(core_device_thing_name)}/disassociateClientDevices"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Cancels a deployment.

  This operation cancels the deployment for devices that haven't yet received it.
  If a device already received the deployment, this operation doesn't change
  anything for that device.
  """
  def cancel_deployment(%Client{} = client, deployment_id, input, options \\ []) do
    url_path = "/greengrass/v2/deployments/#{AWS.Util.encode_uri(deployment_id)}/cancel"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Creates a component.

  Components are software that run on Greengrass core devices. After you develop
  and test a component on your core device, you can use this operation to upload
  your component to IoT Greengrass. Then, you can deploy the component to other
  core devices.

  You can use this operation to do the following:

    * ## Create components from recipes

  Create a component from a recipe, which is a file that defines the component's
  metadata, parameters, dependencies, lifecycle, artifacts, and platform
  capability. For more information, see [IoT Greengrass component recipe reference](https://docs.aws.amazon.com/greengrass/v2/developerguide/component-recipe-reference.html)
  in the *IoT Greengrass V2 Developer Guide*.

  To create a component from a recipe, specify `inlineRecipe` when you call this
  operation.

    * ## Create components from Lambda functions

  Create a component from an Lambda function that runs on IoT Greengrass. This
  creates a recipe and artifacts from the Lambda function's deployment package.
  You can use this operation to migrate Lambda functions from IoT Greengrass V1 to
  IoT Greengrass V2.

  This function only accepts Lambda functions that use the following runtimes:

      * Python 2.7 – `python2.7`

      * Python 3.7 – `python3.7`

      * Python 3.8 – `python3.8`

      * Java 8 – `java8`

      * Node.js 10 – `nodejs10.x`

      * Node.js 12 – `nodejs12.x`

  To create a component from a Lambda function, specify `lambdaFunction` when you
  call this operation.

  IoT Greengrass currently supports Lambda functions on only Linux core devices.
  """
  def create_component_version(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/v2/createComponentVersion"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Creates a continuous deployment for a target, which is a Greengrass core device
  or group of core devices.

  When you add a new core device to a group of core devices that has a deployment,
  IoT Greengrass deploys that group's deployment to the new device.

  You can define one deployment for each target. When you create a new deployment
  for a target that has an existing deployment, you replace the previous
  deployment. IoT Greengrass applies the new deployment to the target devices.

  Every deployment has a revision number that indicates how many deployment
  revisions you define for a target. Use this operation to create a new revision
  of an existing deployment. This operation returns the revision number of the new
  deployment when you create it.

  For more information, see the [Create deployments](https://docs.aws.amazon.com/greengrass/v2/developerguide/create-deployments.html)
  in the *IoT Greengrass V2 Developer Guide*.
  """
  def create_deployment(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/v2/deployments"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      201
    )
  end

  @doc """
  Deletes a version of a component from IoT Greengrass.

  This operation deletes the component's recipe and artifacts. As a result,
  deployments that refer to this component version will fail. If you have
  deployments that use this component version, you can remove the component from
  the deployment or update the deployment to use a valid version.
  """
  def delete_component(%Client{} = client, arn, input, options \\ []) do
    url_path = "/greengrass/v2/components/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Deletes a Greengrass core device, which is an IoT thing.

  This operation removes the core device from the list of core devices. This
  operation doesn't delete the IoT thing. For more information about how to delete
  the IoT thing, see
  [DeleteThing](https://docs.aws.amazon.com/iot/latest/apireference/API_DeleteThing.html)
  in the *IoT API Reference*.
  """
  def delete_core_device(%Client{} = client, core_device_thing_name, input, options \\ []) do
    url_path = "/greengrass/v2/coreDevices/#{AWS.Util.encode_uri(core_device_thing_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      204
    )
  end

  @doc """
  Retrieves metadata for a version of a component.
  """
  def describe_component(%Client{} = client, arn, options \\ []) do
    url_path = "/greengrass/v2/components/#{AWS.Util.encode_uri(arn)}/metadata"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Disassociates the Greengrass service role from IoT Greengrass for your Amazon
  Web Services account in this Amazon Web Services Region.

  Without a service role, IoT Greengrass can't verify the identity of client
  devices or manage core device connectivity information. For more information,
  see [Greengrass service role](https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-service-role.html)
  in the *IoT Greengrass Version 2 Developer Guide*.
  """
  def disassociate_service_role_from_account(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/servicerole"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end

  @doc """
  Gets the recipe for a version of a component.

  Core devices can call this operation to identify the artifacts and requirements
  to install a component.
  """
  def get_component(%Client{} = client, arn, recipe_output_format \\ nil, options \\ []) do
    url_path = "/greengrass/v2/components/#{AWS.Util.encode_uri(arn)}"
    headers = []
    query_params = []

    query_params =
      if !is_nil(recipe_output_format) do
        [{"recipeOutputFormat", recipe_output_format} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets the pre-signed URL to download a public component artifact.

  Core devices call this operation to identify the URL that they can use to
  download an artifact to install.
  """
  def get_component_version_artifact(%Client{} = client, arn, artifact_name, options \\ []) do
    url_path =
      "/greengrass/v2/components/#{AWS.Util.encode_uri(arn)}/artifacts/#{AWS.Util.encode_multi_segment_uri(artifact_name)}"

    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Retrieves connectivity information for a Greengrass core device.

  Connectivity information includes endpoints and ports where client devices can
  connect to an MQTT broker on the core device. When a client device calls the
  [Greengrass discovery API](https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-discover-api.html),
  IoT Greengrass returns connectivity information for all of the core devices
  where the client device can connect. For more information, see [Connect client devices to core
  devices](https://docs.aws.amazon.com/greengrass/v2/developerguide/connect-client-devices.html)
  in the *IoT Greengrass Version 2 Developer Guide*.
  """
  def get_connectivity_info(%Client{} = client, thing_name, options \\ []) do
    url_path = "/greengrass/things/#{AWS.Util.encode_uri(thing_name)}/connectivityInfo"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Retrieves metadata for a Greengrass core device.
  """
  def get_core_device(%Client{} = client, core_device_thing_name, options \\ []) do
    url_path = "/greengrass/v2/coreDevices/#{AWS.Util.encode_uri(core_device_thing_name)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets a deployment.

  Deployments define the components that run on Greengrass core devices.
  """
  def get_deployment(%Client{} = client, deployment_id, options \\ []) do
    url_path = "/greengrass/v2/deployments/#{AWS.Util.encode_uri(deployment_id)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Gets the service role associated with IoT Greengrass for your Amazon Web
  Services account in this Amazon Web Services Region.

  IoT Greengrass uses this role to verify the identity of client devices and
  manage core device connectivity information. For more information, see
  [Greengrass service role](https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-service-role.html)
  in the *IoT Greengrass Version 2 Developer Guide*.
  """
  def get_service_role_for_account(%Client{} = client, options \\ []) do
    url_path = "/greengrass/servicerole"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Retrieves a paginated list of client devices that are associated with a core
  device.
  """
  def list_client_devices_associated_with_core_device(
        %Client{} = client,
        core_device_thing_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/greengrass/v2/coreDevices/#{AWS.Util.encode_uri(core_device_thing_name)}/associatedClientDevices"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      200
    )
  end

  @doc """
  Retrieves a paginated list of all versions for a component.

  Greater versions are listed first.
  """
  def list_component_versions(
        %Client{} = client,
        arn,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/v2/components/#{AWS.Util.encode_uri(arn)}/versions"
    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Retrieves a paginated list of component summaries.

  This list includes components that you have permission to view.
  """
  def list_components(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        scope \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/v2/components"
    headers = []
    query_params = []

    query_params =
      if !is_nil(scope) do
        [{"scope", scope} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Retrieves a paginated list of Greengrass core devices.
  """
  def list_core_devices(
        %Client{} = client,
        max_results \\ nil,
        next_token \\ nil,
        status \\ nil,
        thing_group_arn \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/v2/coreDevices"
    headers = []
    query_params = []

    query_params =
      if !is_nil(thing_group_arn) do
        [{"thingGroupArn", thing_group_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(status) do
        [{"status", status} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Retrieves a paginated list of deployments.
  """
  def list_deployments(
        %Client{} = client,
        history_filter \\ nil,
        max_results \\ nil,
        next_token \\ nil,
        target_arn \\ nil,
        options \\ []
      ) do
    url_path = "/greengrass/v2/deployments"
    headers = []
    query_params = []

    query_params =
      if !is_nil(target_arn) do
        [{"targetArn", target_arn} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(history_filter) do
        [{"historyFilter", history_filter} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Retrieves a paginated list of deployment jobs that IoT Greengrass sends to
  Greengrass core devices.
  """
  def list_effective_deployments(
        %Client{} = client,
        core_device_thing_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/greengrass/v2/coreDevices/#{AWS.Util.encode_uri(core_device_thing_name)}/effectiveDeployments"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Retrieves a paginated list of the components that a Greengrass core device runs.
  """
  def list_installed_components(
        %Client{} = client,
        core_device_thing_name,
        max_results \\ nil,
        next_token \\ nil,
        options \\ []
      ) do
    url_path =
      "/greengrass/v2/coreDevices/#{AWS.Util.encode_uri(core_device_thing_name)}/installedComponents"

    headers = []
    query_params = []

    query_params =
      if !is_nil(next_token) do
        [{"nextToken", next_token} | query_params]
      else
        query_params
      end

    query_params =
      if !is_nil(max_results) do
        [{"maxResults", max_results} | query_params]
      else
        query_params
      end

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Retrieves the list of tags for an IoT Greengrass resource.
  """
  def list_tags_for_resource(%Client{} = client, resource_arn, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :get,
      url_path,
      query_params,
      headers,
      nil,
      options,
      nil
    )
  end

  @doc """
  Retrieves a list of components that meet the component, version, and platform
  requirements of a deployment.

  Greengrass core devices call this operation when they receive a deployment to
  identify the components to install.

  This operation identifies components that meet all dependency requirements for a
  deployment. If the requirements conflict, then this operation returns an error
  and the deployment fails. For example, this occurs if component `A` requires
  version `>2.0.0` and component `B` requires version `<2.0.0` of a component
  dependency.

  When you specify the component candidates to resolve, IoT Greengrass compares
  each component's digest from the core device with the component's digest in the
  Amazon Web Services Cloud. If the digests don't match, then IoT Greengrass
  specifies to use the version from the Amazon Web Services Cloud.

  To use this operation, you must use the data plane API endpoint and authenticate
  with an IoT device certificate. For more information, see [IoT Greengrass endpoints and
  quotas](https://docs.aws.amazon.com/general/latest/gr/greengrass.html).
  """
  def resolve_component_candidates(%Client{} = client, input, options \\ []) do
    url_path = "/greengrass/v2/resolveComponentCandidates"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Adds tags to an IoT Greengrass resource.

  If a tag already exists for the resource, this operation updates the tag's
  value.
  """
  def tag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :post,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Removes a tag from an IoT Greengrass resource.
  """
  def untag_resource(%Client{} = client, resource_arn, input, options \\ []) do
    url_path = "/tags/#{AWS.Util.encode_uri(resource_arn)}"
    headers = []

    {query_params, input} =
      [
        {"tagKeys", "tagKeys"}
      ]
      |> Request.build_params(input)

    Request.request_rest(
      client,
      metadata(),
      :delete,
      url_path,
      query_params,
      headers,
      input,
      options,
      nil
    )
  end

  @doc """
  Updates connectivity information for a Greengrass core device.

  Connectivity information includes endpoints and ports where client devices can
  connect to an MQTT broker on the core device. When a client device calls the
  [Greengrass discovery API](https://docs.aws.amazon.com/greengrass/v2/developerguide/greengrass-discover-api.html),
  IoT Greengrass returns connectivity information for all of the core devices
  where the client device can connect. For more information, see [Connect client devices to core
  devices](https://docs.aws.amazon.com/greengrass/v2/developerguide/connect-client-devices.html)
  in the *IoT Greengrass Version 2 Developer Guide*.
  """
  def update_connectivity_info(%Client{} = client, thing_name, input, options \\ []) do
    url_path = "/greengrass/things/#{AWS.Util.encode_uri(thing_name)}/connectivityInfo"
    headers = []
    query_params = []

    Request.request_rest(
      client,
      metadata(),
      :put,
      url_path,
      query_params,
      headers,
      input,
      options,
      200
    )
  end
end
