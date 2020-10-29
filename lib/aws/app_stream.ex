# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AppStream do
  @moduledoc """
  Amazon AppStream 2.0

  This is the *Amazon AppStream 2.0 API Reference*. This documentation
  provides descriptions and syntax for each of the actions and data types in
  AppStream 2.0. AppStream 2.0 is a fully managed, secure application
  streaming service that lets you stream desktop applications to users
  without rewriting applications. AppStream 2.0 manages the AWS resources
  that are required to host and run your applications, scales automatically,
  and provides access to your users on demand.

  <note> You can call the AppStream 2.0 API operations by using an interface
  VPC endpoint (interface endpoint). For more information, see [Access
  AppStream 2.0 API Operations and CLI Commands Through an Interface VPC
  Endpoint](https://docs.aws.amazon.com/appstream2/latest/developerguide/access-api-cli-through-interface-vpc-endpoint.html)
  in the *Amazon AppStream 2.0 Administration Guide*.

  </note> To learn more about AppStream 2.0, see the following resources:

  <ul> <li> [Amazon AppStream 2.0 product
  page](http://aws.amazon.com/appstream2)

  </li> <li> [Amazon AppStream 2.0
  documentation](http://aws.amazon.com/documentation/appstream2)

  </li> </ul>
  """

  @doc """
  Associates the specified fleet with the specified stack.
  """
  def associate_fleet(client, input, options \\ []) do
    request(client, "AssociateFleet", input, options)
  end

  @doc """
  Associates the specified users with the specified stacks. Users in a user
  pool cannot be assigned to stacks with fleets that are joined to an Active
  Directory domain.
  """
  def batch_associate_user_stack(client, input, options \\ []) do
    request(client, "BatchAssociateUserStack", input, options)
  end

  @doc """
  Disassociates the specified users from the specified stacks.
  """
  def batch_disassociate_user_stack(client, input, options \\ []) do
    request(client, "BatchDisassociateUserStack", input, options)
  end

  @doc """
  Copies the image within the same region or to a new region within the same
  AWS account. Note that any tags you added to the image will not be copied.
  """
  def copy_image(client, input, options \\ []) do
    request(client, "CopyImage", input, options)
  end

  @doc """
  Creates a Directory Config object in AppStream 2.0. This object includes
  the configuration information required to join fleets and image builders to
  Microsoft Active Directory domains.
  """
  def create_directory_config(client, input, options \\ []) do
    request(client, "CreateDirectoryConfig", input, options)
  end

  @doc """
  Creates a fleet. A fleet consists of streaming instances that run a
  specified image.
  """
  def create_fleet(client, input, options \\ []) do
    request(client, "CreateFleet", input, options)
  end

  @doc """
  Creates an image builder. An image builder is a virtual machine that is
  used to create an image.

  The initial state of the builder is `PENDING`. When it is ready, the state
  is `RUNNING`.
  """
  def create_image_builder(client, input, options \\ []) do
    request(client, "CreateImageBuilder", input, options)
  end

  @doc """
  Creates a URL to start an image builder streaming session.
  """
  def create_image_builder_streaming_u_r_l(client, input, options \\ []) do
    request(client, "CreateImageBuilderStreamingURL", input, options)
  end

  @doc """
  Creates a stack to start streaming applications to users. A stack consists
  of an associated fleet, user access policies, and storage configurations.
  """
  def create_stack(client, input, options \\ []) do
    request(client, "CreateStack", input, options)
  end

  @doc """
  Creates a temporary URL to start an AppStream 2.0 streaming session for the
  specified user. A streaming URL enables application streaming to be tested
  without user setup.
  """
  def create_streaming_u_r_l(client, input, options \\ []) do
    request(client, "CreateStreamingURL", input, options)
  end

  @doc """
  Creates a usage report subscription. Usage reports are generated daily.
  """
  def create_usage_report_subscription(client, input, options \\ []) do
    request(client, "CreateUsageReportSubscription", input, options)
  end

  @doc """
  Creates a new user in the user pool.
  """
  def create_user(client, input, options \\ []) do
    request(client, "CreateUser", input, options)
  end

  @doc """
  Deletes the specified Directory Config object from AppStream 2.0. This
  object includes the information required to join streaming instances to an
  Active Directory domain.
  """
  def delete_directory_config(client, input, options \\ []) do
    request(client, "DeleteDirectoryConfig", input, options)
  end

  @doc """
  Deletes the specified fleet.
  """
  def delete_fleet(client, input, options \\ []) do
    request(client, "DeleteFleet", input, options)
  end

  @doc """
  Deletes the specified image. You cannot delete an image when it is in use.
  After you delete an image, you cannot provision new capacity using the
  image.
  """
  def delete_image(client, input, options \\ []) do
    request(client, "DeleteImage", input, options)
  end

  @doc """
  Deletes the specified image builder and releases the capacity.
  """
  def delete_image_builder(client, input, options \\ []) do
    request(client, "DeleteImageBuilder", input, options)
  end

  @doc """
  Deletes permissions for the specified private image. After you delete
  permissions for an image, AWS accounts to which you previously granted
  these permissions can no longer use the image.
  """
  def delete_image_permissions(client, input, options \\ []) do
    request(client, "DeleteImagePermissions", input, options)
  end

  @doc """
  Deletes the specified stack. After the stack is deleted, the application
  streaming environment provided by the stack is no longer available to
  users. Also, any reservations made for application streaming sessions for
  the stack are released.
  """
  def delete_stack(client, input, options \\ []) do
    request(client, "DeleteStack", input, options)
  end

  @doc """
  Disables usage report generation.
  """
  def delete_usage_report_subscription(client, input, options \\ []) do
    request(client, "DeleteUsageReportSubscription", input, options)
  end

  @doc """
  Deletes a user from the user pool.
  """
  def delete_user(client, input, options \\ []) do
    request(client, "DeleteUser", input, options)
  end

  @doc """
  Retrieves a list that describes one or more specified Directory Config
  objects for AppStream 2.0, if the names for these objects are provided.
  Otherwise, all Directory Config objects in the account are described. These
  objects include the configuration information required to join fleets and
  image builders to Microsoft Active Directory domains.

  Although the response syntax in this topic includes the account password,
  this password is not returned in the actual response.
  """
  def describe_directory_configs(client, input, options \\ []) do
    request(client, "DescribeDirectoryConfigs", input, options)
  end

  @doc """
  Retrieves a list that describes one or more specified fleets, if the fleet
  names are provided. Otherwise, all fleets in the account are described.
  """
  def describe_fleets(client, input, options \\ []) do
    request(client, "DescribeFleets", input, options)
  end

  @doc """
  Retrieves a list that describes one or more specified image builders, if
  the image builder names are provided. Otherwise, all image builders in the
  account are described.
  """
  def describe_image_builders(client, input, options \\ []) do
    request(client, "DescribeImageBuilders", input, options)
  end

  @doc """
  Retrieves a list that describes the permissions for shared AWS account IDs
  on a private image that you own.
  """
  def describe_image_permissions(client, input, options \\ []) do
    request(client, "DescribeImagePermissions", input, options)
  end

  @doc """
  Retrieves a list that describes one or more specified images, if the image
  names or image ARNs are provided. Otherwise, all images in the account are
  described.
  """
  def describe_images(client, input, options \\ []) do
    request(client, "DescribeImages", input, options)
  end

  @doc """
  Retrieves a list that describes the streaming sessions for a specified
  stack and fleet. If a UserId is provided for the stack and fleet, only
  streaming sessions for that user are described. If an authentication type
  is not provided, the default is to authenticate users using a streaming
  URL.
  """
  def describe_sessions(client, input, options \\ []) do
    request(client, "DescribeSessions", input, options)
  end

  @doc """
  Retrieves a list that describes one or more specified stacks, if the stack
  names are provided. Otherwise, all stacks in the account are described.
  """
  def describe_stacks(client, input, options \\ []) do
    request(client, "DescribeStacks", input, options)
  end

  @doc """
  Retrieves a list that describes one or more usage report subscriptions.
  """
  def describe_usage_report_subscriptions(client, input, options \\ []) do
    request(client, "DescribeUsageReportSubscriptions", input, options)
  end

  @doc """
  Retrieves a list that describes the UserStackAssociation objects. You must
  specify either or both of the following:

  <ul> <li> The stack name

  </li> <li> The user name (email address of the user associated with the
  stack) and the authentication type for the user

  </li> </ul>
  """
  def describe_user_stack_associations(client, input, options \\ []) do
    request(client, "DescribeUserStackAssociations", input, options)
  end

  @doc """
  Retrieves a list that describes one or more specified users in the user
  pool.
  """
  def describe_users(client, input, options \\ []) do
    request(client, "DescribeUsers", input, options)
  end

  @doc """
  Disables the specified user in the user pool. Users can't sign in to
  AppStream 2.0 until they are re-enabled. This action does not delete the
  user.
  """
  def disable_user(client, input, options \\ []) do
    request(client, "DisableUser", input, options)
  end

  @doc """
  Disassociates the specified fleet from the specified stack.
  """
  def disassociate_fleet(client, input, options \\ []) do
    request(client, "DisassociateFleet", input, options)
  end

  @doc """
  Enables a user in the user pool. After being enabled, users can sign in to
  AppStream 2.0 and open applications from the stacks to which they are
  assigned.
  """
  def enable_user(client, input, options \\ []) do
    request(client, "EnableUser", input, options)
  end

  @doc """
  Immediately stops the specified streaming session.
  """
  def expire_session(client, input, options \\ []) do
    request(client, "ExpireSession", input, options)
  end

  @doc """
  Retrieves the name of the fleet that is associated with the specified
  stack.
  """
  def list_associated_fleets(client, input, options \\ []) do
    request(client, "ListAssociatedFleets", input, options)
  end

  @doc """
  Retrieves the name of the stack with which the specified fleet is
  associated.
  """
  def list_associated_stacks(client, input, options \\ []) do
    request(client, "ListAssociatedStacks", input, options)
  end

  @doc """
  Retrieves a list of all tags for the specified AppStream 2.0 resource. You
  can tag AppStream 2.0 image builders, images, fleets, and stacks.

  For more information about tags, see [Tagging Your
  Resources](https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html)
  in the *Amazon AppStream 2.0 Administration Guide*.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Starts the specified fleet.
  """
  def start_fleet(client, input, options \\ []) do
    request(client, "StartFleet", input, options)
  end

  @doc """
  Starts the specified image builder.
  """
  def start_image_builder(client, input, options \\ []) do
    request(client, "StartImageBuilder", input, options)
  end

  @doc """
  Stops the specified fleet.
  """
  def stop_fleet(client, input, options \\ []) do
    request(client, "StopFleet", input, options)
  end

  @doc """
  Stops the specified image builder.
  """
  def stop_image_builder(client, input, options \\ []) do
    request(client, "StopImageBuilder", input, options)
  end

  @doc """
  Adds or overwrites one or more tags for the specified AppStream 2.0
  resource. You can tag AppStream 2.0 image builders, images, fleets, and
  stacks.

  Each tag consists of a key and an optional value. If a resource already has
  a tag with the same key, this operation updates its value.

  To list the current tags for your resources, use `ListTagsForResource`. To
  disassociate tags from your resources, use `UntagResource`.

  For more information about tags, see [Tagging Your
  Resources](https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html)
  in the *Amazon AppStream 2.0 Administration Guide*.
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Disassociates one or more specified tags from the specified AppStream 2.0
  resource.

  To list the current tags for your resources, use `ListTagsForResource`.

  For more information about tags, see [Tagging Your
  Resources](https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html)
  in the *Amazon AppStream 2.0 Administration Guide*.
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Updates the specified Directory Config object in AppStream 2.0. This object
  includes the configuration information required to join fleets and image
  builders to Microsoft Active Directory domains.
  """
  def update_directory_config(client, input, options \\ []) do
    request(client, "UpdateDirectoryConfig", input, options)
  end

  @doc """
  Updates the specified fleet.

  If the fleet is in the `STOPPED` state, you can update any attribute except
  the fleet name. If the fleet is in the `RUNNING` state, you can update the
  `DisplayName`, `ComputeCapacity`, `ImageARN`, `ImageName`,
  `IdleDisconnectTimeoutInSeconds`, and `DisconnectTimeoutInSeconds`
  attributes. If the fleet is in the `STARTING` or `STOPPING` state, you
  can't update it.
  """
  def update_fleet(client, input, options \\ []) do
    request(client, "UpdateFleet", input, options)
  end

  @doc """
  Adds or updates permissions for the specified private image.
  """
  def update_image_permissions(client, input, options \\ []) do
    request(client, "UpdateImagePermissions", input, options)
  end

  @doc """
  Updates the specified fields for the specified stack.
  """
  def update_stack(client, input, options \\ []) do
    request(client, "UpdateStack", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, map() | nil, map()}
          | {:error, map(), map()}
          | {:error, term()}
  defp request(client, action, input, options) do
    client = %{client | service: "appstream"}
    host = build_host("appstream2", client)
    url = build_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "PhotonAdminProxyService.#{action}"}
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
