# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.OpsWorks do
  @moduledoc """
  AWS OpsWorks

  Welcome to the *AWS OpsWorks Stacks API Reference*.

  This guide provides descriptions, syntax, and
  usage examples for AWS OpsWorks Stacks actions and data types, including common
  parameters and error
  codes.

  AWS OpsWorks Stacks is an application management service that provides an
  integrated experience for
  overseeing the complete application lifecycle. For information about this
  product, go to the
  [AWS OpsWorks](http://aws.amazon.com/opsworks/) details page. 

  ## SDKs and CLI

  The most common way to use the AWS OpsWorks Stacks API is by using the AWS
  Command Line Interface (CLI) or by using one of the AWS SDKs to implement
  applications in your preferred language. For more information, see:

    *

  [AWS
  CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html)

    *

  [AWS SDK for Java](https://docs.aws.amazon.com/AWSJavaSDK/latest/javadoc/com/amazonaws/services/opsworks/AWSOpsWorksClient.html)

    *

  [AWS SDK for .NET](https://docs.aws.amazon.com/sdkfornet/latest/apidocs/html/N_Amazon_OpsWorks.htm)

    *

  [AWS SDK for PHP
  2](https://docs.aws.amazon.com/aws-sdk-php-2/latest/class-Aws.OpsWorks.OpsWorksClient.html)

    *

  [AWS SDK for Ruby](http://docs.aws.amazon.com/sdkforruby/api/) 

    *

  [AWS SDK for Node.js](http://aws.amazon.com/documentation/sdkforjavascript/)

    *

  [AWS SDK for Python(Boto)](http://docs.pythonboto.org/en/latest/ref/opsworks.html)

  ## Endpoints

  AWS OpsWorks Stacks supports the following endpoints, all HTTPS. You must
  connect to one of the following endpoints. Stacks
  can only be accessed or managed within the endpoint in which they are created.

    *
  opsworks.us-east-1.amazonaws.com

    *
  opsworks.us-east-2.amazonaws.com

    *
  opsworks.us-west-1.amazonaws.com

    *
  opsworks.us-west-2.amazonaws.com

    *
  opsworks.ca-central-1.amazonaws.com (API only; not available in the AWS console)

    *
  opsworks.eu-west-1.amazonaws.com

    *
  opsworks.eu-west-2.amazonaws.com

    *
  opsworks.eu-west-3.amazonaws.com

    *
  opsworks.eu-central-1.amazonaws.com

    *
  opsworks.ap-northeast-1.amazonaws.com

    *
  opsworks.ap-northeast-2.amazonaws.com

    *
  opsworks.ap-south-1.amazonaws.com

    *
  opsworks.ap-southeast-1.amazonaws.com

    *
  opsworks.ap-southeast-2.amazonaws.com

    *
  opsworks.sa-east-1.amazonaws.com

  ## Chef Versions

  When you call `CreateStack`, `CloneStack`, or `UpdateStack` we recommend you
  use the `ConfigurationManager` parameter to specify the Chef version.
  The recommended and default value for Linux stacks is currently 12. Windows
  stacks use Chef 12.2. For more information,
  see [Chef Versions](https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-chef11.html).

  You can specify Chef 12, 11.10, or 11.4 for your Linux stack. We recommend
  migrating your existing Linux stacks to Chef 12 as soon as possible.
  """

  alias AWS.Client
  alias AWS.Request

  def metadata do
    %{
      api_version: "2013-02-18",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "opsworks",
      global?: false,
      protocol: "json",
      service_id: "OpsWorks",
      signature_version: "v4",
      signing_name: "opsworks",
      target_prefix: "OpsWorks_20130218"
    }
  end

  @doc """
  Assign a registered instance to a layer.

    *
  You can assign registered on-premises instances to any layer type.

    *
  You can assign registered Amazon EC2 instances only to custom layers.

    *
  You cannot use this action with instances that were created with AWS OpsWorks
  Stacks.

  **Required Permissions**: To use this action, an AWS Identity and Access
  Management
  (IAM) user must have a Manage permissions
  level for the stack or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def assign_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssignInstance", input, options)
  end

  @doc """
  Assigns one of the stack's registered Amazon EBS volumes to a specified
  instance.

  The volume must
  first be registered with the stack by calling `RegisterVolume`. After you
  register the
  volume, you must call `UpdateVolume` to specify a mount point before calling
  `AssignVolume`. For more information, see [Resource Management](https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def assign_volume(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssignVolume", input, options)
  end

  @doc """
  Associates one of the stack's registered Elastic IP addresses with a specified
  instance.

  The
  address must first be registered with the stack by calling `RegisterElasticIp`.
  For more
  information, see [Resource Management](https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def associate_elastic_ip(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateElasticIp", input, options)
  end

  @doc """
  Attaches an Elastic Load Balancing load balancer to a specified layer.

  AWS OpsWorks Stacks does not support
  Application Load Balancer. You can only use Classic Load Balancer with AWS
  OpsWorks Stacks.
  For more information, see [Elastic Load Balancing](https://docs.aws.amazon.com/opsworks/latest/userguide/layers-elb.html).

  You must create the Elastic Load Balancing instance separately, by using the
  Elastic Load Balancing console, API, or CLI. For
  more information, see [ Elastic Load Balancing Developer
  Guide](https://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/Welcome.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def attach_elastic_load_balancer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AttachElasticLoadBalancer", input, options)
  end

  @doc """
  Creates a clone of a specified stack.

  For more information, see [Clone a Stack](https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-cloning.html).
  By default, all parameters are set to the values used by the parent stack.

  **Required Permissions**: To use this action, an IAM user must have an attached
  policy
  that explicitly grants permissions. For more information about user permissions,
  see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def clone_stack(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CloneStack", input, options)
  end

  @doc """
  Creates an app for a specified stack.

  For more information, see [Creating Apps](https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-creating.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def create_app(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateApp", input, options)
  end

  @doc """
  Runs deployment or stack commands.

  For more information, see [Deploying Apps](https://docs.aws.amazon.com/opsworks/latest/userguide/workingapps-deploying.html)
  and [Run Stack Commands](https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-commands.html).

  **Required Permissions**: To use this action, an IAM user must have a Deploy or
  Manage
  permissions level for the stack, or an attached policy that explicitly grants
  permissions. For
  more information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def create_deployment(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateDeployment", input, options)
  end

  @doc """
  Creates an instance in a specified stack.

  For more information, see [Adding an Instance to a
  Layer](https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-add.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def create_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateInstance", input, options)
  end

  @doc """
  Creates a layer.

  For more information, see [How to Create a
  Layer](https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-create.html).

  You should use **CreateLayer** for noncustom layer types such as PHP App Server
  only if the stack
  does not have an existing layer of that type. A stack can have at most one
  instance of each
  noncustom layer; if you attempt to create a second instance, ## CreateLayer
  fails. A
  stack can have an arbitrary number of custom layers, so you can call
  **CreateLayer** as
  many times as you like for that layer type.

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def create_layer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateLayer", input, options)
  end

  @doc """
  Creates a new stack.

  For more information, see [Create a New Stack](https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-edit.html).

  **Required Permissions**: To use this action, an IAM user must have an attached
  policy
  that explicitly grants permissions. For more information about user permissions,
  see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def create_stack(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateStack", input, options)
  end

  @doc """
  Creates a new user profile.

  **Required Permissions**: To use this action, an IAM user must have an attached
  policy
  that explicitly grants permissions. For more information about user permissions,
  see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def create_user_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateUserProfile", input, options)
  end

  @doc """
  Deletes a specified app.

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def delete_app(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApp", input, options)
  end

  @doc """
  Deletes a specified instance, which terminates the associated Amazon EC2
  instance.

  You must stop an instance before you can delete it.

  For more information, see [Deleting Instances](https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-delete.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def delete_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteInstance", input, options)
  end

  @doc """
  Deletes a specified layer.

  You must first stop and then delete all associated instances or
  unassign registered instances. For more information, see [How to Delete a
  Layer](https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-delete.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def delete_layer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteLayer", input, options)
  end

  @doc """
  Deletes a specified stack.

  You must first delete all instances, layers, and apps or
  deregister registered instances. For more information, see [Shut Down a Stack](https://docs.aws.amazon.com/opsworks/latest/userguide/workingstacks-shutting.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def delete_stack(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteStack", input, options)
  end

  @doc """
  Deletes a user profile.

  **Required Permissions**: To use this action, an IAM user must have an attached
  policy
  that explicitly grants permissions. For more information about user permissions,
  see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def delete_user_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteUserProfile", input, options)
  end

  @doc """
  Deregisters a specified Amazon ECS cluster from a stack.

  For more information, see
  [
  Resource
  Management](https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html#workinglayers-ecscluster-delete).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see
  [https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def deregister_ecs_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterEcsCluster", input, options)
  end

  @doc """
  Deregisters a specified Elastic IP address.

  The address can then be registered by another
  stack. For more information, see [Resource Management](https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def deregister_elastic_ip(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterElasticIp", input, options)
  end

  @doc """
  Deregister a registered Amazon EC2 or on-premises instance.

  This action removes the
  instance from the stack and returns it to your control. This action cannot be
  used with
  instances that were created with AWS OpsWorks Stacks.

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def deregister_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterInstance", input, options)
  end

  @doc """
  Deregisters an Amazon RDS instance.

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def deregister_rds_db_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterRdsDbInstance", input, options)
  end

  @doc """
  Deregisters an Amazon EBS volume.

  The volume can then be registered by another stack. For more
  information, see [Resource Management](https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def deregister_volume(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterVolume", input, options)
  end

  @doc """
  Describes the available AWS OpsWorks Stacks agent versions.

  You must specify a stack ID or a
  configuration manager. `DescribeAgentVersions` returns a list of available
  agent versions for the specified stack or configuration manager.
  """
  def describe_agent_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAgentVersions", input, options)
  end

  @doc """
  Requests a description of a specified set of apps.

  This call accepts only one resource-identifying parameter.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or
  Manage permissions level for the stack, or an attached policy that explicitly
  grants
  permissions. For more information about user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_apps(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeApps", input, options)
  end

  @doc """
  Describes the results of specified commands.

  This call accepts only one resource-identifying parameter.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or
  Manage permissions level for the stack, or an attached policy that explicitly
  grants
  permissions. For more information about user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_commands(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeCommands", input, options)
  end

  @doc """
  Requests a description of a specified set of deployments.

  This call accepts only one resource-identifying parameter.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or
  Manage permissions level for the stack, or an attached policy that explicitly
  grants
  permissions. For more information about user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_deployments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDeployments", input, options)
  end

  @doc """
  Describes Amazon ECS clusters that are registered with a stack.

  If you specify only a stack ID,
  you can use the `MaxResults` and `NextToken` parameters to paginate the
  response. However, AWS OpsWorks Stacks currently supports only one cluster per
  layer, so the result
  set has a maximum of one element.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or
  Manage permissions level for the stack or an attached policy that explicitly
  grants
  permission. For more information about user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

  This call accepts only one resource-identifying parameter.
  """
  def describe_ecs_clusters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeEcsClusters", input, options)
  end

  @doc """
  Describes [Elastic IP addresses](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/elastic-ip-addresses-eip.html).

  This call accepts only one resource-identifying parameter.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or
  Manage permissions level for the stack, or an attached policy that explicitly
  grants
  permissions. For more information about user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_elastic_ips(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeElasticIps", input, options)
  end

  @doc """
  Describes a stack's Elastic Load Balancing instances.

  This call accepts only one resource-identifying parameter.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or
  Manage permissions level for the stack, or an attached policy that explicitly
  grants
  permissions. For more information about user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_elastic_load_balancers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeElasticLoadBalancers", input, options)
  end

  @doc """
  Requests a description of a set of instances.

  This call accepts only one resource-identifying parameter.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or
  Manage permissions level for the stack, or an attached policy that explicitly
  grants
  permissions. For more information about user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeInstances", input, options)
  end

  @doc """
  Requests a description of one or more layers in a specified stack.

  This call accepts only one resource-identifying parameter.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or
  Manage permissions level for the stack, or an attached policy that explicitly
  grants
  permissions. For more information about user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_layers(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLayers", input, options)
  end

  @doc """
  Describes load-based auto scaling configurations for specified layers.

  You must specify at least one of the parameters.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or
  Manage permissions level for the stack, or an attached policy that explicitly
  grants
  permissions. For more information about user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_load_based_auto_scaling(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeLoadBasedAutoScaling", input, options)
  end

  @doc """
  Describes a user's SSH information.

  **Required Permissions**: To use this action, an IAM user must have
  self-management
  enabled or an attached policy that explicitly grants permissions. For more
  information about user
  permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_my_user_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMyUserProfile", input, options)
  end

  @doc """
  Describes the operating systems that are supported by AWS OpsWorks Stacks.
  """
  def describe_operating_systems(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeOperatingSystems", input, options)
  end

  @doc """
  Describes the permissions for a specified stack.

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_permissions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribePermissions", input, options)
  end

  @doc """
  Describe an instance's RAID arrays.

  This call accepts only one resource-identifying parameter.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or
  Manage permissions level for the stack, or an attached policy that explicitly
  grants
  permissions. For more information about user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_raid_arrays(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRaidArrays", input, options)
  end

  @doc """
  Describes Amazon RDS instances.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or
  Manage permissions level for the stack, or an attached policy that explicitly
  grants
  permissions. For more information about user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

  This call accepts only one resource-identifying parameter.
  """
  def describe_rds_db_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRdsDbInstances", input, options)
  end

  @doc """
  Describes AWS OpsWorks Stacks service errors.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or
  Manage permissions level for the stack, or an attached policy that explicitly
  grants
  permissions. For more information about user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

  This call accepts only one resource-identifying parameter.
  """
  def describe_service_errors(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeServiceErrors", input, options)
  end

  @doc """
  Requests a description of a stack's provisioning parameters.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or
  Manage permissions level for the stack or an attached policy that explicitly
  grants
  permissions. For more information about user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_stack_provisioning_parameters(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStackProvisioningParameters", input, options)
  end

  @doc """
  Describes the number of layers and apps in a specified stack, and the number of
  instances in
  each state, such as `running_setup` or `online`.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or
  Manage permissions level for the stack, or an attached policy that explicitly
  grants
  permissions. For more information about user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_stack_summary(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStackSummary", input, options)
  end

  @doc """
  Requests a description of one or more stacks.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or
  Manage permissions level for the stack, or an attached policy that explicitly
  grants
  permissions. For more information about user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_stacks(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeStacks", input, options)
  end

  @doc """
  Describes time-based auto scaling configurations for specified instances.

  You must specify at least one of the parameters.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or
  Manage permissions level for the stack, or an attached policy that explicitly
  grants
  permissions. For more information about user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_time_based_auto_scaling(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeTimeBasedAutoScaling", input, options)
  end

  @doc """
  Describe specified users.

  **Required Permissions**: To use this action, an IAM user must have an attached
  policy
  that explicitly grants permissions. For more information about user permissions,
  see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_user_profiles(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeUserProfiles", input, options)
  end

  @doc """
  Describes an instance's Amazon EBS volumes.

  This call accepts only one resource-identifying parameter.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or
  Manage permissions level for the stack, or an attached policy that explicitly
  grants
  permissions. For more information about user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def describe_volumes(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeVolumes", input, options)
  end

  @doc """
  Detaches a specified Elastic Load Balancing instance from its layer.

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def detach_elastic_load_balancer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DetachElasticLoadBalancer", input, options)
  end

  @doc """
  Disassociates an Elastic IP address from its instance.

  The address remains registered with
  the stack. For more information, see [Resource Management](https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def disassociate_elastic_ip(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DisassociateElasticIp", input, options)
  end

  @doc """
  Gets a generated host name for the specified layer, based on the current host
  name theme.

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def get_hostname_suggestion(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetHostnameSuggestion", input, options)
  end

  @doc """

  This action can be used only with Windows stacks.

  Grants RDP access to a Windows instance for a specified time period.
  """
  def grant_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GrantAccess", input, options)
  end

  @doc """
  Returns a list of tags that are applied to the specified stack or layer.
  """
  def list_tags(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "ListTags", input, options)
  end

  @doc """
  Reboots a specified instance.

  For more information, see [Starting, Stopping, and Rebooting
  Instances](https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def reboot_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RebootInstance", input, options)
  end

  @doc """
  Registers a specified Amazon ECS cluster with a stack.

  You can register only one
  cluster with a stack. A cluster can be registered with only one stack.
  For more information, see
  [
  Resource
  Management](https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-ecscluster.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see
  [
  Managing User
  Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def register_ecs_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterEcsCluster", input, options)
  end

  @doc """
  Registers an Elastic IP address with a specified stack.

  An address can be registered with
  only one stack at a time. If the address is already registered, you must first
  deregister it
  by calling `DeregisterElasticIp`. For more information, see [Resource Management](https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def register_elastic_ip(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterElasticIp", input, options)
  end

  @doc """
  Registers instances that were created outside of AWS OpsWorks Stacks with a
  specified stack.

  We do not recommend using this action to register instances. The complete
  registration
  operation includes two tasks: installing the AWS OpsWorks Stacks agent on the
  instance, and registering
  the instance with the stack. `RegisterInstance` handles only the second step.
  You
  should instead use the AWS CLI `register` command, which performs the entire
  registration operation. For more information,
  see [
  Registering an Instance with an AWS OpsWorks Stacks
  Stack](https://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register.html).

  Registered instances have the same requirements as instances that are created by
  using the `CreateInstance` API.
  For example, registered instances must be running a supported Linux-based
  operating system, and they must have a supported instance
  type. For more information about requirements for instances that you want to
  register, see [
  Preparing the
  Instance](https://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register-registering-preparer.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def register_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterInstance", input, options)
  end

  @doc """
  Registers an Amazon RDS instance with a stack.

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def register_rds_db_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterRdsDbInstance", input, options)
  end

  @doc """
  Registers an Amazon EBS volume with a specified stack.

  A volume can be registered with only one
  stack at a time. If the volume is already registered, you must first deregister
  it by calling
  `DeregisterVolume`. For more information, see [Resource Management](https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def register_volume(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterVolume", input, options)
  end

  @doc """
  Specify the load-based auto scaling configuration for a specified layer.

  For more
  information, see [Managing Load with Time-based and Load-based
  Instances](https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html).

  To use load-based auto scaling, you must create a set of load-based auto scaling
  instances. Load-based auto scaling operates only on the instances from that set,
  so you must ensure that you have created enough instances to handle the maximum
  anticipated load.

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def set_load_based_auto_scaling(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetLoadBasedAutoScaling", input, options)
  end

  @doc """
  Specifies a user's permissions.

  For more information, see [Security and Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/workingsecurity.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def set_permission(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetPermission", input, options)
  end

  @doc """
  Specify the time-based auto scaling configuration for a specified instance.

  For more
  information, see [Managing Load with Time-based and Load-based
  Instances](https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-autoscaling.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def set_time_based_auto_scaling(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetTimeBasedAutoScaling", input, options)
  end

  @doc """
  Starts a specified instance.

  For more information, see [Starting, Stopping, and Rebooting
  Instances](https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def start_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartInstance", input, options)
  end

  @doc """
  Starts a stack's instances.

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def start_stack(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StartStack", input, options)
  end

  @doc """
  Stops a specified instance.

  When you stop a standard instance, the data disappears and must
  be reinstalled when you restart the instance. You can stop an Amazon EBS-backed
  instance without
  losing data. For more information, see [Starting, Stopping, and Rebooting
  Instances](https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-starting.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def stop_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopInstance", input, options)
  end

  @doc """
  Stops a specified stack.

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def stop_stack(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopStack", input, options)
  end

  @doc """
  Apply cost-allocation tags to a specified stack or layer in AWS OpsWorks Stacks.

  For more information about how tagging works, see
  [Tags](https://docs.aws.amazon.com/opsworks/latest/userguide/tagging.html) in
  the AWS OpsWorks User Guide.
  """
  def tag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "TagResource", input, options)
  end

  @doc """
  Unassigns a registered instance from all layers that are using the instance.

  The instance remains in the stack as an unassigned instance, and can be assigned
  to
  another layer as needed. You cannot use this action with instances that were
  created
  with AWS OpsWorks Stacks.

  **Required Permissions**: To use this action, an IAM user must
  have a Manage permissions level for the stack or an attached policy that
  explicitly
  grants permissions. For more information about user permissions, see [Managing User
  Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def unassign_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UnassignInstance", input, options)
  end

  @doc """
  Unassigns an assigned Amazon EBS volume.

  The volume remains registered with the stack. For more
  information, see [Resource Management](https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def unassign_volume(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UnassignVolume", input, options)
  end

  @doc """
  Removes tags from a specified stack or layer.
  """
  def untag_resource(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UntagResource", input, options)
  end

  @doc """
  Updates a specified app.

  **Required Permissions**: To use this action, an IAM user must have a Deploy or
  Manage
  permissions level for the stack, or an attached policy that explicitly grants
  permissions. For
  more information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def update_app(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateApp", input, options)
  end

  @doc """
  Updates a registered Elastic IP address's name.

  For more information, see [Resource Management](https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def update_elastic_ip(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateElasticIp", input, options)
  end

  @doc """
  Updates a specified instance.

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def update_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateInstance", input, options)
  end

  @doc """
  Updates a specified layer.

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def update_layer(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateLayer", input, options)
  end

  @doc """
  Updates a user's SSH public key.

  **Required Permissions**: To use this action, an IAM user must have
  self-management
  enabled or an attached policy that explicitly grants permissions. For more
  information about user
  permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def update_my_user_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateMyUserProfile", input, options)
  end

  @doc """
  Updates an Amazon RDS instance.

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def update_rds_db_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateRdsDbInstance", input, options)
  end

  @doc """
  Updates a specified stack.

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def update_stack(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateStack", input, options)
  end

  @doc """
  Updates a specified user profile.

  **Required Permissions**: To use this action, an IAM user must have an attached
  policy
  that explicitly grants permissions. For more information about user permissions,
  see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def update_user_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateUserProfile", input, options)
  end

  @doc """
  Updates an Amazon EBS volume's name or mount point.

  For more information, see [Resource Management](https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  def update_volume(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateVolume", input, options)
  end
end
