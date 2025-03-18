# WARNING: DO NOT EDIT, AUTO-GENERATED CODE!
# See https://github.com/aws-beam/aws-codegen for more details.

defmodule AWS.OpsWorks do
  @moduledoc """
  OpsWorks

  Welcome to the *OpsWorks Stacks API Reference*.

  This guide provides descriptions, syntax,
  and
  usage examples for OpsWorks Stacks actions and data types, including common
  parameters and error
  codes.

  OpsWorks Stacks is an application management service that provides an integrated
  experience for
  managing the complete application lifecycle. For information about OpsWorks, see
  the
  [OpsWorks](http://aws.amazon.com/opsworks/) information page. 
  ## SDKs and CLI

  Use the OpsWorks Stacks API by using the Command Line Interface (CLI) or by
  using one of the
  Amazon Web Services SDKs to implement applications in your preferred language.
  For more information, see:

    *

  [CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-welcome.html)

    *

  [SDK for Java](https://docs.aws.amazon.com/AWSJavaSDK/latest/javadoc/com/amazonaws/services/opsworks/AWSOpsWorksClient.html)

    *

  [SDK for .NET](https://docs.aws.amazon.com/sdkfornet/v3/apidocs/items/OpsWorks/NOpsWorks.html)

    *

  [SDK for PHP](https://docs.aws.amazon.com/aws-sdk-php/v3/api/class-Aws.OpsWorks.OpsWorksClient.html)

    *

  [SDK for Ruby](http://docs.aws.amazon.com/sdkforruby/api/) 

    *

  [Amazon Web Services SDK for
  Node.js](http://aws.amazon.com/documentation/sdkforjavascript/)

    *

  [SDK for Python (Boto)](http://docs.pythonboto.org/en/latest/ref/opsworks.html) 

  ## Endpoints

  OpsWorks Stacks supports the following endpoints, all HTTPS. You must connect to
  one of the following endpoints.
  Stacks can only be accessed or managed within the endpoint in which they are
  created.

    *
  opsworks.us-east-1.amazonaws.com

    *
  opsworks.us-east-2.amazonaws.com

    *
  opsworks.us-west-1.amazonaws.com

    *
  opsworks.us-west-2.amazonaws.com

    *
  opsworks.ca-central-1.amazonaws.com (API only; not available in the Amazon Web
  Services Management Console)

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
  see [Chef
  Versions](https://docs.aws.amazon.com/opsworks/latest/userguide/workingcookbook-chef11.html).

  You can specify Chef 12, 11.10, or 11.4 for your Linux stack. We recommend
  migrating your existing Linux stacks
  to Chef 12 as soon as possible.
  """

  alias AWS.Client
  alias AWS.Request

  @typedoc """

  ## Example:
      
      describe_operating_systems_response() :: %{
        "OperatingSystems" => list(operating_system()())
      }
      
  """
  @type describe_operating_systems_response() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      app() :: %{
        "AppId" => String.t(),
        "AppSource" => source(),
        "Attributes" => map(),
        "CreatedAt" => String.t(),
        "DataSources" => list(data_source()()),
        "Description" => String.t(),
        "Domains" => list(String.t()()),
        "EnableSsl" => boolean(),
        "Environment" => list(environment_variable()()),
        "Name" => String.t(),
        "Shortname" => String.t(),
        "SslConfiguration" => ssl_configuration(),
        "StackId" => String.t(),
        "Type" => list(any())
      }
      
  """
  @type app() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      user_profile() :: %{
        "AllowSelfManagement" => boolean(),
        "IamUserArn" => String.t(),
        "Name" => String.t(),
        "SshPublicKey" => String.t(),
        "SshUsername" => String.t()
      }
      
  """
  @type user_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_apps_request() :: %{
        optional("AppIds") => list(String.t()()),
        optional("StackId") => String.t()
      }
      
  """
  @type describe_apps_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_user_profile_request() :: %{
        optional("AllowSelfManagement") => boolean(),
        optional("SshPublicKey") => String.t(),
        optional("SshUsername") => String.t(),
        required("IamUserArn") => String.t()
      }
      
  """
  @type update_user_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      tag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("Tags") => map()
      }
      
  """
  @type tag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_ecs_cluster_request() :: %{
        required("EcsClusterArn") => String.t(),
        required("StackId") => String.t()
      }
      
  """
  @type register_ecs_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      elastic_ip() :: %{
        "Domain" => String.t(),
        "InstanceId" => String.t(),
        "Ip" => String.t(),
        "Name" => String.t(),
        "Region" => String.t()
      }
      
  """
  @type elastic_ip() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_app_request() :: %{
        optional("AppSource") => source(),
        optional("Attributes") => map(),
        optional("DataSources") => list(data_source()()),
        optional("Description") => String.t(),
        optional("Domains") => list(String.t()()),
        optional("EnableSsl") => boolean(),
        optional("Environment") => list(environment_variable()()),
        optional("Shortname") => String.t(),
        optional("SslConfiguration") => ssl_configuration(),
        required("Name") => String.t(),
        required("StackId") => String.t(),
        required("Type") => list(any())
      }
      
  """
  @type create_app_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_stack_request() :: %{
        required("StackId") => String.t()
      }
      
  """
  @type stop_stack_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_elastic_ips_result() :: %{
        "ElasticIps" => list(elastic_ip()())
      }
      
  """
  @type describe_elastic_ips_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_rds_db_instances_request() :: %{
        optional("RdsDbInstanceArns") => list(String.t()()),
        required("StackId") => String.t()
      }
      
  """
  @type describe_rds_db_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment() :: %{
        "AppId" => String.t(),
        "Command" => deployment_command(),
        "Comment" => String.t(),
        "CompletedAt" => String.t(),
        "CreatedAt" => String.t(),
        "CustomJson" => String.t(),
        "DeploymentId" => String.t(),
        "Duration" => integer(),
        "IamUserArn" => String.t(),
        "InstanceIds" => list(String.t()()),
        "StackId" => String.t(),
        "Status" => String.t()
      }
      
  """
  @type deployment() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_result() :: %{
        "NextToken" => String.t(),
        "Tags" => map()
      }
      
  """
  @type list_tags_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_ecs_cluster_request() :: %{
        required("EcsClusterArn") => String.t()
      }
      
  """
  @type deregister_ecs_cluster_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      block_device_mapping() :: %{
        "DeviceName" => String.t(),
        "Ebs" => ebs_block_device(),
        "NoDevice" => String.t(),
        "VirtualName" => String.t()
      }
      
  """
  @type block_device_mapping() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_stack_request() :: %{
        optional("AgentVersion") => String.t(),
        optional("Attributes") => map(),
        optional("ChefConfiguration") => chef_configuration(),
        optional("ConfigurationManager") => stack_configuration_manager(),
        optional("CustomCookbooksSource") => source(),
        optional("CustomJson") => String.t(),
        optional("DefaultAvailabilityZone") => String.t(),
        optional("DefaultOs") => String.t(),
        optional("DefaultRootDeviceType") => list(any()),
        optional("DefaultSshKeyName") => String.t(),
        optional("DefaultSubnetId") => String.t(),
        optional("HostnameTheme") => String.t(),
        optional("UseCustomCookbooks") => boolean(),
        optional("UseOpsworksSecurityGroups") => boolean(),
        optional("VpcId") => String.t(),
        required("DefaultInstanceProfileArn") => String.t(),
        required("Name") => String.t(),
        required("Region") => String.t(),
        required("ServiceRoleArn") => String.t()
      }
      
  """
  @type create_stack_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_stack_request() :: %{
        optional("AgentVersion") => String.t(),
        optional("Attributes") => map(),
        optional("ChefConfiguration") => chef_configuration(),
        optional("ConfigurationManager") => stack_configuration_manager(),
        optional("CustomCookbooksSource") => source(),
        optional("CustomJson") => String.t(),
        optional("DefaultAvailabilityZone") => String.t(),
        optional("DefaultInstanceProfileArn") => String.t(),
        optional("DefaultOs") => String.t(),
        optional("DefaultRootDeviceType") => list(any()),
        optional("DefaultSshKeyName") => String.t(),
        optional("DefaultSubnetId") => String.t(),
        optional("HostnameTheme") => String.t(),
        optional("Name") => String.t(),
        optional("ServiceRoleArn") => String.t(),
        optional("UseCustomCookbooks") => boolean(),
        optional("UseOpsworksSecurityGroups") => boolean(),
        required("StackId") => String.t()
      }
      
  """
  @type update_stack_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_raid_arrays_result() :: %{
        "RaidArrays" => list(raid_array()())
      }
      
  """
  @type describe_raid_arrays_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stop_instance_request() :: %{
        optional("Force") => boolean(),
        required("InstanceId") => String.t()
      }
      
  """
  @type stop_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_elastic_ips_request() :: %{
        optional("InstanceId") => String.t(),
        optional("Ips") => list(String.t()()),
        optional("StackId") => String.t()
      }
      
  """
  @type describe_elastic_ips_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_commands_result() :: %{
        "Commands" => list(command()())
      }
      
  """
  @type describe_commands_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      environment_variable() :: %{
        "Key" => String.t(),
        "Secure" => boolean(),
        "Value" => String.t()
      }
      
  """
  @type environment_variable() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      lifecycle_event_configuration() :: %{
        "Shutdown" => shutdown_event_configuration()
      }
      
  """
  @type lifecycle_event_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_volumes_request() :: %{
        optional("InstanceId") => String.t(),
        optional("RaidArrayId") => String.t(),
        optional("StackId") => String.t(),
        optional("VolumeIds") => list(String.t()())
      }
      
  """
  @type describe_volumes_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_volume_request() :: %{
        optional("MountPoint") => String.t(),
        optional("Name") => String.t(),
        required("VolumeId") => String.t()
      }
      
  """
  @type update_volume_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_stack_result() :: %{
        "StackId" => String.t()
      }
      
  """
  @type create_stack_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_deployment_request() :: %{
        optional("AppId") => String.t(),
        optional("Comment") => String.t(),
        optional("CustomJson") => String.t(),
        optional("InstanceIds") => list(String.t()()),
        optional("LayerIds") => list(String.t()()),
        required("Command") => deployment_command(),
        required("StackId") => String.t()
      }
      
  """
  @type create_deployment_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      temporary_credential() :: %{
        "InstanceId" => String.t(),
        "Password" => String.t(),
        "Username" => String.t(),
        "ValidForInMinutes" => integer()
      }
      
  """
  @type temporary_credential() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_layer_result() :: %{
        "LayerId" => String.t()
      }
      
  """
  @type create_layer_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stack_provisioning_parameters_result() :: %{
        "AgentInstallerUrl" => String.t(),
        "Parameters" => map()
      }
      
  """
  @type describe_stack_provisioning_parameters_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      shutdown_event_configuration() :: %{
        "DelayUntilElbConnectionsDrained" => boolean(),
        "ExecutionTimeout" => integer()
      }
      
  """
  @type shutdown_event_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_my_user_profile_result() :: %{
        "UserProfile" => self_user_profile()
      }
      
  """
  @type describe_my_user_profile_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_rds_db_instance_request() :: %{
        required("DbPassword") => String.t(),
        required("DbUser") => String.t(),
        required("RdsDbInstanceArn") => String.t(),
        required("StackId") => String.t()
      }
      
  """
  @type register_rds_db_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_permissions_request() :: %{
        optional("IamUserArn") => String.t(),
        optional("StackId") => String.t()
      }
      
  """
  @type describe_permissions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operating_system() :: %{
        "ConfigurationManagers" => list(operating_system_configuration_manager()()),
        "Id" => String.t(),
        "Name" => String.t(),
        "ReportedName" => String.t(),
        "ReportedVersion" => String.t(),
        "Supported" => boolean(),
        "Type" => String.t()
      }
      
  """
  @type operating_system() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_permissions_result() :: %{
        "Permissions" => list(permission()())
      }
      
  """
  @type describe_permissions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_volume_request() :: %{
        optional("Ec2VolumeId") => String.t(),
        required("StackId") => String.t()
      }
      
  """
  @type register_volume_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      untag_resource_request() :: %{
        required("ResourceArn") => String.t(),
        required("TagKeys") => list(String.t()())
      }
      
  """
  @type untag_resource_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stack_summary_result() :: %{
        "StackSummary" => stack_summary()
      }
      
  """
  @type describe_stack_summary_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_commands_request() :: %{
        optional("CommandIds") => list(String.t()()),
        optional("DeploymentId") => String.t(),
        optional("InstanceId") => String.t()
      }
      
  """
  @type describe_commands_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_instance_request() :: %{
        required("InstanceId") => String.t()
      }
      
  """
  @type deregister_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instances_count() :: %{
        "Assigning" => integer(),
        "Booting" => integer(),
        "ConnectionLost" => integer(),
        "Deregistering" => integer(),
        "Online" => integer(),
        "Pending" => integer(),
        "Rebooting" => integer(),
        "Registered" => integer(),
        "Registering" => integer(),
        "Requested" => integer(),
        "RunningSetup" => integer(),
        "SetupFailed" => integer(),
        "ShuttingDown" => integer(),
        "StartFailed" => integer(),
        "StopFailed" => integer(),
        "Stopped" => integer(),
        "Stopping" => integer(),
        "Terminated" => integer(),
        "Terminating" => integer(),
        "Unassigning" => integer()
      }
      
  """
  @type instances_count() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      grant_access_request() :: %{
        optional("ValidForInMinutes") => integer(),
        required("InstanceId") => String.t()
      }
      
  """
  @type grant_access_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_load_based_auto_scaling_request() :: %{
        optional("DownScaling") => auto_scaling_thresholds(),
        optional("Enable") => boolean(),
        optional("UpScaling") => auto_scaling_thresholds(),
        required("LayerId") => String.t()
      }
      
  """
  @type set_load_based_auto_scaling_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unassign_volume_request() :: %{
        required("VolumeId") => String.t()
      }
      
  """
  @type unassign_volume_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_hostname_suggestion_request() :: %{
        required("LayerId") => String.t()
      }
      
  """
  @type get_hostname_suggestion_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_logs_configuration() :: %{
        "Enabled" => boolean(),
        "LogStreams" => list(cloud_watch_logs_log_stream()())
      }
      
  """
  @type cloud_watch_logs_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_permission_request() :: %{
        optional("AllowSsh") => boolean(),
        optional("AllowSudo") => boolean(),
        optional("Level") => String.t(),
        required("IamUserArn") => String.t(),
        required("StackId") => String.t()
      }
      
  """
  @type set_permission_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_agent_versions_request() :: %{
        optional("ConfigurationManager") => stack_configuration_manager(),
        optional("StackId") => String.t()
      }
      
  """
  @type describe_agent_versions_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assign_volume_request() :: %{
        optional("InstanceId") => String.t(),
        required("VolumeId") => String.t()
      }
      
  """
  @type assign_volume_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reboot_instance_request() :: %{
        required("InstanceId") => String.t()
      }
      
  """
  @type reboot_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_stack_request() :: %{
        required("StackId") => String.t()
      }
      
  """
  @type delete_stack_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack() :: %{
        "AgentVersion" => String.t(),
        "Arn" => String.t(),
        "Attributes" => map(),
        "ChefConfiguration" => chef_configuration(),
        "ConfigurationManager" => stack_configuration_manager(),
        "CreatedAt" => String.t(),
        "CustomCookbooksSource" => source(),
        "CustomJson" => String.t(),
        "DefaultAvailabilityZone" => String.t(),
        "DefaultInstanceProfileArn" => String.t(),
        "DefaultOs" => String.t(),
        "DefaultRootDeviceType" => list(any()),
        "DefaultSshKeyName" => String.t(),
        "DefaultSubnetId" => String.t(),
        "HostnameTheme" => String.t(),
        "Name" => String.t(),
        "Region" => String.t(),
        "ServiceRoleArn" => String.t(),
        "StackId" => String.t(),
        "UseCustomCookbooks" => boolean(),
        "UseOpsworksSecurityGroups" => boolean(),
        "VpcId" => String.t()
      }
      
  """
  @type stack() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_rds_db_instances_result() :: %{
        "RdsDbInstances" => list(rds_db_instance()())
      }
      
  """
  @type describe_rds_db_instances_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_elastic_load_balancers_request() :: %{
        optional("LayerIds") => list(String.t()()),
        optional("StackId") => String.t()
      }
      
  """
  @type describe_elastic_load_balancers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      elastic_load_balancer() :: %{
        "AvailabilityZones" => list(String.t()()),
        "DnsName" => String.t(),
        "Ec2InstanceIds" => list(String.t()()),
        "ElasticLoadBalancerName" => String.t(),
        "LayerId" => String.t(),
        "Region" => String.t(),
        "StackId" => String.t(),
        "SubnetIds" => list(String.t()()),
        "VpcId" => String.t()
      }
      
  """
  @type elastic_load_balancer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      resource_not_found_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type resource_not_found_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      recipes() :: %{
        "Configure" => list(String.t()()),
        "Deploy" => list(String.t()()),
        "Setup" => list(String.t()()),
        "Shutdown" => list(String.t()()),
        "Undeploy" => list(String.t()())
      }
      
  """
  @type recipes() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      associate_elastic_ip_request() :: %{
        optional("InstanceId") => String.t(),
        required("ElasticIp") => String.t()
      }
      
  """
  @type associate_elastic_ip_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_summary() :: %{
        "AppsCount" => integer(),
        "Arn" => String.t(),
        "InstancesCount" => instances_count(),
        "LayersCount" => integer(),
        "Name" => String.t(),
        "StackId" => String.t()
      }
      
  """
  @type stack_summary() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deployment_command() :: %{
        "Args" => map(),
        "Name" => list(any())
      }
      
  """
  @type deployment_command() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stacks_request() :: %{
        optional("StackIds") => list(String.t()())
      }
      
  """
  @type describe_stacks_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      unassign_instance_request() :: %{
        required("InstanceId") => String.t()
      }
      
  """
  @type unassign_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      raid_array() :: %{
        "AvailabilityZone" => String.t(),
        "CreatedAt" => String.t(),
        "Device" => String.t(),
        "InstanceId" => String.t(),
        "Iops" => integer(),
        "MountPoint" => String.t(),
        "Name" => String.t(),
        "NumberOfDisks" => integer(),
        "RaidArrayId" => String.t(),
        "RaidLevel" => integer(),
        "Size" => integer(),
        "StackId" => String.t(),
        "VolumeType" => String.t()
      }
      
  """
  @type raid_array() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      disassociate_elastic_ip_request() :: %{
        required("ElasticIp") => String.t()
      }
      
  """
  @type disassociate_elastic_ip_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_user_profile_request() :: %{
        required("IamUserArn") => String.t()
      }
      
  """
  @type delete_user_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_deployment_result() :: %{
        "DeploymentId" => String.t()
      }
      
  """
  @type create_deployment_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_profiles_result() :: %{
        "UserProfiles" => list(user_profile()())
      }
      
  """
  @type describe_user_profiles_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      weekly_auto_scaling_schedule() :: %{
        "Friday" => map(),
        "Monday" => map(),
        "Saturday" => map(),
        "Sunday" => map(),
        "Thursday" => map(),
        "Tuesday" => map(),
        "Wednesday" => map()
      }
      
  """
  @type weekly_auto_scaling_schedule() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      assign_instance_request() :: %{
        required("InstanceId") => String.t(),
        required("LayerIds") => list(String.t()())
      }
      
  """
  @type assign_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_instance_result() :: %{
        "InstanceId" => String.t()
      }
      
  """
  @type create_instance_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_load_based_auto_scaling_request() :: %{
        required("LayerIds") => list(String.t()())
      }
      
  """
  @type describe_load_based_auto_scaling_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_instance_request() :: %{
        optional("AgentVersion") => String.t(),
        optional("AmiId") => String.t(),
        optional("Architecture") => list(any()),
        optional("AutoScalingType") => list(any()),
        optional("EbsOptimized") => boolean(),
        optional("Hostname") => String.t(),
        optional("InstallUpdatesOnBoot") => boolean(),
        optional("InstanceType") => String.t(),
        optional("LayerIds") => list(String.t()()),
        optional("Os") => String.t(),
        optional("SshKeyName") => String.t(),
        required("InstanceId") => String.t()
      }
      
  """
  @type update_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      stack_configuration_manager() :: %{
        "Name" => String.t(),
        "Version" => String.t()
      }
      
  """
  @type stack_configuration_manager() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_layers_result() :: %{
        "Layers" => list(layer()())
      }
      
  """
  @type describe_layers_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      layer() :: %{
        "Arn" => String.t(),
        "Attributes" => map(),
        "AutoAssignElasticIps" => boolean(),
        "AutoAssignPublicIps" => boolean(),
        "CloudWatchLogsConfiguration" => cloud_watch_logs_configuration(),
        "CreatedAt" => String.t(),
        "CustomInstanceProfileArn" => String.t(),
        "CustomJson" => String.t(),
        "CustomRecipes" => recipes(),
        "CustomSecurityGroupIds" => list(String.t()()),
        "DefaultRecipes" => recipes(),
        "DefaultSecurityGroupNames" => list(String.t()()),
        "EnableAutoHealing" => boolean(),
        "InstallUpdatesOnBoot" => boolean(),
        "LayerId" => String.t(),
        "LifecycleEventConfiguration" => lifecycle_event_configuration(),
        "Name" => String.t(),
        "Packages" => list(String.t()()),
        "Shortname" => String.t(),
        "StackId" => String.t(),
        "Type" => list(any()),
        "UseEbsOptimizedInstances" => boolean(),
        "VolumeConfigurations" => list(volume_configuration()())
      }
      
  """
  @type layer() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_instance_request() :: %{
        optional("Hostname") => String.t(),
        optional("InstanceIdentity") => instance_identity(),
        optional("PrivateIp") => String.t(),
        optional("PublicIp") => String.t(),
        optional("RsaPublicKey") => String.t(),
        optional("RsaPublicKeyFingerprint") => String.t(),
        required("StackId") => String.t()
      }
      
  """
  @type register_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_instances_request() :: %{
        optional("InstanceIds") => list(String.t()()),
        optional("LayerId") => String.t(),
        optional("StackId") => String.t()
      }
      
  """
  @type describe_instances_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ssl_configuration() :: %{
        "Certificate" => String.t(),
        "Chain" => String.t(),
        "PrivateKey" => String.t()
      }
      
  """
  @type ssl_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_user_profiles_request() :: %{
        optional("IamUserArns") => list(String.t()())
      }
      
  """
  @type describe_user_profiles_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_elastic_load_balancers_result() :: %{
        "ElasticLoadBalancers" => list(elastic_load_balancer()())
      }
      
  """
  @type describe_elastic_load_balancers_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_time_based_auto_scaling_request() :: %{
        required("InstanceIds") => list(String.t()())
      }
      
  """
  @type describe_time_based_auto_scaling_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_elastic_ip_request() :: %{
        optional("Name") => String.t(),
        required("ElasticIp") => String.t()
      }
      
  """
  @type update_elastic_ip_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_ecs_clusters_request() :: %{
        optional("EcsClusterArns") => list(String.t()()),
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        optional("StackId") => String.t()
      }
      
  """
  @type describe_ecs_clusters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ebs_block_device() :: %{
        "DeleteOnTermination" => boolean(),
        "Iops" => integer(),
        "SnapshotId" => String.t(),
        "VolumeSize" => integer(),
        "VolumeType" => list(any())
      }
      
  """
  @type ebs_block_device() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_elastic_ip_result() :: %{
        "ElasticIp" => String.t()
      }
      
  """
  @type register_elastic_ip_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      detach_elastic_load_balancer_request() :: %{
        required("ElasticLoadBalancerName") => String.t(),
        required("LayerId") => String.t()
      }
      
  """
  @type detach_elastic_load_balancer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      agent_version() :: %{
        "ConfigurationManager" => stack_configuration_manager(),
        "Version" => String.t()
      }
      
  """
  @type agent_version() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_deployments_result() :: %{
        "Deployments" => list(deployment()())
      }
      
  """
  @type describe_deployments_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      auto_scaling_thresholds() :: %{
        "Alarms" => list(String.t()()),
        "CpuThreshold" => float(),
        "IgnoreMetricsTime" => integer(),
        "InstanceCount" => integer(),
        "LoadThreshold" => float(),
        "MemoryThreshold" => float(),
        "ThresholdsWaitTime" => integer()
      }
      
  """
  @type auto_scaling_thresholds() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      get_hostname_suggestion_result() :: %{
        "Hostname" => String.t(),
        "LayerId" => String.t()
      }
      
  """
  @type get_hostname_suggestion_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_apps_result() :: %{
        "Apps" => list(app()())
      }
      
  """
  @type describe_apps_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_layer_request() :: %{
        optional("Attributes") => map(),
        optional("AutoAssignElasticIps") => boolean(),
        optional("AutoAssignPublicIps") => boolean(),
        optional("CloudWatchLogsConfiguration") => cloud_watch_logs_configuration(),
        optional("CustomInstanceProfileArn") => String.t(),
        optional("CustomJson") => String.t(),
        optional("CustomRecipes") => recipes(),
        optional("CustomSecurityGroupIds") => list(String.t()()),
        optional("EnableAutoHealing") => boolean(),
        optional("InstallUpdatesOnBoot") => boolean(),
        optional("LifecycleEventConfiguration") => lifecycle_event_configuration(),
        optional("Name") => String.t(),
        optional("Packages") => list(String.t()()),
        optional("Shortname") => String.t(),
        optional("UseEbsOptimizedInstances") => boolean(),
        optional("VolumeConfigurations") => list(volume_configuration()()),
        required("LayerId") => String.t()
      }
      
  """
  @type update_layer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_elastic_ip_request() :: %{
        required("ElasticIp") => String.t()
      }
      
  """
  @type deregister_elastic_ip_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      source() :: %{
        "Password" => String.t(),
        "Revision" => String.t(),
        "SshKey" => String.t(),
        "Type" => list(any()),
        "Url" => String.t(),
        "Username" => String.t()
      }
      
  """
  @type source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      attach_elastic_load_balancer_request() :: %{
        required("ElasticLoadBalancerName") => String.t(),
        required("LayerId") => String.t()
      }
      
  """
  @type attach_elastic_load_balancer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_service_errors_request() :: %{
        optional("InstanceId") => String.t(),
        optional("ServiceErrorIds") => list(String.t()()),
        optional("StackId") => String.t()
      }
      
  """
  @type describe_service_errors_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stacks_result() :: %{
        "Stacks" => list(stack()())
      }
      
  """
  @type describe_stacks_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      clone_stack_request() :: %{
        optional("AgentVersion") => String.t(),
        optional("Attributes") => map(),
        optional("ChefConfiguration") => chef_configuration(),
        optional("CloneAppIds") => list(String.t()()),
        optional("ClonePermissions") => boolean(),
        optional("ConfigurationManager") => stack_configuration_manager(),
        optional("CustomCookbooksSource") => source(),
        optional("CustomJson") => String.t(),
        optional("DefaultAvailabilityZone") => String.t(),
        optional("DefaultInstanceProfileArn") => String.t(),
        optional("DefaultOs") => String.t(),
        optional("DefaultRootDeviceType") => list(any()),
        optional("DefaultSshKeyName") => String.t(),
        optional("DefaultSubnetId") => String.t(),
        optional("HostnameTheme") => String.t(),
        optional("Name") => String.t(),
        optional("Region") => String.t(),
        optional("UseCustomCookbooks") => boolean(),
        optional("UseOpsworksSecurityGroups") => boolean(),
        optional("VpcId") => String.t(),
        required("ServiceRoleArn") => String.t(),
        required("SourceStackId") => String.t()
      }
      
  """
  @type clone_stack_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_app_request() :: %{
        required("AppId") => String.t()
      }
      
  """
  @type delete_app_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      load_based_auto_scaling_configuration() :: %{
        "DownScaling" => auto_scaling_thresholds(),
        "Enable" => boolean(),
        "LayerId" => String.t(),
        "UpScaling" => auto_scaling_thresholds()
      }
      
  """
  @type load_based_auto_scaling_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_my_user_profile_request() :: %{
        optional("SshPublicKey") => String.t()
      }
      
  """
  @type update_my_user_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_instance_request() :: %{
        optional("AgentVersion") => String.t(),
        optional("AmiId") => String.t(),
        optional("Architecture") => list(any()),
        optional("AutoScalingType") => list(any()),
        optional("AvailabilityZone") => String.t(),
        optional("BlockDeviceMappings") => list(block_device_mapping()()),
        optional("EbsOptimized") => boolean(),
        optional("Hostname") => String.t(),
        optional("InstallUpdatesOnBoot") => boolean(),
        optional("Os") => String.t(),
        optional("RootDeviceType") => list(any()),
        optional("SshKeyName") => String.t(),
        optional("SubnetId") => String.t(),
        optional("Tenancy") => String.t(),
        optional("VirtualizationType") => String.t(),
        required("InstanceType") => String.t(),
        required("LayerIds") => list(String.t()()),
        required("StackId") => String.t()
      }
      
  """
  @type create_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_agent_versions_result() :: %{
        "AgentVersions" => list(agent_version()())
      }
      
  """
  @type describe_agent_versions_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_ecs_cluster_result() :: %{
        "EcsClusterArn" => String.t()
      }
      
  """
  @type register_ecs_cluster_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance() :: %{
        "Status" => String.t(),
        "AutoScalingType" => list(any()),
        "AmiId" => String.t(),
        "Hostname" => String.t(),
        "ReportedOs" => reported_os(),
        "LastServiceErrorId" => String.t(),
        "SubnetId" => String.t(),
        "InstanceProfileArn" => String.t(),
        "AgentVersion" => String.t(),
        "BlockDeviceMappings" => list(block_device_mapping()()),
        "SshKeyName" => String.t(),
        "Os" => String.t(),
        "StackId" => String.t(),
        "RootDeviceVolumeId" => String.t(),
        "CreatedAt" => String.t(),
        "Ec2InstanceId" => String.t(),
        "AvailabilityZone" => String.t(),
        "RegisteredBy" => String.t(),
        "SecurityGroupIds" => list(String.t()()),
        "InstanceType" => String.t(),
        "InstanceId" => String.t(),
        "Tenancy" => String.t(),
        "PublicIp" => String.t(),
        "ElasticIp" => String.t(),
        "ReportedAgentVersion" => String.t(),
        "EcsContainerInstanceArn" => String.t(),
        "VirtualizationType" => list(any()),
        "PrivateDns" => String.t(),
        "RootDeviceType" => list(any()),
        "PrivateIp" => String.t(),
        "Architecture" => list(any()),
        "InstallUpdatesOnBoot" => boolean(),
        "LayerIds" => list(String.t()()),
        "Arn" => String.t(),
        "EcsClusterArn" => String.t(),
        "SshHostDsaKeyFingerprint" => String.t(),
        "SshHostRsaKeyFingerprint" => String.t(),
        "PublicDns" => String.t(),
        "EbsOptimized" => boolean(),
        "InfrastructureClass" => String.t(),
        "Platform" => String.t()
      }
      
  """
  @type instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      volume() :: %{
        "AvailabilityZone" => String.t(),
        "Device" => String.t(),
        "Ec2VolumeId" => String.t(),
        "Encrypted" => boolean(),
        "InstanceId" => String.t(),
        "Iops" => integer(),
        "MountPoint" => String.t(),
        "Name" => String.t(),
        "RaidArrayId" => String.t(),
        "Region" => String.t(),
        "Size" => integer(),
        "Status" => String.t(),
        "VolumeId" => String.t(),
        "VolumeType" => String.t()
      }
      
  """
  @type volume() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_volume_request() :: %{
        required("VolumeId") => String.t()
      }
      
  """
  @type deregister_volume_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      chef_configuration() :: %{
        "BerkshelfVersion" => String.t(),
        "ManageBerkshelf" => boolean()
      }
      
  """
  @type chef_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_profile_request() :: %{
        optional("AllowSelfManagement") => boolean(),
        optional("SshPublicKey") => String.t(),
        optional("SshUsername") => String.t(),
        required("IamUserArn") => String.t()
      }
      
  """
  @type create_user_profile_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      ecs_cluster() :: %{
        "EcsClusterArn" => String.t(),
        "EcsClusterName" => String.t(),
        "RegisteredAt" => String.t(),
        "StackId" => String.t()
      }
      
  """
  @type ecs_cluster() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_user_profile_result() :: %{
        "IamUserArn" => String.t()
      }
      
  """
  @type create_user_profile_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_raid_arrays_request() :: %{
        optional("InstanceId") => String.t(),
        optional("RaidArrayIds") => list(String.t()()),
        optional("StackId") => String.t()
      }
      
  """
  @type describe_raid_arrays_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_layer_request() :: %{
        optional("Attributes") => map(),
        optional("AutoAssignElasticIps") => boolean(),
        optional("AutoAssignPublicIps") => boolean(),
        optional("CloudWatchLogsConfiguration") => cloud_watch_logs_configuration(),
        optional("CustomInstanceProfileArn") => String.t(),
        optional("CustomJson") => String.t(),
        optional("CustomRecipes") => recipes(),
        optional("CustomSecurityGroupIds") => list(String.t()()),
        optional("EnableAutoHealing") => boolean(),
        optional("InstallUpdatesOnBoot") => boolean(),
        optional("LifecycleEventConfiguration") => lifecycle_event_configuration(),
        optional("Packages") => list(String.t()()),
        optional("UseEbsOptimizedInstances") => boolean(),
        optional("VolumeConfigurations") => list(volume_configuration()()),
        required("Name") => String.t(),
        required("Shortname") => String.t(),
        required("StackId") => String.t(),
        required("Type") => list(any())
      }
      
  """
  @type create_layer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_ecs_clusters_result() :: %{
        "EcsClusters" => list(ecs_cluster()()),
        "NextToken" => String.t()
      }
      
  """
  @type describe_ecs_clusters_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_layer_request() :: %{
        required("LayerId") => String.t()
      }
      
  """
  @type delete_layer_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_instance_result() :: %{
        "InstanceId" => String.t()
      }
      
  """
  @type register_instance_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_time_based_auto_scaling_result() :: %{
        "TimeBasedAutoScalingConfigurations" => list(time_based_auto_scaling_configuration()())
      }
      
  """
  @type describe_time_based_auto_scaling_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_rds_db_instance_request() :: %{
        optional("DbPassword") => String.t(),
        optional("DbUser") => String.t(),
        required("RdsDbInstanceArn") => String.t()
      }
      
  """
  @type update_rds_db_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_layers_request() :: %{
        optional("LayerIds") => list(String.t()()),
        optional("StackId") => String.t()
      }
      
  """
  @type describe_layers_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      validation_exception() :: %{
        "message" => String.t()
      }
      
  """
  @type validation_exception() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      update_app_request() :: %{
        optional("AppSource") => source(),
        optional("Attributes") => map(),
        optional("DataSources") => list(data_source()()),
        optional("Description") => String.t(),
        optional("Domains") => list(String.t()()),
        optional("EnableSsl") => boolean(),
        optional("Environment") => list(environment_variable()()),
        optional("Name") => String.t(),
        optional("SslConfiguration") => ssl_configuration(),
        optional("Type") => list(any()),
        required("AppId") => String.t()
      }
      
  """
  @type update_app_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      delete_instance_request() :: %{
        optional("DeleteElasticIp") => boolean(),
        optional("DeleteVolumes") => boolean(),
        required("InstanceId") => String.t()
      }
      
  """
  @type delete_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_elastic_ip_request() :: %{
        required("ElasticIp") => String.t(),
        required("StackId") => String.t()
      }
      
  """
  @type register_elastic_ip_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      register_volume_result() :: %{
        "VolumeId" => String.t()
      }
      
  """
  @type register_volume_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      grant_access_result() :: %{
        "TemporaryCredential" => temporary_credential()
      }
      
  """
  @type grant_access_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stack_summary_request() :: %{
        required("StackId") => String.t()
      }
      
  """
  @type describe_stack_summary_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_instances_result() :: %{
        "Instances" => list(instance()())
      }
      
  """
  @type describe_instances_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      rds_db_instance() :: %{
        "Address" => String.t(),
        "DbInstanceIdentifier" => String.t(),
        "DbPassword" => String.t(),
        "DbUser" => String.t(),
        "Engine" => String.t(),
        "MissingOnRds" => boolean(),
        "RdsDbInstanceArn" => String.t(),
        "Region" => String.t(),
        "StackId" => String.t()
      }
      
  """
  @type rds_db_instance() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_load_based_auto_scaling_result() :: %{
        "LoadBasedAutoScalingConfigurations" => list(load_based_auto_scaling_configuration()())
      }
      
  """
  @type describe_load_based_auto_scaling_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      clone_stack_result() :: %{
        "StackId" => String.t()
      }
      
  """
  @type clone_stack_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      command() :: %{
        "AcknowledgedAt" => String.t(),
        "CommandId" => String.t(),
        "CompletedAt" => String.t(),
        "CreatedAt" => String.t(),
        "DeploymentId" => String.t(),
        "ExitCode" => integer(),
        "InstanceId" => String.t(),
        "LogUrl" => String.t(),
        "Status" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type command() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      volume_configuration() :: %{
        "Encrypted" => boolean(),
        "Iops" => integer(),
        "MountPoint" => String.t(),
        "NumberOfDisks" => integer(),
        "RaidLevel" => integer(),
        "Size" => integer(),
        "VolumeType" => String.t()
      }
      
  """
  @type volume_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_volumes_result() :: %{
        "Volumes" => list(volume()())
      }
      
  """
  @type describe_volumes_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      operating_system_configuration_manager() :: %{
        "Name" => String.t(),
        "Version" => String.t()
      }
      
  """
  @type operating_system_configuration_manager() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      service_error() :: %{
        "CreatedAt" => String.t(),
        "InstanceId" => String.t(),
        "Message" => String.t(),
        "ServiceErrorId" => String.t(),
        "StackId" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type service_error() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      data_source() :: %{
        "Arn" => String.t(),
        "DatabaseName" => String.t(),
        "Type" => String.t()
      }
      
  """
  @type data_source() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_instance_request() :: %{
        required("InstanceId") => String.t()
      }
      
  """
  @type start_instance_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      self_user_profile() :: %{
        "IamUserArn" => String.t(),
        "Name" => String.t(),
        "SshPublicKey" => String.t(),
        "SshUsername" => String.t()
      }
      
  """
  @type self_user_profile() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      set_time_based_auto_scaling_request() :: %{
        optional("AutoScalingSchedule") => weekly_auto_scaling_schedule(),
        required("InstanceId") => String.t()
      }
      
  """
  @type set_time_based_auto_scaling_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      list_tags_request() :: %{
        optional("MaxResults") => integer(),
        optional("NextToken") => String.t(),
        required("ResourceArn") => String.t()
      }
      
  """
  @type list_tags_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      cloud_watch_logs_log_stream() :: %{
        "BatchCount" => integer(),
        "BatchSize" => integer(),
        "BufferDuration" => integer(),
        "DatetimeFormat" => String.t(),
        "Encoding" => list(any()),
        "File" => String.t(),
        "FileFingerprintLines" => String.t(),
        "InitialPosition" => list(any()),
        "LogGroupName" => String.t(),
        "MultiLineStartPattern" => String.t(),
        "TimeZone" => list(any())
      }
      
  """
  @type cloud_watch_logs_log_stream() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_stack_provisioning_parameters_request() :: %{
        required("StackId") => String.t()
      }
      
  """
  @type describe_stack_provisioning_parameters_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      instance_identity() :: %{
        "Document" => String.t(),
        "Signature" => String.t()
      }
      
  """
  @type instance_identity() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_deployments_request() :: %{
        optional("AppId") => String.t(),
        optional("DeploymentIds") => list(String.t()()),
        optional("StackId") => String.t()
      }
      
  """
  @type describe_deployments_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      create_app_result() :: %{
        "AppId" => String.t()
      }
      
  """
  @type create_app_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      describe_service_errors_result() :: %{
        "ServiceErrors" => list(service_error()())
      }
      
  """
  @type describe_service_errors_result() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      start_stack_request() :: %{
        required("StackId") => String.t()
      }
      
  """
  @type start_stack_request() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      time_based_auto_scaling_configuration() :: %{
        "AutoScalingSchedule" => weekly_auto_scaling_schedule(),
        "InstanceId" => String.t()
      }
      
  """
  @type time_based_auto_scaling_configuration() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      permission() :: %{
        "AllowSsh" => boolean(),
        "AllowSudo" => boolean(),
        "IamUserArn" => String.t(),
        "Level" => String.t(),
        "StackId" => String.t()
      }
      
  """
  @type permission() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      reported_os() :: %{
        "Family" => String.t(),
        "Name" => String.t(),
        "Version" => String.t()
      }
      
  """
  @type reported_os() :: %{String.t() => any()}

  @typedoc """

  ## Example:
      
      deregister_rds_db_instance_request() :: %{
        required("RdsDbInstanceArn") => String.t()
      }
      
  """
  @type deregister_rds_db_instance_request() :: %{String.t() => any()}

  @type assign_instance_errors() :: validation_exception() | resource_not_found_exception()

  @type assign_volume_errors() :: validation_exception() | resource_not_found_exception()

  @type associate_elastic_ip_errors() :: validation_exception() | resource_not_found_exception()

  @type attach_elastic_load_balancer_errors() ::
          validation_exception() | resource_not_found_exception()

  @type clone_stack_errors() :: validation_exception() | resource_not_found_exception()

  @type create_app_errors() :: validation_exception() | resource_not_found_exception()

  @type create_deployment_errors() :: validation_exception() | resource_not_found_exception()

  @type create_instance_errors() :: validation_exception() | resource_not_found_exception()

  @type create_layer_errors() :: validation_exception() | resource_not_found_exception()

  @type create_stack_errors() :: validation_exception()

  @type create_user_profile_errors() :: validation_exception()

  @type delete_app_errors() :: validation_exception() | resource_not_found_exception()

  @type delete_instance_errors() :: validation_exception() | resource_not_found_exception()

  @type delete_layer_errors() :: validation_exception() | resource_not_found_exception()

  @type delete_stack_errors() :: validation_exception() | resource_not_found_exception()

  @type delete_user_profile_errors() :: validation_exception() | resource_not_found_exception()

  @type deregister_ecs_cluster_errors() :: validation_exception() | resource_not_found_exception()

  @type deregister_elastic_ip_errors() :: validation_exception() | resource_not_found_exception()

  @type deregister_instance_errors() :: validation_exception() | resource_not_found_exception()

  @type deregister_rds_db_instance_errors() ::
          validation_exception() | resource_not_found_exception()

  @type deregister_volume_errors() :: validation_exception() | resource_not_found_exception()

  @type describe_agent_versions_errors() ::
          validation_exception() | resource_not_found_exception()

  @type describe_apps_errors() :: validation_exception() | resource_not_found_exception()

  @type describe_commands_errors() :: validation_exception() | resource_not_found_exception()

  @type describe_deployments_errors() :: validation_exception() | resource_not_found_exception()

  @type describe_ecs_clusters_errors() :: validation_exception() | resource_not_found_exception()

  @type describe_elastic_ips_errors() :: validation_exception() | resource_not_found_exception()

  @type describe_elastic_load_balancers_errors() ::
          validation_exception() | resource_not_found_exception()

  @type describe_instances_errors() :: validation_exception() | resource_not_found_exception()

  @type describe_layers_errors() :: validation_exception() | resource_not_found_exception()

  @type describe_load_based_auto_scaling_errors() ::
          validation_exception() | resource_not_found_exception()

  @type describe_permissions_errors() :: validation_exception() | resource_not_found_exception()

  @type describe_raid_arrays_errors() :: validation_exception() | resource_not_found_exception()

  @type describe_rds_db_instances_errors() ::
          validation_exception() | resource_not_found_exception()

  @type describe_service_errors_errors() ::
          validation_exception() | resource_not_found_exception()

  @type describe_stack_provisioning_parameters_errors() ::
          validation_exception() | resource_not_found_exception()

  @type describe_stack_summary_errors() :: validation_exception() | resource_not_found_exception()

  @type describe_stacks_errors() :: validation_exception() | resource_not_found_exception()

  @type describe_time_based_auto_scaling_errors() ::
          validation_exception() | resource_not_found_exception()

  @type describe_user_profiles_errors() :: validation_exception() | resource_not_found_exception()

  @type describe_volumes_errors() :: validation_exception() | resource_not_found_exception()

  @type detach_elastic_load_balancer_errors() :: resource_not_found_exception()

  @type disassociate_elastic_ip_errors() ::
          validation_exception() | resource_not_found_exception()

  @type get_hostname_suggestion_errors() ::
          validation_exception() | resource_not_found_exception()

  @type grant_access_errors() :: validation_exception() | resource_not_found_exception()

  @type list_tags_errors() :: validation_exception() | resource_not_found_exception()

  @type reboot_instance_errors() :: validation_exception() | resource_not_found_exception()

  @type register_ecs_cluster_errors() :: validation_exception() | resource_not_found_exception()

  @type register_elastic_ip_errors() :: validation_exception() | resource_not_found_exception()

  @type register_instance_errors() :: validation_exception() | resource_not_found_exception()

  @type register_rds_db_instance_errors() ::
          validation_exception() | resource_not_found_exception()

  @type register_volume_errors() :: validation_exception() | resource_not_found_exception()

  @type set_load_based_auto_scaling_errors() ::
          validation_exception() | resource_not_found_exception()

  @type set_permission_errors() :: validation_exception() | resource_not_found_exception()

  @type set_time_based_auto_scaling_errors() ::
          validation_exception() | resource_not_found_exception()

  @type start_instance_errors() :: validation_exception() | resource_not_found_exception()

  @type start_stack_errors() :: validation_exception() | resource_not_found_exception()

  @type stop_instance_errors() :: validation_exception() | resource_not_found_exception()

  @type stop_stack_errors() :: validation_exception() | resource_not_found_exception()

  @type tag_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type unassign_instance_errors() :: validation_exception() | resource_not_found_exception()

  @type unassign_volume_errors() :: validation_exception() | resource_not_found_exception()

  @type untag_resource_errors() :: validation_exception() | resource_not_found_exception()

  @type update_app_errors() :: validation_exception() | resource_not_found_exception()

  @type update_elastic_ip_errors() :: validation_exception() | resource_not_found_exception()

  @type update_instance_errors() :: validation_exception() | resource_not_found_exception()

  @type update_layer_errors() :: validation_exception() | resource_not_found_exception()

  @type update_my_user_profile_errors() :: validation_exception()

  @type update_rds_db_instance_errors() :: validation_exception() | resource_not_found_exception()

  @type update_stack_errors() :: validation_exception() | resource_not_found_exception()

  @type update_user_profile_errors() :: validation_exception() | resource_not_found_exception()

  @type update_volume_errors() :: validation_exception() | resource_not_found_exception()

  def metadata do
    %{
      api_version: "2013-02-18",
      content_type: "application/x-amz-json-1.1",
      credential_scope: nil,
      endpoint_prefix: "opsworks",
      global?: false,
      hostname: nil,
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
  You cannot use this action with instances that were created with OpsWorks
  Stacks.

  **Required Permissions**: To use this action, an Identity and Access Management
  (IAM) user must have a Manage permissions
  level for the stack or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  @spec assign_instance(map(), assign_instance_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, assign_instance_errors()}
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
  @spec assign_volume(map(), assign_volume_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, assign_volume_errors()}
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

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  @spec associate_elastic_ip(map(), associate_elastic_ip_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, associate_elastic_ip_errors()}
  def associate_elastic_ip(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "AssociateElasticIp", input, options)
  end

  @doc """
  Attaches an Elastic Load Balancing load balancer to a specified layer.

  OpsWorks Stacks does not support
  Application Load Balancer. You can only use Classic Load Balancer with OpsWorks
  Stacks.
  For more information, see [Elastic Load Balancing](https://docs.aws.amazon.com/opsworks/latest/userguide/layers-elb.html).

  You must create the Elastic Load Balancing instance separately, by using the
  Elastic Load Balancing console, API, or CLI. For
  more information, see the [Elastic Load Balancing Developer Guide](https://docs.aws.amazon.com/ElasticLoadBalancing/latest/DeveloperGuide/Welcome.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  @spec attach_elastic_load_balancer(map(), attach_elastic_load_balancer_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, attach_elastic_load_balancer_errors()}
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
  @spec clone_stack(map(), clone_stack_request(), list()) ::
          {:ok, clone_stack_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, clone_stack_errors()}
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
  @spec create_app(map(), create_app_request(), list()) ::
          {:ok, create_app_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_app_errors()}
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
  @spec create_deployment(map(), create_deployment_request(), list()) ::
          {:ok, create_deployment_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_deployment_errors()}
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
  @spec create_instance(map(), create_instance_request(), list()) ::
          {:ok, create_instance_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_instance_errors()}
  def create_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateInstance", input, options)
  end

  @doc """
  Creates a layer.

  For more information, see [How to Create a
  Layer](https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-create.html).

  You should use **CreateLayer** for noncustom layer types such as
  PHP App Server only if the stack
  does not have an existing layer of that type. A stack can have at most one
  instance of each
  noncustom layer; if you attempt to create a second instance, ## CreateLayer
  fails. A
  stack can have an arbitrary number of custom layers, so you can call
  **CreateLayer** as
  many times as you like for that layer type.

  **Required Permissions**: To use this action, an IAM user must
  have a Manage permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  @spec create_layer(map(), create_layer_request(), list()) ::
          {:ok, create_layer_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_layer_errors()}
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
  @spec create_stack(map(), create_stack_request(), list()) ::
          {:ok, create_stack_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_stack_errors()}
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
  @spec create_user_profile(map(), create_user_profile_request(), list()) ::
          {:ok, create_user_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, create_user_profile_errors()}
  def create_user_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "CreateUserProfile", input, options)
  end

  @doc """
  Deletes a specified app.

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  @spec delete_app(map(), delete_app_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_app_errors()}
  def delete_app(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteApp", input, options)
  end

  @doc """
  Deletes a specified instance, which terminates the associated Amazon EC2
  instance.

  You must stop an instance before
  you can delete it.

  For more information, see [Deleting Instances](https://docs.aws.amazon.com/opsworks/latest/userguide/workinginstances-delete.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  @spec delete_instance(map(), delete_instance_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_instance_errors()}
  def delete_instance(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeleteInstance", input, options)
  end

  @doc """
  Deletes a specified layer.

  You must first stop and then delete all associated instances or
  unassign registered instances. For more information, see [How to Delete a
  Layer](https://docs.aws.amazon.com/opsworks/latest/userguide/workinglayers-basics-delete.html).

  **Required Permissions**: To use this action, an IAM user must have a
  Manage permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  @spec delete_layer(map(), delete_layer_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_layer_errors()}
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
  @spec delete_stack(map(), delete_stack_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_stack_errors()}
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
  @spec delete_user_profile(map(), delete_user_profile_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, delete_user_profile_errors()}
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
  @spec deregister_ecs_cluster(map(), deregister_ecs_cluster_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_ecs_cluster_errors()}
  def deregister_ecs_cluster(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterEcsCluster", input, options)
  end

  @doc """
  Deregisters a specified Elastic IP address.

  The address can be registered by another
  stack after it is deregistered. For more information, see [Resource Management](https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  @spec deregister_elastic_ip(map(), deregister_elastic_ip_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_elastic_ip_errors()}
  def deregister_elastic_ip(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterElasticIp", input, options)
  end

  @doc """
  Deregister an instance from OpsWorks Stacks.

  The instance can be a registered instance (Amazon EC2 or on-premises) or an
  instance created with OpsWorks.
  This action removes the instance from the stack and returns it to your control.

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  @spec deregister_instance(map(), deregister_instance_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_instance_errors()}
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
  @spec deregister_rds_db_instance(map(), deregister_rds_db_instance_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_rds_db_instance_errors()}
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
  @spec deregister_volume(map(), deregister_volume_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, deregister_volume_errors()}
  def deregister_volume(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DeregisterVolume", input, options)
  end

  @doc """
  Describes the available OpsWorks Stacks agent versions.

  You must specify a stack ID or a
  configuration manager. `DescribeAgentVersions` returns a list of available
  agent versions for the specified stack or configuration manager.
  """
  @spec describe_agent_versions(map(), describe_agent_versions_request(), list()) ::
          {:ok, describe_agent_versions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_agent_versions_errors()}
  def describe_agent_versions(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeAgentVersions", input, options)
  end

  @doc """
  Requests a description of a specified set of apps.

  This call accepts only one resource-identifying parameter.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy,
  or
  Manage permissions level for the stack, or an attached policy that explicitly
  grants
  permissions. For more information about user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  @spec describe_apps(map(), describe_apps_request(), list()) ::
          {:ok, describe_apps_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_apps_errors()}
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
  @spec describe_commands(map(), describe_commands_request(), list()) ::
          {:ok, describe_commands_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_commands_errors()}
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
  @spec describe_deployments(map(), describe_deployments_request(), list()) ::
          {:ok, describe_deployments_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_deployments_errors()}
  def describe_deployments(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeDeployments", input, options)
  end

  @doc """
  Describes Amazon ECS clusters that are registered with a stack.

  If you specify only a stack ID,
  you can use the `MaxResults` and `NextToken` parameters to paginate the
  response. However, OpsWorks Stacks currently supports only one cluster per
  layer, so the result
  set has a maximum of one element.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or
  Manage permissions level for the stack or an attached policy that explicitly
  grants
  permission. For more information about user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

  This call accepts only one resource-identifying parameter.
  """
  @spec describe_ecs_clusters(map(), describe_ecs_clusters_request(), list()) ::
          {:ok, describe_ecs_clusters_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_ecs_clusters_errors()}
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
  @spec describe_elastic_ips(map(), describe_elastic_ips_request(), list()) ::
          {:ok, describe_elastic_ips_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_elastic_ips_errors()}
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
  @spec describe_elastic_load_balancers(map(), describe_elastic_load_balancers_request(), list()) ::
          {:ok, describe_elastic_load_balancers_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_elastic_load_balancers_errors()}
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
  @spec describe_instances(map(), describe_instances_request(), list()) ::
          {:ok, describe_instances_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_instances_errors()}
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
  @spec describe_layers(map(), describe_layers_request(), list()) ::
          {:ok, describe_layers_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_layers_errors()}
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
  @spec describe_load_based_auto_scaling(
          map(),
          describe_load_based_auto_scaling_request(),
          list()
        ) ::
          {:ok, describe_load_based_auto_scaling_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_load_based_auto_scaling_errors()}
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
  @spec describe_my_user_profile(map(), %{}, list()) ::
          {:ok, describe_my_user_profile_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
  def describe_my_user_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeMyUserProfile", input, options)
  end

  @doc """
  Describes the operating systems that are supported by OpsWorks Stacks.
  """
  @spec describe_operating_systems(map(), %{}, list()) ::
          {:ok, describe_operating_systems_response(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
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
  @spec describe_permissions(map(), describe_permissions_request(), list()) ::
          {:ok, describe_permissions_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_permissions_errors()}
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
  @spec describe_raid_arrays(map(), describe_raid_arrays_request(), list()) ::
          {:ok, describe_raid_arrays_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_raid_arrays_errors()}
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
  @spec describe_rds_db_instances(map(), describe_rds_db_instances_request(), list()) ::
          {:ok, describe_rds_db_instances_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_rds_db_instances_errors()}
  def describe_rds_db_instances(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "DescribeRdsDbInstances", input, options)
  end

  @doc """
  Describes OpsWorks Stacks service errors.

  **Required Permissions**: To use this action, an IAM user must have a Show,
  Deploy, or
  Manage permissions level for the stack, or an attached policy that explicitly
  grants
  permissions. For more information about user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).

  This call accepts only one resource-identifying parameter.
  """
  @spec describe_service_errors(map(), describe_service_errors_request(), list()) ::
          {:ok, describe_service_errors_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_service_errors_errors()}
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
  @spec describe_stack_provisioning_parameters(
          map(),
          describe_stack_provisioning_parameters_request(),
          list()
        ) ::
          {:ok, describe_stack_provisioning_parameters_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_stack_provisioning_parameters_errors()}
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
  @spec describe_stack_summary(map(), describe_stack_summary_request(), list()) ::
          {:ok, describe_stack_summary_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_stack_summary_errors()}
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
  @spec describe_stacks(map(), describe_stacks_request(), list()) ::
          {:ok, describe_stacks_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_stacks_errors()}
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
  @spec describe_time_based_auto_scaling(
          map(),
          describe_time_based_auto_scaling_request(),
          list()
        ) ::
          {:ok, describe_time_based_auto_scaling_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_time_based_auto_scaling_errors()}
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
  @spec describe_user_profiles(map(), describe_user_profiles_request(), list()) ::
          {:ok, describe_user_profiles_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_user_profiles_errors()}
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
  @spec describe_volumes(map(), describe_volumes_request(), list()) ::
          {:ok, describe_volumes_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, describe_volumes_errors()}
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
  @spec detach_elastic_load_balancer(map(), detach_elastic_load_balancer_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, detach_elastic_load_balancer_errors()}
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
  @spec disassociate_elastic_ip(map(), disassociate_elastic_ip_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, disassociate_elastic_ip_errors()}
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
  @spec get_hostname_suggestion(map(), get_hostname_suggestion_request(), list()) ::
          {:ok, get_hostname_suggestion_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, get_hostname_suggestion_errors()}
  def get_hostname_suggestion(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GetHostnameSuggestion", input, options)
  end

  @doc """

  This action can be used only with Windows stacks.

  Grants RDP access to a Windows instance for a specified time period.
  """
  @spec grant_access(map(), grant_access_request(), list()) ::
          {:ok, grant_access_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, grant_access_errors()}
  def grant_access(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "GrantAccess", input, options)
  end

  @doc """
  Returns a list of tags that are applied to the specified stack or layer.
  """
  @spec list_tags(map(), list_tags_request(), list()) ::
          {:ok, list_tags_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, list_tags_errors()}
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
  @spec reboot_instance(map(), reboot_instance_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, reboot_instance_errors()}
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
  @spec register_ecs_cluster(map(), register_ecs_cluster_request(), list()) ::
          {:ok, register_ecs_cluster_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_ecs_cluster_errors()}
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
  @spec register_elastic_ip(map(), register_elastic_ip_request(), list()) ::
          {:ok, register_elastic_ip_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_elastic_ip_errors()}
  def register_elastic_ip(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "RegisterElasticIp", input, options)
  end

  @doc """
  Registers instances that were created outside of OpsWorks Stacks with a
  specified stack.

  We do not recommend using this action to register instances. The complete
  registration
  operation includes two tasks: installing the OpsWorks Stacks agent on the
  instance, and registering
  the instance with the stack. `RegisterInstance` handles only the second step.
  You
  should instead use the CLI `register` command, which performs the entire
  registration operation. For more information,
  see [
  Registering an Instance with an OpsWorks Stacks
  Stack](https://docs.aws.amazon.com/opsworks/latest/userguide/registered-instances-register.html).

  Registered instances have the same requirements as instances that are created by
  using the `CreateInstance`
  API.
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
  @spec register_instance(map(), register_instance_request(), list()) ::
          {:ok, register_instance_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_instance_errors()}
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
  @spec register_rds_db_instance(map(), register_rds_db_instance_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_rds_db_instance_errors()}
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
  @spec register_volume(map(), register_volume_request(), list()) ::
          {:ok, register_volume_result(), any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, register_volume_errors()}
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
  instances.
  Load-based auto scaling operates only on the instances from that set, so you
  must ensure that you have created enough
  instances to handle the maximum anticipated load.

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  @spec set_load_based_auto_scaling(map(), set_load_based_auto_scaling_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_load_based_auto_scaling_errors()}
  def set_load_based_auto_scaling(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "SetLoadBasedAutoScaling", input, options)
  end

  @doc """
  Specifies a user's permissions.

  For more information, see
  [Security and Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/workingsecurity.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  @spec set_permission(map(), set_permission_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_permission_errors()}
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
  @spec set_time_based_auto_scaling(map(), set_time_based_auto_scaling_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, set_time_based_auto_scaling_errors()}
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
  @spec start_instance(map(), start_instance_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_instance_errors()}
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
  @spec start_stack(map(), start_stack_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, start_stack_errors()}
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
  @spec stop_instance(map(), stop_instance_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_instance_errors()}
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
  @spec stop_stack(map(), stop_stack_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, stop_stack_errors()}
  def stop_stack(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "StopStack", input, options)
  end

  @doc """
  Apply cost-allocation tags to a specified stack or layer in OpsWorks Stacks.

  For more information about how
  tagging works, see
  [Tags](https://docs.aws.amazon.com/opsworks/latest/userguide/tagging.html) in
  the OpsWorks User Guide.
  """
  @spec tag_resource(map(), tag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, tag_resource_errors()}
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
  with OpsWorks Stacks.

  **Required Permissions**: To use this action, an IAM user must
  have a Manage permissions level for the stack or an attached policy that
  explicitly
  grants permissions. For more information about user permissions, see [Managing User
  Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  @spec unassign_instance(map(), unassign_instance_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, unassign_instance_errors()}
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
  @spec unassign_volume(map(), unassign_volume_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, unassign_volume_errors()}
  def unassign_volume(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UnassignVolume", input, options)
  end

  @doc """
  Removes tags from a specified stack or layer.
  """
  @spec untag_resource(map(), untag_resource_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, untag_resource_errors()}
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
  @spec update_app(map(), update_app_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_app_errors()}
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
  @spec update_elastic_ip(map(), update_elastic_ip_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_elastic_ip_errors()}
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
  @spec update_instance(map(), update_instance_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_instance_errors()}
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
  @spec update_layer(map(), update_layer_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_layer_errors()}
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
  @spec update_my_user_profile(map(), update_my_user_profile_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_my_user_profile_errors()}
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
  @spec update_rds_db_instance(map(), update_rds_db_instance_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_rds_db_instance_errors()}
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
  @spec update_stack(map(), update_stack_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_stack_errors()}
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
  @spec update_user_profile(map(), update_user_profile_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_user_profile_errors()}
  def update_user_profile(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateUserProfile", input, options)
  end

  @doc """
  Updates an Amazon EBS volume's name or mount point.

  For more information, see
  [Resource Management](https://docs.aws.amazon.com/opsworks/latest/userguide/resources.html).

  **Required Permissions**: To use this action, an IAM user must have a Manage
  permissions
  level for the stack, or an attached policy that explicitly grants permissions.
  For more
  information on user permissions, see [Managing User Permissions](https://docs.aws.amazon.com/opsworks/latest/userguide/opsworks-security-users.html).
  """
  @spec update_volume(map(), update_volume_request(), list()) ::
          {:ok, nil, any()}
          | {:error, {:unexpected_response, any()}}
          | {:error, term()}
          | {:error, update_volume_errors()}
  def update_volume(%Client{} = client, input, options \\ []) do
    meta = metadata()

    Request.request_post(client, meta, "UpdateVolume", input, options)
  end
end
