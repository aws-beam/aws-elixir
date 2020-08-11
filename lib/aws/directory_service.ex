# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.DirectoryService do
  @moduledoc """
  AWS Directory Service

  AWS Directory Service is a web service that makes it easy for you to setup
  and run directories in the AWS cloud, or connect your AWS resources with an
  existing on-premises Microsoft Active Directory. This guide provides
  detailed information about AWS Directory Service operations, data types,
  parameters, and errors. For information about AWS Directory Services
  features, see [AWS Directory
  Service](https://aws.amazon.com/directoryservice/) and the [AWS Directory
  Service Administration
  Guide](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/what_is.html).

  <note> AWS provides SDKs that consist of libraries and sample code for
  various programming languages and platforms (Java, Ruby, .Net, iOS,
  Android, etc.). The SDKs provide a convenient way to create programmatic
  access to AWS Directory Service and other AWS services. For more
  information about the AWS SDKs, including how to download and install them,
  see [Tools for Amazon Web Services](http://aws.amazon.com/tools/).

  </note>
  """

  @doc """
  Accepts a directory sharing request that was sent from the directory owner
  account.
  """
  def accept_shared_directory(client, input, options \\ []) do
    request(client, "AcceptSharedDirectory", input, options)
  end

  @doc """
  If the DNS server for your on-premises domain uses a publicly addressable
  IP address, you must add a CIDR address block to correctly route traffic to
  and from your Microsoft AD on Amazon Web Services. *AddIpRoutes* adds this
  address block. You can also use *AddIpRoutes* to facilitate routing traffic
  that uses public IP ranges from your Microsoft AD on AWS to a peer VPC.

  Before you call *AddIpRoutes*, ensure that all of the required permissions
  have been explicitly granted through a policy. For details about what
  permissions are required to run the *AddIpRoutes* operation, see [AWS
  Directory Service API Permissions: Actions, Resources, and Conditions
  Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
  """
  def add_ip_routes(client, input, options \\ []) do
    request(client, "AddIpRoutes", input, options)
  end

  @doc """
  Adds or overwrites one or more tags for the specified directory. Each
  directory can have a maximum of 50 tags. Each tag consists of a key and
  optional value. Tag keys must be unique to each resource.
  """
  def add_tags_to_resource(client, input, options \\ []) do
    request(client, "AddTagsToResource", input, options)
  end

  @doc """
  Cancels an in-progress schema extension to a Microsoft AD directory. Once a
  schema extension has started replicating to all domain controllers, the
  task can no longer be canceled. A schema extension can be canceled during
  any of the following states; `Initializing`, `CreatingSnapshot`, and
  `UpdatingSchema`.
  """
  def cancel_schema_extension(client, input, options \\ []) do
    request(client, "CancelSchemaExtension", input, options)
  end

  @doc """
  Creates an AD Connector to connect to an on-premises directory.

  Before you call `ConnectDirectory`, ensure that all of the required
  permissions have been explicitly granted through a policy. For details
  about what permissions are required to run the `ConnectDirectory`
  operation, see [AWS Directory Service API Permissions: Actions, Resources,
  and Conditions
  Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
  """
  def connect_directory(client, input, options \\ []) do
    request(client, "ConnectDirectory", input, options)
  end

  @doc """
  Creates an alias for a directory and assigns the alias to the directory.
  The alias is used to construct the access URL for the directory, such as
  `http://&lt;alias&gt;.awsapps.com`.

  <important> After an alias has been created, it cannot be deleted or
  reused, so this operation should only be used when absolutely necessary.

  </important>
  """
  def create_alias(client, input, options \\ []) do
    request(client, "CreateAlias", input, options)
  end

  @doc """
  Creates a computer account in the specified directory, and joins the
  computer to the directory.
  """
  def create_computer(client, input, options \\ []) do
    request(client, "CreateComputer", input, options)
  end

  @doc """
  Creates a conditional forwarder associated with your AWS directory.
  Conditional forwarders are required in order to set up a trust relationship
  with another domain. The conditional forwarder points to the trusted
  domain.
  """
  def create_conditional_forwarder(client, input, options \\ []) do
    request(client, "CreateConditionalForwarder", input, options)
  end

  @doc """
  Creates a Simple AD directory. For more information, see [Simple Active
  Directory](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_simple_ad.html)
  in the *AWS Directory Service Admin Guide*.

  Before you call `CreateDirectory`, ensure that all of the required
  permissions have been explicitly granted through a policy. For details
  about what permissions are required to run the `CreateDirectory` operation,
  see [AWS Directory Service API Permissions: Actions, Resources, and
  Conditions
  Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
  """
  def create_directory(client, input, options \\ []) do
    request(client, "CreateDirectory", input, options)
  end

  @doc """
  Creates a subscription to forward real-time Directory Service domain
  controller security logs to the specified Amazon CloudWatch log group in
  your AWS account.
  """
  def create_log_subscription(client, input, options \\ []) do
    request(client, "CreateLogSubscription", input, options)
  end

  @doc """
  Creates a Microsoft AD directory in the AWS Cloud. For more information,
  see [AWS Managed Microsoft
  AD](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/directory_microsoft_ad.html)
  in the *AWS Directory Service Admin Guide*.

  Before you call *CreateMicrosoftAD*, ensure that all of the required
  permissions have been explicitly granted through a policy. For details
  about what permissions are required to run the *CreateMicrosoftAD*
  operation, see [AWS Directory Service API Permissions: Actions, Resources,
  and Conditions
  Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
  """
  def create_microsoft_a_d(client, input, options \\ []) do
    request(client, "CreateMicrosoftAD", input, options)
  end

  @doc """
  Creates a snapshot of a Simple AD or Microsoft AD directory in the AWS
  cloud.

  <note> You cannot take snapshots of AD Connector directories.

  </note>
  """
  def create_snapshot(client, input, options \\ []) do
    request(client, "CreateSnapshot", input, options)
  end

  @doc """
  AWS Directory Service for Microsoft Active Directory allows you to
  configure trust relationships. For example, you can establish a trust
  between your AWS Managed Microsoft AD directory, and your existing
  on-premises Microsoft Active Directory. This would allow you to provide
  users and groups access to resources in either domain, with a single set of
  credentials.

  This action initiates the creation of the AWS side of a trust relationship
  between an AWS Managed Microsoft AD directory and an external domain. You
  can create either a forest trust or an external trust.
  """
  def create_trust(client, input, options \\ []) do
    request(client, "CreateTrust", input, options)
  end

  @doc """
  Deletes a conditional forwarder that has been set up for your AWS
  directory.
  """
  def delete_conditional_forwarder(client, input, options \\ []) do
    request(client, "DeleteConditionalForwarder", input, options)
  end

  @doc """
  Deletes an AWS Directory Service directory.

  Before you call `DeleteDirectory`, ensure that all of the required
  permissions have been explicitly granted through a policy. For details
  about what permissions are required to run the `DeleteDirectory` operation,
  see [AWS Directory Service API Permissions: Actions, Resources, and
  Conditions
  Reference](http://docs.aws.amazon.com/directoryservice/latest/admin-guide/UsingWithDS_IAM_ResourcePermissions.html).
  """
  def delete_directory(client, input, options \\ []) do
    request(client, "DeleteDirectory", input, options)
  end

  @doc """
  Deletes the specified log subscription.
  """
  def delete_log_subscription(client, input, options \\ []) do
    request(client, "DeleteLogSubscription", input, options)
  end

  @doc """
  Deletes a directory snapshot.
  """
  def delete_snapshot(client, input, options \\ []) do
    request(client, "DeleteSnapshot", input, options)
  end

  @doc """
  Deletes an existing trust relationship between your AWS Managed Microsoft
  AD directory and an external domain.
  """
  def delete_trust(client, input, options \\ []) do
    request(client, "DeleteTrust", input, options)
  end

  @doc """
  Deletes from the system the certificate that was registered for a secured
  LDAP connection.
  """
  def deregister_certificate(client, input, options \\ []) do
    request(client, "DeregisterCertificate", input, options)
  end

  @doc """
  Removes the specified directory as a publisher to the specified SNS topic.
  """
  def deregister_event_topic(client, input, options \\ []) do
    request(client, "DeregisterEventTopic", input, options)
  end

  @doc """
  Displays information about the certificate registered for a secured LDAP
  connection.
  """
  def describe_certificate(client, input, options \\ []) do
    request(client, "DescribeCertificate", input, options)
  end

  @doc """
  Obtains information about the conditional forwarders for this account.

  If no input parameters are provided for RemoteDomainNames, this request
  describes all conditional forwarders for the specified directory ID.
  """
  def describe_conditional_forwarders(client, input, options \\ []) do
    request(client, "DescribeConditionalForwarders", input, options)
  end

  @doc """
  Obtains information about the directories that belong to this account.

  You can retrieve information about specific directories by passing the
  directory identifiers in the `DirectoryIds` parameter. Otherwise, all
  directories that belong to the current account are returned.

  This operation supports pagination with the use of the `NextToken` request
  and response parameters. If more results are available, the
  `DescribeDirectoriesResult.NextToken` member contains a token that you pass
  in the next call to `DescribeDirectories` to retrieve the next set of
  items.

  You can also specify a maximum number of return results with the `Limit`
  parameter.
  """
  def describe_directories(client, input, options \\ []) do
    request(client, "DescribeDirectories", input, options)
  end

  @doc """
  Provides information about any domain controllers in your directory.
  """
  def describe_domain_controllers(client, input, options \\ []) do
    request(client, "DescribeDomainControllers", input, options)
  end

  @doc """
  Obtains information about which SNS topics receive status messages from the
  specified directory.

  If no input parameters are provided, such as DirectoryId or TopicName, this
  request describes all of the associations in the account.
  """
  def describe_event_topics(client, input, options \\ []) do
    request(client, "DescribeEventTopics", input, options)
  end

  @doc """
  Describes the status of LDAP security for the specified directory.
  """
  def describe_l_d_a_p_s_settings(client, input, options \\ []) do
    request(client, "DescribeLDAPSSettings", input, options)
  end

  @doc """
  Returns the shared directories in your account.
  """
  def describe_shared_directories(client, input, options \\ []) do
    request(client, "DescribeSharedDirectories", input, options)
  end

  @doc """
  Obtains information about the directory snapshots that belong to this
  account.

  This operation supports pagination with the use of the *NextToken* request
  and response parameters. If more results are available, the
  *DescribeSnapshots.NextToken* member contains a token that you pass in the
  next call to `DescribeSnapshots` to retrieve the next set of items.

  You can also specify a maximum number of return results with the *Limit*
  parameter.
  """
  def describe_snapshots(client, input, options \\ []) do
    request(client, "DescribeSnapshots", input, options)
  end

  @doc """
  Obtains information about the trust relationships for this account.

  If no input parameters are provided, such as DirectoryId or TrustIds, this
  request describes all the trust relationships belonging to the account.
  """
  def describe_trusts(client, input, options \\ []) do
    request(client, "DescribeTrusts", input, options)
  end

  @doc """
  Deactivates LDAP secure calls for the specified directory.
  """
  def disable_l_d_a_p_s(client, input, options \\ []) do
    request(client, "DisableLDAPS", input, options)
  end

  @doc """
  Disables multi-factor authentication (MFA) with the Remote Authentication
  Dial In User Service (RADIUS) server for an AD Connector or Microsoft AD
  directory.
  """
  def disable_radius(client, input, options \\ []) do
    request(client, "DisableRadius", input, options)
  end

  @doc """
  Disables single-sign on for a directory.
  """
  def disable_sso(client, input, options \\ []) do
    request(client, "DisableSso", input, options)
  end

  @doc """
  Activates the switch for the specific directory to always use LDAP secure
  calls.
  """
  def enable_l_d_a_p_s(client, input, options \\ []) do
    request(client, "EnableLDAPS", input, options)
  end

  @doc """
  Enables multi-factor authentication (MFA) with the Remote Authentication
  Dial In User Service (RADIUS) server for an AD Connector or Microsoft AD
  directory.
  """
  def enable_radius(client, input, options \\ []) do
    request(client, "EnableRadius", input, options)
  end

  @doc """
  Enables single sign-on for a directory. Single sign-on allows users in your
  directory to access certain AWS services from a computer joined to the
  directory without having to enter their credentials separately.
  """
  def enable_sso(client, input, options \\ []) do
    request(client, "EnableSso", input, options)
  end

  @doc """
  Obtains directory limit information for the current Region.
  """
  def get_directory_limits(client, input, options \\ []) do
    request(client, "GetDirectoryLimits", input, options)
  end

  @doc """
  Obtains the manual snapshot limits for a directory.
  """
  def get_snapshot_limits(client, input, options \\ []) do
    request(client, "GetSnapshotLimits", input, options)
  end

  @doc """
  For the specified directory, lists all the certificates registered for a
  secured LDAP connection.
  """
  def list_certificates(client, input, options \\ []) do
    request(client, "ListCertificates", input, options)
  end

  @doc """
  Lists the address blocks that you have added to a directory.
  """
  def list_ip_routes(client, input, options \\ []) do
    request(client, "ListIpRoutes", input, options)
  end

  @doc """
  Lists the active log subscriptions for the AWS account.
  """
  def list_log_subscriptions(client, input, options \\ []) do
    request(client, "ListLogSubscriptions", input, options)
  end

  @doc """
  Lists all schema extensions applied to a Microsoft AD Directory.
  """
  def list_schema_extensions(client, input, options \\ []) do
    request(client, "ListSchemaExtensions", input, options)
  end

  @doc """
  Lists all tags on a directory.
  """
  def list_tags_for_resource(client, input, options \\ []) do
    request(client, "ListTagsForResource", input, options)
  end

  @doc """
  Registers a certificate for secured LDAP connection.
  """
  def register_certificate(client, input, options \\ []) do
    request(client, "RegisterCertificate", input, options)
  end

  @doc """
  Associates a directory with an SNS topic. This establishes the directory as
  a publisher to the specified SNS topic. You can then receive email or text
  (SMS) messages when the status of your directory changes. You get notified
  if your directory goes from an Active status to an Impaired or Inoperable
  status. You also receive a notification when the directory returns to an
  Active status.
  """
  def register_event_topic(client, input, options \\ []) do
    request(client, "RegisterEventTopic", input, options)
  end

  @doc """
  Rejects a directory sharing request that was sent from the directory owner
  account.
  """
  def reject_shared_directory(client, input, options \\ []) do
    request(client, "RejectSharedDirectory", input, options)
  end

  @doc """
  Removes IP address blocks from a directory.
  """
  def remove_ip_routes(client, input, options \\ []) do
    request(client, "RemoveIpRoutes", input, options)
  end

  @doc """
  Removes tags from a directory.
  """
  def remove_tags_from_resource(client, input, options \\ []) do
    request(client, "RemoveTagsFromResource", input, options)
  end

  @doc """
  Resets the password for any user in your AWS Managed Microsoft AD or Simple
  AD directory.

  You can reset the password for any user in your directory with the
  following exceptions:

  <ul> <li> For Simple AD, you cannot reset the password for any user that is
  a member of either the **Domain Admins** or **Enterprise Admins** group
  except for the administrator user.

  </li> <li> For AWS Managed Microsoft AD, you can only reset the password
  for a user that is in an OU based off of the NetBIOS name that you typed
  when you created your directory. For example, you cannot reset the password
  for a user in the **AWS Reserved** OU. For more information about the OU
  structure for an AWS Managed Microsoft AD directory, see [What Gets
  Created](https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ms_ad_getting_started_what_gets_created.html)
  in the *AWS Directory Service Administration Guide*.

  </li> </ul>
  """
  def reset_user_password(client, input, options \\ []) do
    request(client, "ResetUserPassword", input, options)
  end

  @doc """
  Restores a directory using an existing directory snapshot.

  When you restore a directory from a snapshot, any changes made to the
  directory after the snapshot date are overwritten.

  This action returns as soon as the restore operation is initiated. You can
  monitor the progress of the restore operation by calling the
  `DescribeDirectories` operation with the directory identifier. When the
  **DirectoryDescription.Stage** value changes to `Active`, the restore
  operation is complete.
  """
  def restore_from_snapshot(client, input, options \\ []) do
    request(client, "RestoreFromSnapshot", input, options)
  end

  @doc """
  Shares a specified directory (`DirectoryId`) in your AWS account (directory
  owner) with another AWS account (directory consumer). With this operation
  you can use your directory from any AWS account and from any Amazon VPC
  within an AWS Region.

  When you share your AWS Managed Microsoft AD directory, AWS Directory
  Service creates a shared directory in the directory consumer account. This
  shared directory contains the metadata to provide access to the directory
  within the directory owner account. The shared directory is visible in all
  VPCs in the directory consumer account.

  The `ShareMethod` parameter determines whether the specified directory can
  be shared between AWS accounts inside the same AWS organization
  (`ORGANIZATIONS`). It also determines whether you can share the directory
  with any other AWS account either inside or outside of the organization
  (`HANDSHAKE`).

  The `ShareNotes` parameter is only used when `HANDSHAKE` is called, which
  sends a directory sharing request to the directory consumer.
  """
  def share_directory(client, input, options \\ []) do
    request(client, "ShareDirectory", input, options)
  end

  @doc """
  Applies a schema extension to a Microsoft AD directory.
  """
  def start_schema_extension(client, input, options \\ []) do
    request(client, "StartSchemaExtension", input, options)
  end

  @doc """
  Stops the directory sharing between the directory owner and consumer
  accounts.
  """
  def unshare_directory(client, input, options \\ []) do
    request(client, "UnshareDirectory", input, options)
  end

  @doc """
  Updates a conditional forwarder that has been set up for your AWS
  directory.
  """
  def update_conditional_forwarder(client, input, options \\ []) do
    request(client, "UpdateConditionalForwarder", input, options)
  end

  @doc """
  Adds or removes domain controllers to or from the directory. Based on the
  difference between current value and new value (provided through this API
  call), domain controllers will be added or removed. It may take up to 45
  minutes for any new domain controllers to become fully active once the
  requested number of domain controllers is updated. During this time, you
  cannot make another update request.
  """
  def update_number_of_domain_controllers(client, input, options \\ []) do
    request(client, "UpdateNumberOfDomainControllers", input, options)
  end

  @doc """
  Updates the Remote Authentication Dial In User Service (RADIUS) server
  information for an AD Connector or Microsoft AD directory.
  """
  def update_radius(client, input, options \\ []) do
    request(client, "UpdateRadius", input, options)
  end

  @doc """
  Updates the trust that has been set up between your AWS Managed Microsoft
  AD directory and an on-premises Active Directory.
  """
  def update_trust(client, input, options \\ []) do
    request(client, "UpdateTrust", input, options)
  end

  @doc """
  AWS Directory Service for Microsoft Active Directory allows you to
  configure and verify trust relationships.

  This action verifies a trust relationship between your AWS Managed
  Microsoft AD directory and an external domain.
  """
  def verify_trust(client, input, options \\ []) do
    request(client, "VerifyTrust", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, action, input, options) do
    client = %{client | service: "ds"}
    host = get_host("ds", client)
    url = get_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "DirectoryService_20150416.#{action}"}
    ]

    payload = Poison.Encoder.encode(input, %{})
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)

    case HTTPoison.post(url, payload, headers, options) do
      {:ok, %HTTPoison.Response{status_code: 200, body: ""} = response} ->
        {:ok, nil, response}

      {:ok, %HTTPoison.Response{status_code: 200, body: body} = response} ->
        {:ok, Poison.Parser.parse!(body, %{}), response}

      {:ok, %HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body, %{})
        exception = error["__type"]
        message = error["message"]
        {:error, {exception, message}}

      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp get_host(_endpoint_prefix, %{region: "local"}) do
    "localhost"
  end
  defp get_host(endpoint_prefix, %{region: region, endpoint: endpoint}) do
    "#{endpoint_prefix}.#{region}.#{endpoint}"
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end
end
