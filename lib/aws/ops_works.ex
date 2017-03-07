# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/jkakar/aws-codegen for more details.

defmodule AWS.OpsWorks do
  @moduledoc """
  AWS OpsWorks

  Welcome to the *AWS OpsWorks API Reference*. This guide provides
  descriptions, syntax, and usage examples for AWS OpsWorks actions and data
  types, including common parameters and error codes.

  AWS OpsWorks is an application management service that provides an
  integrated experience for overseeing the complete application lifecycle.
  For information about this product, go to the [AWS
  OpsWorks](http://aws.amazon.com/opsworks/) details page.

  **SDKs and CLI**

  The most common way to use the AWS OpsWorks API is by using the AWS Command
  Line Interface (CLI) or by using one of the AWS SDKs to implement
  applications in your preferred language. For more information, see:

  <ul> <li> [AWS
  CLI](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html)

  </li> <li> [AWS SDK for
  Java](http://docs.aws.amazon.com/AWSJavaSDK/latest/javadoc/com/amazonaws/services/opsworks/AWSOpsWorksClient.html)

  </li> <li> [AWS SDK for
  .NET](http://docs.aws.amazon.com/sdkfornet/latest/apidocs/html/N_Amazon_OpsWorks.htm)

  </li> <li> [AWS SDK for PHP
  2](http://docs.aws.amazon.com/aws-sdk-php-2/latest/class-Aws.OpsWorks.OpsWorksClient.html)

  </li> <li> [AWS SDK for Ruby](http://docs.aws.amazon.com/sdkforruby/api/)

  </li> <li> [AWS SDK for
  Node.js](http://aws.amazon.com/documentation/sdkforjavascript/)

  </li> <li> [AWS SDK for
  Python(Boto)](http://docs.pythonboto.org/en/latest/ref/opsworks.html)

  </li> </ul> **Endpoints**

  AWS OpsWorks supports the following endpoints, all HTTPS. You must connect
  to one of the following endpoints. Stacks can only be accessed or managed
  within the endpoint in which they are created.

  <ul> <li> opsworks.us-east-1.amazonaws.com

  </li> <li> opsworks.us-west-1.amazonaws.com

  </li> <li> opsworks.us-west-2.amazonaws.com

  </li> <li> opsworks.eu-west-1.amazonaws.com

  </li> <li> opsworks.eu-central-1.amazonaws.com

  </li> <li> opsworks.ap-northeast-1.amazonaws.com

  </li> <li> opsworks.ap-northeast-2.amazonaws.com

  </li> <li> opsworks.ap-south-1.amazonaws.com

  </li> <li> opsworks.ap-southeast-1.amazonaws.com

  </li> <li> opsworks.ap-southeast-2.amazonaws.com

  </li> <li> opsworks.sa-east-1.amazonaws.com

  </li> </ul> **Chef Versions**

  When you call `CreateStack`, `CloneStack`, or `UpdateStack` we recommend
  you use the `ConfigurationManager` parameter to specify the Chef version.
  The recommended and default value for Linux stacks is currently 12. Windows
  stacks use Chef 12.2. For more information, see [Chef
  Versions](http://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-chef11.html).

  <note> You can specify Chef 12, 11.10, or 11.4 for your Linux stack. We
  recommend migrating your existing Linux stacks to Chef 12 as soon as
  possible.

  </note>
  """

  @doc """
  Assign a registered instance to a layer.

  <ul> <li> You can assign registered on-premises instances to any layer
  type.

  </li> <li> You can assign registered Amazon EC2 instances only to custom
  layers.

  </li> <li> You cannot use this action with instances that were created with
  AWS OpsWorks.

  </li> </ul> **Required Permissions**: To use this action, an AWS Identity
  and Access Management (IAM) user must have a Manage permissions level for
  the stack or an attached policy that explicitly grants permissions. For
  more information on user permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def assign_instance(client, input, options \\ []) do
    request(client, "AssignInstance", input, options)
  end

  @doc """
  Assigns one of the stack's registered Amazon EBS volumes to a specified
  instance. The volume must first be registered with the stack by calling
  `RegisterVolume`. After you register the volume, you must call
  `UpdateVolume` to specify a mount point before calling `AssignVolume`. For
  more information, see [Resource
  Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def assign_volume(client, input, options \\ []) do
    request(client, "AssignVolume", input, options)
  end

  @doc """
  Associates one of the stack's registered Elastic IP addresses with a
  specified instance. The address must first be registered with the stack by
  calling `RegisterElasticIp`. For more information, see [Resource
  Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def associate_elastic_ip(client, input, options \\ []) do
    request(client, "AssociateElasticIp", input, options)
  end

  @doc """
  Attaches an Elastic Load Balancing load balancer to a specified layer. For
  more information, see [Elastic Load
  Balancing](http://docs.aws.amazon.com/opsworks/latest/userguide/load-balancer-elb.html).

  <note> You must create the Elastic Load Balancing instance separately, by
  using the Elastic Load Balancing console, API, or CLI. For more
  information, see [ Elastic Load Balancing Developer
  Guide](http://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/Welcome.html).

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def attach_elastic_load_balancer(client, input, options \\ []) do
    request(client, "AttachElasticLoadBalancer", input, options)
  end

  @doc """
  Creates a clone of a specified stack. For more information, see [Clone a
  Stack](http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-cloning.html).
  By default, all parameters are set to the values used by the parent stack.

  **Required Permissions**: To use this action, an IAM user must have an
  attached policy that explicitly grants permissions. For more information on
  user permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def clone_stack(client, input, options \\ []) do
    request(client, "CloneStack", input, options)
  end

  @doc """
  Creates an app for a specified stack. For more information, see [Creating
  Apps](http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def create_app(client, input, options \\ []) do
    request(client, "CreateApp", input, options)
  end

  @doc """
  Runs deployment or stack commands. For more information, see [Deploying
  Apps](http://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-deploying.html)
  and [Run Stack
  Commands](http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-commands.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Deploy or Manage permissions level for the stack, or an attached policy
  that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def create_deployment(client, input, options \\ []) do
    request(client, "CreateDeployment", input, options)
  end

  @doc """
  Creates an instance in a specified stack. For more information, see [Adding
  an Instance to a
  Layer](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def create_instance(client, input, options \\ []) do
    request(client, "CreateInstance", input, options)
  end

  @doc """
  Creates a layer. For more information, see [How to Create a
  Layer](http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-create.html).

  <note> You should use **CreateLayer** for noncustom layer types such as PHP
  App Server only if the stack does not have an existing layer of that type.
  A stack can have at most one instance of each noncustom layer; if you
  attempt to create a second instance, **CreateLayer** fails. A stack can
  have an arbitrary number of custom layers, so you can call **CreateLayer**
  as many times as you like for that layer type.

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def create_layer(client, input, options \\ []) do
    request(client, "CreateLayer", input, options)
  end

  @doc """
  Creates a new stack. For more information, see [Create a New
  Stack](http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-edit.html).

  **Required Permissions**: To use this action, an IAM user must have an
  attached policy that explicitly grants permissions. For more information on
  user permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def create_stack(client, input, options \\ []) do
    request(client, "CreateStack", input, options)
  end

  @doc """
  Creates a new user profile.

  **Required Permissions**: To use this action, an IAM user must have an
  attached policy that explicitly grants permissions. For more information on
  user permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def create_user_profile(client, input, options \\ []) do
    request(client, "CreateUserProfile", input, options)
  end

  @doc """
  Deletes a specified app.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def delete_app(client, input, options \\ []) do
    request(client, "DeleteApp", input, options)
  end

  @doc """
  Deletes a specified instance, which terminates the associated Amazon EC2
  instance. You must stop an instance before you can delete it.

  For more information, see [Deleting
  Instances](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-delete.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def delete_instance(client, input, options \\ []) do
    request(client, "DeleteInstance", input, options)
  end

  @doc """
  Deletes a specified layer. You must first stop and then delete all
  associated instances or unassign registered instances. For more
  information, see [How to Delete a
  Layer](http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-delete.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def delete_layer(client, input, options \\ []) do
    request(client, "DeleteLayer", input, options)
  end

  @doc """
  Deletes a specified stack. You must first delete all instances, layers, and
  apps or deregister registered instances. For more information, see [Shut
  Down a
  Stack](http://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-shutting.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def delete_stack(client, input, options \\ []) do
    request(client, "DeleteStack", input, options)
  end

  @doc """
  Deletes a user profile.

  **Required Permissions**: To use this action, an IAM user must have an
  attached policy that explicitly grants permissions. For more information on
  user permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def delete_user_profile(client, input, options \\ []) do
    request(client, "DeleteUserProfile", input, options)
  end

  @doc """
  Deregisters a specified Amazon ECS cluster from a stack. For more
  information, see [ Resource
  Management](http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html#workinglayers-ecscluster-delete).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see
  [http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def deregister_ecs_cluster(client, input, options \\ []) do
    request(client, "DeregisterEcsCluster", input, options)
  end

  @doc """
  Deregisters a specified Elastic IP address. The address can then be
  registered by another stack. For more information, see [Resource
  Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def deregister_elastic_ip(client, input, options \\ []) do
    request(client, "DeregisterElasticIp", input, options)
  end

  @doc """
  Deregister a registered Amazon EC2 or on-premises instance. This action
  removes the instance from the stack and returns it to your control. This
  action can not be used with instances that were created with AWS OpsWorks.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def deregister_instance(client, input, options \\ []) do
    request(client, "DeregisterInstance", input, options)
  end

  @doc """
  Deregisters an Amazon RDS instance.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def deregister_rds_db_instance(client, input, options \\ []) do
    request(client, "DeregisterRdsDbInstance", input, options)
  end

  @doc """
  Deregisters an Amazon EBS volume. The volume can then be registered by
  another stack. For more information, see [Resource
  Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def deregister_volume(client, input, options \\ []) do
    request(client, "DeregisterVolume", input, options)
  end

  @doc """
  Describes the available AWS OpsWorks agent versions. You must specify a
  stack ID or a configuration manager. `DescribeAgentVersions` returns a list
  of available agent versions for the specified stack or configuration
  manager.
  """
  def describe_agent_versions(client, input, options \\ []) do
    request(client, "DescribeAgentVersions", input, options)
  end

  @doc """
  Requests a description of a specified set of apps.

  <note> You must specify at least one of the parameters.

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Show, Deploy, or Manage permissions level for the stack, or an attached
  policy that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_apps(client, input, options \\ []) do
    request(client, "DescribeApps", input, options)
  end

  @doc """
  Describes the results of specified commands.

  <note> You must specify at least one of the parameters.

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Show, Deploy, or Manage permissions level for the stack, or an attached
  policy that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_commands(client, input, options \\ []) do
    request(client, "DescribeCommands", input, options)
  end

  @doc """
  Requests a description of a specified set of deployments.

  <note> You must specify at least one of the parameters.

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Show, Deploy, or Manage permissions level for the stack, or an attached
  policy that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_deployments(client, input, options \\ []) do
    request(client, "DescribeDeployments", input, options)
  end

  @doc """
  Describes Amazon ECS clusters that are registered with a stack. If you
  specify only a stack ID, you can use the `MaxResults` and `NextToken`
  parameters to paginate the response. However, AWS OpsWorks currently
  supports only one cluster per layer, so the result set has a maximum of one
  element.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or Manage permissions level for the stack or an attached policy
  that explicitly grants permission. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_ecs_clusters(client, input, options \\ []) do
    request(client, "DescribeEcsClusters", input, options)
  end

  @doc """
  Describes [Elastic IP
  addresses](http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html).

  <note> You must specify at least one of the parameters.

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Show, Deploy, or Manage permissions level for the stack, or an attached
  policy that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_elastic_ips(client, input, options \\ []) do
    request(client, "DescribeElasticIps", input, options)
  end

  @doc """
  Describes a stack's Elastic Load Balancing instances.

  <note> You must specify at least one of the parameters.

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Show, Deploy, or Manage permissions level for the stack, or an attached
  policy that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_elastic_load_balancers(client, input, options \\ []) do
    request(client, "DescribeElasticLoadBalancers", input, options)
  end

  @doc """
  Requests a description of a set of instances.

  <note> You must specify at least one of the parameters.

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Show, Deploy, or Manage permissions level for the stack, or an attached
  policy that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_instances(client, input, options \\ []) do
    request(client, "DescribeInstances", input, options)
  end

  @doc """
  Requests a description of one or more layers in a specified stack.

  <note> You must specify at least one of the parameters.

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Show, Deploy, or Manage permissions level for the stack, or an attached
  policy that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_layers(client, input, options \\ []) do
    request(client, "DescribeLayers", input, options)
  end

  @doc """
  Describes load-based auto scaling configurations for specified layers.

  <note> You must specify at least one of the parameters.

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Show, Deploy, or Manage permissions level for the stack, or an attached
  policy that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_load_based_auto_scaling(client, input, options \\ []) do
    request(client, "DescribeLoadBasedAutoScaling", input, options)
  end

  @doc """
  Describes a user's SSH information.

  **Required Permissions**: To use this action, an IAM user must have
  self-management enabled or an attached policy that explicitly grants
  permissions. For more information on user permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_my_user_profile(client, input, options \\ []) do
    request(client, "DescribeMyUserProfile", input, options)
  end

  @doc """
  Describes the permissions for a specified stack.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_permissions(client, input, options \\ []) do
    request(client, "DescribePermissions", input, options)
  end

  @doc """
  Describe an instance's RAID arrays.

  <note> You must specify at least one of the parameters.

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Show, Deploy, or Manage permissions level for the stack, or an attached
  policy that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_raid_arrays(client, input, options \\ []) do
    request(client, "DescribeRaidArrays", input, options)
  end

  @doc """
  Describes Amazon RDS instances.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or Manage permissions level for the stack, or an attached policy
  that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_rds_db_instances(client, input, options \\ []) do
    request(client, "DescribeRdsDbInstances", input, options)
  end

  @doc """
  Describes AWS OpsWorks service errors.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or Manage permissions level for the stack, or an attached policy
  that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_service_errors(client, input, options \\ []) do
    request(client, "DescribeServiceErrors", input, options)
  end

  @doc """
  Requests a description of a stack's provisioning parameters.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or Manage permissions level for the stack or an attached policy
  that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_stack_provisioning_parameters(client, input, options \\ []) do
    request(client, "DescribeStackProvisioningParameters", input, options)
  end

  @doc """
  Describes the number of layers and apps in a specified stack, and the
  number of instances in each state, such as `running_setup` or `online`.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or Manage permissions level for the stack, or an attached policy
  that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_stack_summary(client, input, options \\ []) do
    request(client, "DescribeStackSummary", input, options)
  end

  @doc """
  Requests a description of one or more stacks.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or Manage permissions level for the stack, or an attached policy
  that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_stacks(client, input, options \\ []) do
    request(client, "DescribeStacks", input, options)
  end

  @doc """
  Describes time-based auto scaling configurations for specified instances.

  <note> You must specify at least one of the parameters.

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Show, Deploy, or Manage permissions level for the stack, or an attached
  policy that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_time_based_auto_scaling(client, input, options \\ []) do
    request(client, "DescribeTimeBasedAutoScaling", input, options)
  end

  @doc """
  Describe specified users.

  **Required Permissions**: To use this action, an IAM user must have an
  attached policy that explicitly grants permissions. For more information on
  user permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_user_profiles(client, input, options \\ []) do
    request(client, "DescribeUserProfiles", input, options)
  end

  @doc """
  Describes an instance's Amazon EBS volumes.

  <note> You must specify at least one of the parameters.

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Show, Deploy, or Manage permissions level for the stack, or an attached
  policy that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_volumes(client, input, options \\ []) do
    request(client, "DescribeVolumes", input, options)
  end

  @doc """
  Detaches a specified Elastic Load Balancing instance from its layer.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def detach_elastic_load_balancer(client, input, options \\ []) do
    request(client, "DetachElasticLoadBalancer", input, options)
  end

  @doc """
  Disassociates an Elastic IP address from its instance. The address remains
  registered with the stack. For more information, see [Resource
  Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def disassociate_elastic_ip(client, input, options \\ []) do
    request(client, "DisassociateElasticIp", input, options)
  end

  @doc """
  Gets a generated host name for the specified layer, based on the current
  host name theme.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def get_hostname_suggestion(client, input, options \\ []) do
    request(client, "GetHostnameSuggestion", input, options)
  end

  @doc """
  <note> This action can be used only with Windows stacks.

  </note> Grants RDP access to a Windows instance for a specified time
  period.
  """
  def grant_access(client, input, options \\ []) do
    request(client, "GrantAccess", input, options)
  end

  @doc """
  Reboots a specified instance. For more information, see [Starting,
  Stopping, and Rebooting
  Instances](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def reboot_instance(client, input, options \\ []) do
    request(client, "RebootInstance", input, options)
  end

  @doc """
  Registers a specified Amazon ECS cluster with a stack. You can register
  only one cluster with a stack. A cluster can be registered with only one
  stack. For more information, see [ Resource
  Management](http://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [ Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def register_ecs_cluster(client, input, options \\ []) do
    request(client, "RegisterEcsCluster", input, options)
  end

  @doc """
  Registers an Elastic IP address with a specified stack. An address can be
  registered with only one stack at a time. If the address is already
  registered, you must first deregister it by calling `DeregisterElasticIp`.
  For more information, see [Resource
  Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def register_elastic_ip(client, input, options \\ []) do
    request(client, "RegisterElasticIp", input, options)
  end

  @doc """
  Registers instances with a specified stack that were created outside of AWS
  OpsWorks.

  <note> We do not recommend using this action to register instances. The
  complete registration operation has two primary steps, installing the AWS
  OpsWorks agent on the instance and registering the instance with the stack.
  `RegisterInstance` handles only the second step. You should instead use the
  AWS CLI `register` command, which performs the entire registration
  operation. For more information, see [ Registering an Instance with an AWS
  OpsWorks
  Stack](http://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register.html).

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Manage permissions level for the stack or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def register_instance(client, input, options \\ []) do
    request(client, "RegisterInstance", input, options)
  end

  @doc """
  Registers an Amazon RDS instance with a stack.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def register_rds_db_instance(client, input, options \\ []) do
    request(client, "RegisterRdsDbInstance", input, options)
  end

  @doc """
  Registers an Amazon EBS volume with a specified stack. A volume can be
  registered with only one stack at a time. If the volume is already
  registered, you must first deregister it by calling `DeregisterVolume`. For
  more information, see [Resource
  Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def register_volume(client, input, options \\ []) do
    request(client, "RegisterVolume", input, options)
  end

  @doc """
  Specify the load-based auto scaling configuration for a specified layer.
  For more information, see [Managing Load with Time-based and Load-based
  Instances](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html).

  <note> To use load-based auto scaling, you must create a set of load-based
  auto scaling instances. Load-based auto scaling operates only on the
  instances from that set, so you must ensure that you have created enough
  instances to handle the maximum anticipated load.

  </note> **Required Permissions**: To use this action, an IAM user must have
  a Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def set_load_based_auto_scaling(client, input, options \\ []) do
    request(client, "SetLoadBasedAutoScaling", input, options)
  end

  @doc """
  Specifies a user's permissions. For more information, see [Security and
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/workingsecurity.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def set_permission(client, input, options \\ []) do
    request(client, "SetPermission", input, options)
  end

  @doc """
  Specify the time-based auto scaling configuration for a specified instance.
  For more information, see [Managing Load with Time-based and Load-based
  Instances](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def set_time_based_auto_scaling(client, input, options \\ []) do
    request(client, "SetTimeBasedAutoScaling", input, options)
  end

  @doc """
  Starts a specified instance. For more information, see [Starting, Stopping,
  and Rebooting
  Instances](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def start_instance(client, input, options \\ []) do
    request(client, "StartInstance", input, options)
  end

  @doc """
  Starts a stack's instances.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def start_stack(client, input, options \\ []) do
    request(client, "StartStack", input, options)
  end

  @doc """
  Stops a specified instance. When you stop a standard instance, the data
  disappears and must be reinstalled when you restart the instance. You can
  stop an Amazon EBS-backed instance without losing data. For more
  information, see [Starting, Stopping, and Rebooting
  Instances](http://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def stop_instance(client, input, options \\ []) do
    request(client, "StopInstance", input, options)
  end

  @doc """
  Stops a specified stack.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def stop_stack(client, input, options \\ []) do
    request(client, "StopStack", input, options)
  end

  @doc """
  Unassigns a registered instance from all of it's layers. The instance
  remains in the stack as an unassigned instance and can be assigned to
  another layer, as needed. You cannot use this action with instances that
  were created with AWS OpsWorks.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def unassign_instance(client, input, options \\ []) do
    request(client, "UnassignInstance", input, options)
  end

  @doc """
  Unassigns an assigned Amazon EBS volume. The volume remains registered with
  the stack. For more information, see [Resource
  Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def unassign_volume(client, input, options \\ []) do
    request(client, "UnassignVolume", input, options)
  end

  @doc """
  Updates a specified app.

  **Required Permissions**: To use this action, an IAM user must have a
  Deploy or Manage permissions level for the stack, or an attached policy
  that explicitly grants permissions. For more information on user
  permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def update_app(client, input, options \\ []) do
    request(client, "UpdateApp", input, options)
  end

  @doc """
  Updates a registered Elastic IP address's name. For more information, see
  [Resource
  Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def update_elastic_ip(client, input, options \\ []) do
    request(client, "UpdateElasticIp", input, options)
  end

  @doc """
  Updates a specified instance.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def update_instance(client, input, options \\ []) do
    request(client, "UpdateInstance", input, options)
  end

  @doc """
  Updates a specified layer.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def update_layer(client, input, options \\ []) do
    request(client, "UpdateLayer", input, options)
  end

  @doc """
  Updates a user's SSH public key.

  **Required Permissions**: To use this action, an IAM user must have
  self-management enabled or an attached policy that explicitly grants
  permissions. For more information on user permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def update_my_user_profile(client, input, options \\ []) do
    request(client, "UpdateMyUserProfile", input, options)
  end

  @doc """
  Updates an Amazon RDS instance.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def update_rds_db_instance(client, input, options \\ []) do
    request(client, "UpdateRdsDbInstance", input, options)
  end

  @doc """
  Updates a specified stack.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def update_stack(client, input, options \\ []) do
    request(client, "UpdateStack", input, options)
  end

  @doc """
  Updates a specified user profile.

  **Required Permissions**: To use this action, an IAM user must have an
  attached policy that explicitly grants permissions. For more information on
  user permissions, see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def update_user_profile(client, input, options \\ []) do
    request(client, "UpdateUserProfile", input, options)
  end

  @doc """
  Updates an Amazon EBS volume's name or mount point. For more information,
  see [Resource
  Management](http://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions level for the stack, or an attached policy that
  explicitly grants permissions. For more information on user permissions,
  see [Managing User
  Permissions](http://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def update_volume(client, input, options \\ []) do
    request(client, "UpdateVolume", input, options)
  end

  @spec request(map(), binary(), map(), list()) ::
    {:ok, Poison.Parser.t | nil, Poison.Response.t} |
    {:error, Poison.Parser.t} |
    {:error, HTTPoison.Error.t}
  defp request(client, action, input, options) do
    client = %{client | service: "opsworks"}
    host = get_host("opsworks", client)
    url = get_url(host, client)
    headers = [{"Host", host},
               {"Content-Type", "application/x-amz-json-1.1"},
               {"X-Amz-Target", "OpsWorks_20130218.#{action}"}]
    payload = Poison.Encoder.encode(input, [])
    headers = AWS.Request.sign_v4(client, "POST", url, headers, payload)
    case HTTPoison.post(url, payload, headers, options) do
      {:ok, response=%HTTPoison.Response{status_code: 200, body: ""}} ->
        {:ok, nil, response}
      {:ok, response=%HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body), response}
      {:ok, _response=%HTTPoison.Response{body: body}} ->
        error = Poison.Parser.parse!(body)
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
