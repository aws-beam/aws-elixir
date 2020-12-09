# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Directory do
  @moduledoc """
  AWS Directory Service

  AWS Directory Service is a web service that makes it easy for you to setup and
  run directories in the AWS cloud, or connect your AWS resources with an existing
  on-premises Microsoft Active Directory.

  This guide provides detailed information about AWS Directory Service operations,
  data types, parameters, and errors. For information about AWS Directory Services
  features, see [AWS Directory Service](https://aws.amazon.com/directoryservice/) and the [AWS Directory Service Administration
  Guide](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/what_is.html).

  AWS provides SDKs that consist of libraries and sample code for various
  programming languages and platforms (Java, Ruby, .Net, iOS, Android, etc.). The
  SDKs provide a convenient way to create programmatic access to AWS Directory
  Service and other AWS services. For more information about the AWS SDKs,
  including how to download and install them, see [Tools for Amazon Web Services](http://aws.amazon.com/tools/).
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %AWS.ServiceMetadata{
      abbreviation: "Directory Service",
      api_version: "2015-04-16",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "ds",
      global?: false,
      protocol: "json",
      service_id: "Directory Service",
      signature_version: "v4",
      signing_name: "ds",
      target_prefix: "DirectoryService_20150416"
    }
  end

  @doc """
  Accepts a directory sharing request that was sent from the directory owner
  account.
  """
  def accept_shared_directory(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AcceptSharedDirectory", input, options)
  end

  @doc """
  If the DNS server for your on-premises domain uses a publicly addressable IP
  address, you must add a CIDR address block to correctly route traffic to and
  from your Microsoft AD on Amazon Web Services.

  *AddIpRoutes* adds this address block. You can also use *AddIpRoutes* to
  facilitate routing traffic that uses public IP ranges from your Microsoft AD on
  AWS to a peer VPC.

  Before you call *AddIpRoutes*, ensure that all of the required permissions have
  been explicitly granted through a policy. For details about what permissions are
  required to run the *AddIpRoutes* operation, see [AWS Directory Service API Permissions: Actions, Resources, and Conditions
  Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
  """
  def add_ip_routes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddIpRoutes", input, options)
  end

  @doc """
  Adds two domain controllers in the specified Region for the specified directory.
  """
  def add_region(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddRegion", input, options)
  end

  @doc """
  Adds or overwrites one or more tags for the specified directory.

  Each directory can have a maximum of 50 tags. Each tag consists of a key and
  optional value. Tag keys must be unique to each resource.
  """
  def add_tags_to_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "AddTagsToResource", input, options)
  end

  @doc """
  Cancels an in-progress schema extension to a Microsoft AD directory.

  Once a schema extension has started replicating to all domain controllers, the
  task can no longer be canceled. A schema extension can be canceled during any of
  the following states; `Initializing`, `CreatingSnapshot`, and `UpdatingSchema`.
  """
  def cancel_schema_extension(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CancelSchemaExtension", input, options)
  end

  @doc """
  Creates an AD Connector to connect to an on-premises directory.

  Before you call `ConnectDirectory`, ensure that all of the required permissions
  have been explicitly granted through a policy. For details about what
  permissions are required to run the `ConnectDirectory` operation, see [AWS Directory Service API Permissions: Actions, Resources, and Conditions
  Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
  """
  def connect_directory(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ConnectDirectory", input, options)
  end

  @doc """
  Creates an alias for a directory and assigns the alias to the directory.

  The alias is used to construct the access URL for the directory, such as
  `http://<alias>.awsapps.com`.

  After an alias has been created, it cannot be deleted or reused, so this
  operation should only be used when absolutely necessary.
  """
  def create_alias(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateAlias", input, options)
  end

  @doc """
  Creates an Active Directory computer object in the specified directory.
  """
  def create_computer(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateComputer", input, options)
  end

  @doc """
  Creates a conditional forwarder associated with your AWS directory.

  Conditional forwarders are required in order to set up a trust relationship with
  another domain. The conditional forwarder points to the trusted domain.
  """
  def create_conditional_forwarder(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateConditionalForwarder", input, options)
  end

  @doc """
  Creates a Simple AD directory.

  For more information, see [Simple Active Directory](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_simple_ad.html)
  in the *AWS Directory Service Admin Guide*.

  Before you call `CreateDirectory`, ensure that all of the required permissions
  have been explicitly granted through a policy. For details about what
  permissions are required to run the `CreateDirectory` operation, see [AWS Directory Service API Permissions: Actions, Resources, and Conditions
  Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
  """
  def create_directory(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateDirectory", input, options)
  end

  @doc """
  Creates a subscription to forward real-time Directory Service domain controller
  security logs to the specified Amazon CloudWatch log group in your AWS account.
  """
  def create_log_subscription(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateLogSubscription", input, options)
  end

  @doc """
  Creates a Microsoft AD directory in the AWS Cloud.

  For more information, see [AWS Managed Microsoft AD](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_microsoft_ad.html)
  in the *AWS Directory Service Admin Guide*.

  Before you call *CreateMicrosoftAD*, ensure that all of the required permissions
  have been explicitly granted through a policy. For details about what
  permissions are required to run the *CreateMicrosoftAD* operation, see [AWS Directory Service API Permissions: Actions, Resources, and Conditions
  Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
  """
  def create_microsoft_ad(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateMicrosoftAD", input, options)
  end

  @doc """
  Creates a snapshot of a Simple AD or Microsoft AD directory in the AWS cloud.

  You cannot take snapshots of AD Connector directories.
  """
  def create_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateSnapshot", input, options)
  end

  @doc """
  AWS Directory Service for Microsoft Active Directory allows you to configure
  trust relationships.

  For example, you can establish a trust between your AWS Managed Microsoft AD
  directory, and your existing on-premises Microsoft Active Directory. This would
  allow you to provide users and groups access to resources in either domain, with
  a single set of credentials.

  This action initiates the creation of the AWS side of a trust relationship
  between an AWS Managed Microsoft AD directory and an external domain. You can
  create either a forest trust or an external trust.
  """
  def create_trust(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "CreateTrust", input, options)
  end

  @doc """
  Deletes a conditional forwarder that has been set up for your AWS directory.
  """
  def delete_conditional_forwarder(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteConditionalForwarder", input, options)
  end

  @doc """
  Deletes an AWS Directory Service directory.

  Before you call `DeleteDirectory`, ensure that all of the required permissions
  have been explicitly granted through a policy. For details about what
  permissions are required to run the `DeleteDirectory` operation, see [AWS Directory Service API Permissions: Actions, Resources, and Conditions
  Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
  """
  def delete_directory(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteDirectory", input, options)
  end

  @doc """
  Deletes the specified log subscription.
  """
  def delete_log_subscription(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteLogSubscription", input, options)
  end

  @doc """
  Deletes a directory snapshot.
  """
  def delete_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteSnapshot", input, options)
  end

  @doc """
  Deletes an existing trust relationship between your AWS Managed Microsoft AD
  directory and an external domain.
  """
  def delete_trust(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeleteTrust", input, options)
  end

  @doc """
  Deletes from the system the certificate that was registered for a secured LDAP
  connection.
  """
  def deregister_certificate(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeregisterCertificate", input, options)
  end

  @doc """
  Removes the specified directory as a publisher to the specified SNS topic.
  """
  def deregister_event_topic(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DeregisterEventTopic", input, options)
  end

  @doc """
  Displays information about the certificate registered for a secured LDAP
  connection.
  """
  def describe_certificate(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeCertificate", input, options)
  end

  @doc """
  Obtains information about the conditional forwarders for this account.

  If no input parameters are provided for RemoteDomainNames, this request
  describes all conditional forwarders for the specified directory ID.
  """
  def describe_conditional_forwarders(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeConditionalForwarders", input, options)
  end

  @doc """
  Obtains information about the directories that belong to this account.

  You can retrieve information about specific directories by passing the directory
  identifiers in the `DirectoryIds` parameter. Otherwise, all directories that
  belong to the current account are returned.

  This operation supports pagination with the use of the `NextToken` request and
  response parameters. If more results are available, the
  `DescribeDirectoriesResult.NextToken` member contains a token that you pass in
  the next call to `DescribeDirectories` to retrieve the next set of items.

  You can also specify a maximum number of return results with the `Limit`
  parameter.
  """
  def describe_directories(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDirectories", input, options)
  end

  @doc """
  Provides information about any domain controllers in your directory.
  """
  def describe_domain_controllers(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeDomainControllers", input, options)
  end

  @doc """
  Obtains information about which SNS topics receive status messages from the
  specified directory.

  If no input parameters are provided, such as DirectoryId or TopicName, this
  request describes all of the associations in the account.
  """
  def describe_event_topics(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeEventTopics", input, options)
  end

  @doc """
  Describes the status of LDAP security for the specified directory.
  """
  def describe_ldaps_settings(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeLDAPSSettings", input, options)
  end

  @doc """
  Provides information about the Regions that are configured for multi-Region
  replication.
  """
  def describe_regions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeRegions", input, options)
  end

  @doc """
  Returns the shared directories in your account.
  """
  def describe_shared_directories(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeSharedDirectories", input, options)
  end

  @doc """
  Obtains information about the directory snapshots that belong to this account.

  This operation supports pagination with the use of the *NextToken* request and
  response parameters. If more results are available, the
  *DescribeSnapshots.NextToken* member contains a token that you pass in the next
  call to `DescribeSnapshots` to retrieve the next set of items.

  You can also specify a maximum number of return results with the *Limit*
  parameter.
  """
  def describe_snapshots(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeSnapshots", input, options)
  end

  @doc """
  Obtains information about the trust relationships for this account.

  If no input parameters are provided, such as DirectoryId or TrustIds, this
  request describes all the trust relationships belonging to the account.
  """
  def describe_trusts(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DescribeTrusts", input, options)
  end

  @doc """
  Deactivates LDAP secure calls for the specified directory.
  """
  def disable_ldaps(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisableLDAPS", input, options)
  end

  @doc """
  Disables multi-factor authentication (MFA) with the Remote Authentication Dial
  In User Service (RADIUS) server for an AD Connector or Microsoft AD directory.
  """
  def disable_radius(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisableRadius", input, options)
  end

  @doc """
  Disables single-sign on for a directory.
  """
  def disable_sso(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "DisableSso", input, options)
  end

  @doc """
  Activates the switch for the specific directory to always use LDAP secure calls.
  """
  def enable_ldaps(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "EnableLDAPS", input, options)
  end

  @doc """
  Enables multi-factor authentication (MFA) with the Remote Authentication Dial In
  User Service (RADIUS) server for an AD Connector or Microsoft AD directory.
  """
  def enable_radius(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "EnableRadius", input, options)
  end

  @doc """
  Enables single sign-on for a directory.

  Single sign-on allows users in your directory to access certain AWS services
  from a computer joined to the directory without having to enter their
  credentials separately.
  """
  def enable_sso(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "EnableSso", input, options)
  end

  @doc """
  Obtains directory limit information for the current Region.
  """
  def get_directory_limits(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetDirectoryLimits", input, options)
  end

  @doc """
  Obtains the manual snapshot limits for a directory.
  """
  def get_snapshot_limits(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "GetSnapshotLimits", input, options)
  end

  @doc """
  For the specified directory, lists all the certificates registered for a secured
  LDAP connection.
  """
  def list_certificates(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListCertificates", input, options)
  end

  @doc """
  Lists the address blocks that you have added to a directory.
  """
  def list_ip_routes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListIpRoutes", input, options)
  end

  @doc """
  Lists the active log subscriptions for the AWS account.
  """
  def list_log_subscriptions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListLogSubscriptions", input, options)
  end

  @doc """
  Lists all schema extensions applied to a Microsoft AD Directory.
  """
  def list_schema_extensions(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListSchemaExtensions", input, options)
  end

  @doc """
  Lists all tags on a directory.
  """
  def list_tags_for_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ListTagsForResource", input, options)
  end

  @doc """
  Registers a certificate for secured LDAP connection.
  """
  def register_certificate(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RegisterCertificate", input, options)
  end

  @doc """
  Associates a directory with an SNS topic.

  This establishes the directory as a publisher to the specified SNS topic. You
  can then receive email or text (SMS) messages when the status of your directory
  changes. You get notified if your directory goes from an Active status to an
  Impaired or Inoperable status. You also receive a notification when the
  directory returns to an Active status.
  """
  def register_event_topic(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RegisterEventTopic", input, options)
  end

  @doc """
  Rejects a directory sharing request that was sent from the directory owner
  account.
  """
  def reject_shared_directory(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RejectSharedDirectory", input, options)
  end

  @doc """
  Removes IP address blocks from a directory.
  """
  def remove_ip_routes(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RemoveIpRoutes", input, options)
  end

  @doc """
  Stops all replication and removes the domain controllers from the specified
  Region.

  You cannot remove the primary Region with this operation. Instead, use the
  `DeleteDirectory` API.
  """
  def remove_region(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RemoveRegion", input, options)
  end

  @doc """
  Removes tags from a directory.
  """
  def remove_tags_from_resource(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RemoveTagsFromResource", input, options)
  end

  @doc """
  Resets the password for any user in your AWS Managed Microsoft AD or Simple AD
  directory.

  You can reset the password for any user in your directory with the following
  exceptions:

    * For Simple AD, you cannot reset the password for any user that is
  a member of either the **Domain Admins** or **Enterprise Admins** group except
  for the administrator user.

    * For AWS Managed Microsoft AD, you can only reset the password for
  a user that is in an OU based off of the NetBIOS name that you typed when you
  created your directory. For example, you cannot reset the password for a user in
  the **AWS Reserved** OU. For more information about the OU structure for an AWS
  Managed Microsoft AD directory, see [What Gets Created](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ms_ad_getting_started_what_gets_created.html)
  in the *AWS Directory Service Administration Guide*.
  """
  def reset_user_password(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ResetUserPassword", input, options)
  end

  @doc """
  Restores a directory using an existing directory snapshot.

  When you restore a directory from a snapshot, any changes made to the directory
  after the snapshot date are overwritten.

  This action returns as soon as the restore operation is initiated. You can
  monitor the progress of the restore operation by calling the
  `DescribeDirectories` operation with the directory identifier. When the
  **DirectoryDescription.Stage** value changes to `Active`, the restore operation
  is complete.
  """
  def restore_from_snapshot(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "RestoreFromSnapshot", input, options)
  end

  @doc """
  Shares a specified directory (`DirectoryId`) in your AWS account (directory
  owner) with another AWS account (directory consumer).

  With this operation you can use your directory from any AWS account and from any
  Amazon VPC within an AWS Region.

  When you share your AWS Managed Microsoft AD directory, AWS Directory Service
  creates a shared directory in the directory consumer account. This shared
  directory contains the metadata to provide access to the directory within the
  directory owner account. The shared directory is visible in all VPCs in the
  directory consumer account.

  The `ShareMethod` parameter determines whether the specified directory can be
  shared between AWS accounts inside the same AWS organization (`ORGANIZATIONS`).
  It also determines whether you can share the directory with any other AWS
  account either inside or outside of the organization (`HANDSHAKE`).

  The `ShareNotes` parameter is only used when `HANDSHAKE` is called, which sends
  a directory sharing request to the directory consumer.
  """
  def share_directory(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "ShareDirectory", input, options)
  end

  @doc """
  Applies a schema extension to a Microsoft AD directory.
  """
  def start_schema_extension(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "StartSchemaExtension", input, options)
  end

  @doc """
  Stops the directory sharing between the directory owner and consumer accounts.
  """
  def unshare_directory(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UnshareDirectory", input, options)
  end

  @doc """
  Updates a conditional forwarder that has been set up for your AWS directory.
  """
  def update_conditional_forwarder(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateConditionalForwarder", input, options)
  end

  @doc """
  Adds or removes domain controllers to or from the directory.

  Based on the difference between current value and new value (provided through
  this API call), domain controllers will be added or removed. It may take up to
  45 minutes for any new domain controllers to become fully active once the
  requested number of domain controllers is updated. During this time, you cannot
  make another update request.
  """
  def update_number_of_domain_controllers(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateNumberOfDomainControllers", input, options)
  end

  @doc """
  Updates the Remote Authentication Dial In User Service (RADIUS) server
  information for an AD Connector or Microsoft AD directory.
  """
  def update_radius(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateRadius", input, options)
  end

  @doc """
  Updates the trust that has been set up between your AWS Managed Microsoft AD
  directory and an on-premises Active Directory.
  """
  def update_trust(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "UpdateTrust", input, options)
  end

  @doc """
  AWS Directory Service for Microsoft Active Directory allows you to configure and
  verify trust relationships.

  This action verifies a trust relationship between your AWS Managed Microsoft AD
  directory and an external domain.
  """
  def verify_trust(%Client{} = client, input, options \\ []) do
    Request.request_post(client, metadata(), "VerifyTrust", input, options)
  end
end