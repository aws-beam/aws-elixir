# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.WorkSpaces do
  @moduledoc """
  Amazon WorkSpaces Service

  Amazon WorkSpaces enables you to provision virtual, cloud-based Microsoft
  Windows or Amazon Linux desktops for your users, known as *WorkSpaces*.

  WorkSpaces eliminates the need to procure and deploy hardware or install complex
  software. You can quickly add or remove users as your needs change. Users can
  access their virtual desktops from multiple devices or web browsers.

  This API Reference provides detailed information about the actions, data types,
  parameters, and errors of the WorkSpaces service. For more information about the
  supported Amazon Web Services Regions, endpoints, and service quotas of the
  Amazon WorkSpaces service, see [WorkSpaces endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/wsp.html) in the *Amazon
  Web Services General Reference*.

  You can also manage your WorkSpaces resources using the WorkSpaces console,
  Command Line Interface (CLI), and SDKs. For more information about administering
  WorkSpaces, see the [Amazon WorkSpaces Administration Guide](https://docs.aws.amazon.com/workspaces/latest/adminguide/). For more
  information about using the Amazon WorkSpaces client application or web browser
  to access provisioned WorkSpaces, see the [Amazon WorkSpaces User Guide](https://docs.aws.amazon.com/workspaces/latest/userguide/). For more
  information about using the CLI to manage your WorkSpaces resources, see the
  [WorkSpaces section of the CLI Reference](https://docs.aws.amazon.com/cli/latest/reference/workspaces/index.html).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      abbreviation: nil,
      api_version: "2015-04-08",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "workspaces",
      global?: false,
      protocol: "json",
      service_id: "WorkSpaces",
      signature_version: "v4",
      signing_name: "workspaces",
      target_prefix: "WorkspacesService"
    }
  end

  @doc """
  Associates the specified connection alias with the specified directory to enable
  cross-Region redirection.

  For more information, see [ Cross-Region Redirection for Amazon WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).

  Before performing this operation, call [
  DescribeConnectionAliases](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html)
  to make sure that the current state of the connection alias is `CREATED`.
  """
  def associate_connection_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateConnectionAlias", input, options)
  end

  @doc """
  Associates the specified IP access control group with the specified directory.
  """
  def associate_ip_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateIpGroups", input, options)
  end

  @doc """
  Associates the specified application to the specified WorkSpace.
  """
  def associate_workspace_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateWorkspaceApplication", input, options)
  end

  @doc """
  Adds one or more rules to the specified IP access control group.

  This action gives users permission to access their WorkSpaces from the CIDR
  address ranges specified in the rules.
  """
  def authorize_ip_rules(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AuthorizeIpRules", input, options)
  end

  @doc """
  Copies the specified image from the specified Region to the current Region.

  For more information about copying images, see [ Copy a Custom WorkSpaces Image](https://docs.aws.amazon.com/workspaces/latest/adminguide/copy-custom-image.html).

  In the China (Ningxia) Region, you can copy images only within the same Region.

  In Amazon Web Services GovCloud (US), to copy images to and from other Regions,
  contact Amazon Web Services Support.

  Before copying a shared image, be sure to verify that it has been shared from
  the correct Amazon Web Services account. To determine if an image has been
  shared and to see the ID of the Amazon Web Services account that owns an image,
  use the
  [DescribeWorkSpaceImages](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImages.html) and
  [DescribeWorkspaceImagePermissions](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImagePermissions.html)
  API operations.
  """
  def copy_workspace_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CopyWorkspaceImage", input, options)
  end

  @doc """
  Creates a client-add-in for Amazon Connect within a directory.

  You can create only one Amazon Connect client add-in within a directory.

  This client add-in allows WorkSpaces users to seamlessly connect to Amazon
  Connect.
  """
  def create_connect_client_add_in(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateConnectClientAddIn", input, options)
  end

  @doc """
  Creates the specified connection alias for use with cross-Region redirection.

  For more information, see [ Cross-Region Redirection for Amazon WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).
  """
  def create_connection_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateConnectionAlias", input, options)
  end

  @doc """
  Creates an IP access control group.

  An IP access control group provides you with the ability to control the IP
  addresses from which users are allowed to access their WorkSpaces. To specify
  the CIDR address ranges, add rules to your IP access control group and then
  associate the group with your directory. You can add rules when you create the
  group or at any time using `AuthorizeIpRules`.

  There is a default IP access control group associated with your directory. If
  you don't associate an IP access control group with your directory, the default
  group is used. The default group includes a default rule that allows users to
  access their WorkSpaces from anywhere. You cannot modify the default IP access
  control group for your directory.
  """
  def create_ip_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateIpGroup", input, options)
  end

  @doc """
  Creates a standby WorkSpace in a secondary Region.
  """
  def create_standby_workspaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateStandbyWorkspaces", input, options)
  end

  @doc """
  Creates the specified tags for the specified WorkSpaces resource.
  """
  def create_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateTags", input, options)
  end

  @doc """
  Creates a new updated WorkSpace image based on the specified source image.

  The new updated WorkSpace image has the latest drivers and other updates
  required by the Amazon WorkSpaces components.

  To determine which WorkSpace images need to be updated with the latest Amazon
  WorkSpaces requirements, use [
  DescribeWorkspaceImages](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaceImages.html).

     Only Windows 10, Windows Server 2016, and Windows Server 2019
  WorkSpace images can be programmatically updated at this time.

     Microsoft Windows updates and other application updates are not
  included in the update process.

     The source WorkSpace image is not deleted. You can delete the
  source image after you've verified your new updated image and created a new
  bundle.
  """
  def create_updated_workspace_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateUpdatedWorkspaceImage", input, options)
  end

  @doc """
  Creates the specified WorkSpace bundle.

  For more information about creating WorkSpace bundles, see [ Create a Custom WorkSpaces Image and
  Bundle](https://docs.aws.amazon.com/workspaces/latest/adminguide/create-custom-bundle.html).
  """
  def create_workspace_bundle(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateWorkspaceBundle", input, options)
  end

  @doc """
  Creates a new WorkSpace image from an existing WorkSpace.
  """
  def create_workspace_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateWorkspaceImage", input, options)
  end

  @doc """
  Creates one or more WorkSpaces.

  This operation is asynchronous and returns before the WorkSpaces are created.

     The `MANUAL` running mode value is only supported by Amazon
  WorkSpaces Core. Contact your account team to be allow-listed to use this value.
  For more information, see [Amazon WorkSpaces Core](http://aws.amazon.com/workspaces/core/).

     PCoIP is only available for Windows bundles.
  """
  def create_workspaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateWorkspaces", input, options)
  end

  @doc """
  Deletes customized client branding.

  Client branding allows you to customize your WorkSpace's client login portal.
  You can tailor your login portal company logo, the support email address,
  support link, link to reset password, and a custom message for users trying to
  sign in.

  After you delete your customized client branding, your login portal reverts to
  the default client branding.
  """
  def delete_client_branding(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteClientBranding", input, options)
  end

  @doc """
  Deletes a client-add-in for Amazon Connect that is configured within a
  directory.
  """
  def delete_connect_client_add_in(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteConnectClientAddIn", input, options)
  end

  @doc """
  Deletes the specified connection alias.

  For more information, see [ Cross-Region Redirection for Amazon WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).

  **If you will no longer be using a fully qualified domain name (FQDN) as the
  registration code for your WorkSpaces users, you must take certain precautions
  to prevent potential security issues.** For more information, see [ Security Considerations if You Stop Using Cross-Region
  Redirection](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html#cross-region-redirection-security-considerations).

  To delete a connection alias that has been shared, the shared account must first
  disassociate the connection alias from any directories it has been associated
  with. Then you must unshare the connection alias from the account it has been
  shared with. You can delete a connection alias only after it is no longer shared
  with any accounts or associated with any directories.
  """
  def delete_connection_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteConnectionAlias", input, options)
  end

  @doc """
  Deletes the specified IP access control group.

  You cannot delete an IP access control group that is associated with a
  directory.
  """
  def delete_ip_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteIpGroup", input, options)
  end

  @doc """
  Deletes the specified tags from the specified WorkSpaces resource.
  """
  def delete_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteTags", input, options)
  end

  @doc """
  Deletes the specified WorkSpace bundle.

  For more information about deleting WorkSpace bundles, see [ Delete a Custom WorkSpaces Bundle or
  Image](https://docs.aws.amazon.com/workspaces/latest/adminguide/delete_bundle.html).
  """
  def delete_workspace_bundle(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteWorkspaceBundle", input, options)
  end

  @doc """
  Deletes the specified image from your account.

  To delete an image, you must first delete any bundles that are associated with
  the image and unshare the image if it is shared with other accounts.
  """
  def delete_workspace_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteWorkspaceImage", input, options)
  end

  @doc """
  Deploys associated applications to the specified WorkSpace
  """
  def deploy_workspace_applications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeployWorkspaceApplications", input, options)
  end

  @doc """
  Deregisters the specified directory.

  This operation is asynchronous and returns before the WorkSpace directory is
  deregistered. If any WorkSpaces are registered to this directory, you must
  remove them before you can deregister the directory.

  Simple AD and AD Connector are made available to you free of charge to use with
  WorkSpaces. If there are no WorkSpaces being used with your Simple AD or AD
  Connector directory for 30 consecutive days, this directory will be
  automatically deregistered for use with Amazon WorkSpaces, and you will be
  charged for this directory as per the [Directory Service pricing terms](http://aws.amazon.com/directoryservice/pricing/).

  To delete empty directories, see [ Delete the Directory for Your WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/delete-workspaces-directory.html).
  If you delete your Simple AD or AD Connector directory, you can always create a
  new one when you want to start using WorkSpaces again.
  """
  def deregister_workspace_directory(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterWorkspaceDirectory", input, options)
  end

  @doc """
  Retrieves a list that describes the configuration of Bring Your Own License
  (BYOL) for the specified account.
  """
  def describe_account(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAccount", input, options)
  end

  @doc """
  Retrieves a list that describes modifications to the configuration of Bring Your
  Own License (BYOL) for the specified account.
  """
  def describe_account_modifications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAccountModifications", input, options)
  end

  @doc """
  Describes the associations between the application and the specified associated
  resources.
  """
  def describe_application_associations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeApplicationAssociations", input, options)
  end

  @doc """
  Describes the specified applications by filtering based on their compute types,
  license availability, operating systems, and owners.
  """
  def describe_applications(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeApplications", input, options)
  end

  @doc """
  Describes the associations between the applications and the specified bundle.
  """
  def describe_bundle_associations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeBundleAssociations", input, options)
  end

  @doc """
  Describes the specified client branding.

  Client branding allows you to customize the log in page of various device types
  for your users. You can add your company logo, the support email address,
  support link, link to reset password, and a custom message for users trying to
  sign in.

  Only device types that have branding information configured will be shown in the
  response.
  """
  def describe_client_branding(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeClientBranding", input, options)
  end

  @doc """
  Retrieves a list that describes one or more specified Amazon WorkSpaces clients.
  """
  def describe_client_properties(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeClientProperties", input, options)
  end

  @doc """
  Retrieves a list of Amazon Connect client add-ins that have been created.
  """
  def describe_connect_client_add_ins(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeConnectClientAddIns", input, options)
  end

  @doc """
  Describes the permissions that the owner of a connection alias has granted to
  another Amazon Web Services account for the specified connection alias.

  For more information, see [ Cross-Region Redirection for Amazon WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).
  """
  def describe_connection_alias_permissions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeConnectionAliasPermissions", input, options)
  end

  @doc """
  Retrieves a list that describes the connection aliases used for cross-Region
  redirection.

  For more information, see [ Cross-Region Redirection for Amazon WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).
  """
  def describe_connection_aliases(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeConnectionAliases", input, options)
  end

  @doc """
  Describes the associations between the applications and the specified image.
  """
  def describe_image_associations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeImageAssociations", input, options)
  end

  @doc """
  Describes one or more of your IP access control groups.
  """
  def describe_ip_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeIpGroups", input, options)
  end

  @doc """
  Describes the specified tags for the specified WorkSpaces resource.
  """
  def describe_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTags", input, options)
  end

  @doc """
  Describes the associations betweens applications and the specified WorkSpace.
  """
  def describe_workspace_associations(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeWorkspaceAssociations", input, options)
  end

  @doc """
  Retrieves a list that describes the available WorkSpace bundles.

  You can filter the results using either bundle ID or owner, but not both.
  """
  def describe_workspace_bundles(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeWorkspaceBundles", input, options)
  end

  @doc """
  Describes the available directories that are registered with Amazon WorkSpaces.
  """
  def describe_workspace_directories(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeWorkspaceDirectories", input, options)
  end

  @doc """
  Describes the permissions that the owner of an image has granted to other Amazon
  Web Services accounts for an image.
  """
  def describe_workspace_image_permissions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeWorkspaceImagePermissions", input, options)
  end

  @doc """
  Retrieves a list that describes one or more specified images, if the image
  identifiers are provided.

  Otherwise, all images in the account are described.
  """
  def describe_workspace_images(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeWorkspaceImages", input, options)
  end

  @doc """
  Describes the snapshots for the specified WorkSpace.
  """
  def describe_workspace_snapshots(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeWorkspaceSnapshots", input, options)
  end

  @doc """
  Describes the specified WorkSpaces.

  You can filter the results by using the bundle identifier, directory identifier,
  or owner, but you can specify only one filter at a time.
  """
  def describe_workspaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeWorkspaces", input, options)
  end

  @doc """
  Describes the connection status of the specified WorkSpaces.
  """
  def describe_workspaces_connection_status(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeWorkspacesConnectionStatus", input, options)
  end

  @doc """
  Disassociates a connection alias from a directory.

  Disassociating a connection alias disables cross-Region redirection between two
  directories in different Regions. For more information, see [ Cross-Region Redirection for Amazon
  WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).

  Before performing this operation, call [
  DescribeConnectionAliases](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html)
  to make sure that the current state of the connection alias is `CREATED`.
  """
  def disassociate_connection_alias(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateConnectionAlias", input, options)
  end

  @doc """
  Disassociates the specified IP access control group from the specified
  directory.
  """
  def disassociate_ip_groups(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateIpGroups", input, options)
  end

  @doc """
  Disassociates the specified application from a WorkSpace.
  """
  def disassociate_workspace_application(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateWorkspaceApplication", input, options)
  end

  @doc """
  Imports client branding.

  Client branding allows you to customize your WorkSpace's client login portal.
  You can tailor your login portal company logo, the support email address,
  support link, link to reset password, and a custom message for users trying to
  sign in.

  After you import client branding, the default branding experience for the
  specified platform type is replaced with the imported experience

     You must specify at least one platform type when importing client
  branding.

     You can import up to 6 MB of data with each request. If your
  request exceeds this limit, you can import client branding for different
  platform types using separate requests.

     In each platform type, the `SupportEmail` and `SupportLink`
  parameters are mutually exclusive. You can specify only one parameter for each
  platform type, but not both.

     Imported data can take up to a minute to appear in the WorkSpaces
  client.
  """
  def import_client_branding(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportClientBranding", input, options)
  end

  @doc """
  Imports the specified Windows 10 or 11 Bring Your Own License (BYOL) image into
  Amazon WorkSpaces.

  The image must be an already licensed Amazon EC2 image that is in your Amazon
  Web Services account, and you must own the image. For more information about
  creating BYOL images, see [ Bring Your Own Windows Desktop Licenses](https://docs.aws.amazon.com/workspaces/latest/adminguide/byol-windows-images.html).
  """
  def import_workspace_image(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ImportWorkspaceImage", input, options)
  end

  @doc """
  Retrieves a list of IP address ranges, specified as IPv4 CIDR blocks, that you
  can use for the network management interface when you enable Bring Your Own
  License (BYOL).

  This operation can be run only by Amazon Web Services accounts that are enabled
  for BYOL. If your account isn't enabled for BYOL, you'll receive an
  `AccessDeniedException` error.

  The management network interface is connected to a secure Amazon WorkSpaces
  management network. It is used for interactive streaming of the WorkSpace
  desktop to Amazon WorkSpaces clients, and to allow Amazon WorkSpaces to manage
  the WorkSpace.
  """
  def list_available_management_cidr_ranges(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListAvailableManagementCidrRanges", input, options)
  end

  @doc """
  Migrates a WorkSpace from one operating system or bundle type to another, while
  retaining the data on the user volume.

  The migration process recreates the WorkSpace by using a new root volume from
  the target bundle image and the user volume from the last available snapshot of
  the original WorkSpace. During migration, the original `D:\Users\%USERNAME%`
  user profile folder is renamed to
  `D:\Users\%USERNAME%MMddyyTHHmmss%.NotMigrated`. A new `D:\Users\%USERNAME%\`
  folder is generated by the new OS. Certain files in the old user profile are
  moved to the new user profile.

  For available migration scenarios, details about what happens during migration,
  and best practices, see [Migrate a WorkSpace](https://docs.aws.amazon.com/workspaces/latest/adminguide/migrate-workspaces.html).
  """
  def migrate_workspace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "MigrateWorkspace", input, options)
  end

  @doc """
  Modifies the configuration of Bring Your Own License (BYOL) for the specified
  account.
  """
  def modify_account(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyAccount", input, options)
  end

  @doc """
  Modifies the properties of the certificate-based authentication you want to use
  with your WorkSpaces.
  """
  def modify_certificate_based_auth_properties(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyCertificateBasedAuthProperties", input, options)
  end

  @doc """
  Modifies the properties of the specified Amazon WorkSpaces clients.
  """
  def modify_client_properties(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyClientProperties", input, options)
  end

  @doc """
  Modifies multiple properties related to SAML 2.0 authentication, including the
  enablement status, user access URL, and relay state parameter name that are used
  for configuring federation with an SAML 2.0 identity provider.
  """
  def modify_saml_properties(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifySamlProperties", input, options)
  end

  @doc """
  Modifies the self-service WorkSpace management capabilities for your users.

  For more information, see [Enable Self-Service WorkSpace Management Capabilities for Your
  Users](https://docs.aws.amazon.com/workspaces/latest/adminguide/enable-user-self-service-workspace-management.html).
  """
  def modify_selfservice_permissions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifySelfservicePermissions", input, options)
  end

  @doc """
  Specifies which devices and operating systems users can use to access their
  WorkSpaces.

  For more information, see [ Control Device Access](https://docs.aws.amazon.com/workspaces/latest/adminguide/update-directory-details.html#control-device-access).
  """
  def modify_workspace_access_properties(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyWorkspaceAccessProperties", input, options)
  end

  @doc """
  Modify the default properties used to create WorkSpaces.
  """
  def modify_workspace_creation_properties(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyWorkspaceCreationProperties", input, options)
  end

  @doc """
  Modifies the specified WorkSpace properties.

  For important information about how to modify the size of the root and user
  volumes, see [ Modify a WorkSpace](https://docs.aws.amazon.com/workspaces/latest/adminguide/modify-workspaces.html).

  The `MANUAL` running mode value is only supported by Amazon WorkSpaces Core.
  Contact your account team to be allow-listed to use this value. For more
  information, see [Amazon WorkSpaces Core](http://aws.amazon.com/workspaces/core/).
  """
  def modify_workspace_properties(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyWorkspaceProperties", input, options)
  end

  @doc """
  Sets the state of the specified WorkSpace.

  To maintain a WorkSpace without being interrupted, set the WorkSpace state to
  `ADMIN_MAINTENANCE`. WorkSpaces in this state do not respond to requests to
  reboot, stop, start, rebuild, or restore. An AutoStop WorkSpace in this state is
  not stopped. Users cannot log into a WorkSpace in the `ADMIN_MAINTENANCE` state.
  """
  def modify_workspace_state(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ModifyWorkspaceState", input, options)
  end

  @doc """
  Reboots the specified WorkSpaces.

  You cannot reboot a WorkSpace unless its state is `AVAILABLE` or `UNHEALTHY`.

  This operation is asynchronous and returns before the WorkSpaces have rebooted.
  """
  def reboot_workspaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RebootWorkspaces", input, options)
  end

  @doc """
  Rebuilds the specified WorkSpace.

  You cannot rebuild a WorkSpace unless its state is `AVAILABLE`, `ERROR`,
  `UNHEALTHY`, `STOPPED`, or `REBOOTING`.

  Rebuilding a WorkSpace is a potentially destructive action that can result in
  the loss of data. For more information, see [Rebuild a WorkSpace](https://docs.aws.amazon.com/workspaces/latest/adminguide/reset-workspace.html).

  This operation is asynchronous and returns before the WorkSpaces have been
  completely rebuilt.
  """
  def rebuild_workspaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RebuildWorkspaces", input, options)
  end

  @doc """
  Registers the specified directory.

  This operation is asynchronous and returns before the WorkSpace directory is
  registered. If this is the first time you are registering a directory, you will
  need to create the workspaces_DefaultRole role before you can register a
  directory. For more information, see [ Creating the workspaces_DefaultRole Role](https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-access-control.html#create-default-role).
  """
  def register_workspace_directory(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterWorkspaceDirectory", input, options)
  end

  @doc """
  Restores the specified WorkSpace to its last known healthy state.

  You cannot restore a WorkSpace unless its state is ` AVAILABLE`, `ERROR`,
  `UNHEALTHY`, or `STOPPED`.

  Restoring a WorkSpace is a potentially destructive action that can result in the
  loss of data. For more information, see [Restore a WorkSpace](https://docs.aws.amazon.com/workspaces/latest/adminguide/restore-workspace.html).

  This operation is asynchronous and returns before the WorkSpace is completely
  restored.
  """
  def restore_workspace(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RestoreWorkspace", input, options)
  end

  @doc """
  Removes one or more rules from the specified IP access control group.
  """
  def revoke_ip_rules(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RevokeIpRules", input, options)
  end

  @doc """
  Starts the specified WorkSpaces.

  You cannot start a WorkSpace unless it has a running mode of `AutoStop` and a
  state of `STOPPED`.
  """
  def start_workspaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartWorkspaces", input, options)
  end

  @doc """
  Stops the specified WorkSpaces.

  You cannot stop a WorkSpace unless it has a running mode of `AutoStop` and a
  state of `AVAILABLE`, `IMPAIRED`, `UNHEALTHY`, or `ERROR`.
  """
  def stop_workspaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopWorkspaces", input, options)
  end

  @doc """
  Terminates the specified WorkSpaces.

  Terminating a WorkSpace is a permanent action and cannot be undone. The user's
  data is destroyed. If you need to archive any user data, contact Amazon Web
  Services Support before terminating the WorkSpace.

  You can terminate a WorkSpace that is in any state except `SUSPENDED`.

  This operation is asynchronous and returns before the WorkSpaces have been
  completely terminated. After a WorkSpace is terminated, the `TERMINATED` state
  is returned only briefly before the WorkSpace directory metadata is cleaned up,
  so this state is rarely returned. To confirm that a WorkSpace is terminated,
  check for the WorkSpace ID by using [
  DescribeWorkSpaces](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeWorkspaces.html).
  If the WorkSpace ID isn't returned, then the WorkSpace has been successfully
  terminated.

  Simple AD and AD Connector are made available to you free of charge to use with
  WorkSpaces. If there are no WorkSpaces being used with your Simple AD or AD
  Connector directory for 30 consecutive days, this directory will be
  automatically deregistered for use with Amazon WorkSpaces, and you will be
  charged for this directory as per the [Directory Service pricing terms](http://aws.amazon.com/directoryservice/pricing/).

  To delete empty directories, see [ Delete the Directory for Your WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/delete-workspaces-directory.html).
  If you delete your Simple AD or AD Connector directory, you can always create a
  new one when you want to start using WorkSpaces again.
  """
  def terminate_workspaces(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TerminateWorkspaces", input, options)
  end

  @doc """
  Updates a Amazon Connect client add-in.

  Use this action to update the name and endpoint URL of a Amazon Connect client
  add-in.
  """
  def update_connect_client_add_in(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateConnectClientAddIn", input, options)
  end

  @doc """
  Shares or unshares a connection alias with one account by specifying whether
  that account has permission to associate the connection alias with a directory.

  If the association permission is granted, the connection alias is shared with
  that account. If the association permission is revoked, the connection alias is
  unshared with the account. For more information, see [ Cross-Region Redirection for Amazon
  WorkSpaces](https://docs.aws.amazon.com/workspaces/latest/adminguide/cross-region-redirection.html).

     Before performing this operation, call [
  DescribeConnectionAliases](https://docs.aws.amazon.com/workspaces/latest/api/API_DescribeConnectionAliases.html)
  to make sure that the current state of the connection alias is `CREATED`.

     To delete a connection alias that has been shared, the shared
  account must first disassociate the connection alias from any directories it has
  been associated with. Then you must unshare the connection alias from the
  account it has been shared with. You can delete a connection alias only after it
  is no longer shared with any accounts or associated with any directories.
  """
  def update_connection_alias_permission(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateConnectionAliasPermission", input, options)
  end

  @doc """
  Replaces the current rules of the specified IP access control group with the
  specified rules.
  """
  def update_rules_of_ip_group(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRulesOfIpGroup", input, options)
  end

  @doc """
  Updates a WorkSpace bundle with a new image.

  For more information about updating WorkSpace bundles, see [ Update a Custom WorkSpaces
  Bundle](https://docs.aws.amazon.com/workspaces/latest/adminguide/update-custom-bundle.html).

  Existing WorkSpaces aren't automatically updated when you update the bundle that
  they're based on. To update existing WorkSpaces that are based on a bundle that
  you've updated, you must either rebuild the WorkSpaces or delete and recreate
  them.
  """
  def update_workspace_bundle(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateWorkspaceBundle", input, options)
  end

  @doc """
  Shares or unshares an image with one account in the same Amazon Web Services
  Region by specifying whether that account has permission to copy the image.

  If the copy image permission is granted, the image is shared with that account.
  If the copy image permission is revoked, the image is unshared with the account.

  After an image has been shared, the recipient account can copy the image to
  other Regions as needed.

  In the China (Ningxia) Region, you can copy images only within the same Region.

  In Amazon Web Services GovCloud (US), to copy images to and from other Regions,
  contact Amazon Web Services Support.

  For more information about sharing images, see [ Share or Unshare a Custom WorkSpaces
  Image](https://docs.aws.amazon.com/workspaces/latest/adminguide/share-custom-image.html).

     To delete an image that has been shared, you must unshare the image
  before you delete it.

     Sharing Bring Your Own License (BYOL) images across Amazon Web
  Services accounts isn't supported at this time in Amazon Web Services GovCloud
  (US). To share BYOL images across accounts in Amazon Web Services GovCloud (US),
  contact Amazon Web Services Support.
  """
  def update_workspace_image_permission(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateWorkspaceImagePermission", input, options)
  end
end
