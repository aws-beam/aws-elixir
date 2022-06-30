# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.AppStream do
  @moduledoc """
  Amazon AppStream 2.0

  This is the *Amazon AppStream 2.0 API Reference*.

  This documentation provides descriptions and syntax for each of the actions and
  data types in AppStream 2.0. AppStream 2.0 is a fully managed, secure
  application streaming service that lets you stream desktop applications to users
  without rewriting applications. AppStream 2.0 manages the AWS resources that are
  required to host and run your applications, scales automatically, and provides
  access to your users on demand.

  You can call the AppStream 2.0 API operations by using an interface VPC endpoint
  (interface endpoint). For more information, see [Access AppStream 2.0 API Operations and CLI Commands Through an Interface VPC
  Endpoint](https://docs.aws.amazon.com/appstream2/latest/developerguide/access-api-cli-through-interface-vpc-endpoint.html)
  in the *Amazon AppStream 2.0 Administration Guide*.

  To learn more about AppStream 2.0, see the following resources:

    * [Amazon AppStream 2.0 product page](http://aws.amazon.com/appstream2)

    * [Amazon AppStream 2.0 documentation](http://aws.amazon.com/documentation/appstream2)
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: nil,
      api_version: "2016-12-01",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "appstream2",
      global?: false,
      protocol: "json",
      service_id: "AppStream",
      signature_version: "v4",
      signing_name: "appstream",
      target_prefix: "PhotonAdminProxyService"
    }
  end

  @doc """
  Associates the specified application with the specified fleet.

  This is only supported for Elastic fleets.
  """
  def associate_application_fleet(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateApplicationFleet", input, options)
  end

  @doc """
  Associates an application to entitle.
  """
  def associate_application_to_entitlement(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateApplicationToEntitlement", input, options)
  end

  @doc """
  Associates the specified fleet with the specified stack.
  """
  def associate_fleet(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AssociateFleet", input, options)
  end

  @doc """
  Associates the specified users with the specified stacks.

  Users in a user pool cannot be assigned to stacks with fleets that are joined to
  an Active Directory domain.
  """
  def batch_associate_user_stack(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchAssociateUserStack", input, options)
  end

  @doc """
  Disassociates the specified users from the specified stacks.
  """
  def batch_disassociate_user_stack(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "BatchDisassociateUserStack", input, options)
  end

  @doc """
  Copies the image within the same region or to a new region within the same AWS
  account.

  Note that any tags you added to the image will not be copied.
  """
  def copy_image(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CopyImage", input, options)
  end

  @doc """
  Creates an app block.

  App blocks are an Amazon AppStream 2.0 resource that stores the details about
  the virtual hard disk in an S3 bucket. It also stores the setup script with
  details about how to mount the virtual hard disk. The virtual hard disk includes
  the application binaries and other files necessary to launch your applications.
  Multiple applications can be assigned to a single app block.

  This is only supported for Elastic fleets.
  """
  def create_app_block(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateAppBlock", input, options)
  end

  @doc """
  Creates an application.

  Applications are an Amazon AppStream 2.0 resource that stores the details about
  how to launch applications on Elastic fleet streaming instances. An application
  consists of the launch details, icon, and display name. Applications are
  associated with an app block that contains the application binaries and other
  files. The applications assigned to an Elastic fleet are the applications users
  can launch.

  This is only supported for Elastic fleets.
  """
  def create_application(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateApplication", input, options)
  end

  @doc """
  Creates a Directory Config object in AppStream 2.0.

  This object includes the configuration information required to join fleets and
  image builders to Microsoft Active Directory domains.
  """
  def create_directory_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDirectoryConfig", input, options)
  end

  @doc """
  Creates a new entitlement.

  Entitlements control access to specific applications within a stack, based on
  user attributes. Entitlements apply to SAML 2.0 federated user identities.
  Amazon AppStream 2.0 user pool and streaming URL users are entitled to all
  applications in a stack. Entitlements don't apply to the desktop stream view
  application, or to applications managed by a dynamic app provider using the
  Dynamic Application Framework.
  """
  def create_entitlement(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateEntitlement", input, options)
  end

  @doc """
  Creates a fleet.

  A fleet consists of streaming instances that run a specified image when using
  Always-On or On-Demand.
  """
  def create_fleet(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateFleet", input, options)
  end

  @doc """
  Creates an image builder.

  An image builder is a virtual machine that is used to create an image.

  The initial state of the builder is `PENDING`. When it is ready, the state is
  `RUNNING`.
  """
  def create_image_builder(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateImageBuilder", input, options)
  end

  @doc """
  Creates a URL to start an image builder streaming session.
  """
  def create_image_builder_streaming_url(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateImageBuilderStreamingURL", input, options)
  end

  @doc """
  Creates a stack to start streaming applications to users.

  A stack consists of an associated fleet, user access policies, and storage
  configurations.
  """
  def create_stack(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateStack", input, options)
  end

  @doc """
  Creates a temporary URL to start an AppStream 2.0 streaming session for the
  specified user.

  A streaming URL enables application streaming to be tested without user setup.
  """
  def create_streaming_url(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateStreamingURL", input, options)
  end

  @doc """
  Creates a new image with the latest Windows operating system updates, driver
  updates, and AppStream 2.0 agent software.

  For more information, see the "Update an Image by Using Managed AppStream 2.0
  Image Updates" section in [Administer Your AppStream 2.0 Images](https://docs.aws.amazon.com/appstream2/latest/developerguide/administer-images.html),
  in the *Amazon AppStream 2.0 Administration Guide*.
  """
  def create_updated_image(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateUpdatedImage", input, options)
  end

  @doc """
  Creates a usage report subscription.

  Usage reports are generated daily.
  """
  def create_usage_report_subscription(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateUsageReportSubscription", input, options)
  end

  @doc """
  Creates a new user in the user pool.
  """
  def create_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateUser", input, options)
  end

  @doc """
  Deletes an app block.
  """
  def delete_app_block(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteAppBlock", input, options)
  end

  @doc """
  Deletes an application.
  """
  def delete_application(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteApplication", input, options)
  end

  @doc """
  Deletes the specified Directory Config object from AppStream 2.0.

  This object includes the information required to join streaming instances to an
  Active Directory domain.
  """
  def delete_directory_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDirectoryConfig", input, options)
  end

  @doc """
  Deletes the specified entitlement.
  """
  def delete_entitlement(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteEntitlement", input, options)
  end

  @doc """
  Deletes the specified fleet.
  """
  def delete_fleet(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteFleet", input, options)
  end

  @doc """
  Deletes the specified image.

  You cannot delete an image when it is in use. After you delete an image, you
  cannot provision new capacity using the image.
  """
  def delete_image(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteImage", input, options)
  end

  @doc """
  Deletes the specified image builder and releases the capacity.
  """
  def delete_image_builder(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteImageBuilder", input, options)
  end

  @doc """
  Deletes permissions for the specified private image.

  After you delete permissions for an image, AWS accounts to which you previously
  granted these permissions can no longer use the image.
  """
  def delete_image_permissions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteImagePermissions", input, options)
  end

  @doc """
  Deletes the specified stack.

  After the stack is deleted, the application streaming environment provided by
  the stack is no longer available to users. Also, any reservations made for
  application streaming sessions for the stack are released.
  """
  def delete_stack(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteStack", input, options)
  end

  @doc """
  Disables usage report generation.
  """
  def delete_usage_report_subscription(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteUsageReportSubscription", input, options)
  end

  @doc """
  Deletes a user from the user pool.
  """
  def delete_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteUser", input, options)
  end

  @doc """
  Retrieves a list that describes one or more app blocks.
  """
  def describe_app_blocks(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeAppBlocks", input, options)
  end

  @doc """
  Retrieves a list that describes one or more application fleet associations.

  Either ApplicationArn or FleetName must be specified.
  """
  def describe_application_fleet_associations(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DescribeApplicationFleetAssociations",
      input,
      options
    )
  end

  @doc """
  Retrieves a list that describes one or more applications.
  """
  def describe_applications(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeApplications", input, options)
  end

  @doc """
  Retrieves a list that describes one or more specified Directory Config objects
  for AppStream 2.0, if the names for these objects are provided.

  Otherwise, all Directory Config objects in the account are described. These
  objects include the configuration information required to join fleets and image
  builders to Microsoft Active Directory domains.

  Although the response syntax in this topic includes the account password, this
  password is not returned in the actual response.
  """
  def describe_directory_configs(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDirectoryConfigs", input, options)
  end

  @doc """
  Retrieves a list that describes one of more entitlements.
  """
  def describe_entitlements(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEntitlements", input, options)
  end

  @doc """
  Retrieves a list that describes one or more specified fleets, if the fleet names
  are provided.

  Otherwise, all fleets in the account are described.
  """
  def describe_fleets(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeFleets", input, options)
  end

  @doc """
  Retrieves a list that describes one or more specified image builders, if the
  image builder names are provided.

  Otherwise, all image builders in the account are described.
  """
  def describe_image_builders(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeImageBuilders", input, options)
  end

  @doc """
  Retrieves a list that describes the permissions for shared AWS account IDs on a
  private image that you own.
  """
  def describe_image_permissions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeImagePermissions", input, options)
  end

  @doc """
  Retrieves a list that describes one or more specified images, if the image names
  or image ARNs are provided.

  Otherwise, all images in the account are described.
  """
  def describe_images(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeImages", input, options)
  end

  @doc """
  Retrieves a list that describes the streaming sessions for a specified stack and
  fleet.

  If a UserId is provided for the stack and fleet, only streaming sessions for
  that user are described. If an authentication type is not provided, the default
  is to authenticate users using a streaming URL.
  """
  def describe_sessions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeSessions", input, options)
  end

  @doc """
  Retrieves a list that describes one or more specified stacks, if the stack names
  are provided.

  Otherwise, all stacks in the account are described.
  """
  def describe_stacks(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeStacks", input, options)
  end

  @doc """
  Retrieves a list that describes one or more usage report subscriptions.
  """
  def describe_usage_report_subscriptions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeUsageReportSubscriptions", input, options)
  end

  @doc """
  Retrieves a list that describes the UserStackAssociation objects.

  You must specify either or both of the following:

    * The stack name

    * The user name (email address of the user associated with the
  stack) and the authentication type for the user
  """
  def describe_user_stack_associations(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeUserStackAssociations", input, options)
  end

  @doc """
  Retrieves a list that describes one or more specified users in the user pool.
  """
  def describe_users(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeUsers", input, options)
  end

  @doc """
  Disables the specified user in the user pool.

  Users can't sign in to AppStream 2.0 until they are re-enabled. This action does
  not delete the user.
  """
  def disable_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisableUser", input, options)
  end

  @doc """
  Disassociates the specified application from the fleet.
  """
  def disassociate_application_fleet(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateApplicationFleet", input, options)
  end

  @doc """
  Deletes the specified application from the specified entitlement.
  """
  def disassociate_application_from_entitlement(%Client{} = client, input, options \\ []) do
    Request.request_post(
      client,
      metadata(),
      "DisassociateApplicationFromEntitlement",
      input,
      options
    )
  end

  @doc """
  Disassociates the specified fleet from the specified stack.
  """
  def disassociate_fleet(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisassociateFleet", input, options)
  end

  @doc """
  Enables a user in the user pool.

  After being enabled, users can sign in to AppStream 2.0 and open applications
  from the stacks to which they are assigned.
  """
  def enable_user(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "EnableUser", input, options)
  end

  @doc """
  Immediately stops the specified streaming session.
  """
  def expire_session(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ExpireSession", input, options)
  end

  @doc """
  Retrieves the name of the fleet that is associated with the specified stack.
  """
  def list_associated_fleets(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAssociatedFleets", input, options)
  end

  @doc """
  Retrieves the name of the stack with which the specified fleet is associated.
  """
  def list_associated_stacks(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListAssociatedStacks", input, options)
  end

  @doc """
  Retrieves a list of entitled applications.
  """
  def list_entitled_applications(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListEntitledApplications", input, options)
  end

  @doc """
  Retrieves a list of all tags for the specified AppStream 2.0 resource.

  You can tag AppStream 2.0 image builders, images, fleets, and stacks.

  For more information about tags, see [Tagging Your Resources](https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html)
  in the *Amazon AppStream 2.0 Administration Guide*.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Starts the specified fleet.
  """
  def start_fleet(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartFleet", input, options)
  end

  @doc """
  Starts the specified image builder.
  """
  def start_image_builder(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartImageBuilder", input, options)
  end

  @doc """
  Stops the specified fleet.
  """
  def stop_fleet(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopFleet", input, options)
  end

  @doc """
  Stops the specified image builder.
  """
  def stop_image_builder(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StopImageBuilder", input, options)
  end

  @doc """
  Adds or overwrites one or more tags for the specified AppStream 2.0 resource.

  You can tag AppStream 2.0 image builders, images, fleets, and stacks.

  Each tag consists of a key and an optional value. If a resource already has a
  tag with the same key, this operation updates its value.

  To list the current tags for your resources, use `ListTagsForResource`. To
  disassociate tags from your resources, use `UntagResource`.

  For more information about tags, see [Tagging Your Resources](https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html)
  in the *Amazon AppStream 2.0 Administration Guide*.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "TagResource", input, options)
  end

  @doc """
  Disassociates one or more specified tags from the specified AppStream 2.0
  resource.

  To list the current tags for your resources, use `ListTagsForResource`.

  For more information about tags, see [Tagging Your Resources](https://docs.aws.amazon.com/appstream2/latest/developerguide/tagging-basic.html)
  in the *Amazon AppStream 2.0 Administration Guide*.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UntagResource", input, options)
  end

  @doc """
  Updates the specified application.
  """
  def update_application(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateApplication", input, options)
  end

  @doc """
  Updates the specified Directory Config object in AppStream 2.0.

  This object includes the configuration information required to join fleets and
  image builders to Microsoft Active Directory domains.
  """
  def update_directory_config(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateDirectoryConfig", input, options)
  end

  @doc """
  Updates the specified entitlement.
  """
  def update_entitlement(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateEntitlement", input, options)
  end

  @doc """
  Updates the specified fleet.

  If the fleet is in the `STOPPED` state, you can update any attribute except the
  fleet name.

  If the fleet is in the `RUNNING` state, you can update the following based on
  the fleet type:

    * Always-On and On-Demand fleet types

  You can update the `DisplayName`, `ComputeCapacity`, `ImageARN`, `ImageName`,
  `IdleDisconnectTimeoutInSeconds`, and `DisconnectTimeoutInSeconds` attributes.

    * Elastic fleet type

  You can update the `DisplayName`, `IdleDisconnectTimeoutInSeconds`,
  `DisconnectTimeoutInSeconds`, `MaxConcurrentSessions`, `SessionScriptS3Location`
  and `UsbDeviceFilterStrings` attributes.

  If the fleet is in the `STARTING` or `STOPPED` state, you can't update it.
  """
  def update_fleet(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateFleet", input, options)
  end

  @doc """
  Adds or updates permissions for the specified private image.
  """
  def update_image_permissions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateImagePermissions", input, options)
  end

  @doc """
  Updates the specified fields for the specified stack.
  """
  def update_stack(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateStack", input, options)
  end
end
