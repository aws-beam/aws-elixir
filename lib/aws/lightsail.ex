# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.Lightsail do
  @moduledoc """
  Amazon Lightsail is the easiest way to get started with AWS for developers
  who just need virtual private servers. Lightsail includes everything you
  need to launch your project quickly - a virtual machine, a managed
  database, SSD-based storage, data transfer, DNS management, and a static IP
  - for a low, predictable price. You manage those Lightsail servers through
  the Lightsail console or by using the API or command-line interface (CLI).

  For more information about Lightsail concepts and tasks, see the [Lightsail
  Dev Guide](https://lightsail.aws.amazon.com/ls/docs/all).

  To use the Lightsail API or the CLI, you will need to use AWS Identity and
  Access Management (IAM) to generate access keys. For details about how to
  set this up, see the [Lightsail Dev
  Guide](http://lightsail.aws.amazon.com/ls/docs/how-to/article/lightsail-how-to-set-up-access-keys-to-use-sdk-api-cli).
  """

  @doc """
  Allocates a static IP address.
  """
  def allocate_static_ip(client, input, options \\ []) do
    request(client, "AllocateStaticIp", input, options)
  end

  @doc """
  Attaches a block storage disk to a running or stopped Lightsail instance
  and exposes it to the instance with the specified disk name.

  The `attach disk` operation supports tag-based access control via resource
  tags applied to the resource identified by `disk name`. For more
  information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def attach_disk(client, input, options \\ []) do
    request(client, "AttachDisk", input, options)
  end

  @doc """
  Attaches one or more Lightsail instances to a load balancer.

  After some time, the instances are attached to the load balancer and the
  health check status is available.

  The `attach instances to load balancer` operation supports tag-based access
  control via resource tags applied to the resource identified by `load
  balancer name`. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def attach_instances_to_load_balancer(client, input, options \\ []) do
    request(client, "AttachInstancesToLoadBalancer", input, options)
  end

  @doc """
  Attaches a Transport Layer Security (TLS) certificate to your load
  balancer. TLS is just an updated, more secure version of Secure Socket
  Layer (SSL).

  Once you create and validate your certificate, you can attach it to your
  load balancer. You can also use this API to rotate the certificates on your
  account. Use the `attach load balancer tls certificate` operation with the
  non-attached certificate, and it will replace the existing one and become
  the attached certificate.

  The `attach load balancer tls certificate` operation supports tag-based
  access control via resource tags applied to the resource identified by
  `load balancer name`. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def attach_load_balancer_tls_certificate(client, input, options \\ []) do
    request(client, "AttachLoadBalancerTlsCertificate", input, options)
  end

  @doc """
  Attaches a static IP address to a specific Amazon Lightsail instance.
  """
  def attach_static_ip(client, input, options \\ []) do
    request(client, "AttachStaticIp", input, options)
  end

  @doc """
  Closes the public ports on a specific Amazon Lightsail instance.

  The `close instance public ports` operation supports tag-based access
  control via resource tags applied to the resource identified by `instance
  name`. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def close_instance_public_ports(client, input, options \\ []) do
    request(client, "CloseInstancePublicPorts", input, options)
  end

  @doc """
  Copies a manual instance or disk snapshot as another manual snapshot, or
  copies an automatic instance or disk snapshot as a manual snapshot. This
  operation can also be used to copy a manual or automatic snapshot of an
  instance or a disk from one AWS Region to another in Amazon Lightsail.

  When copying a *manual snapshot*, be sure to define the `source region`,
  `source snapshot name`, and `target snapshot name` parameters.

  When copying an *automatic snapshot*, be sure to define the `source
  region`, `source resource name`, `target snapshot name`, and either the
  `restore date` or the `use latest restorable auto snapshot` parameters.

  <note> Database snapshots cannot be copied at this time.

  </note>
  """
  def copy_snapshot(client, input, options \\ []) do
    request(client, "CopySnapshot", input, options)
  end

  @doc """
  Creates an AWS CloudFormation stack, which creates a new Amazon EC2
  instance from an exported Amazon Lightsail snapshot. This operation results
  in a CloudFormation stack record that can be used to track the AWS
  CloudFormation stack created. Use the `get cloud formation stack records`
  operation to get a list of the CloudFormation stacks created.

  <important> Wait until after your new Amazon EC2 instance is created before
  running the `create cloud formation stack` operation again with the same
  export snapshot record.

  </important>
  """
  def create_cloud_formation_stack(client, input, options \\ []) do
    request(client, "CreateCloudFormationStack", input, options)
  end

  @doc """
  Creates a block storage disk that can be attached to an Amazon Lightsail
  instance in the same Availability Zone (e.g., `us-east-2a`).

  The `create disk` operation supports tag-based access control via request
  tags. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def create_disk(client, input, options \\ []) do
    request(client, "CreateDisk", input, options)
  end

  @doc """
  Creates a block storage disk from a manual or automatic snapshot of a disk.
  The resulting disk can be attached to an Amazon Lightsail instance in the
  same Availability Zone (e.g., `us-east-2a`).

  The `create disk from snapshot` operation supports tag-based access control
  via request tags and resource tags applied to the resource identified by
  `disk snapshot name`. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def create_disk_from_snapshot(client, input, options \\ []) do
    request(client, "CreateDiskFromSnapshot", input, options)
  end

  @doc """
  Creates a snapshot of a block storage disk. You can use snapshots for
  backups, to make copies of disks, and to save data before shutting down a
  Lightsail instance.

  You can take a snapshot of an attached disk that is in use; however,
  snapshots only capture data that has been written to your disk at the time
  the snapshot command is issued. This may exclude any data that has been
  cached by any applications or the operating system. If you can pause any
  file systems on the disk long enough to take a snapshot, your snapshot
  should be complete. Nevertheless, if you cannot pause all file writes to
  the disk, you should unmount the disk from within the Lightsail instance,
  issue the create disk snapshot command, and then remount the disk to ensure
  a consistent and complete snapshot. You may remount and use your disk while
  the snapshot status is pending.

  You can also use this operation to create a snapshot of an instance's
  system volume. You might want to do this, for example, to recover data from
  the system volume of a botched instance or to create a backup of the system
  volume like you would for a block storage disk. To create a snapshot of a
  system volume, just define the `instance name` parameter when issuing the
  snapshot command, and a snapshot of the defined instance's system volume
  will be created. After the snapshot is available, you can create a block
  storage disk from the snapshot and attach it to a running instance to
  access the data on the disk.

  The `create disk snapshot` operation supports tag-based access control via
  request tags. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def create_disk_snapshot(client, input, options \\ []) do
    request(client, "CreateDiskSnapshot", input, options)
  end

  @doc """
  Creates a domain resource for the specified domain (e.g., example.com).

  The `create domain` operation supports tag-based access control via request
  tags. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def create_domain(client, input, options \\ []) do
    request(client, "CreateDomain", input, options)
  end

  @doc """
  Creates one of the following entry records associated with the domain:
  Address (A), canonical name (CNAME), mail exchanger (MX), name server (NS),
  start of authority (SOA), service locator (SRV), or text (TXT).

  The `create domain entry` operation supports tag-based access control via
  resource tags applied to the resource identified by `domain name`. For more
  information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def create_domain_entry(client, input, options \\ []) do
    request(client, "CreateDomainEntry", input, options)
  end

  @doc """
  Creates a snapshot of a specific virtual private server, or *instance*. You
  can use a snapshot to create a new instance that is based on that snapshot.

  The `create instance snapshot` operation supports tag-based access control
  via request tags. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def create_instance_snapshot(client, input, options \\ []) do
    request(client, "CreateInstanceSnapshot", input, options)
  end

  @doc """
  Creates one or more Amazon Lightsail instances.

  The `create instances` operation supports tag-based access control via
  request tags. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def create_instances(client, input, options \\ []) do
    request(client, "CreateInstances", input, options)
  end

  @doc """
  Creates one or more new instances from a manual or automatic snapshot of an
  instance.

  The `create instances from snapshot` operation supports tag-based access
  control via request tags and resource tags applied to the resource
  identified by `instance snapshot name`. For more information, see the
  [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def create_instances_from_snapshot(client, input, options \\ []) do
    request(client, "CreateInstancesFromSnapshot", input, options)
  end

  @doc """
  Creates an SSH key pair.

  The `create key pair` operation supports tag-based access control via
  request tags. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def create_key_pair(client, input, options \\ []) do
    request(client, "CreateKeyPair", input, options)
  end

  @doc """
  Creates a Lightsail load balancer. To learn more about deciding whether to
  load balance your application, see [Configure your Lightsail instances for
  load
  balancing](https://lightsail.aws.amazon.com/ls/docs/how-to/article/configure-lightsail-instances-for-load-balancing).
  You can create up to 5 load balancers per AWS Region in your account.

  When you create a load balancer, you can specify a unique name and port
  settings. To change additional load balancer settings, use the
  `UpdateLoadBalancerAttribute` operation.

  The `create load balancer` operation supports tag-based access control via
  request tags. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def create_load_balancer(client, input, options \\ []) do
    request(client, "CreateLoadBalancer", input, options)
  end

  @doc """
  Creates a Lightsail load balancer TLS certificate.

  TLS is just an updated, more secure version of Secure Socket Layer (SSL).

  The `create load balancer tls certificate` operation supports tag-based
  access control via resource tags applied to the resource identified by
  `load balancer name`. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def create_load_balancer_tls_certificate(client, input, options \\ []) do
    request(client, "CreateLoadBalancerTlsCertificate", input, options)
  end

  @doc """
  Creates a new database in Amazon Lightsail.

  The `create relational database` operation supports tag-based access
  control via request tags. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def create_relational_database(client, input, options \\ []) do
    request(client, "CreateRelationalDatabase", input, options)
  end

  @doc """
  Creates a new database from an existing database snapshot in Amazon
  Lightsail.

  You can create a new database from a snapshot in if something goes wrong
  with your original database, or to change it to a different plan, such as a
  high availability or standard plan.

  The `create relational database from snapshot` operation supports tag-based
  access control via request tags and resource tags applied to the resource
  identified by relationalDatabaseSnapshotName. For more information, see the
  [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def create_relational_database_from_snapshot(client, input, options \\ []) do
    request(client, "CreateRelationalDatabaseFromSnapshot", input, options)
  end

  @doc """
  Creates a snapshot of your database in Amazon Lightsail. You can use
  snapshots for backups, to make copies of a database, and to save data
  before deleting a database.

  The `create relational database snapshot` operation supports tag-based
  access control via request tags. For more information, see the [Lightsail
  Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def create_relational_database_snapshot(client, input, options \\ []) do
    request(client, "CreateRelationalDatabaseSnapshot", input, options)
  end

  @doc """
  Deletes an automatic snapshot for an instance or disk.
  """
  def delete_auto_snapshot(client, input, options \\ []) do
    request(client, "DeleteAutoSnapshot", input, options)
  end

  @doc """
  Deletes the specified block storage disk. The disk must be in the
  `available` state (not attached to a Lightsail instance).

  <note> The disk may remain in the `deleting` state for several minutes.

  </note> The `delete disk` operation supports tag-based access control via
  resource tags applied to the resource identified by `disk name`. For more
  information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def delete_disk(client, input, options \\ []) do
    request(client, "DeleteDisk", input, options)
  end

  @doc """
  Deletes the specified disk snapshot.

  When you make periodic snapshots of a disk, the snapshots are incremental,
  and only the blocks on the device that have changed since your last
  snapshot are saved in the new snapshot. When you delete a snapshot, only
  the data not needed for any other snapshot is removed. So regardless of
  which prior snapshots have been deleted, all active snapshots will have
  access to all the information needed to restore the disk.

  The `delete disk snapshot` operation supports tag-based access control via
  resource tags applied to the resource identified by `disk snapshot name`.
  For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def delete_disk_snapshot(client, input, options \\ []) do
    request(client, "DeleteDiskSnapshot", input, options)
  end

  @doc """
  Deletes the specified domain recordset and all of its domain records.

  The `delete domain` operation supports tag-based access control via
  resource tags applied to the resource identified by `domain name`. For more
  information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def delete_domain(client, input, options \\ []) do
    request(client, "DeleteDomain", input, options)
  end

  @doc """
  Deletes a specific domain entry.

  The `delete domain entry` operation supports tag-based access control via
  resource tags applied to the resource identified by `domain name`. For more
  information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def delete_domain_entry(client, input, options \\ []) do
    request(client, "DeleteDomainEntry", input, options)
  end

  @doc """
  Deletes an Amazon Lightsail instance.

  The `delete instance` operation supports tag-based access control via
  resource tags applied to the resource identified by `instance name`. For
  more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def delete_instance(client, input, options \\ []) do
    request(client, "DeleteInstance", input, options)
  end

  @doc """
  Deletes a specific snapshot of a virtual private server (or *instance*).

  The `delete instance snapshot` operation supports tag-based access control
  via resource tags applied to the resource identified by `instance snapshot
  name`. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def delete_instance_snapshot(client, input, options \\ []) do
    request(client, "DeleteInstanceSnapshot", input, options)
  end

  @doc """
  Deletes a specific SSH key pair.

  The `delete key pair` operation supports tag-based access control via
  resource tags applied to the resource identified by `key pair name`. For
  more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def delete_key_pair(client, input, options \\ []) do
    request(client, "DeleteKeyPair", input, options)
  end

  @doc """
  Deletes the known host key or certificate used by the Amazon Lightsail
  browser-based SSH or RDP clients to authenticate an instance. This
  operation enables the Lightsail browser-based SSH or RDP clients to connect
  to the instance after a host key mismatch.

  <important> Perform this operation only if you were expecting the host key
  or certificate mismatch or if you are familiar with the new host key or
  certificate on the instance. For more information, see [Troubleshooting
  connection issues when using the Amazon Lightsail browser-based SSH or RDP
  client](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-troubleshooting-browser-based-ssh-rdp-client-connection).

  </important>
  """
  def delete_known_host_keys(client, input, options \\ []) do
    request(client, "DeleteKnownHostKeys", input, options)
  end

  @doc """
  Deletes a Lightsail load balancer and all its associated SSL/TLS
  certificates. Once the load balancer is deleted, you will need to create a
  new load balancer, create a new certificate, and verify domain ownership
  again.

  The `delete load balancer` operation supports tag-based access control via
  resource tags applied to the resource identified by `load balancer name`.
  For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def delete_load_balancer(client, input, options \\ []) do
    request(client, "DeleteLoadBalancer", input, options)
  end

  @doc """
  Deletes an SSL/TLS certificate associated with a Lightsail load balancer.

  The `delete load balancer tls certificate` operation supports tag-based
  access control via resource tags applied to the resource identified by
  `load balancer name`. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def delete_load_balancer_tls_certificate(client, input, options \\ []) do
    request(client, "DeleteLoadBalancerTlsCertificate", input, options)
  end

  @doc """
  Deletes a database in Amazon Lightsail.

  The `delete relational database` operation supports tag-based access
  control via resource tags applied to the resource identified by
  relationalDatabaseName. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def delete_relational_database(client, input, options \\ []) do
    request(client, "DeleteRelationalDatabase", input, options)
  end

  @doc """
  Deletes a database snapshot in Amazon Lightsail.

  The `delete relational database snapshot` operation supports tag-based
  access control via resource tags applied to the resource identified by
  relationalDatabaseName. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def delete_relational_database_snapshot(client, input, options \\ []) do
    request(client, "DeleteRelationalDatabaseSnapshot", input, options)
  end

  @doc """
  Detaches a stopped block storage disk from a Lightsail instance. Make sure
  to unmount any file systems on the device within your operating system
  before stopping the instance and detaching the disk.

  The `detach disk` operation supports tag-based access control via resource
  tags applied to the resource identified by `disk name`. For more
  information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def detach_disk(client, input, options \\ []) do
    request(client, "DetachDisk", input, options)
  end

  @doc """
  Detaches the specified instances from a Lightsail load balancer.

  This operation waits until the instances are no longer needed before they
  are detached from the load balancer.

  The `detach instances from load balancer` operation supports tag-based
  access control via resource tags applied to the resource identified by
  `load balancer name`. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def detach_instances_from_load_balancer(client, input, options \\ []) do
    request(client, "DetachInstancesFromLoadBalancer", input, options)
  end

  @doc """
  Detaches a static IP from the Amazon Lightsail instance to which it is
  attached.
  """
  def detach_static_ip(client, input, options \\ []) do
    request(client, "DetachStaticIp", input, options)
  end

  @doc """
  Disables an add-on for an Amazon Lightsail resource. For more information,
  see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots).
  """
  def disable_add_on(client, input, options \\ []) do
    request(client, "DisableAddOn", input, options)
  end

  @doc """
  Downloads the default SSH key pair from the user's account.
  """
  def download_default_key_pair(client, input, options \\ []) do
    request(client, "DownloadDefaultKeyPair", input, options)
  end

  @doc """
  Enables or modifies an add-on for an Amazon Lightsail resource. For more
  information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots).
  """
  def enable_add_on(client, input, options \\ []) do
    request(client, "EnableAddOn", input, options)
  end

  @doc """
  Exports an Amazon Lightsail instance or block storage disk snapshot to
  Amazon Elastic Compute Cloud (Amazon EC2). This operation results in an
  export snapshot record that can be used with the `create cloud formation
  stack` operation to create new Amazon EC2 instances.

  Exported instance snapshots appear in Amazon EC2 as Amazon Machine Images
  (AMIs), and the instance system disk appears as an Amazon Elastic Block
  Store (Amazon EBS) volume. Exported disk snapshots appear in Amazon EC2 as
  Amazon EBS volumes. Snapshots are exported to the same Amazon Web Services
  Region in Amazon EC2 as the source Lightsail snapshot.

  <p/> The `export snapshot` operation supports tag-based access control via
  resource tags applied to the resource identified by `source snapshot name`.
  For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).

  <note> Use the `get instance snapshots` or `get disk snapshots` operations
  to get a list of snapshots that you can export to Amazon EC2.

  </note>
  """
  def export_snapshot(client, input, options \\ []) do
    request(client, "ExportSnapshot", input, options)
  end

  @doc """
  Returns the names of all active (not deleted) resources.
  """
  def get_active_names(client, input, options \\ []) do
    request(client, "GetActiveNames", input, options)
  end

  @doc """
  Returns the available automatic snapshots for the specified resource name.
  For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en_us/articles/amazon-lightsail-configuring-automatic-snapshots).
  """
  def get_auto_snapshots(client, input, options \\ []) do
    request(client, "GetAutoSnapshots", input, options)
  end

  @doc """
  Returns the list of available instance images, or *blueprints*. You can use
  a blueprint to create a new instance already running a specific operating
  system, as well as a preinstalled app or development stack. The software
  each instance is running depends on the blueprint image you choose.

  <note> Use active blueprints when creating new instances. Inactive
  blueprints are listed to support customers with existing instances and are
  not necessarily available to create new instances. Blueprints are marked
  inactive when they become outdated due to operating system updates or new
  application releases.

  </note>
  """
  def get_blueprints(client, input, options \\ []) do
    request(client, "GetBlueprints", input, options)
  end

  @doc """
  Returns the list of bundles that are available for purchase. A bundle
  describes the specs for your virtual private server (or *instance*).
  """
  def get_bundles(client, input, options \\ []) do
    request(client, "GetBundles", input, options)
  end

  @doc """
  Returns the CloudFormation stack record created as a result of the `create
  cloud formation stack` operation.

  An AWS CloudFormation stack is used to create a new Amazon EC2 instance
  from an exported Lightsail snapshot.
  """
  def get_cloud_formation_stack_records(client, input, options \\ []) do
    request(client, "GetCloudFormationStackRecords", input, options)
  end

  @doc """
  Returns information about a specific block storage disk.
  """
  def get_disk(client, input, options \\ []) do
    request(client, "GetDisk", input, options)
  end

  @doc """
  Returns information about a specific block storage disk snapshot.
  """
  def get_disk_snapshot(client, input, options \\ []) do
    request(client, "GetDiskSnapshot", input, options)
  end

  @doc """
  Returns information about all block storage disk snapshots in your AWS
  account and region.

  If you are describing a long list of disk snapshots, you can paginate the
  output to make the list more manageable. You can use the pageToken and
  nextPageToken values to retrieve the next items in the list.
  """
  def get_disk_snapshots(client, input, options \\ []) do
    request(client, "GetDiskSnapshots", input, options)
  end

  @doc """
  Returns information about all block storage disks in your AWS account and
  region.

  If you are describing a long list of disks, you can paginate the output to
  make the list more manageable. You can use the pageToken and nextPageToken
  values to retrieve the next items in the list.
  """
  def get_disks(client, input, options \\ []) do
    request(client, "GetDisks", input, options)
  end

  @doc """
  Returns information about a specific domain recordset.
  """
  def get_domain(client, input, options \\ []) do
    request(client, "GetDomain", input, options)
  end

  @doc """
  Returns a list of all domains in the user's account.
  """
  def get_domains(client, input, options \\ []) do
    request(client, "GetDomains", input, options)
  end

  @doc """
  Returns the export snapshot record created as a result of the `export
  snapshot` operation.

  An export snapshot record can be used to create a new Amazon EC2 instance
  and its related resources with the `create cloud formation stack`
  operation.
  """
  def get_export_snapshot_records(client, input, options \\ []) do
    request(client, "GetExportSnapshotRecords", input, options)
  end

  @doc """
  Returns information about a specific Amazon Lightsail instance, which is a
  virtual private server.
  """
  def get_instance(client, input, options \\ []) do
    request(client, "GetInstance", input, options)
  end

  @doc """
  Returns temporary SSH keys you can use to connect to a specific virtual
  private server, or *instance*.

  The `get instance access details` operation supports tag-based access
  control via resource tags applied to the resource identified by `instance
  name`. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def get_instance_access_details(client, input, options \\ []) do
    request(client, "GetInstanceAccessDetails", input, options)
  end

  @doc """
  Returns the data points for the specified Amazon Lightsail instance metric,
  given an instance name.
  """
  def get_instance_metric_data(client, input, options \\ []) do
    request(client, "GetInstanceMetricData", input, options)
  end

  @doc """
  Returns the port states for a specific virtual private server, or
  *instance*.
  """
  def get_instance_port_states(client, input, options \\ []) do
    request(client, "GetInstancePortStates", input, options)
  end

  @doc """
  Returns information about a specific instance snapshot.
  """
  def get_instance_snapshot(client, input, options \\ []) do
    request(client, "GetInstanceSnapshot", input, options)
  end

  @doc """
  Returns all instance snapshots for the user's account.
  """
  def get_instance_snapshots(client, input, options \\ []) do
    request(client, "GetInstanceSnapshots", input, options)
  end

  @doc """
  Returns the state of a specific instance. Works on one instance at a time.
  """
  def get_instance_state(client, input, options \\ []) do
    request(client, "GetInstanceState", input, options)
  end

  @doc """
  Returns information about all Amazon Lightsail virtual private servers, or
  *instances*.
  """
  def get_instances(client, input, options \\ []) do
    request(client, "GetInstances", input, options)
  end

  @doc """
  Returns information about a specific key pair.
  """
  def get_key_pair(client, input, options \\ []) do
    request(client, "GetKeyPair", input, options)
  end

  @doc """
  Returns information about all key pairs in the user's account.
  """
  def get_key_pairs(client, input, options \\ []) do
    request(client, "GetKeyPairs", input, options)
  end

  @doc """
  Returns information about the specified Lightsail load balancer.
  """
  def get_load_balancer(client, input, options \\ []) do
    request(client, "GetLoadBalancer", input, options)
  end

  @doc """
  Returns information about health metrics for your Lightsail load balancer.
  """
  def get_load_balancer_metric_data(client, input, options \\ []) do
    request(client, "GetLoadBalancerMetricData", input, options)
  end

  @doc """
  Returns information about the TLS certificates that are associated with the
  specified Lightsail load balancer.

  TLS is just an updated, more secure version of Secure Socket Layer (SSL).

  You can have a maximum of 2 certificates associated with a Lightsail load
  balancer. One is active and the other is inactive.
  """
  def get_load_balancer_tls_certificates(client, input, options \\ []) do
    request(client, "GetLoadBalancerTlsCertificates", input, options)
  end

  @doc """
  Returns information about all load balancers in an account.

  If you are describing a long list of load balancers, you can paginate the
  output to make the list more manageable. You can use the pageToken and
  nextPageToken values to retrieve the next items in the list.
  """
  def get_load_balancers(client, input, options \\ []) do
    request(client, "GetLoadBalancers", input, options)
  end

  @doc """
  Returns information about a specific operation. Operations include events
  such as when you create an instance, allocate a static IP, attach a static
  IP, and so on.
  """
  def get_operation(client, input, options \\ []) do
    request(client, "GetOperation", input, options)
  end

  @doc """
  Returns information about all operations.

  Results are returned from oldest to newest, up to a maximum of 200. Results
  can be paged by making each subsequent call to `GetOperations` use the
  maximum (last) `statusChangedAt` value from the previous request.
  """
  def get_operations(client, input, options \\ []) do
    request(client, "GetOperations", input, options)
  end

  @doc """
  Gets operations for a specific resource (e.g., an instance or a static IP).
  """
  def get_operations_for_resource(client, input, options \\ []) do
    request(client, "GetOperationsForResource", input, options)
  end

  @doc """
  Returns a list of all valid regions for Amazon Lightsail. Use the `include
  availability zones` parameter to also return the Availability Zones in a
  region.
  """
  def get_regions(client, input, options \\ []) do
    request(client, "GetRegions", input, options)
  end

  @doc """
  Returns information about a specific database in Amazon Lightsail.
  """
  def get_relational_database(client, input, options \\ []) do
    request(client, "GetRelationalDatabase", input, options)
  end

  @doc """
  Returns a list of available database blueprints in Amazon Lightsail. A
  blueprint describes the major engine version of a database.

  You can use a blueprint ID to create a new database that runs a specific
  database engine.
  """
  def get_relational_database_blueprints(client, input, options \\ []) do
    request(client, "GetRelationalDatabaseBlueprints", input, options)
  end

  @doc """
  Returns the list of bundles that are available in Amazon Lightsail. A
  bundle describes the performance specifications for a database.

  You can use a bundle ID to create a new database with explicit performance
  specifications.
  """
  def get_relational_database_bundles(client, input, options \\ []) do
    request(client, "GetRelationalDatabaseBundles", input, options)
  end

  @doc """
  Returns a list of events for a specific database in Amazon Lightsail.
  """
  def get_relational_database_events(client, input, options \\ []) do
    request(client, "GetRelationalDatabaseEvents", input, options)
  end

  @doc """
  Returns a list of log events for a database in Amazon Lightsail.
  """
  def get_relational_database_log_events(client, input, options \\ []) do
    request(client, "GetRelationalDatabaseLogEvents", input, options)
  end

  @doc """
  Returns a list of available log streams for a specific database in Amazon
  Lightsail.
  """
  def get_relational_database_log_streams(client, input, options \\ []) do
    request(client, "GetRelationalDatabaseLogStreams", input, options)
  end

  @doc """
  Returns the current, previous, or pending versions of the master user
  password for a Lightsail database.

  The `GetRelationalDatabaseMasterUserPassword` operation supports tag-based
  access control via resource tags applied to the resource identified by
  relationalDatabaseName.
  """
  def get_relational_database_master_user_password(client, input, options \\ []) do
    request(client, "GetRelationalDatabaseMasterUserPassword", input, options)
  end

  @doc """
  Returns the data points of the specified metric for a database in Amazon
  Lightsail.
  """
  def get_relational_database_metric_data(client, input, options \\ []) do
    request(client, "GetRelationalDatabaseMetricData", input, options)
  end

  @doc """
  Returns all of the runtime parameters offered by the underlying database
  software, or engine, for a specific database in Amazon Lightsail.

  In addition to the parameter names and values, this operation returns other
  information about each parameter. This information includes whether changes
  require a reboot, whether the parameter is modifiable, the allowed values,
  and the data types.
  """
  def get_relational_database_parameters(client, input, options \\ []) do
    request(client, "GetRelationalDatabaseParameters", input, options)
  end

  @doc """
  Returns information about a specific database snapshot in Amazon Lightsail.
  """
  def get_relational_database_snapshot(client, input, options \\ []) do
    request(client, "GetRelationalDatabaseSnapshot", input, options)
  end

  @doc """
  Returns information about all of your database snapshots in Amazon
  Lightsail.
  """
  def get_relational_database_snapshots(client, input, options \\ []) do
    request(client, "GetRelationalDatabaseSnapshots", input, options)
  end

  @doc """
  Returns information about all of your databases in Amazon Lightsail.
  """
  def get_relational_databases(client, input, options \\ []) do
    request(client, "GetRelationalDatabases", input, options)
  end

  @doc """
  Returns information about a specific static IP.
  """
  def get_static_ip(client, input, options \\ []) do
    request(client, "GetStaticIp", input, options)
  end

  @doc """
  Returns information about all static IPs in the user's account.
  """
  def get_static_ips(client, input, options \\ []) do
    request(client, "GetStaticIps", input, options)
  end

  @doc """
  Imports a public SSH key from a specific key pair.
  """
  def import_key_pair(client, input, options \\ []) do
    request(client, "ImportKeyPair", input, options)
  end

  @doc """
  Returns a Boolean value indicating whether your Lightsail VPC is peered.
  """
  def is_vpc_peered(client, input, options \\ []) do
    request(client, "IsVpcPeered", input, options)
  end

  @doc """
  Adds public ports to an Amazon Lightsail instance.

  The `open instance public ports` operation supports tag-based access
  control via resource tags applied to the resource identified by `instance
  name`. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def open_instance_public_ports(client, input, options \\ []) do
    request(client, "OpenInstancePublicPorts", input, options)
  end

  @doc """
  Tries to peer the Lightsail VPC with the user's default VPC.
  """
  def peer_vpc(client, input, options \\ []) do
    request(client, "PeerVpc", input, options)
  end

  @doc """
  Sets the specified open ports for an Amazon Lightsail instance, and closes
  all ports for every protocol not included in the current request.

  The `put instance public ports` operation supports tag-based access control
  via resource tags applied to the resource identified by `instance name`.
  For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def put_instance_public_ports(client, input, options \\ []) do
    request(client, "PutInstancePublicPorts", input, options)
  end

  @doc """
  Restarts a specific instance.

  The `reboot instance` operation supports tag-based access control via
  resource tags applied to the resource identified by `instance name`. For
  more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def reboot_instance(client, input, options \\ []) do
    request(client, "RebootInstance", input, options)
  end

  @doc """
  Restarts a specific database in Amazon Lightsail.

  The `reboot relational database` operation supports tag-based access
  control via resource tags applied to the resource identified by
  relationalDatabaseName. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def reboot_relational_database(client, input, options \\ []) do
    request(client, "RebootRelationalDatabase", input, options)
  end

  @doc """
  Deletes a specific static IP from your account.
  """
  def release_static_ip(client, input, options \\ []) do
    request(client, "ReleaseStaticIp", input, options)
  end

  @doc """
  Starts a specific Amazon Lightsail instance from a stopped state. To
  restart an instance, use the `reboot instance` operation.

  <note> When you start a stopped instance, Lightsail assigns a new public IP
  address to the instance. To use the same IP address after stopping and
  starting an instance, create a static IP address and attach it to the
  instance. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/lightsail-create-static-ip).

  </note> The `start instance` operation supports tag-based access control
  via resource tags applied to the resource identified by `instance name`.
  For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def start_instance(client, input, options \\ []) do
    request(client, "StartInstance", input, options)
  end

  @doc """
  Starts a specific database from a stopped state in Amazon Lightsail. To
  restart a database, use the `reboot relational database` operation.

  The `start relational database` operation supports tag-based access control
  via resource tags applied to the resource identified by
  relationalDatabaseName. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def start_relational_database(client, input, options \\ []) do
    request(client, "StartRelationalDatabase", input, options)
  end

  @doc """
  Stops a specific Amazon Lightsail instance that is currently running.

  <note> When you start a stopped instance, Lightsail assigns a new public IP
  address to the instance. To use the same IP address after stopping and
  starting an instance, create a static IP address and attach it to the
  instance. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/lightsail-create-static-ip).

  </note> The `stop instance` operation supports tag-based access control via
  resource tags applied to the resource identified by `instance name`. For
  more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def stop_instance(client, input, options \\ []) do
    request(client, "StopInstance", input, options)
  end

  @doc """
  Stops a specific database that is currently running in Amazon Lightsail.

  The `stop relational database` operation supports tag-based access control
  via resource tags applied to the resource identified by
  relationalDatabaseName. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def stop_relational_database(client, input, options \\ []) do
    request(client, "StopRelationalDatabase", input, options)
  end

  @doc """
  Adds one or more tags to the specified Amazon Lightsail resource. Each
  resource can have a maximum of 50 tags. Each tag consists of a key and an
  optional value. Tag keys must be unique per resource. For more information
  about tags, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-tags).

  The `tag resource` operation supports tag-based access control via request
  tags and resource tags applied to the resource identified by `resource
  name`. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def tag_resource(client, input, options \\ []) do
    request(client, "TagResource", input, options)
  end

  @doc """
  Attempts to unpeer the Lightsail VPC from the user's default VPC.
  """
  def unpeer_vpc(client, input, options \\ []) do
    request(client, "UnpeerVpc", input, options)
  end

  @doc """
  Deletes the specified set of tag keys and their values from the specified
  Amazon Lightsail resource.

  The `untag resource` operation supports tag-based access control via
  request tags and resource tags applied to the resource identified by
  `resource name`. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def untag_resource(client, input, options \\ []) do
    request(client, "UntagResource", input, options)
  end

  @doc """
  Updates a domain recordset after it is created.

  The `update domain entry` operation supports tag-based access control via
  resource tags applied to the resource identified by `domain name`. For more
  information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def update_domain_entry(client, input, options \\ []) do
    request(client, "UpdateDomainEntry", input, options)
  end

  @doc """
  Updates the specified attribute for a load balancer. You can only update
  one attribute at a time.

  The `update load balancer attribute` operation supports tag-based access
  control via resource tags applied to the resource identified by `load
  balancer name`. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def update_load_balancer_attribute(client, input, options \\ []) do
    request(client, "UpdateLoadBalancerAttribute", input, options)
  end

  @doc """
  Allows the update of one or more attributes of a database in Amazon
  Lightsail.

  Updates are applied immediately, or in cases where the updates could result
  in an outage, are applied during the database's predefined maintenance
  window.

  The `update relational database` operation supports tag-based access
  control via resource tags applied to the resource identified by
  relationalDatabaseName. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def update_relational_database(client, input, options \\ []) do
    request(client, "UpdateRelationalDatabase", input, options)
  end

  @doc """
  Allows the update of one or more parameters of a database in Amazon
  Lightsail.

  Parameter updates don't cause outages; therefore, their application is not
  subject to the preferred maintenance window. However, there are two ways in
  which paramater updates are applied: `dynamic` or `pending-reboot`.
  Parameters marked with a `dynamic` apply type are applied immediately.
  Parameters marked with a `pending-reboot` apply type are applied only after
  the database is rebooted using the `reboot relational database` operation.

  The `update relational database parameters` operation supports tag-based
  access control via resource tags applied to the resource identified by
  relationalDatabaseName. For more information, see the [Lightsail Dev
  Guide](https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags).
  """
  def update_relational_database_parameters(client, input, options \\ []) do
    request(client, "UpdateRelationalDatabaseParameters", input, options)
  end

  @spec request(AWS.Client.t(), binary(), map(), list()) ::
          {:ok, Poison.Parser.t() | nil, Poison.Response.t()}
          | {:error, Poison.Parser.t()}
          | {:error, HTTPoison.Error.t()}
  defp request(client, action, input, options) do
    client = %{client | service: "lightsail"}
    host = get_host("lightsail", client)
    url = get_url(host, client)

    headers = [
      {"Host", host},
      {"Content-Type", "application/x-amz-json-1.1"},
      {"X-Amz-Target", "Lightsail_20161128.#{action}"},
      {"X-Amz-Security-Token", client.session_token}
    ]
    
    payload = Poison.Encoder.encode(input, [])
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

  defp get_host(endpoint_prefix, client) do
    if client.region == "local" do
      "localhost"
    else
      "#{endpoint_prefix}.#{client.region}.#{client.endpoint}"
    end
  end

  defp get_url(host, %{:proto => proto, :port => port}) do
    "#{proto}://#{host}:#{port}/"
  end
end
