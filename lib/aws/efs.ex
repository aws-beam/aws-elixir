# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.EFS do
  @moduledoc """
  Amazon Elastic File System
  """

  @doc """
  Creates a new, empty file system. The operation requires a creation token
  in the request that Amazon EFS uses to ensure idempotent creation (calling
  the operation with same creation token has no effect). If a file system
  does not currently exist that is owned by the caller's AWS account with the
  specified creation token, this operation does the following:

  <ul> <li>Creates a new, empty file system. The file system will have an
  Amazon EFS assigned ID, and an initial lifecycle state "creating". </li>
  <li> Returns with the description of the created file system. </li> </ul>
  Otherwise, this operation returns a `FileSystemAlreadyExists` error with
  the ID of the existing file system.

  <note>For basic use cases, you can use a randomly generated UUID for the
  creation token.</note> The idempotent operation allows you to retry a
  `CreateFileSystem` call without risk of creating an extra file system. This
  can happen when an initial call fails in a way that leaves it uncertain
  whether or not a file system was actually created. An example might be that
  a transport level timeout occurred or your connection was reset. As long as
  you use the same creation token, if the initial call had succeeded in
  creating a file system, the client can learn of its existence from the
  `FileSystemAlreadyExists` error.

  <note>The `CreateFileSystem` call returns while the file system's lifecycle
  state is still "creating". You can check the file system creation status by
  calling the `DescribeFileSystems` API, which among other things returns the
  file system state.</note> After the file system is fully created, Amazon
  EFS sets its lifecycle state to "available", at which point you can create
  one or more mount targets for the file system (`CreateMountTarget`) in your
  VPC. You mount your Amazon EFS file system on an EC2 instances in your VPC
  via the mount target. For more information, see [Amazon EFS: How it
  Works](http://docs.aws.amazon.com/efs/latest/ug/how-it-works.html)

  This operation requires permission for the
  `elasticfilesystem:CreateFileSystem` action.
  """
  def create_file_system(client, input, options \\ []) do
    url = "/2015-02-01/file-systems"
    headers = []
    request(client, :post, url, headers, input, options, 201)
  end

  @doc """
  Creates a mount target for a file system. You can then mount the file
  system on EC2 instances via the mount target.

  You can create one mount target in each Availability Zone in your VPC. All
  EC2 instances in a VPC within a given Availability Zone share a single
  mount target for a given file system. If you have multiple subnets in an
  Availability Zone, you create a mount target in one of the subnets. EC2
  instances do not need to be in the same subnet as the mount target in order
  to access their file system. For more information, see [Amazon EFS: How it
  Works](http://docs.aws.amazon.com/efs/latest/ug/how-it-works.html).

  In the request, you also specify a file system ID for which you are
  creating the mount target and the file system's lifecycle state must be
  "available" (see `DescribeFileSystems`).

  In the request, you also provide a subnet ID, which serves several
  purposes:

  <ul> <li>It determines the VPC in which Amazon EFS creates the mount
  target.</li> <li>It determines the Availability Zone in which Amazon EFS
  creates the mount target. </li> <li>It determines the IP address range from
  which Amazon EFS selects the IP address of the mount target if you don't
  specify an IP address in the request. </li> </ul> After creating the mount
  target, Amazon EFS returns a response that includes, a `MountTargetId` and
  an `IpAddress`. You use this IP address when mounting the file system in an
  EC2 instance. You can also use the mount target's DNS name when mounting
  the file system. The EC2 instance on which you mount the file system via
  the mount target can resolve the mount target's DNS name to its IP address.
  For more information, see [How it Works: Implementation
  Overview](http://docs.aws.amazon.com/efs/latest/ug/how-it-works.html#how-it-works-implementation).

  Note that you can create mount targets for a file system in only one VPC,
  and there can be only one mount target per Availability Zone. That is, if
  the file system already has one or more mount targets created for it, the
  request to add another mount target must meet the following requirements:

  <ul> <li> The subnet specified in the request must belong to the same VPC
  as the subnets of the existing mount targets.

  </li> <li>The subnet specified in the request must not be in the same
  Availability Zone as any of the subnets of the existing mount targets.</li>
  </ul> If the request satisfies the requirements, Amazon EFS does the
  following:

  <ul> <li>Creates a new mount target in the specified subnet. </li> <li>Also
  creates a new network interface in the subnet as follows: <ul> <li>If the
  request provides an `IpAddress`, Amazon EFS assigns that IP address to the
  network interface. Otherwise, Amazon EFS assigns a free address in the
  subnet (in the same way that the Amazon EC2 `CreateNetworkInterface` call
  does when a request does not specify a primary private IP address).</li>
  <li>If the request provides `SecurityGroups`, this network interface is
  associated with those security groups. Otherwise, it belongs to the default
  security group for the subnet's VPC.</li> <li>Assigns the description
  `"Mount target *fsmt-id* for file system *fs-id*"` where `*fsmt-id*` is the
  mount target ID, and `*fs-id*` is the `FileSystemId`.</li> <li>Sets the
  `requesterManaged` property of the network interface to "true", and the
  `requesterId` value to "EFS".</li> </ul> Each Amazon EFS mount target has
  one corresponding requestor-managed EC2 network interface. After the
  network interface is created, Amazon EFS sets the `NetworkInterfaceId`
  field in the mount target's description to the network interface ID, and
  the `IpAddress` field to its address. If network interface creation fails,
  the entire `CreateMountTarget` operation fails.

  </li> </ul> <note>The `CreateMountTarget` call returns only after creating
  the network interface, but while the mount target state is still
  "creating". You can check the mount target creation status by calling the
  `DescribeFileSystems` API, which among other things returns the mount
  target state.</note> We recommend you create a mount target in each of the
  Availability Zones. There are cost considerations for using a file system
  in an Availability Zone through a mount target created in another
  Availability Zone. For more information, go to [Amazon
  EFS](http://aws.amazon.com/efs/) product detail page. In addition, by
  always using a mount target local to the instance's Availability Zone, you
  eliminate a partial failure scenario; if the Availability Zone in which
  your mount target is created goes down, then you won't be able to access
  your file system through that mount target.

  This operation requires permission for the following action on the file
  system:

  <ul> <li> `elasticfilesystem:CreateMountTarget` </li> </ul> This operation
  also requires permission for the following Amazon EC2 actions:

  <ul> <li> `ec2:DescribeSubnets` </li> <li> `ec2:DescribeNetworkInterfaces`
  </li> <li> `ec2:CreateNetworkInterface` </li> </ul>
  """
  def create_mount_target(client, input, options \\ []) do
    url = "/2015-02-01/mount-targets"
    headers = []
    request(client, :post, url, headers, input, options, 200)
  end

  @doc """
  Creates or overwrites tags associated with a file system. Each tag is a
  key-value pair. If a tag key specified in the request already exists on the
  file system, this operation overwrites its value with the value provided in
  the request. If you add the "Name" tag to your file system, Amazon EFS
  returns it in the response to the `DescribeFileSystems` API.

  This operation requires permission for the `elasticfilesystem:CreateTags`
  action.
  """
  def create_tags(client, file_system_id, input, options \\ []) do
    url = "/2015-02-01/create-tags/#{URI.encode(file_system_id)}"
    headers = []
    request(client, :post, url, headers, input, options, 204)
  end

  @doc """
  Deletes a file system, permanently severing access to its contents. Upon
  return, the file system no longer exists and you will not be able to access
  any contents of the deleted file system.

  You cannot delete a file system that is in use. That is, if the file system
  has any mount targets, you must first delete them. For more information,
  see `DescribeMountTargets` and `DeleteMountTarget`.

  <note>The `DeleteFileSystem` call returns while the file system state is
  still "deleting". You can check the file system deletion status by calling
  the `DescribeFileSystems` API, which returns a list of file systems in your
  account. If you pass file system ID or creation token for the deleted file
  system, the `DescribeFileSystems` will return a 404 "FileSystemNotFound"
  error.</note> This operation requires permission for the
  `elasticfilesystem:DeleteFileSystem` action.
  """
  def delete_file_system(client, file_system_id, input, options \\ []) do
    url = "/2015-02-01/file-systems/#{URI.encode(file_system_id)}"
    headers = []
    request(client, :delete, url, headers, input, options, 204)
  end

  @doc """
  Deletes the specified mount target.

  This operation forcibly breaks any mounts of the file system via the mount
  target being deleted, which might disrupt instances or applications using
  those mounts. To avoid applications getting cut off abruptly, you might
  consider unmounting any mounts of the mount target, if feasible. The
  operation also deletes the associated network interface. Uncommitted writes
  may be lost, but breaking a mount target using this operation does not
  corrupt the file system itself. The file system you created remains. You
  can mount an EC2 instance in your VPC using another mount target.

  This operation requires permission for the following action on the file
  system:

  <ul> <li> `elasticfilesystem:DeleteMountTarget` </li> </ul> <note>The
  `DeleteMountTarget` call returns while the mount target state is still
  "deleting". You can check the mount target deletion by calling the
  `DescribeMountTargets` API, which returns a list of mount target
  descriptions for the given file system. </note> The operation also requires
  permission for the following Amazon EC2 action on the mount target's
  network interface:

  <ul> <li> `ec2:DeleteNetworkInterface` </li> </ul>
  """
  def delete_mount_target(client, mount_target_id, input, options \\ []) do
    url = "/2015-02-01/mount-targets/#{URI.encode(mount_target_id)}"
    headers = []
    request(client, :delete, url, headers, input, options, 204)
  end

  @doc """
  Deletes the specified tags from a file system. If the `DeleteTags` request
  includes a tag key that does not exist, Amazon EFS ignores it; it is not an
  error. For more information about tags and related restrictions, go to [Tag
  Restrictions](http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html)
  in the *AWS Billing and Cost Management User Guide*.

  This operation requires permission for the `elasticfilesystem:DeleteTags`
  action.
  """
  def delete_tags(client, file_system_id, input, options \\ []) do
    url = "/2015-02-01/delete-tags/#{URI.encode(file_system_id)}"
    headers = []
    request(client, :post, url, headers, input, options, 204)
  end

  @doc """
  Returns the description of a specific Amazon EFS file system if either the
  file system `CreationToken` or the `FileSystemId` is provided; otherwise,
  returns descriptions of all file systems owned by the caller's AWS account
  in the AWS region of the endpoint that you're calling.

  When retrieving all file system descriptions, you can optionally specify
  the `MaxItems` parameter to limit the number of descriptions in a response.
  If more file system descriptions remain, Amazon EFS returns a `NextMarker`,
  an opaque token, in the response. In this case, you should send a
  subsequent request with the `Marker` request parameter set to the value of
  `NextMarker`.

  So to retrieve a list of your file system descriptions, the expected usage
  of this API is an iterative process of first calling `DescribeFileSystems`
  without the `Marker` and then continuing to call it with the `Marker`
  parameter set to the value of the `NextMarker` from the previous response
  until the response has no `NextMarker`.

  Note that the implementation may return fewer than `MaxItems` file system
  descriptions while still including a `NextMarker` value.

  The order of file systems returned in the response of one
  `DescribeFileSystems` call, and the order of file systems returned across
  the responses of a multi-call iteration, is unspecified.

  This operation requires permission for the
  `elasticfilesystem:DescribeFileSystems` action.
  """
  def describe_file_systems(client, options \\ []) do
    url = "/2015-02-01/file-systems"
    headers = []
    request(client, :get, url, headers, nil, options, 200)
  end

  @doc """
  Returns the security groups currently in effect for a mount target. This
  operation requires that the network interface of the mount target has been
  created and the life cycle state of the mount target is not "deleted".

  This operation requires permissions for the following actions:

  <ul> <li> `elasticfilesystem:DescribeMountTargetSecurityGroups` action on
  the mount target's file system. </li> <li>
  `ec2:DescribeNetworkInterfaceAttribute` action on the mount target's
  network interface. </li> </ul>
  """
  def describe_mount_target_security_groups(client, mount_target_id, options \\ []) do
    url = "/2015-02-01/mount-targets/#{URI.encode(mount_target_id)}/security-groups"
    headers = []
    request(client, :get, url, headers, nil, options, 200)
  end

  @doc """
  Returns the descriptions of all the current mount targets, or a specific
  mount target, for a file system. When requesting all of the current mount
  targets, the order of mount targets returned in the response is
  unspecified.

  This operation requires permission for the
  `elasticfilesystem:DescribeMountTargets` action, on either the file system
  id that you specify in `FileSystemId`, or on the file system of the mount
  target that you specify in `MountTargetId`.
  """
  def describe_mount_targets(client, options \\ []) do
    url = "/2015-02-01/mount-targets"
    headers = []
    request(client, :get, url, headers, nil, options, 200)
  end

  @doc """
  Returns the tags associated with a file system. The order of tags returned
  in the response of one `DescribeTags` call, and the order of tags returned
  across the responses of a multi-call iteration (when using pagination), is
  unspecified.

  This operation requires permission for the `elasticfilesystem:DescribeTags`
  action.
  """
  def describe_tags(client, file_system_id, options \\ []) do
    url = "/2015-02-01/tags/#{URI.encode(file_system_id)}/"
    headers = []
    request(client, :get, url, headers, nil, options, 200)
  end

  @doc """
  Modifies the set of security groups in effect for a mount target.

  When you create a mount target, Amazon EFS also creates a new network
  interface (see `CreateMountTarget`). This operation replaces the security
  groups in effect for the network interface associated with a mount target,
  with the `SecurityGroups` provided in the request. This operation requires
  that the network interface of the mount target has been created and the
  life cycle state of the mount target is not "deleted".

  The operation requires permissions for the following actions:

  <ul> <li> `elasticfilesystem:ModifyMountTargetSecurityGroups` action on the
  mount target's file system. </li> <li>
  `ec2:ModifyNetworkInterfaceAttribute` action on the mount target's network
  interface. </li> </ul>
  """
  def modify_mount_target_security_groups(client, mount_target_id, input, options \\ []) do
    url = "/2015-02-01/mount-targets/#{URI.encode(mount_target_id)}/security-groups"
    headers = []
    request(client, :put, url, headers, input, options, 204)
  end

  defp request(client, method, url, headers, input, options, success_status_code) do
    client = %{client | service: "elasticfilesystem"}
    host = "elasticfilesystem.#{client.region}.#{client.endpoint}"
    url = "https://#{host}#{url}"
    headers = Enum.concat([{"Host", host},
                           {"Content-Type", "application/x-amz-json-1.1"}],
                          headers)
    payload = encode_payload(input)
    headers = AWS.Request.sign_v4(client, method, url, headers, payload)
    perform_request(method, url, payload, headers, options, success_status_code)
  end

  defp perform_request(method, url, payload, headers, options, nil) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, response=%HTTPoison.Response{status_code: 202, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, response=%HTTPoison.Response{status_code: 204, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["message"]
        {:error, reason}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp perform_request(method, url, payload, headers, options, success_status_code) do
    case HTTPoison.request(method, url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: ^success_status_code, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        reason = Poison.Parser.parse!(body)["message"]
        {:error, reason}
      {:error, %HTTPoison.Error{reason: reason}} ->
        {:error, %HTTPoison.Error{reason: reason}}
    end
  end

  defp encode_payload(input) do
    if input != nil do
      Poison.Encoder.encode(input, [])
    else
      ""
    end
  end
end
